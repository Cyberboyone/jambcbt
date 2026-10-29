#import "template.typ": *

#current-chapter.update("Chapter 8: Coordinate Geometry")
#pagebreak()

#chapter-opener(
  8,
  "Coordinate Geometry",
  subtitle: "The Cartesian Plane, Distance, Midpoint, Gradient, Equations of Straight Lines, Parallel and Perpendicular Lines, and the Equation of a Circle",
  syllabus-ref: "Sec. III • Topic 8",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Plot and read points in the four quadrants and identify their signs.",
    "Find the distance between two points and the midpoint of a segment.",
    "Find the gradient of a line from two points and from an equation.",
    "Form the equation of a straight line given its gradient and a point, or two points.",
    "Recognise parallel and perpendicular gradients, and the equation of a circle in centre–radius form.",
  ),
  hotspots: (
    "Distance between two points — nearly always a Pythagorean triad.",
    "Gradient from two points, including the sign.",
    "Perpendicular gradient: the negative reciprocal, $m_1 m_2 = -1$.",
    "Equation of a line through a point with a given gradient.",
    "The centre and radius of $(x - h)^2 + (y - k)^2 = r^2$, including when $h$ or $k$ is negative.",
  ),
  trap-summary: "Three recurring slips. (1) Reversing the subtraction order in the gradient — $(y_2 - y_1)/(x_2 - x_1)$, both in the same order, or the sign flips. (2) Treating the perpendicular gradient as $1/m$ instead of $-1/m$: both the reciprocal *and* the sign must change. (3) Reading the centre of a circle as $(h, k)$ when the bracket reads $(x + h)$, which means the centre is at $(-h, k)$.",
)

// ============================================================================
// SECTION 8.1
// ============================================================================
== 8.1 Points in the Plane

#diagram-fig("diagrams/ch08_line_features.svg",
  "A line through two points: the horizontal run, the vertical rise, and the gradient as the ratio rise/run. The angle $theta$ is measured to the positive $x$-axis.")

#concept-box("Signs by Quadrant")[
  #table(
    columns: (auto, auto, auto, auto),
    inset: 5pt,
    align: (center + horizon, center + horizon, center + horizon, center + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Quadrant],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[$x$],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[$y$],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Example],
    [First], [$+$], [$+$], [$(3, 4)$],
    [Second], [$-$], [$+$], [$(-3, 4)$],
    [Third], [$-$], [$-$], [$(-3, -4)$],
    [Fourth], [$+$], [$-$], [$(3, -4)$],
  )

  #v(3pt)
  Quadrants are numbered anticlockwise from the first, and the sign pattern is what most "in which quadrant does $P$ lie" questions test.
]

// ============================================================================
// SECTION 8.2
// ============================================================================
== 8.2 Distance and Midpoint

#diagram-fig("diagrams/ch08_distance_midpoint.svg",
  "The distance between two points is the hypotenuse of a right triangle whose legs are the differences of the coordinates; the midpoint averages each pair of coordinates.")

#formula-box("Distance and Midpoint")[
  For $A(x_1, y_1)$ and $B(x_2, y_2)$:

  $ A B = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $

  $ "midpoint" M = ((x_1 + x_2)/2, (y_1 + y_2)/2) $

  #v(3pt)
  The distance formula is Pythagoras, with the horizontal and vertical gaps as the legs. The midpoint formula is an average — *add and halve*, coordinate by coordinate.
]

#worked-example(
  1,
  "Distance from the origin",
  tier: "FOUNDATION",
  [Find the distance between $(0, 0)$ and $(8, 15)$.],
  [
    $ d = sqrt(8^2 + 15^2) = sqrt(64 + 225) = sqrt(289) = 17 $

    The distance is $17$ units.

    *Notice the triad.* $8, 15, 17$ is one of the standard Pythagorean triples, which is why JAMB can set a distance question with a whole-number answer. When both coordinates are whole numbers, expect the answer to be the third member of a triad.
  ],
)

#worked-example(
  2,
  "Distance between two general points",
  tier: "UTME STANDARD",
  [Find the distance between $A(-2, 3)$ and $B(6, -3)$],
  [
    *Step 1 — Differences.*

    $ x_2 - x_1 = 6 - (-2) = 8, quad y_2 - y_1 = -3 - 3 = -6 $

    *Step 2 — Square and add.* The signs disappear when squared:

    $ d = sqrt(8^2 + (-6)^2) = sqrt(64 + 36) = sqrt(100) = 10 $

    The distance is $10$ units.

    *Why the order does not matter.* $(x_2 - x_1)^2 = (x_1 - x_2)^2$, so reversing the subtraction changes nothing here — unlike in the gradient formula, where it changes the sign.
  ],
)

