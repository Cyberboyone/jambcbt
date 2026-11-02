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
    From the night before to the last five minutes: what to bring, what to do first,
    what to do when a question resists, and the four habits that turn a good candidate
    into a good score.
  ]
]

#v(4pt)

== K.1 The Night Before

#table(
  columns: (1.35fr, 2.8fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Why],
  ),
  [Pack the documents: JAMB profile code, registration slip, and whatever the centre requires], [a missing slip on the morning is worth more anxiety than any poem],
  [Read Appendix G once, slowly, and then close the book], [the five cards are the whole volume in five pages; anything more is a new anxiety],
  [Say the twelve scenes of *The Proud King* aloud], [the longest poem is the one that slips; the order is easier to hold than the lines],
  [Set two alarms and know the route], [the paper rewards calm, and calm is mostly logistics],
  [Sleep before midnight], [a tired candidate misreads stems, and misreading is where marks go],
)

#trap-box("Do not do these the night before")[
  *Do not learn a new poem.* If it was not learned by now, tonight will only make it harder to remember the ones you know.

  *Do not sit a full paper at eleven at night.* A timed paper is a morning exercise; an evening one will lower your confidence and raise your pulse.

  *Do not argue about answers with friends.* Someone will have a different recollection, and neither of you will settle it before the hall.
]

== K.2 The First Five Minutes

#shortcut-box("In the hall, before question one")[
  + Write your name and number *before* you read anything, and check the paper's page count.
  + Read the instructions once: number of questions, time allowed, how the options are presented.
  + Turn to the first page and read the unseen poem twice, without a pencil the first time.
  + Note the section boundaries — unseen, *Vanity*, *Ambush*, *Anvil*, *Crossing*, *Proud King* — so you know where you are going.
  + Decide the order you will answer in, and write it in the margin: unseen first, then your strongest poem.
]

#text(size: 9.2pt)[The first five minutes are not for answering. They are for making the paper smaller: sixty questions become six sections, and six sections become one decision about where to start. A candidate who begins at question one with no plan is answering the paper's order rather than their own.]

== K.3 The Order of Attack

#table(
  columns: (0.75fr, 0.85fr, 2.5fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What you are doing],
  ),
  [*1*], [10], [the unseen poem: two readings, twelve questions, no lingering],
  [*2*], [20], [the three short poems: *Vanity*, *Ambush*, *The Anvil* — your strongest first],
  [*3*], [20], [*Crossing the Bar* and *The Proud King*: scene recognition, quick decisions],
  [*4*], [5], [the questions you flagged: one pass, best elimination, move on],
  [*5*], [5], [the sheet: every blank filled, every number checked],
)

#concept-box("When a question resists")[
  Give it forty seconds. If nothing settles, eliminate the two options you can argue against,
  choose between the survivors, mark the question, and move. A flagged question costs a
  minute later; a fought question costs three minutes now and damages the four questions
  after it. The paper is a budget, and the budget is the advantage.
]

== K.4 The Sheet

#table(
  columns: (1.35fr, 2.8fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Habit],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it prevents],
  ),
  [Answer as you go, not in a block at the end], [the misalignment that costs ten marks in one slip],
  [Check the numbering every ten questions], [the off-by-one error that is invisible until it is too late],
  [Use the on-screen strike-out if there is one], [a four-way choice turned into a two-way choice at no cost],
  [Leave no blank, ever], [the certain zero that no amount of knowledge can recover],
  [Do not leave early], [the last five minutes are the cheapest marks in the paper],
)

== K.5 The Last Five Minutes

#rule-box("The final pass, in this order")[
  + *Blanks.* Scroll the whole sheet and fill every one. A guess is a chance; a blank is a zero.
  + *Numbering.* Check that question 41's answer is in box 41.
  + *Flagged questions.* Only change an answer if you can name the line that proves the first choice wrong.
  + *The unseen poem.* Re-read the two lines you were least sure about; do not re-read the whole poem.
  + *Hand over.* Nothing is gained by staying, and a late change is usually a mistake.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The playbook in one paragraph]
  #v(3pt)
  #text(size: 10.1pt)[
    Pack the night before, sleep, and read only the five cards in the morning. In the hall, spend the first five minutes making the paper smaller: write your details, read the instructions, read the unseen poem twice, and decide the order. Answer the unseen poem first, then your strongest short poems, then the long poem's scenes, then the flagged questions, then the sheet. Give a resisting question forty seconds and a flag, never five minutes and a fight. Fill every blank, check the numbering, and change an answer only when you can name the line that proves it wrong. The paper rewards knowledge, and it pays for technique: the same knowledge, arranged this way, is worth several marks more.
  ]
]
