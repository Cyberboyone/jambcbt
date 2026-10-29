#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Mathematics Volume 2."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import front_ch1_4 as A          # noqa: E402
import ch05_09 as B              # noqa: E402
from common import OUT           # noqa: E402


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()
    A.ch01_undo_machine()
    A.ch01_formula_families()
    A.ch02_synthetic_division()
    A.ch02_factor_theorem_flow()
    A.ch02_grid_multiplication()
    A.ch02_cubic_shape()
    A.ch03_three_forms()
    A.ch03_discriminant_gallery()
    A.ch03_completing_square()
    A.ch03_parabola_features()
    A.ch03_root_coefficient_map()
    A.ch04_three_cases_lines()
    A.ch04_elimination_flow()
    A.ch04_line_parabola()
    A.ch04_three_by_three_cascade()

    B.ch05_number_line_notation()
    B.ch05_quadratic_sign_regions()
    B.ch05_sign_chart()
    B.ch05_modulus_interval()
    B.ch05_feasible_region()
    B.ch06_variation_family()
    B.ch06_direct_vs_inverse()
    B.ch06_joint_surface()
    B.ch06_partial_line()
    B.ch07_ap_gp_terms()
    B.ch07_gp_convergence()
    B.ch07_geometric_series_square()
    B.ch07_ap_pairing()
    B.ch08_operation_table()
    B.ch08_property_map()
    B.ch09_matrix_anatomy()
    B.ch09_determinant_area()
    B.ch09_matrix_transform()
    B.ch09_inverse_flow()
    B.recaps()

    svgs = sorted(OUT.glob("*.svg"))
    print(f"generated {len(svgs)} diagrams in {OUT}")
    for p in svgs:
        if p.stat().st_size < 200:
            print("  suspiciously small:", p.name)
    return 0


if __name__ == "__main__":
    sys.exit(main())
