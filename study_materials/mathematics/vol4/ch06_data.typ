#import "template.typ": *

#current-chapter.update("Chapter 6: Representing Data")
#pagebreak()

#chapter-opener(
  6,
  "Representing Data",
  subtitle: "Frequency Tables, Class Boundaries and Midpoints, Bar Charts, Pie Charts, Histograms, Frequency Polygons and Ogives",
  syllabus-ref: "Sec. V • Topic 6",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Turn raw data into a grouped frequency table, with midpoints and class widths.",
    "Compute the angles of a pie chart, and recover raw frequencies from them.",
    "Read a bar chart and a histogram, and know the difference between them.",
    "Draw and read an ogive, and use it to estimate the median and quartiles.",
    "Recognise when a histogram needs frequency *density* rather than frequency.",
  ),
  hotspots: (
    "\"The table shows the distribution of marks — how many students scored …\" — reading, not calculating.",
    "\"Draw a pie chart\" or \"find the angle representing …\" — the fraction times $360^degree$.",
    "\"From the ogive, estimate the median\" — half the total on the vertical axis.",
    "\"Construct a cumulative frequency table\" — the running total, not the raw frequency.",
    "Unequal class widths, where the histogram height is frequency density.",
  ),
  trap-summary: "Three slips. (1) Using the *class limits* instead of the *boundaries* when the classes touch (20–29 and 30–39 share the boundary 29.5). (2) Plotting frequency rather than cumulative frequency on an ogive. (3) Forgetting that a pie chart's angles must sum to $360^degree$ — a quick check that catches most arithmetic errors.",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 Frequency Tables

Raw data is a list; a frequency table is that list counted. The three columns that matter are the *class*, its *frequency*, and — for any calculation that follows — the *midpoint*.

#diagram-fig("diagrams/ch06_frequency_table.svg",
  "Four classes, their tallies, frequencies, midpoints and the products $f x$ that the grouped mean needs. The totals row is the whole reason the table exists.")

#formula-box("The Vocabulary")[
  *Class limits* are the numbers printed: $20$ and $29$ in the class $20 - 29$.

  *Class boundaries* are the true edges, half a unit outside: $19.5$ and $29.5$.

  *Class width* $h = 29.5 - 19.5 = 10$, not $29 - 20 = 9$.

  *Midpoint* $x = (19.5 + 29.5)/2 = 24.5$, or simply the average of the printed limits.

  #v(2pt)
  Cumulative frequency is a *running total*: each row adds its frequency to everything above it. The last cumulative frequency equals $N$, the total number of observations.
]

#worked-example(
  1,
  "Constructing the table",
  tier: "FOUNDATION",
  [
    The marks of $40$ students are grouped as $1 - 10$ (8), $11 - 20$ (11), $21 - 30$ (14), $31 - 40$ (7). Construct the frequency table with midpoints and cumulative frequency.
  ],
  [
    *The table.*

    #table(
      columns: (0.9fr, 0.7fr, 0.8fr, 0.9fr),
      inset: 5pt,
      align: (center + horizon, center + horizon, center + horizon, center + horizon),
      stroke: 0.4pt + jamb-border,
      [Class], [f], [Midpoint], [Cumulative f],
      [$1 - 10$], [$8$], [$5.5$], [$8$],
      [$11 - 20$], [$11$], [$15.5$], [$19$],
      [$21 - 30$], [$14$], [$25.5$], [$33$],
      [$31 - 40$], [$7$], [$35.5$], [$40$],
    )

    *The checks.* The frequencies add to $40$, which matches the number of students; the last cumulative frequency is also $40$; and each midpoint is the average of its two limits, e.g. $(1 + 10)/2 = 5.5$.

    *Why midpoints matter.* The original marks are lost once data is grouped, so every calculation afterwards treats each class as if all its members scored the midpoint.
  ],
)

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 Bar Charts and Pie Charts

#diagram-fig("diagrams/ch06_chart_types.svg",
  "The three familiar pictures. A bar chart compares categories, a pie chart shows each category as a share of a whole, and a line graph shows change in order.")

#formula-box("Pie Chart Angles")[
  $ "angle" = ("frequency")/("total") times 360^degree $

  #v(2pt)
  The reverse is just as common: given an angle, the frequency is $"angle"/360^degree times "total"$, and the total is $"frequency" times 360^degree slash "angle"$.
]

