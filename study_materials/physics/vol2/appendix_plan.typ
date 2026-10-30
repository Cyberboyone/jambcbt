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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A six-week plan and three sheets to write on. A plan you can see and a score you have written down are worth more than a resolution you have only thought about.]
]

#v(4pt)

== G.1 The Six-Week Plan

#table(
  columns: (0.55fr, 1.55fr, 2.1fr, 1.25fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Done when],
  ),
  [1], [Chapters 1 and 2], [Both drills untimed, then the 40 questions again in 35 min], [Every solution read],
  [2], [Chapters 3 and 4], [Both drills; the worked examples covered up first], [Four MCQs of each chapter right],
  [3], [Chapters 5 and 6], [Both drills; the recap figures redrawn from memory], [Six diagrams labelled],
  [4], [All six chapters], [Mock Examination 1 under time; mark with Appendix C], [30+ out of 40],
  [5], [Weakest two chapters], [Their drills again; Appendix B blocks 1–6], [No repeated error],
  [6], [All six chapters], [Mock Examination 2; the rapid-fire pairs daily], [32+ out of 40],
)

The order matters less than the interval. Every drill in this book is designed to be sat *twice*: once when the chapter is read, and once a fortnight later. The second sitting is the one that tells you the truth.

== G.2 Drill Score Tracker

Write the date and the score of each attempt. Two attempts with a fortnight between them is the pattern that predicts an examination score far better than a single first attempt.

#table(
  columns: (1.5fr, 1.35fr, 1.35fr, 1.35fr, 1.1fr),
  inset: (x: 9pt, y: 6pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[First score],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Second score],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
  ),
  [Chapter 1 — Waves], [], [], [], [],
  [Chapter 2 — Sound], [], [], [], [],
  [Chapter 3 — Mirrors], [], [], [], [],
  [Chapter 4 — Refraction], [], [], [], [],
  [Chapter 5 — Lenses], [], [], [], [],
  [Chapter 6 — Spectrum], [], [], [], [],
)

== G.3 Mock Log

#table(
  columns: (1.0fr, 1.5fr, 1.2fr, 2.4fr),
  inset: (x: 9pt, y: 6pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weakest chapter],
  ),
  [Mock 1], [], [], [],
  [Mock 2], [], [], [],
  [Mock 1 again], [], [], [],
  [Mock 2 again], [], [], [],
)

== G.4 Error Log

The most valuable page in the book once it is filled. Write the error in your own words — not the question, the *mistake*. “I measured the angle from the mirror” is worth more than “question 12 wrong”, because it is the thing you can change.

#table(
  columns: (0.5fr, 2.2fr, 1.5fr, 1.4fr),
  inset: (x: 9pt, y: 7pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The mistake, in my words],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter and section],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fixed?],
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
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[What to do a week before the paper]
  #v(3pt)
  #text(size: 9.6pt)[
    Read the Error Log, not the whole book. Every entry should by then be marked *fixed*, and any that is not is the revision for that day. Then sit Mock 2 once more, timed, and mark it with Appendix C. A candidate who has done this and a candidate who has reread six chapters the night before are not at the same starting line, even with the same knowledge.
  ]
]
