#!/usr/bin/env python3
"""Render the two timed papers, the 120-question bank and the consolidated keys.

The key letters come from the same deterministic shuffle used to print the
options, so a grid can never drift out of step with the questions.
"""

from __future__ import annotations

import json
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
OUT = HERE.parent

from drills_agr1 import balance, mcq, _clean  # noqa: E402
from bank_agr1_data import BANK  # noqa: E402
from mock1_data import PAPER_1  # noqa: E402
from mock2_data import PAPER_2  # noqa: E402
from bank_agr1_c01 import DRILL_1  # noqa: E402
from bank_agr1_c02 import DRILL_2  # noqa: E402
from bank_agr1_c03 import DRILL_3  # noqa: E402
from bank_agr1_c04 import DRILL_4  # noqa: E402
from bank_agr1_c05 import DRILL_5  # noqa: E402
from bank_agr1_c06 import DRILL_6  # noqa: E402
from bank_agr1_c07 import DRILL_7  # noqa: E402
from bank_agr1_c08 import DRILL_8  # noqa: E402

DRILLS = {1: DRILL_1, 2: DRILL_2, 3: DRILL_3, 4: DRILL_4,
          5: DRILL_5, 6: DRILL_6, 7: DRILL_7, 8: DRILL_8}

TITLES = {
    1: "The Scope of Agriculture",
    2: "Rocks, Soil Formation and Soil Properties",
    3: "Soil Fertility, Manure and Fertiliser",
    4: "Land Preparation and Cultural Practice",
    5: "Crop Propagation and Nursery Practice",
    6: "Pests, Diseases and Weeds",
    7: "The Crops of Nigeria",
    8: "Harvest, Storage and Marketing",
}

BANK_BLOCKS = [
    ("Ch 1 — the scope of agriculture", 15),
    ("Ch 2 — rocks, soil formation and soil properties", 15),
    ("Ch 3 — soil fertility, manure and fertiliser", 15),
    ("Ch 4 — land preparation and cultural practice", 15),
    ("Ch 5 — propagation and nursery practice", 15),
    ("Ch 6 — pests, diseases and weeds", 15),
    ("Ch 7 — the crops of Nigeria", 15),
    ("Ch 8 — harvest, storage and marketing", 15),
]

PAPER_SECTIONS = {
    1: [
        ("Soil science", 0, 12),
        ("Land preparation and cultural practice", 12, 22),
        ("Propagation and nursery", 22, 30),
        ("Fertility, manure and fertiliser", 30, 36),
        ("Tools and machines", 36, 40),
    ],
    2: [
        ("The crops of Nigeria", 0, 14),
        ("Pests, diseases and weeds", 14, 24),
        ("Harvest, storage and marketing", 24, 33),
        ("Calculations and farm records", 33, 40),
    ],
}

BLOCK_ADVICE = {
    1: [
        ("Soil science", 12, "Chapter 2"),
        ("Land preparation and cultural practice", 10, "Chapter 4"),
        ("Propagation and nursery", 8, "Chapter 5"),
        ("Fertility, manure and fertiliser", 6, "Chapter 3"),
        ("Tools and machines", 4, "Chapter 4"),
    ],
    2: [
        ("The crops of Nigeria", 14, "Chapter 7"),
        ("Pests, diseases and weeds", 10, "Chapter 6"),
        ("Harvest, storage and marketing", 9, "Chapter 8"),
        ("Calculations and farm records", 7, "Chapters 3 and 8"),
    ],
}

def _pad(stem: str) -> float:
    path = OUT / "_fit.json"
    if path.exists():
        return float(json.loads(path.read_text()).get(stem, 0))
    return 0.0


