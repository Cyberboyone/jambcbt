#import "template.typ": *

#current-chapter.update("Appendix L: The Exam-Day Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix L: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX L]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty questions, forty minutes, one mark each and no negative marking. What follows is
    the whole paper as a procedure, from the moment the timer starts to the moment you
    confirm submission.
  ]
]

#v(5pt)

== L.1 The Forty Minutes

#table(
  columns: (0.85fr, 1.55fr, 2.6fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Clock],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Pass],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What you are doing],
  ),
  [0–2], [Survey], [read the first line of every question and mark the three you can answer instantly],
  [2–22], [First pass], [answer everything you know; flag, do not linger; no extract twice],
  [22–32], [Extracts], [the prose, drama and poetry blocks, in that order, reading the stem before the text],
  [32–38], [Second pass], [the flagged questions, using the elimination routine below],
  [38–40], [Check], [no empty box; the answer number matches the question number],
)

#rule-box("The elimination routine for a question you cannot answer")[
  + *Cut any option that describes rather than argues.* Pictures, weather, sets and scenery are distractors in a literature paper.
  + *Cut any option that names the author*, unless the stem asks about the author.
  + *Cut any option that is true of every text* — "it emphasises the theme", "it creates a picture".
  + *Of the two left, choose the one that mentions a consequence for the reader or audience.*
]

// ============================================================================
== L.2 If the Extract Looks Impossible

It happens: an unseen poem in a register you cannot place, or a drama extract with no
stage directions. The procedure does not change, and the marks are still there.

#shortcut-box("Four moves when the extract is opaque")[
  + *Read the last line first.* It names the concern; the rest is evidence.
  + *Find the turn.* A *but*, a *yet*, a question, or a change of tense marks it, and most stems sit beside it.
  + *Count the speakers.* One voice, two, or a group? That answers the genre questions by itself.
  + *Answer the question asked, even if the extract is half understood.* A two-thirds reading with a precise answer beats a full reading with a vague one.
]

#trap-box("The three ways candidates lose the paper in the hall")[
  *Spending eight minutes on one unseen poem.* The paper pays one mark for it and one mark for the next question.

  *Leaving a box empty.* There is no negative marking: an empty box is a guaranteed loss and a guess is a one-in-four chance.

  *Changing correct answers at the end.* Change an answer only if you can point at the word in the text that defeats your first choice. A feeling is not evidence.
]

// ============================================================================
== L.3 The Last Week, Day by Day

#table(
  columns: (0.7fr, 2.2fr, 1.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Do not],
  ),
  [−6], [Appendix A, sections A.1 and A.2; the running list], [start a new topic],
  [−5], [Appendix A, sections A.3 and A.4], [reread a whole chapter],
  [−4], [Mock Paper 2 under time, in one sitting], [pause the clock],
  [−3], [Mark the paper; read every solution], [mark only the wrong ones],
  [−2], [The glossary, D.1, cover and recall], [learn new quotations],
  [−1], [Appendix K, and this playbook], [an all-night session],
  [0], [Sleep, breakfast, the playbook in the morning], [new material],
)

// ============================================================================
== L.4 The Ten Sentences Worth Knowing by Heart

#table(
  columns: (0.35fr, 5.1fr),
  inset: (x: 5pt, y: 5pt),
  align: (center + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 0.8pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Sentence],
  ),
  [1], [Literature is language organised so that the way it is said carries meaning.],
  [2], [A full answer gives the name, the evidence and the effect — and the effect is a sentence about the reader.],
  [3], [Drama arrives in action, prose in narration, poetry in compression.],
  [4], [A tragedy takes a person of standing and gives him an action he cannot undo.],
  [5], [A comedy ends by enlarging the community.],
  [6], [Soliloquy: alone. Aside: in company, unheard. Monologue: in company, heard.],
  [7], [Dramatic irony is the audience knowing what a character does not.],
  [8], [Point of view decides what the reader may know, and the limit is the technique.],
  [9], [A device is a way of making the reader do something; the something is the effect.],
  [10], [If an option could be written about another text, it has not answered this one.],
)

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Before you close the book]
  #v(3pt)
  #text(size: 10.0pt)[
    You have read the six chapters, worked the drills, sat two papers and read a note on every
    question you answered. That is more preparation than most candidates bring to this paper.
    The examination is now a test of two things you can control — whether you read the stem
    before the extract, and whether you leave a box empty. Do neither, and the work you have
    done will show.
  ]
]

#v(4pt)

== L.5 The Morning of the Paper

#table(
  columns: (1.35fr, 2.35fr, 1.35fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Time],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why],
  ),
  [Two hours before], [a proper meal, and water], [a hungry candidate reads the stem twice and answers the extract],
  [One hour before], [the ten sentences in L.4, cover and recall], [they are the whole book in ten lines],
  [Thirty minutes], [arrive, sit, breathe], [rushing costs a mark a minute],
  [Ten minutes], [read the on-screen instructions], [the flag button is usually there, and it saves time],
  [First minute], [write the clock's finish time on your rough sheet], [the timer is the only opponent you cannot outwit],
)
