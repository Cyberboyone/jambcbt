#import "template.typ": *

#current-chapter.update("Appendix N: The Figures Everyone Forgets")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix N: The Figures Everyone Forgets]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX N]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Figures Everyone Forgets]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eleven sketches that turn a calculus or statistics question into a one-line calculation. Each one is drawn in under twenty seconds by hand, and each one is worth marks precisely because candidates rarely draw it.
  ]
]

#v(6pt)

Calculus and statistics are drawn subjects, and the drawing is not decoration. A limit question with a gap in the graph, an area question with the region above and below the axis, a histogram whose bars have different widths, an ogive that hides its median inside a class — these are the questions where a candidate who sketches finishes first and a candidate who does not guesses.

The eleven figures below are the ones that appear again and again in the UTME paper. Learn to draw each in the margin; the sketch usually reveals the answer before the algebra does.

== N.1 The Number Line With a Hole

Draw a horizontal axis, mark $a$, and put an open circle at $(a, L)$. That open circle is the whole idea of a limit: the function may be undefined at $a$, and the limit still exists.

- A *filled* circle at $a$ with an open circle elsewhere means the value and the limit disagree — the function is not continuous there.
- Two different values approached from left and right means the limit does not exist.
- Any graph that is a single unbroken stroke at $a$ needs no work at all: substitute.

== N.2 The Two One-Sided Arrows

When a limit looks doubtful, draw two short arrows: one arriving at $a$ from the left, one from the right, with the height each approaches written beside it.

#table(
  columns: (1.2fr, 1.2fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Left arrow],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Right arrow],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Verdict],
  [$2$], [$2$], [Limit is $2$],
  [$1$], [$-1$], [Limit does not exist],
  [$-infinity$], [$-infinity$], [Limit is $-infinity$],
  [$3$], [$3$ but $f(a) = 5$], [Limit is $3$; not continuous],
)

== N.3 The Tangent That Touches Once

A straight line drawn so that it just touches the curve at $P$ is the tangent at $P$; the gradient of that line is $dif y / dif x$ at $P$.

- If the line crosses the curve instead of touching it, you have drawn a chord or a secant, and the gradient you read off is an average, not an instantaneous, rate.
- The *normal* is perpendicular to the tangent, so its gradient is the negative reciprocal: $m_1 m_2 = -1$.

== N.4 The Turning-Point Profile

Draw a small hill and a small valley on the same axis and mark the two places where the curve runs flat. That is the whole of the second-derivative test.

