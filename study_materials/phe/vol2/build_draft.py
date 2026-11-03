#!/usr/bin/env python3
"""Compile an explicitly incomplete chapter proof, never the final volume."""
from pathlib import Path
import sys
import typst

HERE = Path(__file__).resolve().parent
CHAPTERS = ('ch01_personal.typ', 'drill_ch01.typ', 'ch02_nutrition.typ', 'drill_ch02.typ', 'ch03_substances.typ', 'drill_ch03.typ', 'ch04_environment.typ', 'drill_ch04.typ', 'ch05_infection.typ', 'drill_ch05.typ', 'ch06_noncommunicable.typ', 'drill_ch06.typ', 'ch07_firstaid.typ', 'drill_ch07.typ', 'ch08_family.typ', 'drill_ch08.typ')

def main():
    for name in CHAPTERS:
        if not (HERE / name).is_file():
            raise FileNotFoundError(name)
    driver = HERE / '_draft_driver.typ'
    driver.write_text('#import "template.typ": *\n'
                      '#show: setup-book.with(subject: "PHYSICAL AND HEALTH EDUCATION", volume-num: 2, '
                      'volume-title: "Personal and Community Health — INCOMPLETE PROOF")\n'
                      + ''.join(f'#include "{name}"\n' for name in CHAPTERS), encoding='utf-8')
    pdf, warnings = typst.compile_with_warnings(str(driver), root=str(HERE))
    (HERE / 'PHE_Volume2_INCOMPLETE.pdf').write_bytes(pdf)
    for warning in warnings:
        print(warning, file=sys.stderr)
    print(f'Incomplete proof: {len(pdf):,} bytes; {len(warnings)} warnings')
    return bool(warnings)

if __name__ == '__main__':
    raise SystemExit(main())
