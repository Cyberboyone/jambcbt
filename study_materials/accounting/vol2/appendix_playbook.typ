#import "template.typ": *

#current-chapter.update("Appendix I: The Exam-Day Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    What to do in the thirty minutes before the paper, in the thirty minutes of the paper,
    and in the five minutes at the end. This chapter is about technique, not knowledge.
  ]
]

#v(5pt)

== I.1 The Thirty Minutes Before

#table(
  columns: (0.6fr, 1.4fr, 2.3fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Minute],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why],
  ),
  [0–5], [settle, breathe, write your name and number], [the first marks are lost by panic, not by ignorance],
  [5–12], [write the five formulas on the rough sheet: prime cost, production cost, contribution, break-even, equivalent units], [hand memory is more reliable than head memory under stress],
  [12–20], [read Appendix H's twenty-five traps in your head], [the traps are the difference between a B and an A],
  [20–27], [two easy drill questions, for the rhythm of the arithmetic], [starting with a right answer settles the nerves],
  [27–30], [stop. Nothing new is learned now], [a fact crammed in the last three minutes is the fact that displaces a better one],
)

#v(3pt)

== I.2 The Thirty Minutes of the Paper

#table(
  columns: (0.9fr, 1.4fr, 2.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pass],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Time],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you are doing],
  ),
  [First], [0–10 min], [the definition and classification questions: no arithmetic, one mark each, and forty-five seconds a question],
  [Second], [10–24 min], [the calculations you recognise on sight: the ladder, the process, the contribution],
  [Third], [24–28 min], [the two or three long questions that need the rough sheet],
  [Fourth], [28–30 min], [every empty box, filled with the best of the four options],
)

#v(2pt)

#text(size: 9.4pt)[The passes matter more than the minutes. A candidate who works straight through the paper in order spends nine minutes on question 31 and meets question 39 with forty seconds left, and question 39 is a definition worth the same mark. The order of the paper is not the order of difficulty, and the paper does not care in which order you answer it.]

#trap-box("Three questions that eat a paper")[
  + *The process account with two losses and a scrap value.* If the skeleton is not on the page in twenty seconds, leave it and return in the fourth pass.
  + *The cash budget with a lag, a loan and a minimum balance.* It is three questions in one coat.
  + *The incomplete-records question that asks for profit and closing capital.* Two computations, and the second depends on the first being right.
  None of the three is worth more than one mark. That sentence is the whole technique.
]

== I.3 What to Write on the Rough Sheet

#text(size: 9.4pt)[The CBT screen gives you rough paper, and most candidates do not use it. Write five things on it in the first five minutes, before question 1:]

#[
  #set text(size: 9.2pt)
#table(
  columns: (1.6fr, 2.7fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Write],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Because]),
  [*The ladder*], [prime cost → + overhead + opening WIP − closing WIP → + opening FG − closing FG],
  [*The process formula*], [(total cost − scrap of normal loss) ÷ expected output],
  [*The contribution block*], [contribution = price − variable cost; break-even = fixed ÷ contribution; MOS = (budget − break-even) ÷ budget],
  [*The profit formula*], [closing capital + drawings − capital introduced − opening capital],
  [*The dissolution order*], [realisation expenses, outside creditors, partners' loans, partners' capital],
)
]

#v(3pt)

#text(size: 9.4pt)[Five lines, written once, read forty times. A formula you can see is a formula you do not have to remember, and the working memory it frees is spent on the arithmetic, which is where the marks are.]

== I.4 The Five Minutes at the End

#table(
  columns: (1.3fr, 2.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Check],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you are looking for],
  ),
  [No empty box], [an empty box is a certain zero; a considered guess is one in four],
  [The numbering], [one question answered in the wrong box costs two marks, the answer and the one it displaced],
  [The obvious mis-click], [a letter chosen for the question above is the commonest slip on a screen],
  [The units], [a process cost per unit in naira, not thousands; a vote in millions, marked as millions],
  [The direction], [a loss written as a profit, an adverse variance as favourable — the sign is worth as much as the figure],
)

#v(4pt)

#concept-box("The last word")[
  You do not need to answer every question correctly to score well. You need to answer
  the easy ones correctly, guess the hard ones sensibly, and never lose a mark to a
  mis-click or an empty box. Forty questions at 60 per cent, with no unforced errors, is
  a score that clears most cut-offs. Chasing the one question you cannot do, at the cost
  of the four you can, is how a good candidate gets a poor result.
]

#v(4pt)

#shortcut-box("Three sentences to take into the hall")[
  + *Write the format before you write the figures.* Every calculation in this volume has a shape, and the shape is worth more than the arithmetic.
  + *One mark is one mark.* A definition is worth exactly what a process account is worth, and it takes a tenth of the time.
  + *Leave nothing empty.* There is no negative marking, and the paper rewards the considered guess.
]
