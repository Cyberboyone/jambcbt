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
    "ch01_variety.typ",
    "ch02_cell.typ",
    "ch03_division.typ",
    "ch04_photosynthesis.typ",
    "ch05_digestion.typ",
    "ch06_transport_plants.typ",
    "ch07_transport_animals.typ",
    "ch08_respiration.typ",
    "ch09_excretion.typ",
    "ch10_support.typ",
    "mock_ch11.typ",
    "mock2.typ",
    "rapid_fire.typ",
    "zfinal.typ",
    "bank120.typ",
    "answer_keys.typ",
]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Biology_Volume1_Cells_Nutrition_Transport.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "BIOLOGY", volume-num: 1,'
        ' volume-title: "Cells, Nutrition & Transport")',
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
