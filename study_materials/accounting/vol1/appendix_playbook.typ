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
    What to do in the last twenty-four hours, the first five minutes, the thirty minutes of
    the paper and the sixty seconds after it. Nothing here is new knowledge; all of it is
    the difference between knowing a subject and scoring in it.
  ]
]

#v(5pt)

== I.1 The Last Twenty-Four Hours

+ *Morning:* Appendix A out loud, both directions. Then Appendix H, the traps only.
+ *Afternoon:* one timed paper you have already sat. You are not looking for a score; you are looking for the two sections where the clock ran out.
+ *Evening:* Appendix E once, slowly. Pack the slip, the pencil, the ruler and the eraser — and check the board's instruction on calculators, then assume you may not use one.
+ *Night:* sleep. A candidate who has slept remembers a format he learned a month ago; a candidate who has not slept mistakes a debit for a credit at question nine.

#v(4pt)

#trap-box("The night-before trap")[
  Reading a new chapter the night before the paper is worse than doing nothing. It
  displaces what is already learned, it produces the feeling of work without the fact of
  it, and it costs the sleep that consolidates both. The night before, the only useful
  activity is recall of what is already there.
]

#v(4pt)

== I.2 The First Five Minutes

+ *Read the instruction line twice.* Forty questions, thirty minutes, one mark each. Confirm there is no negative marking before you decide how to guess.
+ *Write the five books of original entry and DEAD CLIC in the margin.* Thirty seconds of writing makes the whole paper cheaper: every classification question can then be answered by looking at the margin rather than by remembering.
+ *Scan for the account questions.* Circle the numbers that ask you to prepare or complete an account. They take the longest, and they should be attempted in the second pass, not the first.
+ *Do not start with question one out of habit.* Start with the section you know best — the marks are equal wherever they sit.

#v(4pt)

== I.3 The Thirty-Minute Clock

#table(
  columns: (0.9fr, 1.55fr, 2.3fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Minute],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where you should be],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What you should be doing],
  ),
  [*0–2*], [question 1], [the definitions and concepts, answered on sight],
  [*2–10*], [about question 14], [the document and book questions; no writing, only recognition],
  [*10–20*], [about question 28], [the control accounts and the first half of the final-account block],
  [*20–27*], [question 40], [the errors, partnership and company items, then the answer sheet],
  [*27–30*], [the answer sheet], [transcribe, count the boxes, and fill every empty box],
)

#v(4pt)

#text(size: 9pt)[The clock is a budget, not a prophecy. If a control-account question has taken ninety seconds and the balance is not in sight, mark it, answer a definition, and come back: the second look is often faster because the sub-totals are already on the page.]

#v(4pt)

== I.4 The Calculation Routine

#text(size: 9pt)[Every calculation in this paper yields to the same five lines. Write them in the margin of the question paper before touching the options.]

#table(
  columns: (0.6fr, 1.7fr, 2.45fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Line],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Write],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Why],
  ),
  [*1*], [the format], [cost of sales, the equation, the appropriation: the shape tells you which figures you need],
  [*2*], [the figures against the lines], [a number without a label is the commonest cause of a wrong answer that looks right],
  [*3*], [the arithmetic, twice], [once down, once across; a difference of one digit is worth one mark],
  [*4*], [the check], [does the balance sheet balance, does the ratio look sane, is the profit smaller than the gross profit],
  [*5*], [the option], [match your figure, not the nearest figure: the distractors are built from the commonest mistakes],
)

#v(4pt)

#shortcut-box("The three distractors are predictable")[
  In a calculation question the wrong options are usually (i) the figure you get if you
  use the wrong base, (ii) the figure you get if you forget one item, and (iii) the figure
  you get if you reverse the subtraction. If your answer matches one of them exactly, check
  the base before you choose it.
]

#v(4pt)

== I.5 Guessing, Properly

+ *Never leave a box empty.* There is no negative marking; an empty box is a certain zero.
+ *Eliminate first.* Two options can nearly always be removed on a definition, a direction or a sign. A one-in-two guess is worth twice a one-in-four.
+ *Prefer the option that is internally consistent.* An option that contradicts a rule you know — a debit described as increasing capital, a provision called a liability — is wrong however plausible it sounds.
+ *Do not change an answer without a reason.* The first reading is right more often than the second, unless the second is prompted by a specific fact you have just recalled.

#v(4pt)

== I.6 The Sixty Seconds After

+ *Count the answer sheet.* Forty boxes, no blanks, no doubled letters. A sheet that is one place out of step loses marks on every question after the slip.
+ *Check the four calculations you were least sure of* — not all forty, and not the ones you found easy.
+ *Write down the two question numbers you guessed.* They are the first entries in the wrong-answer log when you get home.

#v(5pt)

#concept-box("The last thing to remember")[
  Accounting is the one paper in the examination where the answer can be *checked*: the
  balance sheet balances or it does not, the control account agrees with the ledger or it
  does not, the profit is smaller than the gross profit or it is not. A candidate who
  writes the format, fills the lines and checks the total is not relying on memory in the
  last minute. He is relying on the arithmetic, and the arithmetic does not forget.
]