#worked-example(
  2,
  "From frequencies to angles",
  tier: "FOUNDATION",
  [
    A student's scores in four subjects are English $8$, Mathematics $14$, Physics $11$ and Chemistry $7$. Draw the pie chart angles.
  ],
  [
    *Step 1 — The total.* $8 + 14 + 11 + 7 = 40$.

    *Step 2 — Each angle.*

    $ "English" = 8/40 times 360 = 72^degree quad "Mathematics" = 14/40 times 360 = 126^degree $

    $ "Physics" = 11/40 times 360 = 99^degree quad "Chemistry" = 7/40 times 360 = 63^degree $

    *Step 3 — Check.* $72 + 126 + 99 + 63 = 360^degree$. The chart closes, so the arithmetic is right.

    *The habit to build.* Add the four angles before drawing anything. If they do not total $360^degree$, one of them is wrong and the chart would not close.
  ],
)

#worked-example(
  3,
  "From an angle back to a frequency",
  tier: "UTME STANDARD",
  [In a pie chart, the sector representing candidates who chose Biology is $108^degree$. If $30$ candidates chose Biology, how many candidates were surveyed?],
  [
    *Set up the proportion.*

    $ 108/360 = 30/N $

    *Cross-multiply.*

    $ 108 N = 10 thin 800 quad -> quad N = 100 $

    There were $100$ candidates.

    *The check.* $30$ out of $100$ is $30$ percent, and $30$ percent of $360^degree$ is $108^degree$. The two statements agree.
  ],
)

#worked-example(
  4,
  "A pie chart with a remainder",
  tier: "JAMB CHALLENGE",
  [
    In a pie chart of $720$ people, the sector for maize is $120^degree$ and the sector for rice is $90^degree$. How many people chose neither?
  ],
  [
    *Step 1 — The angles not asked for.*

    $ 360 - 120 - 90 = 150^degree $

    *Step 2 — Convert to people.*

    $ 150/360 times 720 = 300 $

    So $300$ people chose neither.

    *The alternative route, as a check.* Maize $= 120/360 times 720 = 240$; rice $= 180$; together $420$; and $720 - 420 = 300$. Both routes give the same answer.
  ],
)

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 Histograms and Frequency Density

A bar chart is for categories; a histogram is for continuous data grouped into classes. The bars touch, because the classes touch, and the *area* of each bar is proportional to the frequency.

#diagram-fig("diagrams/ch06_histogram.svg",
  "A histogram of five equal classes. Because every class is the same width, the heights may be read directly as frequencies.")

#concept-box("When the Classes Are Unequal")[
  If the class widths differ, the height of a bar is *frequency density*:

  $ "frequency density" = "frequency" / "class width" $

  #v(3pt)
  The frequency is then recovered as $"density" times "width"$ — the area of the bar. A question that gives unequal classes and asks for a frequency is always this multiplication.

  #v(2pt)
  With equal class widths, density and frequency differ only by a constant factor, so the shape of the histogram is unchanged and heights may be read as frequencies.
]

#worked-example(
  5,
  "Reading a histogram",
  tier: "UTME STANDARD",
  [
    A histogram has four classes: $0 - 10$, $10 - 20$, $20 - 30$, $30 - 40$. The bars have heights $3$, $8$, $12$ and $5$ respectively. Find the total frequency.
  ],
  [
    *Step 1 — Are the widths equal?* Each class is $10$ wide, so the heights are proportional to frequency and we may take them directly.

    *Step 2 — Add.*

    $ 3 + 8 + 12 + 5 = 28 $

    The total frequency is $28$.

    *The caution.* This shortcut is valid *only* because the widths are equal. If the last class had been $30 - 45$, the height would be a density and the frequency would be $5 times 15 = 75$, not $5$.
  ],
)

#worked-example(
  6,
  "Unequal classes",
  tier: "JAMB CHALLENGE",
  [
    The classes of a distribution are $0 - 10$ (frequency $12$) and $10 - 30$ (frequency $20$). Find the two frequency densities, and state which bar is taller.
  ],
  [
    *First class.* Width $10$, frequency $12$:

    $ "density" = 12/10 = 1.2 $

    *Second class.* Width $20$, frequency $20$:

    $ "density" = 20/20 = 1.0 $

    *Which bar is taller.* The first, at $1.2$ against $1.0$ — even though the second class contains more observations.

    *Why this surprises candidates.* The taller bar is not the larger frequency; it is the larger *density*. Reading a histogram by height alone when the widths differ is the classic error, and it is exactly what the examiner is testing.
  ],
)

// ============================================================================
// SECTION 6.4
// ============================================================================
== 6.4 The Ogive and the Frequency Polygon

An *ogive* (cumulative frequency curve) is plotted against the *upper class boundaries*, using the running totals. Its height rises to $N$ and never falls.

#diagram-fig("diagrams/ch06_ogive.svg",
  "An ogive. The median is the value on the horizontal axis opposite $N/2$ on the vertical axis; the quartiles are opposite $N/4$ and $3N/4$.")

