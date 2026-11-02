#import "template.typ": *

#current-chapter.update("Appendix G: The Six-Week Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: The Six-Week Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Six-Week Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A week-by-week route through the volume at forty-five minutes a day, with a
    compressed version for candidates who start late. The plan assumes no teacher and
    no timetable: only the book, a pen and a clock.
  ]
]

#v(5pt)

== G.1 The Daily Block

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Ten minutes — recall.* Yesterday's rapid-fire pairs, out loud, with the right column covered.
  + *Twenty minutes — new material.* One section of a chapter, with the worked examples covered and attempted first.
  + *Ten minutes — drill.* Ten questions from the current chapter's drill, marked immediately.
  + *Five minutes — wrong-answer log.* Every miss copied into one page, with the reason in six words or fewer.
]

#v(5pt)

#concept-box("Why the wrong-answer log matters more than the reading")[
  + *It is the only page written in your own words.* Rereading a chapter is passive; recording why an answer was wrong is active.
  + *It turns misses into patterns.* Three entries saying *used selling price as the base for mark-up* is a habit, and habits can be fixed in one session.
  + *It is the last thing you read before the hall.* Twenty pages of chapter cannot be reread in the final hour; one page of your own mistakes can.
]

#v(5pt)

== G.2 The Six Weeks

#table(
  columns: (0.7fr, 1.55fr, 1.9fr, 1.6fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[By Sunday you can],
  ),
  [*1*], [Chapters 1 and 2], [the two drills, 40 items each; the Chapter 1 recap before bed], [define commerce, and compare the sole trader, the partnership and the cooperative without notes],
  [*2*], [Chapters 3 and 4], [both drills; Appendix E.2 and E.3 copied out by hand], [explain incorporation, and compute a mark-up and a discount without a calculator],
  [*3*], [Chapters 5 and 6], [both drills; Appendix E.4 learned to the point of recall], [parse the two balances, and name the aid that answers any obstacle you are given],
  [*4*], [Chapters 7 and 8], [both drills; the Chapter 7 document table redrawn from memory], [state a working capital figure, and place any document in the order it appears],
  [*5*], [Full Paper 1, timed], [mark it the same day, solve every miss, log the reason for each], [score 30 or better and say which sections cost the rest],
  [*6*], [Full Paper 2, timed; Appendix A daily], [mark and solve; then the 120-question bank in two sittings], [score 32 or better, with a plan for the two weakest chapters],
)

#v(5pt)

== G.3 If You Start Late

#table(
  columns: (0.85fr, 2.2fr, 2.5fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Time left],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Do instead of the drills],
  ),
  [*Ten days*], [the eight recaps and the trap boxes only], [one paper a day, marked; Appendix A twice a day],
  [*One week*], [the recaps, Appendix E and Appendix A], [both papers, then the bank in three blocks a day],
  [*Three days*], [Appendix A and Appendix E], [the two papers, then every solution you got wrong],
  [*One day*], [Appendix A, Appendix H and Appendix I], [no new questions: reread the wrong-answer log and sleep],
)

#v(5pt)

== G.4 The Progress Tracker

#table(
  columns: (1.7fr, 0.8fr, 0.8fr, 0.8fr, 0.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Task],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[First],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Second],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Third],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Date],
  ),
  [Drill 1 — scope], [#v(9pt)], [], [], [],
  [Drill 2 — units], [#v(9pt)], [], [], [],
  [Drill 3 — companies], [#v(9pt)], [], [], [],
  [Drill 4 — home trade], [#v(9pt)], [], [], [],
  [Drill 5 — foreign trade], [#v(9pt)], [], [], [],
  [Drill 6 — aids], [#v(9pt)], [], [], [],
  [Drill 7 — finance], [#v(9pt)], [], [], [],
  [Drill 8 — government], [#v(9pt)], [], [], [],
  [Paper 1 (out of 40)], [#v(9pt)], [], [], [],
  [Paper 2 (out of 40)], [#v(9pt)], [], [], [],
  [Bank (out of 120)], [#v(9pt)], [], [], [],
)

#v(5pt)

#text(size: 9pt)[Three columns, three sittings. Fill the first on the day you finish the drill, the second a fortnight later, and the third in the last week. A score that is flat across all three is not a slow learner; it is a candidate who has been rereading rather than re-testing, and the cure is to attempt the questions cold before opening the chapter again.]

#v(5pt)

== G.5 The Last Ten Days, Day by Day

#table(
  columns: (0.55fr, 1.35fr, 3.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Focus],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The session],
  ),
  [*10*], [Chapters 1 and 2], [recaps, traps, then forty mixed items drawn from both drills],
  [*9*], [Chapter 3], [the share and debenture table redrawn from memory; the drill repeated],
  [*8*], [Chapter 4], [mark-up and margin, ten calculations written out longhand],
  [*7*], [Chapter 5], [the two balances computed from three different sets of figures],
  [*6*], [Chapter 6], [the aids matched to obstacles, twenty items in ten minutes],
  [*5*], [Chapter 7], [the document sequence recited, then the drill],
  [*4*], [Chapter 8], [the tax and agency tables; the drill],
  [*3*], [Paper 1 and Paper 2], [one paper in the morning, the other in the evening; both marked and solved the same day],
  [*2*], [The bank], [blocks 1 to 4 in the morning, 5 to 8 in the afternoon, all marked],
  [*1*], [Appendix A, H, I], [rapid fire twice; the playbook once; no new questions after six in the evening],
)

#v(4pt)

#trap-box("The plan fails in one predictable way")[
  The candidate reads the chapter, feels that he understands it, and skips the drill
  because the reading was pleasant. Commerce rewards the drill, not the reading: the
  paper asks you to *classify* and to *calculate*, and both are skills practised by
  answering, not by nodding along. If a day has to be cut, cut the reading and keep the
  ten minutes of questions.
]
