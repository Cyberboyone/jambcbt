#!/usr/bin/env python3
"""Check drafted drills and report proof layout issues without declaring delivery."""
import importlib
from collections import Counter
from pathlib import Path
import sys

import pymupdf

HERE = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(HERE))


def main() -> int:
    stems = []
    errors = []
    for chapter in range(1, 9):
        items = importlib.import_module(f'drill{chapter:02d}_data').ITEMS
        if len(items) != 40:
            errors.append(f'chapter {chapter}: {len(items)} items, expected 40')
        for num, (stem, choices, solution) in enumerate(items, 1):
            stems.append(stem.strip().casefold())
            if len(choices) != 4 or len(set(choices)) != 4 or not solution.strip():
                errors.append(f'chapter {chapter}, item {num}: invalid options or missing explanation')
    for paper in (1, 2):
        items = importlib.import_module(f'paper{paper:02d}_data').ITEMS
        if len(items) != 40:
            errors.append(f'paper {paper}: {len(items)} items, expected 40')
        for num, (stem, choices, solution) in enumerate(items, 1):
            stems.append(stem.strip().casefold())
            if len(choices) != 4 or len(set(choices)) != 4 or not solution.strip():
                errors.append(f'paper {paper}, item {num}: invalid options or missing explanation')
    repeats = [stem for stem, count in Counter(stems).items() if count > 1]
    if repeats:
        errors.append(f'{len(repeats)} duplicate stems')
    pdf = HERE / 'ComputerStudies_Volume1_DRAFT.pdf'
    short, outside = [], []
    if not pdf.exists():
        errors.append('draft PDF is missing; run build_draft.py first')
    else:
        with pymupdf.open(pdf) as doc:
            for number, page in enumerate(doc, 1):
                body = [b for b in page.get_text('blocks') if 40 < b[1] < page.rect.height - 40]
                if max((b[3] for b in body), default=0) < 500:
                    short.append(number)
                if any(b[0] < 48 or b[2] > page.rect.width - 48 for b in body):
                    outside.append(number)
            print(f'{len(stems)} stems; {len(repeats)} duplicates; {len(doc)} draft pages')
    print('Short pages requiring final review:', short)
    print('Pages with text outside horizontal frame:', sorted(set(outside)))
    for error in errors:
        print('ERROR:', error, file=sys.stderr)
    return 1 if errors or outside else 0


if __name__ == '__main__':
    raise SystemExit(main())
