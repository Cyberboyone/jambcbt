#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Biology Volume 1."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_bio_a as A       # noqa: E402


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

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
