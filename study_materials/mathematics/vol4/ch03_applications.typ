#import "template.typ": *

#current-chapter.update("Chapter 3: Applications of Differentiation")
#pagebreak()

#chapter-opener(
  3,
  "Applications of Differentiation",
  subtitle: "Gradients, Stationary Points, Maxima and Minima, the Second Derivative Test, Rates of Change, and Optimisation Word Problems",
  syllabus-ref: "Sec. IV • Topic 3",
  utme-weight: "2–3 Qs every year",
)

#focus-radar(
  objectives: (
    "Find the stationary points of a curve by solving $f'(x) = 0$.",
    "Classify each stationary point as a maximum or a minimum using the second derivative.",
    "Decide where a function is increasing and where it is decreasing.",
    "Solve a rate-of-change problem by chaining two derivatives together.",
    "Turn a word problem into a function of one variable, then optimise it.",
  ),
  hotspots: (
    "\"Find the coordinates of the turning points of $y = x^3 - 3x^2$\" — three marks, two lines.",
    "\"Determine the nature of each turning point\" — always via $f''$, never by guessing from the coefficients.",
    "\"The radius of a sphere increases at 2 cm/s; find the rate of increase of volume\" — the chain rule with respect to time.",
    "\"The sum of two numbers is 20; find the maximum product\" — one variable, one quadratic.",
    "\"For what values of $x$ is the function increasing?\" — solve $f'(x) > 0$.",
  ),
  trap-summary: "Three slips are common. (1) Solving $f'(x) = 0$ and stopping — the question asked for the *coordinates*, so each $x$ must be substituted back into the *original* function. (2) Declaring a maximum because the coefficient of $x^2$ is negative, without checking that the function is a quadratic. (3) In a rate problem, forgetting to multiply by the rate at which the inner quantity changes.",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 Stationary Points

A *stationary point* is a point where the curve is momentarily flat — the tangent is horizontal, so the gradient is zero.

$ f'(x) = 0 quad "at every stationary point" $

There are three kinds: a maximum (the curve turns from rising to falling), a minimum (falling to rising), and a point of inflexion (flat, but still rising or falling on both sides).

#diagram-fig("diagrams/ch03_curve_features.svg",
  "A cubic with a maximum at $x = 1$, a minimum at $x = 3$, and a point of inflexion midway. The derivative vanishes at all three; only the second derivative separates them.")

#formula-box("The Four Steps")[
  + Differentiate to get $f'(x)$.
  + Solve $f'(x) = 0$ for the $x$-coordinates.
  + Substitute each $x$ into the *original* $f(x)$ for the $y$-coordinates.
  + Classify each point with $f''(x)$: negative means maximum, positive means minimum, zero needs a table of signs.
]

#diagram-fig("diagrams/ch03_stationary_flow.svg",
  "The same four steps as a decision path. Step 3 is where most marks are lost — the coordinates require the original function, not the derivative.")

#concept-box("The Second Derivative Test")[
  $ f''(x) < 0 quad -> quad "maximum" $

  $ f''(x) > 0 quad -> quad "minimum" $

  $ f''(x) = 0 quad -> quad "no conclusion; test the sign of" f' "either side" $

  #v(3pt)
  *Why it works.* The second derivative measures how the gradient itself is changing. At a maximum the gradient is falling (from positive to negative), so $f''$ is negative. At a minimum the gradient is rising, so $f''$ is positive.
]

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 Finding and Classifying Turning Points

#worked-example(
  1,
  "A quadratic",
  tier: "FOUNDATION",
  [Find the turning point of $y = x^2 - 6x + 5$ and determine its nature.],
  [
    *Step 1 — Differentiate and solve.*

    $ dif y / dif x = 2x - 6 = 0 quad -> quad x = 3 $

    *Step 2 — The $y$-coordinate, from the original function.*

    $ y = 9 - 18 + 5 = -4 quad "so the point is" (3, -4) $

    *Step 3 — Classify.* $d^2 y \/ d x^2 = 2 > 0$, so the point is a minimum.

    *The check.* Completing the square gives $y = (x - 3)^2 - 4$, whose lowest value is $-4$ at $x = 3$. The calculus and the algebra agree.
  ],
)

