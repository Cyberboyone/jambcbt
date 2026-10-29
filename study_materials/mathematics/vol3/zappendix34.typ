#import "template.typ": *

#current-chapter.update("Appendix S: Exam-Day Tactics")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix S: Exam-Day Tactics for Section III]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX S]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Exam-Day Tactics for Section III]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The paper does not test how much you know; it tests how much of what you know you can produce in forty minutes. These are the habits that convert knowledge into marks.
  ]
]

#v(6pt)

== S.1 The Night Before

+ Re-read the ten-line recall sheet in Appendix N.11. Nothing else.
+ Write out the special-angle table once, from the two triangles, without looking. If you can rebuild it, you cannot be ambushed.
+ Pack: JAMB profile slip, writing materials, and a clear head about the calculator rule. The CBT calculator is *four-function*.
+ Sleep. A tired candidate loses more marks to arithmetic slips than to unfamiliar questions.

== S.2 The First Ninety Seconds

When the paper loads, do not start at question 1. Instead:

+ Scan the question numbers and note where the geometry block sits.
+ Write your five anchor facts on the rough sheet: $pi = 22/7$; $1$ litre $= 1000$ cm³; angle at centre $= 2 times$ angle at circumference; the sine rule; the cosine rule.
+ Start with the questions in the block you have just finished revising — usually the topic you did yesterday. Confidence compounds.

== S.3 The Forty-Minute Plan

#table(
  columns: (0.9fr, 1.1fr, 2fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Minutes],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Phase],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What you do],

  [$0$–$2$], [Settle], [Anchor facts on rough paper; scan the block],
  [$2$–$22$], [First pass], [Answer every question you recognise immediately; flag the rest],
  [$22$–$34$], [Second pass], [Return to flagged questions; draw a diagram for each],
  [$34$–$38$], [Guess pass], [Fill every blank — there is no negative marking],
  [$38$–$40$], [Check], [Re-read the flagged answers for unit and sign errors],
)

*Why the first pass matters.* Twenty questions answered with certainty in twenty minutes leaves twenty minutes for the twenty that need thought. Candidates who grind from question 1 forwards run out of time on the questions they could have solved.

== S.4 Diagram Discipline

Every geometry question in the paper rewards the same three actions, in this order:

+ *Draw it.* Even a sketch on rough paper prevents the "two North arrows missing" error that ruins bearings.
+ *Label it.* Put the given lengths and angles on the sketch with their units. Then mark what is asked with a question mark.
+ *Choose the rule from the labelled sketch*, not from the words of the question.

A candidate who draws 30 diagrams in forty minutes will beat a candidate who draws none, even with the same knowledge.

== S.5 Calculator Discipline

+ The calculator computes $sin 30^degree$ only if your model has the function — the CBT one does not. Use $1/2$ from memory.
+ Type the whole expression in one line where possible: $1/2 times 8 times 5 times 0.5$ gives $10$ directly, and avoids a rounding error between steps.
+ When a result should be a whole number and the display shows $9.999$, you have rounded mid-calculation. Recompute without rounding.

== S.6 The Guess Strategy

There is no negative marking, so a blank is always a zero. When you cannot finish a question:

+ Eliminate any option that is physically impossible — a negative length, an angle above $180^degree$ in a triangle, an area larger than the square that contains it.
+ From the remaining options, choose the one closest to a rough estimate. For a triangle with sides $7$ and $9$ and an included angle of $60^degree$, the third side must lie between $2$ and $16$; that usually removes two options.
+ Mark your guess on the rough sheet as well as the screen, so a misclick is detectable afterwards.

== S.7 The Five-Second Self-Check

Before you leave any geometry question, ask:

+ Are the units right? (cm against m, litres against cm³)
+ Is the angle in degrees? (a calculator in radian mode is a silent killer)
+ Does the size make sense? (a circumference of $2$ cm for a circle of radius $7$ cm is wrong by an order of magnitude)
+ Did I answer the question asked? (many questions ask for the *bearing*, not the angle)

== S.8 After the Paper

Do not re-solve questions with friends in the corridor. Instead:

+ Write down any question you could not start — that is your revision list for the next paper.
+ Record the score in the mastery tracker (Appendix U).
+ Give yourself 48 hours before you return to the same topic. Short, spaced returns beat long, tired ones.

#trap-box("The one mistake that costs the most")[
  Leaving blanks. With no negative marking, forty attempted answers dominate thirty-five answered and five blank, even if the five blanks would all have been right.
]

== S.9 The Ten-Minute Final Checklist

Tick each line in the ten minutes before the hall opens. A line you cannot tick is a line you can still fix.

#table(
  columns: (0.4fr, 2.6fr, 1fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Item],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Tick],

  [1], [I can write the angle-at-centre theorem without looking.], [],
  [2], [I can rebuild $sin 30^degree$, $cos 45^degree$ and $tan 60^degree$ from the two triangles.], [],
  [3], [I know $1$ litre $= 1000$ cm³ and $1$ m² $= 10 thin 000$ cm².], [],
  [4], [I can write the sine rule and the cosine rule from memory.], [],
  [5], [I know the area formula and that the angle must be included.], [],
  [6], [I know the back-bearing rule and its range correction.], [],
  [7], [I know that depression equals elevation.], [],
  [8], [I know $15^degree$ of longitude $= 1$ hour.], [],
  [9], [I have rough paper and two working pens.], [],
  [10], [I know there is no negative marking, so no blank answers.], [],
)

