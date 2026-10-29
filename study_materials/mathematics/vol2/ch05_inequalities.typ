#import "template.typ": *

#current-chapter.update("Chapter 5: Inequalities")
#pagebreak()

#chapter-opener(
  5,
  "Linear & Quadratic Inequalities",
  subtitle: "Inequality Laws, Number-Line and Interval Notation, Quadratic and Rational Inequalities, Modulus, and Feasible Regions",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 5",
  utme-weight: "1 Question Most Years (85% Frequency)",
)

#focus-radar(
  objectives: (
    "Solve linear inequalities in one variable and represent the solution on a number line.",
    "Solve quadratic inequalities by the root-and-test (sign chart) method.",
    "Solve inequalities involving fractions or modulus signs.",
    "Illustrate a linear inequality in two variables and identify a feasible region.",
    "Find the integer values satisfying a compound inequality.",
  ),
  hotspots: (
    "Quadratics with 'greater than zero' answers of the form $x < a$ or $x > b$ (outside the roots).",
    "The sign flip when multiplying or dividing by a negative number.",
    "Compound inequalities such as $-2 <= 3x - 1 <= 8$ — solve all three parts together.",
    "Integer-counting questions: 'how many integers satisfy...'.",
    "Shading the region $y > 2x - 1$ and testing the point $(0, 0)$.",
  ),
  trap-summary: "The single most expensive habit in this chapter is forgetting to *reverse* the inequality symbol when multiplying or dividing both sides by a negative number. The second is assuming 'greater than' always means 'bigger numbers' — for quadratics, $> 0$ means *outside* the roots and $< 0$ means *between* them.",
)

// ============================================================================
== 5.1 Linear Inequalities

An inequality behaves exactly like an equation except for one rule.

#formula-box("The Only Rule That Changes")[
  Multiplying or dividing both sides of an inequality by a *negative* number reverses the direction of the symbol.
  $ -2x > 6 quad arrow.r.double quad x < -3 quad ("not " x > -3) $
  Adding or subtracting any number never reverses the symbol.
]

#diagram-fig("diagrams/ch05_number_line_notation.svg",
  "Notation on the number line: an open circle excludes the endpoint, a solid circle includes it. JAMB options are frequently written in interval form, so learn both.")

#worked-example(
  1,
  "One-step with a negative coefficient",
  tier: "FOUNDATION",
  [Solve $-3x + 7 <= 1$.],
  [
    *Step 1 — Subtract $7$:* $-3x <= -6$.

    *Step 2 — Divide by $-3$ and reverse the symbol:*

    $ x >= 2 $
    *Check.* $x = 2$ gives $-6 + 7 = 1$ ✓ (the boundary is included); $x = 3$ gives $-2 <= 1$ ✓

  ],
)

#worked-example(
  2,
  "Compound inequality",
  tier: "UTME STANDARD",
  [Solve $-2 <= 3x - 1 <= 8$ and list the integer solutions.],
  [
    *Step 1 — Work on all three parts at once.* Add $1$:

    $ -1 <= 3x <= 9 $
    *Step 2 — Divide by $3$ (positive, so no reversal):*

    $ -1/3 <= x <= 3 $
    *Step 3 — Integers in the interval:* $0, 1, 2, 3$ — four values. (Note that $-1/3$ is not an integer, so it does not count.)

  ],
)

#worked-example(
  3,
  "Inequality with fractions",
  tier: "UTME STANDARD",
  [Solve $x/2 - 1/3 > x/4 + 1$.],
  [
    *Step 1 — Multiply through by the LCM of $2$, $3$ and $4$, which is $12$:*

    $ 6x - 4 > 3x + 12 $
    *Step 2 — Collect:* $3x > 16$, so

    $ x > 16/3 = 5 1/3 $
    *Check with $x = 6$:* $3 - 1/3 = 2.67 > 1.5 + 1 = 2.5$ ✓

  ],
)

#worked-example(
  4,
  "Modulus inequality",
  tier: "JAMB CHALLENGE",
  [Solve $|x - 3| < 5$.],
  [
    *Step 1 — Read the modulus as a distance:* $x$ lies less than $5$ units from $3$.

    *Step 2 — Convert to a compound inequality:*

    $ -5 < x - 3 < 5 quad arrow.r.double quad -2 < x < 8 $
    *Step 3 — State in interval form:* $x in (-2, 8)$.

    *Contrast.* $|x - 3| > 5$ would give $x < -2$ or $x > 8$ — the two outer rays.
  ],
)

