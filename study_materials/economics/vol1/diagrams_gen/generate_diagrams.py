#!/usr/bin/env python3
"""Render every Economics Volume 1 diagram into ../diagrams."""

from __future__ import annotations

import importlib
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

MODULES = ["figs_eco1_a", "figs_eco1_b", "figs_eco1_c"]


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