#worked-example(
  3,
  "Midpoint of a segment",
  tier: "FOUNDATION",
  [Find the midpoint of the line joining $(-4, 6)$ and $(8, -2)$],
  [
    $ M = (((-4) + 8)/2, (6 + (-2))/2) = (4/2, 4/2) = (2, 2) $

    The midpoint is $(2, 2)$.

    *Check with distances.* From $(2, 2)$ to $(-4, 6)$: $sqrt(36 + 16) = sqrt(52)$. To $(8, -2)$: $sqrt(36 + 16) = sqrt(52)$ ✓ — equal, as a midpoint must be.
  ],
)

#worked-example(
  4,
  "Finding an endpoint from the midpoint",
  tier: "JAMB CHALLENGE",
  [The midpoint of $A B$ is $(3, -1)$ and $A$ is $(-2, 4)$. Find $B$.],
  [
    *Step 1 — Let $B = (x, y)$ and write the midpoint equations.*

    $ (x + (-2))/2 = 3 quad quad (y + 4)/2 = -1 $

    *Step 2 — Solve each.*

    $ x - 2 = 6 arrow.r.double x = 8, quad quad y + 4 = -2 arrow.r.double y = -6 $

    So $B = (8, -6)$.

    *The general trick.* If $M$ is the midpoint of $A$ and $B$, then $B = 2M - A$ — double the midpoint and subtract the known endpoint, coordinate by coordinate. Here $2(3, -1) - (-2, 4) = (6 + 2, -2 - 4) = (8, -6)$ ✓.
  ],
)

// ============================================================================
// SECTION 8.3
// ============================================================================
== 8.3 Gradient and the Equation of a Line

#formula-box("Gradient")[
  For $A(x_1, y_1)$ and $B(x_2, y_2)$:

  $ m = (y_2 - y_1)/(x_2 - x_1) = "rise"/"run" $

  - A *positive* gradient rises from left to right.
  - A *negative* gradient falls from left to right.
  - A *zero* gradient is horizontal.
  - A *vertical* line has an undefined gradient (the run is zero).
]

#shortcut-box("Read the Sign Before Computing")[
  Sketch the two points roughly. If the line goes up to the right, the answer is positive; down to the right, negative.

  This takes three seconds and eliminates every option with the wrong sign — which in a gradient question is usually half of them.
]

#worked-example(
  5,
  "Gradient from two points",
  tier: "FOUNDATION",
  [Find the gradient of the line joining $(-1, -6)$ and $(7, -5)$],
  [
    $ m = (-5 - (-6))/(7 - (-1)) = (-5 + 6)/(7 + 1) = 1/8 $

    The gradient is $frac(1, 8)$.

    *The two errors.* Subtracting in the wrong order gives $-1/8$; subtracting carelessly with the negatives gives $(-5 - 6)/(7 + 1) = -11/8$. Write the substitution out in full, with brackets round every negative coordinate.
  ],
)

#worked-example(
  6,
  "Equation from a gradient and a point",
  tier: "UTME STANDARD",
  [Find the equation of the line of gradient $3$ passing through $(-4, -13)$],
  [
    *Step 1 — Point–gradient form.*

    $ y - y_1 = m(x - x_1) $

    *Step 2 — Substitute.*

    $ y - (-13) = 3(x - (-4)) quad arrow.r.double quad y + 13 = 3(x + 4) $

    *Step 3 — Expand and simplify.*

    $ y + 13 = 3x + 12 quad arrow.r.double quad y = 3x - 1 $

    The line is $y = 3x - 1$.

    *Check.* Substitute the point: $3(-4) - 1 = -13$ ✓. Always substitute the original point into your final equation — it takes five seconds and catches every algebra slip in the topic.
  ],
)

#worked-example(
  7,
  "Equation from two points",
  tier: "UTME STANDARD",
  [Find the equation of the line through $(1, 5)$ and $(4, 14)$],
  [
    *Step 1 — Gradient.*

    $ m = (14 - 5)/(4 - 1) = 9/3 = 3 $

    *Step 2 — Use either point.* With $(1, 5)$:

    $ y - 5 = 3(x - 1) quad arrow.r.double quad y = 3x + 2 $

    *Step 3 — Check with the other point.* $3(4) + 2 = 14$ ✓.

    *Two points, one route.* Gradient first, then point–gradient form. Do not attempt to "see" the equation from the points; the two-step method is faster than guessing and never fails.
  ],
)

// ============================================================================
// SECTION 8.4
// ============================================================================
== 8.4 Parallel and Perpendicular Lines

#diagram-fig("diagrams/ch08_parallel_perp.svg",
  "Parallel lines share a gradient; perpendicular lines have gradients whose product is $-1$, so each is the negative reciprocal of the other.")

