#!/usr/bin/env python3
"""Build script for JAMB Mathematics Volume 3.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_angles_polygons.typ",
    "ch02_triangles_polygons.typ",
    "ch03_circle_theorems.typ",
    "ch04_constructions_loci.typ",
    "ch05_plane_mensuration.typ",
    "ch06_solids.typ",
    "ch07_longitude_latitude.typ",
    "ch08_coordinate_geometry.typ",
    "ch09_trig_ratios.typ",
    "ch10_bearings.typ",
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
    "zappendix34.typ",
]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Mathematics_Volume3_Geometry.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "MATHEMATICS", volume-num: 3,'
        ' volume-title: "Geometry, Mensuration & Trigonometry")',
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
