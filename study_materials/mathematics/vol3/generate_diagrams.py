#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Mathematics Volume 3."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_a as A       # noqa: E402
import figs_b as B       # noqa: E402
import figs_c as C       # noqa: E402


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()
    A.ch01_angle_types()
    A.ch01_parallel_lines()
    A.ch01_polygon_table()
    A.ch01_exterior_angles()
    A.ch02_triangle_types()
    A.ch02_congruence()
    A.ch02_similarity()
    A.ch02_pythagoras()
    A.ch02_area_formulas()
    A.ch03_circle_parts()
    A.ch03_angle_at_centre()
    A.ch03_semicircle()
    A.ch03_cyclic_quad()
    A.ch03_tangent_radius()
    A.ch03_alternate_segment()
    A.ch03_chord_bisector()
    A.ch03_sector_segment()
    A.ch04_perp_bisector()
    A.ch04_angle_bisector()
    A.ch04_loci()

    B.ch05_area_shapes()
    B.ch05_circle_measures()
    B.ch05_composite_area()
    B.ch06_prism_cylinder()
    B.ch06_pyramid_cone()
    B.ch06_sphere()
    B.ch06_frustum()
    B.ch06_solids_table()
    B.ch07_latitude_globe()
    B.ch07_great_circle()

    C.ch08_line_features()
    C.ch08_distance_midpoint()
    C.ch08_parallel_perp()
    C.ch08_circle_equation()
    C.ch09_sohcahtoa()
    C.ch09_special_triangles()
    C.ch09_unit_circle_cast()
    C.ch09_sine_graph()
    C.ch09_cosine_graph()
    C.ch10_bearings()
    C.ch10_elevation()
    C.ch10_sine_rule()
    C.ch10_cosine_rule()
    C.recap_cards()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