#v(6pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-border, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[If you can tick nine of the ten]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.4pt)[You are ready for the geometry block. Spend the last five minutes on arithmetic warm-ups — three multiplications and one division — rather than on new content. The first question you meet should feel like a warm-up, not a cold start.]
]

#current-chapter.update("Appendix T: The Misconception Clinic")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix T: The Misconception Clinic]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX T]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Misconception Clinic]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Twenty-five wrong beliefs that survive in candidates who "know the topic". Read the left column and decide whether you have ever thought it. If you have, the correction on the right is worth more than another past paper.
  ]
]

#v(6pt)

== T.1 Angles and Polygons

#table(
  columns: (1.55fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The wrong belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],

  [A polygon with $n$ sides has interior sum $n times 180^degree$.], [It is $(n - 2) times 180^degree$. The triangle case, $180^degree$, fixes the formula.],
  [Exterior angles of any polygon add to $360^degree times n$.], [They add to $360^degree$ — one full turn, regardless of $n$.],
  [Co-interior angles are equal.], [They add to $180^degree$. Only alternate and corresponding angles are equal.],
  [A regular polygon can have an exterior angle of $17^degree$.], [It cannot: $360 slash 17$ is not a whole number, so no such polygon exists.],
  [Angles at a point add to $180^degree$.], [They add to $360^degree$. The $180^degree$ rule is for a straight line.],
)

== T.2 Triangles and Similarity

#table(
  columns: (1.55fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The wrong belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],

  [AAA is a congruence test.], [It is a *similarity* test. Congruence needs a side: SSS, SAS, ASA, RHS.],
  [If two triangles are similar with length ratio $2 : 1$, their areas are in ratio $2 : 1$.], [Areas are in ratio $4 : 1$ — the square of the length ratio.],
  [The exterior angle equals the adjacent interior angle.], [It equals the *sum of the two opposite* interior angles.],
  [Any three lengths form a triangle.], [They must satisfy the triangle inequality: the two shorter sides must sum to more than the longest.],
  [Doubling every side of a solid doubles its volume.], [Volume scales by the cube of the length ratio, so it grows eightfold.],
)

== T.3 Circles

#table(
  columns: (1.55fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The wrong belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],

  [The angle at the centre equals the angle at the circumference.], [It is twice as large — provided both stand on the same arc.],
  [Opposite angles of a cyclic quadrilateral are equal.], [They are supplementary: they add to $180^degree$.],
  [A tangent cuts the circle in two places.], [A tangent touches at exactly one point; a line cutting twice is a secant.],
  [The tangent–chord angle equals the angle in the same segment.], [It equals the angle in the *alternate* segment.],
  [A chord is bisected by the radius.], [Only by the radius (or diameter) *perpendicular* to it.],
)

== T.4 Mensuration

#table(
  columns: (1.55fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The wrong belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],

  [$1$ m² $= 100$ cm².], [$1$ m² $= 10 thin 000$ cm². The conversion is squared.],
  [The volume of a cone is $pi r^2 h$.], [It is one third of that: $1/3 pi r^2 h$.],
  [The surface area of a sphere is $2 pi r^2$.], [It is $4 pi r^2$. A hemisphere adds a flat circle, giving $3 pi r^2$.],
  [Slant height of a cone equals its vertical height.], [They differ: $l = sqrt(r^2 + h^2)$. Using $h$ for $l$ inflates the curved area.],
  [A frustum's radius is the average of the two radii.], [The volume is $1/3 pi h (R^2 + R r + r^2)$; averaging radii gives the wrong answer.],
)

== T.5 Coordinate Geometry, Trigonometry and Bearings

#table(
  columns: (1.55fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The wrong belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],

  [Perpendicular gradients are negatives of each other.], [They are negative *reciprocals*: $m_1 m_2 = -1$.],
  [The circle $x^2 + y^2 = 25$ has radius $25$.], [It has radius $5$; $r^2 = 25$.],
  [$sin 150^degree$ is negative because the angle is obtuse.], [Sine is positive in the second quadrant: $sin 150^degree = 1/2$.],
  [The graph of $y = 3 sin x$ has period $3 times 360^degree$.], [The coefficient sets the amplitude, not the period. Period is still $360^degree$.],
  [$tan theta = 2$ has one solution in $0^degree$ to $360^degree$.], [It has two: $63.4^degree$ and $243.4^degree$.],
  [A bearing of $-40^degree$ is invalid.], [Bearings are $000$ to $359$: $-40^degree$ is written $320^degree$.],
  [The angle of depression is measured from the vertical.], [It is measured from the horizontal — always.],
  [The sine rule works with two sides and the included angle.], [It does not. Use the cosine rule; the sine rule needs a side with its facing angle.],
)

