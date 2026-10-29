#import "template.typ": *

#current-chapter.update("Chapter 7: Measures of Location")
#pagebreak()

#chapter-opener(
  7,
  "Measures of Location",
  subtitle: "Mean, Median and Mode for Raw and Grouped Data, the Grouped-Mean Table, Quartiles, Percentiles, and Choosing the Right Average",
  syllabus-ref: "Sec. V • Topic 7",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Compute the mean of raw data and of a frequency table.",
    "Find the median of raw data, including the even-count case.",
    "Estimate the median of grouped data with $L + ((N/2 - F)/f_m) h$.",
    "Identify the mode of raw data and the modal class of a distribution.",
    "Find quartiles and percentiles, and say which average suits which data set.",
  ),
  hotspots: (
    "\"Find the mean of the distribution\" — $sum f x slash sum f$, with midpoints.",
    "\"The mean of five numbers is 12; four are given — find the fifth.\"",
    "\"Find the median of the distribution\" — the grouped formula, or an ogive reading.",
    "\"The modal class is …\" — the class with the highest frequency, not its midpoint.",
    "\"Find the lower quartile\" — the $N/4$ position in an ordered list.",
  ),
  trap-summary: "Three slips. (1) Dividing by the number of *classes* instead of $sum f$ — the grouped mean divides by the total frequency. (2) Using the class limits rather than midpoints in the $f x$ column. (3) Forgetting to *order* the raw data before finding the median.",
)

// ============================================================================
// SECTION 7.1
// ============================================================================
== 7.1 The Mean

The mean is the total shared equally: add every value and divide by how many there are.

#diagram-fig("diagrams/ch07_three_averages.svg",
  "The same five numbers with each of the three averages marked. The mean is pulled towards the outlier; the median and mode are not.")

#formula-box("Mean of Raw and of Grouped Data")[
  $ overline(x) = (sum x)/n quad "raw data" $

  $ overline(x) = (sum f x)/(sum f) quad "frequency table" $

  #v(3pt)
  For grouped data, the $x$ in the second formula is the *midpoint* of each class, and the divisor is the total frequency, $sum f = N$.
]

#worked-example(
  1,
  "A small raw data set",
  tier: "FOUNDATION",
  [Find the mean of $4$, $7$, $9$, $10$, $15$.],
  [
    *Add.*

    $ 4 + 7 + 9 + 10 + 15 = 45 $

    *Divide by the count.*

    $ 45/5 = 9 $

    The mean is $9$.

    *The sense check.* The mean must lie between the smallest and largest values: $4 < 9 < 15$. An answer outside that range is arithmetic, not statistics.
  ],
)

#worked-example(
  2,
  "A frequency table",
  tier: "UTME STANDARD",
  [
    The scores $x$ and their frequencies $f$ are: $1$ (2), $2$ (3), $3$ (5), $4$ (6), $5$ (4). Find the mean.
  ],
  [
    *Step 1 — The $f x$ column.*

    $ 1(2) = 2 quad 2(3) = 6 quad 3(5) = 15 quad 4(6) = 24 quad 5(4) = 20 $

    *Step 2 — The totals.*

    $ sum f = 20 quad sum f x = 67 $

    *Step 3 — Divide.*

    $ overline(x) = 67/20 = 3.35 $

    The mean is $3.35$.

    *The divisor.* Twenty observations, not five scores. The commonest error in this question type is dividing by the number of rows.
  ],
)

#worked-example(
  3,
  "Recovering a missing value",
  tier: "UTME STANDARD",
  [The mean of five numbers is $12$. Four of them are $8$, $10$, $13$ and $15$. Find the fifth.],
  [
    *Step 1 — The total implied by the mean.*

    $ 5 times 12 = 60 $

    *Step 2 — The four known numbers.*

    $ 8 + 10 + 13 + 15 = 46 $

    *Step 3 — Subtract.*

    $ 60 - 46 = 14 $

    The fifth number is $14$.

    *Why this works.* A mean is a statement about the total: "mean $12$ over $5$ items" means the five items add to $60$. Recovering totals from means solves a whole family of exam questions.
  ],
)

