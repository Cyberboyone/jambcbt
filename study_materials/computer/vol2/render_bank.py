#!/usr/bin/env python3
"""Render the 120-item master bank and consolidated answer keys."""
from collections import Counter
from importlib import import_module
from pathlib import Path
import json
from random import Random
import re

from bank_data import BANK

HERE = Path(__file__).resolve().parent
LETTERS = 'ABCD'
FIT = json.loads((HERE / '_fit.json').read_text()) if (HERE / '_fit.json').exists() else {}
TITLES = ('Algorithms and flowcharts', 'Programming', 'Program development',
          'Artificial intelligence', 'Robotics', 'Cybersecurity',
          'Ethics and human issues', 'Careers and integrated practice')


def key_from_file(filename):
    text = (HERE / filename).read_text(encoding='utf-8')
    match = re.search(r'#answer-key-grid\(\((.*?)\)\)', text, re.S)
    if not match:
        raise ValueError(f'{filename}: no answer key found')
    keys = re.findall(r'"([ABCD])"', match.group(1))
    if len(keys) != 40:
        raise ValueError(f'{filename}: expected 40 keys, found {len(keys)}')
    return keys


def main():
    if sorted(BANK) != list(range(1, 9)) or any(len(BANK[c]) != 15 for c in range(1, 9)):
        raise ValueError('Master bank must have exactly 15 items for each chapter')
    old = []
    for name in [f'drill{i:02d}_data' for i in range(1, 9)] + ['paper01_data', 'paper02_data']:
        old.extend(q[0].strip().casefold() for q in import_module(name).ITEMS)
    all_stems = old + [q[0].strip().casefold() for chapter in range(1, 9) for q in BANK[chapter]]
    duplicates = [s for s, count in Counter(all_stems).items() if count > 1]
    if duplicates:
        raise ValueError(f'Duplicate stems across question pools: {duplicates}')
    rng = Random(7120)
    positions = list(range(4)) * 30
    rng.shuffle(positions)
    out = ['#import "template.typ": *', '', '#pagebreak(weak: true)',
           '#current-chapter.update("Appendix B: Master Bank")',
           '= Appendix B — The 120-Question Master Bank', '',
           'Fifteen original questions per chapter. Chapters 1–4 emphasise tracing, arithmetic, '
           'boundary tests and model accuracy; use the drills for broader practice. '
           'Attempt each set before checking the key and explanations.', '']
    keys, solutions = [], []
    n = 0
    for chapter in range(1, 9):
        out.extend([f'== B.{chapter} {TITLES[chapter - 1]}', ''])
        for stem, choices, explanation in BANK[chapter]:
            if len(choices) != 4 or len(set(choices)) != 4 or not explanation.strip():
                raise ValueError(f'Invalid item in chapter {chapter}: {stem}')
            pos = positions[n]
            options = list(choices[1:])
            rng.shuffle(options)
            options.insert(pos, choices[0])
            n += 1
            keys.append(LETTERS[pos])
            solutions.append(explanation)
            out.extend([f'#mcq({n}, [{stem}], ' + ', '.join(f'[{o}]' for o in options) + ')', ''])
    out.extend(['#shortcut-box("Before checking your answers")[',
                '  + Record the question numbers you were uncertain about, not only the questions you left unanswered.',
                '  + Mark each chapter block separately; fifteen questions form one chapter block.',
                '  + Read the explanations for correct answers too, then revisit the teaching section for any weak idea.',
                '  + For calculations, write the units and check the conversion convention before comparing answers.',
                '  + Return to the glossary if a term is unfamiliar; use the comparison tables when two options seem similar.',
                '  + For AI questions distinguish evidence from a guarantee, and consider the evaluation data.',
                '  + Repeat the set later without consulting the key and compare the reasons for your choices.',
                '  + Do not rely on a familiar keyword alone; identify exactly what the question is asking.',
                '  + Separate a calculation error from a misunderstanding of the concept when recording mistakes.',
                ']', '', '== B.9 Master Bank Answer Key', '', '#answer-key-grid(('
                + ', '.join(f'"{k}"' for k in keys) + ',))', '',
                '== B.10 Master Bank Explanations', ''])
    for i, (key, explanation) in enumerate(zip(keys, solutions), 1):
        out.extend([f'#sol-item({i}, "{key}", dense: true, pad: {FIT.get("bank", 0)}pt)[{explanation}]', ''])
    (HERE / 'bank120.typ').write_text('\n'.join(out), encoding='utf-8')
    index = ['#import "template.typ": *', '',
             '#current-chapter.update("Appendix C: Consolidated Keys")',
             '= Appendix C — Consolidated Answer Keys', '',
             'Each key follows the item order in its set. Explanations appear with the sets.', '']
    for name, filename in [(f'Chapter {i} drill', f'drill_ch{i:02d}.typ') for i in range(1, 9)] + [
            ('Timed Paper 1', 'paper1.typ'), ('Timed Paper 2', 'paper2.typ')]:
        key = key_from_file(filename)
        index.extend([f'== {name}', '', '#answer-key-grid((' + ', '.join(f'"{k}"' for k in key) + ',))', ''])
    index.extend(['== 120-question master bank', '', '#answer-key-grid(('
                  + ', '.join(f'"{k}"' for k in keys) + ',))', ''])
    (HERE / 'answer_keys.typ').write_text('\n'.join(index), encoding='utf-8')
    print(f'Bank: {n} items; 520 distinct stems across all pools; A/B/C/D each {keys.count("A")}')


if __name__ == '__main__':
    main()
