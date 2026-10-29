#import "template.typ": *

#current-chapter.update("Chapter 3: Quadratic Equations & Graphs")
#pagebreak()

#chapter-opener(
  3,
  "Quadratic Equations & Quadratic Graphs",
  subtitle: "Factorisation, Completing the Square, the Quadratic Formula, Discriminants, Sums and Products of Roots, Equations from Roots & Parabola Geometry",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 3",
  utme-weight: "1 – 2 Questions Every Year (100% Frequency)",
)

#focus-radar(
  objectives: (
    "Solve any quadratic equation by factorisation, by completing the square, and by formula.",
    "Use the discriminant $Delta = b^2 - 4 a c$ to determine the nature and number of real roots.",
    "Form a quadratic equation whose roots are given, or are related to the roots of a given equation.",
    "Use the sum and product of roots ($alpha + beta = -b/a$, $alpha beta = c/a$) without solving.",
    "Read the vertex, axis of symmetry, intercepts and range from a quadratic graph.",
    "Solve quadratic inequalities and word problems modelled by quadratics.",
  ),
  hotspots: (
    "Equations in disguise: $x^4 - 5x^2 + 4 = 0$, $2^(2x) - 5(2^x) + 4 = 0$, $x + 6/sqrt(x) = 5$.",
    "Forming an equation from roots such as $alpha + 1$ and $beta + 1$ — expand $(alpha + 1) + (beta + 1)$ and $(alpha + 1)(beta + 1)$.",
    "Discriminant questions: 'find $k$ for which the equation has equal roots'.",
    "Completing the square to obtain the maximum or minimum value.",
    "Turning-word-problems into quadratics (area, consecutive integers, age, speed–time).",
  ),
  trap-summary: "Three recurring losses: (1) dividing an equation by $x$ and thereby destroying the root $x = 0$; (2) forgetting that a quadratic in $x^2$ has four solutions; (3) writing the vertex as $(h, k)$ with the wrong sign because $y = a(x - h)^2 + k$ contains a *minus* $h$.",
)

// ============================================================================
== 3.1 The Standard Form and the Three Methods

Every quadratic can be written as

$ a x^2 + b x + c = 0 , quad a != 0 $

and the three solution methods are not alternatives to memorise — they are three views of one object. Factorisation reveals the roots; completing the square reveals the vertex; the formula reveals everything and always works.

#diagram-fig("diagrams/ch03_three_forms.svg",
  "The same parabola written in standard, factorised and vertex form. Each form answers a different exam question instantly.")

=== Method 1: Factorisation

Find two numbers whose product is $a c$ and whose sum is $b$, split the middle term, then group.

#worked-example(
  1,
  "Factorising with $a = 1$",
  tier: "FOUNDATION",
  [Solve $x^2 - 7x + 12 = 0$.],
  [
    *Step 1 — Two numbers with product $12$ and sum $-7$:* they are $-3$ and $-4$.

    *Step 2 — Split and group:*

    $ x^2 - 3x - 4x + 12 = 0 quad arrow.r.double quad x(x - 3) - 4(x - 3) = 0 quad arrow.r.double quad (x - 3)(x - 4) = 0 $
    *Step 3 — Zero-product rule:*

    $ x = 3 quad "or" quad x = 4 $
  ],
)

#worked-example(
  2,
  "Factorising with $a != 1$",
  tier: "UTME STANDARD",
  [Solve $6x^2 + x - 2 = 0$.],
  [
    *Step 1 — Product $a c = -12$, sum $b = 1$:* the numbers are $4$ and $-3$.

    *Step 2 — Split and group:*

    $ 6x^2 + 4x - 3x - 2 = 0 quad arrow.r.double quad 2x(3x + 2) - 1(3x + 2) = 0 quad arrow.r.double quad (2x - 1)(3x + 2) = 0 $
    *Step 3 — Solve:*

    $ x = 1/2 quad "or" quad x = -2/3 $
    *Check.* $6(1/4) + 1/2 - 2 = 1.5 + 0.5 - 2 = 0$ ✓

  ],
)

