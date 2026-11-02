#import "template.typ": *

#current-chapter.update("Appendix G: The Revision Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: The Revision Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Revision Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Three plans — twelve weeks, six weeks, seven days — built on the same principle: read
    a chapter, drill it the next day, and never let a week pass without a timed paper.
  ]
]

#v(5pt)

== G.1 Twelve Weeks: The Full Course

#table(
  columns: (0.8fr, 1.6fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Do],
  ),
  [1], [Chapter 1], [drill 1 the next day; write the manufacturing ladder from memory twice],
  [2], [Chapter 2], [drill 2; value one issue under all three stock methods],
  [3], [Chapter 3], [drill 3; one process account with an abnormal loss],
  [4], [Chapter 4], [drill 4; draw the break-even chart and label the margin of safety],
  [5], [Chapter 5], [drill 5; one three-month cash budget with a lag],
  [6], [Chapter 6], [drill 6; one statement of affairs and the profit from two capitals],
  [7], [Chapter 7], [drill 7; one admission, one retirement, one dissolution],
  [8], [Chapter 8], [drill 8; one vote account with an overspent sub-head],
  [9], [Paper 1, timed], [mark it, list every miss by chapter, reread the two weakest sections],
  [10], [Appendix A and Appendix D], [the rapid-fire pairs daily; the glossary in two sittings],
  [11], [Paper 2, timed], [mark it, then re-sit the sections that lost the most marks per question],
  [12], [Appendix H and Appendix I], [the traps list twice; one paper cold; sleep before the examination],
)

#v(3pt)

== G.2 Six Weeks: The Compressed Course

#table(
  columns: (0.8fr, 1.8fr, 1.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Drill],
  ),
  [1], [Chapters 1 and 2], [drills 1 and 2, split across the week],
  [2], [Chapters 3 and 4], [drills 3 and 4],
  [3], [Chapters 5 and 6], [drills 5 and 6],
  [4], [Chapters 7 and 8], [drills 7 and 8, then Paper 1 timed on the Sunday],
  [5], [Appendix D and Appendix E], [the 120-question bank in four blocks of thirty],
  [6], [Appendix H], [Paper 2 timed, marked, and the two weakest chapters reread],
)

#v(3pt)

== G.3 Seven Days: The Final Week

#table(
  columns: (0.8fr, 1.1fr, 2.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Focus],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The one thing to be able to do by the evening],
  ),
  [1], [Chapters 1 and 2], [write the four rungs of the manufacturing ladder and one FIFO schedule],
  [2], [Chapters 3 and 4], [one process account with a normal loss, and one break-even computation],
  [3], [Chapter 5], [one cash budget month with a lagged debtor and a loan],
  [4], [Chapter 6], [the profit formula and the mark-up/margin conversion, from memory],
  [5], [Chapter 7], [the order of payment on dissolution, and one revaluation],
  [6], [Chapter 8 and Appendix H], [the vote account, the funds, and the twenty-five traps],
  [7], [Appendix I], [one paper cold in the morning; nothing new after lunch],
)

#v(4pt)

#concept-box("What to do in the last 48 hours")[
  + *No new chapter.* A topic met for the first time two days before the paper is a topic half-learned, and half-learned is what the distractors are built for.
  + *Two papers, cold, timed.* The point is pace, not knowledge: thirty minutes for forty questions is the constraint that loses marks, not ignorance.
  + *The traps list, out loud.* Appendix H is the highest return per minute in the book on the last day.
  + *Sleep.* An accounting paper is arithmetic under a clock, and arithmetic under a clock is the first thing a tired brain gets wrong.
]

#v(3pt)

#shortcut-box("The weekly rhythm that works")[
  + *Monday and Tuesday:* read the chapter and write every format out once by hand.
  + *Wednesday:* the forty-question drill, marked in one pass.
  + *Thursday:* the solutions, and a second attempt at the ten you missed.
  + *Friday:* the previous chapter's drill again, from the beginning — spaced repetition is the cheapest revision there is.
  + *Weekend:* one timed paper every second week, from week 9 onwards.
]
