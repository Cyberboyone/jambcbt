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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    What to do in the last week, the night before, the first five minutes and the last five — and the one number worth carrying into the hall.
  ]
]

#v(4pt)

== K.1 The Last Week

#table(
  columns: (0.9fr, 2.6fr, 2.1fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[When],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Time],
  ),
  [Days 7–5], [Appendix J in the evening; the sound chart in Appendix E in the morning], [20 minutes each],
  [Days 4–3], [One passage set and one summary set from the master bank], [25 minutes + marking],
  [Day 2], [One full mock, closed book, then mark it and fill the score log], [30 + 30 minutes],
  [Day 1], [Appendix K only, then stop by eight in the evening], [30 minutes],
)

#v(2pt)

#text(size: 9.8pt)[The week is not for learning new material. Everything you can gain in the last seven days comes from making the four checks automatic — questions first, evidence found, one step only, sound not spelling.]

== K.2 The Night Before

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: (x: 11pt, y: 9pt))[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[THE EVENING LIST]
  #v(3pt)
  #text(size: 9.8pt)[
    + Read Appendix J once, aloud.
    + Put the ID card, the examination slip and two pens in one place, and leave them there.
    + Find out the exact venue and the exact time, and decide how you are getting there.
    + Set two alarms, and set the second one across the room.
    + Sleep. A candidate who has revised for six weeks and slept for four hours has revised for three.
  ]
]

== K.3 The First Five Minutes

#text(size: 9.8pt)[The clock starts when the paper opens, not when you begin writing. Use the first five minutes to read the instructions on the screen, check the number of questions against the clock, answer the first question — starting settles the nerves — and decide your pace. In the English paper, sixty questions in forty minutes is forty seconds a question. The passages take longer and the grammar questions take less, so the number to hold in your head is this: a passage and its four questions have six minutes, and everything else has forty seconds.]

#table(
  columns: (1.1fr, 1.2fr, 2.6fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Minute],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mark],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means],
  ),
  [0–10], [15 questions], [you are on pace],
  [10–20], [30 questions], [you are on pace],
  [20–30], [45 questions], [you are on pace],
  [30–38], [the last passage and its summary], [read the questions before the passage],
  [38–40], [fill every blank], [there is no negative marking],
)

== K.4 The Last Five Minutes

#text(size: 9.8pt)[Do not re-read the passages. Do three things: check that no question is unanswered — an empty box is a certain loss and a guess is a one-in-four chance — check that you have not shifted an answer by one on the grid, and check only the four questions you flagged. If time remains after that, stop. Changing answers under time pressure costs more marks than it wins.]

#v(4pt)

#trap-box("The three ways candidates lose marks in the last five minutes")[
  *1 · Leaving blanks.* There is no negative marking. Every unanswered question is a quarter of a mark thrown away.

  *2 · Changing a considered answer for a feeling.* Your first answer came from a sentence; the second comes from anxiety. Change an answer only when you can name the sentence you got wrong.

  *3 · Re-reading the passage.* It feels like work and it is not. The questions you flagged are in the marked sentences, not in paragraph four.
]

== K.5 The Pace, in One Table

#table(
  columns: (1.5fr, 0.8fr, 2.9fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Seconds],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
  ),
  [Comprehension: detail], [50], [scan for the key word, read the clause twice],
  [Comprehension: reference], [30], [substitute the noun and read the sentence],
  [Comprehension: inference], [55], [one step, and name the words that force it],
  [Comprehension: main idea], [40], [the claim every paragraph supports],
  [Summary], [60], [the instruction's noun, the points, the count],
  [Oral forms], [20], [say the word aloud; rhyme and stress are sound, not spelling],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 13pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[FOUR SENTENCES TO REMEMBER]
  #v(5pt)
  #text(size: 10.2pt)[
    *Read the questions before the passage.* \
    *Every answer has a sentence; point at it or discard the option.* \
    *One step only — an inference is a step the writer took.* \
    *Say the word aloud; spelling is not sound.*
  ]
  #v(4pt)
  #text(size: 9.6pt)[If you remember nothing else from this volume, remember these four. Then remember the fifth, which is not a rule of English at all: never leave a blank.]
]

== K.6 After the Paper

#text(size: 9.8pt)[The paper ends when the clock does, and the only useful thing to do in the hour afterwards is to write down what you can still remember of it: the two questions you guessed, the passage that took too long, the sound you could not sort. Those notes are worth more than the score, because they are the only record of how you actually sat the examination rather than how you intended to.]

#table(
  columns: (1.2fr, 3.8fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Write down],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why it helps],
  ),
  [The questions you guessed], [if the same type comes up again, you will learn the move rather than guess again],
  [The section you ran out of time in], [it tells you which part to make faster, not which part to learn from scratch],
  [The rule you could not recall], [one line in Appendix E.1 fixes it, and you will remember the fixing],
  [Anything that surprised you in the format], [the CBT interface is part of the examination, and familiarity with it is free marks],
)

#v(4pt)

#concept-box("Where to go next")[
  + *Volume 1 — Structure and Lexis.* Word classes, concord, tense, clauses, modifiers and lexis: the half of the paper a rule can settle.
  + *Volume 3 — The Novel and Full Papers.* The prescribed text, character and theme questions, and full-length papers in the CBT format.
  + *This volume again.* The four checks are worth more than any single chapter. Reread Appendix J before you open another book.
]

#v(3pt)

#text(font: "DejaVu Sans", size: 9pt, fill: jamb-muted)[JAMB CBT Master Study Series • Use of English • Volume 2 of 3 • 2026 Edition]
