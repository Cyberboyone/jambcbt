#!/usr/bin/env python3
"""Audit the generated SVGs for text or shapes that escape their canvas.

A figure that is drawn 10 px wider than its `viewBox` is clipped in the book,
and the clipping is invisible in the source — so every figure is measured here
before it is placed in a chapter.

Usage:  python tools/check_figs.py [--verbose]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent / "diagrams"

sys.path.insert(0, str(HERE.parent / "diagrams_gen"))
from common import text_width  # noqa: E402


def viewbox(svg_text: str) -> tuple[float, float]:
    m = re.search(r'viewBox="0 0 ([\d.]+) ([\d.]+)"', svg_text)
    return (float(m.group(1)), float(m.group(2))) if m else (0.0, 0.0)


def text_items(svg_text: str):
    for m in re.finditer(r"<text ([^>]*)>(.*?)</text>", svg_text, re.S):
        attrs, body = m.group(1), m.group(2)
        xm = re.search(r'(?:^|\s)x="(-?[\d.]+)"', attrs)
        ym = re.search(r'(?:^|\s)y="(-?[\d.]+)"', attrs)
        if xm is None or ym is None:
            continue
        # matplotlib writes rotated axis labels as an explicit transform; the
        # x/y attributes are then the untransformed anchor, so measuring them
        # horizontally reports a phantom overflow.
        if "transform=" in attrs:
            continue
        x, y = float(xm.group(1)), float(ym.group(1))
        size_m = re.search(r'font-size:\s*([\d.]+)', attrs) or re.search(r'font-size="([\d.]+)"', attrs)
        if size_m is None:
            continue
        size = float(size_m.group(1))
        anchor = re.search(r'text-anchor="(\w+)"', attrs)
        anchor = anchor.group(1) if anchor else "middle"
        weight = re.search(r'font-weight="(\w+)"', attrs)
        weight = weight.group(1) if weight else "normal"
        yield x, y, size, anchor, weight, body


def main() -> int:
    verbose = "--verbose" in sys.argv
    problems = 0
    for path in sorted(OUT.glob("*.svg")):
        svg_text = path.read_text(encoding="utf-8")
        w, h = viewbox(svg_text)
        bad = []
        for x, y, size, anchor, weight, body in text_items(svg_text):
            body = re.sub(r"<[^>]+>", "", body)
            width = text_width(body, size)
            if weight == "bold":
                width *= 1.06
            if anchor == "start":
                left, right = x, x + width
            elif anchor == "end":
                left, right = x - width, x
            else:
                left, right = x - width / 2, x + width / 2
            if left < 1 or right > w - 1 or y < size * 0.75 or y > h + size * 0.25:
                bad.append((body[:52], round(left, 1), round(right, 1),
                            round(y, 1), round(size, 1)))
        if bad:
            problems += len(bad)
            print(f"{path.name}  ({w:.0f} × {h:.0f})")
            for b in bad:
                print(f"   text {b[0]!r} spans x {b[1]}–{b[2]}, y {b[3]}, size {b[4]}")
        elif verbose:
            print(f"{path.name}  ok")
    print(f"\n{problems} text item(s) outside their canvas")
    return 1 if problems else 0


if __name__ == "__main__":
    raise SystemExit(main())