=== Method 2: Completing the Square

$ a x^2 + b x + c = a(x + b/(2a))^2 + c - b^2/(4a) $

For $a = 1$ this is the familiar $x^2 + b x = (x + b/2)^2 - b^2/4$.

#diagram-fig("diagrams/ch03_completing_square.svg",
  "Completing the square as geometry: the $x^2$ square plus two $frac(b,2) x$ strips are completed by adding the small square of side $b/2$, whose area is $b^2/4$.")

#worked-example(
  3,
  "Completing the square with $a = 1$",
  tier: "UTME STANDARD",
  [Solve $x^2 + 6x + 2 = 0$ by completing the square.],
  [
    *Step 1 — Move the constant:* $x^2 + 6x = -2$.

    *Step 2 — Add $(b/2)^2 = 9$ to both sides:*

    $ x^2 + 6x + 9 = 7 quad arrow.r.double quad (x + 3)^2 = 7 $
    *Step 3 — Square root both sides, keeping $plus.minus$:*

    $ x + 3 = plus.minus sqrt(7) quad arrow.r.double quad x = -3 plus.minus sqrt(7) $
    *Step 4 — State both roots:* $x = -3 + sqrt(7) approx -0.35$ and $x = -3 - sqrt(7) approx -5.65$.

  ],
)

#worked-example(
  4,
  "Completing the square with $a != 1$",
  tier: "JAMB CHALLENGE",
  [Express $2x^2 - 8x + 11$ in the form $a(x - h)^2 + k$ and hence state its minimum value.],
  [
    *Step 1 — Take out the coefficient of $x^2$:*

    $ 2x^2 - 8x + 11 = 2(x^2 - 4x) + 11 $
    *Step 2 — Complete inside the bracket:* $x^2 - 4x = (x - 2)^2 - 4$.

    *Step 3 — Restore the factor of $2$:*

    $ 2[(x - 2)^2 - 4] + 11 = 2(x - 2)^2 - 8 + 11 = 2(x - 2)^2 + 3 $
    *Step 4 — Read the minimum.* Since $(x - 2)^2 >= 0$, the expression is at least $3$, attained at $x = 2$.

    *Minimum value $= 3$ at $x = 2$.*
  ],
)

#worked-example(
  5,
  "Maximum value of a downward parabola",
  tier: "JAMB CHALLENGE",
  [Find the maximum value of $y = 5 - 4x - x^2$ and the value of $x$ at which it occurs.],
  [
    *Step 1 — Rewrite in descending powers:* $y = -x^2 - 4x + 5$.

    *Step 2 — Complete the square:*

    $ y = -[x^2 + 4x] + 5 = -[(x + 2)^2 - 4] + 5 = -(x + 2)^2 + 9 $
    *Step 3 — Interpret.* Since $-(x + 2)^2 <= 0$, the maximum is $9$, at $x = -2$ (note the sign: $y = -(x + 2)^2 + 9 = -(x - (-2))^2 + 9$, so $h = -2$).

  ],
)

=== Method 3: The Quadratic Formula

#formula-box("The Quadratic Formula and the Discriminant")[
  $ x = (-b plus.minus sqrt(b^2 - 4 a c))/(2a) , quad Delta = b^2 - 4 a c $
  - $Delta > 0$: two distinct real roots.
  - $Delta = 0$: exactly one real (repeated) root, $x = -b/(2a)$.
  - $Delta < 0$: no real roots (the parabola does not meet the x-axis).
  #v(2pt)
  Also useful: $x_1 + x_2 = -b/a$ and $x_1 x_2 = c/a$.
]

#diagram-fig("diagrams/ch03_discriminant_gallery.svg",
  "The discriminant gallery: two crossings, one tangency, no crossing. Exam phrasing: 'two distinct roots', 'equal roots', 'no real roots'.")