#worked-example(
  4,
  "The grouped mean",
  tier: "UTME STANDARD",
  [
    The classes $1 - 10$, $11 - 20$, $21 - 30$, $31 - 40$ have frequencies $8$, $11$, $14$, $7$. Estimate the mean.
  ],
  [
    *Step 1 — Midpoints.* $5.5$, $15.5$, $25.5$, $35.5$.

    *Step 2 — The $f x$ column.*

    $ 8(5.5) = 44 quad 11(15.5) = 170.5 quad 14(25.5) = 357 quad 7(35.5) = 248.5 $

    *Step 3 — Totals.* $sum f = 40$ and

    $ sum f x = 44 + 170.5 + 357 + 248.5 = 820 $

    *Step 4 — Divide.*

    $ overline(x) = 820/40 = 20.5 $

    The estimated mean is $20.5$ marks.

    *Why "estimated".* The individual marks are unknown, so each class is treated as if everyone scored its midpoint. The true mean may differ slightly, which is why the question says "estimate".
  ],
)

#worked-example(
  5,
  "The mean of two groups combined",
  tier: "JAMB CHALLENGE",
  [
    In a class, $20$ students averaged $65$ marks and $30$ students averaged $70$ marks. Find the mean of the whole class.
  ],
  [
    *Step 1 — Recover the totals.*

    $ 20 times 65 = 1300 quad 30 times 70 = 2100 $

    *Step 2 — Combine.*

    $ "total" = 3400 quad "number" = 50 $

    *Step 3 — Divide.*

    $ 3400/50 = 68 $

    The combined mean is $68$ marks.

    *The trap.* Averaging $65$ and $70$ gives $67.5$ — wrong, because the two groups are not the same size. A combined mean always weights by the number in each group.
  ],
)

// ============================================================================
// SECTION 7.2
// ============================================================================
== 7.2 The Median

The median is the middle value once the data is in order. It is unaffected by extreme values, which is why it is preferred for income, house prices and marks with one very low outlier.

#formula-box("Finding the Median")[
  *Raw data.* Sort, then take the $((n + 1)/2)$-th value. With an even count, average the two middle values.

  *Grouped data.* Locate the class containing position $N/2$, then use

  $ "median" = L + ((N/2 - F)/(f_m)) h $

  where $L$ is the lower boundary of that class, $F$ the cumulative frequency *before* it, $f_m$ its frequency and $h$ its width.
]

#worked-example(
  6,
  "An odd count",
  tier: "FOUNDATION",
  [Find the median of $7$, $3$, $9$, $5$, $11$, $4$, $8$.],
  [
    *Step 1 — Order.*

    $ 3, 4, 5, 7, 8, 9, 11 $

    *Step 2 — The middle position.* With $n = 7$, the middle is the $4$th value.

    *Step 3 — Read it.* The median is $7$.

    *The check.* Three values lie below $7$ and three above. A median always splits the data into two equal halves.
  ],
)

#worked-example(
  7,
  "An even count",
  tier: "UTME STANDARD",
  [Find the median of $3$, $8$, $5$, $9$, $12$, $7$.],
  [
    *Step 1 — Order.*

    $ 3, 5, 7, 8, 9, 12 $

    *Step 2 — The two middle values.* With $n = 6$, take the $3$rd and $4$th: $7$ and $8$.

    *Step 3 — Average them.*

    $ (7 + 8)/2 = 7.5 $

    The median is $7.5$.

    *Why the average.* There is no single middle observation, so the median is the midpoint between the two central ones. Reporting either $7$ or $8$ alone is wrong.
  ],
)

