#import "template.typ": *

#pagebreak()

#chapter-opener(
  8,
  "Surds & Radical Equations",
  subtitle: "Canonical Simplification, Conjugate Rationalization, Equality of Surds, Square Roots of Surds & Irrational Equations",
  syllabus-ref: "JAMB Syllabus Sec. I • Topic 3(d)",
  utme-weight: "1 – 2 Questions Every Year (100% Frequency)",
)

#focus-radar(
  objectives: (
    "Reduce pure surds to canonical basic form k√m (square-free m) and reverse-convert mixed surds to order magnitudes.",
    "Add, subtract, and expand binomial products of surds of the form a√b + c√d.",
    "Rationalize monomial denominators a/√b, binomial denominators a/(b + c√d) via conjugates, and 3-term surd denominators.",
    "Equate rational and irrational parts in identities p + q√k = r + s√k, and extract exact square roots √(a ± 2√b).",
    "Solve radical equations √f(x) = g(x) and √f(x) ± √g(x) = c, testing every candidate root against extraneous squaring artifacts.",
  ),
  hotspots: (
    "Rationalizing quotients (p + q√r)/(s - t√r) and pairing conjugate fractions 1/(a - √b) ± 1/(a + √b).",
    "Evaluating decimal approximations AFTER rationalizing, e.g. finding 4/(2 - √3) given √3 = 1.732 without long division!",
    "Extraneous roots introduced when squaring √(2x + 3) = x or √(3x + 1) = x - 3 (remember √u ≥ 0 ALWAYS!).",
    "Exact special-angle trigonometric surds (30°, 45°, 60°) such as (tan 60° - 1)/(tan 60° + 1) = 2 - √3.",
  ),
  trap-summary: "Two golden rules protect 100% of your Surds marks in JAMB: (1) NEVER plug √2 = 1.414 or √3 = 1.732 into a denominator and attempt decimal long division — rationalize the denominator FIRST so division becomes trivial multiplication! (2) The radical symbol √u denotes the PRINCIPAL (non-negative) square root (√9 = +3 ONLY, never ±3), so √f(x) = -3 has NO real solution!",
)

// ============================================================================
// SECTION 8.1
// ============================================================================
== 8.1 Anatomy of Surds, Canonical Form & Fundamental Rules

A *surd* is an *irrational root of a rational number* — such as $sqrt(2), sqrt(3), sqrt(5), root(3, 4),$ or $5 - 2 sqrt(7)$ — whose exact value cannot be written as a terminating or repeating decimal. Conversely, $sqrt(49) = 7$, $sqrt(9 / 16) = 3 / 4$, and $root(3, -27) = -3$ are *rational numbers, NOT surds*!

=== 1. Canonical (Basic) Surd Form vs. Pure Surd Form
- *Canonical / Basic Mixed Form ($k sqrt(m)$):* Factor out the *largest perfect square* dividing the radicand so the remaining integer $m$ is *square-free* (divisible by no square $> 1$):
  $ sqrt(72) = sqrt(36 times 2) = 6 sqrt(2), quad sqrt(108) = sqrt(36 times 3) = 6 sqrt(3), quad sqrt(147) = sqrt(49 times 3) = 7 sqrt(3) $
- *Pure Surd Form ($sqrt(N)$):* Bring the outside coefficient back inside the radical by squaring it ($k sqrt(m) = sqrt(k^2 m)$ for $k > 0$). Pure form makes *ordering surds without a calculator* instantaneous:
  - Example: Which is larger, $3 sqrt(5)$ or $2 sqrt(11)$? Write $3 sqrt(5) = sqrt(45)$ and $2 sqrt(11) = sqrt(44)$; since $44 < 45$, we immediately know $2 sqrt(11) < 3 sqrt(5)$!

#formula-box("Core Operational Identities for Surds (a, b > 0)")[
  1. *Product & Quotient of Radicals:* #h(8pt) $sqrt(a) times sqrt(b) = sqrt(a b)$ #h(10pt) and #h(10pt) $frac(sqrt(a), sqrt(b)) = sqrt(frac(a, b))$
  2. *Addition & Subtraction (Like Surds ONLY!):* #h(8pt) $p sqrt(m) plus.minus q sqrt(m) = (p plus.minus q) sqrt(m)$
     *(Warning: $sqrt(a + b) != sqrt(a) + sqrt(b)$! For instance, $sqrt(9 + 16) = sqrt(25) = 5 != 3 + 4 = 7$.)*
  3. *Binomial Squares & Conjugate Difference of Squares:*
     $ (a plus.minus b sqrt(k))^2 = (a^2 + b^2 k) plus.minus 2 a b sqrt(k), quad (a + b sqrt(k))(a - b sqrt(k)) = a^2 - b^2 k in QQ $
  4. *Symmetric Pair Identities:*
     $ (sqrt(a) + sqrt(b))^2 + (sqrt(a) - sqrt(b))^2 = 2(a + b), quad (sqrt(a) + sqrt(b))^2 - (sqrt(a) - sqrt(b))^2 = 4 sqrt(a b) $
]

// ============================================================================
// SECTION 8.2
// ============================================================================
== 8.2 Rationalizing Denominators & Conjugate Shortcuts

In standard mathematical convention — and on every JAMB option list — final answers are never left with surds in the denominator. Removing radicals from the denominator is called *rationalization*.

#diagram-fig(
  "diagrams/ch08_conjugate_flow.svg",
  "Step-by-Step Rationalization Workflow for Monomial Denominators a/√b and Binomial Denominators a/(b + c√d) via Conjugate Multiplication.",
)

#concept-box("Three Tiers of Denominator Rationalization")[
  1. *Monomial Denominator ($frac(a, c sqrt(b))$):* Multiply numerator and denominator by $sqrt(b)$:
     $ frac(a, c sqrt(b)) = frac(a, c sqrt(b)) times frac(sqrt(b), sqrt(b)) = frac(a sqrt(b), c b) $
  2. *Binomial Denominator ($frac(A, p + q sqrt(r))$):* Multiply top and bottom by the *conjugate surd* $(p - q sqrt(r))$ (flip ONLY the sign between the two terms!):
     $ frac(A, p + q sqrt(r)) times frac(p - q sqrt(r), p - q sqrt(r)) = frac(A(p - q sqrt(r)), p^2 - q^2 r) $
  3. *Three-Term Denominator ($frac(A, p + sqrt(q) + sqrt(r))$):* Group two terms together as $((p + sqrt(q)) + sqrt(r))$ and multiply by $((p + sqrt(q)) - sqrt(r))$ first; this collapses the denominator to a single surd (especially clean whenever $p^2 + q = r$, since $(p + sqrt(q))^2 - r = 2 p sqrt(q)$!), which is then cleared in one monomial step!
]

#shortcut-box("Three Non-Calculator Time-Savers with Conjugates")[
  - *Unit-Norm Reciprocals ($p^2 - q^2 r = 1$):* Whenever $p^2 - q^2 r = 1$ — such as $2 + sqrt(3)$ ($4 - 3 = 1$), $sqrt(5) + 2$ ($5 - 4 = 1$), $3 + 2 sqrt(2)$ ($9 - 8 = 1$), or $sqrt(n + 1) + sqrt(n)$ — *the reciprocal IS simply the conjugate*!
    $ frac(1, 2 + sqrt(3)) = 2 - sqrt(3), quad frac(1, 3 - 2 sqrt(2)) = 3 + 2 sqrt(2), quad frac(1, sqrt(k + 1) + sqrt(k)) = sqrt(k + 1) - sqrt(k) $
  - *Given Decimal Approximations ($sqrt(2) approx 1.414, sqrt(3) approx 1.732, sqrt(5) approx 2.236$):* *ALWAYS rationalize BEFORE substituting decimals!* Turning $frac(2, 2 - sqrt(3))$ into $2(2 + sqrt(3)) = 2(3.732) = 7.464$ takes 4 seconds; dividing $2 div 0.268$ by hand wastes 3 minutes!
  - *Equality of Quadratic Surds:* If $a, b, c, d in QQ$ and $sqrt(k)$ is irrational, then:
    $ a + b sqrt(k) = c + d sqrt(k) quad arrow.l.r.double quad a = c " and " b = d $
]