#worked-example(
  2,
  "A cubic with two turning points",
  tier: "UTME STANDARD",
  [Find the coordinates of the turning points of $y = x^3 - 3x^2$, and determine their nature.],
  [
    *Step 1 — Differentiate and factorise.*

    $ dif y / dif x = 3x^2 - 6x = 3x(x - 2) = 0 quad -> quad x = 0 "or" x = 2 $

    *Step 2 — The $y$-coordinates.*

    $ x = 0: y = 0 quad x = 2: y = 8 - 12 = -4 $

    *Step 3 — The second derivative.* $d^2 y \/ d x^2 = 6x - 6$.

    $ "At" x = 0: -6 < 0 quad "maximum at" (0, 0) $

    $ "At" x = 2: 6 > 0 quad "minimum at" (2, -4) $

    *The answer.* $(0, 0)$ is a maximum and $(2, -4)$ is a minimum.

    *The habit.* Factorise $f'(x)$ completely; an unfactorised quadratic hides one of the two roots, and half the marks with it.
  ],
)

#worked-example(
  3,
  "Two symmetric turning points",
  tier: "UTME STANDARD",
  [Find the stationary points of $y = 12x - x^3$ and classify them.],
  [
    *Step 1.*

    $ dif y / dif x = 12 - 3x^2 = 0 quad -> quad x^2 = 4 quad -> quad x = 2 "or" x = -2 $

    *Step 2 — $y$-coordinates.*

    $ x = 2: y = 24 - 8 = 16 quad x = -2: y = -24 + 8 = -16 $

    *Step 3 — Second derivative.* $d^2 y \/ d x^2 = -6x$.

    $ "At" x = 2: -12 < 0 quad "maximum at" (2, 16) $

    $ "At" x = -2: 12 > 0 quad "minimum at" (-2, -16) $

    *The shape to picture.* A falling cubic: up to the maximum on the left, down through the minimum on the right. Sketching the two points before classifying them makes the second derivative a confirmation rather than a guess.
  ],
)

#worked-example(
  4,
  "A point of inflexion",
  tier: "JAMB CHALLENGE",
  [Find the stationary point of $y = x^3$ and show that it is neither a maximum nor a minimum.],
  [
    *Step 1.* $dif y / dif x = 3x^2 = 0$, so $x = 0$ and the point is $(0, 0)$.

    *Step 2 — Second derivative.* $d^2 y \/ d x^2 = 6x$, which is $0$ at $x = 0$. The test is inconclusive.

    *Step 3 — Sign of $f'$ either side.* $f'(x) = 3x^2$ is positive for $x < 0$ *and* for $x > 0$. The curve rises, flattens at the origin, then rises again.

    *The conclusion.* The stationary point is a point of inflexion — a momentary pause in an always-increasing curve.

    *Why the exam loves it.* It is the one case where "solve $f'(x) = 0$ and check $f''$" gives no answer, and it tests whether you know the test can fail.
  ],
)

#worked-example(
  5,
  "Where is the function increasing?",
  tier: "UTME STANDARD",
  [Find the values of $x$ for which $y = x^2 - 4x + 7$ is decreasing.],
  [
    *Step 1 — Differentiate.*

    $ dif y / dif x = 2x - 4 $

    *Step 2 — Decreasing means $f'(x) < 0$.*

    $ 2x - 4 < 0 quad -> quad x < 2 $

    The function is decreasing for $x < 2$ and increasing for $x > 2$.

    *The link to the turning point.* The change happens exactly at $x = 2$, which is where $f'(x) = 0$. Increasing/decreasing questions are turning-point questions with an inequality instead of an equation.
  ],
)

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Rates of Change

If a quantity $y$ depends on $x$, and $x$ depends on time, then $y$ depends on time through $x$. The chain rule links the three rates:

#formula-box("The Chain Rule for Rates")[
  $ dif y / dif t = (dif y / dif x) times (dif x / dif t) $

  #v(2pt)
  Multiply the rate you can compute by the rate you were given. The units check the work: cm³/cm times cm/s gives cm³/s.
]

#diagram-fig("diagrams/ch03_rate_chain.svg",
  "Volume depends on radius, and radius depends on time. The chain of the two derivatives gives how volume depends on time.")

