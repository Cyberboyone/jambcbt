#!/usr/bin/env python3
"""Render the end-of-chapter drills for Chemistry Volume 1.

Question order inside each item is permuted deterministically, so the answer
key is spread across A–D rather than clustering on one letter.
"""

from __future__ import annotations

import json
import random
from pathlib import Path

from bank_chem1_c01 import DRILL_1
from bank_chem1_c02 import DRILL_2
from bank_chem1_c03 import DRILL_3
from bank_chem1_c04 import DRILL_4
from bank_chem1_c05 import DRILL_5
from bank_chem1_c06 import DRILL_6


HERE = Path(__file__).resolve().parent
OUT = HERE.parent

BANK = {1: DRILL_1, 2: DRILL_2, 3: DRILL_3, 4: DRILL_4, 5: DRILL_5, 6: DRILL_6}

CHAPTERS = {
    1: ("Matter, Separation Techniques and Purity", 6),
    2: ("Chemical Combination, the Mole and Formulae", 7),
    3: ("Gases and Kinetic Theory", 6),
    4: ("Atomic Structure and Isotopes", 6),
    5: ("The Periodic Table and Periodicity", 6),
    6: ("Chemical Bonding", 8),
}

LETTERS = "ABCD"

# `_fit.json` (written by tools/fit_solutions.py) tunes the type size of each
# solution run so that it does not end with a two-line orphan page.
def _pad(stem: str) -> float:
    """Extra air between solutions, in points, tuned by tools/fit_solutions.py."""
    path = OUT / "_fit.json"
    if path.exists():
        return float(json.loads(path.read_text()).get(stem, 0))
    return 0.0


def shuffle_item(q, seed):
    """Return (stem, opts, key_letter, solution) with the options permuted."""
    stem, opts, correct, sol = q
    order = list(range(4))
    random.Random(seed).shuffle(order)
    new_opts = [opts[i] for i in order]
    key = LETTERS[order.index(correct)]
    return stem, new_opts, key, sol


def balance(items, seed):
    """Re-permute until each letter is used at most ceil(n/4)+1 times."""
    n = len(items)
    cap = n // 4 + 2
    for attempt in range(400):
        done = [shuffle_item(q, seed + attempt * 1000 + i) for i, q in enumerate(items)]
        counts = {L: 0 for L in LETTERS}
        for _s, _o, k, _sol in done:
            counts[k] += 1
        if max(counts.values()) <= cap:
            return done
    return done


def mcq(num, stem, opts):
    out = [f"#mcq({num}, [{stem}],"]
    for o in opts:
        out.append(f"  [{o}],")
    out[-1] = out[-1].rstrip(",")
    out.append(")")
    return "\n".join(out)


def render_chapter(ch):
    title, section_no = CHAPTERS[ch]
    qs = BANK[ch]
    items = balance(qs, seed=1000 + ch * 37)
    n = len(items)
    keys = [k for _s, _o, k, _sol in items]

    lines = ['#import "template.typ": *', ""]
    lines += [
        "#pagebreak()",
        "",
        f'#current-chapter.update("Chapter {ch}: {title} — Drills")',
        "",
        "#block(",
        "  width: 100%,",
        "  fill: jamb-navy,",
        "  stroke: 1.5pt + jamb-bright,",
        "  radius: 10pt,",
        "  inset: 16pt,",
        ")[",
        '  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[END-OF-CHAPTER DRILL]',
        "  #v(4pt)",
        f'  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Chapter {ch} Practice Set]',
        "  #v(3pt)",
        '  #text(font: "DejaVu Sans", size: 9.8pt, fill: rgb("#CBD5E1"))[',
        f"    {n} exam-standard questions on {title.lower()}. Attempt every question before",
        "    turning to the key, then read the solution for every question — including the ones",
        "    you answered correctly.",
        "  ]",
        "]",
        "",
        "#v(4pt)",
        "",
        f"== {ch}.{section_no + 1} Chapter {ch} Practice Drill — {n} Questions",
        "",
        f"{n} questions graded in the order the CBT engine is likely to meet them. Allow "
        f"{int(n * 1.1)} minutes; the key and a full solution for every question follow.",
        "",
    ]

    for i, (stem, opts, _k, _sol) in enumerate(items, 1):
        lines.append(mcq(i, stem, opts))
        lines.append("")

    # key — flows straight on from the last question so no page is left half empty
    lines += ["#v(6pt)", ""]
    lines += [
        f"#current-chapter.update(\"Chapter {ch}: {title} — Drills\")",
        "",
        "=== Answer Key and Score Bands",
        "",
        "#answer-key-grid((",
    ]
    for s in range(0, n, 10):
        lines.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    lines.append("))")
    lines.append("")

    secure = -(-int(n * 0.85) // 1)
    steady = -(-int(n * 0.7) // 1)
    lines += [
        "#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[",
        '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]',
        "  #v(4pt)",
        "  #table(",
        "    columns: (0.9fr, 2.6fr),",
        "    inset: 4pt,",
        "    align: (left + horizon, left + horizon),",
        "    stroke: none,",
        f"    [*{secure}–{n}*], [Secure. Move on to the next chapter, then return to this drill in a fortnight.],",
        f"    [*{steady}–{secure - 1}*], [Developing. Every solution names the concept, so reread the chapter section that the missed questions share.],",
        f"    [*0–{steady - 1}*], [Revise before re-testing. Reread the chapter, then redo this drill from the beginning.],",
        "  )",
        "]",
        "",
    ]
    path_stem = f"drill_ch{ch:02d}"
    pad = _pad(path_stem)
    lines += ["#[", "  #set text(size: 9.15pt)",
              "  #set par(leading: 0.66em, spacing: 0.72em)", ""]
    # The heading and the first two solutions travel together, so the heading
    # can never end up alone at the foot of a page.
    lines.append("  #block(breakable: false)[")
    lines.append("  === Complete Solutions")
    for i, (_stem, _opts, k, sol) in enumerate(items, 1):
        lines.append(f'  #sol-item({i}, "{k}", dense: true, pad: {pad}pt)[')
        lines.append(f"    {sol}")
        lines.append("  ]")
        if i == 2:
            lines.append("  ]")
        lines.append("")
    lines.append("]")
    lines.append("")

    path = OUT / f"drill_ch{ch:02d}.typ"
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote {path.name}: {n} questions, keys {' '.join(keys)}")


def main() -> int:
    for ch in sorted(BANK):
        render_chapter(ch)
    total = sum(len(v) for v in BANK.values())
    print(f"total drill questions: {total}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
