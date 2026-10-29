#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Biology Volume 1."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_bio_a as A       # noqa: E402
import figs_bio_b as B       # noqa: E402
import figs_bio_c as C       # noqa: E402


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()

    A.ch01_kingdoms()
    A.ch01_virus()
    A.ch01_nomenclature()

    A.ch02_animal_cell()
    A.ch02_plant_cell()
    A.ch02_bacterium()
    A.ch02_levels()

    B.ch03_mitosis()
    B.ch03_meiosis_compare()
    B.ch03_crossing_over()
    B.ch04_leaf()
    B.ch04_photosynthesis()
    B.ch04_limiting_factors()
    B.ch05_alimentary()
    B.ch05_villus()
    B.ch05_dentition()

    C.ch06_transpiration()
    C.ch06_potometer()
    C.ch07_heart()
    C.ch07_circulation()
    C.ch07_blood_cells()
    C.ch08_alveolus()
    C.ch08_respiration_compare()
    C.ch09_nephron()
    C.ch09_skin()
    C.ch10_skeleton()
    C.ch10_joints()
    C.ch10_muscle()

    A.recap_cards()
    B.recap_cards_b()
    C.recap_cards_c()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