#worked-example(
  6,
  "Formula with a non-perfect square",
  tier: "UTME STANDARD",
  [Solve $2x^2 - 6x + 1 = 0$, leaving your answer in surd form.],
  [
    *Step 1 — Identify coefficients:* $a = 2$, $b = -6$, $c = 1$.

    *Step 2 — Discriminant:* $Delta = 36 - 8 = 28$.

    *Step 3 — Substitute:*

    $ x = (6 plus.minus sqrt(28))/4 = (6 plus.minus 2 sqrt(7))/4 = (3 plus.minus sqrt(7))/2 $
    *Step 4 — Simplify the surd separately first.* $sqrt(28) = 2 sqrt(7)$; cancelling the common factor $2$ avoids a messy decimal.

  ],
)

#worked-example(
  7,
  "Deciding by discriminant",
  tier: "JAMB CHALLENGE",
  [Find the values of $k$ for which $x^2 + k x + 9 = 0$ has equal roots.],
  [
    *Step 1 — Equal roots means $Delta = 0$:*

    $ k^2 - 4(1)(9) = 0 quad arrow.r.double quad k^2 = 36 $
    *Step 2 — Both signs:*

    $ k = plus.minus 6 $
    *Why both.* A negative $k$ simply flips the linear term; the parabola still touches the axis. Reporting only $k = 6$ is the most common lost mark in this topic.

  ],
)

#worked-example(
  8,
  "Discriminant with a range of values",
  tier: "JAMB CHALLENGE",
  [Find the range of values of $p$ for which $2x^2 + p x + 8 = 0$ has no real roots.],
  [
    *Step 1 — No real roots means $Delta < 0$:*

    $ p^2 - 4(2)(8) < 0 quad arrow.r.double quad p^2 < 64 $
    *Step 2 — Solve the inequality:*

    $ -8 < p < 8 $
    *Step 3 — State in interval form:* $p in (-8, 8)$.

  ],
)

== 3.2 Sum and Product of Roots

#formula-box("Root–Coefficient Relations")[
  For $a x^2 + b x + c = 0$ with roots $alpha$ and $beta$:
  $ alpha + beta = -b/a , quad alpha beta = c/a $
  Consequences worth memorising:
  $ alpha^2 + beta^2 = (alpha + beta)^2 - 2 alpha beta , quad (alpha - beta)^2 = (alpha + beta)^2 - 4 alpha beta $
  $ 1/alpha + 1/beta = (alpha + beta)/(alpha beta) , quad alpha/beta + beta/alpha = (alpha^2 + beta^2)/(alpha beta) $
]

#diagram-fig("diagrams/ch03_root_coefficient_map.svg",
  "Coefficients in, roots out — and the reverse. Notice the minus sign in the sum, which is where most candidates slip.")

#worked-example(
  9,
  "Sum and product without solving",
  tier: "FOUNDATION",
  [If $alpha$ and $beta$ are the roots of $2x^2 - 5x + 3 = 0$, find $alpha + beta$ and $alpha beta$.],
  [
    *Step 1 — Read coefficients:* $a = 2$, $b = -5$, $c = 3$.

    *Step 2 — Apply:*

    $ alpha + beta = -(-5)/2 = 5/2 , quad alpha beta = 3/2 $
    *Check.* The roots are $1$ and $3/2$: sum $5/2$ ✓ product $3/2$ ✓

  ],
)

#worked-example(
  10,
  "Symmetric expression",
  tier: "UTME STANDARD",
  [If $alpha$ and $beta$ are roots of $x^2 - 4x + 1 = 0$, find $alpha^2 + beta^2$.],
  [
    *Step 1 — Sum and product:* $alpha + beta = 4$, $alpha beta = 1$.

    *Step 2 — Use the identity:*

    $ alpha^2 + beta^2 = (alpha + beta)^2 - 2 alpha beta = 16 - 2 = 14 $
    *Warning.* $alpha^2 + beta^2$ is *not* $(alpha + beta)^2$: the cross term $2 alpha beta$ must be removed.
  ],
)

