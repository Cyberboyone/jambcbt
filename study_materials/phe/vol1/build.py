#!/usr/bin/env python3
"""Build the finished volume only; do not silently omit incomplete material."""
from pathlib import Path
import sys
import subprocess
import typst

HERE = Path(__file__).resolve().parent
CHAPTERS = ('foundations', 'skeleton', 'movement', 'circulation', 'fitness', 'athletics', 'games', 'recreation')
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
    # Never ship stale generated sections after a data edit.
    for renderer in ('render_drills.py', 'render_papers.py', 'render_bank.py'):
        subprocess.run([sys.executable, str(HERE / renderer)], check=True, cwd=HERE)
    sys.path.insert(0, str(HERE / 'tools'))
    from make_toc import build_rows, write_toc
    driver = HERE / '_build_driver.typ'
    driver.write_text('#import "template.typ": *\n'
                      '#show: setup-book.with(subject: "PHYSICAL AND HEALTH EDUCATION", volume-num: 1, '
                      'volume-title: "The Body, Fitness and Sport")\n'
                      + ''.join(f'#include "{name}"\n' for name in INCLUDES), encoding='utf-8')
    if not (HERE / '_toc.typ').exists():
        write_toc([])
    output = HERE / 'JAMB_PHE_Volume1_The_Body_Fitness_and_Sport.pdf'
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
            result = subprocess.run([sys.executable, str(HERE / 'tools' / 'audit.py')], cwd=HERE)
            if result.returncode:
                output.unlink(missing_ok=True)
                print('Audit failed: removed the incomplete output.', file=sys.stderr)
                return result.returncode
            print(f'Built and mechanically audited {output.name}; {len(rows)} contents entries; no Typst warnings')
            print('Mechanical checks do not replace independent content review.')
            return 0
        previous = current
    raise RuntimeError('Contents did not converge within eight passes')


if __name__ == '__main__':
    raise SystemExit(main())
