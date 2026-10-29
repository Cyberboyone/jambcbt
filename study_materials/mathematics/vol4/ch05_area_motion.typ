#import "template.typ": *

#current-chapter.update("Chapter 5: Area Under Curves and Motion")
#pagebreak()

#chapter-opener(
  5,
  "Area Under Curves and Motion",
  subtitle: "Area Between a Curve and an Axis, Signed Areas and Splitting at Roots, Area Between Two Curves, the Trapezium Rule, and the Calculus of Motion",
  syllabus-ref: "Sec. IV • Topic 5",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Find the area between a curve and the $x$-axis by a definite integral.",
    "Recognise when a definite integral gives a negative value, and take the magnitude for the area.",
    "Split an integral at a root so that the two regions are treated separately.",
    "Find the area between two curves by integrating the upper minus the lower.",
    "Estimate an area with the trapezium rule.",
    "Move between displacement, velocity and acceleration by differentiating and integrating.",
  ),
  hotspots: (
    "\"Find the area bounded by the curve $y = ...$, the $x$-axis and the lines $x = a$, $x = b$\" — the standard question.",
    "\"Find the area enclosed between the curve and the line\" — two roots, then upper minus lower.",
    "\"Given $v = ...$, find the distance travelled in the first $n$ seconds\" — integrate the velocity.",
    "\"Given $s = ...$, find the acceleration at $t = ...$\" — differentiate twice.",
    "A region that crosses the $x$-axis — the raw integral is not the area until you split it.",
  ),
  trap-summary: "Three slips. (1) Reporting the value of a definite integral as an area when the region lies below the axis — the area is its magnitude. (2) Integrating across a root and adding the two signed parts, which partly cancels the area. (3) In motion questions, confusing velocity with acceleration, or distance with displacement.",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 Area Between a Curve and the $x$-Axis

The definite integral accumulates the area between a curve and the $x$-axis, strip by strip.

#diagram-fig("diagrams/ch04_area_under_curve.svg",
  "The shaded region between $y = f(x)$, the $x$-axis and the two ordinates $x = a$, $x = b$. Its area is $integral_a^b f(x) dif x$ — provided the curve stays above the axis.")

#formula-box("The Area Template")[
  $ A = integral_a^b y dif x quad "where" a "and" b "are the $x$-intercepts or the given ordinates" $

  #v(3pt)
  Three steps, always: (1) integrate; (2) substitute the upper limit; (3) subtract the lower limit. If the curve is below the axis, take the magnitude of the result.
]

#worked-example(
  1,
  "A parabola above the axis",
  tier: "FOUNDATION",
  [Find the area bounded by the curve $y = x^2$, the $x$-axis and the lines $x = 0$ and $x = 3$.],
  [
    *Step 1 — Integrate.*

    $ integral x^2 dif x = x^3/3 $

    *Step 2 — Substitute the limits.*

    $ [x^3/3]_0^3 = 27/3 - 0 = 9 $

    The area is $9$ square units.

    *The sense check.* The region is a curved triangle inside a $3$ by $9$ rectangle, so an area well under $27$ is right. $9$ is exactly one third of the bounding rectangle — a fact worth remembering about parabolas.
  ],
)

#worked-example(
  2,
  "A straight line",
  tier: "FOUNDATION",
  [Find the area under the line $y = 2x + 1$ between $x = 1$ and $x = 3$.],
  [
    *Integrate.*

    $ [x^2 + x]_1^3 $

    *Upper minus lower.*

    $ (9 + 3) - (1 + 1) = 12 - 2 = 10 $

    The area is $10$ square units.

    *Check by geometry.* The line rises from $y = 3$ at $x = 1$ to $y = 7$ at $x = 3$; the trapezium has area $1/2(3 + 7)(2) = 10$. The integral and the trapezium agree exactly, as they must for a straight line.
  ],
)

#worked-example(
  3,
  "A region symmetric about the axis",
  tier: "UTME STANDARD",
  [Find the area bounded by $y = 4 - x^2$ and the $x$-axis.],
  [
    *Step 1 — Where does the curve meet the axis?* Set $4 - x^2 = 0$:

    $ x = 2 "or" x = -2 $

    *Step 2 — Integrate between the roots.*

    $ [4x - x^3/3]_-2^2 $

    *Step 3 — Upper minus lower.*

    $ (8 - 8/3) - (-8 + 8/3) = 16/3 + 16/3 = 32/3 $

    The area is $32/3$ square units, about $10.67$.

    *The shortcut for a symmetric region.* The right half alone gives $integral_0^2 (4 - x^2) dif x = 16/3$; doubling it is quicker and safer than evaluating the negative lower limit.
  ],
)

