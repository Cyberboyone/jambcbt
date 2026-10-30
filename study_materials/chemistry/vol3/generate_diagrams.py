#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Chemistry Volume 3."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_chem3_a as A       # noqa: E402

MODULES = [("A", A)]

for tag in ("b", "c"):
    try:
        MODULES.append((tag.upper(), __import__(f"figs_chem3_{tag}")))
    except ImportError:
        pass


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()
    A.ch01_reactivity()
    A.ch01_extraction()
    A.ch01_alloy()
    A.ch02_group1()
    A.ch02_flame()
    A.ch02_group2()
    A.ch02_hydroxide_flow()
    A.recap_cards_a()

    for tag, mod in MODULES[1:]:
        for name in mod.FIGURES:
            getattr(mod, name)()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