#worked-example(
  8,
  "The grouped median",
  tier: "JAMB CHALLENGE",
  [
    For the distribution $1 - 10$ (8), $11 - 20$ (11), $21 - 30$ (14), $31 - 40$ (7), estimate the median.
  ],
  [
    *Step 1 — Cumulative frequencies.* $8$, $19$, $33$, $40$.

    *Step 2 — The median position.* $N/2 = 20$.

    *Step 3 — The median class.* The cumulative frequency passes $20$ in the class $21 - 30$, so

    $ L = 20.5 quad F = 19 quad f_m = 14 quad h = 10 $

    *Step 4 — Substitute.*

    $ "median" = 20.5 + ((20 - 19)/14)(10) = 20.5 + 0.71 = 21.2 $

    The median is about $21.2$ marks.

    *The pieces that must be right.* $L$ is the *lower boundary* $20.5$, not the printed limit $21$; $F$ is the cumulative frequency *before* the median class, not including it. Those two details decide the answer.
  ],
)

// ============================================================================
// SECTION 7.3
// ============================================================================
== 7.3 The Mode

The mode is the most frequent value. It is the only average that works for non-numerical data — the most common shoe size, the most popular subject.

#formula-box("Mode and Modal Class")[
  *Raw data.* The value that appears most often. A data set may have no mode, one mode, or several.

  *Grouped data.* The *modal class* is the class with the highest frequency; its midpoint is often quoted as the mode. The refined estimate is

  $ "mode" = L + ((f_1 - f_0)/(2 f_1 - f_0 - f_2)) h $

  with $f_1$ the modal frequency and $f_0$, $f_2$ the frequencies either side.
]

#worked-example(
  9,
  "The mode of raw data",
  tier: "FOUNDATION",
  [Find the mode of $2$, $4$, $4$, $5$, $6$, $4$, $7$, $5$.],
  [
    *Count each value.* $2$ appears once, $4$ three times, $5$ twice, $6$ once, $7$ once.

    *The answer.* The mode is $4$, since it appears more often than any other value.

    *Two modes or none.* If two values tie for the highest count the data is *bimodal*; if every value appears once, there is no mode. Both are legitimate exam answers.
  ],
)

#worked-example(
  10,
  "The modal class and the refined mode",
  tier: "JAMB CHALLENGE",
  [
    For the distribution $1 - 10$ (8), $11 - 20$ (11), $21 - 30$ (14), $31 - 40$ (7), find the modal class and estimate the mode.
  ],
  [
    *The modal class.* The highest frequency is $14$, so the modal class is $21 - 30$.

    *The refined estimate.* Here $L = 20.5$, $h = 10$, $f_1 = 14$, $f_0 = 11$ and $f_2 = 7$:

    $ "mode" = 20.5 + ((14 - 11)/(28 - 11 - 7))(10) = 20.5 + (3/10)(10) = 23.5 $

    The estimated mode is $23.5$.

    *If the formula is not required.* Many UTME options simply offer the modal class midpoint, $25.5$. Read the options before committing: if $25.5$ and $23.5$ both appear, the refined formula is being tested.
  ],
)

// ============================================================================
// SECTION 7.4
// ============================================================================
== 7.4 Quartiles and Percentiles

Quartiles cut the ordered data into four equal parts; percentiles cut it into a hundred.

#diagram-fig("diagrams/ch07_quartile_map.svg",
  "The five-number summary: minimum, lower quartile, median, upper quartile and maximum. The box between $Q_1$ and $Q_3$ holds the middle half of the data.")

#formula-box("Positions in an Ordered List")[
  $ Q_1 "at" (n + 1)/4 quad "median at" (n + 1)/2 quad Q_3 "at" 3(n + 1)/4 $

  #v(2pt)
  For grouped data or an ogive, the positions become $N/4$, $N/2$ and $3N/4$ on the cumulative axis. The $k$th percentile sits at position $k N/100$.

  #v(2pt)
  The *interquartile range* is $Q_3 - Q_1$: the spread of the middle half, and a measure of dispersion that ignores the extremes.
]

