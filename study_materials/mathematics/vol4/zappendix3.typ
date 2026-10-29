#import "template.typ": *

#current-chapter.update("Appendix R: Exam-Day Tactics for Sections IV and V")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix R: Exam-Day Tactics for Sections IV and V]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX R]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Exam-Day Tactics for Sections IV and V]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Twelve questions on calculus and statistics arrive in every UTME Mathematics paper. This appendix is how to collect all twelve in the time allowed, on a four-function calculator, without writing more than four lines for any one of them.
  ]
]

#v(6pt)

== R.1 What Twelve Questions Cost

The Mathematics paper gives roughly fifty-two seconds per question on average. Calculus and statistics questions are the most variable in the paper: a limit can be a ten-second substitution, an area between two curves can be a three-minute sketch plus two integrals.

#table(
  columns: (1.5fr, 1fr, 1fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question type],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Target],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Hard stop],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[If it overruns],
  [Limit by substitution], [20 s], [40 s], [The algebra is wrong; substitute again],
  [Limit with a cancellation], [40 s], [70 s], [Factorise by inspection or move on],
  [Differentiate using a rule], [35 s], [60 s], [Check the power dropped by one],
  [Gradient at a point], [30 s], [50 s], [You have used the wrong $x$],
  [Turning point], [60 s], [90 s], [Set $f' = 0$ and solve; the rest is optional],
  [Indefinite integral], [30 s], [50 s], [Raise the power, divide, add $c$],
  [Definite integral], [50 s], [80 s], [Sign slip in the subtraction],
  [Area under a curve], [70 s], [100 s], [Sketch; you may have lost the split],
  [Mean or median of a list], [40 s], [60 s], [Order the list first],
  [Grouped mean or median], [70 s], [100 s], [Midpoints, or cumulative frequency],
  [Variance or standard deviation], [70 s], [100 s], [Divide by $n$, not by $n - 1$],
  [Permutation or combination], [35 s], [60 s], [Ask whether order matters],
  [Probability], [40 s], [70 s], [Check the answer is below $1$],
)

The column that matters is the third. A hard stop is not a suggestion: when the clock reaches it, the question is costing you two easier questions elsewhere.

== R.2 The Three-Pass Method

#concept-box("Three passes, one paper")[
  *Pass one — the harvest.* Answer every question you recognise in under forty seconds. Do not read the rest properly; just classify. Most candidates collect eight or nine of the twelve in this pass.

  #v(3pt)
  *Pass two — the working questions.* Return to the flagged ones. This is where the limit cancellations, the gradients and the probability trees live. Two minutes each, maximum.

  #v(3pt)
  *Pass three — the sweep.* Every remaining question gets a shaded letter. There is no negative marking: an empty cell is worth exactly zero, and a guess is worth one quarter of a mark on average.
]

== R.3 Order of Attack

Within the twelve, take them in this order.

+ Substitution limits.
+ Differentiate-with-a-rule questions.
+ Permutations, combinations and single-event probability.
+ Mean, median and mode of ungrouped data.
+ Definite integrals of polynomials.
+ Gradient and tangent questions.
+ Turning points.
+ Grouped statistics.
+ Areas between curves and motion.
+ Two-stage probability without replacement.

The order is not about difficulty; it is about *certainty*. Secure answers early buy the confidence and the clock space for the two or three questions that genuinely need thought.

== R.4 The Calculator, Used Properly

The CBT calculator is four-function: no brackets beyond memory, no powers, no roots, no trigonometry. That changes what you write down.

- Compute squares and cubes by repeated multiplication, or take them from the table in Appendix P.
- Do not clear the display between steps of a division; write the quotient down.
- Use the memory key for a repeated denominator — the total frequency in a grouped mean, for example.
- Never trust a decimal you did not write down. The calculator forgets; your rough paper does not.

== R.5 Four-Line Discipline

Every worked solution in this book is short on purpose. The exam rewards the answer, not the essay, and long working multiplies the chances of a slip.

#formula-box("The four-line template")[
  *Line 1* — the statement of the method, in symbols: $dif y / dif x = ...$, $integral_a^b ... dif x$, $P = ...$.

  #v(2pt)
  *Line 2* — the substitution of the numbers.

  #v(2pt)
  *Line 3* — the arithmetic, kept exact where the options are exact.

  #v(2pt)
  *Line 4* — the answer with its unit, and nothing else.
]

== R.6 The Flag-and-Forget Rule

