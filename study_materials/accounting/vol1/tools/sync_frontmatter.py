#!/usr/bin/env python3
"""Bake the real page numbers into the "Where Everything Is" table of frontmatter.typ.

Run after a build; it reads the outline of the finished PDF, finds the page on
which each part begins, rewrites the `[11]` placeholders (or whatever numbers
are already there), and prints what changed. Rebuild afterwards.

Usage:  python tools/sync_frontmatter.py [pdf]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent
DEFAULT_PDF = OUT / "JAMB_Financial_Accounting_Volume1_The_Books.pdf"

# table label -> the outline title it corresponds to (prefix match)
PARTS = [
    ("Chapter 1", "Chapter 1:"),
    ("Chapter 2", "Chapter 2:"),
    ("Chapter 3", "Chapter 3:"),
    ("Chapter 4", "Chapter 4:"),
    ("Chapter 5", "Chapter 5:"),
    ("Chapter 6", "Chapter 6:"),
    ("Chapter 7", "Chapter 7:"),
    ("Chapter 8", "Chapter 8:"),
    ("Papers", "Full Paper 1:"),
    ("Appendix A", "Appendix A:"),
    ("Appendix B", "Appendix B:"),
    ("Appendix C", "Appendix C:"),
    ("Appendix D", "Appendix D:"),
    ("Appendix E", "Appendix E:"),
    ("Appendix F", "Appendix F:"),
    ("Appendix G", "Appendix G:"),
    ("Appendix H", "Appendix H:"),
    ("Appendix I", "Appendix I:"),
]


def main() -> int:
    import pymupdf

    pdf = Path(sys.argv[1]) if len(sys.argv) > 1 else DEFAULT_PDF
    doc = pymupdf.open(pdf)
    starts = {}
    for level, title, page in doc.get_toc():
        if level != 1:
            continue
        for label, prefix in PARTS:
            if title.startswith(prefix) and label not in starts:
                starts[label] = page

    path = OUT / "frontmatter.typ"
    text = path.read_text(encoding="utf-8")
    changed = 0
    for label, page in starts.items():
        pattern = re.compile(r"(\[" + re.escape(label) + r"\], \[[^\]]*\], )\[(\d+)\]")
        text, n = pattern.subn(lambda m: m.group(1) + f"[{page}]", text, count=1)
        changed += n
    path.write_text(text, encoding="utf-8")
    print(f"pages: {len(doc)}; rows matched: {changed} of {len(PARTS)}")
    for label, prefix in PARTS:
        print(f"  {label:12s} {starts.get(label, '—')}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
