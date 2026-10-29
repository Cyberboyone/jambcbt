#!/usr/bin/env python3
"""Build script for JAMB Biology Volume 2.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_nervous.typ",
    "ch02_senses.typ",
    "ch03_hormones.typ",
    "ch04_plant_repro.typ",
    "ch05_animal_repro.typ",
    "ch06_growth.typ",
    "ch07_health.typ",
    "ch08_microbes.typ",
    "ch09_drugs.typ",
    "ch10_practical.typ",
    "mock_ch11.typ",
    "mock2.typ",
    "rapid_fire.typ",
    "zfinal.typ",
    "bank120.typ",
    "answer_keys.typ",
]

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Biology_Volume2_Coordination_Reproduction_Growth.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "BIOLOGY", volume-num: 2,'
        ' volume-title: "Coordination, Reproduction & Growth")',
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
