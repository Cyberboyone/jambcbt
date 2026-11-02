#import "template.typ": *

#current-chapter.update("Appendix H: The Six-Week Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: The Six-Week Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Six-Week Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    One chapter a week, its drill on the Saturday, and the two papers in the last week.
    Forty-five minutes a day, six days a week. The plan assumes nothing except that you
    will keep the Saturday appointment.
  ]
]

#v(5pt)

== H.1 The Plan

#table(
  columns: (0.6fr, 1.55fr, 1.45fr, 1.4fr, 1.0fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Test, on the Saturday],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Target],
  ),
  [*1*], [The Study of Government], [sections 1.1 to 1.6], [the two-minute set, then drill 1], [30/40],
  [*2*], [Constitutions and Development], [sections 2.1 to 2.6, plus Appendix D], [the two-minute set, then drill 2], [30/40],
  [*3*], [The Organs of Government], [sections 3.1 to 3.6], [the two-minute set, then drill 3], [32/40],
  [*4*], [Parties, Groups and Elections], [sections 4.1 to 4.5], [the two-minute set, then drill 4], [32/40],
  [*5*], [Citizenship and Administration], [sections 5.1 to 5.6], [the two-minute set, then drill 5], [32/40],
  [*6*], [Nigeria in the World], [sections 6.1 to 6.4], [the two-minute set, then drill 6], [34/40],
)

#v(4pt)

#table(
  columns: (0.6fr, 2.2fr, 1.8fr, 1.0fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it is for],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Do this],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Target],
  ),
  [*7*], [The papers], [Paper 1 on Wednesday, Paper 2 on Saturday, both timed], [32/40],
  [*8*], [The bank and the gaps], [Appendix B in blocks of twenty, marking as you go], [18/20],
  [*9*], [Rapid fire and the traps], [Appendix A daily, Appendix K twice], [50/60],
  [*10*], [The last week], [H.3 below, and nothing new], [—],
)

#v(6pt)

== H.2 The Daily Forty-Five Minutes

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Ten minutes — recall.* Appendix A or the chapter's rule boxes, covered column, out loud.
  + *Twenty minutes — read.* One section, with a pen: underline the definitions and the section numbers.
  + *Ten minutes — questions.* The two-minute set of the chapter, or ten items from its drill, marked immediately.
  + *Five minutes — write.* One paragraph, from memory, answering a section heading as if it were a structured question.
]

#v(4pt)

#text(size: 9.4pt)[The five minutes at the end are the part candidates skip and the part that works. A section you can *write* is a section you can recognise in four options; a section you have only read is a section you will recognise as familiar and answer wrongly.]

#v(6pt)

== H.3 The Last Seventy-Two Hours

#table(
  columns: (0.8fr, 2.9fr, 2.0fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[When],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What to do],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What not to do],
  ),
  [*Three days out*], [Appendix D (dates), Appendix E (institutions) and Appendix I (the comparison tables), twice each], [start a new chapter],
  [*Two days out*], [Paper 1 timed, marked, and every miss traced to a section], [re-read the whole book],
  [*One day out*], [Paper 2 timed in the morning; Appendix A and Appendix K in the evening; sleep], [drill past 9 p.m.],
  [*The morning*], [Appendix D.7 and Appendix K.3, twenty minutes, standing up], [attempt a new paper],
)

#v(4pt)

#concept-box("If you have only one week")[
  Read the six *Chapter in one breath* paragraphs, one a day, and sit one drill a day. Add
  Appendix D.7 (ten dates) and Appendix K.2 (the twenty traps). That is 24 minutes of
  reading and 40 minutes of drill a day, and it covers the eighty per cent of the paper that
  is definitions, dates, institutions and the four confusions the examiner recycles.
]
