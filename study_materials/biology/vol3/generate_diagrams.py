#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Biology Volume 3."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_v3_a as A       # noqa: E402

MODULES = [("A", A)]

try:
    import figs_v3_b as B   # noqa: E402
    MODULES.append(("B", B))
except ImportError:
    B = None

try:
    import figs_v3_c as C   # noqa: E402
    MODULES.append(("C", C))
except ImportError:
    C = None

try:
    import figs_v3_d as D   # noqa: E402
    MODULES.append(("D", D))
except ImportError:
    D = None


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()

    A.ch01_chromosome()
    A.ch01_meiosis()
    A.recap_cards_a()

    if B is not None:
        B.ch02_monohybrid()
        B.ch02_testcross()
        B.ch02_pedigree()
        B.ch02_bloodgroups()
        B.recap_cards_b()
        B.ch03_variation()
        B.ch03_mutation()
        B.recap_cards_c()
        B.ch04_homologous()
        B.ch04_selection()
        B.ch04_fossils()
        B.recap_cards_d()

    if C is not None:
        C.ch05_ecosystem()
        C.ch05_sampling()
        C.recap_cards_e()
        C.ch06_foodweb()
        C.ch06_pyramids()
        C.ch06_symbiosis()
        C.recap_cards_f()
        C.ch07_carbon()
        C.ch07_nitrogen()
        C.ch07_succession()
        C.recap_cards_g()
        C.ch08_pollution()
        C.ch08_conservation()
        C.recap_cards_h()

    if D is not None:
        D.ch09_croprotation()
        D.ch09_pests()
        D.ch09_livestock()
        D.recap_cards_i()
        D.ch10_quadrat()
        D.ch10_transect()
        D.ch10_graph()
        D.recap_cards_j()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