#worked-example(
  6,
  "A growing sphere",
  tier: "UTME STANDARD",
  [
    The radius of a sphere increases at $0.5$ cm/s. Find the rate at which the volume is increasing when the radius is $3$ cm.
  ],
  [
    *Step 1 — The volume formula.* $V = 4/3 pi r^3$.

    *Step 2 — Differentiate with respect to $r$.*

    $ dif V / dif r = 4 pi r^2 $

    *Step 3 — At $r = 3$.* $dif V / dif r = 36 pi$ cm².

    *Step 4 — Chain the rates.*

    $ dif V / dif t = 36 pi times 0.5 = 18 pi approx 56.5 "cm"^3 "/s" $

    *The answer.* $18 pi$ cm³/s, about $56.5$ cm³/s.

    *The trap.* Using $4/3 pi r^3$ directly and multiplying by $0.5$ gives a volume, not a rate. The derivative must come first.
  ],
)

#worked-example(
  7,
  "A growing cube",
  tier: "UTME STANDARD",
  [The side of a cube increases at $0.02$ cm/s. Find the rate of increase of its volume when the side is $10$ cm.],
  [
    *Step 1.* $V = s^3$, so $dif V / dif s = 3s^2$.

    *Step 2 — At $s = 10$.* $3(100) = 300$ cm².

    *Step 3 — Chain.*

    $ dif V / dif t = 300 times 0.02 = 6 "cm"^3 "/s" $

    *The sense check.* A cube of side $10$ cm has three faces of area $100$ cm² growing outward at $0.02$ cm/s: $3 times 100 times 0.02 = 6$. The calculus and the picture agree.
  ],
)

#worked-example(
  8,
  "A growing circle",
  tier: "JAMB CHALLENGE",
  [The radius of a circle increases at $2$ cm/s. Find the rate of increase of the area when the radius is $5$ cm.],
  [
    *Step 1.* $A = pi r^2$, so $dif A / dif r = 2 pi r$.

    *Step 2 — At $r = 5$.* $dif A / dif r = 10 pi$ cm.

    *Step 3 — Chain.*

    $ dif A / dif t = 10 pi times 2 = 20 pi "cm"^2 "/s" $

    The area grows at $20 pi approx 62.8$ cm²/s.

    *The unit check.* cm (from the derivative) times cm/s (the given rate) gives cm²/s — an area rate. If your units come out as cm³/s, you have differentiated the wrong formula.
  ],
)

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 Optimisation Word Problems

Every optimisation question follows the same three moves: write the quantity to be optimised in terms of one variable, differentiate it, and set the derivative to zero.

#worked-example(
  9,
  "Maximum product from a fixed sum",
  tier: "UTME STANDARD",
  [The sum of two numbers is $20$. Find the two numbers whose product is a maximum, and the maximum product.],
  [
    *Step 1 — One variable.* Let the numbers be $x$ and $20 - x$. Then

    $ P = x(20 - x) = 20x - x^2 $

    *Step 2 — Differentiate and solve.*

    $ dif P / dif x = 20 - 2x = 0 quad -> quad x = 10 $

    *Step 3 — The second number and the product.* The other number is $20 - 10 = 10$, and

    $ P = 10 times 10 = 100 $

    *Step 4 — Confirm.* $d^2 P \/ d x^2 = -2 < 0$, so it is a maximum.

    *The general fact.* For a fixed sum, the product is greatest when the two numbers are equal. The calculus proves what the symmetry suggests.
  ],
)

#worked-example(
  10,
  "Maximum area from a fixed perimeter",
  tier: "UTME STANDARD",
  [A rectangle has perimeter $40$ cm. Find the dimensions that give the greatest area, and that area.],
  [
    *Step 1 — One variable.* Let the length be $x$; then the width is $20 - x$ and

    $ A = x(20 - x) = 20x - x^2 $

    *Step 2 — Differentiate.*

    $ dif A / dif x = 20 - 2x = 0 quad -> quad x = 10 $

    *Step 3 — Interpret.* Length $10$ cm, width $10$ cm — a square — and the area is $100$ cm².

    *Step 4 — Confirm.* $d^2 A \/ d x^2 = -2 < 0$: a maximum.

    *The exam phrasing.* The question usually asks for the *dimensions* as well as the area. Answering "100" alone loses a mark when "10 cm by 10 cm" was requested.
  ],
)

