#!/usr/bin/env python3
"""Render the Volume 4 chapter drills into Typst fragments."""
from __future__ import annotations

import random
import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import gen4  # noqa: E402

OUT = HERE.parent
LETTERS = "ABCD"

CHAPTER_TITLES = {
    1: "Limits",
    2: "Differentiation",
    3: "Applications of Differentiation",
    4: "Integration",
    5: "Area Under a Curve and Motion",
    6: "Representation of Data",
    7: "Measures of Location",
    8: "Measures of Dispersion",
    9: "Permutations and Combinations",
    10: "Probability",
}

CHAPTER_FILES = {
    1: "ch01_limits.typ",
    2: "ch02_differentiation.typ",
    3: "ch03_applications.typ",
    4: "ch04_integration.typ",
    5: "ch05_area_motion.typ",
    6: "ch06_data.typ",
    7: "ch07_location.typ",
    8: "ch08_dispersion.typ",
    9: "ch09_counting.typ",
    10: "ch10_probability.typ",
}


def positions(n: int, seed: int) -> list[int]:
    rng = random.Random(seed)
    out: list[int] = []
    while len(out) < n:
        block = [0, 1, 2, 3]
        rng.shuffle(block)
        out.extend(block)
    return out[:n]


def shuffle_key(qs, seed):
    pos = positions(len(qs), seed)
    keys, ordered = [], []
    for (stem, opts, _idx, sol), p in zip(qs, pos):
        new = opts[:]
        correct = new.pop(0)
        new.insert(p, correct)
        keys.append(LETTERS[p])
        ordered.append((stem, new, sol))
    return keys, ordered


def next_section(ch: int) -> int:
    """One past the highest subsection number used in the chapter file."""
    path = OUT / CHAPTER_FILES[ch]
    if not path.exists():
        return 8
    tops = [int(m.group(2)) for m in re.finditer(r"^== (\d+)\.(\d+)", path.read_text(), re.M)]
    return (max(tops) if tops else 7) + 1


def render_drill(ch, qs):
    keys, ordered = shuffle_key(qs, seed=ch * 31 + 7)
    n = len(keys)
    sec = next_section(ch)
    L = ['#import "template.typ": *', ""]
    L.append(f'#current-chapter.update("Chapter {ch}: {CHAPTER_TITLES[ch]} — Drills")')
    L.append("#block(")
    L.append("  width: 100%,")
    L.append("  fill: jamb-navy,")
    L.append("  stroke: 1.5pt + jamb-bright,")
    L.append("  radius: 10pt,")
    L.append("  inset: 16pt,")
    L.append(")[")
    L.append('  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[END-OF-CHAPTER DRILL]')
    L.append("  #v(4pt)")
    L.append(f'  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Chapter {ch} Practice Set]')
    L.append("  #v(3pt)")
    L.append('  #text(font: "DejaVu Sans", size: 9.8pt, fill: rgb("#CBD5E1"))[')
    L.append(f"    {n} exam-standard questions on {CHAPTER_TITLES[ch].lower()}. Attempt every question")
    L.append("    before turning to the key, then read the solution for each mistake.")
    L.append("  ]")
    L.append("]")
    L.append("")
    L.append("#v(4pt)")
    L.append("")
    L.append(f"== {ch}.{sec} Chapter {ch} Practice Drill — {n} Questions")
    L.append("")
    L.append(
        f"Forty-two questions graded in the order the CBT engine is likely to meet them. "
        f"Allow thirty-five minutes; the key and a full solution for every question follow.")
    L.append("")
    for i, (stem, opts, _sol) in enumerate(ordered, 1):
        parts = ", ".join(f"[{o}]" for o in opts)
        L.append(f"#mcq({i}, [{stem}], {parts})")
        L.append("")
    L.append("#pagebreak()")
    L.append("")
    L.append(f"== {ch}.{sec + 1} Quick Answer Key & Complete Solutions — Chapter {ch}")
    L.append("")
    L.append("#answer-key-grid((")
    for s in range(0, n, 10):
        L.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    L.append("))")
    L.append("")
    secure = -(-int(n * 0.85) // 1)
    steady = -(-int(n * 0.7) // 1)
    L.append("#v(8pt)")
    L.append("")
    L.append("#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[")
    L.append('  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF — CHAPTER ' + str(ch) + "]")
    L.append("  #v(3pt)")
    L.append("  #table(")
    L.append("    columns: (0.9fr, 2.6fr),")
    L.append("    inset: 4pt,")
    L.append("    align: (left + horizon, left + horizon),")
    L.append("    stroke: none,")
    L.append(f"    [*{secure}–{n}*], [Secure. Move to the next chapter; return to this drill in one week for a timed re-run.],")
    L.append(f"    [*{steady}–{secure - 1}*], [Developing. Re-read the two worked examples nearest each mistake, then redo only the questions you missed.],")
    L.append(f"    [*0–{steady - 1}*], [Revise. The solution lines name the chapter every time — reopen the section cited most often.],")
    L.append("  )")
    L.append("]")
    L.append("")
    for i, (_stem, _opts, sol) in enumerate(ordered, 1):
        L.append(f'#sol-item({i}, "{keys[i - 1]}")[')
        L.append(f"  {sol}")
        L.append("]")
        L.append("")
    return "\n".join(L) + "\n"


def main():
    sizes = {ch: 42 for ch in range(1, 11)}
    total = 0
    for ch, n in sizes.items():
        qs = gen4.build(ch, n, seed=700 + ch)
        (OUT / f"drill_ch{ch:02d}.typ").write_text(render_drill(ch, qs), encoding="utf-8")
        total += len(qs)
        print(f"drill_ch{ch:02d}.typ: {len(qs)} questions (starts at section {next_section(ch)})")
    print("TOTAL drills:", total)


if __name__ == "__main__":
    main()
