#import "template.typ": *

#current-chapter.update("Appendix G: Revision Planner and Score Tracker")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: Revision Planner and Score Tracker]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Revision Planner and Score Tracker]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six weeks, six chapters, two mocks. Fill in the boxes with a pen — a plan you have not written down is a hope, not a plan.]
]

#v(4pt)

== G.1 The Six-Week Schedule

#table(
  columns: (0.6fr, 1.65fr, 2.2fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapters],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What must be finished by Sunday],
  ),
  [1], [Chapters 1 and 2], [both drills attempted and marked; the reactivity series recited aloud, twice],
  [2], [Chapters 3 and 4], [both drills attempted and marked; the six industrial equations written from memory],
  [3], [Chapters 5 and 6], [both drills attempted and marked; the gas tests and ion tests recited from Appendix D],
  [4], [Mock 1, then the first 60 of the master bank], [Mock 1 marked and mapped; the two weakest chapters reread],
  [5], [Mock 2, then the remaining 60 of the master bank], [Mock 2 marked and mapped; the rapid-fire appendix worked twice],
  [6], [The whole book, at speed], [nothing new — only corrections, the glossary and the data sheet],
)

If you have less than six weeks, cut Week 6 and keep Weeks 1–5 intact. If you have only two weeks, do Chapters 1, 3, 5 in week one and Chapters 2, 4, 6 in week two, with one mock on the Saturday of each.

#trap-box("Do not revise what you already know")[
  The comfortable chapters are the ones you will drift towards. Everyone finds metals easy and industrial chemistry dull, and the paper does not care. Use the tracker: the chapter with the longest list of misses gets the next hour, whatever you feel like revising.
]

#pagebreak()

== G.2 Score Tracker

Write the score, not the percentage, and the date. A column of rising numbers is worth more than a page of notes.

#table(
  columns: (1.5fr, 0.75fr, 0.75fr, 1.15fr, 2.1fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Out of],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weakest chapter],
  ),
  [Chapter 1 drill], [], [40], [], [],
  [Chapter 2 drill], [], [40], [], [],
  [Chapter 3 drill], [], [40], [], [],
  [Chapter 4 drill], [], [40], [], [],
  [Chapter 5 drill], [], [40], [], [],
  [Chapter 6 drill], [], [40], [], [],
  [Mock Examination 1], [], [40], [], [],
  [Mock Examination 2], [], [40], [], [],
  [Master bank, block 1], [], [20], [], [],
  [Master bank, block 2], [], [20], [], [],
  [Master bank, block 3], [], [20], [], [],
  [Master bank, block 4], [], [20], [], [],
  [Master bank, block 5], [], [20], [], [],
  [Master bank, block 6], [], [20], [], [],
)

#pagebreak()

== G.3 Twenty One-Line Calculations

Do these in a single sitting, without notes, timing yourself. Any one you cannot finish in a minute is a section to reread — the section is named beside it.

#[
  #set text(size: 9.0pt)
  #table(
    columns: (2.6fr, 1.4fr),
    inset: (x: 5pt, y: 2.1pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Answer],
    ),
    [1. Mass of ZnO from 8.1 g of zinc (section 1.5)], [10.1 g],
    [2. Mass of hydrogen from 0.25 mol of zinc and excess acid (1.6)], [0.50 g],
    [3. Mass of iron from 1.00 t of Fe₂O₃ (3.5)], [0.70 t],
    [4. Mass of aluminium from 5.10 kg of Al₂O₃ (3.6)], [2.70 kg],
    [5. Percentage of iron in haematite (3.1)], [70 %],
    [6. Mass of SO₂ from 8.0 g of sulphur (5.2)], [16 g],
    [7. Volume of SO₂ at s.t.p. from 0.25 mol (5.2)], [5.6 dm³],
    [8. Mass of S in 1.00 t of H₂SO₄ (5.3)], [0.327 t],
    [9. Percentage of sulphur in H₂SO₄ (5.3)], [32.7 %],
    [10. Mass of ammonia from 6.0 g of hydrogen (4.5)], [34 g],
    [11. Volume of ammonia at s.t.p. from 1.0 mol of N₂ (4.5)], [44.8 dm³],
    [12. Volume of oxygen at s.t.p. from 68 g of H₂O₂ (4.3)], [22.4 dm³],
    [13. Percentage of nitrogen in NH₄NO₃ (4.6)], [35 %],
    [14. Percentage of nitrogen in urea (4.6)], [46.7 %],
    [15. Mass of CaO from 0.100 t of CaCO₃ (6.2)], [0.056 t],
    [16. Mass of washing soda for 0.10 mol of Ca²⁺ (6.5)], [10.6 g],
    [17. Mass of BaSO₄ from 0.10 mol of sulphate (5.6)], [23.3 g],
    [18. Hardness in ppm: 16.2 mg of Ca(HCO₃)₂ per kg (6.5)], [10 ppm],
    [19. Mass of Cl₂ in 0.20 mol (5.5)], [14.2 g],
    [20. Mass of sulphur in 32 kg of SO₂ (6.6)], [16 kg],
  )
]

== G.4 The Final Week

#block(breakable: false, width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #set text(size: 9.4pt)
  *Day 1–2.* Reread the six chapter summaries and the one-breath blocks. Nothing new.
  #v(3pt)
  *Day 3.* Mock 1 under timed conditions; mark it the same evening.
  #v(3pt)
  *Day 4.* Reread only the chapters named in your Question Map. Redo their drills.
  #v(3pt)
  *Day 5.* Mock 2; mark it, and count how many misses were equations written with the wrong condition rather than gaps in knowledge.
  #v(3pt)
  *Day 6.* The glossary and the data appendix, then the twenty one-line calculations above.
  #v(3pt)
  *Day 7.* The playbook's fifty facts, then stop. No new questions the night before.
]
