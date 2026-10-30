#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Chemistry Volume 4."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_chem4_a as A       # noqa: E402
import figs_chem4_b as B       # noqa: E402
import figs_chem4_c as C       # noqa: E402

MODULES = [("A", A), ("B", B), ("C", C)]


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()
    A.ch01_crude_column()
    A.ch01_bp_series()
    A.ch01_cracking()
    A.ch01_isomers()
    A.ch01_substitution()
    A.ch02_ethene_bond()
    A.ch02_addition_map()
    A.ch02_unsaturation_test()
    A.ch02_polyethene()
    A.ch02_alkyne()
    A.recap_cards_a()

    for tag, mod in MODULES[1:]:
        for name in mod.FIGURES:
            getattr(mod, name)()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
