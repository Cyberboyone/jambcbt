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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six weeks, two mocks and one log. The plan below is the order this volume should be read in; the tables are the record that tells you whether the reading worked.]
]

#v(5pt)

== G.1 The Six-Week Plan

#table(
  columns: (0.7fr, 1.55fr, 1.5fr, 1.5fr),
  inset: (x: 6pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Then sit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Finish the week with],
  ),
  [1], [Chapter 1, sections 1.1–1.4], [Drill 1, questions 1–20], [the Chapter 1 self-check and the checklist],
  [2], [Chapter 1, 1.5–1.6; Chapter 2, 2.1–2.3], [Drill 1 again; Drill 2, 1–20], [the Chapter 2 recap card, recited out loud],
  [3], [Chapter 2, 2.4–2.6; Chapter 3, 3.1–3.3], [Drill 2 again; Drill 3, 1–20], [the Chapter 3 self-check],
  [4], [Chapter 3, 3.4–3.6; Chapter 4, 4.1–4.3], [Drill 3 again; Mock 1, timed], [the Mock 1 question map],
  [5], [Chapter 4, 4.4–4.6; Chapter 5, 5.1–5.5], [Drill 4 and Drill 5, 1–20 each], [a second sitting of Drill 1],
  [6], [Chapter 6, all sections; Appendices D and E], [Mock 2, timed; Bank blocks 1–6], [re-sit any drill under 30\/40],
  [7], [Appendix J, the twelve traps], [both mocks again, under time], [the error log, read from the top],
  [8], [Appendix K, the exam-day playbook], [nothing new — forty minutes of rapid fire], [an early night],
)

The order matters less than the interval. Every drill in this book is designed to be sat *twice*: once when the chapter is read, and once a fortnight later. The second sitting is the one that tells you the truth.

Two of the eight weeks are spare, on purpose: a plan with no slack collapses the first week an examination timetable gets in the way. If you fall behind, move *every* week down by the same amount rather than skipping one — the interval between the first and second sittings of a drill is the part that does the work. With only four weeks, merge weeks 1 with 2 and 3 with 4, keep the two mock weeks where they are, and do half of each drill on the first sitting and the other half a fortnight later.

#pagebreak()

== G.2 Drill Score Tracker

Write the date and the score of each attempt. Two attempts with a fortnight between them predict an examination score far better than a single first attempt.

#table(
  columns: (1.6fr, 1.3fr, 1.3fr, 1.3fr, 1.2fr),
  inset: (x: 9pt, y: 11pt),
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
  [Chapter 1 — Temperature], [], [], [], [],
  [Chapter 2 — Expansion], [], [], [], [],
  [Chapter 3 — Heat transfer], [], [], [], [],
  [Chapter 4 — Calorimetry], [], [], [], [],
  [Chapter 5 — Gas laws], [], [], [], [],
  [Chapter 6 — Thermodynamics], [], [], [], [],
)

== G.3 Mock Log

#table(
  columns: (1.1fr, 1.4fr, 1.2fr, 2.3fr),
  inset: (x: 9pt, y: 11pt),
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

#shortcut-box("How to sit a mock so that the score means something")[
  + *One sitting, no pauses.* Forty questions in forty minutes, phone away, no dictionary, no glancing at the key.
  + *Mark in one pass.* Score the paper before you read any solution, so the number in the log is honest.
  + *Then read every solution,* including the ones you got right. The solution is where the second method lives.
]

#pagebreak()

== G.4 Error Log

The most useful page in this book. One line per wrong answer, in the order you met them; the right-hand column is the rule you broke, written as an instruction to yourself.

#table(
  columns: (0.8fr, 1.0fr, 2.4fr, 1.6fr),
  inset: (x: 7pt, y: 6.5pt),
  align: (center + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Q],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What I actually did],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The rule],
  ),
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
  [#v(7pt)], [#v(7pt)], [#v(7pt)], [#v(7pt)],
)

#trap-box("A log that is filled in is worth ten that are printed")[
  If the log stays empty, the plan did not happen. The reason to write the rule in the fourth column is that a rule written in your own words is recalled under pressure, while a page number is not. Three lines a week is enough to change a grade.
]
