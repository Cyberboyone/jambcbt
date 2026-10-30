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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six weeks, six chapters, two mocks. Write in the book: a plan you cannot see is a plan you will not keep.]
]

#v(6pt)

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
  [1], [Chapters 1 and 2], [Both drills, untimed, then the 34 questions again in 30 min], [Every solution read],
  [2], [Chapters 3 and 4], [Both drills; the worked examples covered up first], [Four MCQs of each chapter right],
  [3], [Chapters 5 and 6], [Both drills; the recap figures redrawn from memory], [Six diagrams labelled],
  [4], [All six chapters], [Mock Examination 1 under time; mark with Appendix C], [30+ out of 40],
  [5], [Weakest two chapters], [Their drills again; Appendix B blocks 1–6], [No repeated error],
  [6], [All six chapters], [Mock Examination 2; the rapid-fire pairs daily], [31+ out of 40],
)

== G.2 Drill Score Tracker

#table(
  columns: (0.9fr, 1.5fr, 1.0fr, 1.4fr, 1.5fr),
  inset: (x: 5pt, y: 9.2pt),
  align: (left + horizon, left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score / 40],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weakest section],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Second attempt],
  ),
  [Chapter 1], [], [], [], [],
  [Chapter 2], [], [], [], [],
  [Chapter 3], [], [], [], [],
  [Chapter 4], [], [], [], [],
  [Chapter 5], [], [], [], [],
  [Chapter 6], [], [], [], [],
)

#v(4pt)

The score bands at the foot of every drill are the target, not the ceiling: 34–40 is secure, 28–33 is developing, below 28 means reread before you retest. A second attempt only counts if at least a week has passed.

== G.3 Mock Log

#table(
  columns: (0.9fr, 1.0fr, 1.2fr, 1.2fr, 1.6fr),
  inset: (x: 5pt, y: 9.2pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Time used],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter with most misses],
  ),
  [Mock 1], [], [], [], [],
  [Mock 1 again], [], [], [], [],
  [Mock 2], [], [], [], [],
  [Mock 2 again], [], [], [], [],
)

== G.4 Error Log

#table(
  columns: (0.75fr, 1.05fr, 2.15fr, 1.5fr),
  inset: (x: 5pt, y: 9.6pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What went wrong],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The fix, in one line],
  ),
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
)

#v(4pt)

*The rule for this page.* An error that is written down twice is not repeated; an error that stays in the mark scheme is. Fill the log the same evening, when the wrong reasoning is still in your head, and read it before every paper.
