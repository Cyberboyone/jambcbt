#import "template.typ": *

#current-chapter.update("Chapter 8: Binary Operations")
#pagebreak()

#chapter-opener(
  8,
  "Binary Operations",
  subtitle: "Defined Operations, Closure, Commutativity, Associativity, Identity Elements and Inverses",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 8",
  utme-weight: "1 Question Most Years (80% Frequency)",
)

#focus-radar(
  objectives: (
    "Evaluate an expression involving a newly defined operation, including chained or nested operations.",
    "Determine whether a set is closed under a given operation.",
    "Test commutativity and associativity.",
    "Find the identity element of an operation on a set of numbers.",
    "Find the inverse of a given element, and solve simple equations written in the operation.",
  ),
  hotspots: (
    "Nested evaluation: $a * (b * c)$ versus $(a * b) * c$ — the two can differ!",
    "Identity element questions: solve $a * e = a$ with $a$ kept general.",
    "Inverse questions: solve $a * b = e$ for $b$ in terms of $a$.",
    "Operations defined with modular arithmetic, e.g. $a * b = a + b - a b$.",
    "Deciding which element has no inverse (e.g. $e$ itself is usually self-inverse, but other elements may fail).",
  ),
  trap-summary: "The most common error is substituting into the definition in the wrong order: $a * b$ and $b * a$ are only equal if the operation is commutative, which you must test rather than assume. The second is answering 'identity' when the question asked for 'inverse' — reread the demand line.",
)

// ============================================================================
== 8.1 What a Binary Operation Is

A *binary operation* on a set $S$ is a rule that takes two elements of $S$ and produces one element of $S$. JAMB defines the rule with a symbol you have never seen — $*$, $o$, $dot.o$, or $square$ — and the entire question is answered by *substituting literally*.

#concept-box("Substituting Into a Defined Operation")[
  If $a * b = a^2 + b^2 - a b$, then
  $ 3 * 4 = 3^2 + 4^2 - (3)(4) = 9 + 16 - 12 = 13 $
  There is no cleverness involved: match the first element to the first slot, the second to the second slot, and compute. Write the definition on your rough sheet with the numbers underneath it — this prevents the swap error.
]

#worked-example(
  1,
  "Direct evaluation",
  tier: "FOUNDATION",
  [If $a * b = a + b + a b$, evaluate $3 * 5$.],
  [
    *Step 1 — Match the slots:* $a = 3$, $b = 5$.

    *Step 2 — Substitute:*

    $ 3 * 5 = 3 + 5 + (3)(5) = 8 + 15 = 23 $
    *Check for a shortcut.* Note $a + b + a b = (a + 1)(b + 1) - 1$, so $3 * 5 = 4 times 6 - 1 = 23$ ✓ — useful when the numbers get large.

  ],
)

#worked-example(
  2,
  "Nested operation",
  tier: "UTME STANDARD",
  [If $a * b = 2a - b$, evaluate $3 * (4 * 1)$.],
  [
    *Step 1 — Work from the inside out.* First $4 * 1 = 2(4) - 1 = 7$.

    *Step 2 — Then* $3 * 7 = 2(3) - 7 = -1$.

    *Answer:* $-1$.

    *Trap.* Evaluating left to right as $(3 * 4) * 1$ gives $2 * 1 = 3$ — a different answer, which is why the brackets must be respected.

  ],
)

#worked-example(
  3,
  "Testing commutativity",
  tier: "UTME STANDARD",
  [If $a * b = a^2 - b$, determine whether the operation is commutative.],
  [
    *Step 1 — Compute both orders with simple numbers,* say $a = 2$, $b = 3$:

    $ 2 * 3 = 4 - 3 = 1 ; quad 3 * 2 = 9 - 2 = 7 $
    *Step 2 — Compare.* The results differ, so the operation is *not* commutative.

    *Step 3 — State the general reason:* $a * b = a^2 - b$ and $b * a = b^2 - a$ are different expressions, so no pair can be assumed equal.

  ],
)

#worked-example(
  4,
  "Testing associativity",
  tier: "JAMB CHALLENGE",
  [If $a * b = a^2 + b$, test whether $*$ is associative.],
  [
    *Step 1 — Compute $(2 * 3) * 1$:*

    $ 2 * 3 = 4 + 3 = 7 quad arrow.r.double quad 7 * 1 = 49 + 1 = 50 $
    *Step 2 — Compute $2 * (3 * 1)$:*

    $ 3 * 1 = 9 + 1 = 10 quad arrow.r.double quad 2 * 10 = 4 + 10 = 14 $
    *Step 3 — Compare.* $50 != 14$, so the operation is *not* associative.

    *Exam technique.* One counter-example is a complete proof of non-associativity; no general algebra is required.
  ],
)

