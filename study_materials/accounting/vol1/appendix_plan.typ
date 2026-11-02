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
    no timetable: only the book, a pen, a ruler and a clock.
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
  + *It turns misses into patterns.* Three entries saying *charged the whole provision, not the increase* is a habit, and habits can be fixed in one sitting.
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
  [*1*], [Chapters 1 and 2], [both drills; Appendix A.1 and A.2 aloud; the equation written out twenty times from memory], [state the nine concepts, and post any transaction to two accounts],
  [*2*], [Chapters 3 and 4], [both drills; Appendix E.1, E.2 and E.4 copied by hand], [name the five books in order, and balance a control account],
  [*3*], [Chapter 5], [the drill; Appendix F.1 and F.2 reproduced without looking], [build a trading account and a balance sheet from a trial balance],
  [*4*], [Chapters 6 and 7], [both drills; Appendix F.5 and F.6 reproduced], [correct any error through the journal, and share a partnership profit],
  [*5*], [Chapter 8 and Paper 1], [the drill, then Paper 1 timed and marked the same day], [appropriate a company's profit and reconcile a club's subscriptions],
  [*6*], [Paper 2, timed; Appendix A daily], [mark and solve; then the 120-question bank in two sittings], [score 32 or better, with a plan for the two weakest chapters],
)

#v(5pt)

== G.3 If You Start Late

#table(
  columns: (1.1fr, 2.0fr, 2.2fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Time left],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Do],
  ),
  [*Four weeks*], [chapters 1 to 5 in order, then 6 to 8], [one drill a day; Appendix F twice a week],
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
  [Drill 1 — nature and scope], [#v(9pt)], [], [], [],
  [Drill 2 — equation and double entry], [#v(9pt)], [], [], [],
  [Drill 3 — documents and books], [#v(9pt)], [], [], [],
  [Drill 4 — control and reconciliation], [#v(9pt)], [], [], [],
  [Drill 5 — sole trader final accounts], [#v(9pt)], [], [], [],
  [Drill 6 — errors and suspense], [#v(9pt)], [], [], [],
  [Drill 7 — partnership], [#v(9pt)], [], [], [],
  [Drill 8 — company and club], [#v(9pt)], [], [], [],
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
  [*9*], [Chapter 3], [the five books and eight documents redrawn from memory; the drill repeated],
  [*8*], [Chapter 4], [one control account and one reconciliation, written out in full, then the drill],
  [*7*], [Chapter 5], [a trading account and a balance sheet from a trial balance you have not seen before],
  [*6*], [Chapter 6], [the six errors table written from memory; ten corrections through the journal],
  [*5*], [Chapter 7], [an appropriation account and two current accounts; the drill],
  [*4*], [Chapter 8], [a company's retained profit and a club's subscriptions; the drill],
  [*3*], [Paper 1 and Paper 2], [one paper in the morning, the other in the evening; both marked and solved the same day],
  [*2*], [The bank], [blocks 1 to 4 in the morning, 5 to 8 in the afternoon, all marked],
  [*1*], [Appendix A, H, I], [rapid fire twice; the playbook once; no new questions after six in the evening],
)

#v(4pt)

#trap-box("The plan fails in one predictable way")[
  The candidate reads the chapter, feels that he understands it, and skips the drill
  because the reading was pleasant. Accounting rewards the drill, not the reading: the
  paper asks you to *post* and to *compute*, and both are hand skills practised by
  answering, not by nodding along. If a day has to be cut, cut the reading and keep the
  ten minutes of questions.
]