#worked-example(
  4,
  "A curve that dips below the axis",
  tier: "UTME STANDARD",
  [Find the area between $y = x^2 - 4x$ and the $x$-axis from $x = 0$ to $x = 4$.],
  [
    *Step 1 — Note where the curve is.* The roots are $0$ and $4$, and between them the curve is below the axis.

    *Step 2 — Integrate.*

    $ [x^3/3 - 2x^2]_0^4 = (64/3 - 32) - 0 = -32/3 $

    *Step 3 — Take the magnitude.* The *integral* is $-32/3$; the *area* is $32/3$.

    *The distinction the examiner tests.* If the question says "evaluate the integral", the answer is negative. If it says "find the area", it is positive. Read which one is asked.
  ],
)

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 Crossing the Axis: Split the Region

When a curve crosses the axis inside the interval of integration, the parts above and below carry opposite signs and partly cancel. The area is the sum of the magnitudes, which means integrating each part separately.

#diagram-fig("diagrams/ch05_signed_area.svg",
  "The integral from $0$ to $3$ of $x^2 - 3x$ mixes a negative region with a positive one. The true area is the sum of the two separate magnitudes.")

#formula-box("The Splitting Rule")[
  $ A = |integral_a^c y dif x| + integral_c^b y dif x quad "where" c "is the root inside" (a, b) $

  #v(3pt)
  Find the root first, integrate each piece separately, take the magnitude of any negative piece, then add. Never integrate straight across a root and call the answer an area.
]

#worked-example(
  5,
  "Two regions, one curve",
  tier: "JAMB CHALLENGE",
  [Find the total area between $y = x^2 - 3x$, the $x$-axis, $x = 0$ and $x = 3$.],
  [
    *Step 1 — The root.* $x^2 - 3x = x(x - 3) = 0$, so the curve crosses at $x = 3$ — the upper limit. Between $0$ and $3$ it is below the axis throughout, so there is nothing to split.

    *Step 2 — Integrate.*

    $ [x^3/3 - 3x^2/2]_0^3 = (9 - 27/2) - 0 = -9/2 $

    *Step 3 — Take the magnitude.* The area is $9/2 = 4.5$ square units.

    *The lesson.* A root *on* a limit does not require splitting; only a root *strictly inside* the interval does. Check where the roots fall before dividing the work.
  ],
)

#worked-example(
  6,
  "A genuine split",
  tier: "JAMB CHALLENGE",
  [Find the area between $y = x^2 - 2x$ and the $x$-axis from $x = 0$ to $x = 3$.],
  [
    *Step 1 — Roots.* $x(x - 2) = 0$, so the curve crosses at $x = 0$ and $x = 2$; between $2$ and $3$ it is above the axis.

    *Step 2 — First piece, $0$ to $2$.*

    $ [x^3/3 - x^2]_0^2 = 8/3 - 4 = -4/3 quad "so the area is" 4/3 $

    *Step 3 — Second piece, $2$ to $3$.*

    $ [x^3/3 - x^2]_2^3 = (9 - 9) - (8/3 - 4) = 4/3 $

    *Step 4 — Add the magnitudes.*

    $ 4/3 + 4/3 = 8/3 $

    The total area is $8/3$ square units.

    *What the raw integral would have given.* $integral_0^3 y dif x = 0$ — the two signed regions cancel exactly. Answering $0$ to an area question is the classic error this section exists to prevent.
  ],
)

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 Area Between Two Curves

#diagram-fig("diagrams/ch05_area_between.svg",
  "Between the two intersections the upper curve stays above the lower one, so the area is the integral of (upper − lower).")

#formula-box("Upper Minus Lower")[
  $ A = integral_a^b ("upper curve" - "lower curve") dif x $

  #v(3pt)
  The limits $a$ and $b$ are the $x$-coordinates of the points where the curves meet: set the two expressions equal and solve.
]

