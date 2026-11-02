#import "template.typ": *

#current-chapter.update("Appendix H: The Eight-Week Plan")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix H: The Eight-Week Plan]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Eight-Week Plan]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    One chapter a week, its drill on the Saturday, and the papers left for the last fortnight.
    Twelve hours a week is enough if the hours are timed.
  ]
]

#v(6pt)

== H.1 The Weeks

#table(
  columns: (0.5fr, 1.3fr, 1.5fr, 1.35fr, 1.55fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Back matter],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The week's one job],
  ),
  [1], [1 — Population], [Chapter 1 drill, timed], [Appendix F, A–E], [read the radar before the chapter],
  [2], [2 — Settlement], [Chapter 2 drill], [Appendix I.1–I.3], [draw the land-use rings from memory],
  [3], [3 — Agriculture], [Chapter 3 drill], [Appendix D.3], [the crop map, by belt],
  [4], [4 — Mining, Power and Industry], [Chapter 4 drill], [Appendix I.4–I.6], [the mineral map, by state],
  [5], [5 — Transport, Trade and Tourism], [Chapter 5 drill], [Appendix D.3 calculations], [the trade formulas, written out],
  [6], [6 — Nigeria], [Chapter 6 drill], [Appendix E.1–E.2], [the physical outline, drawn once],
  [7], [7 — West Africa and the Wider World], [Chapter 7 drill], [Appendix E.3], [the organisations table, recited],
  [8], [8 — Environment and Development], [Chapter 8 drill, then Paper 1], [Appendix J], [Paper 1 marked; every miss named],
)

== H.2 The Week in Hours

#table(
  columns: (1.2fr, 0.7fr, 2.4fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Session],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Hours],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens in it],
  ),
  [Read], [4], [the radar, then the sections, with the figures copied by hand],
  [Worked examples], [2], [all four, covered, then compared line by line],
  [Drill], [1.5], [forty questions in forty minutes, then the solutions],
  [Recall], [1.5], [Appendix A aloud; the misses re-read],
  [Past questions], [2], [a paper or half a paper, timed],
  [Corrections], [1], [every miss written into the score log with its chapter],
)

== H.3 The Last Three Days

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THREE DAYS OUT · TWO DAYS OUT · THE DAY BEFORE]
  #v(4pt)
  #text(size: 9.9pt)[
    *Three days out:* Paper 2, timed and marked. Read Appendix J and the traps. \
    *Two days out:* Appendix A with the answers covered, then the score log — only the dotted
    items. Sleep eight hours. \
    *The day before:* no new content. Read the radar page of each chapter, walk through the ten
    calculations on paper, and pack the calculator, the pen and the ID.
  ]
]

#v(4pt)

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[IN THE HALL]
  #v(3pt)
  #text(size: 9.6pt)[
    Forty questions in thirty minutes. First pass: answer everything you know in fifteen
    minutes, marking the doubtful ones with a dot. Second pass: the dotted ones only. Third
    pass: transfer to the answer sheet — and check that the number on the sheet matches the
    number of the question, which is where more marks are lost than anywhere else.
  ]
]

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[IF YOU HAVE ONLY FOUR WEEKS]
  #v(3pt)
  #text(size: 9.6pt)[
    Two chapters a week: read the radar and the sections on Monday and Tuesday, work the four
    examples on Wednesday, drill on Thursday, correct on Friday, and take half a paper on
    Saturday. Drop Appendices G and I; keep A, D and J, which are the recall, the figures and the
    traps.
  ]
]
