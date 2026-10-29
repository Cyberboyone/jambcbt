#import "template.typ": *

#current-chapter.update("Chapter 8: Measures of Dispersion")
#pagebreak()

#chapter-opener(
  8,
  "Measures of Dispersion",
  subtitle: "Range, Interquartile Range, Mean Deviation, Variance and Standard Deviation for Raw and Grouped Data, and Comparing Two Distributions",
  syllabus-ref: "Sec. V • Topic 8",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Compute the range and the interquartile range, and say what each measures.",
    "Find the mean deviation of a small data set.",
    "Compute the variance of raw data, and the standard deviation from it.",
    "Compute the variance of grouped data with the $sum f x^2$ method.",
    "Predict the effect on the mean and standard deviation of adding a constant or multiplying by one.",
    "Compare two distributions with their standard deviations or coefficients of variation.",
  ),
  hotspots: (
    "\"Find the standard deviation of …\" — the single most common Section V calculation.",
    "\"The variance of the distribution is …\" — usually via $sum f x^2 slash sum f - overline(x)^2$.",
    "\"If $5$ is added to every value, what happens to the standard deviation?\" — it is unchanged.",
    "\"Which distribution is more consistent?\" — the smaller standard deviation.",
    "\"Find the range of the distribution\" — highest boundary minus lowest boundary.",
  ),
  trap-summary: "Three slips. (1) Forgetting to square the deviations, so the variance comes out as zero for a set that plainly varies. (2) Dividing by $n - 1$ when the syllabus expects $n$. (3) Confusing variance with standard deviation — the standard deviation is the square root, and the options usually include both.",
)

// ============================================================================
// SECTION 8.1
// ============================================================================
== 8.1 Why Spread Matters

Two classes can have the same mean and be completely different: one may have every student near the mean, the other may have half at the top and half at the bottom. Dispersion measures the difference.

#diagram-fig("diagrams/ch08_spread.svg",
  "Two distributions with the same mean. The taller, narrower curve has the smaller standard deviation: the data hugs the centre.")

#concept-box("The Four Measures, in Order of Sophistication")[
  #table(
    columns: (1.2fr, 1.7fr, 1.6fr),
    inset: 5pt,
    align: (left + horizon, left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    [Measure], [Formula], [What it tells you],
    [Range], [$"highest" - "lowest"$], [The total width, easily distorted by one outlier],
    [Interquartile range], [$Q_3 - Q_1$], [The width of the middle half, outlier-proof],
    [Mean deviation], [$sum |x - overline(x)| slash n$], [The average distance from the mean],
    [Variance / SD], [$sum (x - overline(x))^2 slash n$], [The average *squared* distance, and its root],
  )
]

// ============================================================================
// SECTION 8.2
// ============================================================================
== 8.2 Range and Mean Deviation

#worked-example(
  1,
  "Range and interquartile range",
  tier: "FOUNDATION",
  [Find the range and the interquartile range of $4$, $9$, $2$, $7$, $11$, $5$, $8$.],
  [
    *Step 1 — Order the data.*

    $ 2, 4, 5, 7, 8, 9, 11 $

    *Step 2 — Range.* $11 - 2 = 9$.

    *Step 3 — Quartiles.* With $n = 7$: $Q_1$ is the $2$nd value, $4$; $Q_3$ is the $6$th value, $9$.

    $ "IQR" = 9 - 4 = 5 $

    *The difference to state.* The range is $9$ and can be ruined by a single extreme value; the interquartile range is $5$ and describes the middle half.

    *The shortcut for $Q_1$ and $Q_3$ with $n = 7$.* The median is the $4$th value ($7$); the lower half is the three values below it, whose median is the $2$nd value of the list, and similarly for the upper half.
  ],
)

#worked-example(
  2,
  "Mean deviation",
  tier: "UTME STANDARD",
  [Find the mean deviation of $4$, $7$, $9$, $10$, $15$.],
  [
    *Step 1 — The mean.* $45/5 = 9$.

    *Step 2 — Deviations from the mean, without signs.*

    $ |4 - 9| = 5 quad |7 - 9| = 2 quad |9 - 9| = 0 quad |10 - 9| = 1 quad |15 - 9| = 6 $

    *Step 3 — Average them.*

    $ (5 + 2 + 0 + 1 + 6)/5 = 14/5 = 2.8 $

    The mean deviation is $2.8$.

    *Why the absolute values.* Without them the deviations sum to zero — $(5) + (2) + (0) + (1) + (6)$ with signs is $-5 - 2 + 0 + 1 + 6 = 0$. The mean is, by construction, the balance point, so the signed deviations always cancel.
  ],
)

// ============================================================================
// SECTION 8.3
// ============================================================================
== 8.3 Variance and Standard Deviation of Raw Data

The mean deviation uses absolute values, which are awkward to handle algebraically. The variance replaces them with squares — a quantity that is always positive and behaves well under algebra.

#diagram-fig("diagrams/ch08_variance_flow.svg",
  "Four moves: mean, deviations, squares, average. The standard deviation is the square root of the last step.")

