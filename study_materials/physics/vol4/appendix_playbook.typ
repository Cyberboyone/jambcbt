#import "template.typ": *

#current-chapter.update("Appendix K: The Exam-Day Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[What to do in the last week, the last night, the first five minutes of the paper and the last five — in that order, because the marks are usually lost in the last five.]
]

#v(4pt)

== K.1 The Last Week

#table(
  columns: (1.1fr, 3.4fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Job],
  ),
  [−7], [Sit one full mock, closed book, in one sitting. Mark it the same day and write the score log entry.],
  [−6], [Reread the two chapters the mock flagged. Redo their drills — and only those.],
  [−5], [Work Appendix E until you can say what every line is for without looking.],
  [−4], [Sit the second mock. Compare it with the first: the chapter that appears in both columns is the one that needs tomorrow.],
  [−3], [Appendix J, all twelve traps. Then twenty questions from the Master Bank, timed.],
  [−2], [Light revision only: Appendix D and Appendix F. No new material, no new papers.],
  [−1], [One drill, marked, in the morning. Nothing after lunch. Sleep at the usual hour.],
)

#v(2pt)

== K.2 The Night Before

#concept-box("Four things, and then stop")[
  + Pack the things that can be packed: admission letter, means of identification, the JAMB profile code if the centre asks for it, two pens and a pencil.
  + Read the formula map once — not to memorise it, but to remind yourself that you already know it.
  + Set two alarms. One is a plan and the other is a plan that survives the first one failing.
  + Sleep. A tired candidate loses more marks to misread questions than to forgotten formulas, and no amount of last-minute revision buys back an hour of sleep.
]

== K.3 The First Five Minutes

#table(
  columns: (0.5fr, 3.9fr),
  inset: 4pt,
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Min],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What to do],
  ),
  [0–1], [Read the instructions on the screen, including the number of questions and the time allowed. They change between sessions.],
  [1–3], [Write nothing yet. Look at the first question and decide whether it is a *recall* question or a *calculation* question — the two need different amounts of time.],
  [3–5], [Answer the first three questions. Do not start with the hardest question you can find; start with the ones you can finish.],
)

#v(2pt)

== K.4 The Middle of the Paper

#shortcut-box("A pace that survives")[
  + One minute a question on average, but not one minute each: recall questions take twenty seconds and leave time for the four-mark calculations.
  + Never spend more than ninety seconds on one question. Flag it, guess, and return — a blank is always wrong and a guess is one in four.
  + Every fifteen questions, check the clock against the question number. If you are ahead, slow down and read the options properly; if you are behind, stop doing the arithmetic in full and start eliminating.
  + Keep the unit in view while you work. Half the distractors in this paper are the right number in the wrong unit.
]

== K.5 The Last Five Minutes

#table(
  columns: (0.5fr, 3.9fr),
  inset: 4pt,
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Min],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What to do],
  ),
  [−5 to −3], [Go back to every flagged question and every blank. Answer all of them, even by elimination.],
  [−3 to −1], [Check that the answers on the screen match the ones you wrote on your rough sheet. A mis-shaded answer is worse than a wrong one, because you will never know.],
  [−1 to 0], [Stop. Do not change an answer at the last second on a hunch — the first answer is right more often than the second, and the last-second change is the most expensive habit in the hall.],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE THREE SENTENCES TO REMEMBER]
  #v(3pt)
  #text(size: 9.9pt)[
    Accuracy first: a question answered in twenty seconds and marked wrong costs more than one answered in ninety and marked right. *Never leave a blank.* And read the last word of the question — most misses in this subject are not physics at all, they are a question that asked for the *unit* when you were working out the *value*.
  ]
]
