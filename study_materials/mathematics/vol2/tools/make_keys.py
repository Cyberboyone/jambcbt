#!/usr/bin/env python3
"""Collect every chapter drill key into Appendix R (answer_keys.typ)."""
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent.parent
NAMES = ["Change of Subject", "Polynomials", "Quadratic Equations", "Simultaneous Equations",
         "Inequalities", "Variation", "Sequences & Series", "Binary Operations", "Matrices"]

out = ['#import "template.typ": *', "",
       '#current-chapter.update("Appendix R: Consolidated Drill Answer Keys")', "",
       "#pagebreak()", "#block(", "  width: 100%,", "  fill: jamb-navy,",
       "  stroke: 1.5pt + jamb-bright,", "  radius: 10pt,", "  inset: 18pt,", ")[",
       '  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX R]',
       "  #v(6pt)",
       '  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[All 342 Drill Answers in One Place]',
       "  #v(4pt)",
       '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[',
       "    The key to every chapter drill in the volume, gathered for marking at speed. Each key was",
       "    derived from the question data, not typed by hand, so it cannot drift from the questions.",
       "  ]",
       "]", "", "#v(6pt)", "",
       "== How to Mark", "",
       "Mark one chapter at a time, in one sitting, with the solutions closed. Write the score at the",
       "top of the page and record only the *number* of misses - the identity of the misses belongs in",
       "the error log in Appendix J, where it can be acted on.", ""]

total = 0
for i, name in enumerate(NAMES, 1):
    s = (HERE / f"drill_ch{i:02d}.typ").read_text()
    m = re.search(r"#answer-key-grid\(\((.*?)\)\)", s, re.S)
    letters = re.findall(r'"([ABCD])"', m.group(1))
    total += len(letters)
    out.append(f"== R.{i} Chapter {i}: {name} — {len(letters)} questions")
    out.append("")
    out.append("#answer-key-grid((")
    for j in range(0, len(letters), 10):
        out.append("  " + ", ".join(f'"{c}"' for c in letters[j:j + 10]) + ",")
    out.append("))")
    out.append("")

out += ['#shortcut-box("Marking in One Pass")[',
        "  Cover the options, read your rough work, and mark one question every fifteen seconds.",
        "  A marking session that takes longer than the test itself is a sign that the rough work",
        "  needs numbering - see Appendix O.3.",
        "]", ""]
(HERE / "answer_keys.typ").write_text("\n".join(out) + "\n")
print("answer_keys.typ:", total, "answers")