A flagged question must leave your mind completely. The commonest way to lose marks in this section is not a hard question; it is a hard question that keeps running in the background and corrupts the arithmetic of the next three easy ones.

When you flag, write the letter you would guess *now* in the margin, then move. If time remains at the end you will replace it; if not, you already have an answer.

== R.7 What To Do in the Last Five Minutes

- Confirm every cell in the answer sheet is filled.
- Check that no answer to a probability question is above $1$, no area is negative, no standard deviation is negative.
- Re-read the three questions you flagged and never returned to.
- Do not change an answer unless you can name the specific error. Hunches lose more marks than they win.

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix S: The Misconception Clinic]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX S]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Misconception Clinic]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Thirty statements that sound right and are not. Each one has cost real candidates real marks. Read the left column, cover the right, and see whether you believe it.
  ]
]

#v(6pt)

== S.1 Limits and Continuity

#table(
  columns: (1.7fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],
  [$0/0$ means the limit does not exist], [$0/0$ is a signal to factorise and cancel; the limit usually exists],
  [A limit exists if the graph looks continuous], [Both one-sided limits must be equal to each other, not just close],
  [If $f(a)$ is undefined, the limit is undefined], [The limit describes the approach, not the value at the point],
  [Cancelling changes the value of the limit], [Cancelling is valid everywhere except at the point itself, which the limit ignores],
  [A limit of infinity means the limit does not exist in any sense], [It does not exist as a number; writing $infinity$ is the accepted description],
)

== S.2 Differentiation

#table(
  columns: (1.7fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],
  [The derivative of a constant is the constant], [The derivative of any constant is $0$],
  [$(u v)' = u' v'$], [$(u v)' = u' v + u v'$ — the product rule has two terms],
  [$(u/v)' = u'/v'$], [The quotient rule is $(u' v - u v')/v^2$],
  [The chain rule multiplies by the outer derivative only], [It multiplies by the derivative of the inside as well],
  [A zero derivative means a maximum], [It means a stationary point: the second derivative decides which kind],
  [The gradient of the normal equals the gradient of the tangent], [They multiply to $-1$; the normal gradient is the negative reciprocal],
)

== S.3 Integration and Area

#table(
  columns: (1.7fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],
  [The integral of $x^3$ is $x^4/3$], [Divide by the *new* power: $x^4/4$],
  [$+ c$ is optional], [Without $+ c$ an indefinite integral is incomplete],
  [A negative definite integral is an error], [It means the region lies below the axis; the area is its magnitude],
  [Area equals the definite integral over any interval], [Only where the curve stays above the axis; otherwise split],
  [Integration and differentiation are unrelated operations], [Integration reverses differentiation — use that to check],
  [Distance equals the integral of velocity, always], [Only when the velocity keeps its sign; otherwise integrate $|v|$],
)

== S.4 Statistics

#table(
  columns: (1.7fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],
  [The mean of grouped data uses the class limits], [It uses the class midpoints],
  [The modal class is the class with the widest interval], [It is the class with the highest frequency],
  [The median class is where the cumulative frequency starts], [It is where the cumulative frequency reaches $N/2$],
  [Variance is in the same units as the data], [Variance is in squared units; the standard deviation is not],
  [Adding $5$ to every value raises the standard deviation by $5$], [It leaves the standard deviation unchanged],
  [Multiplying every value by $3$ triples the variance], [It multiplies the variance by $9$ and the standard deviation by $3$],
  [A histogram plots frequency against class], [It plots frequency density, so that area equals frequency],
  [The tallest bar of a histogram is the modal class], [The tallest bar is the greatest density; frequency is area],
)

== S.5 Counting and Probability

#table(
  columns: (1.7fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The belief],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The correction],
  [Committees are counted with permutations], [A committee has no order: use combinations],
  [Repeated letters need no correction], [Divide by the factorial of every repeat],
  [Pairs of people are counted as permutations], [A handshake or a pair has no order: use combinations],
  [$P(A "or" B) = P(A) + P(B)$ always], [Subtract $P(A "and" B)$ when the events can both happen],
  [Independent events add their probabilities], [Independent events multiply],
  [Without replacement changes nothing if the bag is large], [It changes the denominator by one; the paper always means it literally],
  [$P(A) = 1.2$ is possible with a large sample], [No probability exceeds $1$],
)

#v(8pt)
#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[HOW TO USE THIS CLINIC]
  #v(3pt)
  Do not read it once. Read one table, close the book, and write the six corrections from memory. Any correction you cannot reproduce is a live trap in your next paper. Return to it the night before the examination and read only the rows you failed.
]
