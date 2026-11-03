#!/usr/bin/env python3
"""Compile only the chapters currently drafted; this is not the finished book.

Requires the Python package typst. The resulting PDF is a working
proof without a contents page, drills, mock examinations or appendices.
"""
from pathlib import Path
import sys

import typst

HERE = Path(__file__).resolve().parent
CHAPTERS = ("ch01_evolution.typ", "drill_ch01.typ", "ch02_hardware.typ", "drill_ch02.typ", "ch03_memory.typ", "drill_ch03.typ", "ch04_representation.typ", "drill_ch04.typ", "ch05_software.typ", "drill_ch05.typ", "ch06_applications.typ", "drill_ch06.typ", "ch07_safety.typ", "drill_ch07.typ", "ch08_networks.typ", "drill_ch08.typ", "paper1.typ", "paper2.typ", "rapid_fire.typ", "appendix_data.typ", "appendix_practical.typ", "appendix_glossary.typ", "appendix_models.typ", "appendix_plan.typ", "appendix_tables.typ", "appendix_traps.typ")


def main() -> int:
    missing = [name for name in CHAPTERS if not (HERE / name).is_file()]
    if missing:
        raise FileNotFoundError("Missing draft chapters: " + ", ".join(missing))
    driver = HERE / "_build_driver.typ"
    driver.write_text(
        '#import "template.typ": *\n'
        '#show: setup-book.with(subject: "COMPUTER STUDIES", volume-num: 1, '
        'volume-title: "Computing Fundamentals and Practical Skills — DRAFT")\n'
        + ''.join(f'#include "{name}"\n' for name in CHAPTERS),
        encoding="utf-8",
    )
    pdf, warnings = typst.compile_with_warnings(str(driver), root=str(HERE))
    output = HERE / "ComputerStudies_Volume1_DRAFT.pdf"
    output.write_bytes(pdf)
    print(f"Draft proof: {output.name} ({len(pdf):,} bytes); {len(warnings)} warnings")
    for warning in warnings:
        print(warning, file=sys.stderr)
    return 1 if warnings else 0


if __name__ == "__main__":
    raise SystemExit(main())