#table(
  columns: (1.3fr, 1.2fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Sketch],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Condition],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Conclusion],
  [Top of a hill], [$f'(x) = 0$, $f''(x) < 0$], [Maximum],
  [Bottom of a valley], [$f'(x) = 0$, $f''(x) > 0$], [Minimum],
  [Flat shelf], [$f'(x) = 0$, $f''(x) = 0$], [Test the sign of $f'$ either side],
)

== N.5 The Region Between a Curve and the Axis

Shade the region, then label the strips. If the shading is above the axis the integral is positive; if it is below, the integral is negative and the *area* is its magnitude.

The drawing tells you what the algebra cannot: that a curve crossing the axis inside the interval needs the interval split, and that the two pieces must be added as positive areas.

== N.6 The Area Between Two Curves

Sketch both curves, find where they cross, and shade between them. The area is the integral of *upper minus lower*, from the left crossing to the right crossing.

- If the curves cross inside the interval, upper and lower swap and a single integral returns a difference, not a total: split at the crossing.
- If the region is easier to slice horizontally, integrate with respect to $y$.

== N.7 The Velocity Sign Line

Draw a horizontal time axis and mark the instants where $v = 0$. Between those marks write $+$ or $-$.

- Where the sign is unchanged, distance and displacement agree.
- Where the sign changes, the particle reversed: distance is the sum of the magnitudes of the pieces, displacement is their signed sum.
- A *negative* velocity is not an error; it is motion in the opposite direction.

== N.8 The Histogram With Unequal Bars

Draw the axes: frequency density up the side, class boundaries along the bottom. The bar *area*, not the bar height, is the frequency.

This is the figure that exposes the commonest statistics error in the paper: reading a histogram as a bar chart and picking the tallest bar as the modal class, when a wider bar of modest height may hold more people.

== N.9 The Ogive and the Three Levels

Plot cumulative frequency against the *upper class boundary* and join with a smooth curve. Then draw horizontal lines at $N/4$, $N/2$ and $3N/4$ and drop to the axis.

The three readings are the quartiles. The figure makes obvious what the formula hides: the median is a position on the vertical axis and a value on the horizontal one, and the two are never the same number.

== N.10 The Tree for Two Draws

Two branches for the first draw, two for the second. Write the probability on each branch and the outcome at each tip.

- Multiply along a path; add between paths.
- *Without replacement* the second pair of branches carries different denominators. The moment you write the same denominator twice, you have answered a different question.
- Every tip probability is a fraction of the same whole; they must add to $1$.

== N.11 The Venn With Three Regions

Two overlapping circles produce four regions. Label them $A$ only, $B$ only, both, and neither, and check that the four numbers add to $1$.

Most addition-rule questions are answered by filling the Venn from the inside out: intersection first, then each exclusive part, then neither.

#v(8pt)
#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[TEN-SECOND RECALL SHEET]
  #v(3pt)
  Hole in the line: limit. Two arrows: one-sided. Tangent touching once: derivative. Hill and valley: max and min. Shaded region: integral. Sign line: distance against displacement. Unequal bars: frequency density. Ogive: quartiles. Tree: multiply along, add between. Venn: fill from the inside out.
]

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix O: The Unit and Error Clinic]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX O]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Unit and Error Clinic]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Marks are lost in calculus and statistics for three reasons: a unit dropped, a symbol confused, a rounding applied too early. This appendix is the repair shop for all three.
  ]
]

#v(6pt)

== O.1 Units That Belong in the Answer

An answer without its unit is incomplete, and in a written paper it is a lost mark. The unit is decided by the question, not by the arithmetic.

#table(
  columns: (1.6fr, 1.1fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Unit],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[How it is obtained],
  [Distance, displacement], [m], [Integrate velocity in m/s over seconds],
  [Velocity, speed], [m/s], [Differentiate displacement; integrate acceleration],
  [Acceleration], [$"m/s"^2$], [Differentiate velocity],
  [Area under a curve], [square units], [Definite integral of $y$ with respect to $x$],
  [Rate of change of volume], [$"cm"^3$/s], [$dif V / dif t$, chain rule through $r$],
  [Mean, median, mode], [same as the data], [Never changes the unit],
  [Variance], [unit squared], [Squares the unit with the numbers],
  [Standard deviation], [same as the data], [Square root returns the unit],
)

== O.2 Rounding: When, and How Late

Round once, at the end. Every intermediate rounding is an error that compounds.

- Keep exact fractions until the final line whenever the options are exact fractions.
- If you must decimalise early, keep at least four significant figures.
- If the answer is money, round to two decimal places; if it is a count of people, a count must be a whole number, and a fractional answer means the method slipped.

== O.3 The Symbol Traps

#trap-box("Four substitutions that cost marks")[
  *$dif y / dif x$ against $integral y dif x$.* Differentiating a power reduces it; integrating raises it. If the power went down when you expected it to go up, you have differentiated an integral.

  #v(2pt)
  *$sum f$ against $sum f x$.* The first is the number of items; the second is the weighted total. Dividing one by the other in the wrong order gives an answer larger than the data.

  #v(2pt)
  *$n$ against $N$.* In statistics $n$ is the size of a sample and $N$ the size of the population — in this book either letter may be used for the total frequency, but the *same* letter must be used for the whole calculation.

  #v(2pt)
  *$P(A)$ against $P("not" A)$.* A probability above one is not a rounding problem; it is the complement written the wrong way round.
]

