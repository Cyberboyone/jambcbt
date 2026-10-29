#!/usr/bin/env python3
"""Build script for JAMB Mathematics Volume 2.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_change_of_subject.typ",
    "ch02_polynomials.typ",
    "ch03_quadratics.typ",
    "ch04_simultaneous.typ",
    "ch05_inequalities.typ",
    "ch06_variation.typ",
    "ch07_progressions.typ",
    "ch08_binary_operations.typ",
    "ch09_matrices.typ",
    "mock_ch10.typ",
    "zappendices.typ",
    "zdrills.typ",
    "zchallenges.typ",
    "zfinal.typ",
    "bank120.typ",
    "zappendix2.typ",
    "answer_keys.typ",
    "zappendix3.typ",
    "zappendix4.typ",
    "zappendix5.typ",
]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Mathematics_Volume2_Algebra.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "MATHEMATICS", volume-num: 2,'
        ' volume-title: "Algebra & Graphs")',
    ]
    for name in INCLUDES:
        if (HERE / name).exists():
            body += [f'#include "{name}"']
        else:
            print(f"  (skipping missing {name})")
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