// ============================================================================
// SECTION 8.3
// ============================================================================
== 8.3 Square Roots of Binomial Surds, Radical Equations & Trig Surds

=== 1. Extracting Exact Square Roots $sqrt(a plus.minus 2 sqrt(b))$
Suppose we want $sqrt(a plus.minus 2 sqrt(b))$ where $a, b in NN$. Notice that for $x > y > 0$:
$ (sqrt(x) plus.minus sqrt(y))^2 = (x + y) plus.minus 2 sqrt(x y) $
Therefore, once the radical term has coefficient *exactly $2$* outside the inner root, simply find two positive numbers $x > y$ whose *sum is $a$* ($x + y = a$) and whose *product is $b$* ($x y = b$)! Then:
$ sqrt(a + 2 sqrt(b)) = sqrt(x) + sqrt(y), quad "and" quad sqrt(a - 2 sqrt(b)) = sqrt(x) - sqrt(y) quad ("put LARGER " sqrt(x) " FIRST so result " > 0!) $

=== 2. Radical Equations & Extraneous Roots
To solve $sqrt(f(x)) = g(x)$:
1. Require $g(x) >= 0$ immediately (since $sqrt(f(x)) >= 0$ ALWAYS!).
2. Square both sides: $f(x) = [g(x)]^2$, solve the resulting polynomial, and *substitute every candidate root back into the ORIGINAL equation* to discard extraneous roots!
3. If *two* radicals appear ($sqrt(f(x)) plus.minus sqrt(g(x)) = c$), *isolate one radical on each side* ($sqrt(f(x)) = c minus.plus sqrt(g(x))$) before squaring, OR divide $(f(x) - g(x))$ by $c$ to get the conjugate sum $sqrt(f(x)) minus.plus sqrt(g(x)) = frac(f(x) - g(x), c)$ without squaring twice!

=== 3. Exact Special-Angle Trigonometric Surds ($30^degree, 45^degree, 60^degree$)
#diagram-fig(
  "diagrams/ch08_surd_triangles.svg",
  "Exact Reference Triangles (45°-45°-90° Isosceles Right Triangle and 30°-60°-90° Bisected Equilateral Triangle) Generating All Standard Trigonometric Surds.",
)

// ============================================================================
// GRADED WORKED EXAMPLES (8.1 – 8.32)
// ============================================================================
== 8.4 Graded Step-by-Step Worked Examples

#worked-example(
  "8.1",
  "Adding and Subtracting Pure Surds via Canonical Reduction",
  tier: "FOUNDATION",
  source: "UTME Past Paper",
  [Simplify $sqrt(108) + sqrt(75) - sqrt(48)$.],
  [
    *Step 1 — Extract the largest perfect square from each radicand:*
    $ sqrt(36 times 3) + sqrt(25 times 3) - sqrt(16 times 3) = 6 sqrt(3) + 5 sqrt(3) - 4 sqrt(3) $

    *Step 2 — Combine coefficients of the common surd $sqrt(3)$:*
    $ (6 + 5 - 4) sqrt(3) = bold(7 sqrt(3)) $
    *Final Answer:* $bold(7 sqrt(3))$.
  ],
)

#worked-example(
  "8.2",
  "Linear Combination of Mixed Surds",
  tier: "FOUNDATION",
  [Simplify $3 sqrt(50) - 2 sqrt(18) + sqrt(32)$.],
  [
    *Step 1 — Reduce each radical to $k sqrt(2)$:*
    $ 3(5 sqrt(2)) - 2(3 sqrt(2)) + 4 sqrt(2) = 15 sqrt(2) - 6 sqrt(2) + 4 sqrt(2) = bold(13 sqrt(2)) $
    *Final Answer:* $bold(13 sqrt(2))$.
  ],
)

#worked-example(
  "8.3",
  "Ordering Mixed Surds Without a Calculator",
  tier: "UTME STANDARD",
  [Arrange $3 sqrt(5)$, $2 sqrt(11)$, and $4 sqrt(3)$ in ascending order of size.],
  [
    *Step 1 — Convert each mixed surd into a single pure surd $sqrt(k^2 m)$:*
    $ 3 sqrt(5) = sqrt(9 times 5) = sqrt(45), quad 2 sqrt(11) = sqrt(4 times 11) = sqrt(44), quad 4 sqrt(3) = sqrt(16 times 3) = sqrt(48) $

    *Step 2 — Since $44 < 45 < 48$ and $sqrt(x)$ is strictly increasing:*
    $ sqrt(44) < sqrt(45) < sqrt(48) quad arrow.r.double quad bold(2 sqrt(11) < 3 sqrt(5) < 4 sqrt(3)) $
    *Final Answer:* *$2 sqrt(11), quad 3 sqrt(5), quad 4 sqrt(3)$*.
  ],
)

#worked-example(
  "8.4",
  "Simplifying Surds of Vulgar Fractions",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Simplify $sqrt(frac(27, 4)) - sqrt(frac(4, 3)) + sqrt(12)$.],
  [
    *Step 1 — Rationalize and reduce each term to multiples of $sqrt(3)$:*
    - $sqrt(27 / 4) = frac(3 sqrt(3), 2)$
    - $sqrt(4 / 3) = frac(2, sqrt(3)) = frac(2 sqrt(3), 3)$
    - $sqrt(12) = 2 sqrt(3)$

    *Step 2 — Combine fractions over $"LCM"(2, 3) = 6$:*
    $ (frac(3, 2) - frac(2, 3) + 2) sqrt(3) = (frac(9 - 4 + 12, 6)) sqrt(3) = bold(frac(17 sqrt(3), 6)) $
    *Final Answer:* $bold(frac(17 sqrt(3), 6))$.
  ],
)

#worked-example(
  "8.5",
  "Expanding Binomial Surd Products",
  tier: "FOUNDATION",
  [Expand and simplify $(3 + 2 sqrt(5))(4 - sqrt(5))$.],
  [
    *Step 1 — Apply FOIL and replace $(sqrt(5))^2 = 5$:*
    $ 3(4) - 3 sqrt(5) + 8 sqrt(5) - 2(5) = (12 - 10) + (-3 + 8) sqrt(5) = bold(2 + 5 sqrt(5)) $
    *Final Answer:* $bold(2 + 5 sqrt(5))$.
  ],
)

#worked-example(
  "8.6",
  "Squaring a Two-Radical Difference",
  tier: "FOUNDATION",
  [Expand and simplify $(2 sqrt(3) - sqrt(2))^2$.],
  [
    *Step 1 — Use $(u - v)^2 = u^2 - 2 u v + v^2$:*
    $ (2 sqrt(3))^2 - 2(2 sqrt(3))(sqrt(2)) + (sqrt(2))^2 = 12 - 4 sqrt(6) + 2 = bold(14 - 4 sqrt(6)) $
    *Final Answer:* $bold(14 - 4 sqrt(6))$.
  ],
)

#worked-example(
  "8.7",
  "Rationalizing Monomial Surd Fractions",
  tier: "FOUNDATION",
  [Simplify $frac(15, 2 sqrt(5)) + frac(6, sqrt(5))$.],
  [
    *Step 1 — Rationalize each term by multiplying top and bottom by $sqrt(5)$:*
    $ frac(15 sqrt(5), 2 times 5) + frac(6 sqrt(5), 5) = frac(3 sqrt(5), 2) + frac(6 sqrt(5), 5) = frac(15 + 12, 10) sqrt(5) = bold(frac(27 sqrt(5), 10)) $
    *Final Answer:* $bold(frac(27 sqrt(5), 10))$.
  ],
)

