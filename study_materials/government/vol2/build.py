#!/usr/bin/env python3
"""Build script for JAMB Government Volume 2.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_precolonial.typ",
    "ch02_colonial.typ",
    "ch03_nationalism.typ",
    "ch04_federalism.typ",
    "ch05_military.typ",
    "ch06_admin.typ",
    "ch07_foreign.typ",
    "ch08_elections.typ",
    "paper1.typ",
    "paper2.typ",
    "rapid_fire.typ",
    "bank120.typ",
    "answer_keys.typ",
    "appendix_data.typ",
    "appendix_institutions.typ",
    "appendix_glossary.typ",
    "appendix_models.typ",
    "appendix_plan.typ",
    "appendix_tables.typ",
    "appendix_nigeria.typ",
    "appendix_playbook.typ",
]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Government_Volume2_Emirs_Governors_and_Generals.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "GOVERNMENT", volume-num: 2,'
        ' volume-title: "The Nigerian Story — Emirs, Governors and Generals")',
    ]
    for name in INCLUDES:
        if (HERE / name).exists():
            body += [f'#include "{name}"']
        else:
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
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
