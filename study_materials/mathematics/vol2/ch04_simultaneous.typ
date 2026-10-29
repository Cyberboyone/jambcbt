#import "template.typ": *

#current-chapter.update("Chapter 4: Simultaneous Equations")
#pagebreak()

#chapter-opener(
  4,
  "Simultaneous Equations",
  subtitle: "Elimination, Substitution, Graphical Solutions, One Linear plus One Quadratic, Three Unknowns, and Word Problems",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 4",
  utme-weight: "1 – 2 Questions Every Year (100% Frequency)",
)

#focus-radar(
  objectives: (
    "Solve two linear equations in two unknowns by elimination, substitution and graphically.",
    "Recognise the three possible outcomes: unique solution, no solution, infinitely many solutions.",
    "Solve a pair consisting of one linear and one quadratic equation and interpret the number of intersections.",
    "Solve three linear equations in three unknowns by systematic elimination.",
    "Translate word problems (ages, digits, mixtures, costs, geometry) into simultaneous equations.",
  ),
  hotspots: (
    "Linear + quadratic pairs — JAMB's favourite, because it tests substitution and quadratics together.",
    "Word problems with two unknowns, especially 'the sum of two numbers... and their difference...'.",
    "Two-digit-number problems: $10a + b$ notation.",
    "Deciding whether a system has no solution (parallel lines) or infinitely many (identical lines) from the coefficients.",
    "Three-unknown systems where one equation is redundant.",
  ),
  trap-summary: "Every year candidates lose marks by subtracting equations without tracking signs. Write the second equation underneath the first with like terms aligned, then *add* when the coefficients are opposites and *subtract* when they are equal — and check the final pair in BOTH original equations, not just one.",
)

// ============================================================================
== 4.1 Two Linear Equations in Two Unknowns

A pair such as

$ 2x + 3y = 12 , quad x - y = 1 $

describes two straight lines. A *solution* is a point lying on both lines, i.e. their intersection.

#diagram-fig("diagrams/ch04_three_cases_lines.svg",
  "The only three possibilities for two straight lines: they cross once (unique solution), they are parallel (no solution), or they coincide (infinitely many solutions).")

#concept-box("The Determinant Test for a $2 times 2$ System")[
  Write the system as $a_1 x + b_1 y = c_1$ and $a_2 x + b_2 y = c_2$, and compute
  $ D = a_1 b_2 - a_2 b_1 $
  - $D != 0$: exactly one solution (lines meet at a point).
  - $D = 0$ and the right-hand sides are *inconsistent*: no solution (parallel lines).
  - $D = 0$ and the equations are multiples of each other: infinitely many solutions.
  This is the same determinant you will meet in Chapter 9 — matrices and simultaneous equations are one topic in two costumes.
]

=== Method 1: Elimination

#diagram-fig("diagrams/ch04_elimination_flow.svg",
  "The elimination engine in five steps. The only step that ever goes wrong is step 2 — the signs.")

#worked-example(
  1,
  "Direct elimination",
  tier: "FOUNDATION",
  [Solve $2x + 3y = 12$ and $x - y = 1$.],
  [
    *Step 1 — Number the equations:* $(1): 2x + 3y = 12$ and $(2): x - y = 1$.

    *Step 2 — Match coefficients of $x$.* Multiply (2) by $2$: $(3): 2x - 2y = 2$.

    *Step 3 — Subtract (3) from (1) to eliminate $x$:*

    $ (2x + 3y) - (2x - 2y) = 12 - 2 quad arrow.r.double quad 5y = 10 quad arrow.r.double quad y = 2 $
    *Step 4 — Back-substitute into (2):* $x - 2 = 1$, so $x = 3$.

    *Step 5 — Check in (1):* $2(3) + 3(2) = 6 + 6 = 12$ ✓

    *Answer:* $x = 3$, $y = 2$.

  ],
)

#worked-example(
  2,
  "Elimination when both coefficients need scaling",
  tier: "UTME STANDARD",
  [Solve $3x + 4y = 10$ and $2x - 3y = 1$.],
  [
    *Step 1 — Choose $y$ to eliminate* (its coefficients $4$ and $3$ have LCM $12$). Multiply (1) by $3$ and (2) by $4$:

    $ 9x + 12y = 30 quad (3) ; quad 8x - 12y = 4 quad (4) $
    *Step 2 — The $y$ coefficients are now opposite, so ADD:*

    $ 17x = 34 quad arrow.r.double quad x = 2 $
    *Step 3 — Substitute into (2):* $4 - 3y = 1$, so $3y = 3$ and $y = 1$.

    *Check in (1):* $6 + 4 = 10$ ✓

    *Answer:* $x = 2$, $y = 1$.

  ],
)