#worked-example(
  "8.8",
  "Rationalizing a Binomial Surd Denominator",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Simplify $frac(6, 3 - sqrt(3))$.],
  [
    *Step 1 — Multiply numerator and denominator by the conjugate $(3 + sqrt(3))$:*
    $ frac(6(3 + sqrt(3)), (3 - sqrt(3))(3 + sqrt(3))) = frac(6(3 + sqrt(3)), 9 - 3) = frac(cancel(6)(3 + sqrt(3)), cancel(6)) = bold(3 + sqrt(3)) $
    *Final Answer:* $bold(3 + sqrt(3))$.
  ],
)

#worked-example(
  "8.9",
  "Full Binomial Surd Quotient Rationalization",
  tier: "UTME STANDARD",
  source: "JAMB Classic",
  [Express $frac(2 sqrt(3) + sqrt(2), 2 sqrt(3) - sqrt(2))$ with a rational denominator.],
  [
    *Step 1 — Multiply top and bottom by the denominator's conjugate $(2 sqrt(3) + sqrt(2))$:*
    $ frac((2 sqrt(3) + sqrt(2))^2, (2 sqrt(3))^2 - (sqrt(2))^2) = frac(12 + 4 sqrt(6) + 2, 12 - 2) = frac(14 + 4 sqrt(6), 10) $

    *Step 2 — Divide numerator and denominator by $2$:*
    $ bold(frac(7 + 2 sqrt(6), 5)) $
    *Final Answer:* $bold(frac(7 + 2 sqrt(6), 5))$.
  ],
)

#worked-example(
  "8.10",
  "Combining Paired Conjugate Fractions",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Simplify: (a) $frac(1, sqrt(5) - 2) + frac(1, sqrt(5) + 2)$; #h(8pt) (b) $frac(sqrt(3) + 1, sqrt(3) - 1) - frac(sqrt(3) - 1, sqrt(3) + 1)$.],
  [
    *Part (a) — Combine directly over the conjugate product $(sqrt(5) - 2)(sqrt(5) + 2) = 5 - 4 = 1$:*
    $ frac((sqrt(5) + 2) + (sqrt(5) - 2), 1) = bold(2 sqrt(5)) $

    *Part (b) — Combine over $(sqrt(3) - 1)(sqrt(3) + 1) = 3 - 1 = 2$:*
    $ frac((sqrt(3) + 1)^2 - (sqrt(3) - 1)^2, 2) = frac(4 sqrt(3), 2) = bold(2 sqrt(3)) $
    *Final Answers:* (a) $bold(2 sqrt(5))$; (b) $bold(2 sqrt(3))$.
  ],
)

#worked-example(
  "8.11",
  "Decimal Evaluation Using Given Root Values (Rationalize First!)",
  tier: "UTME STANDARD",
  source: "JAMB Syllabus Core",
  [Given that $sqrt(3) = 1.732$, evaluate $frac(4, 2 - sqrt(3))$ without long division.],
  [
    *Step 1 — Rationalize FIRST ($2^2 - 3 = 1$):*
    $ frac(4, 2 - sqrt(3)) = frac(4(2 + sqrt(3)), 4 - 3) = 4(2 + sqrt(3)) $

    *Step 2 — Substitute $sqrt(3) = 1.732$ and multiply:*
    $ 4(2 + 1.732) = 4 times 3.732 = bold(14.928) $
    *Final Answer:* *14.928*.
  ],
)

#worked-example(
  "8.12",
  "Two-Root Decimal Approximation via Conjugate Subtraction",
  tier: "UTME STANDARD",
  [Given $sqrt(2) = 1.4142$ and $sqrt(3) = 1.7321$, find the value of $frac(2, sqrt(3) + sqrt(2))$ correct to $3$ decimal places.],
  [
    *Step 1 — Multiply top and bottom by $(sqrt(3) - sqrt(2))$:*
    Since $(sqrt(3))^2 - (sqrt(2))^2 = 3 - 2 = 1$:
    $ frac(2, sqrt(3) + sqrt(2)) = 2(sqrt(3) - sqrt(2)) = 2(1.7321 - 1.4142) = 2(0.3179) = 0.6358 approx bold(0.636) $
    *Final Answer:* *0.636* (to 3 d.p.).
  ],
)

#worked-example(
  "8.13",
  "Equating Rational and Irrational Components",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Find the rational numbers $p$ and $q$ such that $frac(3 + 2 sqrt(5), 3 - sqrt(5)) = p + q sqrt(5)$.],
  [
    *Step 1 — Rationalize the left-hand side using conjugate $(3 + sqrt(5))$:*
    $ frac((3 + 2 sqrt(5))(3 + sqrt(5)), 9 - 5) = frac(9 + 3 sqrt(5) + 6 sqrt(5) + 10, 4) = frac(19 + 9 sqrt(5), 4) = frac(19, 4) + frac(9, 4) sqrt(5) $

    *Step 2 — Match rational and $sqrt(5)$ coefficients:*
    *$p = frac(19, 4), quad q = frac(9, 4)$*.
  ],
)

#worked-example(
  "8.14",
  "Symmetric Reciprocal Powers of a Unit-Norm Surd",
  tier: "UTME STANDARD",
  [If $x = 2 + sqrt(3)$, find the exact values of: (a) $x + frac(1, x)$; #h(6pt) (b) $x - frac(1, x)$; #h(6pt) (c) $x^2 + frac(1, x^2)$.],
  [
    *Step 1 — Compute $1 / x$ by unit-norm conjugation ($4 - 3 = 1$):*
    $ frac(1, x) = frac(1, 2 + sqrt(3)) = 2 - sqrt(3) $

    *Step 2 — Add, subtract, and use $x^2 + 1 / x^2 = (x + 1 / x)^2 - 2$:*
    - (a) $x + frac(1, x) = (2 + sqrt(3)) + (2 - sqrt(3)) = bold(4)$.
    - (b) $x - frac(1, x) = (2 + sqrt(3)) - (2 - sqrt(3)) = bold(2 sqrt(3))$.
    - (c) $x^2 + frac(1, x^2) = 4^2 - 2 = bold(14)$.
  ],
)

#worked-example(
  "8.15",
  "Rationalizing a Three-Term Surd Denominator",
  tier: "JAMB CHALLENGE",
  [Rationalize the denominator of $frac(4, 1 + sqrt(2) + sqrt(3))$.],
  [
    *Step 1 — Group as $((1 + sqrt(2)) + sqrt(3))$ and multiply by $((1 + sqrt(2)) - sqrt(3))$:*
    Notice $(1 + sqrt(2))^2 - (sqrt(3))^2 = (1 + 2 sqrt(2) + 2) - 3 = 2 sqrt(2)$!
    $ frac(4(1 + sqrt(2) - sqrt(3)), 2 sqrt(2)) = frac(2(1 + sqrt(2) - sqrt(3)), sqrt(2)) $

    *Step 2 — Multiply top and bottom by $sqrt(2)$:*
    $ frac(2 sqrt(2)(1 + sqrt(2) - sqrt(3)), 2) = sqrt(2) + 2 - sqrt(6) = bold(2 + sqrt(2) - sqrt(6)) $
    *Final Answer:* $bold(2 + sqrt(2) - sqrt(6))$.
  ],
)

#worked-example(
  "8.16",
  "Telescoping Chain of Conjugate Surd Fractions",
  tier: "JAMB CHALLENGE",
  source: "Classic UTME Challenge",
  [Evaluate $frac(1, 1 + sqrt(2)) + frac(1, sqrt(2) + sqrt(3)) + frac(1, sqrt(3) + sqrt(4)) + dots.c + frac(1, sqrt(8) + sqrt(9))$.],
  [
    *Step 1 — Rationalize the $k$-th term $frac(1, sqrt(k) + sqrt(k + 1))$:*
    $ frac(sqrt(k + 1) - sqrt(k), (k + 1) - k) = sqrt(k + 1) - sqrt(k) $

    *Step 2 — Sum and cancel consecutive interior radicals:*
    $ (cancel(sqrt(2)) - 1) + (cancel(sqrt(3)) - cancel(sqrt(2))) + dots.c + (sqrt(9) - cancel(sqrt(8))) = sqrt(9) - 1 = 3 - 1 = bold(2) $
    *Final Answer:* *2*.
  ],
)