def key_grid(keys, indent="  "):
    lines = ["#answer-key-grid(("]
    for s in range(0, len(keys), 10):
        lines.append(indent + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    lines.append("))")
    return lines


def render_paper(num: int, data, title: str, blurb: str) -> None:
    items = balance(data, seed=7000 + num * 61)
    n = len(items)
    keys = [k for _s, _o, k, _sol in items]
    intro = f"paper{num}"

    lines = ['#import "template.typ": *', ""]
    lines += [
        "",
        f'#current-chapter.update("Full Paper {num}")',
        "",
        "#pagebreak(weak: true)",
        "",
        f'#hide[#heading(level: 1, outlined: true)[Full Paper {num}: {title}]]',
        "",
        "#block(",
        "  width: 100%,",
        "  fill: jamb-navy,",
        "  stroke: 1.5pt + jamb-bright,",
        "  radius: 10pt,",
        "  inset: 18pt,",
        ")[",
        f'  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[PAPER {num} OF 2]',
        "  #v(6pt)",
        f'  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full Paper {num}]',
        "  #v(4pt)",
        '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
        f"    {blurb}",
        "  ]",
        "]",
        "",
        "#v(5pt)",
        "",
        "+ Attempt *all 40* questions in *30 minutes*. One mark each; there is no negative marking, so leave no box empty.",
        "",
        "+ Work in three passes: the questions you know on sight, the ones that need a moment's thought, then the guesses you were unsure of.",
        "",
        "+ Record your answers in the answer sheet at the end of the questions, so that a second attempt is not coloured by the first.",
        "",
        "#v(2pt)",
        "",
        '#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The paper is built in the proportions of a real UTME Agricultural Science paper, but the examiner mixes the parts without warning: a soil question may appear inside a crop-protection block, and a named Nigerian crop may open a question on farm tools. Every item still carries a full solution, so the paper remains a true rehearsal.]',
        "",
        "#v(6pt)",
        "",
    ]

    for idx, (s_title, start, end) in enumerate(PAPER_SECTIONS[num]):
        lines += [
            f"== Section {chr(65 + idx)} — {s_title} (Questions {start + 1}–{end})",
            "",
        ]
        for i in range(start, end):
            stem, opts, _k, _sol = items[i]
            lines.append(mcq(i + 1, stem, opts))
            lines.append("")

    # ---- answer sheet ------------------------------------------------------
    sheet = [
        "#v(6pt)",
        "",
        "#block(breakable: false)[",
        "== Answer Sheet",
        "",
        '#text(size: 8.8pt)[Write the letter you chose in the box under each question number. If you change an answer, cross the old letter out and write the new one beside it — a crossed-out letter is easier to audit than an erased one.]',
        "",
        "#v(3pt)",
        "",
        "#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 8pt)[",
        "  #set text(size: 8.2pt)",
        "  #table(",
        "    columns: (1fr,) * 10,",
        "    inset: (x: 3pt, y: 2.5pt),",
        "    align: center + horizon,",
        "    stroke: 0.4pt + jamb-border,",
    ]
    for start in range(1, 41, 10):
        nums = ", ".join(f"[#align(center)[*{i}*]]" for i in range(start, start + 10))
        blanks = ", ".join("[#v(17pt)]" for _ in range(10))
        sheet += [f"    {nums},", f"    {blanks},"]
    sheet += [
        "  )",
        "]",
        "]",
        "",
        "#v(6pt)",
        "",
        "== Rough Work",
        "",
        '#text(size: 8.6pt)[Use the lines to write the three or four words that decide a question — the date, the section, the list — and to mark the ones you intend to revisit. A candidate who writes nothing cannot tell a guess from a memory after the paper.]',
        "",
        "#v(4pt)",
    ]
    for _ in range(14 if num == 1 else 16):
        sheet += [
            "#line(length: 100%, stroke: 0.4pt + jamb-border)",
            "#v(13pt)",
        ]
    sheet += [""]

    lines += [
        "== How This Paper Is Marked",
        "",
        "#block(breakable: false, width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[",
        '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]',
        "  #v(4pt)",
        "  #table(",
        "    columns: (1.0fr, 2.6fr),",
        "    inset: 4pt,",
        "    align: (left + horizon, left + horizon),",
        "    stroke: none,",
        "    [*35–40*], [300-plus territory. The paper is secure; now work on speed rather than accuracy.],",
        "    [*30–34*], [250 to 290. Reread the solutions to the questions you missed and name the chapter of each.],",
        "    [*24–29*], [200 to 240. The gap is topic knowledge, not exam technique. Rework the two weakest chapters before the next paper.],",
        "    [*0–23*], [Below 200. Work the chapters again, then retake this paper cold a week later.],",
        "  )",
        "]",
        "",
        "#v(4pt)",
        "",
        '#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[A score is a diagnosis, not a verdict. What matters is the block that lost the marks: look down the score bands, then find the sections in which the misses cluster.]',
        "",
        "#v(5pt)",
        "",
        "== Where the Missed Marks Came From",
        "",
        "#table(",
        "  columns: (1.75fr, 0.65fr, 2.4fr),",
        "  inset: (x: 5pt, y: 4pt),",
        "  align: (left + horizon, center + horizon, left + horizon),",
        "  stroke: 0.5pt + jamb-border,",
        "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        "  table.header(",
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Section],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Marks],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[If you missed more than a third, reread],',
        "  ),",
    ]
    for label, marks, where in BLOCK_ADVICE[num]:
        lines.append(f"  [{label}], [{marks}], [{where}],")
    lines += [
        ")",
        "",
        '#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[A section of six marks cannot be judged on one miss, and a section of fifteen cannot be judged on three. Repair the block that lost the most marks per question asked, not the one that lost the most marks.]',
        "",
        "#v(6pt)",
        "",
        "== Score Log",
        "",
        "#table(",
        "  columns: (0.9fr, 0.9fr, 0.7fr, 0.7fr, 0.7fr, 0.7fr, 0.7fr, 1.6fr),",
        "  inset: (x: 5pt, y: 4pt),",
        "  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),",
        "  stroke: 0.5pt + jamb-border,",
        "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        "  table.header(",
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Attempt],',
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Date],',
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[A],',
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[B],',
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[C],',
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[D],',
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[E],',
        '    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Total],',
        "  ),",
        "  [First sitting], [#v(9pt)], [], [], [], [], [], [],",
        "  [Second sitting], [#v(9pt)], [], [], [], [], [], [],",
        "  [Third sitting], [#v(9pt)], [], [], [], [], [], [],",
        ")",
        "",
        "#v(4pt)",
        "",
        '#text(size: 9.2pt)[Three sittings are enough to see a trend, and a trend is what the log is for. Fill the first line the day you mark this paper, and the second a week later with the same paper cold: the difference between the two totals is the amount the marking taught you. A third sitting a fortnight before the examination should be the best of the three, and if it is not, the chapters named in the solutions are still the ones to reread.]',
        "",
    ]

    lines += sheet

    # ---- key ---------------------------------------------------------------
    lines += [
        "#pagebreak(weak: true)",
        "",
        f'#current-chapter.update("Full Paper {num} — Key")',
        "",
        "=== Answer Key",
        "",
        "#answer-key-grid((",
    ]
    for s in range(0, n, 10):
        lines.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    lines.append("))")
    lines.append("")

    pad = _pad(f"paper{num}")
    lines += [
        "#[",
        "  #set text(size: 8.75pt)",
        "  #set par(leading: 0.55em, spacing: 0.45em)",
        "",
        "  #block(breakable: false)[",
        "  === Complete Solutions",
        "",
    ]
    for i, (_stem, _opts, k, sol) in enumerate(items, 1):
        lines.append(f'  #sol-item({i}, "{k}", dense: true, pad: {pad}pt)[')
        lines.append(f"    {_clean(sol)}")
        lines.append("  ]")
        if i == 20:
            lines.append("  #pagebreak(weak: true)")
        if i == 2:
            lines.append("  ]")
        lines.append("")
    lines.append("]")
    lines.append("")

    path = OUT / f"paper{num}.typ"
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote {path.name}: {n} questions")


