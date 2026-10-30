#!/usr/bin/env python3
"""Stretch the long solution runs to the foot of their last page.

Each run of `sol-item` blocks ends wherever the text runs out, which leaves a
short page at the end of a drill or a mock. The pad in `_fit.json` adds air
under every item of the run, so the run finishes at the bottom of the page
instead of half way up it.

Usage:  python tools/tune_fit.py [--build] [--rounds N]
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent

RUNS = {
    "drill_ch01": (40, "drill"),
    "drill_ch02": (40, "drill"),
    "drill_ch03": (40, "drill"),
    "drill_ch04": (40, "drill"),
    "drill_ch05": (40, "drill"),
    "drill_ch06": (40, "drill"),
    "mock1": (40, "mock"),
    "mock2": (40, "mock"),
    "bank120": (120, "bank"),
}


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


def runs_from_toc(entries) -> dict[str, tuple[int, int]]:
    out = {}
    chapters = ["Chapter 1: Wave Motion", "Chapter 2: Sound",
                "Chapter 3: Reflection at Plane and Curved Mirrors",
                "Chapter 4: Refraction and Total Internal Reflection",
                "Chapter 5: Lenses and Optical Instruments",
                "Chapter 6: Colour and the Electromagnetic Spectrum"]
    for i, ch in enumerate(chapters, 1):
        drill = page_of(entries, f"Chapter {i} Practice Drill")
        start = page_of(entries, "Complete Solutions", after=drill)
        stop = page_of(entries, chapters[i] if i < 6 else "Mock Examination 1") - 1
        out[f"drill_ch{i:02d}"] = (start, stop)
    out["mock1"] = (page_of(entries, "Mock Examination 1 — Complete Solutions"),
                    page_of(entries, "Mock Examination 2") - 1)
    out["mock2"] = (page_of(entries, "Mock Examination 2 — Complete Solutions"),
                    page_of(entries, "Appendix A") - 1)
    out["bank120"] = (page_of(entries, "Master Bank — Complete Solutions"),
                      page_of(entries, "Appendix C") - 1)
    return out


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--rounds", type=int, default=3)
    args = ap.parse_args()

    pdf = OUT / "JAMB_Physics_Volume2_Waves_Sound_Light.pdf"
    data = load()

    for _round in range(args.rounds):
        import pymupdf
        runs = runs_from_toc(toc(pymupdf.open(pdf)))
        changed = False
        for key, (_start, last) in runs.items():
            gap = gap_on_page(pdf, last)
            pad = float(data.get(key, 0.0))
            per_item = gap / RUNS[key][0]
            if gap > 90:
                new = round(pad + per_item * 0.9, 2)
            elif gap < 20 and pad > 1.0:
                new = round(pad - per_item * 1.4, 2)
            else:
                continue
            new = max(0.0, new)
            if abs(new - pad) > 0.05:
                data[key] = new
                changed = True
                print(f"  {key}: page {last} gap {gap:.0f}pt, pad {pad:.2f} -> {new:.2f}")
        save(data)
        if not changed:
            break
        import subprocess

        # the drill and bank files bake the pad in at generation time
        subprocess.run([sys.executable, str(HERE / "drills_phys2.py")], check=True,
                       stdout=subprocess.DEVNULL)
        subprocess.run([sys.executable, str(HERE / "bank120_phys2.py")], check=True,
                       stdout=subprocess.DEVNULL)
        subprocess.run([sys.executable, str(OUT / "build.py")], check=True,
                       stdout=subprocess.DEVNULL)

    print(json.dumps(data, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