#diagram-fig("diagrams/ch05_modulus_interval.svg",
  "The modulus as distance: $|x - 3| < 5$ is the interval of points within 5 units of 3.")

== 5.2 Quadratic Inequalities

#formula-box("The Root-Split Rule")[
  For $a > 0$ with roots $r_1 < r_2$ of $a x^2 + b x + c = 0$:
  - $(x - r_1)(x - r_2) < 0$ gives $r_1 < x < r_2$ — *between* the roots.
  - $(x - r_1)(x - r_2) > 0$ gives $x < r_1$ or $x > r_2$ — *outside* the roots.
  - $<=$ and $>=$ include the endpoints themselves.
  If $a < 0$, multiply the whole inequality by $-1$ first (remembering to reverse) so that the rule applies.
]

#diagram-fig("diagrams/ch05_quadratic_sign_regions.svg",
  "Why 'greater than zero' means outside the roots: the parabola is above the x-axis to the left of the smaller root and to the right of the larger one.")

#worked-example(
  5,
  "Outside the roots",
  tier: "UTME STANDARD",
  [Solve $x^2 - 5x + 6 > 0$.],
  [
    *Step 1 — Factorise:* $(x - 2)(x - 3) > 0$.

    *Step 2 — Roots:* $2$ and $3$; the parabola opens upward.

    *Step 3 — Apply the rule* ($>$ means outside):

    $ x < 2 quad "or" quad x > 3 $
    *Step 4 — Justify with a test value.* At $x = 0$: $0 - 0 + 6 = 6 > 0$ ✓ (so the left ray is included); at $x = 2.5$: $6.25 - 12.5 + 6 = -0.25 < 0$ ✗ (so the middle is excluded).

  ],
)

#worked-example(
  6,
  "Between the roots",
  tier: "UTME STANDARD",
  [Solve $x^2 + x - 12 <= 0$.],
  [
    *Step 1 — Factorise:* $(x + 4)(x - 3) <= 0$.

    *Step 2 — Roots:* $-4$ and $3$.

    *Step 3 — $<=$ means between, endpoints included:*

    $ -4 <= x <= 3 $
    *Check with a midpoint*, $x = 0$: $-12 <= 0$ ✓

  ],
)

#worked-example(
  7,
  "Negative leading coefficient first",
  tier: "JAMB CHALLENGE",
  [Solve $6 - x - x^2 > 0$.],
  [
    *Step 1 — Reorder and multiply by $-1$ (reversing the symbol):*

    $ x^2 + x - 6 < 0 $
    *Step 2 — Factorise:* $(x + 3)(x - 2) < 0$.

    *Step 3 — Between the roots:*

    $ -3 < x < 2 $
    *Check at $x = 0$ in the ORIGINAL expression:* $6 > 0$ ✓

    *Warning.* If you reverse the inequality symbol but then forget you reversed it, you get the exact complement $x < -3$ or $x > 2$ — which is always an option.
  ],
)

#worked-example(
  8,
  "Sign chart with three factors",
  tier: "JAMB CHALLENGE",
  [Solve $(x + 2)(x - 1)(x - 3) <= 0$.],
  [
    *Step 1 — Mark the roots on a number line:* $-2$, $1$, $3$. Each is simple (odd multiplicity), so the sign alternates across each root.

    *Step 2 — Test the far right:* at $x = 4$, all three brackets are positive, so the product is positive.

    *Step 3 — Alternate leftward:* positive on $(3, infinity)$, negative on $(1, 3)$, positive on $(-2, 1)$, negative on $(-infinity, -2)$.

    *Step 4 — Read the $<= 0$ regions:*

    $ x <= -2 quad "or" quad 1 <= x <= 3 $
  ],
)

#diagram-fig("diagrams/ch05_sign_chart.svg",
  "The sign chart (wavy curve): signs alternate at each simple root, and the solution is read off the regions matching the required sign.")

#worked-example(
  9,
  "Inequality that is always true or never true",
  tier: "JAMB CHALLENGE",
  [Solve $x^2 - 2x + 5 > 0$.],
  [
    *Step 1 — Try to factorise:* the discriminant is $4 - 20 = -16 < 0$, so there are no real roots.

    *Step 2 — Complete the square:*

    $ x^2 - 2x + 5 = (x - 1)^2 + 4 >= 4 > 0 $
    *Step 3 — Conclusion.* The inequality holds for every real $x$; the solution set is $RR$ (all real numbers).

    *Exam phrasing.* "Show that $x^2 - 2x + 5 > 0$ for all real $x$" is answered exactly this way — complete the square and quote the non-negative square.
  ],
)

