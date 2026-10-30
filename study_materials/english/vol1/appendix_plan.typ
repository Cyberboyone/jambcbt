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
  [1], [Ch 1 Word Classes and Ch 2 Concord], [1.7 and 2.7, forty questions each, timed at 27 minutes], [Ten rapid-fire pairs from Appendix A],
  [2], [Ch 3 Tense, Aspect and Voice], [3.7, timed], [Mock Examination 1, closed book],
  [3], [Ch 4 Clauses and Punctuation], [4.7, timed], [Mark Mock 1 and fill the score log in C.6],
  [4], [Ch 5 Modifiers and Connectives], [5.7, timed], [Mock Examination 2, closed book],
  [5], [Ch 6 Lexis], [6.7, timed], [Master Bank blocks 1–3 in Appendix B],
  [6], [Appendices D and E only], [Master Bank blocks 4–6], [Re-sit the weaker mock; compare the two scores],
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
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Drill 1],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Drill 2],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The rule I still miss],
  ),
  [1], [#v(11pt)], [#v(11pt)], [#v(11pt)], [#v(11pt)],
  [2], [#v(11pt)], [#v(11pt)], [#v(11pt)], [#v(11pt)],
  [3], [#v(11pt)], [#v(11pt)], [#v(11pt)], [#v(11pt)],
  [4], [#v(11pt)], [#v(11pt)], [#v(11pt)], [#v(11pt)],
  [5], [#v(11pt)], [#v(11pt)], [#v(11pt)], [#v(11pt)],
  [6], [#v(11pt)], [#v(11pt)], [#v(11pt)], [#v(11pt)],
)

#v(3pt)

#text(size: 9.8pt)[Fill the last column with a rule, not a feeling. “I am bad at grammar” is not a revision plan; “the participle after had” is, because it names the chapter and the thirty questions that will fix it.]

#v(6pt)

== G.3 The Last Ten Days

#table(
  columns: (0.8fr, 2.0fr, 2.1fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do not],
  ),
  [10–8], [Appendix E.2 twice a day, and the traps in Appendix J], [start a new topic],
  [7], [The rules you wrote in the last column of G.2, one chapter at a time], [re-read a whole chapter],
  [6], [Master Bank blocks 4–6, marked], [count the score],
  [5], [Appendix D.3, the irregular verbs, aloud], [copy out the spelling list again],
  [4], [Mock 2 again, closed book], [look at the answers while working],
  [3], [Appendix E.1, marking every rule you cannot exemplify], [revise what you already know],
  [2], [Appendix J, the twelve traps, and the four checks in J.13], [sit a full paper],
  [1], [Appendix K, then stop by eight o'clock], [stay up late],
)

#v(3pt)

#concept-box("What the ten days are for")[
  + The last ten days are for *consolidation*, not for new material. A new rule learned on day nine is a rule you will confuse with the nine you already know.
  + Two short sessions a day beat one long one: twenty minutes at breakfast and twenty at night, with the same appendix each time.
  + Every session should end with something you can say aloud — a rule, an example, a corrected sentence. Reading without recall is not revision.
]

#v(5pt)

== G.4 The Ten-Day Tick Sheet

#text(size: 9.6pt)[Photocopy this page or draw it in the back of a notebook. One line a day, ten lines, and the last ten days stop being a mood and become a list.]

#table(
  columns: (0.5fr, 0.6fr, 2.5fr, 2.2fr, 0.6fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (center + horizon, center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Morning, 20 minutes],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Evening, 20 minutes],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Done],
  ),
  [10], [], [Appendix E.2, aloud], [Appendix J.1–J.6], [],
  [9], [], [Appendix E.1, rules 1–25], [Drill for the weakest chapter], [],
  [8], [], [Appendix E.1, rules 26–50], [Appendix J.7–J.12], [],
  [7], [], [Appendix D.3, irregular verbs], [Appendix D.4, confusables], [],
  [6], [], [Mock 1, questions 1–20], [mark and log them], [],
  [5], [], [Mock 1, questions 21–40], [Appendix H.1], [],
  [4], [], [Mock 2, closed book], [mark, log, and list the misses], [],
  [3], [], [Appendix E.2, aloud], [Appendix H.3, six repairs], [],
  [2], [], [Appendix E.1, the ten you always miss], [Appendix J.13, four checks], [],
  [1], [], [Appendix K only], [ID card, slip, two pens, two alarms], [],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[A day with a tick in every column is a day you can defend. A day with a tick in the last column and nothing else is a day you have counted rather than used.]

