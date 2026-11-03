#!/usr/bin/env python3
"""Post-build audit: TOC sync, margins, duplicate stems, page fill."""
from __future__ import annotations

import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent
sys.path.insert(0, str(HERE))

import pymupdf  # noqa: E402

PDF = OUT / "JAMB_AgriculturalScience_Volume2_The_Animal_and_the_Farm_Business.pdf"

LEFT, RIGHT, TOP, BOTTOM = 47, 551, 62, 782


def toc_check():
    from make_toc import build_rows
    rows = build_rows(PDF)
    text = (OUT / "_toc.typ").read_text(encoding="utf-8")
    baked = re.findall(r'\((\d), "(.*?)", (\d+)\),', text)
    baked = [(int(a), b, int(c)) for a, b, c in baked]
    return rows == baked, len(rows), len(baked)


def margin_check():
    doc = pymupdf.open(PDF)
    bad = []
    for i, page in enumerate(doc, 1):
        for b in page.get_text("blocks"):
            x0, y0, x1, y1 = b[:4]
            # the running header and footer sit outside the body frame on purpose
            if y1 <= TOP or y0 >= BOTTOM:
                continue
            if x1 < LEFT - 1 or x0 > RIGHT + 1 or y1 < TOP - 1 or y0 > BOTTOM + 1:
                bad.append((i, round(x0), round(y0), round(x1), round(y1), b[4][:40].replace("\n", " ")))
    return bad, len(doc)


def dup_check():
    from bank_agr2_data import BANK
    from bank_agr2_c01 import DRILL_1
    from bank_agr2_c02 import DRILL_2
    from bank_agr2_c03 import DRILL_3
    from bank_agr2_c04 import DRILL_4
    from bank_agr2_c05 import DRILL_5
    from bank_agr2_c06 import DRILL_6
    from bank_agr2_c07 import DRILL_7
    from bank_agr2_c08 import DRILL_8
    from mock1_data import PAPER_1
    from mock2_data import PAPER_2

    drills = [DRILL_1, DRILL_2, DRILL_3, DRILL_4, DRILL_5, DRILL_6, DRILL_7, DRILL_8]
    stems = []
    for d in drills:
        stems += [q[0] for q in d]
    stems += [q[0] for q in PAPER_1] + [q[0] for q in PAPER_2]
    for ch in range(1, 9):
        stems += [q[0] for q in BANK[ch]]
    seen, dup = {}, []
    for s in stems:
        k = re.sub(r"\W+", " ", s.lower()).strip()
        if k in seen:
            dup.append((seen[k], s))
        seen[k] = s
    return len(stems), dup


def fill_check():
    doc = pymupdf.open(PDF)
    thin = []
    for i, page in enumerate(doc, 1):
        blocks = [b for b in page.get_text("blocks") if b[4].strip()]
        if not blocks:
            thin.append((i, 0))
            continue
        bottom = max(b[3] for b in blocks)
        if bottom < 600 and i not in (1, 2):
            thin.append((i, round(bottom)))
    return thin


def main():
    ok, n, m = toc_check()
    print(f"TOC: {'IN SYNC' if ok else 'OUT OF SYNC'} ({n} rows, {m} baked)")
    bad, pages = margin_check()
    print(f"Margins: {len(bad)} block(s) outside the frame, over {pages} pages")
    for b in bad[:10]:
        print("   ", b)
    total, dup = dup_check()
    print(f"Stems: {total} items, {len(dup)} duplicate(s)")
    for d in dup[:10]:
        print("   ", d)
    thin = fill_check()
    print(f"Thin pages: {[(p, b) for p, b in thin]}")


if __name__ == "__main__":
    main()