#trap-box("Adding When You Should Subtract")[
  If the coefficients of the variable you are eliminating have *the same sign*, subtract one equation from the other. If they have *opposite signs*, add. Signing this rule once saves more marks than any other habit in this chapter.
  $ 3x + 2y = 8 ; quad 3x - 2y = 4 quad arrow.r.double quad "subtract: " 4y = 4 $
  $ 3x + 2y = 8 ; quad 5x - 2y = 16 quad arrow.r.double quad "add: " 8x = 24 $
]

=== Method 2: Substitution

When one equation is already solved for a variable, or can be solved in one step, substitution is faster than elimination.

#worked-example(
  3,
  "Substitution from a simple equation",
  tier: "FOUNDATION",
  [Solve $y = 2x - 1$ and $3x + 2y = 12$.],
  [
    *Step 1 — Substitute the expression for $y$ directly:*

    $ 3x + 2(2x - 1) = 12 $
    *Step 2 — Expand and solve:*

    $ 3x + 4x - 2 = 12 quad arrow.r.double quad 7x = 14 quad arrow.r.double quad x = 2 $
    *Step 3 — Back-substitute:* $y = 2(2) - 1 = 3$.

    *Check:* $3(2) + 2(3) = 12$ ✓

  ],
)

#worked-example(
  4,
  "Substitution with a fraction",
  tier: "UTME STANDARD",
  [Solve $x/2 + y/3 = 4$ and $x - y = 3$.],
  [
    *Step 1 — Clear fractions in the first equation* by multiplying by $6$:

    $ 3x + 2y = 24 quad (1) ; quad x - y = 3 quad (2) $
    *Step 2 — From (2),* $x = y + 3$. Substitute into (1):

    $ 3(y + 3) + 2y = 24 quad arrow.r.double quad 5y = 15 quad arrow.r.double quad y = 3 $
    *Step 3 — Then* $x = 6$. Check: $6/2 + 3/3 = 3 + 1 = 4$ ✓

    *Moral.* Clear the fractions first; every later step becomes integer arithmetic.
  ],
)

=== Method 3: Graphical

Plot both lines accurately; the solution is the coordinates of the crossing point. JAMB uses this form mostly for *reading* a graph rather than drawing one, so practise reading a printed grid: identify where each line crosses the axes, then read the intersection.

#worked-example(
  5,
  "Graphical reading",
  tier: "UTME STANDARD",
  [The lines $x + y = 6$ and $2x - y = 3$ are drawn on a grid. State their point of intersection, and confirm algebraically.],
  [
    *Step 1 — Read the graph:* the lines cross where $x = 3$ and $y = 3$.

    *Step 2 — Confirm by elimination.* Add the equations (the $y$ coefficients are opposite):

    $ 3x = 9 quad arrow.r.double quad x = 3 , quad "then" y = 6 - 3 = 3 $
    *Step 3 — Check both:* $3 + 3 = 6$ ✓ and $6 - 3 = 3$ ✓

    *Graph-reading habit.* Always test the candidate point in *both* equations: a point can look like an intersection on a small grid yet fail one of them.
  ],
)

=== Classification: One, None or Infinitely Many

#worked-example(
  6,
  "No solution",
  tier: "UTME STANDARD",
  [Show that $2x + 3y = 7$ and $4x + 6y = 20$ have no solution.],
  [
    *Step 1 — Compare coefficient ratios:* $2/4 = 3/6 = 1/2$, but $7/20 != 1/2$.

    *Step 2 — Interpret.* The left sides are proportional while the right sides are not, so the lines are parallel and distinct.

    *Step 3 — Alternative check by elimination.* Multiply the first by $2$: $4x + 6y = 14$. Subtracting from the second gives $0 = 6$, a contradiction — no solution.

  ],
)

#worked-example(
  7,
  "Infinitely many solutions",
  tier: "JAMB CHALLENGE",
  [Find $k$ such that $3x - 2y = 5$ and $6x + k y = 10$ have infinitely many solutions.],
  [
    *Step 1 — Infinitely many solutions means the equations describe the same line,* so the coefficients must be proportional:

    $ 6/3 = k/(-2) = 10/5 $
    *Step 2 — The ratio is $2$, so* $k/(-2) = 2$, giving $k = -4$.

    *Check.* $6x - 4y = 10$ is exactly $2(3x - 2y) = 10$ ✓ — the same line.

  ],
)