#worked-example(
  11,
  "Building an equation from transformed roots",
  tier: "JAMB CHALLENGE",
  [If $alpha$ and $beta$ are the roots of $x^2 - 3x + 2 = 0$, form the equation whose roots are $alpha + 1$ and $beta + 1$.],
  [
    *Step 1 — Get the original sum and product:* $alpha + beta = 3$, $alpha beta = 2$.

    *Step 2 — New sum:*

    $ (alpha + 1) + (beta + 1) = alpha + beta + 2 = 5 $
    *Step 3 — New product:*

    $ (alpha + 1)(beta + 1) = alpha beta + alpha + beta + 1 = 2 + 3 + 1 = 6 $
    *Step 4 — Build $x^2 - ("sum")x + ("product") = 0$:*

    $ x^2 - 5x + 6 = 0 $
    *Check.* The original roots are $1$ and $2$; the new roots $2$ and $3$ give $x^2 - 5x + 6$ ✓

  ],
)

#worked-example(
  12,
  "Reciprocal roots",
  tier: "JAMB CHALLENGE",
  [If $alpha$ and $beta$ are roots of $3x^2 - 7x + 2 = 0$, form the equation with roots $1/alpha$ and $1/beta$.],
  [
    *Step 1 — Original relations:* $alpha + beta = 7/3$, $alpha beta = 2/3$.

    *Step 2 — New sum:*

    $ 1/alpha + 1/beta = (alpha + beta)/(alpha beta) = (7/3)/(2/3) = 7/2 $
    *Step 3 — New product:*

    $ 1/(alpha beta) = 1/(2/3) = 3/2 $
    *Step 4 — Equation:*

    $ x^2 - 7/2 x + 3/2 = 0 quad arrow.r.double quad 2x^2 - 7x + 3 = 0 $
    *Shortcut.* Reversing the coefficients of $a x^2 + b x + c$ gives the equation with reciprocal roots: here $2x^2 - 7x + 3$ ✓
  ],
)

#worked-example(
  13,
  "Roots in a given ratio or with a condition",
  tier: "JAMB CHALLENGE",
  [The roots of $x^2 - 6x + k = 0$ differ by $2$. Find $k$.],
  [
    *Step 1 — Sum and product in terms of $k$:* $alpha + beta = 6$, $alpha beta = k$.

    *Step 2 — Use the difference:* $(alpha - beta)^2 = (alpha + beta)^2 - 4 alpha beta = 36 - 4k$.

    *Step 3 — Set the difference equal to $2$:*

    $ 4 = 36 - 4k quad arrow.r.double quad 4k = 32 quad arrow.r.double quad k = 8 $
    *Check.* $x^2 - 6x + 8 = (x - 2)(x - 4)$, roots $2$ and $4$, difference $2$ ✓

  ],
)

== 3.3 Quadratic Graphs

#diagram-fig("diagrams/ch03_parabola_features.svg",
  "Every quadratic-graph question in UTME asks about one of four features: the roots, the vertex, the axis of symmetry, or the y-intercept.")

#concept-box("Reading $y = a(x - h)^2 + k$")[
  - *Vertex:* $(h, k)$. In $y = (x + 3)^2 - 5$ the vertex is $(-3, -5)$, because $x + 3 = x - (-3)$.
  - *Axis of symmetry:* the vertical line $x = h$.
  - *Opening:* upward if $a > 0$ (minimum), downward if $a < 0$ (maximum).
  - *y-intercept:* set $x = 0$; it always equals $c$ in standard form.
  - *Roots:* set $y = 0$. The number of roots is decided by the discriminant.
]

#worked-example(
  14,
  "From graph features to equation",
  tier: "UTME STANDARD",
  [A parabola has its vertex at $(2, -3)$ and passes through $(0, 5)$. Find its equation in the form $y = a x^2 + b x + c$.],
  [
    *Step 1 — Vertex form:* $y = a(x - 2)^2 - 3$.

    *Step 2 — Use the point $(0, 5)$:*

    $ 5 = a(0 - 2)^2 - 3 = 4a - 3 quad arrow.r.double quad a = 2 $
    *Step 3 — Expand:*

    $ y = 2(x - 2)^2 - 3 = 2(x^2 - 4x + 4) - 3 = 2x^2 - 8x + 5 $
  ],
)