#formula-box("Reading an Ogive")[
  + Draw the curve through the points (upper boundary, cumulative frequency).
  + To find the median: go up to $N/2$, across to the curve, and down to the axis.
  + To find the lower quartile: use $N/4$. Upper quartile: use $3N/4$.

  #v(2pt)
  A frequency polygon joins the midpoints of the bar tops; an ogive joins the cumulative totals. Both are read at $x$-values, but only the ogive answers "how many are below this mark?".
]

#worked-example(
  7,
  "Building the cumulative column",
  tier: "UTME STANDARD",
  [
    Use the table from Example 1: frequencies $8$, $11$, $14$, $7$ with upper boundaries $10.5$, $20.5$, $30.5$, $40.5$. Find the median from the ogive.
  ],
  [
    *Step 1 — Cumulative frequencies.* $8$, $19$, $33$, $40$.

    *Step 2 — The median position.* $N/2 = 20$.

    *Step 3 — Which class contains it?* The cumulative frequency jumps from $19$ to $33$ at the boundary $20.5$, so the median lies in the class $20.5$ to $30.5$.

    *Step 4 — Read from the curve.* Opposite $20$ on the vertical axis the curve is just past $20.5$: the median is approximately $21$.

    *The exact grouped formula gives the same region.*

    $ "median" = L + ((N/2 - F)/f_m) h = 20.5 + ((20 - 19)/14)(10) = 21.2 $

    *Why the two differ slightly.* The ogive uses straight lines between plotted points; the formula assumes the class is uniformly filled. Both are estimates, and both are acceptable unless the question specifies.
  ],
)

#worked-example(
  8,
  "Quartiles from the curve",
  tier: "JAMB CHALLENGE",
  [
    Using the same distribution ($N = 40$), estimate the lower and upper quartiles from the ogive.
  ],
  [
    *Lower quartile.* $N/4 = 10$. The cumulative frequency reaches $10$ inside the second class, so $Q_1$ is between $10.5$ and $20.5$; reading the curve gives roughly $12$.

    *Upper quartile.* $3N/4 = 30$. The cumulative frequency reaches $30$ inside the third class, so $Q_3$ is between $20.5$ and $30.5$; reading the curve gives roughly $28$.

    *The interquartile range.* $Q_3 - Q_1 = 28 - 12 = 16$ marks — the spread of the middle half of the class.

    *The habit.* Always state the positions ($N/4$, $N/2$, $3N/4$) *before* reading the graph. The graph reading is the easy part; the arithmetic is where mistakes happen.
  ],
)

// ============================================================================
// SECTION 6.5
// ============================================================================
== 6.5 Chapter 6 Rapid-Revision Checklist

#table(
  columns: (1.4fr, 1.8fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["complete the table"], [Count, then add a midpoint column], [Frequencies must total $N$],
  ["draw a pie chart"], [Fraction times $360^degree$], [Angles must total $360^degree$],
  ["find an angle given a frequency"], [Same proportion], [Use the total, not one category],
  ["read a histogram"], [Height, if widths are equal], [Check the widths first],
  ["unequal class widths"], [Frequency density], [Area of bar = frequency],
  ["construct an ogive"], [Cumulative frequency vs upper boundary], [Running total, not raw frequency],
  ["estimate the median"], [Read across from $N/2$], [$N/4$ and $3N/4$ for quartiles],
  ["frequency polygon"], [Join midpoint tops], [Midpoints, not boundaries],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 6 in One Breath]
  #v(3pt)
  A frequency table counts the data; a pie chart shows shares of $360^degree$; a histogram shows grouped continuous data, with heights read as frequencies only when the classes are equally wide. The ogive is the running total, and its height $N/2$ locates the median.
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: charts, histograms and the ogive.", width: 62%)

// ============================================================================
// SECTION 6.6
// ============================================================================
== 6.6 Chapter 6 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [In a pie chart of $360$ people, the sector for a category is $54^degree$. How many people are in that category?], [$36$], [$60$], [$54$], [$108$])
#mcq(2, [A class of width $10$ has frequency $25$. What is its frequency density?], [$2.5$], [$25$], [$0.4$], [$250$])
#mcq(3, [An ogive is plotted using which quantities?], [frequency against midpoint], [frequency against class width], [cumulative frequency against lower class boundary], [cumulative frequency against upper class boundary])
#mcq(4, [The median is read from an ogive at a cumulative frequency of], [$N/4$], [$N/2$], [$3N/4$], [$N$])

#answer-key-grid(("C", "A", "D", "B"))

#include "drill_ch06.typ"
