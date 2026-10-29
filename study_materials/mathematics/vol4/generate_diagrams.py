#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Mathematics Volume 4."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs4_a as A       # noqa: E402
import figs4_b as B       # noqa: E402


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()

    A.ch01_limit_idea()
    A.ch01_approach_flow()
    A.ch01_one_sided()
    A.ch01_continuity()

    A.ch02_first_principles()
    A.ch02_tangent_gradient()
    A.ch02_rules_map()
    A.ch02_second_derivative()

    A.ch03_stationary_flow()
    A.ch03_curve_features()
    A.ch03_rate_chain()

    A.ch04_antiderivative()
    A.ch04_area_under_curve()
    A.ch04_trapezium_rule()

    A.ch05_area_between()
    A.ch05_signed_area()
    A.ch05_velocity_distance()

    B.ch06_chart_types()
    B.ch06_histogram()
    B.ch06_ogive()
    B.ch06_frequency_table()

    B.ch07_three_averages()
    B.ch07_grouped_median()
    B.ch07_quartile_map()

    B.ch08_same_mean_diff_spread()
    B.ch08_variance_flow()
    B.ch08_grouped_sd()

    B.ch09_arrangement_tree()
    B.ch09_perm_vs_comb()

    B.ch10_sample_space()
    B.ch10_venn_rules()
    B.ch10_tree()
    B.ch10_complement()

    B.recap_cards()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