== O.4 The Five-Second Dimension Check

Before you choose an option, ask what kind of number the answer must be.

- A probability lies between $0$ and $1$. Anything above $1$ is wrong whatever the working says.
- A variance cannot be negative; a standard deviation cannot be either.
- An area cannot be negative. A definite integral can.
- A count of arrangements is a whole number; a mean need not be.
- A distance travelled is never less than the displacement's magnitude.

== O.5 Pi, and When to Use 22/7

The UTME paper generally allows $pi = 22/7$ unless it states otherwise. Use the value the question gives; if it gives none, $22/7$ is the convention, and an option that matches neither $22/7$ nor $3.14$ is a trap rather than a target.

== O.6 The Arithmetic Slips That Repeat

#table(
  columns: (1.5fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Habit],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Repair],
  [Sign lost when subtracting limits], [Write the bracket, then substitute: $F(b) - F(a)$],
  [Factor cancelled but not substituted back], [After cancelling, write the simplified expression and substitute again],
  [Power reduced but coefficient not multiplied], [Say the rule aloud: bring down, then reduce],
  [Denominator unchanged on the second draw], [Ask whether the item was replaced before writing it],
  [Mean of grouped data taken from the class limits], [Use the midpoint of each class],
  [Median read off as a frequency], [The median is a value on the horizontal axis],
)

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix P: Calculus Without a Calculator]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX P]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Calculus Without a Calculator]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The CBT calculator is four-function. Every derivative, integral and limit in this paper is therefore designed to be finished by hand in under ninety seconds. This appendix is the hand.
  ]
]

#v(6pt)

== P.1 The Only Two Rules You Actually Need

#formula-box("Power Rules")[
  $ dif / dif x (x^n) = n x^(n - 1) quad quad integral x^n dif x = x^(n + 1)/(n + 1) + c $

  #v(3pt)
  Everything else — sums, constant multiples, brackets — is these two rules applied term by term, with the chain rule supplying a multiplier when the bracket is not plain $x$.
]

== P.2 Squares, Cubes and Powers to Have at Hand

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  align: center + horizon,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^2$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^3$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^4$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$n^5$],
  [$2$], [$4$], [$8$], [$16$], [$32$],
  [$3$], [$9$], [$27$], [$81$], [$243$],
  [$4$], [$16$], [$64$], [$256$], [$1024$],
  [$5$], [$25$], [$125$], [$625$], [$3125$],
  [$6$], [$36$], [$216$], [$1296$], [$7776$],
  [$7$], [$49$], [$343$], [$2401$], [$16807$],
  [$8$], [$64$], [$512$], [$4096$], [$32768$],
  [$9$], [$81$], [$729$], [$6561$], [$59049$],
  [$10$], [$100$], [$1000$], [$10000$], [$100000$],
)

== P.3 Fractions That Appear in Answers

Definite integrals over small whole-number limits produce thirds, quarters and sixths far more often than whole numbers. Keep them as fractions until the last line.

$ integral_0^1 x^2 dif x = 1/3 quad integral_0^2 x^2 dif x = 8/3 quad integral_1^2 x^2 dif x = 7/3 $

$ integral_0^1 (x - x^2) dif x = 1/6 quad integral_0^1 x^3 dif x = 1/4 quad integral_0^1 (1 - x^2) dif x = 2/3 $

== P.4 Factorising by Inspection

Most $0/0$ limits are one cancellation away from a substitution.

- Difference of two squares: $x^2 - a^2 = (x - a)(x + a)$.
- Difference of two cubes: $x^3 - a^3 = (x - a)(x^2 + a x + a^2)$.
- A quadratic with a known root: if $x = a$ makes it zero, then $(x - a)$ is a factor, and the other factor comes from matching coefficients.

