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
    What to do in the last twenty-four hours, in the first five minutes, across the
    thirty minutes of the paper and in the sixty seconds after it. Technique is worth
    marks that knowledge alone does not earn.
  ]
]

#v(5pt)

== K.1 The Last Twenty-Four Hours

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Read four pages, not four chapters.* Appendices D, F and J are written for this evening; a new topic on the last night buys nothing and costs sleep.
  + *Reread the wrong-answer log.* It is the only revision written in your own words, and it is the one that fits in twenty minutes.
  + *Do ten easy questions.* Ten correct answers in fifteen minutes rebuild the speed and confidence that a hard paper erodes.
  + *Set out your materials the night before:* admission slip, pencil, pen, calculator if permitted, water, and the route to the centre.
  + *Sleep.* A candidate who has slept remembers more of what was revised than one who has revised twice as much and slept half as long.
]

#v(5pt)

== K.2 The First Five Minutes

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Write the four formulas at the top of the rough sheet:* PED, MC, break-even and MR = MC. They are the arithmetic the paper will ask for.
  + *Scan the paper for the two or three questions you can answer instantly.* Answering them first converts nervous energy into marks.
  + *Check the number of questions and the time.* Forty questions in thirty minutes is forty-five seconds each, and no question is worth two minutes.
  + *Breathe out once, slowly, before the first question.* The first ten seconds set the pace for the first ten questions.
]

#v(5pt)

== K.3 The Thirty-Minute Clock

#table(
  columns: (0.85fr, 0.95fr, 2.9fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Clock],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you are doing],
  ),
  [0–10 min], [1–15], [First pass at full speed. Answer what is recognised in ten seconds; flag everything else and move on.],
  [10–18 min], [16–28], [Second pass. The flagged questions, worked in order of the ones you nearly know.],
  [18–25 min], [29–38], [Third pass. The calculation questions, formula written before the numbers are substituted.],
  [25–29 min], [39–40], [The two data questions, then a check that every box is shaded.],
  [29–30 min], [—], [One sweep of the answer sheet: number, shading and letter. Nothing else.],
)

#v(5pt)

#trap-box("Four ways candidates lose the paper in the last five minutes")[
  + *Changing answers without a reason.* A first answer drawn from knowledge beats a second drawn from panic. Change only when you can name the error.
  + *Leaving a blank to return to.* There is no negative marking; shade something, then return if time allows.
  + *Mis-shading the sheet.* One question out of step costs every mark after it. Check the numbering at question 20 and again at 35.
  + *Spending three minutes on one calculation.* Nothing on the paper is worth 180 seconds. Flag it, finish the paper, and come back.
]



== K.4 The Calculation Routine

Every calculation question yields to the same five moves, and the five moves take under a minute once they are habitual.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE FIVE MOVES]
  #v(4pt)
  + *Name what is asked.* Elasticity, cost, revenue, profit, output or price — each has one formula.
  + *Write the formula* before touching the numbers. Half the marks in a calculation are for the formula.
  + *Substitute in the units given,* and convert percentages or thousands at once, not at the end.
  + *Compute twice,* by a different route: revenue minus cost, or the shortcut version of the same division.
  + *Check the direction.* A price rise cannot raise quantity demanded; a monopolist cannot produce more than the competitive output.
]

#v(4pt)

#text(size: 9.6pt)[If the answer is not among the options, the error is arithmetic, not theoretical. Recompute before you change your theory — and if the arithmetic still fails, choose the option nearest your result, because the examiner's distractors are built at the errors a candidate is likely to make, not at random.]

#v(5pt)

== K.5 Guessing, Properly

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Never leave a blank.* Four options, no penalty, so a blind guess is worth a quarter of a mark on average.
  + *Guess after eliminating.* Two options removed doubles the value of the guess, and elimination is usually possible from the direction alone.
  + *Prefer the option that matches the direction of the change* you worked out, even if the number is uncertain. Direction is easier to be right about than arithmetic.
  + *Distrust the longest option.* It is sometimes right and sometimes a distractor; length is not evidence. Distrust *“all of the above”* unless you have checked every part.
]

#v(5pt)

== K.6 The Sixty Seconds After

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Write down the four questions you were unsure of,* with the option you chose. Memory fades within the hour, and the list is the first thing to study for the next paper.
  + *Do not compare answers in the corridor.* A disagreement there changes nothing and unsettles everything before the next paper.
  + *Mark the paper later, cold.* A paper marked in the corridor is marked by mood; one marked in the evening is marked by the key.
]

#v(5pt)

#concept-box("The one sentence to carry into the hall")[
  The Economics paper does not reward the candidate who has read the most; it rewards the candidate who can say *which curve moved, which way, and by how much* — and that is a technique, trained by drills, not a talent.
]

#v(6pt)

#shortcut-box("Last look — ten facts, in ten lines")[
  + Opportunity cost is the *next best* alternative, not the money spent.
  + A change in the good's own price *moves along* the curve; a determinant *shifts* it.
  + A ceiling below equilibrium gives a shortage; a floor above it gives a surplus.
  + PED above 1 is elastic, and a price cut then *raises* revenue.
  + Negative income elasticity is inferior; negative cross elasticity is complements.
  + MC cuts AC at AC's *minimum*.
  + Profit is maximised where MR = MC, not where price is highest.
  + Shut down below minimum AVC; break even at minimum AC.
  + A monopolist produces where MR = MC and charges the price on the demand curve.
  + Forty questions, thirty minutes, no negative marking — never leave a box empty.
]
