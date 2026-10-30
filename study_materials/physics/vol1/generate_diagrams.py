#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Physics Volume 1."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_phys1 as A  # noqa: E402
import figs_phys1_b as B  # noqa: E402

MODULES = [A, B]


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()
    for mod in MODULES:
        for name in mod.FIGURES:
            getattr(mod, name)()
    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
