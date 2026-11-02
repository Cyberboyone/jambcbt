#!/usr/bin/env python3
"""Stretch the long solution runs to the foot of their last page (English Vol. 3).

Each run of `sol-item` blocks ends wherever the text runs out, which leaves a
short page at the end of a drill, a paper or the master bank. The pad in
`_fit.json` adds air under every item of the run, so the run finishes near the
bottom of its last page instead of half way up it.

The search is deliberately timid: a pad is only accepted if it does not push
the run onto an extra page, because the page break is the one thing padding
cannot buy back.

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

PDF = OUT / "JAMB_Economics_Volume1_The_Market.pdf"

# key -> (anchor heading whose drill/paper owns the run, heading that ends it)
RUNS = {
    "drill_ch01": ("Chapter 1 Practice Drill — 40 Questions", "Chapter 2: Demand and Utility"),
    "drill_ch02": ("Chapter 2 Practice Drill — 40 Questions", "Chapter 3: Supply and Equilibrium"),
    "drill_ch03": ("Chapter 3 Practice Drill — 40 Questions", "Chapter 4: Elasticity"),
    "drill_ch04": ("Chapter 4 Practice Drill — 40 Questions", "Chapter 5: Production and Cost"),
    "drill_ch05": ("Chapter 5 Practice Drill — 40 Questions", "Chapter 6: Market Structures"),
    "drill_ch06": ("Chapter 6 Practice Drill — 40 Questions", "Full Paper 1: The Market Under Pressure"),
    "paper1": ("Full Paper 1: The Market Under Pressure", "Full Paper 2: Curves, Costs and the National Accounts"),
    "paper2": ("Full Paper 2: Curves, Costs and the National Accounts", "Appendix A: 60 Rapid-Fire Recall Pairs"),
    "bank120": ("Appendix B: The 120-Question Master Bank", "Appendix C: Consolidated Answer Keys"),
}

TARGET = 110.0


def load() -> dict:
    path = OUT / "_fit.json"
    return json.loads(path.read_text()) if path.exists() else {}


def save(data: dict) -> None:
    (OUT / "_fit.json").write_text(json.dumps(data, indent=2) + "\n")


def toc():
    import pymupdf

    doc = pymupdf.open(PDF)
    return [(lvl, title, page) for lvl, title, page in doc.get_toc()]


def rebuild() -> None:
    for script in ("drills_eco1.py", "papers_eco1.py"):
        subprocess.run([sys.executable, str(HERE / script)], check=True, stdout=subprocess.DEVNULL)
    subprocess.run([sys.executable, str(OUT / "build.py")], check=True, stdout=subprocess.DEVNULL)


def page_of(entries, needle, after: int = 0) -> int | None:
    for _lvl, title, page in entries:
        if needle in title and page >= after:
            return page
    return None


def spans(entries=None):
    import pymupdf

    entries = entries or toc()
    last = len(pymupdf.open(PDF))
    out = {}
    for key, (anchor, stop) in RUNS.items():
        a = page_of(entries, anchor)
        if a is None:
            continue
        start = page_of(entries, "Complete Solutions", after=a)
        if start is None:
            continue
        end = page_of(entries, stop, after=start + 1)
        out[key] = (start, (end - 1) if end else last)
    return out


def gap_on_page(page: int) -> float:
    import pymupdf

    doc = pymupdf.open(PDF)
    h = doc[0].rect.height
    p = doc[page - 1]
    ys = [b[3] for b in p.get_text("blocks") if b[3] <= h - 46 and b[1] >= 50]
    return h - 48 - (max(ys) if ys else 0)


def measure(key):
    runs = spans()
    if key not in runs:
        return None
    start, last = runs[key]
    return start, last, gap_on_page(last)


def apply(key: str, pad: float) -> None:
    data = load()
    data[key] = round(pad, 2)
    save(data)
    rebuild()


PAD_MAX = 70.0


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--rounds", type=int, default=1)
    args = ap.parse_args()

    for _round in range(args.rounds):
        for key in RUNS:
            data = load()
            pad = float(data.get(key, 0.0))
            m = measure(key)
            if m is None:
                print(f"  {key}: no run found")
                continue
            start, last, gap = m
            if gap <= TARGET:
                print(f"  {key}: gap {gap:.0f} ok (pad {pad:.1f})")
                continue
            span = last - start
            lo, best, hi = pad, pad, PAD_MAX
            for _step in range(6):
                mid = (lo + hi) / 2
                apply(key, mid)
                mm = measure(key)
                if mm and mm[1] - mm[0] == span and mm[2] < gap:
                    lo = best = mid
                else:
                    hi = mid
            apply(key, best)
            mm = measure(key)
            print(f"  {key}: pad {pad:.1f} -> {best:.1f}, gap {gap:.0f} -> {mm[2]:.0f}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
