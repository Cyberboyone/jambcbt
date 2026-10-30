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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[What to do in the last week, the night before, the first five minutes and the last five — and the three sentences worth carrying into the hall.]
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
  [Days 7–5], [Appendix E.2 in the morning, Appendix J in the evening], [20 minutes each],
  [Days 4–3], [One drill a day from the chapter you scored lowest in], [27 minutes + marking],
  [Day 2], [One full mock, closed book, then mark it and fill the score log], [30 + 30 minutes],
  [Day 1], [Appendix K only. Stop by eight in the evening], [30 minutes],
)

#v(2pt)

#text(size: 9.8pt)[The week is not for learning new material. Everything you can gain in the last seven days comes from making what you already know *automatic*, and automatic means repeated aloud, not read again.]

== K.2 The Night Before

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: (x: 11pt, y: 9pt))[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[THE EVENING LIST]
  #v(3pt)
  #text(size: 9.8pt)[
    + Read Appendix E.2 once, aloud.
    + Put the ID card, the examination slip and two pens in one place, and leave them there.
    + Find out the exact venue and the exact time, and decide how you are getting there.
    + Set two alarms, and set the second one across the room.
    + Sleep. A candidate who has revised for six weeks and slept for four hours has revised for three.
  ]
]

== K.3 The First Five Minutes

#text(size: 9.8pt)[The clock starts when the paper opens, not when you begin writing. Use the first five minutes to do four things, in this order: read the instructions on the screen, check the number of questions against the clock, answer the first question — because starting settles the nerves — and decide your pace. In the English paper, sixty questions in forty minutes is forty seconds a question. That is the number to hold in your head, because it tells you when to abandon a question you cannot do.]

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
  [30–38], [the passage and summary questions], [read the questions before the passage],
  [38–40], [fill every blank], [there is no negative marking],
)

== K.4 The Last Five Minutes

#text(size: 9.8pt)[Do not re-read the whole paper. Do three things: check that no question is unanswered — an empty box is a certain loss and a guess is a one-in-four chance — check that you have not shifted an answer by one on the grid, and check the four questions you flagged. If time remains after that, stop. Changing answers under time pressure costs more marks than it wins.]

#v(4pt)

#trap-box("The three ways candidates lose marks in the last five minutes")[
  *1 · Leaving blanks.* There is no negative marking. Every unanswered question is worth a quarter of a mark thrown away.

  *2 · Changing a considered answer for a feeling.* Your first answer came from a rule; the second comes from anxiety. Change an answer only when you can name the rule you got wrong.

  *3 · Forgetting the passage questions.* Comprehension and summary take longer than a one-line grammar question. If you reach minute thirty with thirty questions left, do the grammar first and the passages last, never the other way round.
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
  [Concord and pronoun], [25], [bracket the phrase, then read the subject],
  [Tense and voice], [30], [name the time, then the aspect, then the form],
  [Lexis: synonym and antonym], [40], [put the word back into the sentence],
  [Punctuation], [30], [count the clauses before you choose the mark],
  [Comprehension], [60], [read the questions first, then the passage],
  [Summary], [90], [find the two or three sentences that carry the answer],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 13pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[THREE SENTENCES TO REMEMBER]
  #v(5pt)
  #text(size: 10.2pt)[
    *The verb agrees with the head of the subject, not with the noun nearest it.* \
    *After have, has or had, the verb is the past participle — go, went, gone.* \
    *Two full sentences need more than a comma.*
  ]
  #v(4pt)
  #text(size: 9.6pt)[If you remember nothing else from this volume, remember these three; they are worth more marks than the other forty-seven rules combined. Then remember the fourth, which is not a rule of grammar at all: never leave a blank.]
]

#v(4pt)

== K.6 After the Paper

#text(size: 9.8pt)[The paper ends when the clock does, and the only useful thing to do in the hour afterwards is to write down what you can still remember of it: the two questions you guessed, the rule you could not recall, the passage that took too long. Those notes are worth more than the score, because they are the only record of how you actually sat the examination rather than how you intended to.]

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
  [The questions you guessed], [if the same rule comes up in the next paper, you will know to learn it rather than guess again],
  [The section you ran out of time in], [it tells you which part to make faster, not which part to learn from scratch],
  [The rule you could not recall], [one line in Appendix E.1 fixes it, and you will remember the fixing],
  [Anything that surprised you in the format], [the CBT interface is part of the examination, and familiarity with it is free marks],
)

#v(4pt)

#concept-box("Where to go next")[
  + *Volume 2 — Comprehension, Summary and Oral English.* The passage technique, summary writing, and the sound system of English: vowels, consonants, stress, intonation and rhyme.
  + *Volume 3 — The Novel and Full Papers.* The prescribed text, character and theme questions, and full-length papers in the CBT format with the same appendices.
  + *This volume again.* A rule learned once and used twice is worth more than two rules learned once. Reread Chapter 2 and Chapter 6 before you open another book: between them they carry half the lexis and structure marks.
]

#v(3pt)

#text(font: "DejaVu Sans", size: 9pt, fill: jamb-muted)[JAMB CBT Master Study Series • Use of English • Volume 1 of 3 • 2026 Edition]

