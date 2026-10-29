#import "template.typ": *

#current-chapter.update("Appendix T: The Mastery Tracker")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix T: The Mastery Tracker]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX T]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Mastery Tracker]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A page to be written on, not read. Photocopy it, or draw the same four tables in the back of your rough notebook. What is measured improves.
  ]
]

#v(6pt)

== T.1 The Chapter Ledger

Fill a row each time you finish a chapter and its drill. The score is out of $42$; the target is $36$ and above before you move on.

#table(
  columns: (1.5fr, 0.85fr, 0.85fr, 0.85fr, 1.25fr, 1fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drill 1],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drill 2],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mock],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weakest section],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Re-test],
  [1 Limits], [], [], [], [], [],
  [2 Differentiation], [], [], [], [], [],
  [3 Applications], [], [], [], [], [],
  [4 Integration], [], [], [], [], [],
  [5 Area and motion], [], [], [], [], [],
  [6 Representing data], [], [], [], [], [],
  [7 Location], [], [], [], [], [],
  [8 Dispersion], [], [], [], [], [],
  [9 Counting], [], [], [], [], [],
  [10 Probability], [], [], [], [], [],
)

== T.2 The Diagnostic Ledger

Take the twelve-question diagnostic in the front matter once a week. Record the letter pattern you produced and the questions you missed; the pattern diff is your progress.

#table(
  columns: (0.75fr, 1.75fr, 1.5fr, 0.9fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answers given],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions missed],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score],
  [1], [], [], [],
  [2], [], [], [],
  [3], [], [], [],
  [4], [], [], [],
  [5], [], [], [],
  [6], [], [], [],
  [7], [], [], [],
  [8], [], [], [],
)

== T.3 The Error Library

The four errors that cost the most marks should be named here, in your own words, with the repair. Rewrite the page when it fills.

#table(
  columns: (0.4fr, 1.9fr, 1.9fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What I did],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What I will do instead],
  [1], [], [],
  [2], [], [],
  [3], [], [],
  [4], [], [],
  [5], [], [],
  [6], [], [],
)

== T.4 The Twelve-Question Syllabus Map

Every UTME Mathematics paper draws from this list. Tick an item only when you can answer a question on it in under ninety seconds, without notes.

#table(
  columns: (1.9fr, 0.8fr, 0.8fr, 1.3fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Item],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ticked],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[If not ticked],
  [Evaluate a limit by substitution], [1], [], [Examples 1 and 2],
  [Evaluate a limit with a cancellation], [1], [], [Example 3 and the drill],
  [Differentiate a polynomial], [2], [], [Power rule examples],
  [Product, quotient and chain rules], [2], [], [Rules map and drill Q12–Q24],
  [Gradient and equation of tangent], [2, 3], [], [Chapter 3 worked examples],
  [Turning points and their nature], [3], [], [Stationary flow diagram],
  [Indefinite integral of a polynomial], [4], [], [Power rule for integrals],
  [Definite integral and area], [4, 5], [], [Chapter 5 sections 5.1–5.2],
  [Distance from a velocity function], [5], [], [Velocity-distance diagram],
  [Mean, median and mode], [7], [], [Three averages diagram],
  [Grouped mean and median], [7], [], [Grouped median section],
  [Variance and standard deviation], [8], [], [Variance flow diagram],
  [Permutations and combinations], [9], [], [Order test sections 9.3–9.5],
  [Simple and combined probability], [10], [], [Rules of section 10.3–10.5],
)

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix U: The Final Ten Days]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX U]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Final Ten Days]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A revision schedule for the last ten days before the examination, written for a candidate who has already worked through this volume once. Two hours a day; no new material after Day 7.
  ]
]

#v(6pt)

== U.1 The Schedule

#table(
  columns: (0.7fr, 1.9fr, 1.6fr),
  inset: 6.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Day],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Work],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
  [1], [Chapters 1 and 2 drills, timed at 35 minutes each], [Score both; log in T.1],
  [2], [Chapters 3 and 4 drills, timed at 35 minutes each], [Score both; reread every missed solution],
  [3], [Chapter 5 drill, then Appendix D timed drill], [Score both],
  [4], [Chapters 6 and 7 drills], [Score both; write the grouped formulas from memory],
  [5], [Chapter 8 drill, then Appendix E timed drill], [Score both],
  [6], [Chapters 9 and 10 drills], [Score both; say the order test aloud],
  [7], [Mock Examination 1 under exam conditions], [Score out of 40; fill the question map],
  [8], [Mock Examination 2, then mark both mocks together], [Compare the two question maps],
  [9], [Appendix H challenge set; reread the Misconception Clinic], [Score out of 20],
  [10], [The Final Forty in forty minutes; then Appendix N recall sheet], [Score out of 40],
)

== U.2 The Night Before

- Read the four tables in Appendix S, one at a time, and say the correction aloud.
- Redraw the five figures you are least sure of: the sign line, the ogive, the tree, the Venn, the turning-point profile.
- Do not start a new topic. Nothing learned after 9 p.m. survives the night with any reliability.
- Pack the admission letter, the writing materials and the calculator you have been practising with. The calculator matters: a familiar one is worth two minutes of the paper.

== U.3 The Morning Of

+ Arrive early; the CBT centre will not hold the paper for you.
+ Write the three formulas you are least sure of on the rough paper before the clock starts, if the invigilator permits rough paper before the paper opens.
+ Read every question twice. The word *not*, the phrase *without replacement* and the word *hence* all change the answer.
+ Answer every question. There is no negative marking, and an empty cell cannot be marked correct.

== U.4 If The Clock Goes Wrong

Ten minutes left with eight questions unread is not a disaster; it is arithmetic. Shade a letter for all eight immediately, then spend the ten minutes improving the two or three you can actually do. A shaded letter is a chance; an empty cell is a certainty of zero.

#v(8pt)
#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[THE ONE-PAGE SUMMARY OF THIS VOLUME]
  #v(3pt)
  Limits answer *where the function is heading*. Derivatives answer *how fast it changes*. Integrals answer *how much accumulates*. Averages answer *what is typical*. Dispersion answers *how typical it really is*. Counting answers *how many ways*. Probability answers *how likely*. Twelve questions, eight ideas, one paper — and every one of them is a computation you have already done in this book.
]
