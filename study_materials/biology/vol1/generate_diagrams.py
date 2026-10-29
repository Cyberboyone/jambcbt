#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Biology Volume 1."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_bio_a as A       # noqa: E402
import figs_bio_b as B       # noqa: E402


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

    A.recap_cards()

    B.ch03_mitosis()
    B.ch03_meiosis()
    B.recap_cards_b()

    B.ch04_leaf()
    B.ch04_limiting()

    B.ch05_canal()
    B.ch05_dentition()

    B.ch06_root()
    B.ch06_transpiration()

    B.ch07_heart()
    B.ch07_circulation()

    B.ch08_alveolus()
    B.ch08_lungs()

    B.ch09_kidney()
    B.ch09_nephron()
    B.ch09_skin()

    B.ch10_skeleton()
    B.ch10_joints()
    B.ch10_muscles()
    B.recap_ch07()
    B.recap_ch08()
    B.recap_ch09()
    B.recap_ch10()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
