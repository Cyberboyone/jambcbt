#import "template.typ": *

#current-chapter.update("Chapter 2: Polynomials, Factor and Remainder Theorems")
#pagebreak()

#chapter-opener(
  2,
  "Polynomials & the Factor and Remainder Theorems",
  subtitle: "Polynomial Vocabulary, Long and Synthetic Division, the Factor Theorem, Cubic Factorisation & Identity Matching",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 2",
  utme-weight: "1 Question Most Years (75% Frequency)",
)

#focus-radar(
  objectives: (
    "State the degree, leading coefficient and constant term of a polynomial.",
    "Divide a polynomial by a linear or quadratic divisor using long or synthetic division.",
    "Apply the remainder theorem to find the remainder without dividing.",
    "Apply the factor theorem to test whether a given binomial is a factor.",
    "Factorise a cubic completely, given one factor or one root.",
    "Determine unknown coefficients by comparing coefficients in an identity.",
  ),
  hotspots: (
    "Finding the remainder when $f(x)$ is divided by $(x - a)$ — a one-line substitution worth a full mark.",
    "Divisor $(a x + b)$: remembering to substitute $x = -b/a$, not $x = b/a$.",
    "Factorising a cubic completely once one root is known, then solving $f(x) = 0$.",
    "Finding unknown constants $p$ and $q$ from two given conditions (one remainder, one factor).",
    "Matching coefficients in an identity such as $x^3 + 2 = (x - 1)(A x^2 + B x + C) + R$.",
  ),
  trap-summary: "The classic loss is a sign error on the divisor: for $(x - 3)$ substitute $x = +3$; for $(x + 3)$ substitute $x = -3$; for $(2x - 1)$ substitute $x = 1/2$. Write the divisor as $x - a$ FIRST, then read off $a$ — never guess.",
)

// ============================================================================
== 2.1 Polynomial Vocabulary and Degree

A *polynomial in $x$* is an expression of the form

$ P(x) = a_n x^n + a_(n-1) x^(n-1) + dots + a_1 x + a_0 , quad a_n != 0 $

where the powers are non-negative whole numbers and the coefficients $a_i$ are real numbers. The highest power $n$ is the *degree*; $a_n$ is the *leading coefficient*; $a_0$ is the *constant term*.

#concept-box("Reading a Polynomial Correctly")[
  - $3x^4 - 2x^2 + 7$ has degree $4$, leading coefficient $3$, constant term $7$. The missing $x^3$ and $x$ terms have coefficient $0$ — write them in when you divide!
  - $x^2 + 1/x$ is *not* a polynomial: the power $-1$ is not a whole number.
  - Two polynomials are equal *as polynomials* only if every corresponding coefficient is equal. This is the principle behind identity questions.
]

#formula-box("Division Identity — the backbone of this chapter")[
  For any polynomial $P(x)$ and non-zero divisor $D(x)$ there exist a unique quotient $Q(x)$ and remainder $R(x)$ with
  $ P(x) = D(x) Q(x) + R(x) , quad "deg" R < "deg" D $
  For a *linear* divisor $(x - a)$, the remainder is a constant $R$, so $P(x) = (x - a)Q(x) + R$ and setting $x = a$ gives the remainder theorem at once.
]

== 2.2 The Remainder Theorem

#formula-box("Remainder Theorem")[
  When a polynomial $P(x)$ is divided by $(x - a)$, the remainder is $P(a)$.
  #v(2pt)
  More generally, dividing by $(b x - a)$ leaves remainder $P(a/b)$. Dividing by $(x + a)$ leaves remainder $P(-a)$.
]

#worked-example(
  1,
  "Direct application",
  tier: "FOUNDATION",
  [Find the remainder when $P(x) = x^3 - 2x^2 + 4x - 5$ is divided by $(x - 2)$.],
  [
    *Step 1 — Identify $a$.* The divisor is already in the form $(x - a)$ with $a = 2$.

    *Step 2 — Substitute.*

    $ P(2) = 2^3 - 2(2^2) + 4(2) - 5 = 8 - 8 + 8 - 5 = 3 $
    *Remainder $= 3$.* A full mark in under fifteen seconds, with no division at all.
  ],
)