#worked-example(
  15,
  "Range of a quadratic function",
  tier: "JAMB CHALLENGE",
  [Find the range of $f(x) = x^2 - 4x + 7$ for real $x$.],
  [
    *Step 1 — Complete the square:*

    $ f(x) = (x - 2)^2 + 3 $
    *Step 2 — Minimum.* The least value is $3$, at $x = 2$; the parabola opens upward.

    *Step 3 — State the range:*

    $ f(x) >= 3 , quad "i.e." quad "range" = [3, infinity) $
  ],
)

#worked-example(
  16,
  "Quadratic in disguise (substitution)",
  tier: "JAMB CHALLENGE",
  [Solve $x^4 - 5x^2 + 4 = 0$.],
  [
    *Step 1 — Let $u = x^2$:* the equation becomes $u^2 - 5u + 4 = 0$.

    *Step 2 — Factorise:* $(u - 1)(u - 4) = 0$, so $u = 1$ or $u = 4$.

    *Step 3 — Convert back:*

    $ x^2 = 1 arrow.r x = plus.minus 1 ; quad x^2 = 4 arrow.r x = plus.minus 2 $
    *Four roots: $x = 1, -1, 2, -2$.* A degree-$4$ equation has *four* roots counting multiplicity — never stop at two.
  ],
)

#worked-example(
  17,
  "Exponential disguise",
  tier: "JAMB CHALLENGE",
  [Solve $2^(2x) - 5(2^x) + 4 = 0$.],
  [
    *Step 1 — Let $y = 2^x$; then $2^(2x) = y^2$:*

    $ y^2 - 5y + 4 = 0 quad arrow.r.double quad (y - 1)(y - 4) = 0 $
    *Step 2 — Reject nothing yet:* $y = 1$ or $y = 4$, both positive, so both are admissible.

    *Step 3 — Return to $x$:*

    $ 2^x = 1 arrow.r x = 0 ; quad 2^x = 4 arrow.r x = 2 $
    *Critical rule.* Since $2^x > 0$ for all real $x$, any *negative* value of $y$ must be rejected — the reason this substitution is safe is that exponentials are never negative.
  ],
)

#worked-example(
  18,
  "Word problem: consecutive integers",
  tier: "UTME STANDARD",
  [The product of two consecutive positive integers is $156$. Find the integers.],
  [
    *Step 1 — Define:* let the integers be $n$ and $n + 1$.

    *Step 2 — Translate:*

    $ n(n + 1) = 156 quad arrow.r.double quad n^2 + n - 156 = 0 $
    *Step 3 — Factorise:* two numbers with product $-156$ and sum $1$: $13$ and $-12$.

    $ (n + 13)(n - 12) = 0 quad arrow.r.double quad n = 12 quad ("rejecting" n = -13) $
    *Answer: $12$ and $13$.*

  ],
)

#worked-example(
  19,
  "Word problem: area with a frame",
  tier: "JAMB CHALLENGE",
  [A rectangular plot is $3$ m longer than it is wide and its area is $180$ m². Find its dimensions.],
  [
    *Step 1 — Define:* width $= w$, length $= w + 3$.

    *Step 2 — Translate:*

    $ w(w + 3) = 180 quad arrow.r.double quad w^2 + 3w - 180 = 0 $
    *Step 3 — Factorise:* product $-180$, sum $3$: the pair is $15$ and $-12$.

    $ (w + 15)(w - 12) = 0 quad arrow.r.double quad w = 12 $
    *Step 4 — Answer in words:* width $12$ m, length $15$ m. (Check: $12 times 15 = 180$ ✓)

    *Habit.* Always reject the negative root explicitly when the variable is a length.
  ],
)

