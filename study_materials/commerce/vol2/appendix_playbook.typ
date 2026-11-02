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
    What to do with the last twenty-four hours, the first five minutes and the
    thirty minutes in between. None of it is a trick: it is the routine that keeps a
    prepared candidate from losing marks to the clock, the mouse and his own nerves.
  ]
]

#v(5pt)

== I.1 The Last Twenty-Four Hours

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Morning:* Appendix A out loud, both directions. Then Appendix H, the traps only.
  + *Afternoon:* one full paper, timed, marked, and every miss solved. Stop by four o'clock.
  + *Evening:* Appendix E once, slowly — the six tables only. Pack the slip, the pencil and the watch; check the board's instruction on calculators, and assume you may not use one.
  + *Sleep.* A candidate who has done six weeks of drills loses more to a sleepless night than to a missed chapter.
]

#v(4pt)

#trap-box("The night-before reading trap")[
  Reading a new chapter at eleven o'clock at night does not add a mark; it removes
  confidence, because the last thing in your head is the one thing you did not know.
  The night before, read only what you already know, and read it quickly.
]

#v(5pt)

== I.2 The First Five Minutes

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Read the instructions on the screen,* not the ones you remember from a past paper. The number of questions and the time allowed are printed there.
  + *Write the finish time on your rough sheet,* not the time remaining: a clock is easier to compare with a deadline than with a countdown.
  + *Answer the first question.* Starting is worth more than planning: the first correct answer settles the nerves and sets the pace.
  + *Do not plan to come back.* Every question is worth one mark; a question left for later is a mark deferred at the same value as the one you are on.
]

#v(5pt)

== I.3 The Thirty-Minute Clock

#table(
  columns: (0.85fr, 1.1fr, 2.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Clock],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What you should be doing],
  ),
  [*0–8 min*], [1–10], [the money items, answered on sight: functions, qualities, kinds, legal tender.],
  [*8–18 min*], [11–22], [insurance and the aids — the principles on sight, then one average-clause calculation written out.],
  [*18–26 min*], [23–33], [advertising, marketing and research; the segmentation and motive items take ten seconds each.],
  [*26–30 min*], [34–40], [the bodies, management and e-commerce items, then every empty box filled.],
  [*Last 60 s*], [all], [count the answered boxes. An empty box is a certain zero; a guess is a one-in-four chance.],
)

#v(4pt)

#text(size: 9pt)[The blocks are a guide, not a rule. The point of the table is that no question is allowed to consume four minutes: on a paper of forty one-mark questions, four minutes spent on one question is four marks not attempted. If a question has not yielded in ninety seconds, mark it with a dot, choose the most plausible option, and move.]

#v(5pt)

== I.4 The Calculation Routine

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[FOUR LINES, EVERY TIME]
  #v(4pt)
  + *Write the formula.* Even in a multiple-choice paper, the rough sheet earns nothing but saves everything: the formula stops the wrong base.
  + *Substitute the figures with their units.* Naira over naira, percent over percent.
  + *Compute twice,* by a different route if one exists — the multiplier as 1 ÷ r, then the same answer as the sum of a geometric series.
  + *Sanity-check the size of the answer.* A multiplier is always above one; a claim cannot exceed the sum insured; a market share cannot exceed 100 per cent; a credit created can never exceed the total deposits.
]

#v(5pt)

== I.5 Guessing, Properly

#table(
  columns: (1.85fr, 2.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Situation],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The best guess],
  ),
  [Two options are exact opposites], [One of them is nearly always the key — the examiner built the pair deliberately.],
  [One option is much longer and more qualified], [Often the key, because a correct statement needs its conditions.],
  [\"All of the above\" appears and two options are certainly true], [Choose it.],
  [\"None of the above\" appears and one option is certainly true], [Eliminate it and guess among the rest.],
  [A number question, and one option is absurdly large], [Eliminate it; the remaining three are the real choice.],
  [No idea at all], [Pick the letter you have used least. The keys in this volume are balanced, and a real paper usually is too.],
)

#v(5pt)

== I.6 The Sixty Seconds After

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Count the boxes.* Forty questions, forty answers. The commonest silent loss is the last question, unseen because the screen scrolled.
  + *Check the numbering on the rough sheet against the last answer you gave.* A slip of one place converts a good paper into a mediocre score.
  + *Do not change an answer without a reason.* A change made from doubt alone is wrong more often than the first instinct; a change made because you have remembered a fact is right.
  + *Submit, and leave.* The paper is marked the moment it is submitted; the discussion outside the hall has never added a mark to anyone.
]

#v(5pt)

#rule-box("Five sentences to carry into the hall")[
  + Every question is worth one mark, and no question is worth four minutes.
  + The base is the question: total deposits or the original deposit, insured value or the loss.
  + Insurance transfers a risk; it does not remove it, and it never pays a profit.
  + The Fund lends to a country in difficulty; the Bank lends to a project that will repay itself.
  + An empty box is a certain zero; a considered guess is a chance.
]
