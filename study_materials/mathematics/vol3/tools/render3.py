#!/usr/bin/env python3
"""Render the Volume 3 question banks into Typst fragments."""
from __future__ import annotations

import random
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import gen3  # noqa: E402

OUT = HERE.parent
LETTERS = "ABCD"


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


# ── chapter drills ─────────────────────────────────────────────────────────
CHAPTER_TITLES = {
    1: "Angles, Lines and Polygons",
    2: "Triangles, Congruence and Similarity",
    3: "Circle Theorems",
    4: "Constructions and Loci",
    5: "Plane Mensuration",
    6: "Mensuration of Solids",
    7: "Longitude, Latitude and Time",
    8: "Coordinate Geometry",
    9: "Trigonometric Ratios",
    10: "Bearings, Elevation and the Sine & Cosine Rules",
}


def render_drill(ch, qs):
    keys, ordered = shuffle_key(qs, seed=ch * 31 + 7)
    n = len(keys)
    L = ['#import "template.typ": *', "", "#pagebreak()", ""]
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
    for i, (stem, opts, _sol) in enumerate(ordered, 1):
        parts = ", ".join(f"[{o}]" for o in opts)
        L.append(f"#mcq({i}, [{stem}], {parts})")
        L.append("")
    L.append(f"== {ch}.9 Quick Answer Key & Complete Worked Solutions — Chapter {ch}")
    L.append("")
    L.append("#answer-key-grid((")
    for s in range(0, n, 10):
        L.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    L.append("))")
    L.append("")
    for i, (_stem, _opts, sol) in enumerate(ordered, 1):
        L.append(f'#sol-item({i}, "{keys[i - 1]}")[')
        L.append(f"  {sol}")
        L.append("]")
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
    return "\n".join(L) + "\n"


# ── paper renderer (mocks, banks, marathons) ───────────────────────────────
def render_paper(qs, seed, chapter, tag, subtitle, intro, outfile, per_answer_chapter=True):
    keys, ordered = shuffle_key(qs, seed=seed)
    n = len(keys)
    num = chapter.split(":")[0].replace("Appendix ", "")
    L = ['#import "template.typ": *', ""]
    L.append(f'#current-chapter.update("{chapter}")')
    L.append("#pagebreak()")
    L.append("")
    L.append("#block(")
    L.append("  width: 100%,")
    L.append("  fill: jamb-navy,")
    L.append("  stroke: 1.5pt + jamb-bright,")
    L.append("  radius: 10pt,")
    L.append("  inset: 18pt,")
    L.append(")[")
    L.append(f'  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[{tag}]')
    L.append("  #v(6pt)")
    L.append(f'  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[{subtitle}]')
    L.append("  #v(4pt)")
    L.append('  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[')
    for line in intro:
        L.append(f"    {line}")
    L.append("  ]")
    L.append("]")
    L.append("")
    L.append("#v(6pt)")
    L.append("")
    L.append(f"== {num}.1 Questions")
    L.append("")
    for i, (stem, opts, _sol) in enumerate(ordered, 1):
        parts = ", ".join(f"[{o}]" for o in opts)
        L.append(f"#mcq({i}, [{stem}], {parts})")
        L.append("")
    L.append("#pagebreak()")
    L.append("")
    L.append(f"== {num}.2 Answer Key")
    L.append("")
    L.append("#answer-key-grid((")
    for s in range(0, n, 10):
        L.append("  " + ", ".join(f'"{k}"' for k in keys[s:s + 10]) + ",")
    L.append("))")
    L.append("")
    L.append(f"== {num}.3 Complete Solutions")
    L.append("")
    for i, (_stem, _opts, sol) in enumerate(ordered, 1):
        L.append(f'#sol-item({i}, "{keys[i - 1]}")[')
        L.append(f"  {sol}")
        L.append("]")
        L.append("")
    (OUT / outfile).write_text("\n".join(L) + "\n", encoding="utf-8")
    print(f"wrote {outfile} with {n} questions")


def main():
    sizes = {1: 45, 2: 42, 3: 42, 4: 40, 5: 42, 6: 42, 7: 42, 8: 42, 9: 42, 10: 42}
    pool = {}
    total = 0
    for ch, n in sizes.items():
        qs = gen3.build(ch, n, seed=700 + ch)
        pool[ch] = qs
        (OUT / f"drill_ch{ch:02d}.typ").write_text(render_drill(ch, qs), encoding="utf-8")
        total += len(qs)
        print(f"drill_ch{ch:02d}.typ: {len(qs)} questions")
    print("TOTAL drills:", total)


if __name__ == "__main__":
    main()
