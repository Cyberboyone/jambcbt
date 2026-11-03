#!/usr/bin/env python3
"""Build the finished volume only; do not silently omit incomplete material."""
from pathlib import Path
import sys
import typst

HERE = Path(__file__).resolve().parent
CHAPTERS = ('problem', 'programming', 'development', 'ai', 'robotics', 'security', 'ethics', 'careers')
INCLUDES = ['frontmatter.typ']
for number, name in enumerate(CHAPTERS, 1):
    INCLUDES.extend((f'ch{number:02d}_{name}.typ', f'drill_ch{number:02d}.typ'))
INCLUDES.extend(('paper1.typ', 'paper2.typ', 'rapid_fire.typ', 'bank120.typ', 'answer_keys.typ',
                 'appendix_data.typ', 'appendix_practical.typ', 'appendix_glossary.typ',
                 'appendix_models.typ', 'appendix_plan.typ', 'appendix_tables.typ', 'appendix_traps.typ'))


def main():
    missing = [name for name in INCLUDES if not (HERE / name).is_file()]
    if missing:
        print('Cannot build a complete volume; missing: ' + ', '.join(missing), file=sys.stderr)
        return 1
    sys.path.insert(0, str(HERE / 'tools'))
    from make_toc import build_rows, write_toc
    driver = HERE / '_build_driver.typ'
    driver.write_text('#import "template.typ": *\n'
                      '#show: setup-book.with(subject: "COMPUTER STUDIES", volume-num: 2, '
                      'volume-title: "Problem Solving, Programming and Digital Society")\n'
                      + ''.join(f'#include "{name}"\n' for name in INCLUDES), encoding='utf-8')
    if not (HERE / '_toc.typ').exists():
        write_toc([])
    output = HERE / 'JAMB_ComputerStudies_Volume2_Problem_Solving_Programming_and_Digital_Society.pdf'
    previous = None
    for _ in range(8):
        pdf, warnings = typst.compile_with_warnings(str(driver), root=str(HERE))
        if warnings:
            for warning in warnings:
                print(warning, file=sys.stderr)
            return 1
        output.write_bytes(pdf)
        rows = build_rows(output)
        if not rows:
            raise ValueError('Contents start heading not found in PDF outline')
        current = write_toc(rows)
        if current == previous:
            print(f'Built {output.name}; {len(rows)} contents entries; no Typst warnings')
            return 0
        previous = current
    raise RuntimeError('Contents did not converge within eight passes')


if __name__ == '__main__':
    raise SystemExit(main())