#worked-example(
  "8.17",
  "Extracting the Square Root of a Positive Binomial Surd",
  tier: "UTME STANDARD",
  [Find the exact positive square root of $8 + 2 sqrt(15)$.],
  [
    *Step 1 — Find $x > y > 0$ such that $x + y = 8$ and $x y = 15$:*
    By inspection, $x = 5$ and $y = 3$ ($5 + 3 = 8, 5 times 3 = 15$).

    *Step 2 — Write $sqrt(x) + sqrt(y)$:*
    $ sqrt(8 + 2 sqrt(15)) = bold(sqrt(5) + sqrt(3)) $
    *Check:* $(sqrt(5) + sqrt(3))^2 = 5 + 2 sqrt(15) + 3 = 8 + 2 sqrt(15)$ ✓.
  ],
)

#worked-example(
  "8.18",
  "Square Root of a Negative Binomial Surd — The Positivity Trap!",
  tier: "JAMB CHALLENGE",
  [Evaluate $sqrt(7 - 4 sqrt(3))$ in exact surd form.],
  [
    *Step 1 — Rewrite $4 sqrt(3) = 2 times 2 sqrt(3) = 2 sqrt(12)$ so the outer coefficient is $2$:*
    $ sqrt(7 - 2 sqrt(12)) $

    *Step 2 — Find $x > y$ with $x + y = 7$ and $x y = 12$:*
    $x = 4, y = 3$. Put the *larger* root FIRST so the result is strictly positive:
    $ sqrt(4) - sqrt(3) = bold(2 - sqrt(3)) quad (> 0; "NEVER write " sqrt(3) - 2 < 0!) $
    *Final Answer:* $bold(2 - sqrt(3))$.
  ],
)

#worked-example(
  "8.19",
  "Single Radical Equation",
  tier: "FOUNDATION",
  [Solve for $x$: #h(6pt) $sqrt(3x + 7) = 4$.],
  [
    *Step 1 — Square both sides ($4 >= 0$):*
    $ 3x + 7 = 16 quad arrow.r.double quad 3x = 9 quad arrow.r.double quad x = 3 $
    *Check:* $sqrt(3(3) + 7) = sqrt(16) = 4$ ✓. *Final Answer:* $bold(x = 3)$.
  ],
)

#worked-example(
  "8.20",
  "Radical Equation with an Extraneous Root Trap!",
  tier: "UTME STANDARD",
  source: "JAMB Examiner Trap",
  [Find all real roots of the equation $sqrt(2x + 3) = x$.],
  [
    *Step 1 — Square both sides:*
    $ 2x + 3 = x^2 quad arrow.r.double quad x^2 - 2x - 3 = 0 quad arrow.r.double quad (x - 3)(x + 1) = 0 $
    Candidate roots: $x = 3$ and $x = -1$.

    *Step 2 — Mandatory substitution check in ORIGINAL equation $sqrt(2x + 3) = x$:*
    - Test $x = 3$: LHS $= sqrt(9) = 3 =$ RHS ✓ (*Valid!*).
    - Test $x = -1$: LHS $= sqrt(1) = +1 != -1 =$ RHS ✗ (*Extraneous — REJECT!*).
    *Final Answer:* $bold(x = 3)$ *(only!)*.
  ],
)

#worked-example(
  "8.21",
  "Isolating the Radical Before Squaring",
  tier: "UTME STANDARD",
  [Solve for $x$: #h(6pt) $x - sqrt(x + 2) = 4$.],
  [
    *Step 1 — Isolate the radical on one side:*
    $ sqrt(x + 2) = x - 4 quad ("immediately requires " x - 4 >= 0 arrow.r.double x >= 4!) $

    *Step 2 — Square both sides and solve:*
    $ x + 2 = (x - 4)^2 = x^2 - 8x + 16 quad arrow.r.double quad x^2 - 9x + 14 = (x - 7)(x - 2) = 0 $
    Reject $x = 2$ (fails $x >= 4$; indeed $2 - sqrt(4) = 0 != 4$). Accept *$x = 7$* ($7 - sqrt(9) = 4$ ✓).
    *Final Answer:* $bold(x = 7)$.
  ],
)

#worked-example(
  "8.22",
  "Two-Radical Equation (Separating Radicals Before Squaring)",
  tier: "JAMB CHALLENGE",
  [Find all real solutions to $sqrt(2x + 5) - sqrt(x - 1) = 2$.],
  [
    *Step 1 — Move one radical to the RHS so we don't square a difference directly:*
    $ sqrt(2x + 5) = 2 + sqrt(x - 1) $

    *Step 2 — Square once and isolate the remaining radical:*
    $ 2x + 5 = 4 + 4 sqrt(x - 1) + (x - 1) quad arrow.r.double quad x + 2 = 4 sqrt(x - 1) $

    *Step 3 — Square a second time and test BOTH roots:*
    $ x^2 + 4x + 4 = 16(x - 1) quad arrow.r.double quad x^2 - 12x + 20 = (x - 2)(x - 10) = 0 $
    - Check $x = 2$: $sqrt(9) - sqrt(1) = 3 - 1 = 2$ ✓.
    - Check $x = 10$: $sqrt(25) - sqrt(9) = 5 - 3 = 2$ ✓.
    *Final Answer:* $bold(x = 2 "or" x = 10)$.
  ],
)

#worked-example(
  "8.23",
  "Disguised Quadratic in √x",
  tier: "UTME STANDARD",
  [Solve $x - 5 sqrt(x) + 6 = 0$.],
  [
    *Step 1 — Let $u = sqrt(x) >= 0$, so $x = u^2$:*
    $ u^2 - 5 u + 6 = (u - 2)(u - 3) = 0 quad arrow.r.double quad sqrt(x) = 2 "or" sqrt(x) = 3 $
    Squaring gives $x = 4$ or $x = 9$.
    *Final Answer:* $bold(x = 4 "or" x = 9)$.
  ],
)

#worked-example(
  "8.24",
  "Block Substitution u = √(x^2 + 3x)",
  tier: "JAMB CHALLENGE",
  [Find all real solutions to $x^2 + 3x + sqrt(x^2 + 3x) - 6 = 0$.],
  [
    *Step 1 — Let $u = sqrt(x^2 + 3x) >= 0$, so $x^2 + 3x = u^2$:*
    $ u^2 + u - 6 = (u - 2)(u + 3) = 0 $
    Reject $u = -3 < 0$; keep $u = 2$.

    *Step 2 — Solve $sqrt(x^2 + 3x) = 2$:*
    $ x^2 + 3x = 4 quad arrow.r.double quad x^2 + 3x - 4 = (x + 4)(x - 1) = 0 quad arrow.r.double quad x = 1 "or" x = -4 $
    *(Both give $x^2 + 3x = 4$, so $4 + sqrt(4) - 6 = 0$ ✓!)*
    *Final Answer:* $bold(x = 1 "or" x = -4)$.
  ],
)

#worked-example(
  "8.25",
  "Cube-Root Radical Equation (Odd Roots Allow Negative Values)",
  tier: "FOUNDATION",
  [Solve for $x$: #h(6pt) $root(3, 5x - 3) = -2$.],
  [
    *Step 1 — Cube both sides (unlike square roots, real cube roots CAN be negative!):*
    $ 5x - 3 = (-2)^3 = -8 quad arrow.r.double quad 5x = -5 quad arrow.r.double quad x = bold(-1) $
    *Final Answer:* $-bold(1)$.
  ],
)

#worked-example(
  "8.26",
  "Exact Trigonometric Surd Rationalization (60°)",
  tier: "UTME STANDARD",
  source: "UTME Past Paper",
  [Without tables, simplify $frac(tan 60^degree - 1, tan 60^degree + 1)$ in exact surd form.],
  [
    *Step 1 — Substitute $tan 60^degree = sqrt(3)$ and rationalize via conjugate $(sqrt(3) - 1)$:*
    $ frac(sqrt(3) - 1, sqrt(3) + 1) = frac((sqrt(3) - 1)^2, 3 - 1) = frac(3 - 2 sqrt(3) + 1, 2) = frac(4 - 2 sqrt(3), 2) = bold(2 - sqrt(3)) $
    *Final Answer:* $bold(2 - sqrt(3))$.
  ],
)

