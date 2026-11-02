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
    What to do in the forty minutes, in the order you should do it. The knowledge is in
    the six chapters; this appendix is only about the decisions.
  ]
]

#v(5pt)

== K.1 The Three Passes

#table(
  columns: (0.85fr, 1.6fr, 2.45fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Pass],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What you do],
  ),
  [*First*], [0–22], [Answer every question you know on sight. Do not stop to think about a hard one; mark it and move.],
  [*Second*], [22–35], [Return to the marked questions. Use the six moves: place, locate, name, evidence, effect, check.],
  [*Third*], [35–40], [Fill every remaining blank, check that the numbering on your sheet matches the paper, and stop writing before the invigilator says so.],
)

#concept-box("Why the first pass is short")[
  In a forty-question paper, roughly half the questions are fact and scene questions that
  a prepared candidate can answer in under twenty seconds. Banking those first means the
  remaining time belongs to the five or six questions that actually need thought. A
  candidate who grinds through the paper in order spends the last five minutes panicking
  over question three.
]

// ============================================================================
== K.2 When Two Options Look Right

#rule-box("Four tie-breakers, in order")[
  + *Which one names a scene?* If one option contains a moment and the other contains an adjective, take the moment.
  + *Which one answers the stem's exact question?* Re-read the stem; a true sentence about the same character is still a wrong answer.
  + *Which one is in the right part of the text?* Place before you judge; an option set in Act 2 cannot answer a question about Act 5.
  + *Which one would a teacher mark?* The plain, specific, evidential option beats the clever, general, thematic one.
]

#text(size: 9.4pt)[The tie-breakers exist because the paper's wrong options are not stupid — they are built from real material. A distractor will often be a true statement about the text placed next to a stem it does not answer. That is why the last move is called *check*: it costs ten seconds and it is worth more than any amount of rereading the options.]

// ============================================================================
== K.3 The Five Disasters, and What to Do

#table(
  columns: (1.45fr, 3.35fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Disaster],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The repair],
  ),
  [*You do not know the text at all*], [Answer by elimination on place and genre. Four texts have four settings, and setting questions are the cheapest marks in the paper.],
  [*You know the play but not the scene*], [Use the plot table in your head: start at the beginning and walk forward until the quotation fits. Do not guess from the tone of the line.],
  [*Two texts have similar characters*], [Name the one action that fixes each character (Appendix D). The paper swaps functions, not names.],
  [*You run out of time*], [Fill every blank with your best elimination. There is no negative marking, and an unanswered question is a guaranteed zero.],
  [*You realise you have misread a stem*], [Correct the answer and move on immediately. Do not recalculate the whole section: the paper does not deduct for a changed answer.],
)

// ============================================================================
== K.4 The Morning Of

#shortcut-box("Ninety minutes before")[
  + Eat something, even if you never do. Hunger costs more marks than a chapter you did not revise.
  + Read Appendix A, the sixty pairs, in one pass. It is recall, not study, and it warms the memory you will use.
  + Look at one scene card and one quotation. Stop there. New material on the morning of an exam produces anxiety, not marks.
  + Arrive early enough to sit down and breathe for five minutes before the paper is given out.
]

#trap-box("The four sentences that lose marks in the hall")[
  *“I'll come back to it.”* — If you have not marked the question, you will not come back to it. Mark it.

  *“This option sounds more like literature.”* — Sounding literary is how distractors are written. Specificity is how keys are written.

  *“I remember this from the film.”* — The film is not the text, and the paper asks about the text.

  *“I'll leave it blank rather than guess.”* — There is no negative marking. A blank is a decision to score zero.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The last page of the book, and the first rule of it]
  #v(4pt)
  #text(size: 9.9pt)[
    A set-text paper is not a test of how much you have read. It is a test of whether you can find the moment a question comes from, and then say what that moment is doing. Everything in this volume — the plot tables, the ledgers, the cards, the four hundred and forty questions — exists to make those two operations fast. Find the moment. Say what it does. The rest is detail, and detail is what the appendices are for.
  ]
]