#worked-example(
  20,
  "Speed–time word problem",
  tier: "JAMB CHALLENGE",
  [A trader covers $120$ km. If she had travelled $10$ km/h faster, the journey would have taken one hour less. Find her actual speed.],
  [
    *Step 1 — Define:* let the speed be $v$ km/h; the time is $120/v$ hours.

    *Step 2 — Translate "one hour less":*

    $ 120/v - 120/(v + 10) = 1 $
    *Step 3 — Multiply through by $v(v + 10)$:*

    $ 120(v + 10) - 120 v = v(v + 10) quad arrow.r.double quad 1200 = v^2 + 10 v $
    *Step 4 — Solve:*

    $ v^2 + 10v - 1200 = 0 quad arrow.r.double quad (v + 40)(v - 30) = 0 quad arrow.r.double quad v = 30 $
    *Answer: $30$ km/h.* Check: $120/30 = 4$ h and $120/40 = 3$ h, a difference of one hour ✓

  ],
)

#worked-example(
  21,
  "Two roots, one condition",
  tier: "JAMB CHALLENGE",
  [One root of $2x^2 + k x - 6 = 0$ is $-3$. Find $k$ and the other root.],
  [
    *Step 1 — Substitute the known root:*

    $ 2(9) + k(-3) - 6 = 0 quad arrow.r.double quad 18 - 3k - 6 = 0 quad arrow.r.double quad k = 4 $
    *Step 2 — Use the product of roots:* $alpha beta = c/a = -6/2 = -3$.

    *Step 3 — With one root $-3$:* $-3 beta = -3$, so $beta = 1$.

    *Check.* $2x^2 + 4x - 6 = 2(x + 3)(x - 1)$ ✓

  ],
)

#worked-example(
  22,
  "Equation with roots that are functions of $alpha, beta$",
  tier: "JAMB CHALLENGE",
  [If $alpha$ and $beta$ are roots of $x^2 + 5x + 3 = 0$, form the equation whose roots are $alpha^2$ and $beta^2$.],
  [
    *Step 1 — Original relations:* $alpha + beta = -5$, $alpha beta = 3$.

    *Step 2 — New sum:*

    $ alpha^2 + beta^2 = (alpha + beta)^2 - 2 alpha beta = 25 - 6 = 19 $
    *Step 3 — New product:*

    $ alpha^2 beta^2 = (alpha beta)^2 = 9 $
    *Step 4 — Equation:*

    $ x^2 - 19x + 9 = 0 $
  ],
)

== 3.4 Chapter 3 Rapid-Revision Checklist

#table(
  columns: (1.1fr, 2.0fr, 1.5fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],

  ["solve $a x^2 + b x + c = 0$"], ["Try factorisation; else the formula."], [Write $a, b, c$ with their signs before substituting.],

  ["express in the form $a(x - h)^2 + k$"], ["Complete the square, factoring out $a$ first."], [The bracket is $(x + b slash 2a)$; the sign flips outside.],

  ["find the minimum/maximum value"], ["Read $k$ from the completed square."], [If $a < 0$ the value at the vertex is a maximum.],

  ["equal roots"], ["$Delta = 0$."], [Gives *two* values of the parameter when it is squared.],

  ["no real roots"], ["$Delta < 0$."], [Solve the resulting inequality, e.g. $p^2 < 64$.],

  ["form equation from roots $alpha, beta$"], ["$x^2 - (alpha + beta)x + alpha beta = 0$."], [For transformed roots, recompute sum and product from scratch.],

  ["roots in a ratio / differ by $k$"], ["Use $(alpha - beta)^2 = (alpha + beta)^2 - 4 alpha beta$."], [Do not solve the original equation.],

  ["$x^4$ or $2^(2x)$ equation"], ["Substitute $u = x^2$ or $u = 2^x$."], [Recover all roots; reject inadmissible values.],

  ["graph / vertex / range"], ["Complete the square or use $-b slash 2a$."], [Vertex $x$-coordinate $= -b slash 2a$; substitute to get $y$.],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch03.typ"