#worked-example(
  "8.27",
  "Geometric Surd Application — Equilateral Triangle Altitude & Area",
  tier: "UTME STANDARD",
  [An equilateral triangle has side length $s = 4 sqrt(3)" cm"$. Find its exact perpendicular height $h$ and exact area $A$.],
  [
    *Step 1 — Altitude $h = frac(sqrt(3), 2) s$:*
    $ h = frac(sqrt(3), 2) times 4 sqrt(3) = 2 times 3 = bold(6 "cm") $

    *Step 2 — Area $A = frac(1, 2) times s times h$:*
    $ A = frac(1, 2) times 4 sqrt(3) times 6 = bold(12 sqrt(3) "cm"^2) $
  ],
)

#worked-example(
  "8.28",
  "Evaluating High-Degree Polynomials at a Surd Root",
  tier: "JAMB CHALLENGE",
  [If $x = 1 + sqrt(2)$, find the exact value of $x^3 - 2 x^2 - x + 5$.],
  [
    *Step 1 — Isolate the surd and square to form a zero quadratic:*
    $ x - 1 = sqrt(2) quad arrow.r.double quad (x - 1)^2 = 2 quad arrow.r.double quad x^2 - 2x - 1 = 0 $

    *Step 2 — Factor $(x^2 - 2x - 1)$ out of the cubic:*
    $ x^3 - 2 x^2 - x + 5 = x(x^2 - 2x - 1) + 5 = x(0) + 5 = bold(5) $
    *Final Answer:* *5*.
  ],
)

#worked-example(
  "8.29",
  "Simplifying Iterated Nested Square Roots",
  tier: "UTME STANDARD",
  [Express $sqrt(2 sqrt(2 sqrt(2)))$ as a single power of $2$.],
  [
    *Step 1 — Work from the innermost radical outward using fractional exponents:*
    - Inner pair: $2 sqrt(2) = 2^1 dot 2^(1 / 2) = 2^(3 / 2)$, so $sqrt(2 sqrt(2)) = (2^(3 / 2))^(1 / 2) = 2^(3 / 4)$.
    - Outer radical: $sqrt(2 dot 2^(3 / 4)) = (2^(7 / 4))^(1 / 2) = bold(2^(7 / 8))$.
    *Final Answer:* $bold(2^(7 / 8))$.
  ],
)

#worked-example(
  "8.30",
  "Conjugate-Identity Trick for Two-Radical Equations",
  tier: "JAMB CHALLENGE",
  [Solve $sqrt(x + 9) - sqrt(x - 7) = 2$ without squaring twice.],
  [
    *Step 1 — Multiply by the conjugate sum $S = sqrt(x + 9) + sqrt(x - 7)$:*
    $ (sqrt(x + 9) - sqrt(x - 7))(sqrt(x + 9) + sqrt(x - 7)) = (x + 9) - (x - 7) = 16 $
    Since the first bracket equals $2$, we get $2 S = 16 arrow.r.double sqrt(x + 9) + sqrt(x - 7) = 8$!

    *Step 2 — Add the two equations:*
    $ 2 sqrt(x + 9) = 2 + 8 = 10 quad arrow.r.double quad sqrt(x + 9) = 5 quad arrow.r.double quad x + 9 = 25 quad arrow.r.double quad x = bold(16) $
    *Final Answer:* *16*.
  ],
)

#worked-example(
  "8.31",
  "Multiplying Radicals of Different Orders (√3 × ∛2)",
  tier: "UTME STANDARD",
  [Express $sqrt(3) times root(3, 2)$ as a single radical.],
  [
    *Step 1 — Convert both indices ($1 / 2$ and $1 / 3$) to their common denominator $6$:*
    $ 3^(1 / 2) times 2^(1 / 3) = 3^(3 / 6) times 2^(2 / 6) = root(6, 3^3 times 2^2) = root(6, 27 times 4) = bold(root(6, 108)) $
    *Final Answer:* $bold(root(6, 108))$.
  ],
)

#worked-example(
  "8.32",
  "Rationalizing a Cube-Root Binomial Denominator",
  tier: "JAMB CHALLENGE",
  [Rationalize the denominator of $frac(3, root(3, 4) - 1)$.],
  [
    *Step 1 — Use difference of cubes $u^3 - 1 = (u - 1)(u^2 + u + 1)$ with $u = root(3, 4)$:*
    Multiply top and bottom by $(root(3, 16) + root(3, 4) + 1)$:
    $ frac(3(root(3, 16) + root(3, 4) + 1), 4 - 1) = root(3, 16) + root(3, 4) + 1 = bold(2 root(3, 2) + root(3, 4) + 1) $
    *Final Answer:* $bold(2 root(3, 2) + root(3, 4) + 1)$.
  ],
)

// ============================================================================
// SECTION 8.5 RAPID-REVISION SUMMARY TABLE
// ============================================================================
== 8.5 Chapter 8 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 2.0fr, 1.7fr),
  inset: 7.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Concept],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Master Formula],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[JAMB Exam Trap],

  [*Canonical Reduction*],
  [$sqrt(k^2 m) = k sqrt(m)$ ($m$ square-free).],
  [Add/subtract ONLY like surds ($m$ identical after reduction).],

  [*Conjugate Product*],
  [$(p + q sqrt(r))(p - q sqrt(r)) = p^2 - q^2 r$.],
  [Flip ONLY the middle sign; rationalize BEFORE plugging decimals!],

  [*Surd Equality*],
  [$a + b sqrt(k) = c + d sqrt(k) arrow.r.double a = c, b = d$.],
  [Requires $a, b, c, d in QQ$ and $sqrt(k)$ irrational.],

  [*Root of Surd*],
  [$sqrt((x + y) plus.minus 2 sqrt(x y)) = sqrt(x) plus.minus sqrt(y)$ ($x > y$).],
  [Put larger $sqrt(x)$ first so $sqrt(x) - sqrt(y) > 0$!],

  [*Radical Equations*],
  [$sqrt(f(x)) = g(x) arrow.r.double g(x) >= 0, f = g^2$.],
  [ALWAYS test candidate roots in original equation to drop extraneous roots!],
)

// ============================================================================
// END-OF-CHAPTER JAMB UTME PRACTICE DRILL (55 QUESTIONS)
// ============================================================================
== 8.6 JAMB UTME Practice Drill — Chapter 8 (55 Questions)

Attempt all 55 questions without a calculator (target time: *45 minutes*).

#mcq(1, [Express $sqrt(72)$ in its simplest canonical surd form.], [$6 sqrt(2)$], [$3 sqrt(8)$], [$2 sqrt(18)$], [$8 sqrt(2)$])

#mcq(2, [Simplify $sqrt(147)$.], [$3 sqrt(7)$], [$7 sqrt(3)$], [$21 sqrt(3)$], [$7 sqrt(7)$])

#mcq(3, [Simplify $sqrt(50) + sqrt(32) - sqrt(18)$.], [$12 sqrt(2)$], [$8 sqrt(2)$], [$6 sqrt(2)$], [$5 sqrt(2)$])

#mcq(4, [Simplify $2 sqrt(27) - 3 sqrt(12) + sqrt(75)$.], [$7 sqrt(3)$], [$3 sqrt(3)$], [$6 sqrt(3)$], [$5 sqrt(3)$])

#mcq(5, [Evaluate $sqrt(45) - sqrt(20) + sqrt(80)$.], [$5 sqrt(5)$], [$3 sqrt(5)$], [$7 sqrt(5)$], [$9 sqrt(5)$])

#mcq(6, [Arrange $3 sqrt(2)$, $sqrt(19)$, and $2 sqrt(5)$ in ascending order.], [$sqrt(19), 3 sqrt(2), 2 sqrt(5)$], [$3 sqrt(2), sqrt(19), 2 sqrt(5)$], [$2 sqrt(5), sqrt(19), 3 sqrt(2)$], [$3 sqrt(2), 2 sqrt(5), sqrt(19)$])

