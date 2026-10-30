#!/usr/bin/env python3
"""Build script for JAMB Chemistry Volume 3.

Usage:  python build.py [--out PATH]

Requires the `typst` Python package (pip install typst).
"""
import argparse
from pathlib import Path

HERE = Path(__file__).resolve().parent
TITLE = "Inorganic Chemistry"
INCLUDES = [
    "frontmatter.typ",
    "ch01_metals.typ",
    "ch02_groups12.typ",
    "ch03_aluminium_iron.typ",
    "ch04_gases.typ",
    "ch05_sulphur_halogens.typ",
    "ch06_industry.typ",
    "mock_ch11.typ",
    "mock2.typ",
    "rapid_fire.typ",
    "bank120.typ",
    "answer_keys.typ",
    "appendix_data.typ",
    "appendix_qual.typ",
    "appendix_glossary.typ",
    "appendix_plan.typ",
    "appendix_equations.typ",
    "appendix_structured.typ",
    "appendix_traps.typ",
    "appendix_playbook.typ",
]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=str(HERE / "JAMB_Chemistry_Volume3_Inorganic_Chemistry.pdf"))
    args = ap.parse_args()

    import typst

    driver = HERE / "_build_driver.typ"
    body = [
        '#import "template.typ": *',
        '#show: setup-book.with(subject: "CHEMISTRY", volume-num: 3,'
        ' volume-title: "Inorganic Chemistry")',
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