#shortcut-box("How to use this appendix")[
  Do not read it once. Photocopy the five tables, cut the right-hand column off one copy, and complete it from memory a week later. The beliefs you cannot correct are the questions you will miss.
]

== T.6 Self-Audit Scorecard

Score yourself honestly, one line per belief: $0$ if you have ever thought it, $1$ if you caught yourself and corrected it, $2$ if it has never crossed your mind. Anything at $0$ is a predicted error in the examination.

#table(
  columns: (0.6fr, 2.4fr, 0.5fr, 0.5fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The belief I am auditing],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Now],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In 2 weeks],

  [Polygons], [Interior sum is $n times 180^degree$.], [], [],
  [Polygons], [Co-interior angles are equal.], [], [],
  [Triangles], [AAA is a congruence test.], [], [],
  [Triangles], [Area ratio equals length ratio.], [], [],
  [Circles], [Angle at the centre equals the angle at the circumference.], [], [],
  [Circles], [Tangent–chord angle equals the angle in the same segment.], [], [],
  [Mensuration], [$1$ m² $= 100$ cm².], [], [],
  [Mensuration], [Cone volume is $pi r^2 h$.], [], [],
  [Solids], [Slant height equals vertical height.], [], [],
  [Coordinates], [Perpendicular gradients are just negated.], [], [],
  [Trigonometry], [$sin 150^degree$ is negative.], [], [],
  [Bearings], [Depression is measured from the vertical.], [], [],
  [Bearings], [The sine rule works on two sides and the included angle.], [], [],
)

*Total out of 26.* Below $20$ means the clinic has not yet done its work; re-read only the rows you scored $0$ on, then re-sit Appendix I.

#current-chapter.update("Appendix U: Mastery Tracker")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix U: The Mastery Tracker]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX U]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Mastery Tracker]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Ten chapters, eleven papers, one page. A score you never write down is a score you never improve; record every attempt, and let the blanks tell you what to revise.
  ]
]

#v(6pt)

== U.1 Chapter Mastery

Score each drill out of the number available, and the two-minute set out of 4. Anything under 80 percent goes on the revision list.

#table(
  columns: (1.15fr, 0.55fr, 0.6fr, 0.6fr, 0.75fr, 1fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drill],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Set /4],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What to re-read],

  [1. Angles and Polygons], [$45$], [], [], [], [],
  [2. Triangles and Similarity], [$42$], [], [], [], [],
  [3. Circle Theorems], [$42$], [], [], [], [],
  [4. Constructions and Loci], [$40$], [], [], [], [],
  [5. Plane Mensuration], [$42$], [], [], [], [],
  [6. Mensuration of Solids], [$42$], [], [], [], [],
  [7. Longitude and Latitude], [$42$], [], [], [], [],
  [8. Coordinate Geometry], [$42$], [], [], [], [],
  [9. Trigonometric Ratios], [$42$], [], [], [], [],
  [10. Bearings and Triangles], [$42$], [], [], [], [],
)

== U.2 Paper Record

#table(
  columns: (1.5fr, 0.7fr, 0.7fr, 0.7fr, 1.2fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Items],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic to revisit],

  [Appendix D — Foundations], [$30$], [], [], [],
  [Appendix E — Mensuration], [$25$], [], [], [],
  [Appendix F — Trigonometry], [$20$], [], [], [],
  [Appendix H — Challenge Set], [$20$], [], [], [],
  [Appendix I — Mixed Revision], [$20$], [], [], [],
  [Appendix J — Speed Set], [$15$], [], [], [],
  [Appendix K — Rapid-Fire], [$100$], [], [], [],
  [Appendix L — Final Forty], [$40$], [], [], [],
  [Appendix M — Master Bank], [$120$], [], [], [],
  [Mock 1], [$40$], [], [], [],
  [Mock 2], [$40$], [], [], [],
)

== U.3 The Four-Week Cycle

+ *Week one.* Chapters 1–5, one drill a day. Score, record, re-read the solution of every miss.
+ *Week two.* Chapters 6–10, one drill a day. Same discipline.
+ *Week three.* Appendices D, E, F, H and I, one paper a day, all timed.
+ *Week four.* Mock 1, then two days of revision on the lowest scoring chapter, then Mock 2, then the Final Forty.

*The rule that makes the tracker work.* Every entry below 80 percent creates a revision task within 48 hours. A tracker without that rule is a diary, not a study plan.

#concept-box("What a good trajectory looks like")[
  Drill scores climb from the sixties to the high eighties across four weeks. Paper scores climb more slowly, because papers mix topics and punish weakness in any one of them. A candidate whose drill scores are 90 percent and whose paper scores are 70 percent does not have a knowledge problem — they have a time or a reading problem, and Appendix S is the fix.
]

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[The last word]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.6pt)[
    Geometry rewards the candidate who draws. Every theorem in this volume was discovered from a picture, and every one of them can be recovered from a picture. When a question looks unfamiliar, draw it large, label everything you are given, and the figure will tell you which of the ten families it belongs to. That is the whole method.
  ]
]
