#!/usr/bin/env python3
"""Compile an explicitly incomplete chapter proof; not the finished volume."""
from pathlib import Path
import sys
import typst

HERE = Path(__file__).resolve().parent
CHAPTERS = tuple(item for n, stem in enumerate(('foundations', 'skeleton', 'movement', 'circulation', 'fitness', 'athletics', 'games', 'recreation'), 1) for item in (f'ch{n:02d}_{stem}.typ', f'drill_ch{n:02d}.typ'))


def main():
    missing = [name for name in CHAPTERS if not (HERE / name).is_file()]
    if missing:
        raise FileNotFoundError(', '.join(missing))
    driver = HERE / '_build_driver.typ'
    driver.write_text('#import "template.typ": *\n'
                      '#show: setup-book.with(subject: "PHYSICAL AND HEALTH EDUCATION", volume-num: 1, '
                      'volume-title: "The Body, Fitness and Sport — DRAFT")\n'
                      + ''.join(f'#include "{name}"\n' for name in CHAPTERS), encoding='utf-8')
    pdf, warnings = typst.compile_with_warnings(str(driver), root=str(HERE))
    (HERE / 'PHE_Volume1_DRAFT.pdf').write_bytes(pdf)
    print(f'Incomplete chapter proof: {len(pdf):,} bytes; {len(warnings)} warnings')
    for warning in warnings:
        print(warning, file=sys.stderr)
    return 1 if warnings else 0


if __name__ == '__main__':
    raise SystemExit(main())