#worked-example(
  11,
  "Minimum perimeter for a fixed area",
  tier: "JAMB CHALLENGE",
  [A rectangle has area $100$ cm². Find the dimensions that give the least perimeter.],
  [
    *Step 1 — One variable.* Let the length be $x$; the width is $100/x$, so

    $ P = 2x + 200/x = 2x + 200x^(-1) $

    *Step 2 — Differentiate.*

    $ dif P / dif x = 2 - 200x^(-2) = 0 quad -> quad 200/x^2 = 2 quad -> quad x^2 = 100 quad -> quad x = 10 $

    *Step 3 — Interpret.* Length $10$ cm, width $100/10 = 10$ cm: a square, with perimeter $40$ cm.

    *Step 4 — Confirm.* $d^2 P \/ d x^2 = 400 x^(-3)$, which is positive at $x = 10$, so this is a minimum.

    *Why the square keeps appearing.* Among all rectangles with a given area, the square has the least perimeter; among all with a given perimeter, the square has the greatest area. Both facts are one derivative away.
  ],
)

#worked-example(
  12,
  "A cubic in context",
  tier: "JAMB CHALLENGE",
  [Find the maximum and minimum values of $y = 2x^3 - 9x^2 + 12x$ and state where each occurs.],
  [
    *Step 1 — Differentiate.*

    $ dif y / dif x = 6x^2 - 18x + 12 = 6(x^2 - 3x + 2) = 6(x - 1)(x - 2) $

    *Step 2 — Solve.*

    $ x = 1 "or" x = 2 $

    *Step 3 — Values.*

    $ x = 1: y = 2 - 9 + 12 = 5 quad x = 2: y = 16 - 36 + 24 = 4 $

    *Step 4 — Classify.* $d^2 y \/ d x^2 = 12x - 18$. At $x = 1$ this is $-6$ (maximum); at $x = 2$ it is $6$ (minimum).

    *The answer.* Maximum value $5$ at $x = 1$; minimum value $4$ at $x = 2$.

    *The trap in "value".* The maximum *value* is $5$, not $1$. The question distinguishes the value of $y$ from the value of $x$, and options usually include both to catch the careless.
  ],
)

// ============================================================================
// SECTION 3.5
// ============================================================================
== 3.5 Chapter 3 Rapid-Revision Checklist

#table(
  columns: (1.35fr, 1.85fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["turning point / stationary point"], [$f'(x) = 0$], [Substitute back into $f$, not $f'$],
  ["maximum or minimum"], [Sign of $f''$], [Zero means the test fails],
  ["increasing / decreasing"], [$f'(x) > 0$ or $< 0$], [Solve the inequality, do not just find the root],
  ["rate of change with time"], [Chain rule], [Differentiate first, then substitute, then multiply],
  ["maximum product, fixed sum"], [One variable, then $P' = 0$], [Equal numbers give the maximum],
  ["maximum area, fixed perimeter"], [$A = x(20 - x)$], [Square is the answer, but show the working],
  ["minimum perimeter, fixed area"], [$P = 2x + 2A/x$], [Check $f'' > 0$],
  ["maximum value of the function"], [Substitute $x$ into $y$], [The value is $y$, not $x$],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 3 in One Breath]
  #v(3pt)
  Stationary points are where $f'(x) = 0$; the second derivative says whether each is a maximum or a minimum, and a zero second derivative means you must test the signs yourself. Rates of change are the chain rule applied to time, and every optimisation word problem is the same three moves: one variable, differentiate, set to zero.
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: stationary points, the second derivative test and related rates.", width: 62%)

// ============================================================================
// SECTION 3.6
// ============================================================================
== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Find the $x$-coordinate of the turning point of $y = x^2 - 8x + 3$.], [$8$], [$-4$], [$2$], [$4$])
#mcq(2, [The point $(2, -4)$ is a turning point of $y = x^3 - 3x^2$. What kind of point is it?], [a minimum], [a maximum], [a point of inflexion], [neither])
#mcq(3, [The radius of a sphere increases at $1$ cm/s. Find the rate of increase of the volume when the radius is $2$ cm.], [$4 pi$ cm³/s], [$16 pi$ cm³/s], [$8 pi$ cm³/s], [$32 pi$ cm³/s])
#mcq(4, [The sum of two numbers is $24$. Find the maximum product.], [$48$], [$120$], [$144$], [$72$])

#answer-key-grid(("D", "A", "B", "C"))

#include "drill_ch03.typ"