#formula-box("The Two Gradient Rules")[
  - *Parallel*: $m_1 = m_2$. Same gradient, different intercept.
  - *Perpendicular*: $m_1 m_2 = -1$, that is $m_2 = -1/m_1$.

  #v(3pt)
  In words: flip the fraction *and* change the sign. A gradient of $2/3$ becomes $-3/2$; a gradient of $-1/2$ becomes $2$.
]

#worked-example(
  8,
  "The perpendicular gradient",
  tier: "FOUNDATION",
  [Find the gradient of a line perpendicular to one of gradient $frac(3, 2)$],
  [
    $ m_2 = -1 -: (3/2) = -2/3 $

    The perpendicular gradient is $-frac(2, 3)$.

    *Two checks.* First, the product: $(3/2) times (-2/3) = -1$ ✓. Second, the shape: the original line rises steeply, so the perpendicular must fall gently — a negative gradient of small magnitude, which $-2/3$ is.
  ],
)

#worked-example(
  9,
  "Perpendicular through a given point",
  tier: "JAMB CHALLENGE",
  [Find the equation of the line through $(2, 1)$ perpendicular to $y = 2x + 5$],
  [
    *Step 1 — Gradient of the given line.* From $y = 2x + 5$, $m_1 = 2$.

    *Step 2 — Perpendicular gradient.*

    $ m_2 = -1/2 $

    *Step 3 — Point–gradient form.* Through $(2, 1)$:

    $ y - 1 = -1/2 (x - 2) quad arrow.r.double quad 2y - 2 = -x + 2 quad arrow.r.double quad x + 2y = 4 $

    The line is $x + 2y = 4$, or $y = -x/2 + 2$.

    *The distractor.* $y - 1 = 2(x - 2)$, the *parallel* line through the same point, is always an option. Read the word "perpendicular" before choosing the gradient.
  ],
)

#worked-example(
  10,
  "Parallel through a given point",
  tier: "UTME STANDARD",
  [Find the equation of the line through $(3, -2)$ parallel to $2x + y = 7$],
  [
    *Step 1 — Gradient of the given line.* Rearrange: $y = -2x + 7$, so $m = -2$.

    *Step 2 — Parallel means the same gradient.* Through $(3, -2)$:

    $ y + 2 = -2(x - 3) quad arrow.r.double quad y = -2x + 4 $

    The line is $y = -2x + 4$.

    *Check by substitution.* $-2(3) + 4 = -2$ ✓, and the gradient matches $-2$ ✓.
  ],
)

// ============================================================================
// SECTION 8.5
// ============================================================================
== 8.5 The Equation of a Circle

#diagram-fig("diagrams/ch08_circle_equation.svg",
  "The circle $(x - h)^2 + (y - k)^2 = r^2$ has centre $(h, k)$ and radius $r$. Every point on it is exactly $r$ units from the centre — which is the distance formula in disguise.")

#formula-box("The Circle in Centre–Radius Form")[
  $ (x - h)^2 + (y - k)^2 = r^2 $

  has centre $(h, k)$ and radius $r$.

  #v(3pt)
  In particular, $x^2 + y^2 = r^2$ is the circle centred at the origin with radius $r$.

  #v(3pt)
  *Reading the signs.* The bracket is $(x - h)$, so the centre's coordinate is the number *subtracted* — with its sign reversed from what appears in the bracket:
  $(x - 3)^2 arrow.r.double h = 3$; $(x + 3)^2 arrow.r.double h = -3$.
]

#worked-example(
  11,
  "Centre and radius",
  tier: "FOUNDATION",
  [Find the centre and radius of the circle $(x - 4)^2 + (y + 1)^2 = 25$],
  [
    *Compare with the standard form.* $(x - h)^2 + (y - k)^2 = r^2$:

    $ h = 4, quad k = -1, quad r^2 = 25 arrow.r.double r = 5 $

    The centre is $(4, -1)$ and the radius is $5$.

    *The sign trap.* The bracket reads $(y + 1)$, which is $(y - (-1))$, so $k = -1$ — not $+1$. Options offering the centre $(4, 1)$ are testing exactly this.
  ],
)

