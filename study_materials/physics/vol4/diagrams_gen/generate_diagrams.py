#!/usr/bin/env python3
"""Render every Volume 4 diagram into ../diagrams."""

from __future__ import annotations

import importlib
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

MODULES = [
    "figs_phys4_a",
    "figs_phys4_b",
    "figs_phys4_c",
    "figs_phys4_d",
    "figs_phys4_e",
    "figs_phys4_f",
]


def main() -> int:
    done = 0
    for name in MODULES:
        try:
            mod = importlib.import_module(name)
        except ModuleNotFoundError:
            print(f"  ({name} not written yet)")
            continue
        for fig in mod.FIGURES:
            getattr(mod, fig)()
            done += 1
    print(f"wrote {done} figures to {HERE.parent / 'diagrams'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
