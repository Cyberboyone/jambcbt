#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Chemistry Volume 2."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_chem2_a as A       # noqa: E402

MODULES = [("A", A)]

try:
    import figs_chem2_b as B   # noqa: E402
    MODULES.append(("B", B))
except ImportError:
    B = None

try:
    import figs_chem2_c as C   # noqa: E402
    MODULES.append(("C", C))
except ImportError:
    C = None


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()
    A.ch01_phscale()
    A.ch01_titration()
    A.ch01_titration_curve()
    A.ch02_solubility()
    A.ch02_dilution()
    A.recap_cards_a()

    if B is not None:
        B.ch03_enthalpy()
        B.ch03_hess()
        B.ch03_calorimetry()
        B.recap_cards_b()
        B.ch04_rates()
        B.ch04_maxwell()
        B.ch04_catalyst()
        B.recap_cards_c()

    if C is not None:
        C.ch05_equilibrium()
        C.ch05_lechatelier()
        C.ch05_haber()
        C.recap_cards_d()
        C.ch06_electrolysis()
        C.ch06_cell()
        C.ch06_emf()
        C.recap_cards_e()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