#worked-example(
  11,
  "Quartiles of a list",
  tier: "UTME STANDARD",
  [Find the lower and upper quartiles of $3$, $5$, $7$, $8$, $9$, $12$, $14$, $15$.],
  [
    *The data is already ordered*, with $n = 8$.

    *Lower quartile.* Position $(8 + 1)/4 = 2.25$, between the $2$nd and $3$rd values: $5$ and $7$. Interpolating:

    $ Q_1 = 5 + 0.25(7 - 5) = 5.5 $

    *Upper quartile.* Position $3(8 + 1)/4 = 6.75$, between the $6$th and $7$th values: $12$ and $14$:

    $ Q_3 = 12 + 0.75(14 - 12) = 13.5 $

    *The interquartile range.* $13.5 - 5.5 = 8$.

    *The simpler convention.* Many UTME questions split the list into halves and take the median of each: lower half $3, 5, 7, 8$ gives $Q_1 = 6$; upper half $9, 12, 14, 15$ gives $Q_3 = 13$. Check the options — they will tell you which convention the examiner used.
  ],
)

#worked-example(
  12,
  "Choosing the right average",
  tier: "JAMB CHALLENGE",
  [
    A small business pays five staff: $40 thin 000$, $45 thin 000$, $50 thin 000$, $55 thin 000$ and $900 thin 000$ (the owner). Which average best describes a typical salary, and why?
  ],
  [
    *The mean.*

    $ (40 + 45 + 50 + 55 + 900)/5 = 1090/5 = 218 thin 000 $

    *The median.* The ordered middle value is $50 thin 000$.

    *Which to report.* The median. The owner's salary is an outlier that drags the mean far above what four of the five people actually earn; the median is unaffected by extremes.

    *The general rule.* Use the mean for symmetric data with no outliers; the median for skewed data or data with extremes; the mode for categorical data or for the most typical single value.
  ],
)

// ============================================================================
// SECTION 7.5
// ============================================================================
== 7.5 Chapter 7 Rapid-Revision Checklist

#table(
  columns: (1.4fr, 1.8fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["mean of raw data"], [$sum x slash n$], [Divide by the count of values],
  ["mean of a frequency table"], [$sum f x slash sum f$], [Use midpoints; divide by $N$],
  ["the mean is given, find a missing value"], [Total $= n times$ mean], [Recover the total first],
  ["combined mean of two groups"], [Weighted total], [Never average the two means],
  ["median of raw data"], [Order, then the middle], [Order first — always],
  ["median of grouped data"], [Formula with $L$, $F$, $f_m$, $h$], [Use the lower boundary and the frequency before],
  ["mode"], [Most frequent value], [A set may have two modes, or none],
  ["modal class"], [Highest frequency], [The class, not the midpoint],
  ["quartiles"], [$N/4$ and $3N/4$], [Ordered data or cumulative axis],
  ["which average is best"], [Median if there is an outlier], [Say why, in one sentence],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 7 in One Breath]
  #v(3pt)
  The mean divides a total by a count; for grouped data the count is $sum f$ and each class is represented by its midpoint. The median is the middle of the ordered data, located in grouped data by the $N/2$ position and the class formula. The mode is the most frequent value or class, and the median is the safer average whenever an outlier appears.
]

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: the three averages, the grouped-mean table and quartiles.", width: 62%)

// ============================================================================
// SECTION 7.6
// ============================================================================
== 7.6 Chapter 7 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Find the mean of $6$, $8$, $10$, $12$ and $14$.], [$10$], [$12$], [$8$], [$50$])
#mcq(2, [Find the median of $12$, $7$, $9$, $15$, $4$.], [$7$], [$9$], [$12$], [$15$])
#mcq(3, [The mean of six numbers is $15$. What is their total?], [$75$], [$21$], [$60$], [$90$])
#mcq(4, [Find the mode of $3$, $5$, $5$, $7$, $8$, $5$, $9$.], [$3$], [$7$], [$5$], [$8$])

#answer-key-grid(("A", "B", "D", "C"))

#include "drill_ch07.typ"
