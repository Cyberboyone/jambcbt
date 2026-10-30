#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 The First Twenty

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 7.79pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [“The committee members \_\_\_ disagreed among themselves.”], [have],
    [In “The children played happily in the garden”, the word *happily* modifies], [played],
    [The word opposite in meaning to *hostile* is], [friendly],
    [The word opposite in meaning to *transparent* is], [opaque],
    [Choose the sentence with no error.], [He is senior to me.],
    [The heavy rain will \_\_\_ the harvest this season.], [affect],
    [“The results \_\_\_ announced by the registrar.”], [were],
    [The word *candid* is nearest in meaning to], [frank],
    [In “The little girl answered the question correctly”, the word *correctly* modifies], [answered],
    [Which of these is a compound sentence?], [He arrived late and we waited.],
    [Which sentence uses the semicolon correctly?], [I bought rice; I also bought beans.],
    [Choose the correct sentence.], [Despite the rain, the match continued.],
    [“The team \_\_\_ playing well this season.”], [is],
    [“The manager objected to \_\_\_ the report again.”], [writing],
    [“Neither the teacher nor the parents \_\_\_ informed.”], [were],
    [The word *candid* is nearest in meaning to], [frank],
    [Which sentence contains a dependent clause?], [The boy ran because he was late.],
    [In the sentence “She spoke to the audience confidently”, the word *confidently* modifies], [spoke],
    [The word *transient* is nearest in meaning to], [temporary],
    [“The audience \_\_\_ on their feet at the end of the play.”], [were],
  )
]

#pagebreak()

== A.2 The Second Twenty

Twenty more, in the same format. If a line takes longer than twenty seconds, the chapter to reread is the one printed in your head beside it — write the number down and treat the list as a revision order, not a score.

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 7.79pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [“Each of the players \_\_\_ a medal.”], [was given],
    [The flood will \_\_\_ the farmers badly this year.], [affect],
    [The word opposite in meaning to *ancient* is], [modern],
    [“By next December, she \_\_\_ in the bank for ten years.”], [will have worked],
    [Choose the correct sentence.], [Because he was ill, he stayed at home.],
    [The plural of *addendum* is], [addenda],
    [Choose the sentence with no error.], [He insisted on seeing the manager.],
    [Which sentence is correctly punctuated?], [She asked me, “Where are you going?”],
    [Which of these sentences is correctly punctuated?], [The teacher asked, “Where is your book?”],
    [“The furniture in the hall \_\_\_ old.”], [is],
    [Which of these is a simple sentence?], [She sang beautifully.],
    [“Every one of the applicants \_\_\_ the form.”], [has signed],
    [“A number of people \_\_\_ waiting outside.”], [were],
    [“Neither the chairman nor the members \_\_\_ the minutes.”], [have signed],
    [Choose the correct sentence.], [The reason is that he was tired.],
    [The expression *to make ends meet* means to], [live within one's means],
    [“Neither the boys nor the girl \_\_\_ the answer.”], [knows],
    [The word *audacious* is nearest in meaning to], [daring],
    [“The results \_\_\_ published by the time we checked.”], [had been],
    [“He denied \_\_\_ anything about the plan.”], [knowing],
  )
]


Three lines that are worth more than a fourth reading of the list: an answer you had to work out is not yet an answer you know; the chapter beside the line is where to go, not the page; and a line you miss twice in a fortnight is a gap in the *chapter*, not in your memory of the list.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE TWENTY-SECOND RULE]
  #v(4pt)
  #text(size: 10.1pt)[
    Twenty seconds is chosen because it is roughly the time a CBT question gives you. If a line here takes longer, you will not have it in the hall either — not because you never learned it, but because it is not yet automatic. Read the chapter, redo the drill question on that line, then come back to the list and time yourself again on the same line only.
  ]
]