#formula-box("Variance and Standard Deviation")[
  $ sigma^2 = (sum (x - overline(x))^2)/n quad sigma = sqrt(sigma^2) $

  #v(2pt)
  An equivalent computing form, often quicker:

  $ sigma^2 = (sum x^2)/n - overline(x)^2 $

  #v(2pt)
  The standard deviation is in the *same units* as the data — marks, naira, kilograms — while the variance is in squared units. That is why examiners ask for both and why the options differ by a square root.
]

#worked-example(
  3,
  "Variance and standard deviation",
  tier: "UTME STANDARD",
  [Find the variance and standard deviation of $2$, $3$, $5$, $7$, $8$.],
  [
    *Step 1 — The mean.*

    $ (2 + 3 + 5 + 7 + 8)/5 = 25/5 = 5 $

    *Step 2 — The deviations and their squares.*

    $ -3, -2, 0, 2, 3 quad -> quad 9, 4, 0, 4, 9 $

    *Step 3 — Variance.*

    $ sigma^2 = (9 + 4 + 0 + 4 + 9)/5 = 26/5 = 5.2 $

    *Step 4 — Standard deviation.*

    $ sigma = sqrt(5.2) approx 2.28 $

    *The check by the computing form.* $sum x^2 = 4 + 9 + 25 + 49 + 64 = 151$, so $151/5 - 25 = 30.2 - 25 = 5.2$. The same variance, computed without writing a single deviation.
  ],
)

#worked-example(
  4,
  "The computing form saves time",
  tier: "UTME STANDARD",
  [Find the standard deviation of $5$, $7$, $9$, $11$, $13$.],
  [
    *Step 1 — The mean.* $45/5 = 9$.

    *Step 2 — Squares.*

    $ 25, 49, 81, 121, 169 quad "sum" = 445 $

    *Step 3 — The variance.*

    $ 445/5 - 9^2 = 89 - 81 = 8 $

    *Step 4 — The standard deviation.*

    $ sigma = sqrt(8) approx 2.83 $

    *Why this route is faster.* The deviations here are $4, 2, 0, 2, 4$; squaring them is easy, but with decimals the computing form avoids rounding errors accumulating across five separate subtractions.
  ],
)

// ============================================================================
// SECTION 8.4
// ============================================================================
== 8.4 Grouped Data

For grouped data, each class contributes its frequency times the square of its midpoint.

#diagram-fig("diagrams/ch08_grouped_sd.svg",
  "The full $f x^2$ table for four classes. Two extra columns do all the work, and the variance follows from the two totals.")

#formula-box("The Grouped Formulas")[
  $ overline(x) = (sum f x)/(sum f) quad sigma^2 = (sum f x^2)/(sum f) - overline(x)^2 $

  #v(2pt)
  Build the table with columns $f$, $x$, $f x$, $x^2$ and $f x^2$; the two totals you need are $sum f x$ and $sum f x^2$.

  #v(2pt)
  The range of grouped data is the highest upper boundary minus the lowest lower boundary — not the difference of the printed class limits.
]

#worked-example(
  5,
  "The grouped standard deviation",
  tier: "JAMB CHALLENGE",
  [
    For the classes $1 - 10$ (8), $11 - 20$ (11), $21 - 30$ (14), $31 - 40$ (7), find the mean and standard deviation.
  ],
  [
    *Step 1 — The table.*

    #table(
      columns: (0.85fr, 0.5fr, 0.6fr, 0.7fr, 0.9fr),
      inset: 4.5pt,
      align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
      stroke: 0.4pt + jamb-border,
      [Class], [$f$], [$x$], [$f x$], [$f x^2$],
      [$1 - 10$], [$8$], [$5.5$], [$44$], [$242$],
      [$11 - 20$], [$11$], [$15.5$], [$170.5$], [$2642.75$],
      [$21 - 30$], [$14$], [$25.5$], [$357$], [$9103.5$],
      [$31 - 40$], [$7$], [$35.5$], [$248.5$], [$8821.75$],
      [Total], [$40$], [—], [$820$], [$20810$],
    )

    *Step 2 — The mean.* $820/40 = 20.5$.

    *Step 3 — The variance.*

    $ sigma^2 = 20810/40 - 20.5^2 = 520.25 - 420.25 = 100 $

    *Step 4 — The standard deviation.*

    $ sigma = sqrt(100) = 10 "marks" $

    *The sense check.* A standard deviation of $10$ marks on a distribution spanning $1$ to $40$ is reasonable: roughly two thirds of the class should lie within $10.5$ to $30.5$, which is where most of the frequency sits.
  ],
)

#worked-example(
  6,
  "Range of grouped data",
  tier: "FOUNDATION",
  [Find the range of the distribution $1 - 10$, $11 - 20$, $21 - 30$, $31 - 40$.],
  [
    *Step 1 — The boundaries.*

    $ "lowest" = 0.5 quad "highest" = 40.5 $

    *Step 2 — Subtract.*

    $ 40.5 - 0.5 = 40 $

    The range is $40$ marks.

    *The alternative wording.* Some texts quote $40 - 1 = 39$ using the printed limits. The boundary version is standard for grouped continuous data; if both appear in the options, prefer $40$.
  ],
)

