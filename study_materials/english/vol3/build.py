#!/usr/bin/env python3
"""Build script for JAMB Use of English Volume 3 — The Novel and Full Papers.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
INCLUDES = [
    "frontmatter.typ",
    "ch01_reading_text.typ",
    "ch02_plot.typ",
    "ch03_character.typ",
    "ch04_theme_setting.typ",
    "ch05_technique.typ",
    "ch06_full_paper.typ",
    "paper1.typ",
    "paper2.typ",
    "novel_paper.typ",
    "rapid_fire.typ",
    "bank120.typ",
    "answer_keys.typ",
    "appendix_factfile.typ",
    "appendix_cast.typ",
    "appendix_glossary.typ",
    "appendix_plan.typ",
    "appendix_rules.typ",
    "appendix_models.typ",
    "appendix_traps.typ",
    "appendix_playbook.typ",
]

PDF_NAME = "JAMB_English_Volume3_Novel_Full_Papers.pdf"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / PDF_NAME))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "USE OF ENGLISH", volume-num: 3,'
        ' volume-title: "The Novel and Full Papers")',
    ]
    for name in INCLUDES:
        if (HERE / name).exists():
            body += [f'#include "{name}"']
        else:
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
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
