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
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Revision Planner and Score Tracker]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A six-week schedule, a page to record every score, and twenty one-line calculations to keep the arithmetic sharp. Photocopy this appendix and write in the copy, not in the book.]
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
  [2], [Chapters 3 and 4], [both drills attempted and marked; the mole conversions written out from memory],
  [3], [Chapters 5 and 6], [both drills attempted and marked; the periodic trends table reproduced from memory],
  [4], [Mock 1, then the first 60 of the master bank], [Mock 1 marked and mapped; the two weakest chapters reread],
  [5], [Mock 2, then the remaining 60 of the master bank], [Mock 2 marked and mapped; the rapid-fire appendix worked twice],
  [6], [The whole book, at speed], [nothing new — only corrections, the glossary, and the data sheet],
)

== G.2 Score Tracker

#table(
  columns: (1.5fr, 1fr, 1fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Out of],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weakest chapter],
  ),
  [Drill 1 · Matter], [], [40], [],
  [Drill 2 · The mole], [], [40], [],
  [Drill 3 · Gases], [], [40], [],
  [Drill 4 · Atomic structure], [], [40], [],
  [Drill 5 · Periodic table], [], [40], [],
  [Drill 6 · Bonding], [], [40], [],
  [Mock Examination 1], [], [40], [],
  [Mock Examination 2], [], [40], [],
  [Master bank — first 60], [], [60], [],
  [Master bank — last 60], [], [60], [],
)

#trap-box("Write the score down the day you sit the paper")[
  A score you remember is a score you round upwards. The tracker is only useful if it records the number you actually got, and the chapter you actually missed — because that is the list you will revise in the final week.
]

== G.3 Twenty One-Line Calculations

Work these in your head, or in the margin, in under a minute each. Answers are in the right-hand column; cover it.

#table(
  columns: (2.6fr, 1.1fr, 2.6fr, 1.1fr),
  inset: 4pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Answer],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Answer],
  ),
  [moles in 20 g of CaCO₃], [0.2], [moles in 4.4 g of CO₂], [0.1],
  [mass of 0.5 mol of NaOH], [20 g], [mass of 0.25 mol of H₂SO₄], [24.5 g],
  [molecules in 0.2 mol], [$1.2 times 10^23$], [atoms in 0.1 mol of CH₄], [$3.0 times 10^22$],
  [volume of 0.5 mol at s.t.p.], [11.2 dm³], [volume of 2 mol at r.t.p.], [48 dm³],
  [moles in 250 cm³ of 0.4 M], [0.1], [concentration of 0.2 mol in 2 dm³], [0.1 M],
  [% of N in NH₃], [82.4 %], [% of O in H₂O], [88.9 %],
  [mass of CaO from 20 g CaCO₃], [11.2 g], [mass of CO₂ from 10 g CaCO₃], [4.4 g],
  [P if V halves from 2 atm], [4 atm], [V if T doubles at constant P], [doubles],
  [rate ratio of O₂ to H₂], [1 : 4], [neutrons in ³⁷Cl], [20],
  [electrons in Mg²⁺], [10], [RAM from 75 % ³⁵Cl and 25 % ³⁷Cl], [35.5],
  [group of 2, 8, 6], [VI], [period of 2, 8, 8, 1], [4],
  [shape of CH₄], [tetrahedral], [bond angle in H₂O], [104.5°],
)

== G.4 The Final Week

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Checklist for the last seven days] \
  #v(4pt)
  #set text(size: 9.8pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    [☐ reread the twelve question types], [☐ rewrite the six chapter summaries],
    [☐ redo Mock 1 and Mock 2, timed], [☐ work the twenty calculations above],
    [☐ read the glossary, one column a night], [☐ memorise the data sheet],
    [☐ redo every drill question you missed], [☐ sleep before the paper, not after it],
  )
]

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + state the mole relationships and use them without the formula sheet;
  + read a gas-law question and name the law before calculating;
  + count protons, neutrons and electrons in any atom or ion;
  + write a configuration and read a group and period from it;
  + explain any periodic trend with the words *charge*, *distance* and *shielding*;
  + draw a dot-and-cross diagram for an ionic and a covalent compound;
  + classify a structure and predict its melting point and conduction;
  + name the shape and angle of the five standard molecules;
  + identify an unknown ion from a single test result;
]