#worked-example(
  2,
  "The sign trap",
  tier: "UTME STANDARD",
  [Find the remainder when $P(x) = 2x^3 + 3x^2 - x + 4$ is divided by $(x + 2)$.],
  [
    *Step 1 — Rewrite the divisor in the form $(x - a)$:* $(x + 2) = (x - (-2))$, so $a = -2$.

    *Step 2 — Substitute:*

    $ P(-2) = 2(-8) + 3(4) - (-2) + 4 = -16 + 12 + 2 + 4 = 2 $
    *Remainder $= 2$.* Substituting $x = +2$ instead (the classic error) gives $16 + 12 - 2 + 4 = 30$, which is always one of the options.
  ],
)

#worked-example(
  3,
  "Divisor with a leading coefficient",
  tier: "JAMB CHALLENGE",
  [Find the remainder when $P(x) = 6x^3 - x^2 + 4x - 1$ is divided by $(2x - 1)$.],
  [
    *Step 1 — Write the divisor as $b(x - a)$:* $2x - 1 = 2(x - 1/2)$, so $a = 1/2$.

    *Step 2 — Substitute $x = 1/2$:*

    $ P(1/2) = 6(1/8) - (1/4) + 4(1/2) - 1 = 3/4 - 1/4 + 2 - 1 = 1/2 + 1 = 3/2 $
    *Remainder $= 3/2$.* (If the question asks for the remainder on division by $2x - 1$ itself, this is already the answer: the constant remainder is unaffected by the factor of $2$ in the divisor.)
  ],
)

#worked-example(
  4,
  "Remainder with an unknown coefficient",
  tier: "JAMB CHALLENGE",
  [When $P(x) = x^3 + k x^2 - 4x + 3$ is divided by $(x - 1)$ the remainder is $7$. Find $k$.],
  [
    *Step 1 — Apply the theorem:* $P(1) = 7$.

    *Step 2 — Write $P(1)$ in terms of $k$:*

    $ 1 + k - 4 + 3 = 7 $
    *Step 3 — Solve:*

    $ k = 7 - (1 - 4 + 3) = 7 - 0 = 7 $
    *Check.* $P(1) = 1 + 7 - 4 + 3 = 7$ ✓

  ],
)

#worked-example(
  5,
  "Quadratic divisor",
  tier: "JAMB CHALLENGE",
  [Find the remainder when $x^4 - 3x^2 + 2x - 1$ is divided by $(x^2 - 1)$.],
  [
    *Step 1 — Substitute $x^2 = 1$ throughout.* For a divisor $x^2 - 1$, every occurrence of $x^2$ can be replaced by $1$, and $x^4 = (x^2)^2 = 1$:

    $ 1 - 3(1) + 2x - 1 = 2x - 3 $
    *Remainder $= 2x - 3$.* When the divisor is quadratic, the remainder can be linear — do not expect a single number.
    *Why it works.* $x^4 - 3x^2 + 2x - 1 = (x^2 - 1)Q(x) + (A x + B)$; on the circle $x^2 = 1$ the $(x^2 - 1)Q$ term vanishes.

  ],
)

== 2.3 The Factor Theorem

#formula-box("Factor Theorem")[
  $(x - a)$ is a factor of $P(x)$ if and only if $P(a) = 0$.
  #v(2pt)
  $(b x - a)$ is a factor if and only if $P(a/b) = 0$. $(x + a)$ is a factor if and only if $P(-a) = 0$.
]

#diagram-fig("diagrams/ch02_factor_theorem_flow.svg",
  "Remainder and factor theorem as a single decision tree: substitute, then interpret a zero remainder as a factor.")

#worked-example(
  6,
  "Testing a factor",
  tier: "FOUNDATION",
  [Show that $(x - 3)$ is a factor of $P(x) = x^3 - 4x^2 + x + 6$.],
  [
    $ P(3) = 27 - 36 + 3 + 6 = 0 $
    Since the remainder is zero, $(x - 3)$ is a factor. The quotient is $x^2 - x - 2 = (x - 2)(x + 1)$, so
    $ P(x) = (x - 3)(x - 2)(x + 1) $
  ],
)