def render_bank() -> None:
    """120 questions, in chapter blocks of fifteen, then key and solutions."""
    chapters = [1, 2, 3, 4, 5, 6, 7, 8]
    items = []
    for ch in chapters:
        items += balance(BANK[ch], seed=9000 + ch * 47)
    n = len(items)
    keys = [k for _s, _o, k, _sol in items]

    lines = ['#import "template.typ": *', ""]
    lines += [
        "",
        '#current-chapter.update("Appendix B: The 120-Question Master Bank")',
        "",
        "#pagebreak(weak: true)",
        "",
        '#hide[#heading(level: 1, outlined: true)[Appendix B: The 120-Question Master Bank]]',
        "",
        "#block(",
        "  width: 100%,",
        "  fill: jamb-navy,",
        "  stroke: 1.5pt + jamb-bright,",
        "  radius: 10pt,",
        "  inset: 18pt,",
        ")[",
        '  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX B]',
        "  #v(6pt)",
        '  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The 120-Question Master Bank]',
        "  #v(4pt)",
        '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
        "    One hundred and five questions that appear in neither paper and in none of the",
        "    chapter drills, in eight blocks of fifteen — one block per chapter. Use a block as a",
        "    weekly test, or the whole bank as the last week's revision.",
        "  ]",
        "]",
        "",
        "#v(5pt)",
        "",
        "+ One hundred and five questions in *60 minutes*, if you sit the whole bank at once.",
        "",
        "+ Work in blocks of fifteen and mark each block before starting the next: a block tells you which chapter to reread tonight.",
        "",
        "+ The key and a full solution for every question follow the last item.",
        "",
        "#v(6pt)",
        "",
    ]

    for idx, ch in enumerate(chapters):
        start = idx * 15 + 1
        lines += [f"== B.{ch} {TITLES[ch]} (Questions {start}–{start + 14})", ""]
        for i in range(idx * 15, idx * 15 + 15):
            stem, opts, _k, _sol = items[i]
            lines.append(mcq(i + 1, stem, opts))
            lines.append("")

    lines += [
        "#v(6pt)",
        "",
        "== Answer Sheet",
        "",
        '#text(size: 8.8pt)[Mark each block of fifteen before you start the next. The box under each number holds the letter you chose.]',
        "",
        "#v(3pt)",
        "",
        "#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 8pt)[",
        "  #set text(size: 8.0pt)",
        "  #grid(",
        "    columns: (1fr,) * 10,",
        "    row-gutter: 2pt,",
        "    column-gutter: 3pt,",
    ]
    for start in range(1, 121, 10):
        nums = ", ".join(f"[#align(center)[*{i}*]]" for i in range(start, start + 10))
        blanks = ", ".join("[#align(center)[#v(6pt)]]" for _ in range(10))
        lines += [f"    {nums},", f"    {blanks},"]
    lines += [
        "  )",
        "]",
        "",
        "#v(4pt)",
        "",
        '#text(size: 8.4pt)[*Marking each block:* 14–15 secure — move to the next block and return to this one in a fortnight; 11–13 developing — reread the section named in the solutions of the misses; 0–10 revise the chapter before attempting the next block, because the bank is a test, not a lesson.]',
        "",
    ]
    lines += [
        "== B.6 Marks by Chapter",
        "",
        '#text(size: 8.8pt)[The bank is fifteen questions a chapter, so it can be marked twice with a clean comparison. Fill the first line in the week you finish the chapter, the second a fortnight later, and set the retest date from the second score: below 14, a week; 14 to 17, a fortnight; 18 and above, a month.]',
        "",
        "#v(3pt)",
        "",
        "#table(",
        "  columns: (2.45fr, 0.5fr, 0.62fr, 0.62fr, 0.7fr, 0.95fr),",
        "  inset: (x: 5pt, y: 4.2pt),",
        "  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),",
        "  stroke: 0.5pt + jamb-border,",
        "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        "  table.header(",
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Chapter],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Items],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[First],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Second],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Band],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Retest on],',
        "  ),",
    ]
    for name, count in BANK_BLOCKS:
        lines.append(f"  [{name}], [{count}], [#v(9pt)], [#v(9pt)], [#v(9pt)], [#v(9pt)],")
    lines += [
        "  [*The bank*], [*120*], [#v(9pt)], [#v(9pt)], [—], [—],",
        ")",
        "",
        "#v(4pt)",
        "",
    ]

    lines += [
        "#pagebreak(weak: true)",
        "",
        '#current-chapter.update("Appendix B: The 120-Question Master Bank — Key")',
        "",
        "== Answer Key",
        "",
    ]
    lines += key_grid(keys)
    lines.append("")

    pad = _pad("bank120")
    lines += [
        "#[",
        "  #set text(size: 8.75pt)",
        "  #set par(leading: 0.55em, spacing: 0.45em)",
        "",
        "  #block(breakable: false)[",
        "  == Complete Solutions",
        "",
    ]
    for i, (_stem, _opts, k, sol) in enumerate(items, 1):
        lines.append(f'  #sol-item({i}, "{k}", dense: true, pad: {pad}pt)[')
        lines.append(f"    {_clean(sol)}")
        lines.append("  ]")
        if i == 2:
            lines.append("  ]")
        lines.append("")
    lines.append("]")
    lines.append("")

    path = OUT / "bank120.typ"
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote bank120.typ: {n} questions")