#worked-example(
  12,
  "Radius from the general form",
  tier: "JAMB CHALLENGE",
  [Find the centre and radius of the circle $x^2 + y^2 - 6x + 8y - 11 = 0$],
  [
    *Step 1 — Group and complete the square in $x$.*

    $ x^2 - 6x = (x - 3)^2 - 9 $

    *Step 2 — Complete the square in $y$.*

    $ y^2 + 8y = (y + 4)^2 - 16 $

    *Step 3 — Substitute back.*

    $ (x - 3)^2 - 9 + (y + 4)^2 - 16 - 11 = 0 $

    $ (x - 3)^2 + (y + 4)^2 = 36 $

    *Step 4 — Read off.* Centre $(3, -4)$, radius $6$.

    *The halving rule.* In $x^2 + y^2 + 2 g x + 2 f y + c = 0$, the centre is $(-g, -f)$: halve each coefficient of $x$ and of $y$, then change the signs. Here $-6/2 = -3$, so the centre's $x$ is $3$; $8/2 = 4$, so the centre's $y$ is $-4$. The radius is $sqrt(g^2 + f^2 - c) = sqrt(9 + 16 + 11) = 6$ ✓.
  ],
)

#worked-example(
  13,
  "Is the point inside, on, or outside?",
  tier: "JAMB CHALLENGE",
  [Determine whether the point $(6, 5)$ lies inside, on, or outside the circle $(x - 2)^2 + (y - 1)^2 = 25$],
  [
    *Step 1 — Substitute the point into the left-hand side.*

    $ (6 - 2)^2 + (5 - 1)^2 = 16 + 16 = 32 $

    *Step 2 — Compare with $r^2 = 25$.*

    $ 32 > 25 $

    Since the squared distance from the centre exceeds the square of the radius, the point lies *outside* the circle.

    *The general test.* Compute the squared distance from the centre and compare with $r^2$: less means inside, equal means on, greater means outside. Squared distances avoid the square root entirely, which is why this is the faster test in an exam.
  ],
)

#trap-box("Coordinate Geometry: Four Costly Habits")[
  - Computing the gradient as $(x_2 - x_1)/(y_2 - y_1)$ — upside down.
  - Dropping a minus sign when a coordinate is negative: $(-1) - (-6) = 5$, not $-7$.
  - Taking the perpendicular gradient as $1/m$ instead of $-1/m$.
  - Reading the centre of a circle as $(h, k)$ when the bracket is $(x + h)$.
]

// ============================================================================
// SECTION 8.6
// ============================================================================
== 8.6 Chapter 8 Rapid-Revision Checklist

#table(
  columns: (1.25fr, 1.85fr, 1.55fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],
  ),
  ["distance between two points"], ["$sqrt((Delta x)^2 + (Delta y)^2)$"], ["Signs vanish when squared."],
  ["midpoint"], ["Average the coordinates"], ["Add, then halve — do not subtract."],
  ["endpoint given the midpoint"], ["$B = 2M - A$"], ["Helps avoid simultaneous equations."],
  ["gradient"], ["$(y_2 - y_1)/(x_2 - x_1)$"], ["Same order top and bottom."],
  ["equation from gradient and point"], ["$y - y_1 = m(x - x_1)$"], ["Substitute back to check."],
  ["perpendicular gradient"], ["$-1/m$"], ["Reciprocal *and* sign change."],
  ["parallel gradient"], ["Same $m$"], ["Different intercept."],
  ["centre and radius of a circle"], ["Compare with $(x - h)^2 + (y - k)^2 = r^2$"], ["$(x + 3)$ means $h = -3$."],
  ["general form to centre–radius"], ["Halve coefficients, flip signs"], ["Radius $= sqrt(g^2 + f^2 - c)$."],
  ["point inside or outside a circle"], ["Compare squared distance with $r^2$"], ["No square root needed."],
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
  Distance is Pythagoras on the coordinate gaps; midpoint is their average. Gradient is rise over run, and it decides everything about a line: parallel lines share it, perpendicular lines negate and invert it. A circle is the distance formula held constant, so its equation is $(x - h)^2 + (y - k)^2 = r^2$ with the centre's signs reversed from the brackets.
]

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: the six formulae of coordinate geometry.", width: 76%)

// ============================================================================
== 8.7 Chapter 8 in the Exam Hall — a Two-Minute Set

#mcq(1, [Find the distance between $(0, 0)$ and $(7, 24)$], [$25$], [$31$], [$168$], [$17$])

#mcq(2, [Find the gradient of the line joining $(2, -1)$ and $(6, 7)$], [$2$], [$1/2$], [$-2$], [$4$])

#mcq(3, [Find the centre of the circle $(x + 3)^2 + (y - 5)^2 = 49$], [$(-3, 5)$], [$(3, 5)$], [$(3, -5)$], [$(-3, -5)$])

#mcq(4, [Find the gradient of a line perpendicular to one of gradient $-frac(2, 5)$], [$frac(5, 2)$], [$-frac(5, 2)$], [$-frac(2, 5)$], [$frac(2, 5)$])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $7, 24, 25$ is a triad; (2) $8/4 = 2$; (3) $(x + 3)$ means $h = -3$; (4) flip and change sign: $5/2$.
  ]
]

// ============================================================================
#include "drill_ch08.typ"
