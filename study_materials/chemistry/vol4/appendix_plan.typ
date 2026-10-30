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
  columns: (0.55fr, 1.6fr, 2.4fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapters],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What must be finished by Sunday],
  ),
  [1], [Chapters 1 and 2], [both drills attempted and marked; the alkane and alkene tests recited aloud],
  [2], [Chapters 3 and 4], [both drills attempted and marked; the oxidation ladder drawn from memory],
  [3], [Chapters 5 and 6], [both drills attempted and marked; the food tests and the cation table recited],
  [4], [Mock 1, then the first 60 of the master bank], [Mock 1 marked and mapped; the two weakest chapters reread],
  [5], [Mock 2, then the remaining 60 of the master bank], [Mock 2 marked and mapped; the rapid-fire appendix worked twice],
  [6], [The whole book, at speed], [nothing new — only corrections, the glossary and the data sheet],
)

If you have less than six weeks, keep the first five weeks intact and cut the sixth. If you have only two weeks, do Chapters 1, 3 and 5 in week one and Chapters 2, 4 and 6 in week two, with one mock on the Saturday of each.

#trap-box("Do not revise what you already know")[
  Everyone finds the alkanes easy and the practical chapter dull, and the paper does not care. Use the tracker below: the chapter with the longest list of misses gets the next hour, whatever you feel like revising.
]

#pagebreak()

== G.2 The Chapter Checklist

Tick a box only when you can do the thing *without the book open*.

#table(
  columns: (0.4fr, 1.15fr, 2.6fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (center + top, left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[✓],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do],
  ),
  [☐], [1 · Alkanes], [write the general formula; name and draw the isomers of C₄ and C₅; list the fractions from top to bottom; write a cracking equation; write the chlorination of methane],
  [☐], [2 · Alkenes], [name the series; state the test; write four addition equations; name the polymer from a monomer; describe the preparation of ethyne],
  [☐], [3 · Alcohols], [classify an alcohol; write fermentation and hydration; name the oxidation product of each class; write three acid reactions],
  [☐], [4 · Esters], [name an ester from its acid and alcohol; write esterification and saponification; explain the micelle; compare soap and detergent; name two condensation polymers],
  [☐], [5 · Food], [classify the sugars; write the hydrolysis of starch and sucrose; state five food tests with their colours; explain denaturation],
  [☐], [6 · Practical], [name the apparatus and its accuracy; choose a separation; state the gas, flame, cation and anion tests; calculate a titre, a yield and an Rf],
)

== G.3 Drill and Mock Scores

#table(
  columns: (1.35fr, 0.75fr, 0.75fr, 0.75fr, 0.75fr, 1.1fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Out of],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[1st],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[2nd],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[3rd],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weakest area],
  ),
  [Chapter 1 drill], [40], [], [], [], [],
  [Chapter 2 drill], [40], [], [], [], [],
  [Chapter 3 drill], [40], [], [], [], [],
  [Chapter 4 drill], [40], [], [], [], [],
  [Chapter 5 drill], [40], [], [], [], [],
  [Chapter 6 drill], [40], [], [], [], [],
  [Mock Examination 1], [40], [], [], [], [],
  [Mock Examination 2], [40], [], [], [], [],
  [Master bank, block 1], [20], [], [], [], [],
  [Master bank, block 2], [20], [], [], [], [],
  [Master bank, block 3], [20], [], [], [], [],
  [Master bank, block 4], [20], [], [], [], [],
  [Master bank, block 5], [20], [], [], [], [],
  [Master bank, block 6], [20], [], [], [], [],
)

#pagebreak()

== G.4 The Miss Log

Every question you get wrong earns a line. The act of writing it down is most of the revision.

#table(
  columns: (0.5fr, 1.35fr, 1.9fr, 1.35fr),
  inset: (x: 5pt, y: 5.4pt),
  align: (center + top, left + top, left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the question asked],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why I got it wrong],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Section to reread],
  ),
  [1], [], [], [],
  [2], [], [], [],
  [3], [], [], [],
  [4], [], [], [],
  [5], [], [], [],
  [6], [], [], [],
  [7], [], [], [],
  [8], [], [], [],
  [9], [], [], [],
  [10], [], [], [],
  [11], [], [], [],
  [12], [], [], [],
  [13], [], [], [],
  [14], [], [], [],
  [15], [], [], [],
  [16], [], [], [],
  [17], [], [], [],
  [18], [], [], [],
  [19], [], [], [],
  [20], [], [], [],
  [21], [], [], [],
  [22], [], [], [],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[What the scores should look like]
  #v(3pt)
  #text(size: 9.8pt)[
    A first attempt at a drill in the low twenties out of forty is normal. What matters is the second attempt: if it is not above thirty, the chapter was read and not learned. A mock below 24/40 means the paper should be retaken after a week of the two weakest chapters; a mock above 32/40 means the remaining time belongs to the master bank and to speed, not to new material.
  ]
]