#worked-example(
  10,
  "Rational inequality",
  tier: "JAMB CHALLENGE",
  [Solve $(x - 1)/(x + 2) > 0$.],
  [
    *Step 1 — Identify where the expression changes sign:* the numerator vanishes at $x = 1$ and the denominator at $x = -2$ (excluded, since division by zero is undefined).

    *Step 2 — Sign chart with critical values $-2$ and $1$:*

    $ "At" x = 0: (-1)/(2) < 0 ; quad "at" x = 3: 2/5 > 0 ; quad "at" x = -3: (-4)/(-1) > 0 $
    *Step 3 — Read the positive regions:*

    $ x < -2 quad "or" quad x > 1 $
    *Critical rule.* Never multiply across the denominator — you do not know its sign. Use a sign chart instead.
  ],
)

== 5.3 Linear Inequalities in Two Variables

#concept-box("Shading a Feasible Region")[
  + Draw the boundary line (solid for $<=$, $>=$; dashed for $<$, $>$).
  + Test one convenient point that is *not* on the line — usually $(0, 0)$.
  + If the test point satisfies the inequality, shade its side; otherwise shade the other side.
  + The *feasible region* is the overlap of all shaded regions, including $x >= 0$ and $y >= 0$ when the variables are quantities.
]

#worked-example(
  11,
  "Describing a region",
  tier: "UTME STANDARD",
  [Describe the region defined by $x + y <= 4$, $x >= 0$, $y >= 0$.],
  [
    *Step 1 — Boundary:* the line $x + y = 4$ meets the axes at $(4, 0)$ and $(0, 4)$.

    *Step 2 — Test $(0, 0)$:* $0 + 0 <= 4$ ✓, so the origin's side is included.

    *Step 3 — Describe:* the triangular region with vertices $(0, 0)$, $(4, 0)$ and $(0, 4)$, boundary included.

    *Step 4 — Maximum of $x + 2y$ over this region* (a typical follow-on) occurs at a vertex: $(0,0) arrow.r 0$, $(4,0) arrow.r 4$, $(0,4) arrow.r 8$ — maximum $8$ at $(0, 4)$.

  ],
)

#diagram-fig("diagrams/ch05_feasible_region.svg",
  "The feasible region for $x >= 0$, $y >= 0$, $x + y <= 4$ and $2x + y <= 6$. Linear-programming questions always evaluate the objective at the vertices, so label them.")

#worked-example(
  12,
  "Finding the vertices",
  tier: "JAMB CHALLENGE",
  [Find the vertices of the region $x >= 0$, $y >= 0$, $x + y <= 4$, $2x + y <= 6$.],
  [
    *Step 1 — Intersections with the axes:*

    - $x + y = 4$: $(4, 0)$ and $(0, 4)$;
    - $2x + y = 6$: $(3, 0)$ and $(0, 6)$.
    *Step 2 — Intersection of the two boundary lines:* subtract ($x + y = 4$) from ($2x + y = 6$) to get $x = 2$, then $y = 2$.

    *Step 3 — Keep only the vertices of the overlap:* $(0, 0)$, $(3, 0)$, $(2, 2)$, $(0, 4)$.

    *Why $(4,0)$ and $(0,6)$ fail.* Both lie outside the other constraint (check: $2(4) + 0 = 8 > 6$), so they are not corners of the feasible region.

  ],
)

== 5.4 Chapter 5 Rapid-Revision Checklist

#table(
  columns: (1.05fr, 2.05fr, 1.5fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Inequality type],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Procedure],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Pitfall],

  ["$a x + b < c$"], ["Transpose; divide by $a$; reverse if $a < 0$."], [Reversal applies only to multiplication or division by a negative.],

  ["compound $l < f(x) < u$"], ["Apply the same operation to all three parts."], [Do not split into two separate inequalities unless the variable appears in two places.],

  ["$|x - h| < k$"], ["$-k < x - h < k$."], [For $>$ the answer is two rays, not an interval.],

  ["quadratic $< 0$, $a > 0$"], ["Factorise, then take the region between the roots."], ["Between" means a single interval.],

  ["quadratic $> 0$, $a > 0$"], ["Factorise, then take the regions outside the roots."], [Answer is a union of two intervals.],

  ["leading coefficient negative"], ["Multiply through by $-1$ and reverse."], [Then re-read which side the symbol now points.],

  ["rational inequality"], ["Sign chart on the critical values."], [Exclude values making the denominator zero.],

  ["inequality in two variables"], ["Draw the line, test $(0, 0)$, shade."], [Solid line for $<=$, dashed for $<$.],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch05.typ"