#mcq(7, [Evaluate $(2 + sqrt(3))(2 - sqrt(3))$.], [$7$], [$4 - 2 sqrt(3)$], [$1$], [$-1$])

#mcq(8, [Expand and simplify $(3 + sqrt(2))^2$.], [$11$], [$9 + 2 sqrt(2)$], [$11 + 3 sqrt(2)$], [$11 + 6 sqrt(2)$])

#mcq(9, [Expand and simplify $(2 sqrt(5) - 3)(sqrt(5) + 2)$.], [$4 + sqrt(5)$], [$16 + sqrt(5)$], [$4 - sqrt(5)$], [$4 + 7 sqrt(5)$])

#mcq(10, [Rationalize the denominator of $frac(12, sqrt(6))$.], [$6 sqrt(2)$], [$2 sqrt(6)$], [$12 sqrt(6)$], [$sqrt(6)$])

#mcq(11, [Simplify $frac(10, 3 sqrt(5))$.], [$frac(10 sqrt(5), 3)$], [$2 sqrt(5)$], [$frac(2 sqrt(5), 3)$], [$frac(sqrt(5), 3)$])

#mcq(12, [Rationalize $frac(4, sqrt(5) - 1)$.], [$sqrt(5) - 1$], [$4 sqrt(5) + 4$], [$frac(sqrt(5) + 1, 2)$], [$sqrt(5) + 1$])

#mcq(13, [Simplify $frac(14, 3 + sqrt(2))$.], [$6 - 2 sqrt(2)$], [$6 + 2 sqrt(2)$], [$42 - 14 sqrt(2)$], [$3 - sqrt(2)$])

#mcq(14, [Express $frac(sqrt(3) + 1, sqrt(3) - 1)$ with a rational denominator.], [$1 + sqrt(3)$], [$2 + sqrt(3)$], [$4 + 2 sqrt(3)$], [$2 - sqrt(3)$])

#mcq(15, [Rationalize $frac(3 + sqrt(5), 3 - sqrt(5))$.], [$7 + 3 sqrt(5)$], [$frac(7 - 3 sqrt(5), 2)$], [$frac(7 + 3 sqrt(5), 2)$], [$frac(14 + 3 sqrt(5), 4)$])

#mcq(16, [Simplify $frac(1, 2 - sqrt(3)) + frac(1, 2 + sqrt(3))$.], [$2 sqrt(3)$], [$2$], [$8$], [$4$])

#mcq(17, [Simplify $frac(1, sqrt(7) - sqrt(5)) - frac(1, sqrt(7) + sqrt(5))$.], [$sqrt(5)$], [$sqrt(7)$], [$2 sqrt(5)$], [$frac(sqrt(5), 2)$])

#mcq(18, [Given $sqrt(2) = 1.414$, find the value of $frac(6, sqrt(2))$.], [$8.484$], [$4.242$], [$2.828$], [$3.414$])

#mcq(19, [Given $sqrt(3) = 1.732$, evaluate $frac(2, 2 - sqrt(3))$.], [$3.732$], [$0.536$], [$7.464$], [$6.928$])

#mcq(20, [Given $sqrt(5) = 2.236$, calculate $frac(2, sqrt(5) + 1)$ correct to $3$ decimal places.], [$1.618$], [$1.236$], [$0.809$], [$0.618$])

#mcq(21, [If $frac(2 + sqrt(3), 2 - sqrt(3)) = a + b sqrt(3)$ where $a, b in ZZ$, find $a + b$.], [$11$], [$3$], [$10$], [$12$])

#mcq(22, [If $x = 3 + 2 sqrt(2)$, find the value of $x + frac(1, x)$.], [$4 sqrt(2)$], [$6$], [$9$], [$3$])

#mcq(23, [If $x = 3 + 2 sqrt(2)$, evaluate $x^2 + frac(1, x^2)$.], [$36$], [$38$], [$34$], [$17$])

#mcq(24, [Find the positive square root of $5 + 2 sqrt(6)$.], [$sqrt(6) + 1$], [$sqrt(5) + 1$], [$2 + sqrt(3)$], [$sqrt(3) + sqrt(2)$])

#mcq(25, [Simplify $sqrt(11 - 6 sqrt(2))$.], [$3 - sqrt(2)$], [$sqrt(2) - 3$], [$3 + sqrt(2)$], [$sqrt(6) - sqrt(5)$])

#mcq(26, [Solve for $x$: $sqrt(4x - 7) = 3$.], [$frac(5, 2)$], [$4$], [$2$], [$8$])

#mcq(27, [Find $x$ if $sqrt(5x + 5) - 2 = 3$.], [$1$], [$5$], [$4$], [$6$])

#mcq(28, [Find all valid real roots of $sqrt(x + 6) = x$.], [$3$ or $-2$], [$-2$ only], [$6$ only], [$3$ only])

#mcq(29, [Solve the radical equation $sqrt(3x + 1) = x - 3$.], [$8$], [$8$ or $1$], [$1$ only], [$5$])

#mcq(30, [Solve $sqrt(2x - 1) = sqrt(x + 4)$.], [$3$], [$5$], [$frac(5, 3)$], [$4$])

#mcq(31, [Find $x$ satisfying $sqrt(x + 5) + sqrt(x) = 5$.], [$1$], [$9$], [$4$], [$20$])

#mcq(32, [Find the roots of $x - 7 sqrt(x) + 12 = 0$.], [$3$ or $4$], [$-9$ or $-16$], [$sqrt(3)$ or $2$], [$9$ or $16$])

#mcq(33, [Evaluate $sqrt(12) times sqrt(27)$.], [$18$], [$9 sqrt(3)$], [$36$], [$6 sqrt(3)$])

#mcq(34, [Simplify $sqrt(frac(8, 27)) times sqrt(6)$.], [$frac(2, 3)$], [$frac(4, 3)$], [$frac(4 sqrt(3), 9)$], [$frac(8, 9)$])

#mcq(35, [Evaluate $frac(sqrt(18) + sqrt(8), sqrt(2))$.], [$13$], [$5 sqrt(2)$], [$5$], [$6$])

#mcq(36, [Simplify $sqrt(3) + frac(3, sqrt(3)) + frac(1, sqrt(27))$.], [$frac(7 sqrt(3), 3)$], [$frac(10 sqrt(3), 9)$], [$2 sqrt(3)$], [$frac(19 sqrt(3), 9)$])

#mcq(37, [Evaluate $(2 sqrt(3) - 5)(2 sqrt(3) + 5)$.], [$-13$], [$13$], [$-19$], [$37$])

#mcq(38, [Simplify $frac(1, 1 + sqrt(2)) + frac(1, sqrt(2) + sqrt(3)) + frac(1, sqrt(3) + 2)$.], [$3$], [$1$], [$2 sqrt(3) - 1$], [$2$])

#mcq(39, [Without tables, evaluate $(tan 60^degree)^2 - (sin 45^degree)^2$.], [$frac(1, 2)$], [$frac(7, 2)$], [$frac(5, 2)$], [$2$])

#mcq(40, [Find the length of the diagonal of a square of side $5 sqrt(2)" cm"$.], [$5" cm"$], [$10 sqrt(2)" cm"$], [$20" cm"$], [$10" cm"$])

#mcq(41, [Find the exact length of the space diagonal of a cube of edge $4" cm"$.], [$4 sqrt(3)" cm"$], [$4 sqrt(2)" cm"$], [$12" cm"$], [$8 sqrt(3)" cm"$])

#mcq(42, [Find the area of a rectangle of length $(4 + sqrt(5))" cm"$ and breadth $(3 - sqrt(5))" cm"$.], [$(17 - sqrt(5))" cm"^2$], [$(7 - sqrt(5))" cm"^2$], [$(7 + sqrt(5))" cm"^2$], [$7" cm"^2$])