// ============================================================================
// SECTION 8.5
// ============================================================================
== 8.5 What Changes the Spread

Two transformations appear in almost every paper, and both have a one-line answer.

#formula-box("Adding and Multiplying")[
  #table(
    columns: (1.2fr, 1fr, 1.3fr),
    inset: 5pt,
    align: (left + horizon, left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    [Transformation], [Mean], [Standard deviation],
    [Add $k$ to every value], [increases by $k$], [unchanged],
    [Multiply every value by $k$], [multiplied by $k$], [multiplied by $k$],
    [Variance under multiplication by $k$], [—], [multiplied by $k^2$],
  )
]

#worked-example(
  7,
  "Adding a constant",
  tier: "UTME STANDARD",
  [
    A data set has mean $7$ and standard deviation $2.2$. Every value is increased by $5$. State the new mean and the new standard deviation.
  ],
  [
    *The mean.* Every value moves up by $5$, so the mean moves up by $5$: the new mean is $12$.

    *The standard deviation.* Every value keeps its distance from the mean, because the mean moved with the data. The spread is unchanged: the new standard deviation is still $2.2$.

    *Why.* Adding a constant is a *shift*, not a *stretch*. A shift changes where the data sits; only a stretch changes how far apart it is.
  ],
)

#worked-example(
  8,
  "Multiplying by a constant",
  tier: "JAMB CHALLENGE",
  [
    The mean and standard deviation of a set of values are $9$ and $2.8$. Each value is multiplied by $3$. Find the new mean, the new variance and the new standard deviation.
  ],
  [
    *Mean.* $9 times 3 = 27$.

    *Standard deviation.* $2.8 times 3 = 8.4$ — distances from the mean are all tripled.

    *Variance.* $(2.8)^2 times 3^2 = 7.84 times 9 = 70.56$, which is also $(8.4)^2$.

    *The rule to memorise.* Multiplying multiplies the mean and the standard deviation by $k$; the variance, being a square, is multiplied by $k^2$.
  ],
)

#worked-example(
  9,
  "Comparing two distributions",
  tier: "JAMB CHALLENGE",
  [
    Class A has mean $60$ and standard deviation $6$; Class B has mean $70$ and standard deviation $14$. Which class is more consistent, and what is the coefficient of variation of each?
  ],
  [
    *Coefficient of variation.* This expresses the spread as a percentage of the mean, so two distributions with different means can be compared:

    $ "CV" = sigma/(overline(x)) times 100 $

    *Class A.* $6/60 times 100 = 10$ percent.

    *Class B.* $14/70 times 100 = 20$ percent.

    *The answer.* Class A is more consistent: its scores vary by $10$ percent of the mean, against $20$ percent for Class B. Comparing the raw standard deviations alone would have been misleading, since the means differ.
  ],
)

// ============================================================================
// SECTION 8.6
// ============================================================================
== 8.6 Chapter 8 Rapid-Revision Checklist

#table(
  columns: (1.4fr, 1.8fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["range"], [Highest minus lowest], [Use boundaries for grouped data],
  ["interquartile range"], [$Q_3 - Q_1$], [Order the data first],
  ["mean deviation"], [Average of $|x - overline(x)|$], [Signs removed before averaging],
  ["variance of raw data"], [$sum (x - overline(x))^2 slash n$], [Divide by $n$, then leave it],
  ["standard deviation"], [Square root of the variance], [Same units as the data],
  ["variance of grouped data"], [$sum f x^2 slash sum f - overline(x)^2$], [Midpoints, not limits],
  ["add $k$ to every value"], [Mean $+ k$], [SD unchanged],
  ["multiply every value by $k$"], [Mean and SD $times k$], [Variance $times k^2$],
  ["which distribution is consistent"], [Smaller SD or smaller CV], [Use CV if the means differ],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 8 in One Breath]
  #v(3pt)
  Dispersion measures how far the data spreads. The range is total width, the interquartile range the middle half, the mean deviation an average distance, and the variance the average squared distance — whose square root, the standard deviation, is in the original units. Adding a constant shifts the mean only; multiplying stretches everything, with the variance stretched by the square.
]

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: range, mean deviation, variance and standard deviation.", width: 62%)

// ============================================================================
// SECTION 8.7
// ============================================================================
== 8.7 Chapter 8 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Find the range of $12$, $7$, $19$, $4$ and $15$.], [$12$], [$19$], [$7$], [$15$])
#mcq(2, [Find the variance of $2$, $4$, $6$, $8$ and $10$.], [$4$], [$8$], [$10$], [$40$])
#mcq(3, [The standard deviation of $2$, $4$, $6$, $8$ and $10$ is], [$8$], [$4$], [$2.83$], [$1.41$])
#mcq(4, [If $4$ is added to every value in a data set, the standard deviation], [is unchanged], [increases by $4$], [is multiplied by $4$], [increases by $16$])

#answer-key-grid(("D", "B", "C", "A"))

#include "drill_ch08.typ"
