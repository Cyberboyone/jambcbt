#!/usr/bin/env python3
"""Build script for JAMB Mathematics Volume 1.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_number_bases.typ",
    "ch02_modular_arithmetic.typ",
    "ch03_fractions_decimals_errors.typ",
    "ch04_ratio_proportion_rates.typ",
    "ch05_commercial_financial_math.typ",
    "ch06_indices_standard_form.typ",
    "ch07_logarithms.typ",
    "ch08_surds.typ",
    "ch09_sets_venn_diagrams.typ",
    "ch10_mock_exam.typ",
    "zappendices.typ",
    "zdrills.typ",
    "zchallenges.typ",
    "zfinal.typ",
]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Mathematics_Volume1_Number_and_Numeration.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "MATHEMATICS", volume-num: 1,'
        ' volume-title: "Number & Numeration")',
    ]
    body += [f'#include "{name}"' for name in INCLUDES]
    driver.write_text("\n".join(body) + "\n")

    try:
        pdf, warnings = typst.compile_with_warnings(str(driver), root=str(HERE.parent.parent.parent))
    finally:
        driver.unlink(missing_ok=True)

    out = Path(args.out)
    out.write_bytes(pdf)

    try:
        import pymupdf
        pages = pymupdf.open(stream=pdf, filetype="pdf").page_count
    except Exception:
        pages = "?"
    print(f"built {out.name}: {pages} pages, {len(pdf)/1e6:.2f} MB, {len(warnings)} warnings")
    for w in warnings[:10]:
        print("  warning:", w)
    return 0


if __name__ == "__main__":
    sys.exit(main())
