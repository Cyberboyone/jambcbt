#!/usr/bin/env python3
"""Stretch the long solution runs to the foot of their last page (English Volume 1).

Each run of `sol-item` blocks ends wherever the text runs out, which leaves a
short page at the end of a drill, a mock or the master bank. The pad in
`_fit.json` adds air under every item of the run, so the run finishes near the
bottom of its last page instead of half way up it.

The search is deliberately timid: a pad is only accepted if it does not push
the run onto an extra page, because the page break is the one thing padding
cannot buy back. A run whose last page is short simply has one more item than
fits.

Usage:  python tools/tune_fit.py [--rounds N]
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent

PDF = OUT / "JAMB_English_Volume1_Structure_and_Lexis.pdf"

RUNS = {
    "drill_ch01": 40,
    "drill_ch02": 40,
    "drill_ch03": 40,
    "drill_ch04": 40,
    "drill_ch05": 40,
    "drill_ch06": 40,
    "mock1": 40,
    "mock2": 40,
    "bank120": 120,
}

QRUNS = {
    "q_mock1": ("Mock Examination 1 — Questions", "Mock Examination 1 — Answer Key"),
    "q_mock2": ("Mock Examination 2 — Questions", "Mock Examination 2 — Answer Key"),
    "q_bank120": ("Master Bank — Questions", "Master Bank — Answer Key"),
    "q_rapid": ("Appendix A", "Appendix B"),
}

CHAPTERS = [
    "Chapter 1: Word Classes",
    "Chapter 2: Concord",
    "Chapter 3: Tense, Aspect and Voice",
    "Chapter 4: Clauses, Sentence Types and Punctuation",
    "Chapter 5: Modifiers, Prepositions and Connectives",
    "Chapter 6: Lexis",
]

TARGET = 120.0  # leave at most this much white space on the last page


def load() -> dict:
    path = OUT / "_fit.json"
    return json.loads(path.read_text()) if path.exists() else {}


def save(data: dict) -> None:
    (OUT / "_fit.json").write_text(json.dumps(data, indent=2) + "\n")


def gap_on_page(pdf: Path, page: int) -> float:
    import pymupdf

    doc = pymupdf.open(pdf)
    h = doc[0].rect.height
    p = doc[page - 1]
    ys = [b[3] for b in p.get_text("blocks") if b[3] <= h - 46 and b[1] >= 50]
    return h - 48 - (max(ys) if ys else 0)


def toc(doc):
    return [(t, p) for _l, t, p in doc.get_toc()]


def page_of(entries, needle, after: int = 0) -> int:
    for title, page in entries:
        if needle in title and page > after:
            return page
    raise SystemExit(f"no outline entry matching {needle!r}")


def lenient(entries, needle, after: int = 0, fallback: int | None = None) -> int | None:
    for title, page in entries:
        if needle in title and page > after:
            return page
    return fallback


def runs_from_toc(entries) -> dict[str, tuple[int, int]]:
    import pymupdf

    doc = pymupdf.open(PDF)
    last = len(doc)
    out = {}
    starts = [page_of(entries, ch) for ch in CHAPTERS]
    mocks = lenient(entries, "Mock Examination 1", fallback=last)
    stops = starts[1:] + [mocks]
    for i in range(1, 7):
        drill = page_of(entries, f"Chapter {i} Practice Drill")
        start = page_of(entries, "Complete Solutions", after=drill)
        if start >= stops[i - 1]:
            continue
        out[f"drill_ch{i:02d}"] = (start, stops[i - 1] - 1)
    m1s = lenient(entries, "Mock Examination 1 — Complete Solutions")
    if m1s:
        out["mock1"] = (m1s, page_of(entries, "Mock Examination 2") - 1)
    m2s = lenient(entries, "Mock Examination 2 — Complete Solutions")
    if m2s:
        out["mock2"] = (m2s, lenient(entries, "Appendix A", fallback=last) - 1)
    bs = lenient(entries, "Master Bank — Complete Solutions")
    if bs:
        out["bank120"] = (bs, lenient(entries, "Appendix C", fallback=last) - 1)
    return out


def qruns_from_toc(entries) -> dict[str, tuple[int, int]]:
    out = {}
    for key, (first, stop) in QRUNS.items():
        start = lenient(entries, first)
        end = lenient(entries, stop)
        if start and end and end > start:
            out[key] = (start, end - 1)
    return out


def qspans() -> dict[str, tuple[int, int]]:
    import pymupdf

    return qruns_from_toc(toc(pymupdf.open(PDF)))


def rebuild() -> None:
    for script in ("drills_eng1.py", "papers_eng1.py"):
        if (HERE / script).exists():
            subprocess.run([sys.executable, str(HERE / script)], check=True,
                           stdout=subprocess.DEVNULL)
    subprocess.run([sys.executable, str(OUT / "build.py")], check=True,
                   stdout=subprocess.DEVNULL)


def spans(data=None):
    """{run: (first_page, last_page)} for the current PDF."""
    import pymupdf

    entries = toc(pymupdf.open(PDF))
    return runs_from_toc(entries)


def apply(key: str, pad: float) -> None:
    data = load()
    data[key] = round(pad, 2)
    save(data)
    rebuild()


def measure(key: str) -> tuple[int, int, float] | None:
    runs = spans()
    if key not in runs:
        return None
    start, last = runs[key]
    return start, last, gap_on_page(PDF, last)


PAD_MIN, PAD_MAX = -3.0, 90.0


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--rounds", type=int, default=2)
    args = ap.parse_args()

    for _round in range(args.rounds):
        touched = False
        for key in RUNS:
            data = load()
            pad = float(data.get(key, 0.0))
            m = measure(key)
            if m is None:
                continue
            start, last, gap = m
            if gap <= TARGET:
                continue
            span = last - start
            touched = True

            # Push air into the run until it would buy a new page: the largest
            # pad that keeps the same page count fills the last page the most.
            lo, hi = pad, PAD_MAX
            best = pad
            for _step in range(8):
                mid = (lo + hi) / 2
                apply(key, mid)
                mm = measure(key)
                if mm and mm[1] - mm[0] == span:
                    lo = best = mid
                else:
                    hi = mid
            apply(key, best)
            mm = measure(key)
            if best > pad + 0.2:
                print(f"  {key}: pad {pad:.2f} -> {best:.2f}, gap {gap:.0f} -> "
                      f"{mm[2] if mm else -1:.0f}pt")
                continue

            # the run spilled onto a page it barely uses: pull it back
            apply(key, PAD_MIN)
            m3 = measure(key)
            if m3 and m3[1] - m3[0] == span - 1:
                lo, hi = PAD_MIN, pad
                best = PAD_MIN
                while hi - lo > 1.5:
                    mid = (lo + hi) / 2
                    apply(key, mid)
                    mm = measure(key)
                    if mm and mm[1] - mm[0] == span - 1:
                        lo, best = mid, mid
                    else:
                        hi = mid
                apply(key, best)
                mm = measure(key)
                print(f"  {key}: pad {pad:.2f} -> {best:.2f} (one page fewer), gap -> "
                      f"{mm[2] if mm else -1:.0f}pt")
            else:
                apply(key, pad)
                print(f"  {key}: kept pad {pad:.2f}, gap {gap:.0f}pt (cannot be filled)")
        for key in QRUNS:
            data = load()
            pad = float(data.get(key, 0.0))
            runs_q = qspans()
            if key not in runs_q:
                continue
            start, last = runs_q[key]
            gap = gap_on_page(PDF, last)
            if gap <= TARGET:
                continue
            touched = True
            span = last - start
            lo, hi = pad, 40.0
            best = pad
            for _step in range(7):
                mid = (lo + hi) / 2
                data[key] = round(mid, 2)
                save(data)
                rebuild()
                mm = qspans().get(key)
                if mm and mm[1] - mm[0] == span:
                    lo = best = mid
                else:
                    hi = mid
            data[key] = round(best, 2)
            save(data)
            rebuild()
            mm = qspans().get(key)
            print(f"  {key}: pad {pad:.2f} -> {best:.2f}, gap {gap:.0f} -> "
                  f"{gap_on_page(PDF, mm[1]) if mm else -1:.0f}pt")

        if not touched:
            break

    print(json.dumps(load(), indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
