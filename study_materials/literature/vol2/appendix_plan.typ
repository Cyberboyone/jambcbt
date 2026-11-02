#import "template.typ": *

#current-chapter.update("Appendix I: The Eight-Week Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: The Eight-Week Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Eight-Week Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Two months, one text a fortnight, one drill a week and one paper a month. The plan
    assumes an hour a day and two longer sessions at the weekend; if you have less time,
    compress the reading and keep the drills, because the drills are what convert reading
    into marks.
  ]
]

#v(5pt)

== I.1 The Eight Weeks

#table(
  columns: (0.65fr, 2.0fr, 1.55fr, 1.4fr),
  inset: (x: 4.6pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Assess],
  ),
  [*1*], [Chapter 1, twice: the six moves and the four shapes], [none this week], [write ten scene cards for *Harvest*],
  [*2*], [Chapter 2: *Harvest of Corruption*], [Drill 2], [four worked examples, closed book],
  [*3*], [Chapter 3, Acts 1–3 of *Othello*], [Drill 3, first twenty questions], [the temptation scene, from memory],
  [*4*], [Chapter 3, Acts 4–5; all of *Othello* again], [Drill 3, remaining twenty], [Paper 1, timed, 40 minutes],
  [*5*], [Chapter 4: *Faceless*], [Drill 4], [the handprint clue and the three institutions],
  [*6*], [Chapter 5: *Lonely Days*], [Drill 5], [the rites, in order, on one page],
  [*7*], [Chapter 6: *Native Son*], [Drill 6], [Paper 2, timed, 40 minutes],
  [*8*], [Revision only: the tables, the ledger, the quotation bank], [all six drills, twenty questions each], [the 120-question bank, in three sittings],
)

== I.2 The Last Seven Days

#table(
  columns: (0.8fr, 1.35fr, 2.6fr),
  inset: (x: 4.6pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Do this],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Why],
  ),
  [*−7*], [Appendix A, all sixty pairs, in two passes], [recall is the fastest repair available at this stage],
  [*−6*], [Appendix D and Appendix G: names and timelines], [most lost marks are location marks],
  [*−5*], [Appendix E: the fourteen themes with their scenes], [theme answers without scenes are guesses],
  [*−4*], [One full paper, timed, marked, and every solution read], [a timed paper finds the questions you avoid],
  [*−3*], [Appendix F, then the six chapter checklists], [the checklists are the syllabus in question form],
  [*−2*], [The traps in Appendix J, then a light pass over the two-minute sets], [the traps are the errors already made, listed],
  [*−1*], [Nothing new. Sleep, water, and the route to the centre], [a tired candidate loses more marks than an unprepared one],
)

== I.3 What to Do If You Have Four Weeks

#shortcut-box("The compressed plan")[
  + *Week 1:* Chapter 1 and the two-minute sets for all five texts. You are buying the method, not the detail.
  + *Week 2:* the two plays — *Harvest* and *Othello* — with their drills, and Paper 1 at the weekend.
  + *Week 3:* the three novels, with their drills, and the character index each evening.
  + *Week 4:* Paper 2, the bank in two sittings, and the last-seven-days table above compressed into five.
]

#trap-box("The three ways a study plan fails")[
  *Reading without recall.* If you cannot close the book and write the scene card, you have not revised; you have read.

  *Drilling without marking.* A score you do not write down cannot be compared, and a drill you cannot compare teaches nothing.

  *Saving the papers for the end.* The papers are diagnostic instruments. A paper taken in the last week tells you what you should have known a month earlier.
]