== 4.2 One Linear and One Quadratic

Substituting the linear equation into the quadratic always produces a quadratic in one variable. The number of real solutions equals the number of intersection points of the line and the curve.

#diagram-fig("diagrams/ch04_line_parabola.svg",
  "A line can miss a parabola, touch it (a repeated root) or cut it twice. The discriminant of the resulting quadratic tells you which, without drawing anything.")

#worked-example(
  8,
  "Classic linear–quadratic pair",
  tier: "UTME STANDARD",
  [Solve $y = x + 1$ and $x^2 + y^2 = 25$.],
  [
    *Step 1 — Substitute $y = x + 1$ into the quadratic:*

    $ x^2 + (x + 1)^2 = 25 $
    *Step 2 — Expand and collect:*

    $ x^2 + x^2 + 2x + 1 = 25 quad arrow.r.double quad 2x^2 + 2x - 24 = 0 quad arrow.r.double quad x^2 + x - 12 = 0 $
    *Step 3 — Factorise:* $(x + 4)(x - 3) = 0$, so $x = -4$ or $x = 3$.

    *Step 4 — Get the matching $y$-values from the LINEAR equation:*

    $ x = -4 arrow.r y = -3 ; quad x = 3 arrow.r y = 4 $
    *Answer:* $(-4, -3)$ and $(3, 4)$.

    *Rule.* Always substitute back into the *linear* equation — it is simpler and cannot introduce extraneous roots.
  ],
)

#worked-example(
  9,
  "Line and parabola with one solution",
  tier: "JAMB CHALLENGE",
  [Find the value of $c$ for which $y = 2x + c$ is a tangent to $y = x^2 - 4x + 7$.],
  [
    *Step 1 — Equate:* $x^2 - 4x + 7 = 2x + c$, i.e. $x^2 - 6x + (7 - c) = 0$.

    *Step 2 — Tangency means a repeated root, so $Delta = 0$:*

    $ 36 - 4(7 - c) = 0 quad arrow.r.double quad 36 - 28 + 4c = 0 quad arrow.r.double quad c = -2 $
    *Step 3 — The point of contact* is at $x = 3$ (the repeated root $-b slash 2a = 3$), giving $y = 4$.

  ],
)

#worked-example(
  10,
  "Word problem with a quadratic pair",
  tier: "JAMB CHALLENGE",
  [The sum of two numbers is $10$ and the sum of their squares is $58$. Find the numbers.],
  [
    *Step 1 — Define:* $x + y = 10$ and $x^2 + y^2 = 58$.

    *Step 2 — From the first,* $y = 10 - x$. Substitute:

    $ x^2 + (10 - x)^2 = 58 quad arrow.r.double quad 2x^2 - 20x + 100 = 58 $
    *Step 3 — Simplify:*

    $ x^2 - 10x + 21 = 0 quad arrow.r.double quad (x - 3)(x - 7) = 0 $
    *Step 4 — The numbers are $3$ and $7$.* (Both roots describe the same pair, in either order.)

  ],
)

#worked-example(
  11,
  "Two-digit number problem",
  tier: "JAMB CHALLENGE",
  [A two-digit number is such that the sum of its digits is $11$. When the digits are reversed, the new number is $27$ less than the original. Find the number.],
  [
    *Step 1 — Set up the place-value notation:* let the tens digit be $a$ and the units digit be $b$; the number is $10a + b$ and the reversed number is $10b + a$.

    *Step 2 — Translate:*

    $ a + b = 11 quad (1) $
    $ 10a + b - (10b + a) = 27 quad arrow.r.double quad 9a - 9b = 27 quad arrow.r.double quad a - b = 3 quad (2) $
    *Step 3 — Solve (1) and (2):* adding gives $2a = 14$, so $a = 7$ and $b = 4$.

    *Answer: $74$.* Check: $74 - 47 = 27$ ✓ and $7 + 4 = 11$ ✓

  ],
)

