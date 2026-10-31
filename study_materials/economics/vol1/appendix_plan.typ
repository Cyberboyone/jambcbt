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
    A week-by-week route through the volume at forty-five minutes a day, with a
    compressed version for candidates who start late. The plan assumes no teacher and
    no timetable: only the book, a pen and a clock.
  ]
]

#v(5pt)

== H.1 The Daily Block

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Ten minutes — recall.* Yesterday's rapid-fire pairs, out loud, with the right column covered.
  + *Twenty minutes — new material.* One section of a chapter, with the worked examples covered and attempted first.
  + *Ten minutes — drill.* Ten questions from the current chapter's drill, marked immediately.
  + *Five minutes — wrong-answer log.* Every miss copied into one page, with the reason in six words or fewer.
]

#v(5pt)

#concept-box("Why the wrong-answer log matters more than the reading")[
  + *It is the only page written in your own words.* Rereading a chapter is passive; recording why an answer was wrong is active.
  + *It turns misses into patterns.* Three entries saying *forgot to divide by the old price* is a habit, and habits can be fixed in one session.
  + *It is the last thing you read before the hall.* Twenty pages of chapter cannot be reread in the final hour; one page of your own mistakes can.
]

#v(5pt)

== H.2 The Six Weeks

#table(
  columns: (0.75fr, 1.6fr, 1.9fr, 1.5fr),
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
  [*1*], [Chapter 1, sections 1.1–1.5, plus the recap card], [Worked examples 1–5; drill questions 1–20; rapid-fire A.1], [Define scarcity, compute an opportunity cost and read a PPC],
  [*2*], [Chapter 2 in full, then Chapter 3.1–3.3], [Both drills, questions 1–20 each; Appendix D.2 on curves], [Draw a demand curve, shift it correctly and explain utility],
  [*3*], [Chapter 3.4–3.5, then Chapter 4 in full], [Drills 3 and 4 in full; formula sheet F.1 by heart], [Find an equilibrium, apply a price control and compute every elasticity],
  [*4*], [Chapter 5 in full], [Drill 5 in full; Appendix I models 7–9; graph file E.4], [Build a cost table from scratch and find break-even],
  [*5*], [Chapter 6, then Paper 1 under the clock], [Drill 6; Paper 1 marked and every miss logged], [Test a market against the four assumptions and price a monopoly],
  [*6*], [Paper 2 under the clock; Appendices D, F and J], [Bank blocks B.1–B.6, twenty at a time; final read of the wrong-answer log], [Sit forty questions in thirty minutes and know which chapters to reread],
)

#v(5pt)

#trap-box("The four ways a six-week plan fails")[
  + *Reading without marking.* A chapter read and not drilled is a chapter forgotten by week three. Every chapter is followed by its drill in the same week, not later.
  + *Saving the papers for the end.* Sit Paper 1 in week five, not on the last night: the paper is a diagnostic, and a diagnostic read too late is only a disappointment.
  + *Ignoring the clock.* Work every drill with a timer from week two. Speed is a separate skill from accuracy, and it is trained separately.
  + *Revising what you already know.* The chapters you enjoy are the chapters you already pass. The plan sends you to the ones you avoid.
]



== H.3 If You Start Late

#table(
  columns: (0.95fr, 2.0fr, 2.6fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Time left],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do instead of the rest],
  ),
  [*Four weeks*], [Chapters 1–6, but only the teaching sections and the recap cards], [Drills 2, 3, 4 and 5 in full; Paper 1 in week four],
  [*Two weeks*], [Recap cards plus Appendices D, F and J], [Drills 2, 3 and 4, questions 1–20; Paper 1 and Paper 2 on alternate days],
  [*Ten days*], [Appendix D and F only, twice], [Bank blocks B.2, B.3 and B.4; the two papers; the rapid-fire pairs every morning],
  [*Three days*], [Appendix D.3, D.4 and F], [One paper a day, marked, with the wrong-answer log reread at night],
)

#v(5pt)

#rule-box("The minimum that still scores")[
  + *Demand and supply are non-negotiable.* Chapters 2 and 3 carry the largest block of questions, and both are learned from the same diagram.
  + *Elasticity is four formulas and one sign convention.* A candidate who can substitute into them banks four marks that cost a weekend.
  + *The cost table is arithmetic, not theory.* Once the seven formulas are written down, every cost question becomes a subtraction.
]

#v(5pt)

== H.4 The Progress Tracker

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.5fr, 0.75fr, 0.75fr, 0.75fr, 1.3fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Task],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[First score],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Retest],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Target],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Chapter to reread if short],
  ),
  [Drill 1], [], [], [34 ÷ 40], [1.1 to 1.3],
  [Drill 2], [], [], [34 ÷ 40], [2.2 to 2.5],
  [Drill 3], [], [], [34 ÷ 40], [3.2 to 3.4],
  [Drill 4], [], [], [34 ÷ 40], [4.1 to 4.4],
  [Drill 5], [], [], [34 ÷ 40], [5.3 to 5.5],
  [Drill 6], [], [], [30 ÷ 40], [6.2 to 6.4],
  [Paper 1], [], [], [30 ÷ 40], [whichever block lost most],
  [Paper 2], [], [], [32 ÷ 40], [whichever block lost most],
  [Bank], [], [], [100 ÷ 120], [any block below 16],
)

  #v(4pt)

  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[Fill the first column in pencil. A task with no score is a task not yet done, and a retest that does not beat the first score is a chapter that needs a third pass.]
]

#v(6pt)

== H.5 The Last Ten Days, Day by Day

#table(
  columns: (0.55fr, 1.6fr, 2.65fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Morning, 30 minutes],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Evening, 45 minutes],
  ),
  [*10*], [Rapid-fire A.1], [Drill 1, questions 21–40, marked],
  [*9*], [Rapid-fire A.2], [Drill 2, questions 21–40, marked],
  [*8*], [Appendix D.2, curves], [Drill 3, questions 21–40, marked],
  [*7*], [Appendix D.3, elasticities], [Drill 4, questions 21–40, marked],
  [*6*], [Appendix F.1 and F.2, formulas], [Drill 5, questions 21–40, marked],
  [*5*], [Appendix F.3, market structure], [Drill 6, questions 21–40, marked],
  [*4*], [Wrong-answer log, first half], [Paper 1, cold, 30 minutes, marked],
  [*3*], [Wrong-answer log, second half], [Paper 2, cold, 30 minutes, marked],
  [*2*], [Appendix J, the trap catalogue], [Bank blocks B.1 to B.3, twenty each],
  [*1*], [Appendix D and F, one last pass], [No new questions; sleep early],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The last day is deliberately light. A candidate who meets a new question on the night before the paper loses confidence and gains nothing; a candidate who rereads what is already known arrives at the hall with the arithmetic warm.]

#v(5pt)

#trap-box("Three things not to do in the last ten days")[
  + *Do not start a new textbook.* Two sources disagreeing on a definition is worse than one source you know.
  + *Do not sit a paper without marking it.* An unmarked paper is a rehearsal without a director: it builds stamina and teaches nothing.
  + *Do not change your sleep pattern on the last night.* The paper is written in the morning, and the brain is trained by habit, not by intention.
]