#worked-example(
  5,
  "Finding the identity element",
  tier: "UTME STANDARD",
  [If $a * b = a + b - 3$, find the identity element $e$.],
  [
    *Step 1 — Apply the definition of identity:* $a * e = a$ for every $a$.

    $ a + e - 3 = a $
    *Step 2 — Cancel a from both sides:* $e - 3 = 0$, so $e = 3$.

    *Check.* $a * 3 = a + 3 - 3 = a$ ✓ and $3 * a = 3 + a - 3 = a$ ✓

    *Insight.* The identity absorbs the "$-3$" in the definition, so it is $3$, not $0$.
  ],
)

#worked-example(
  6,
  "Identity for a multiplicative-type operation",
  tier: "JAMB CHALLENGE",
  [If $a * b = a b + a + b$, find the identity element.],
  [
    *Step 1 — Set $a * e = a$:*

    $ a e + a + e = a quad arrow.r.double quad a e + e = 0 quad arrow.r.double quad e(a + 1) = 0 $
    *Step 2 — This must hold for every a,* so $e = 0$.

    *Check.* $a * 0 = 0 + a + 0 = a$ ✓

    *Shortcut.* Note $a b + a + b = (a + 1)(b + 1) - 1$, so the operation behaves like multiplication shifted by $1$; the identity of ordinary multiplication is $1$, which shifts to $0$.
  ],
)

#worked-example(
  7,
  "Finding an inverse",
  tier: "JAMB CHALLENGE",
  [If $a * b = a + b - 3$ (from Example 5), find the inverse of $5$.],
  [
    *Step 1 — Use the identity $e = 3$ and solve $5 * b = 3$:*

    $ 5 + b - 3 = 3 quad arrow.r.double quad b + 2 = 3 quad arrow.r.double quad b = 1 $
    *Step 2 — Verify both orders:* $5 * 1 = 5 + 1 - 3 = 3$ ✓ and $1 * 5 = 1 + 5 - 3 = 3$ ✓

    *Answer:* the inverse of $5$ is $1$.

  ],
)

#worked-example(
  8,
  "General inverse formula",
  tier: "JAMB CHALLENGE",
  [If $a * b = a b + a + b$ (from Example 6), find a formula for the inverse of $a$.],
  [
    *Step 1 — Set $a * b = e = 0$:*

    $ a b + a + b = 0 quad arrow.r.double quad b(a + 1) = -a quad arrow.r.double quad b = (-a)/(a + 1) $
    *Step 2 — State the condition:* the inverse exists for every $a != -1$.

    *Check with $a = 1$:* $b = -1/2$, and $1 * (-1/2) = -1/2 + 1 - 1/2 = 0$ ✓

  ],
)

#worked-example(
  9,
  "Solving an equation written in the operation",
  tier: "JAMB CHALLENGE",
  [If $a * b = a b + 2$, solve $x * 3 = 14$.],
  [
    *Step 1 — Substitute into the definition:*

    $ 3x + 2 = 14 $
    *Step 2 — Solve:* $3x = 12$, so $x = 4$.

    *Check.* $4 * 3 = 12 + 2 = 14$ ✓

    *Technique.* Treat the defined operation as an instruction to build an ordinary equation — that is all it is.
  ],
)

#worked-example(
  10,
  "Closure on a finite set",
  tier: "UTME STANDARD",
  [The operation $*$ is defined on $S = {1, 2, 3}$ by $a * b = a + b$. Is $S$ closed under $*$?],
  [
    *Step 1 — Try the largest pair:* $3 * 3 = 6$, which is not in $S$.

    *Step 2 — Conclusion.* Since one result leaves the set, $S$ is *not* closed under this operation. (Closure requires *every* pair to produce a member of the set.)

    *Equivalent table test.* Build the $3 times 3$ table: any entry outside ${1, 2, 3}$ breaks closure immediately.
  ],
)

#worked-example(
  11,
  "Operation table questions",
  tier: "UTME STANDARD",
  [The operation $*$ on ${0, 1, 2, 3}$ is defined by $a * b = (a + b) mod 4$. Find the identity and the inverse of $3$.],
  [
    *Step 1 — Identity:* $a * e = a$ means $(a + e) mod 4 = a$, which is satisfied by $e = 0$ (and by $e = 4$, which is not in the set).

    *Step 2 — Inverse of 3:* solve $(3 + b) mod 4 = 0$, so $3 + b = 4$ and $b = 1$.

    *Check.* $3 * 1 = 4 mod 4 = 0 = e$ ✓

    *Observation.* Every element has an inverse here, so the set forms a group under $*$.
  ],
)