#worked-example(
  7,
  "Finding two unknown coefficients",
  tier: "JAMB CHALLENGE",
  [The polynomial $P(x) = x^3 + p x^2 + q x + 6$ has $(x - 1)$ as a factor and leaves a remainder of $12$ when divided by $(x - 2)$. Find $p$ and $q$.],
  [
    *Step 1 — Use the factor condition.* $P(1) = 0$:

    $ 1 + p + q + 6 = 0 quad arrow.r.double quad p + q = -7 quad (1) $
    *Step 2 — Use the remainder condition.* $P(2) = 12$:

    $ 8 + 4p + 2q + 6 = 12 quad arrow.r.double quad 4p + 2q = -2 quad arrow.r.double quad 2p + q = -1 quad (2) $
    *Step 3 — Subtract (1) from (2):*

    $ (2p + q) - (p + q) = -1 - (-7) quad arrow.r.double quad p = 6 $
    *Step 4 — Back-substitute:* $q = -7 - 6 = -13$.

    *Check.* $P(x) = x^3 + 6x^2 - 13x + 6$; $P(1) = 1 + 6 - 13 + 6 = 0$ ✓ and $P(2) = 8 + 24 - 26 + 6 = 12$ ✓

  ],
)

== 2.4 Long and Synthetic Division

Long division mirrors the arithmetic you already know: divide the leading terms, multiply the whole divisor, subtract, bring down, repeat. JAMB rarely demands the full layout, but the quotient is often needed to finish a factorisation, and the method is worth having.

#worked-example(
  8,
  "Long division with a missing term",
  tier: "UTME STANDARD",
  [Divide $2x^3 - 5x^2 - 4x + 3$ by $(x - 3)$.]
  ,
  [
    *Step 1 — Write the dividend with every power present:* $2x^3 - 5x^2 - 4x + 3$ (all powers $3, 2, 1, 0$ appear, so no zero placeholder is needed).

    *Step 2 — Divide leading terms:* $2x^3 div x = 2x^2$. Multiply: $2x^2(x - 3) = 2x^3 - 6x^2$. Subtract: $(-5x^2) - (-6x^2) = x^2$.

    *Step 3 — Bring down $-4x$:* divide $x^2 div x = x$. Multiply: $x(x - 3) = x^2 - 3x$. Subtract: $(-4x) - (-3x) = -x$.

    *Step 4 — Bring down $+3$:* divide $-x div x = -1$. Multiply: $-1(x - 3) = -x + 3$. Subtract: remainder $0$.

    $ 2x^3 - 5x^2 - 4x + 3 = (x - 3)(2x^2 + x - 1) $
    *Step 5 — Factorise the quadratic:* $2x^2 + x - 1 = (2x - 1)(x + 1)$. Hence

    $ P(x) = (x - 3)(2x - 1)(x + 1) $
  ],
)

#diagram-fig("diagrams/ch02_synthetic_division.svg",
  "Synthetic division written in full: bring down, multiply by the root, add. The final entry is the remainder; the rest are the quotient coefficients.")

#shortcut-box("Synthetic Division in Five Seconds")[
  To divide by $(x - a)$: list the coefficients (including zeros), bring down the first, then repeatedly *multiply by $a$ and add*.
  #v(3pt)
  For $2x^3 - 5x^2 - 4x + 3$ divided by $(x - 3)$:
  $ 2 arrow.r 2 times 3 = 6 arrow.r -5 + 6 = 1 arrow.r 1 times 3 = 3 arrow.r -4 + 3 = -1 arrow.r -1 times 3 = -3 arrow.r 3 - 3 = 0 $
  Quotient $2x^2 + x - 1$, remainder $0$ — identical to the long division, in a fifth of the writing.
]

#worked-example(
  9,
  "Synthetic division with a zero coefficient",
  tier: "UTME STANDARD",
  [Divide $x^3 - 8$ by $(x - 2)$ using synthetic division.],
  [
    *Step 1 — Insert the missing terms:* coefficients are $1, 0, 0, -8$ (for $x^3, x^2, x$, constant).

    *Step 2 — Run the chain with $a = 2$:*

    $ 1 arrow.r 2 arrow.r 4 arrow.r 8 quad "and" quad -8 + 8 = 0 $
    *Step 3 — Read off:* quotient $x^2 + 2x + 4$, remainder $0$. Indeed

    $ x^3 - 8 = (x - 2)(x^2 + 2x + 4) $
    which is the difference-of-cubes identity — synthetic division *proves* it in one line.
  ],
)

