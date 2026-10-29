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
  [1], [Chapters 1 and 2], [both drills attempted and marked; every miss rewritten in the chapter's own words],
  [2], [Chapters 3 and 4], [both drills attempted and marked; the calorimetry and rate calculations redone from memory],
  [3], [Chapters 5 and 6], [both drills attempted and marked; the $K_c$ and EMF calculations redone from memory],
  [4], [Mock 1, then the first 60 of the master bank], [Mock 1 marked and mapped; the two weakest chapters reread],
  [5], [Mock 2, then the remaining 60 of the master bank], [Mock 2 marked and mapped; the rapid-fire appendix worked twice],
  [6], [The whole book, at speed], [nothing new — only corrections, the glossary and the data sheet],
)

If you have less than six weeks, cut Week 6 and keep Weeks 1–5 intact. If you have only two weeks, do Chapters 1, 3, 5 in week one and Chapters 2, 4, 6 in week two, with one mock on the Saturday of each.

#trap-box("Do not revise what you already know")[
  The comfortable chapters are the ones you will drift towards. Use the tracker: the chapter with the longest list of misses gets the next hour, whatever you feel like revising.
]

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
    [1. pH of 0.010 M HCl (section 1.4)], [2.0],
    [2. $["H"^+]$ of a solution of pH 3.3], [$5 times 10^(-4)$ M],
    [3. Volume of 0.10 M NaOH to neutralise 25.0 cm³ of 0.20 M HCl], [50.0 cm³],
    [4. Mass of NaOH for 250 cm³ of 0.40 M], [4.0 g],
    [5. Concentration of 4.0 g of NaOH in 500 cm³], [0.20 M],
    [6. Moles of solute in 250 cm³ of 0.60 M], [0.15 mol],
    [7. New concentration: 20 cm³ of 2.0 M made up to 200 cm³], [0.20 M],
    [8. Volume of water added to 50 cm³ of 4.0 M to make 0.50 M], [350 cm³],
    [9. Solubility in g per 100 g water: 6.0 g in 40 g of water], [15 g],
    [10. Mass crystallised: 50 g salt in 100 g water at 80 °C, 20 g at 20 °C], [30 g],
    [11. $x$ in a hydrate: 0.020 mol salt, 0.10 mol water], [5],
    [12. Heat to raise 250 g of water by 8 K], [8.4 kJ],
    [13. $Delta H$ if 0.050 mol gives out 2.85 kJ], [−57 kJ mol⁻¹],
    [14. $Delta H$ from bond energies: broken 700, formed 850], [−150 kJ mol⁻¹],
    [15. Enthalpy of combustion of ethanol from $Delta H_f$ values], [−1367 kJ mol⁻¹],
    [16. Rate: 36 cm³ of gas in 12 s], [3.0 cm³ s⁻¹],
    [17. $K_c$ for $"H"_2 + "I"_2 ⇌ 2"HI"$ with all three at 0.20 M], [4.0],
    [18. $["HI"]$ if $K_c = 64$ and $["H"_2] = ["I"_2] = 0.10$ M], [0.80 M],
    [19. $E^degree$ of Ag/Cu cell ($+0.80$, $+0.34$)], [0.46 V],
    [20. Mass of silver deposited by 0.020 mol of electrons ($A_r$ 108)], [2.16 g],
  )
]

== G.4 The Final Week

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #set text(size: 9.4pt)
  *Day 1–2.* Reread the six chapter summaries and the one-breath blocks. Nothing new.
  #v(3pt)
  *Day 3.* Mock 1 under timed conditions; mark it the same evening.
  #v(3pt)
  *Day 4.* Reread only the chapters named in your Question Map. Redo their drills.
  #v(3pt)
  *Day 5.* Mock 2; mark it, and count how many misses were calculation slips rather than gaps in knowledge.
  #v(3pt)
  *Day 6.* The glossary and the data sheet, then the twenty one-line calculations above.
  #v(3pt)
  *Day 7.* The playbook's fifty facts, then stop. No new questions the night before.
]