#mcq(43, [Simplify $(sqrt(5) + sqrt(3))^2 + (sqrt(5) - sqrt(3))^2$.], [$8$], [$2 sqrt(15)$], [$16$], [$4$])

#mcq(44, [Simplify $(sqrt(7) + sqrt(2))^2 - (sqrt(7) - sqrt(2))^2$.], [$18$], [$2 sqrt(14)$], [$10$], [$4 sqrt(14)$])

#mcq(45, [If $x = 2 - sqrt(3)$, evaluate $x^2 - 4x + 7$.], [$6$], [$4$], [$7 - 4 sqrt(3)$], [$10$])

#mcq(46, [Solve for $x$: $root(3, 2x + 1) = -3$.], [$13$], [$-14$], [$-5$], [$14$])

#mcq(47, [Express the mixed surd $2 sqrt(7)$ as a pure surd.], [$sqrt(14)$], [$sqrt(49)$], [$sqrt(28)$], [$sqrt(98)$])

#mcq(48, [Rationalize $frac(6, sqrt(5) + sqrt(2))$.], [$3(sqrt(5) - sqrt(2))$], [$6(sqrt(5) - sqrt(2))$], [$2(sqrt(5) + sqrt(2))$], [$2(sqrt(5) - sqrt(2))$])

#mcq(49, [Find $k$ if $sqrt(75) - sqrt(12) + sqrt(27) = k sqrt(3)$.], [$6$], [$10$], [$4$], [$8$])

#mcq(50, [For what rational value of $a$ is the product $(a + sqrt(2))(3 - sqrt(2))$ a *rational* number?], [$-3$], [$3$], [$2$], [$0$])

#mcq(51, [Evaluate $sqrt(1 + frac(9, 16)) + sqrt(1 - frac(9, 25))$.], [$frac(9, 20)$], [$2$], [$frac(41, 20)$], [$frac(39, 20)$])

#mcq(52, [How many real solutions does the equation $sqrt(x + 2) = -3$ possess?], [$1$ (namely $x = 7$)], [$2$], [$1$ (namely $x = -11$)], [$0$ (no real solution)])

#mcq(53, [Simplify $frac(2 sqrt(6), sqrt(2) + sqrt(3))$.], [$6 sqrt(2) - 4 sqrt(3)$], [$6 sqrt(2) + 4 sqrt(3)$], [$4 sqrt(3) - 6 sqrt(2)$], [$2 sqrt(3) - 2 sqrt(2)$])

#mcq(54, [Given $sqrt(6) = 2.449$, evaluate $frac(sqrt(3) + sqrt(2), sqrt(3) - sqrt(2))$.], [$7.449$], [$9.898$], [$4.898$], [$5.449$])

#mcq(55, [Express $sqrt(3 sqrt(3 sqrt(3)))$ as an index power of $3$.], [$3^(3 / 8)$], [$3^(3 / 4)$], [$3^(7 / 8)$], [$3^(7 / 4)$])

// ============================================================================
// ANSWER KEY & FULL MULTI-STEP SOLUTIONS
// ============================================================================
== 8.7 Quick Answer Key & Complete Worked Solutions — Chapter 8

#answer-key-grid((
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C", "D", "A", "B", "C", "D",
  "A", "B", "C", "D", "A", "B", "C", "D", "A", "B",
  "C", "D", "A", "B", "C",
))

#sol-item(1, "A")[
  *Step 1:* Factor out largest square $36$:
  $ sqrt(72) = sqrt(36 times 2) = 6 sqrt(2) $
]

#sol-item(2, "B")[
  *Step 1:* Factor out $49$:
  $ sqrt(147) = sqrt(49 times 3) = 7 sqrt(3) $
]

#sol-item(3, "C")[
  *Step 1:* Reduce each term to $k sqrt(2)$:
  $ 5 sqrt(2) + 4 sqrt(2) - 3 sqrt(2) = 6 sqrt(2) $
]

#sol-item(4, "D")[
  *Step 1:* Reduce each term to $k sqrt(3)$:
  $ 2(3 sqrt(3)) - 3(2 sqrt(3)) + 5 sqrt(3) = 6 sqrt(3) - 6 sqrt(3) + 5 sqrt(3) = 5 sqrt(3) $
]

#sol-item(5, "A")[
  *Step 1:* Reduce each term to $k sqrt(5)$:
  $ 3 sqrt(5) - 2 sqrt(5) + 4 sqrt(5) = 5 sqrt(5) $
]

#sol-item(6, "B")[
  *Step 1:* Convert to pure surds: $3 sqrt(2) = sqrt(18)$, $sqrt(19)$, $2 sqrt(5) = sqrt(20)$.
  $ 18 < 19 < 20 quad arrow.r.double quad 3 sqrt(2) < sqrt(19) < 2 sqrt(5) $
]

#sol-item(7, "C")[
  *Step 1:* Difference of squares:
  $ 2^2 - (sqrt(3))^2 = 4 - 3 = 1 $
]

#sol-item(8, "D")[
  *Step 1:* Expand binomial square:
  $ 3^2 + 2(3) sqrt(2) + (sqrt(2))^2 = 9 + 6 sqrt(2) + 2 = 11 + 6 sqrt(2) $
]

#sol-item(9, "A")[
  *Step 1:* FOIL expansion:
  $ 2(5) + 4 sqrt(5) - 3 sqrt(5) - 6 = 4 + sqrt(5) $
]

#sol-item(10, "B")[
  *Step 1:* Multiply top and bottom by $sqrt(6)$:
  $ frac(12 sqrt(6), 6) = 2 sqrt(6) $
]

#sol-item(11, "C")[
  *Step 1:* Multiply top and bottom by $sqrt(5)$:
  $ frac(10 sqrt(5), 3 times 5) = frac(2 sqrt(5), 3) $
]

#sol-item(12, "D")[
  *Step 1:* Multiply by conjugate $(sqrt(5) + 1)$:
  $ frac(4(sqrt(5) + 1), 5 - 1) = sqrt(5) + 1 $
]

#sol-item(13, "A")[
  *Step 1:* Multiply by conjugate $(3 - sqrt(2))$:
  $ frac(14(3 - sqrt(2)), 9 - 2) = 2(3 - sqrt(2)) = 6 - 2 sqrt(2) $
]

#sol-item(14, "B")[
  *Step 1:* Multiply by $(sqrt(3) + 1)$:
  $ frac((sqrt(3) + 1)^2, 3 - 1) = frac(4 + 2 sqrt(3), 2) = 2 + sqrt(3) $
]

#sol-item(15, "C")[
  *Step 1:* Multiply by $(3 + sqrt(5))$:
  $ frac(9 + 6 sqrt(5) + 5, 9 - 5) = frac(14 + 6 sqrt(5), 4) = frac(7 + 3 sqrt(5), 2) $
]

#sol-item(16, "D")[
  *Step 1:* Combine over $(2 - sqrt(3))(2 + sqrt(3)) = 1$:
  $ (2 + sqrt(3)) + (2 - sqrt(3)) = 4 $
]

#sol-item(17, "A")[
  *Step 1:* Combine over $(7 - 5) = 2$:
  $ frac((sqrt(7) + sqrt(5)) - (sqrt(7) - sqrt(5)), 2) = frac(2 sqrt(5), 2) = sqrt(5) $
]

#sol-item(18, "B")[
  *Step 1:* Rationalize first:
  $ frac(6, sqrt(2)) = 3 sqrt(2) = 3 times 1.414 = 4.242 $
]

#sol-item(19, "C")[
  *Step 1:* Rationalize first ($4 - 3 = 1$):
  $ 2(2 + sqrt(3)) = 2(3.732) = 7.464 $
]

#sol-item(20, "D")[
  *Step 1:* Rationalize first ($5 - 1 = 4$):
  $ frac(2(sqrt(5) - 1), 4) = frac(2.236 - 1, 2) = frac(1.236, 2) = 0.618 $
]

#sol-item(21, "A")[
  *Step 1:* Rationalize LHS:
  $ frac((2 + sqrt(3))^2, 4 - 3) = 7 + 4 sqrt(3) quad arrow.r.double quad a = 7, b = 4, a + b = 11 $
]