#worked-example(
  10,
  "Factorising a cubic completely",
  tier: "JAMB CHALLENGE",
  [Factorise $P(x) = x^3 - 2x^2 - 5x + 6$ completely and solve $P(x) = 0$.],
  [
    *Step 1 — Find one root by trial.* Candidates are the divisors of the constant term $6$: $plus.minus 1, plus.minus 2, plus.minus 3, plus.minus 6$.

    $ P(1) = 1 - 2 - 5 + 6 = 0 ✓ $
    *Step 2 — Divide by $(x - 1)$:* coefficients $1, -2, -5, 6$:

    $ 1 arrow.r -1 arrow.r -6 arrow.r 0 $
    (reading: quotient coefficients $1, -1, -6$, remainder $0$), so $P(x) = (x - 1)(x^2 - x - 6)$.
    *Step 3 — Factorise the quadratic:* $x^2 - x - 6 = (x - 3)(x + 2)$.

    *Step 4 — State the full factorisation and the roots:*

    $ P(x) = (x - 1)(x - 3)(x + 2) quad arrow.r.double quad x = 1, quad 3, quad -2 $
  ],
)

#diagram-fig("diagrams/ch02_cubic_shape.svg",
  "The cubic of Example 10. Three real roots at $x = -2, 1, 3$, a local maximum and a local minimum between them, and opposite end behaviour — always the picture when the leading coefficient is positive.")

#worked-example(
  11,
  "Cubic with a repeated root",
  tier: "JAMB CHALLENGE",
  [Given that $(x - 2)$ is a repeated factor of $P(x) = x^3 - 3x^2 + 4$, factorise completely.],
  [
    *Step 1 — Divide by $(x - 2)$ once:* coefficients $1, -3, 0, 4$:

    $ 1 arrow.r -1 arrow.r -2 arrow.r 0 $
    (quotient coefficients $1, -1, -2$), giving quotient $x^2 - x - 2$.
    *Step 2 — Notice the quotient also vanishes at $x = 2$:* $4 - 2 - 2 = 0$. Divide again (or factorise): $x^2 - x - 2 = (x - 2)(x + 1)$.

    *Step 3 — Combine:*

    $ P(x) = (x - 2)^2 (x + 1) $
    *Insight.* A repeated root is a *turning point on the x-axis*: the graph touches $x = 2$ without crossing. JAMB's "sketch the graph" questions rely on this.
  ],
)

#worked-example(
  12,
  "Fractional root",
  tier: "JAMB CHALLENGE",
  [Given that $(2x - 1)$ is a factor of $P(x) = 2x^3 + x^2 - 7x + 3$, factorise $P(x)$ completely.],
  [
    *Step 1 — Confirm with the factor theorem.* Substitute $x = 1/2$ (from $2x - 1 = 0$):

    $ P(1/2) = 2(1/8) + (1/4) - 7(1/2) + 3 = 1/4 + 1/4 - 7/2 + 3 = 1/2 - 7/2 + 3 = 0 ✓ $
    *Step 2 — Divide by $(x - 1/2)$ synthetically,* coefficients $2, 1, -7, 3$:

    $ 2 arrow.r 2 arrow.r -6 arrow.r 0 $
    (quotient coefficients $2, 2, -6$), so $P(x) = (x - 1/2)(2x^2 + 2x - 6) = (2x - 1)(x^2 + x - 3)$.
    *Step 3 — Test the quadratic.* The discriminant of $x^2 + x - 3$ is $1 + 12 = 13$, not a perfect square, so it does not factorise over the integers.

    *Final answer:*
    $ bold(P(x) = (2x - 1)(x^2 + x - 3)) $
    *Practical tip.* Because the divisor has a leading coefficient, dividing by $(x - 1/2)$ and then absorbing the $2$ into the factor is cleaner than dividing by $(2x - 1)$ directly.
  ],
)

#worked-example(
  13,
  "Identity matching",
  tier: "JAMB CHALLENGE",
  [Find the constants $A$, $B$, $C$ if $x^2 + 4x + 7 equiv A(x + 1)^2 + B(x + 1) + C$.],
  [
    *Step 1 — Expand the right side:*

    $ A(x^2 + 2x + 1) + B x + B + C = A x^2 + (2A + B)x + (A + B + C) $
    *Step 2 — Compare coefficients with $x^2 + 4x + 7$:*

    $ A = 1 quad (1) $
    $ 2A + B = 4 quad (2) $
    $ A + B + C = 7 quad (3) $
    *Step 3 — Solve:* from (1) $A = 1$; (2) gives $B = 2$; (3) gives $C = 7 - 1 - 2 = 4$.

    *Check by substituting $x = -1$:* RHS $= C = 4$, LHS $= 1 - 4 + 7 = 4$ ✓

  ],
)

