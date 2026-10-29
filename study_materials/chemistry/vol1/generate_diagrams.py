#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Chemistry Volume 1."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_chem_a as A       # noqa: E402

MODULES = [("A", A)]

try:
    import figs_chem_b as B   # noqa: E402
    MODULES.append(("B", B))
except ImportError:
    B = None

try:
    import figs_chem_c as C   # noqa: E402
    MODULES.append(("C", C))
except ImportError:
    C = None


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()

    A.ch01_separation()
    A.ch01_purity()
    A.ch02_mole()
    A.ch02_stoich()
    A.recap_cards_a()

    if B is not None:
        B.ch03_gaslaws()
        B.ch03_kinetic()
        B.recap_cards_b()
        B.ch04_atom()
        B.ch04_config()
        B.recap_cards_c()

    if C is not None:
        C.ch05_periodic_trends()
        C.ch05_groups()
        C.recap_cards_d()
        C.ch06_ionic_covalent()
        C.ch06_structures()
        C.recap_cards_e()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