#diagram-fig("diagrams/ch08_operation_table.svg",
  "An operation table for $a * b = (a + b) mod 5$. The table makes closure, commutativity (symmetry) and inverses (zeros) visible at a glance.")

#diagram-fig("diagrams/ch08_property_map.svg",
  "The five properties JAMB tests, and the two solving routines that answer almost every identity and inverse question.")

#worked-example(
  12,
  "Order matters",
  tier: "JAMB CHALLENGE",
  [If $a * b = a^b$, evaluate $(2 * 3) * 2$ and $2 * (3 * 2)$ and comment.],
  [
    *Step 1 — First expression:* $2 * 3 = 2^3 = 8$, then $8 * 2 = 8^2 = 64$.

    *Step 2 — Second expression:* $3 * 2 = 3^2 = 9$, then $2 * 9 = 2^9 = 512$.

    *Step 3 — Comment.* The values differ, so exponentiation is neither commutative nor associative. (Indeed $a^b != b^a$ in general, and $(a^b)^c = a^(b c) != a^(b^c)$.)

  ],
)

#worked-example(
  13,
  "Identity of an operation involving fractions",
  tier: "JAMB CHALLENGE",
  [If $a * b = (a + b)/(1 + a b)$ for positive real numbers, find the identity element.],
  [
    *Step 1 — Set $a * e = a$:*

    $ (a + e)/(1 + a e) = a $
    *Step 2 — Cross-multiply:*

    $ a + e = a + a^2 e quad arrow.r.double quad e = a^2 e quad arrow.r.double quad e(1 - a^2) = 0 $
    *Step 3 — For this to hold for every a,* $e = 0$.

    *Check.* $a * 0 = (a + 0)/(1 + 0) = a$ ✓

    *Context.* This is the velocity-addition formula of special relativity; the identity is $0$ because adding zero velocity changes nothing.
  ],
)

#worked-example(
  14,
  "Find the unknown in a defined operation",
  tier: "JAMB CHALLENGE",
  [If $a * b = a^2 + b^2$, find $x$ such that $x * 3 = 25$.],
  [
    *Step 1 — Substitute:*

    $ x^2 + 9 = 25 quad arrow.r.double quad x^2 = 16 $
    *Step 2 — Both roots:* $x = plus.minus 4$.

    *Step 3 — Check the options.* If only positive values are listed, choose $4$; but recognise that $x = -4$ is also a solution of the algebra ($16 + 9 = 25$ ✓).

  ],
)

#worked-example(
  15,
  "Associativity that does hold",
  tier: "JAMB CHALLENGE",
  [Show that the operation $a * b = a + b + 2$ is associative, and find its identity.],
  [
    *Step 1 — Compute the left grouping:*

    $ (a * b) * c = (a + b + 2) * c = a + b + 2 + c + 2 = a + b + c + 4 $
    *Step 2 — Compute the right grouping:*

    $ a * (b * c) = a * (b + c + 2) = a + b + c + 2 + 2 = a + b + c + 4 $
    *Step 3 — They agree for all values, so the operation is associative.*

    *Step 4 — Identity:* solve $a * e = a$, i.e. $a + e + 2 = a$, giving $e = -2$.

    *Insight.* A constant added inside the definition simply shifts the identity; here the shift is $-2$.
  ],
)

== 8.2 Chapter 8 Rapid-Revision Checklist

#table(
  columns: (1.2fr, 1.9fr, 1.6fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question asks for],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[What to do],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Note],

  ["evaluate $a * b$"], ["Substitute directly in the stated order."], [$a * b$ need not equal $b * a$.],
  ["nested $a * (b * c)$"], ["Inside brackets first, then outside."], [Order of evaluation changes the answer if non-associative.],
  ["is it commutative?"], ["Compare $a * b$ with $b * a$ in general, or one counter-example."], [One counter-example disproves it.],
  ["is it associative?"], ["Compare $(a * b) * c$ with $a * (b * c)$."], [Not implied by commutativity.],
  ["identity $e$"], ["Solve $a * e = a$ keeping $a$ general."], [If $a$ cancels completely, $e$ must be a constant for all $a$.],
  ["inverse of $k$"], ["Solve $k * b = e$ (or $b * k = e$)."], [Use the identity found first.],
  ["is it closed?"], ["Check that every result stays in the set."], [One exception breaks closure.],
  ["solve $x * 3 = 14$"], ["Convert to an ordinary equation and solve."], [Check both roots if a square appears.],
)

// ============================================================================
#pagebreak()

// ============================================================================

// ============================================================================
#include "drill_ch08.typ"
