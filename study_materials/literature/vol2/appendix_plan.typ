#import "template.typ": *

#current-chapter.update("Appendix H: The Ten-Week Plan and Score Log")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: The Ten-Week Plan and Score Log]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Ten-Week Plan and Score Log]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A week-by-week plan for a candidate who has read the texts once, and a log for every
    score you record. The plan is deliberately modest: four sessions a week, forty
    minutes each, and the log is what turns those minutes into evidence.
  ]
]

#v(5pt)

== H.1 The Ten Weeks

#table(
  columns: (0.55fr, 1.35fr, 2.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Focus],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you should be able to do by Sunday],
  ),
  [*1*], [Chapters 1–2], [answer a set-text question in the four-part frame; a bank row for every scene of one play],
  [*2*], [Chapter 3], [fill a five-question map for six characters, from memory],
  [*3*], [Chapter 4], [write three claims and one concession sentence for three themes],
  [*4*], [Chapter 5], [say what changes and what it costs in each act of *Othello*],
  [*5*], [Chapter 6], [say what each book of *Native Son* does, and quote from the third],
  [*6*], [Chapter 7], [recite three dossiers — world, spine, cast, moments, claims],
  [*7*], [Chapter 8 + Paper 1], [sit Paper 1 in forty minutes and mark every answer],
  [*8*], [Paper 2 + bank 1–60], [sit Paper 2; log both scores; redo the missed items],
  [*9*], [bank 61–120 + appendices D and F], [answer any five of the eight plans from memory],
  [*10*], [full review + rapid fire], [60 pairs in ten minutes; one paper re-sat at speed],
)

#shortcut-box("The four sessions")[
  Each week has four forty-minute sessions: one reading, one bank, one questions, one
  review of what you got wrong. If a week goes badly, the session to protect is the
  review — it is the only one that changes what you know.
]

== H.2 The Score Log

#text(size: 9.6pt)[Fill this in every time you sit a set. The trend matters more than any single score, and the third column is the one to act on: an error you can name is an error you can fix, and an error you cannot name will return in the examination.]

#table(
  columns: (0.7fr, 1.5fr, 0.6fr, 0.6fr, 1.9fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Set],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Time],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The error I can name],
  ),
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
  [ ], [ ], [ ], [ ], [ ],
)

#concept-box("Read the log backwards")[
  Once a month, read the last column from the bottom up. Three entries that name the same
  error is not a run of bad luck; it is the next week's plan. This is the only use of a
  score log that repays the trouble of keeping one.
]
