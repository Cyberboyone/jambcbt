#!/usr/bin/env python3
"""Build script for JAMB Literature in English Volume 1 — The Principles.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_genres.typ",
    "ch02_drama_types.typ",
    "ch03_drama_technique.typ",
    "ch04_prose.typ",
    "ch05_poetry.typ",
    "ch06_devices.typ",
    "paper1.typ",
    "paper2.typ",
    "rapid_fire.typ",
    "bank120.typ",
    "answer_keys.typ",
    "appendix_glossary.typ",
    "appendix_poems.typ",
    "appendix_matrix.typ",
    "appendix_tables.typ",
    "appendix_models.typ",
    "appendix_plan.typ",
    "appendix_unseen.typ",
    "appendix_traps.typ",
    "appendix_playbook.typ",
]

PDF_NAME = "JAMB_Literature_Volume1_The_Principles.pdf"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / PDF_NAME))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "LITERATURE IN ENGLISH", volume-num: 1,'
        ' volume-title: "The Principles")',
    ]
    missing = []
    for name in INCLUDES:
        if (HERE / name).exists():
            body += [f'#include "{name}"']
        else:
            missing.append(name)
            print(f"  (skipping missing {name})")
    driver.write_text("\n".join(body) + "\n", encoding="utf-8")

    # The Contents page is a generated table whose page numbers must be baked
    # in, so compile once, read the outline, rewrite `_toc.typ`, and compile
    # again until the numbers stop moving.
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