def render_keys() -> None:
    """Every key in the volume, in the order the chapters and papers use them."""
    paper1 = balance(PAPER_1, seed=7000 + 61)
    paper2 = balance(PAPER_2, seed=7000 + 122)
    bank = []
    for ch in range(1, 9):
        bank += balance(BANK[ch], seed=9000 + ch * 47)
    drills = {ch: balance(DRILLS[ch], seed=1000 + ch * 37) for ch in range(1, 9)}

    lines = ['#import "template.typ": *', ""]
    lines += [
        "",
        '#current-chapter.update("Appendix C: Consolidated Answer Keys")',
        "",
        "#pagebreak(weak: true)",
        "",
        '#hide[#heading(level: 1, outlined: true)[Appendix C: Consolidated Answer Keys]]',
        "",
        "#block(",
        "  width: 100%,",
        "  fill: jamb-navy,",
        "  stroke: 1.5pt + jamb-bright,",
        "  radius: 10pt,",
        "  inset: 18pt,",
        ")[",
        '  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX C]',
        "  #v(6pt)",
        '  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Consolidated Answer Keys]',
        "  #v(4pt)",
        '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
        "    Every key in the volume in one place: the two papers, the master bank and the eight",
        "    chapter drills. If you photocopy one page of this book, photocopy these pages.",
        "  ]",
        "]",
        "",
        "#v(5pt)",
        "",
    ]

    blocks = [
        ("C.1 Full Paper 1", [k for _s, _o, k, _sol in paper1]),
        ("C.2 Full Paper 2", [k for _s, _o, k, _sol in paper2]),
        ("C.3 The 120-Question Master Bank", [k for _s, _o, k, _sol in bank]),
    ]
    for ch in range(1, 9):
        blocks.append(
            (f"C.{3 + ch} Chapter {ch} Practice Drill — {TITLES[ch]}",
             [k for _s, _o, k, _sol in drills[ch]])
        )

    for i, (title, keys) in enumerate(blocks):
        if i == 4:
            lines += ["#pagebreak(weak: true)", ""]
        lines += [f"== {title}", ""]
        lines += key_grid(keys)
        lines.append("")

    lines += [
        "#v(5pt)",
        "",
        "== C.12 The Shape of Every Key",
        "",
        '#text(size: 9pt)[Every key in this volume was balanced by the same shuffle, so no letter runs away with the paper. Count the letters on your answer sheet and compare: a sheet whose letters are wildly out of proportion to the column below is usually a sheet that has slipped one question out of step. The keys sit where the questions do — Papers 1 and 2 in C.1 and C.2, the master bank in C.3, the eight chapter drills in C.4 to C.11, and the two-minute set of each chapter under its four questions.]',
        "",
        "#v(3pt)",
        "",
        "#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[",
        "  #set text(size: 8.4pt)",
        "  #table(",
        "    columns: (2.3fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr, 0.9fr),",
        "    inset: (x: 5pt, y: 4pt),",
        "    align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),",
        "    stroke: 0.5pt + jamb-border,",
        "    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        "    table.header(",
        '      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Key],',
        '      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[A],',
        '      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[B],',
        '      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[C],',
        '      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[D],',
        '      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Items],',
        "    ),",
    ]
    for title, keys in blocks:
        counts = [keys.count(L) for L in "ABCD"]
        label = title.split(" — ")[0]
        lines.append(
            "    [" + label + "], [" + "], [".join(str(c) for c in counts) + f"], [{len(keys)}],"
        )
    lines += [
        "  )",
        "]",
        "",
    ]

    lines += [
        "#v(4pt)",
        "",
        '#concept-box("How to use a key you have already seen")[',
        "  + *Do not read the key first.* A key read before the attempt teaches nothing, because recognition is not recall.",
        "  + *Count the letters.* If your sheet has twelve Bs and two Ds, you have probably mis-marked rather than mis-answered.",
        "  + *Group the misses by chapter, not by question.* Three misses on map scales is one gap, not three accidents.",
        "]",
        "",
        "#v(6pt)",
        "",
        "== C.13 When the Count Looks Wrong",
        "",
        '#text(size: 9.4pt)[Most marks lost after the paper has been marked are lost to a sheet that slipped one question out of step. The symptom is always visible in the letter counts.]',
        "",
        "#v(4pt)",
        "",
        "#table(",
        "  columns: (1.15fr, 1.55fr, 2.3fr),",
        "  inset: (x: 5pt, y: 3.2pt),",
        "  align: (left + horizon, left + horizon, left + horizon),",
        "  stroke: 0.5pt + jamb-border,",
        "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
        "  table.header(",
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Symptom],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it usually means],',
        '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What to do],',
        "  ),",
        "  [One letter missing entirely], [A run of answers written one column out], [Lay the key beside the sheet and compare from the point where the letters stop matching],",
        "  [Twelve or more of one letter], [Two answers in one box, or one answered twice], [Recount the numbering at 10, 20, 30 and 40],",
        "  [The total is 39 or 41], [A box left empty, or two boxes holding one answer], [Count the filled boxes before counting the correct ones],",
        "  [Everything matches to question 20], [The sheet slipped one place at a page turn], [Shift the second half up or down by one and recount],",
        "  [More than eight wrong in one block], [A topic gap, not a marking slip], [Reread the chapter named in that block, then re-sit the paper],",
        ")",
        "",
        "#v(6pt)",
        "",
        "== C.14 Reading a Key Properly",
        "",
        '#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 12pt)[',
        '  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[THE KEY IS A MAP, NOT A SCORE]',
        "  #v(4pt)",
        '  #text(size: 9.7pt)[',
        "    A key tells you which letter was correct. It does not tell you why you chose the other one,",
        "    and the other one is the whole of your remaining work. So mark with two pencils: one to",
        "    score the paper, the other to write, in the margin, the reason for each miss — did not know,",
        "    knew it and doubted, misread, or ran out of time.",
        "  ]",
        "  #v(4pt)",
        '  #text(size: 9.7pt)[',
        "    When the sheet is marked, count the four reasons. A page of did-not-know sends you back to",
        "    the chapter. A page of knew-it-and-doubted sends you to Appendix J, because a doubt that",
        "    survives the reading is a trap that has not been named. A page of misread sends you to a",
        "    pen: underline the operative word in every stem before you choose. And a page of ran-out-",
        "    of-time sends you to the clock, not to the book.",
        "  ]",
        "  #v(4pt)",
        '  #text(size: 9.7pt)[',
        "    Mark the two papers and the bank on the same day of the week, at the same hour, with the",
        "    same pen. A score taken under changing conditions measures the conditions. Only a score",
        "    taken under the same conditions measures the candidate.",
        "  ]",
        "]",
        "",
        "#v(5pt)",
        "",
        '#text(size: 9.3pt)[One more habit: keep the marked sheet. A month later the pattern of misses',
        "will matter more than the total, and the sheet is the only record of it. Fold it into the",
        "book at this page and let it fall open on the day before the examination.]",
        "",
    ]

    path = OUT / "answer_keys.typ"
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print("wrote answer_keys.typ")


def main() -> int:
    render_paper(
        1, PAPER_1, "The Soil and the Seed",
        "Forty questions in thirty minutes, in the order and proportions of a real UTME paper: "
        "the rock that becomes soil, the profile and its horizons, texture and structure, the "
        "land-preparation sequence, the planting and cultural practices, and the seed that starts "
        "the whole chain.",
    )
    render_paper(
        2, PAPER_2, "Crops, Enemies and the Harvest",
        "A second forty questions with no stem repeated from Paper 1 and none repeated from the "
        "drills: the cereals, legumes and tubers of Nigeria, the pests and diseases that attack "
        "them, the storage and marketing that follow the harvest, and the calculations a farmer "
        "must be able to do.",
    )
    render_bank()
    render_keys()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
