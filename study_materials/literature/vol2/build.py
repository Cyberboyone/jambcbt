#!/usr/bin/env python3
"""Build script for JAMB Literature in English Volume 2 — The Drama and the Prose.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_paper.typ",
    "ch02_bank.typ",
    "ch03_character.typ",
    "ch04_theme.typ",
    "ch05_othello.typ",
    "ch06_native.typ",
    "ch07_dossiers.typ",
    "ch08_comparison.typ",
    "paper1.typ",
    "paper2.typ",
    "rapid_fire.typ",
    "bank120.typ",
    "answer_keys.typ",
    "appendix_quotes.typ",
    "appendix_glossary.typ",
    "appendix_models.typ",
    "appendix_tables.typ",
    "appendix_plan.typ",
    "appendix_traps.typ",
    "appendix_playbook.typ",
]

PDF_NAME = "JAMB_Literature_Volume2_Drama_and_Prose.pdf"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / PDF_NAME))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "LITERATURE IN ENGLISH", volume-num: 2,'
        ' volume-title: "The Drama and the Prose")',
    ]
    missing = []
    for name in INCLUDES:
        if (HERE / name).exists():
            body += [f'#include "{name}"']
        else:
            missing.append(name)
            print(f"  (skipping missing {name})")
    driver.write_text("\n".join(body) + "\n", encoding="utf-8")

    import sys as _sys

    _sys.path.insert(0, str(HERE / "tools"))
    from make_toc import build_rows, write_toc  # noqa: E402

    if not (HERE / "_toc.typ").exists():
        write_toc([])

    out = Path(args.out)
    before = None
    pdf, warns = b"", []
    for attempt in range(4):
        pdf, warns = typst.compile_with_warnings(str(driver), root=str(HERE.parent.parent.parent))
        out.write_bytes(pdf)
        rows = build_rows(out)
        new_text = write_toc(rows)
        if attempt and new_text == before:
            break
        before = new_text
    else:
        pdf, warns = typst.compile_with_warnings(str(driver), root=str(HERE.parent.parent.parent))
        out.write_bytes(pdf)

    print(f"wrote {args.out}: {len(pdf) / 1_048_576:.2f} MB, {len(warns)} warnings")
    for w in warns[:20]:
        print("  warning:", w)
    if missing:
        print(f"  SKIPPED {len(missing)} include(s): {', '.join(missing)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
