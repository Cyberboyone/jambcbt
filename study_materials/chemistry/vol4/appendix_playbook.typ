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
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The paper does not test only chemistry. It tests whether you can read forty questions in forty minutes without losing the ones you know. This is the routine for the hall.]
]

#v(4pt)

== K.1 The Clock

The CBT paper is timed by the engine, not by you, and the chemistry section is a fixed number of questions in a fixed number of minutes. Work to roughly one minute a question and bank the surplus.

#table(
  columns: (1.2fr, 1.2fr, 1.9fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Time],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you are doing],
  ),
  [first pass], [about 60 % of the time], [answer everything you recognise at once; flag the rest and move on],
  [second pass], [about 30 %], [return to the flagged questions, one at a time, and eliminate two options before choosing],
  [last pass], [about 10 %], [check that every question has an answer; never leave a blank],
)

#trap-box("A blank is a guaranteed zero; a guess is not")[
  There is no penalty for a wrong answer in the UTME. Every question left blank is a mark thrown away. If the clock is running out, fill every remaining space — and fill it with the option you have eliminated least, not at random.
]

== K.2 The Instruction Words

Half the marks lost in a chemistry paper are lost to the instruction, not to the chemistry.

#table(
  columns: (1.15fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Word],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner wants],
  ),
  [state], [one fact, no explanation — a name, a colour or a formula],
  [describe], [what you would see or do, in order, without the reason],
  [explain], [the reason, with a because or a therefore in it],
  [name], [a single word — the chemical name, not the formula],
  [write an equation], [formulae and balancing, with the state symbols if asked],
  [calculate], [the working shown, the unit attached, and the answer to the right number of figures],
  [deduce], [a conclusion drawn from the data given, not from memory],
  [suggest], [a reasonable answer that is not in the book, but is consistent with it],
  [compare], [both substances, and the difference between them],
)

== K.3 The Five Habits that Save Marks

+ *Read the stem twice and the options once.* The stem carries the condition — *concentrated*, *hot*, *in the dark*, *excess* — and the condition is usually the whole question.
+ *Cover the options and answer it yourself first.* Then look. An option that resembles your answer is not necessarily the right one, and a familiar phrase is a favourite distractor.
+ *Eliminate in pairs.* Two options are usually obviously wrong; the mark is decided between the other two.
+ *Write the equation before the calculation.* Every mole calculation in this volume begins with a balanced equation, and most wrong answers come from an unbalanced one.
+ *Estimate before you compute.* If 30 g of acid gives about 44 g of ester, an answer of 4.4 g is a slip, not a result.

#concept-box("The four numbers to check every time")[
  *Moles:* did you divide by 1000 for cm³? *Molar mass:* did you use the hydrated formula or the anhydrous one? *Ratio:* did you read the coefficients from the balanced equation? *Units:* is the answer in g, g dm⁻³, mol dm⁻³ or dm³? Those four checks catch most of the arithmetic marks lost in a chemistry paper.
]

== K.4 The Last Ten Minutes

#table(
  columns: (0.5fr, 2.7fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Check],
  ),
  [1], [every question has an answer — count the blanks, and there should be none],
  [2], [any question that mentioned *concentrated*, *hot*, *dilute* or *in the dark* is answered for that condition],
  [3], [every calculation has a unit, and the unit matches what was asked],
  [4], [no answer contradicts another — a compound cannot be both an alkene and an alkane],
  [5], [the options you changed at the last moment: change back if the first instinct was reasoned],
)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[The night before]
  #v(3pt)
  #set text(size: 9.7pt)
  Read the glossary in Appendix F and the formulae table in D.2, and nothing else. Do not attempt a new topic, and do not attempt a full mock — a low score on the eve of the paper costs confidence and buys nothing. Sleep is worth more than a ninth hour of revision, and it is the only revision that improves every other hour.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[One page, in the hall]
  #v(3pt)
  #set text(size: 9.7pt)
  Organic chemistry is a map, not a list. Ask what functional group the starting material carries and what the product carries; the difference is the reaction, and the reagent with its condition is the answer. Alkanes burn and are chlorinated. Alkenes add. Alcohols oxidise, dehydrate and esterify. Acids fizz with a carbonate. Esters smell sweet and hydrolyse back. Fats are esters of glycerol, and soap is their alkaline hydrolysis. Polymers are either an opened double bond or a joined pair with water lost. Sugars, starches and proteins are all condensation polymers, and hydrolysis takes them all back. That is the volume, and it fits on this page.
]

#v(6pt)

#block(width: 100%, fill: jamb-navy, stroke: 1.2pt + jamb-bright, radius: 9pt, inset: 14pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: rgb("#A7F3D0"))[THE END OF THE SERIES]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 13.5pt, weight: "bold", fill: white)[Four volumes, one syllabus, and one paper at the end of it]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 9.4pt, fill: rgb("#CBD5E1"))[
    Volume 1 gave you the mole, the atom and the bond. Volume 2 gave you the energy, the rate, the equilibrium and the electron. Volume 3 gave you the elements and the industries they build. This volume gave you the carbon compounds, the reactions that interconvert them, and the bench skills the practical paper tests. Nothing in the four volumes is optional, and nothing in them is enough on its own: the examination mixes them in a single forty-question paper, and the candidate who can move from a mole calculation to a functional group in the same minute is the one the paper is written for.
  ]
]

#v(4pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[The last four things to do before you close this book]
  #v(3pt)
  #set text(size: 9.7pt)
  + Sit Mock Examination 2 under the clock, with no notes and no phone.
  + Re-read Appendix J and write down, in your own words, the trap you have fallen into most often.
  + Work the 120-question bank in blocks of twenty, one block a day, until every block is above sixteen.
  + Read Appendix F the night before the paper, and sleep.
]

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-muted)[NOTES — the last questions you got wrong, and the page that answers them]
  #v(2pt)
  #for _ in range(7) [
    #v(9pt)
    #line(length: 100%, stroke: 0.5pt + jamb-border)
  ]
]
