#!/usr/bin/env python3
"""Build Appendix C (consolidated answer keys) from the generated files.

Every key in the volume is read back from the file that prints it, so the
appendix can never disagree with the questions.
"""

from __future__ import annotations

import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent


def sol_keys(path: Path) -> list[str]:
    text = path.read_text(encoding="utf-8")
    return re.findall(r'#sol-item\(\d+, "([A-D])"', text)


def grid_keys(path: Path) -> list[str]:
    text = path.read_text(encoding="utf-8")
    block = text.split("#answer-key-grid((", 1)[1].split("))", 1)[0]
    return re.findall(r'"([A-D])"', block)


def rows(keys: list[str], per: int = 10) -> list[str]:
    out = []
    for i in range(0, len(keys), per):
        out.append("  " + ", ".join(f'"{k}"' for k in keys[i:i + per]) + ",")
    return out


def main() -> int:
    chapters = [grid_keys(OUT / f"ch0{i}_{name}") for i, name in
                [(1, "waves.typ"), (2, "sound.typ"), (3, "reflection.typ"),
                 (4, "refraction.typ"), (5, "lenses.typ"), (6, "colour.typ")]]
    drills = [sol_keys(OUT / f"drill_ch0{i}.typ") for i in range(1, 7)]
    bank = sol_keys(OUT / "bank120.typ")
    mock1 = grid_keys(OUT / "mock_ch11.typ")
    mock2 = grid_keys(OUT / "mock2.typ")

    assert len(bank) == 120, len(bank)
    assert len(mock1) == 40 and len(mock2) == 40
    for k in drills:
        assert len(k) == 40, len(k)

    titles = ["Wave Motion", "Sound", "Reflection and Mirrors",
              "Refraction and Total Internal Reflection",
              "Lenses and Optical Instruments", "Colour and the Electromagnetic Spectrum"]

    L = ['#import "template.typ": *', "",
         '#current-chapter.update("Appendix C: Consolidated Answer Keys")',
         "", "#pagebreak()", "",
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
         '  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every key in the volume, in one place. If you photocopy one part of this book, photocopy this: it lets you mark any paper in under a minute.]',
         "]",
         "", "#v(5pt)", ""]

    L += ["== C.1 Mock Examination 1", "", "#answer-key-grid(("]
    L += rows(mock1)
    L += ["))", "", "== C.2 Mock Examination 2", "", "#answer-key-grid(("]
    L += rows(mock2)
    L += ["))", "", "== C.3 The Chapter Self-Checks", ""]
    L += ["#table(",
          "  columns: (0.45fr, 2.9fr, 1.1fr),",
          "  inset: 5pt,",
          "  align: (center + horizon, left + horizon, center + horizon),",
          "  stroke: 0.5pt + jamb-border,",
          "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
          '  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],',
          '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],',
          '    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Key]),']
    for i, (t, k) in enumerate(zip(titles, chapters), 1):
        L.append(f"  [{i}], [{t}], [{' '.join(k)}],")
    L += [")", "", "== C.4 The End-of-Chapter Drills", ""]
    for i, (t, k) in enumerate(zip(titles, drills), 1):
        L += [f"=== Drill for Chapter {i} — {t}", "", "#answer-key-grid(("]
        L += rows(k)
        L += ["))", ""]

    L += ["== C.5 The Master Bank", "", "#answer-key-grid(("]
    L += rows(bank)
    L += ["))", ""]

    L += ["#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[",
          '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARKING IN ONE MINUTE]',
          "  #v(3pt)",
          "  #text(size: 9.6pt)[Each block is laid out in the order the questions are printed, ten to a line. Count the wrong answers, subtract from the total, and write the score at the top of the paper — a score you write down is a score you can improve, and one you only remember is not.]",
          "]", ""]

    L += ["== C.6 The Score Log", "",
          "#text(size: 9.9pt)[A key you never use is a list of letters. Mark the paper, write the number down, and write beside it the one chapter that cost you the most marks — that sentence is what you revise next, not the chapter you enjoyed.]",
          "", "#v(2pt)", "",
          "#table(",
          "  columns: (1.0fr, 1.6fr, 0.8fr, 0.6fr, 1.6fr, 2.2fr),",
          "  inset: (x: 6pt, y: 5pt),",
          "  align: (left + horizon, left + horizon, center + horizon, center + horizon, left + horizon, left + horizon),",
          "  stroke: 0.5pt + jamb-border,",
          "  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },",
          "  table.header(",
          '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Date],',
          '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Paper],',
          '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Score],',
          '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[%],',
          '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Costliest chapter],',
          '    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What I will do before the next one],',
          "  ),",
          ]
    for _ in range(13):
        L += ["  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],"]
    L += [")", "", "#v(6pt)", ""]
    L += ["#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[",
          '  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READING YOUR OWN LOG]',
          "  #v(3pt)",
          "  #text(size: 9.6pt)[Four lines tell you what to do next. A score that climbs four papers running means the method is working — keep the pace and stop adding material. A score that flat-lines means you are drilling the same chapter over and over; move. A score that falls after a good run usually means speed, not knowledge: time yourself on one paper and check whether the last ten questions are the ones you lost. And a single line far above the rest is not a fluke to be proud of — it is the paper you sat when you were fresh, and the retest will tell you the truth.]",
          "]", ""]

    (OUT / "answer_keys.typ").write_text("\n".join(L), encoding="utf-8")
    print("wrote answer_keys.typ")
    for i, k in enumerate(chapters, 1):
        print(f"  ch{i}: {' '.join(k)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
