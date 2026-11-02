#!/usr/bin/env python3
"""Render every SVG in the Literature Volume 2 diagram set."""

from __future__ import annotations

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import figs_lit2_a  # noqa: E402
import figs_lit2_b  # noqa: E402
import figs_lit2_c  # noqa: E402

MODULES = [figs_lit2_a, figs_lit2_b, figs_lit2_c]


def main() -> int:
    total = 0
    for mod in MODULES:
        for fn in mod.FIGURES:
            fn()
            total += 1
    print(f"wrote {total} figures to {HERE.parent / 'diagrams'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
