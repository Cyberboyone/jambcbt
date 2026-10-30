#!/usr/bin/env python3
"""Even out the last page of every solution run.

Each drill, each mock and the master bank ends with a list of
solutions. When that list overflows onto a final page by two or three lines,
the book carries a page that is 90 % white, which looks like a printing
mistake. The type size is not the problem — the run simply needs just over N
pages — so the lever is air: a few tenths of a point of extra space between
items pushes rows onto the tail page and fills it.

`_fit.json` holds that extra air, in points, per section. This script searches
it one dimension at a time: raise the pad, rebuild, measure the bottom of the
last page of each solution run, keep the value that gives the best fill.
"""

from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

import pymupdf

HERE = Path(__file__).resolve().parent
OUT = HERE.parent
PDF = OUT / "JAMB_Chemistry_Volume4_Organic_Chemistry_Practical.pdf"
FIT = OUT / "_fit.json"

KEYS = [f"drill_ch{i:02d}" for i in range(1, 7)] + ["mock_ch11", "mock2", "bank120"]

STEP = 0.5
CEILING = 16.0       # never add more than this much air per item
TARGET = 520         # a final page at least this full reads as a page, not a slip
FULL = 742           # beyond this the next row would be pushed to a new page


def sections() -> dict[str, int]:
    """fit-key -> last page of that solution run."""
    doc = pymupdf.open(PDF)
    toc = doc.get_toc()
    out = {}
    parent = ""
    for idx, (level, title, page) in enumerate(toc):
        if level <= 2:
            parent = title
        if "Complete Solutions" not in title:
            continue
        if title.startswith("Mock Examination 1"):
            key = "mock_ch11"
        elif title.startswith("Mock Examination 2"):
            key = "mock2"
        elif title.startswith("The 120-Question"):
            key = "bank120"
        elif "Practice Drill" in parent:
            key = "drill_ch%02d" % int(parent.split(".")[0])
        else:
            continue
        end = doc.page_count
        for _l, _t, p in toc[idx + 1:]:
            if p > page:
                end = p - 1
                break
        out[key] = end
    doc.close()
    return out


def fill(page_no: int) -> int:
    doc = pymupdf.open(PDF)
    blocks = [b for b in doc[page_no - 1].get_text("blocks") if b[3] < 780]
    value = int(max((b[3] for b in blocks), default=0))
    doc.close()
    return value


def measure() -> dict[str, int]:
    return {key: fill(page) for key, page in sections().items()}


def rebuild() -> None:
    for cmd in ([sys.executable, "tools/drills_chem4.py"],
                [sys.executable, "tools/papers_chem4.py"],
                [sys.executable, "build.py"]):
        res = subprocess.run(cmd, cwd=OUT, capture_output=True, text=True)
        if res.returncode:
            print(res.stdout, res.stderr)
            raise SystemExit(f"{cmd[-1]} failed")


def score(value: int) -> int:
    """A full tail page is good; a sliver is bad; overflow past a page is worst."""
    if value >= FULL:
        return -1000
    return value


def main() -> int:
    pads = {key: 0.0 for key in KEYS}
    if FIT.exists():
        pads.update({k: float(v) for k, v in json.loads(FIT.read_text()).items() if k in pads})

    rebuild()
    fills = measure()
    best = dict(fills)
    print("start:", dict(sorted(fills.items())))

    for round_no in range(1, 16):
        todo = [k for k, v in fills.items() if k in pads and v < TARGET and pads[k] + STEP <= CEILING]
        if not todo:
            break
        for key in todo:
            pads[key] = round(pads[key] + STEP, 2)
        FIT.write_text(json.dumps(pads, indent=1, sort_keys=True) + "\n")
        rebuild()
        fills = measure()
        for key in list(todo):
            if fills.get(key, 0) >= FULL:      # the extra air pushed a row over
                pads[key] = round(pads[key] - STEP, 2)
            else:
                best[key] = max(best.get(key, 0), fills[key])
        print(f"round {round_no}:", dict(sorted(fills.items())))

    maxed = {k: v for k, v in pads.items() if v >= CEILING}
    if maxed:
        print("at the air ceiling:", maxed)
    FIT.write_text(json.dumps(pads, indent=1, sort_keys=True) + "\n")
    rebuild()
    final = measure()
    thin = {k: v for k, v in sorted(final.items()) if v < 300}
    print("final:", dict(sorted(final.items())))
    print("still thin:", thin or "none")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