#sol-item(22, "B")[
  *Step 1:* Since $9 - 8 = 1$, $1 / x = 3 - 2 sqrt(2)$, so:
  $ x + frac(1, x) = (3 + 2 sqrt(2)) + (3 - 2 sqrt(2)) = 6 $
]

#sol-item(23, "C")[
  *Step 1:* Use $(x + 1 / x)^2 - 2$:
  $ 6^2 - 2 = 34 $
]

#sol-item(24, "D")[
  *Step 1:* $x + y = 5, x y = 6 arrow.r.double x = 3, y = 2$:
  $ sqrt(5 + 2 sqrt(6)) = sqrt(3) + sqrt(2) $
]

#sol-item(25, "A")[
  *Step 1:* Write $6 sqrt(2) = 2 sqrt(18)$; $x + y = 11, x y = 18 arrow.r.double x = 9, y = 2$:
  $ sqrt(9) - sqrt(2) = 3 - sqrt(2) > 0 $
]

#sol-item(26, "B")[
  *Step 1:* Square both sides:
  $ 4x - 7 = 9 quad arrow.r.double quad 4x = 16 quad arrow.r.double quad x = 4 $
]

#sol-item(27, "C")[
  *Step 1:* Isolate radical first:
  $ sqrt(5x + 5) = 5 quad arrow.r.double quad 5x + 5 = 25 quad arrow.r.double quad x = 4 $
]

#sol-item(28, "D")[
  *Step 1:* $x + 6 = x^2 arrow.r.double (x - 3)(x + 2) = 0$. Reject $x = -2 < 0$; accept $x = 3$ only.
]

#sol-item(29, "A")[
  *Step 1:* Requires $x >= 3$. Squaring: $3x + 1 = x^2 - 6x + 9 arrow.r.double x^2 - 9x + 8 = (x - 8)(x - 1) = 0$. Reject $x = 1$; accept $x = 8$.
]

#sol-item(30, "B")[
  *Step 1:* Equate positive radicands:
  $ 2x - 1 = x + 4 quad arrow.r.double quad x = 5 $
]

#sol-item(31, "C")[
  *Step 1:* Isolate $sqrt(x + 5) = 5 - sqrt(x)$ and square:
  $ x + 5 = 25 - 10 sqrt(x) + x quad arrow.r.double quad 10 sqrt(x) = 20 quad arrow.r.double quad sqrt(x) = 2 quad arrow.r.double quad x = 4 $
]

#sol-item(32, "D")[
  *Step 1:* Factor in $u = sqrt(x)$:
  $ (sqrt(x) - 3)(sqrt(x) - 4) = 0 quad arrow.r.double quad x = 9 "or" 16 $
]

#sol-item(33, "A")[
  *Step 1:* Combine under one root:
  $ sqrt(12 times 27) = sqrt(4 times 3 times 27) = sqrt(4 times 81) = 2 times 9 = 18 $
]

#sol-item(34, "B")[
  *Step 1:* Multiply radicands:
  $ sqrt(frac(8 times 6, 27)) = sqrt(frac(48, 27)) = sqrt(frac(16, 9)) = frac(4, 3) $
]

#sol-item(35, "C")[
  *Step 1:* Divide term by term:
  $ sqrt(9) + sqrt(4) = 3 + 2 = 5 $
]

#sol-item(36, "D")[
  *Step 1:* Rationalize each term:
  $ sqrt(3) + sqrt(3) + frac(sqrt(3), 9) = frac(19 sqrt(3), 9) $
]

#sol-item(37, "A")[
  *Step 1:* Difference of squares:
  $ (2 sqrt(3))^2 - 5^2 = 12 - 25 = -13 $
]

#sol-item(38, "B")[
  *Step 1:* Telescope:
  $ (sqrt(2) - 1) + (sqrt(3) - sqrt(2)) + (2 - sqrt(3)) = 2 - 1 = 1 $
]

#sol-item(39, "C")[
  *Step 1:* Substitute $tan 60^degree = sqrt(3)$ and $sin 45^degree = sqrt(2) / 2$:
  $ (sqrt(3))^2 - (frac(sqrt(2), 2))^2 = 3 - frac(1, 2) = frac(5, 2) $
]

#sol-item(40, "D")[
  *Step 1:* Diagonal $d = s sqrt(2)$:
  $ d = 5 sqrt(2) times sqrt(2) = 10" cm" $
]

#sol-item(41, "A")[
  *Step 1:* Space diagonal of cube of side $a$ is $a sqrt(3)$:
  $ sqrt(4^2 + 4^2 + 4^2) = 4 sqrt(3)" cm" $
]

#sol-item(42, "B")[
  *Step 1:* Multiply length by breadth:
  $ (4 + sqrt(5))(3 - sqrt(5)) = 12 - 4 sqrt(5) + 3 sqrt(5) - 5 = (7 - sqrt(5))" cm"^2 $
]

#sol-item(43, "C")[
  *Step 1:* Apply $2(a + b)$:
  $ 2(5 + 3) = 16 $
]

#sol-item(44, "D")[
  *Step 1:* Apply $4 sqrt(a b)$:
  $ 4 sqrt(7 times 2) = 4 sqrt(14) $
]

#sol-item(45, "A")[
  *Step 1:* Note $(x - 2)^2 = (-sqrt(3))^2 = 3 arrow.r.double x^2 - 4x + 4 = 3$:
  $ x^2 - 4x + 7 = (x^2 - 4x + 4) + 3 = 3 + 3 = 6 $
]

#sol-item(46, "B")[
  *Step 1:* Cube both sides:
  $ 2x + 1 = -27 quad arrow.r.double quad 2x = -28 quad arrow.r.double quad x = -14 $
]

#sol-item(47, "C")[
  *Step 1:* Bring $2$ inside by squaring:
  $ 2 sqrt(7) = sqrt(4 times 7) = sqrt(28) $
]

#sol-item(48, "D")[
  *Step 1:* Multiply by $(sqrt(5) - sqrt(2))$:
  $ frac(6(sqrt(5) - sqrt(2)), 5 - 2) = 2(sqrt(5) - sqrt(2)) $
]

#sol-item(49, "A")[
  *Step 1:* Reduce:
  $ 5 sqrt(3) - 2 sqrt(3) + 3 sqrt(3) = 6 sqrt(3) quad arrow.r.double quad k = 6 $
]

#sol-item(50, "B")[
  *Step 1:* Expand: $(3a - 2) + (3 - a) sqrt(2)$. For this to be rational, the coefficient of $sqrt(2)$ must vanish: $3 - a = 0 arrow.r.double a = 3$.
]

#sol-item(51, "C")[
  *Step 1:* Simplify inside each radical first:
  $ sqrt(frac(25, 16)) + sqrt(frac(16, 25)) = frac(5, 4) + frac(4, 5) = frac(25 + 16, 20) = frac(41, 20) $
]

#sol-item(52, "D")[
  *Step 1:* For every $x >= -2$, the principal square root satisfies $sqrt(x + 2) >= 0$, so it can NEVER equal $-3$. Hence $0$ real solutions.
]

#sol-item(53, "A")[
  *Step 1:* Multiply by $(sqrt(3) - sqrt(2))$ ($3 - 2 = 1$):
  $ 2 sqrt(6)(sqrt(3) - sqrt(2)) = 2 sqrt(18) - 2 sqrt(12) = 6 sqrt(2) - 4 sqrt(3) $
]

#sol-item(54, "B")[
  *Step 1:* Rationalize ($3 - 2 = 1$):
  $ (sqrt(3) + sqrt(2))^2 = 5 + 2 sqrt(6) = 5 + 2(2.449) = 9.898 $
]

#sol-item(55, "C")[
  *Step 1:* Unwrap inside-out:
  $ (3 dot (3 dot 3^(1 / 2))^(1 / 2))^(1 / 2) = (3 dot 3^(3 / 4))^(1 / 2) = 3^(7 / 8) $
]
