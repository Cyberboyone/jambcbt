#!/usr/bin/env python3
"""Render available original chapter drills; validate data before writing."""
from importlib import import_module
from pathlib import Path
import json
from random import Random

HERE = Path(__file__).resolve().parent
LETTERS = "ABCD"
FIT = json.loads((HERE / "_fit.json").read_text()) if (HERE / "_fit.json").exists() else {}


def render(chapter: int) -> None:
    items = import_module(f'drill{chapter:02d}_data').ITEMS
    if len(items) != 40 or len({q[0].casefold() for q in items}) != 40:
        raise ValueError(f'Chapter {chapter}: expected 40 distinct stems')
    rng = Random(1025 + chapter)
    positions = list(range(4)) * 10
    rng.shuffle(positions)
    out = ['#import "template.typ": *', '',
           f'== {chapter}.7 Chapter {chapter} Practice Drill — 40 Questions', '',
           'Allow 44 minutes. Answer all items before checking the key; read every explanation.', '']
    keys = []
    for number, ((stem, choices, explanation), position) in enumerate(zip(items, positions), 1):
        if len(choices) != 4 or len(set(choices)) != 4 or not explanation:
            raise ValueError(f'Chapter {chapter}: invalid item {number}')
        distractors = list(choices[1:])
        rng.shuffle(distractors)
        distractors.insert(position, choices[0])
        keys.append(LETTERS[position])
        out += [f'#mcq({number}, [{stem}], ' + ', '.join(f'[{c}]' for c in distractors) + ')', '']
    out += ['=== Answer Key', '', '#answer-key-grid((' + ', '.join(f'"{key}"' for key in keys) + ',))', '',
            '=== Complete Solutions', '']
    for number, ((_, _, explanation), key) in enumerate(zip(items, keys), 1):
        out += [f'#sol-item({number}, "{key}", dense: true, pad: {FIT.get(f"drill{chapter}", 0)}pt)[{explanation}]', '']
    (HERE / f'drill_ch{chapter:02d}.typ').write_text('\n'.join(out), encoding='utf-8')
    print(f'Chapter {chapter}: {len(items)} items; A/B/C/D each {keys.count("A")}')


def main() -> None:
    for chapter in range(1, 9):
        if (HERE / f'drill{chapter:02d}_data.py').exists():
            render(chapter)


if __name__ == '__main__':
    main()
