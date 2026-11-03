#!/usr/bin/env python3
"""Audit the final volume's question pools, generated contents and page geometry."""
from collections import Counter
from importlib import import_module
import json
from pathlib import Path
import re
import sys

import pymupdf

HERE = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(HERE / 'tools'))
from make_toc import build_rows
from bank_data import BANK

PDF = HERE / 'JAMB_PHE_Volume2_Personal_and_Community_Health.pdf'


def main():
    errors = []
    pools = []
    for chapter in range(1, 9):
        pools.append((f'drill {chapter}', import_module(f'drill{chapter:02d}_data').ITEMS, 40))
    for number in (1, 2):
        pools.append((f'paper {number}', import_module(f'paper{number:02d}_data').ITEMS, 40))
    for chapter in range(1, 9):
        pools.append((f'bank chapter {chapter}', BANK[chapter], 15))
    stems = []
    for name, items, count in pools:
        if len(items) != count:
            errors.append(f'{name}: expected {count} items, found {len(items)}')
        for i, (stem, choices, solution) in enumerate(items, 1):
            stems.append(stem.strip().casefold())
            if len(choices) != 4 or len(set(choices)) != 4 or not solution.strip():
                errors.append(f'{name}, item {i}: invalid choices or explanation')
    dupes = [stem for stem, count in Counter(stems).items() if count > 1]
    if dupes:
        errors.append(f'duplicate stems: {dupes}')
    # Verify the rendered question choices and answer keys against source data.
    pattern_mcq = re.compile(r'#mcq\(\d+, \[(.*?)\], \[(.*?)\], \[(.*?)\], \[(.*?)\], \[(.*?)\]\)', re.S)
    sets = [(f'drill_ch{i:02d}.typ', import_module(f'drill{i:02d}_data').ITEMS) for i in range(1, 9)]
    sets += [(f'paper{i}.typ', import_module(f'paper{i:02d}_data').ITEMS) for i in (1, 2)]
    sets += [('bank120.typ', [item for i in range(1, 9) for item in BANK[i]])]
    for filename, items in sets:
        text = (HERE / filename).read_text(encoding='utf-8')
        rendered = pattern_mcq.findall(text)
        key_match = re.search(r'#answer-key-grid\(\((.*?)\)\)', text, re.S)
        keys = re.findall(r'"([ABCD])"', key_match.group(1)) if key_match else []
        if len(rendered) != len(items) or len(keys) != len(items):
            errors.append(f'{filename}: question/key counts do not match source')
            continue
        if Counter(keys) != Counter('ABCD' * (len(items) // 4)):
            errors.append(f'{filename}: answer positions are not balanced')
        for number, ((stem, choices, solution), row, key) in enumerate(zip(items, rendered, keys), 1):
            displayed_stem, *displayed_choices = row
            if displayed_stem != stem or set(displayed_choices) != set(choices):
                errors.append(f'{filename}, item {number}: rendered content differs from source')
            if displayed_choices['ABCD'.index(key)] != choices[0]:
                errors.append(f'{filename}, item {number}: answer key is inconsistent')
    if not PDF.exists():
        raise FileNotFoundError('Build the final PDF before auditing')
    rows = build_rows(PDF)
    pattern = re.compile(r'^\s*\((\d+),\s*("(?:[^"\\]|\\.)*"),\s*(\d+)\),\s*$', re.M)
    baked = [(int(level), json.loads(title), int(page)) for level, title, page in
             pattern.findall((HERE / '_toc.typ').read_text(encoding='utf-8'))]
    if rows != baked:
        errors.append('Generated contents do not match PDF outline')
    short, outside = [], []
    with pymupdf.open(PDF) as doc:
        for number, page in enumerate(doc, 1):
            if number == 1:  # Background can bleed; cover text may not.
                cover = page.get_text('blocks')
                if any(b[0] < 20 or b[2] > page.rect.width - 20 or b[1] < 20 or b[3] > page.rect.height - 20 for b in cover):
                    outside.append(number)
                continue
            body = [b for b in page.get_text('blocks') if 40 < b[1] < page.rect.height - 40]
            if max((b[3] for b in body), default=0) < page.rect.height * .70:
                short.append(number)
            if any(b[0] < 48 or b[2] > page.rect.width - 48 for b in body):
                outside.append(number)
        pages = len(doc)
    if short:
        errors.append(f'short pages below 70% of page height: {short}')
    if outside:
        errors.append(f'pages with text outside horizontal frame: {outside}')
    print(f'{len(stems)} stems; {len(dupes)} exact duplicates; {pages} pages')
    print(f'Contents: {len(rows)} PDF entries / {len(baked)} baked; '
          f'{"in sync" if rows == baked else "OUT OF SYNC"}')
    print(f'Short pages: {short}; pages with out-of-frame text: {outside}')
    for error in errors:
        print('ERROR:', error, file=sys.stderr)
    return 1 if errors else 0


if __name__ == '__main__':
    raise SystemExit(main())
