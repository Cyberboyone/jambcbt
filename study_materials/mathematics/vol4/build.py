#!/usr/bin/env python3
"""Build script for JAMB Mathematics Volume 4.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_limits.typ",
    "ch02_differentiation.typ",
    "ch03_applications.typ",
    "ch04_integration.typ",
    "ch05_area_motion.typ",
    "ch06_data.typ",
    "ch07_location.typ",
    "ch08_dispersion.typ",
    "ch09_counting.typ",
    "ch10_probability.typ",
    "mock_ch11.typ",
    "mock2.typ",
    "zappendices.typ",
    "zdrills_d.typ",
    "zdrills_e.typ",
    "zdrills_f.typ",
    "zchallenges_h.typ",
    "zchallenges_i.typ",
    "zchallenges_j.typ",
    "rapid_fire.typ",
    "zfinal.typ",
    "bank120.typ",
    "zappendix2.typ",
    "answer_keys.typ",
    "zappendix3.typ",
    "zappendix4.typ",
]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Mathematics_Volume4_Calculus_Statistics.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "MATHEMATICS", volume-num: 4,'
        ' volume-title: "Calculus, Statistics & Probability")',
    ]
    for name in INCLUDES:
        if (HERE / name).exists():
            body += [f'#include "{name}"']
        else:
            print(f"  (skipping missing {name})")
    driver.write_text("\n".join(body) + "\n", encoding="utf-8")

    pdf, warns = typst.compile_with_warnings(str(driver), root=str(HERE.parent.parent.parent))
    Path(args.out).write_bytes(pdf)
    print(f"wrote {args.out}: {len(pdf) / 1_048_576:.2f} MB, {len(warns)} warnings")
    for w in warns[:20]:
        print("  warning:", w)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
