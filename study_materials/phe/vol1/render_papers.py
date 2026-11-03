#!/usr/bin/env python3
"""Render two original 40-item mixed practice papers, keys and explanations."""
from collections import Counter
from importlib import import_module
from pathlib import Path
import json
from random import Random

HERE = Path(__file__).resolve().parent
LETTERS = 'ABCD'
FIT = json.loads((HERE / '_fit.json').read_text()) if (HERE / '_fit.json').exists() else {}


def main() -> None:
    all_stems = []
    for paper in (1, 2):
        items = import_module(f'paper{paper:02d}_data').ITEMS
        if len(items) != 40:
            raise ValueError(f'Paper {paper}: expected 40 items, got {len(items)}')
        rng = Random(4242 + paper)
        positions = list(range(4)) * 10
        rng.shuffle(positions)
        out = ['#import "template.typ": *', '',
               f'#current-chapter.update("Timed Paper {paper}")',
               f'= Timed Paper {paper} — PHE Practice', '',
               '#block(sticky: true)[Allow 40 minutes for 40 questions. Choose one answer per item. '
               'These original practice questions are not represented as past JAMB questions.]', '']
        keys = []
        for num, ((stem, options, explanation), pos) in enumerate(zip(items, positions), 1):
            if len(options) != 4 or len(set(options)) != 4 or not explanation.strip():
                raise ValueError(f'Paper {paper}, item {num}: invalid choices or explanation')
            all_stems.append(stem.casefold().strip())
            shuffled = list(options[1:])
            rng.shuffle(shuffled)
            shuffled.insert(pos, options[0])
            keys.append(LETTERS[pos])
            out.extend([f'#mcq({num}, [{stem}], ' + ', '.join(f'[{x}]' for x in shuffled) + ')', ''])
        out.extend(['== Answer Key', '', '#answer-key-grid((' + ', '.join(f'"{k}"' for k in keys) + ',))', '',
                    '== Explanations', ''])
        for num, ((_, _, explanation), key) in enumerate(zip(items, keys), 1):
            out.extend([f'#sol-item({num}, "{key}", dense: true, pad: {FIT.get(f"paper{paper}", 0)}pt)[{explanation}]', ''])
        (HERE / f'paper{paper}.typ').write_text('\n'.join(out), encoding='utf-8')
        print(f'Paper {paper}: 40 questions; answer letters balanced 10 each')
    duplicates = [stem for stem, count in Counter(all_stems).items() if count > 1]
    if duplicates:
        raise ValueError(f'Duplicate paper stems: {duplicates}')


if __name__ == '__main__':
    main()