#worked-example(
  7,
  "A line and a parabola",
  tier: "UTME STANDARD",
  [Find the area enclosed between the curve $y = x^2$ and the line $y = x$.],
  [
    *Step 1 — Where do they meet?*

    $ x^2 = x quad -> quad x(x - 1) = 0 quad -> quad x = 0 "or" x = 1 $

    *Step 2 — Which is on top?* Between $0$ and $1$, $x > x^2$ (try $x = 1/2$: $0.5 > 0.25$).

    *Step 3 — Integrate upper minus lower.*

    $ integral_0^1 (x - x^2) dif x = [x^2/2 - x^3/3]_0^1 = 1/2 - 1/3 = 1/6 $

    The area is $1/6$ square units.

    *The habit.* Always test one interior point to decide which curve is upper. Guessing from the equations is where the sign errors begin.
  ],
)

#worked-example(
  8,
  "Two intersections, one enclosure",
  tier: "JAMB CHALLENGE",
  [Find the area enclosed between $y = x^2 + 1$ and $y = 3 + x$.],
  [
    *Step 1 — Intersections.*

    $ x^2 + 1 = x + 3 quad -> quad x^2 - x - 2 = 0 quad -> quad (x - 2)(x + 1) = 0 $

    So $x = -1$ and $x = 2$.

    *Step 2 — Which is upper?* At $x = 0$: the line gives $3$, the parabola gives $1$. The line is upper.

    *Step 3 — Integrate.*

    $ integral_(-1)^2 [(x + 3) - (x^2 + 1)] dif x = integral_(-1)^2 (2 + x - x^2) dif x $

    $ = [2x + x^2/2 - x^3/3]_(-1)^2 $

    *Step 4 — Upper value.*

    $ 4 + 2 - 8/3 = 6 - 8/3 = 10/3 $

    *Step 5 — Lower value.*

    $ -2 + 1/2 + 1/3 = -7/6 $

    *Step 6 — Subtract.*

    $ 10/3 - (-7/6) = 20/6 + 7/6 = 27/6 = 9/2 $

    The area is $9/2 = 4.5$ square units.

    *Where the marks go.* The lower limit is negative, so the subtraction becomes an addition. That single sign is the difference between $9/2$ and $13/6$.
  ],
)

#worked-example(
  9,
  "The trapezium rule",
  tier: "UTME STANDARD",
  [Use the trapezium rule with four strips to estimate $integral_0^4 x^2 dif x$.],
  [
    *Step 1 — The ordinates.* With four strips of width $h = 1$, the $y$-values at $x = 0, 1, 2, 3, 4$ are

    $ 0, quad 1, quad 4, quad 9, quad 16 $

    *Step 2 — The rule.*

    $ A approx h/2 [y_0 + 2(y_1 + y_2 + y_3) + y_4] $

    *Step 3 — Substitute.*

    $ 1/2 [0 + 2(1 + 4 + 9) + 16] = 1/2 [28 + 16] = 22 $

    The estimate is $22$.

    *The exact value.* $integral_0^4 x^2 dif x = 64/3 approx 21.33$. The trapezium rule overestimates a curve that bends upward, and the error here is about $0.67$ — small, and always in the same direction.
  ],
)

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 The Calculus of Motion

Displacement, velocity and acceleration are a chain of derivatives, and the chain runs backwards as integrals.

#formula-box("The Motion Chain")[
  $ s(t) arrow.r.double v = dif s / dif t arrow.r.double a = dif v / dif t $

  #v(2pt)
  Reading left to right: differentiate displacement to get velocity, differentiate again for acceleration. Reading right to left: integrate acceleration for velocity, integrate again for displacement.

  #v(2pt)
  Distance travelled between two times is $integral v dif t$ — with any negative portion taken as a magnitude, exactly as with area.
]

#diagram-fig("diagrams/ch05_velocity_distance.svg",
  "A velocity–time graph. The area under the curve is the distance travelled; the part below the axis is motion backwards, and its magnitude still counts as distance.")

#worked-example(
  10,
  "Velocity to distance",
  tier: "UTME STANDARD",
  [A particle moves with velocity $v = 6t - 2$ m/s. Find the distance travelled in the first $2$ seconds.],
  [
    *Integrate the velocity.*

    $ s = integral (6t - 2) dif t = 3t^2 - 2t + c $

    *Step 2 — Distance from $t = 0$ to $t = 2$.*

    $ [3t^2 - 2t]_0^2 = (12 - 4) - 0 = 8 $

    The distance is $8$ m.

    *The sense check.* The velocity goes from $-2$ to $10$ m/s, crossing zero at $t = 1/3$. The backward part is small and the forward part large; a net distance of $8$ m is plausible.
  ],
)

