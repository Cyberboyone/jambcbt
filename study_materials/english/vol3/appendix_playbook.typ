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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The hour before, the forty minutes and the ten minutes after — written as instructions rather than advice, because on the day you will not have time to interpret anything.]
]

#v(5pt)

== K.1 The Clock

#table(
  columns: (0.9fr, 2.2fr, 1.4fr, 1.6fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Minute],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What you are doing],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Questions done],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The rule],
  ),
  [0–4], [the reading text, first, from a closed book], [10], [if a fact does not come in twenty seconds, flag it],
  [4–16], [the comprehension passage and its five questions], [15], [questions before passage; the sentence before the option],
  [16–22], [the cloze passage, read whole before the first blank], [25], [sense, then register, then grammar],
  [22–30], [synonyms, antonyms, sentence interpretation], [40], [the clause decides the sense],
  [30–36], [sentence completion and grammar], [50], [find the subject; check the frame],
  [36–40], [oral forms, then the five-minute audit], [60], [never a blank],
)

#v(4pt)

== K.2 The Four Passes

#concept-box("Pass one — what you know")[
  Answer every question you can settle on sight and move on the instant it resists. The pass is not about finishing; it is about making sure the questions you own are already safe before the clock starts costing you anything.
]

#concept-box("Pass two — the flagged")[
  Return to the flagged questions with the whole paper's information in your head. A question that resisted at minute six often yields at minute thirty, because a later passage has already warmed the vocabulary.
]

#concept-box("Pass three — the boxes")[
  Every remaining blank gets an answer. Eliminate two options, choose between the survivors by the three-second audit, and mark. A blank costs a quarter of a mark in expectation; a guess between two costs half a mark at worst.
]

#concept-box("Pass four — the audit")[
  Five checks, in this order: blanks, question numbers, the flagged list, the option you changed and now regret, and the clock. Change an answer only when you can name the evidence you missed — never because the first choice feels unlucky.
]

== K.3 Twelve Dos and Twelve Don'ts

#table(
  columns: (2.9fr, 2.9fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do not],
  ),
  [read the questions before the passage], [read the passage twice before looking at a question],
  [answer the reading text first], [leave the novel questions until the clock is short],
  [mark the sentence each answer rests on], [choose an option because it repeats a word from the passage],
  [read the whole cloze paragraph first], [fill the first blank as you meet it],
  [name the relation before choosing a connector], [choose a connector by the sound of the sentence],
  [find the subject before the verb], [let the nearest noun decide the verb],
  [flag and move], [sit on a question that will not yield],
  [answer every question], [leave a blank “to come back to”],
  [check the question numbers before you submit], [assume the engine has kept them in order],
  [spend the last five minutes on blanks and numbers], [spend the last five minutes rereading a passage],
  [eat and sleep before the paper], [revise a new fact in the queue],
)

#v(4pt)

#trap-box("The four sentences that lose marks")[
  + *“I will come back to it.”* You will not; there are sixty questions and forty minutes. Answer it now, badly, and flag it.
  + *“It sounds right.”* Sound is what the distractor was built for. Name the rule or the evidence.
  + *“The passage says so.”* The passage may say it about something else. True is not the same as answering.
  + *“I have changed my mind.”* Only if you can name the evidence you missed the first time. Otherwise the first answer stays.
]

#v(4pt)

== K.4 The Day Before

#shortcut-box("The last twenty-four hours")[
  + Morning: Appendix A aloud, twice. It is forty lines and it holds most of the marks that are still soft.
  + Afternoon: Appendix J silently, one column at a time, saying the kill move for each trap.
  + Evening: the four checks and the clock from K.1, written out on one page in your own hand.
  + Night: sleep. A fact learned at midnight is a fact you will misremember at ten in the morning.
]

#v(3pt)

#text(size: 9.6pt)[On the morning, take the clock seriously and nothing else. The paper is not a test of how much you can remember in the last ten minutes; it is a test of whether the method survives contact with a timer. You have sat six drills, three papers and a hundred and twenty bank questions. The work is done. What remains is to read the question's last five words, name the evidence, and move.]

#v(4pt)

== K.5 The Morning

#table(
  columns: (1.3fr, 3.6fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[When],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What],
  ),
  [Two hours before], [a meal, water, and no new material],
  [One hour before], [Appendix A, aloud, once — then close the book],
  [At the gate], [the four checks from K.1, recited, and the clock's three numbers: 4, 16, 40],
  [In the hall], [write the section timings on the rough sheet before question one],
  [Afterwards], [log the four blocks while they are fresh, then leave the paper alone until the following week],
)

#v(4pt)

#concept-box("The last word")[
  The paper will not ask you anything this book has not asked you first. It will ask it faster, in a different order, with a clock in the corner — and that is the whole difference. Read the question's last five words, name the evidence, answer, move. Sixty times.
]