shortcut-box("The Ninety-Second Budget")[
  Read the question: ten seconds. Choose the method and write the first line: twenty seconds. Do the algebra: forty seconds. Check the sign and the units: twenty seconds. That leaves ten seconds to shade a letter, which you must always do.

  #v(2pt)
  If the algebra has not started by thirty seconds, the method is wrong — not slow. Change method, do not push harder.
]

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix Q: The Calculus and Statistics Decision Trees]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX Q]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Decision Trees]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight questions to ask, in order, that route any Section IV or V problem to the right method in under ten seconds. Learn the questions; the methods follow automatically.
  ]
]

#v(6pt)

== Q.1 The Derivative Decision Tree

#concept-box("Ask these four questions, in this order")[
  *1.* Is the expression a single power of $x$? Use the power rule.

  #v(2pt)
  *2.* Is it a product of two expressions, neither of which is a constant? Use the product rule, or multiply out first if the factors are short.

  #v(2pt)
  *3.* Is it one expression over another? Use the quotient rule, or divide through first if the denominator is a single term.

  #v(2pt)
  *4.* Is it a bracket raised to a power? Use the chain rule: differentiate the bracket, then multiply by the derivative of what is inside.
]

== Q.2 The Integration Decision Tree

- A polynomial or a sum of powers: integrate term by term.
- A bracket raised to a power: raise the power by one and divide by the new power *and* by the coefficient inside.
- A definite integral: integrate first, then substitute the upper limit minus the lower.
- An area question: sketch, split at any crossing, and take magnitudes.

== Q.3 The Area or Motion Tree

#table(
  columns: (1.5fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The question says],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Do this],
  [Area under a curve between $a$ and $b$], [$integral_a^b y dif x$, provided $y >= 0$],
  [Area between two curves], [$integral (u - l) dif x$ between the crossings],
  [Region crossing the axis], [Split at the crossing; add the magnitudes],
  [Distance from velocity], [Integrate $|v|$: split where $v = 0$],
  [Displacement from velocity], [Integrate $v$ directly; signs are kept],
  [Velocity from acceleration], [Integrate $a$, using a given speed to find $c$],
  [Acceleration from velocity], [Differentiate $v$],
)

== Q.4 The Average Tree

- Is the data ungrouped and short? Mean, median and mode are all direct counts.
- Is the data grouped? Mean uses midpoints; the median uses the cumulative frequency and interpolation; the mode is the modal class.
- Does the question give frequencies in words? Write a frequency table first, then work.
- Does it ask which average suits the data? Skewed data suits the median; categorical data suits the mode.

== Q.5 The Dispersion Tree

- Asked for spread in the same units as the data? Standard deviation or range.
- Asked for spread relative to the mean? Coefficient of variation.
- Asked for the effect of adding or multiplying? Adding shifts the mean only; multiplying scales both.
- Asked for grouped data? Use midpoints, and divide by the total frequency, not by the number of classes.

== Q.6 The Counting Tree

- Does order matter? If yes, permutations; if not, combinations.
- Are there repeated letters? Divide by the factorial of each repeat.
- Are people arranged in a circle? Fix one person and permute the rest.
- Must certain people sit together? Block them, permute the blocks, then permute inside the block.
- Are the choices made in stages from separate groups? Multiply the stage results.

== Q.7 The Probability Tree

#concept-box("Five words decide the method")[
  *or* — add, and subtract any overlap.

  #v(2pt)
  *and* — multiply, if the events are independent.

  #v(2pt)
  *not*, *none*, *at least one* — subtract from $1$.

  #v(2pt)
  *with replacement* — the second denominator equals the first.

  #v(2pt)
  *without replacement* — both the numerator and the denominator fall by one when the drawn item was of the type you are counting.
]

== Q.8 The Ten-Second Triage

#shortcut-box("Two questions before any working")[
  *What is being asked for?* A value, a rate, an area, a probability, a count — the unit of the answer names the method. *What one line starts it?* Every question begins with one of eight: substitute, factorise, differentiate, integrate, split, tabulate, permute or multiply.
]