#worked-example(
  11,
  "Acceleration from displacement",
  tier: "FOUNDATION",
  [The displacement of a particle is $s = t^3 - 6t^2 + 9t$ metres. Find its acceleration at $t = 2$ s.],
  [
    *Step 1 — Velocity.*

    $ v = dif s / dif t = 3t^2 - 12t + 9 $

    *Step 2 — Acceleration.*

    $ a = dif v / dif t = 6t - 12 $

    *Step 3 — Substitute $t = 2$.*

    $ a = 12 - 12 = 0 "m/s"^2 $

    The acceleration is zero at $t = 2$ — the particle is momentarily at constant speed, which is exactly where the velocity has its minimum.

    *The order of operations.* Differentiate twice, then substitute. Substituting into $s$ first gives a displacement, not an acceleration.
  ],
)

#worked-example(
  12,
  "Distance with a reversal",
  tier: "JAMB CHALLENGE",
  [A particle has velocity $v = 3t^2 - 6t$ m/s. Find the total distance travelled between $t = 0$ and $t = 3$.],
  [
    *Step 1 — When does it reverse?* $3t(t - 2) = 0$, so $v = 0$ at $t = 0$ and $t = 2$; the particle moves backwards between $0$ and $2$, forwards after.

    *Step 2 — First piece, $0$ to $2$.*

    $ [t^3 - 3t^2]_0^2 = (8 - 12) - 0 = -4 quad "distance" 4 "m" $

    *Step 3 — Second piece, $2$ to $3$.*

    $ [t^3 - 3t^2]_2^3 = (27 - 27) - (8 - 12) = 4 quad "distance" 4 "m" $

    *Step 4 — Add.*

    $ 4 + 4 = 8 "m" $

    *What the single integral would say.* $integral_0^3 v dif t = 0$ — the particle is back where it started, so its *displacement* is zero while its *distance* is $8$ m. Both answers are correct; only one answers the question asked.
  ],
)

// ============================================================================
// SECTION 5.5
// ============================================================================
== 5.5 Chapter 5 Rapid-Revision Checklist

#table(
  columns: (1.35fr, 1.85fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["area bounded by the curve and the $x$-axis"], [Integrate between the roots], [Find the roots first],
  ["area between $x = a$ and $x = b$"], [Definite integral of $y$], [Upper minus lower],
  ["curve below the axis"], [Take the magnitude], [The integral itself is negative],
  ["a root inside the interval"], [Split and add the magnitudes], [Never integrate straight across],
  ["area between two curves"], [Integrate upper minus lower], [Test a point to see which is upper],
  ["trapezium rule"], [$h/2[y_0 + 2(sum "middles") + y_n]$], [The end ordinates are not doubled],
  ["distance from velocity"], [Integrate $v$], [Split at any zero of $v$],
  ["acceleration from displacement"], [Differentiate twice], [Differentiate before substituting],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 5 in One Breath]
  #v(3pt)
  Area is a definite integral; when the region lies below the axis, or the curve crosses inside the interval, take magnitudes and add the pieces. Between two curves, integrate upper minus lower between the intersections. In motion, integration turns velocity into distance and differentiation turns displacement into velocity and then acceleration.
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: area, signed regions and the motion chain.", width: 62%)

// ============================================================================
// SECTION 5.6
// ============================================================================
== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Find the area bounded by $y = x^2$, the $x$-axis and the lines $x = 1$ and $x = 3$.], [$9$], [$26/3$], [$8$], [$27$])
#mcq(2, [Find the area enclosed between $y = x^2$ and $y = x$.], [$1/3$], [$1/2$], [$1$], [$1/6$])
#mcq(3, [A particle has velocity $v = 2t + 1$ m/s. Find the distance travelled in the first $3$ seconds.], [$12$ m], [$6$ m], [$9$ m], [$15$ m])
#mcq(4, [The displacement of a particle is $s = t^2 + 3t$. Find its acceleration at $t = 4$ s.], [$11$ m/s²], [$8$ m/s²], [$2$ m/s²], [$4$ m/s²])

#answer-key-grid(("B", "D", "A", "C"))

#include "drill_ch05.typ"