#worked-example(
  14,
  "Find the unknown divisor",
  tier: "JAMB CHALLENGE",
  [When $P(x) = x^3 + a x^2 - 3x + b$ is divided by $(x - 1)$ the remainder is $4$, and when divided by $(x + 2)$ the remainder is $-8$. Find $a$ and $b$.],
  [
    *Condition 1:* $P(1) = 4$:
    $ 1 + a - 3 + b = 4 quad arrow.r.double quad a + b = 6 quad (1) $
    *Condition 2:* $P(-2) = -8$:
    $ -8 + 4a + 6 + b = -8 quad arrow.r.double quad 4a + b = -6 quad (2) $
    *Subtract (1) from (2):* $3a = -12$, so $a = -4$ and $b = 10$.
    *Check.* $P(x) = x^3 - 4x^2 - 3x + 10$: $P(1) = 1 - 4 - 3 + 10 = 4$ ✓; $P(-2) = -8 - 16 + 6 + 10 = -8$ ✓

  ],
)

#worked-example(
  15,
  "Polynomial multiplication by grid",
  tier: "FOUNDATION",
  [Expand $(2x + 3)(x - 4)$ and verify by substituting $x = 1$.],
  [
    *Step 1 — Grid:* $2x times x = 2x^2$; $2x times (-4) = -8x$; $3 times x = 3x$; $3 times (-4) = -12$.

    *Step 2 — Collect:* $2x^2 - 8x + 3x - 12 = 2x^2 - 5x - 12$.

    *Step 3 — Check with $x = 1$:* original $(2 + 3)(1 - 4) = 5 times (-3) = -15$; expanded $2 - 5 - 12 = -15$ ✓

  ],
)

#diagram-fig("diagrams/ch02_grid_multiplication.svg",
  "The grid method makes every partial product visible, which is exactly why terms do not get dropped.")

#worked-example(
  16,
  "Remainder theorem with a cubic divisor",
  tier: "JAMB CHALLENGE",
  [Find the remainder when $x^3 + 2x^2 - 5x + 1$ is divided by $(x^2 + x - 2)$.],
  [
    *Step 1 — Factor the divisor:* $x^2 + x - 2 = (x + 2)(x - 1)$.

    *Step 2 — Set $R(x) = A x + B$ and use $x^2 = 2 - x$:*

    $ x^3 = x dot x^2 = x(2 - x) = 2x - x^2 = 2x - (2 - x) = 3x - 2 $
    *Step 3 — Substitute into $P$:*

    $ P = (3x - 2) + 2(2 - x) - 5x + 1 = 3x - 2 + 4 - 2x - 5x + 1 = 3 - 4x $
    *Remainder $= 3 - 4x$.*
    *Check at the roots.* $P(-2) = -8 + 8 + 10 + 1 = 11$ and $3 - 4(-2) = 11$ ✓; $P(1) = 1 + 2 - 5 + 1 = -1$ and $3 - 4 = -1$ ✓

  ],
)

== 2.5 Chapter 2 Rapid-Revision Checklist

#table(
  columns: (1.1fr, 2.0fr, 1.5fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[What to do],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],

  ["remainder when divided by $(x - a)$"], ["Compute $P(a)$ — no division."], [Sign of $a$ must be copied exactly from $(x - a)$.],

  ["remainder when divided by $(a x + b)$"], ["Compute $P(-b/a)$."], [$x = -b/a$, not $b/a$ and not $a/b$.],

  ["show that $(x + k)$ is a factor"], ["Show $P(-k) = 0$."], [A zero remainder must be *stated* as the conclusion.],

  ["factorise completely"], ["Find one root by trial, divide, then factorise the quadratic."], [Keep going until all factors are linear or irreducible.],

  ["find $p$ and $q$"], ["Two conditions → two simultaneous equations."], [Use $P(1) = 0$ for a factor, $P(2) = r$ for a remainder.],

  ["$P(x) equiv (x - 1)(dots) + R$"], ["Match coefficients, or substitute strategic values of $x$."], [Identities hold for *every* $x$ — substituting $x = 1$ kills the bracket.],

  ["degree of a polynomial"], ["Highest power with non-zero coefficient."], [Multiply out before reading the degree if brackets are present.],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch02.typ"