#worked-example(
  12,
  "Three unknowns",
  tier: "JAMB CHALLENGE",
  [Solve $x + y + z = 6$, $2x - y + z = 3$ and $x + 2y - z = 2$.],
  [
    *Step 1 — Eliminate $z$ from the first two:* $(2) - (1)$:

    $ x - 2y = -3 quad (4) $
    *Step 2 — Eliminate $z$ from (1) and (3):* $(1) + (3)$:

    $ 2x + 3y = 8 quad (5) $
    *Step 3 — Solve (4) and (5).* From (4), $x = 2y - 3$; substitute:

    $ 2(2y - 3) + 3y = 8 quad arrow.r.double quad 7y = 14 quad arrow.r.double quad y = 2 $
    *Step 4 — Then* $x = 4 - 3 = 1$, and from (1) $z = 6 - 1 - 2 = 3$.

    *Check in (2):* $2 - 2 + 3 = 3$ ✓; in (3): $1 + 4 - 3 = 2$ ✓

    *Answer:* $x = 1$, $y = 2$, $z = 3$.

  ],
)

#diagram-fig("diagrams/ch04_three_by_three_cascade.svg",
  "Three unknowns, eliminated in cascade: reduce the system to two equations in two unknowns, solve, then back-substitute.")

#worked-example(
  13,
  "Ages",
  tier: "JAMB CHALLENGE",
  [A father is three times as old as his son. In $12$ years' time he will be twice as old. Find their present ages.],
  [
    *Step 1 — Define:* father $= f$, son $= s$ (present ages).

    *Step 2 — Translate:*

    $ f = 3s quad (1) ; quad f + 12 = 2(s + 12) quad (2) $
    *Step 3 — Substitute (1) into (2):*

    $ 3s + 12 = 2s + 24 quad arrow.r.double quad s = 12 , quad f = 36 $
    *Answer:* father $36$, son $12$. Check: in $12$ years, $48 = 2 times 24$ ✓

    *Watchpoint.* Add the $12$ years to *both* ages — forgetting the son's increase is the standard error.
  ],
)

#worked-example(
  14,
  "Cost problem",
  tier: "UTME STANDARD",
  [Three exercise books and two pens cost ₦$540$; two exercise books and three pens cost ₦$560$. Find the price of each.],
  [
    *Step 1 — Define:* let a book cost $b$ naira and a pen cost $p$ naira.

    *Step 2 — Translate:*

    $ 3b + 2p = 540 quad (1) ; quad 2b + 3p = 560 quad (2) $
    *Step 3 — Eliminate.* Multiply (1) by $3$ and (2) by $2$:

    $ 9b + 6p = 1620 ; quad 4b + 6p = 1120 $
    Subtracting: $5b = 500$, so $b = 100$.
    *Step 4 — Substitute into (1):* $300 + 2p = 540$, so $p = 120$.

    *Answer:* ₦$100$ per book, ₦$120$ per pen.

  ],
)

#worked-example(
  15,
  "Coordinate geometry link",
  tier: "JAMB CHALLENGE",
  [Find the equation of the straight line through $(1, 3)$ and $(4, 9)$ by solving for its gradient and intercept simultaneously.],
  [
    *Step 1 — Let the line be $y = m x + c$.* The two points give

    $ 3 = m + c quad (1) ; quad 9 = 4m + c quad (2) $
    *Step 2 — Subtract (1) from (2):* $6 = 3m$, so $m = 2$.

    *Step 3 — Substitute into (1):* $c = 1$.

    *Answer:* $y = 2x + 1$. (Check: $x = 4$ gives $9$ ✓)

    *Note.* This is exactly the two-point line formula in disguise — useful when the formula is not remembered.

  ],
)

== 4.3 Chapter 4 Rapid-Revision Checklist

#table(
  columns: (1.05fr, 2.05fr, 1.5fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Situation],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Best method],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Key check],

  ["two linear equations"], ["Elimination (or substitution if one is solved for a variable)."], ["Substitute the pair into BOTH originals."],

  ["one linear, one quadratic"], ["Substitute the linear into the quadratic (not the reverse)."], ["You should get a quadratic; the number of real roots = number of intersections."],

  ["fractions in the equations"], ["Multiply through by the LCM of the denominators first."], ["Every term must be multiplied, including the constant."],

  ["three unknowns"], ["Eliminate one variable from two different pairs."], ["Keep the same variable eliminated in both pairs."],

  ["'no solution' / 'infinitely many'"], ["Compare coefficient ratios and right-hand sides."], ["$D = 0$; then check whether the constants are proportional too."],

  ["word problem"], ["Define both unknowns in words, then translate each sentence."], ["Check the answer against the story, not just the algebra."],

  ["two-digit number"], ["Write $10a + b$ and $10b + a$."], ["Digits must be integers from $1$ to $9$ and $0$ to $9$ respectively."],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch04.typ"
