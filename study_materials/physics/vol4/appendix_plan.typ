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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A six-week plan that uses every drill, paper and appendix in this volume in the order they were written, plus the two tables that turn a score into a decision.]
]

#v(4pt)

== G.1 The Six-Week Plan

Each week has three jobs: read, drill, and paper. The drill tells you whether the reading took; the paper tells you whether it survives being mixed with everything else.

#table(
  columns: (0.55fr, 1.5fr, 1.9fr, 2.0fr),
  inset: 4pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Wk],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Then],
  ),
  [1], [Ch 1 Electrostatics and Ch 2 Current Electricity], [1.7 and 2.7, forty questions each, timed at 44 minutes], [Ten rapid-fire pairs from Appendix A],
  [2], [Ch 3 Magnetism and Induction], [3.7, timed], [Mock Examination 1, closed book],
  [3], [Ch 4 Electronics], [4.7, timed], [Mark Mock 1 and fill the score log in Appendix C.6],
  [4], [Ch 5 Atomic Physics], [5.7, timed], [Mock Examination 2, closed book],
  [5], [Ch 6 Radioactivity and Nuclear Physics], [6.7, timed], [Master Bank blocks 1–3 in Appendix B],
  [6], [Appendix D and Appendix E only], [Master Bank blocks 4–6], [Re-sit the weaker mock; compare the two scores],
)

#v(2pt)

== G.2 The Weekly Score Log

#table(
  columns: (0.6fr, 0.85fr, 0.85fr, 0.85fr, 1.9fr),
  inset: (x: 6pt, y: 5pt),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Drill /40],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Paper /40],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Bank /20],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The chapter that cost the most marks],
  ),
  [1], [#v(12pt)], [#v(12pt)], [#v(12pt)], [#v(12pt)],
  [2], [#v(12pt)], [#v(12pt)], [#v(12pt)], [#v(12pt)],
  [3], [#v(12pt)], [#v(12pt)], [#v(12pt)], [#v(12pt)],
  [4], [#v(12pt)], [#v(12pt)], [#v(12pt)], [#v(12pt)],
  [5], [#v(12pt)], [#v(12pt)], [#v(12pt)], [#v(12pt)],
  [6], [#v(12pt)], [#v(12pt)], [#v(12pt)], [#v(12pt)],
)

#v(4pt)

== G.3 Targets and Bands

#table(
  columns: (1.15fr, 1.15fr, 3.2fr),
  inset: 5pt,
  align: (center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score /40],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Band],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means and what to do next],
  ),
  [34–40], [Secure], [Move on. Return to this paper in a fortnight, not tomorrow — the second sitting measures retention, not memory.],
  [28–33], [Developing], [The misses are concentrated in one or two chapters. Reread those sections, redo their drills, and re-sit only those blocks of the Master Bank.],
  [20–27], [Shaky], [The arithmetic is probably fine and the concepts are not. Read every solution, including the ones you got right, and name the rule each miss broke.],
  [0–19], [Revise again], [Do not re-sit the paper yet. Reread the chapters, work the chapter drills first, and come back in a week. A second low score teaches nothing.],
)

#v(4pt)

== G.4 What to Do When the Score Stalls

#table(
  columns: (2.5fr, 3.1fr),
  inset: 4pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symptom],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The actual problem],
  ),
  [Misses cluster in electrostatics], [Powers of ten: microcoulombs left unconverted, or $r$ not squared. Rework five force questions writing the units at every step.],
  [Misses cluster in circuits], [The internal-resistance term is being dropped. Write $E = V + I r$ before every circuit question, even when it looks unnecessary.],
  [Right answer, wrong reason], [The option matched and the working did not. Mark these as wrong and read the solution — a lucky answer is a gap you cannot see.],
  [Runs out of time on the last five], [Speed, not knowledge. Time ten questions at eleven minutes three days running, then ten at ten.],
  [Score falls after a good week], [Over-drilling. Take a day off the drills and reread a chapter slowly instead; the fall is usually fatigue, not forgetting.],
  [Every magnetism question feels new], [The three rules are being confused: field of a current, force on a current, induction. Draw all three on one page and label which is which.],
  [Electronics definitions blur], [p-type and n-type are being swapped. Remember: *p*entavalent gives *n*-type, *t*rivalent gives *p*-type.],
  [Photoelectric questions misread as waves], [Intensity is being used to explain energy. Write the sentence "intensity sets how many, frequency sets how fast" at the top of every attempt.],
  [Half-life arithmetic slips], [The fraction $1\/2^n$ is being used as $n\/2$. Convert every question into "how many halvings?" before touching the calculator.],
  [Nuclear equations half-balanced], [Only the top line is being checked. Write both rows as columns and add them.],
  [Transformer current inverted], [$V_p I_p = V_s I_s$ is being used backwards. Check that the answer's current direction of change is opposite to the voltage's.],
  [Guesswork at the end of a paper], [Nothing left but elimination. Remove the two options that fail a unit check or a sign check, then choose.],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE ONE RULE OF THE LOG]
  #v(3pt)
  #text(size: 9.8pt)[A score is a symptom and a chapter is a cause. Every time you write a number in the log, write the chapter beside it in the same minute — a fortnight later the number will have faded and the chapter will still be the thing to fix.]
]

#v(4pt)

== G.5 The Last Ten Days

The planner above runs for six weeks. These are the ten days after it, when the work changes from learning to protecting what has been learned.

#table(
  columns: (1.05fr, 3.45fr),
  inset: 4pt,
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The one job],
  ),
  [10–8], [One mock, marked the same day. After it, reread only the chapter that appears twice in the log.],
  [7–6], [Chapter drills, two a day, both timed. Mark them; do not reread the solutions you already know.],
  [5–4], [Master Bank in blocks of twenty. Twenty questions, ten minutes, mark, move on.],
  [3], [The twelve traps in Appendix J, read aloud, with the wrong answer each one produces.],
  [2], [Appendix D and Appendix E. Nothing new. No papers.],
  [1], [One drill in the morning, none after lunch, and an early night.],
  [0], [Read the playbook in Appendix K. Then put the book down — the paper is the next thing you read.],
)

#v(2pt)

#concept-box("What to stop doing in the last ten days")[
  + *Stop starting new topics.* A topic begun on day three is a topic you will half-know on the day, and half-knowing costs marks that not-knowing does not.
  + *Stop reading solutions without attempting the question.* Recognition feels like knowledge and is not.
  + *Stop marking papers without writing the chapter beside the score.* An unexamined score is a number, not a plan.
]
