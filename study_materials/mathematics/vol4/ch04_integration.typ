#import "template.typ": *

#current-chapter.update("Chapter 4: Integration")
#pagebreak()

#chapter-opener(
  4,
  "Integration: Indefinite and Definite",
  subtitle: "Integration as Reverse Differentiation, the Power Rule, Negative and Fractional Powers, the Constant of Integration, and Definite Integrals",
  syllabus-ref: "Sec. IV • Topic 4",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain integration as the reverse of differentiation, and write the constant of integration.",
    "Integrate powers of $x$ with the rule $x^(n+1)/(n+1)$, including negative and fractional powers.",
    "Integrate a polynomial term by term.",
    "Evaluate a definite integral by substituting the limits and subtracting.",
    "Find the constant of integration from a given condition.",
  ),
  hotspots: (
    "\"Evaluate $integral (6x^2 - 4x + 3) dif x$\" — the plain power rule, four times a paper.",
    "\"Evaluate $integral_0^2 (3x^2 + 1) dif x$\" — the definite form, and the subtraction is where marks go.",
    "\"Given $f'(x) = ...$ and $f(1) = ...$, find $f(x)$\" — integrate, then solve for $c$.",
    "\"Integrate $1/x^2$ or $sqrt(x)$\" — rewrite as a power first.",
    "The definite integral with a *negative* value — the area is its magnitude.",
  ),
  trap-summary: "Three slips. (1) Forgetting $+ c$ on an indefinite integral — a mark gone in one character. (2) Dividing by the old power instead of the new one, so $x^3$ becomes $x^4/3$ rather than $x^4/4$. (3) Reversing the subtraction in a definite integral, which flips the sign of the answer.",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 Integration Reverses Differentiation

Differentiation takes a power down by one and multiplies by the old power. Integration must therefore take a power *up* by one and divide by the *new* power.

#diagram-fig("diagrams/ch04_antiderivative.svg",
  "The three facts that generate every integral in the syllabus: the power rule, the constant rule, and the sum rule.")

#formula-box("The Power Rule for Integration")[
  $ integral x^n dif x = x^(n+1)/(n+1) + c quad (n != -1) $

  #v(3pt)
  Check any integral by differentiating the answer. If you get back the original expression, the integration was right; if you are off by a constant, you integrated correctly but wrote $+c$ carelessly.

  #v(2pt)
  *Why $+ c$ is not optional.* Every constant has derivative zero, so the antiderivative is never unique — $x^3$, $x^3 + 5$ and $x^3 - 2$ all differentiate to $3x^2$. The $c$ records that ignorance.
]

#concept-box("Two Rules That Do Most of the Work")[
  $ integral k dif x = k x + c quad "and" quad integral (f + g) dif x = integral f dif x + integral g dif x $

  #v(3pt)
  A constant integrates to a linear term, and a sum integrates term by term. Together with the power rule they handle every polynomial in the syllabus.
]

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 Integrating Polynomials

#worked-example(
  1,
  "One term",
  tier: "FOUNDATION",
  [Evaluate $integral 3x^2 dif x$.],
  [
    *Power up, divide by the new power.*

    $ 3 times x^3/3 + c = x^3 + c $

    *Check by differentiating.* $dif (x^3 + c) / dif x = 3x^2$, which is the integrand. Correct.

    *The shortcut.* The coefficient $3$ cancelled with the new denominator $3$; that is why this particular one is so tidy.
  ],
)

#worked-example(
  2,
  "A polynomial, term by term",
  tier: "UTME STANDARD",
  [Evaluate $integral (4x^3 - 2x + 5) dif x$.],
  [
    *Integrate each term.*

    $ 4x^3 -> x^4 quad -2x -> -x^2 quad 5 -> 5x $

    *Combine and add $c$.*

    $ integral (4x^3 - 2x + 5) dif x = x^4 - x^2 + 5x + c $

    *The check.* Differentiate the answer: $4x^3 - 2x + 5$. Exactly the integrand, so the work is right.

    *Note where the coefficient went.* $4x^3$ integrates to $4x^4/4 = x^4$; the $4$ and the $4$ cancel. Do not also divide $4$ by its old power.
  ],
)

#worked-example(
  3,
  "A negative power",
  tier: "UTME STANDARD",
  [Evaluate $integral 1/x^2 dif x$.],
  [
    *Rewrite as a power.*

    $ integral x^(-2) dif x = x^(-1)/(-1) + c = -1/x + c $

    *The check.* Differentiate $-x^(-1)$: the power $-1$ comes down, giving $+x^(-2)$. Correct.

    *The sign trap.* Dividing by $-1$ flips the sign, so the answer is *negative*. Candidates who drop the minus sign lose the mark in a question they otherwise understood.

    *Why $n != -1$.* The rule fails exactly at $n = -1$, because then the new power would be $0$ and division by zero is impossible. (The integral of $1/x$ is a logarithm, which is outside this syllabus.)
  ],
)

#worked-example(
  4,
  "A fractional power",
  tier: "UTME STANDARD",
  [Evaluate $integral sqrt(x) dif x$.],
  [
    *Rewrite.* $integral x^(1/2) dif x$.

    *Power up and divide.*

    $ x^(3/2)/(3/2) + c = 2/3 x^(3/2) + c $

    *Write it back in root form if the options do.*

    $ 2/3 x sqrt(x) + c $

    *The arithmetic to keep straight.* Adding one to $1/2$ gives $3/2$; dividing by $3/2$ is multiplying by $2/3$.
  ],
)

#worked-example(
  5,
  "A bracket that must be expanded",
  tier: "JAMB CHALLENGE",
  [Evaluate $integral (2x + 1)^2 dif x$.],
  [
    *Expand first — there is no chain rule for integration in this syllabus.*

    $ (2x + 1)^2 = 4x^2 + 4x + 1 $

    *Integrate term by term.*

    $ 4/3 x^3 + 2x^2 + x + c $

    *The check.* Differentiating gives $4x^2 + 4x + 1$, which is the expanded bracket.

    *The warning.* Writing $(2x + 1)^3/6 + c$ is wrong: differentiating that gives $(2x + 1)^2$ *times* the inner derivative $2$, which is twice too big. Expansion is the safe route at this level.
  ],
)

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 Definite Integrals

A definite integral has two limits and produces a *number*, not a function. The constant $c$ cancels in the subtraction, so it is never written.

#formula-box("The Fundamental Result")[
  $ integral_a^b f(x) dif x = [F(x)]_a^b = F(b) - F(a) $

  #v(3pt)
  Integrate as usual, then subtract the value at the *lower* limit from the value at the *upper* limit. Upper minus lower — always, in that order.
]

#worked-example(
  6,
  "A first definite integral",
  tier: "FOUNDATION",
  [Evaluate $integral_1^3 2x dif x$.],
  [
    *Integrate.*

    $ integral 2x dif x = x^2 $

    *Substitute the limits and subtract.*

    $ [x^2]_1^3 = 9 - 1 = 8 $

    The value is $8$.

    *What it means.* This is the area under the line $y = 2x$ between $x = 1$ and $x = 3$ — a trapezium of parallel sides $2$ and $6$ and width $2$, whose area is $1/2(2 + 6)(2) = 8$. The integral and the geometry agree.
  ],
)

#worked-example(
  7,
  "A polynomial between two limits",
  tier: "UTME STANDARD",
  [Evaluate $integral_0^2 (3x^2 + 2x) dif x$.],
  [
    *Integrate term by term.*

    $ [x^3 + x^2]_0^2 $

    *Upper limit.*

    $ 8 + 4 = 12 $

    *Lower limit.* At $x = 0$ both terms vanish, so the lower value is $0$.

    *Subtract.*

    $ 12 - 0 = 12 $

    The integral is $12$.

    *The habit.* Write the bracket with the limits *before* substituting anything. It keeps the two evaluations apart and prevents the commonest slip — subtracting the wrong way round.
  ],
)

#worked-example(
  8,
  "When the lower limit does not vanish",
  tier: "UTME STANDARD",
  [Evaluate $integral_1^4 (2x - 1) dif x$.],
  [
    *Integrate.*

    $ [x^2 - x]_1^4 $

    *Upper value.*

    $ 16 - 4 = 12 $

    *Lower value.*

    $ 1 - 1 = 0 $

    *Subtract.*

    $ 12 - 0 = 12 $

    The integral is $12$.

    *The check by geometry.* The integrand is a straight line from $y = 1$ at $x = 1$ to $y = 7$ at $x = 4$: a trapezium of area $1/2(1 + 7)(3) = 12$. Both routes give the same number.
  ],
)

#worked-example(
  9,
  "A definite integral giving a fraction",
  tier: "JAMB CHALLENGE",
  [Evaluate $integral_0^1 (x^2 + 1) dif x$.],
  [
    *Integrate.*

    $ [x^3/3 + x]_0^1 $

    *Upper value.*

    $ 1/3 + 1 = 4/3 $

    *Lower value.* $0$ at $x = 0$.

    *The answer.* $4/3$.

    *The lesson about fractions.* Definite integrals very often give fractions; the options in a UTME paper will be a fraction, a decimal and two wrong fractions. Do not round unless the question asks.
  ],
)

#worked-example(
  10,
  "A negative result",
  tier: "JAMB CHALLENGE",
  [Evaluate $integral_2^3 (x^2 - 2x) dif x$.],
  [
    *Integrate.*

    $ [x^3/3 - x^2]_2^3 $

    *Upper value.*

    $ 9 - 9 = 0 $

    *Lower value.*

    $ 8/3 - 4 = -4/3 $

    *Subtract, carefully.*

    $ 0 - (-4/3) = 4/3 $

    The integral is $4/3$.

    *Why the answer is positive.* The integrand is negative on this interval, but subtracting a negative lower value produces a positive result. Double negatives in definite integrals are worth a slow half-minute.
  ],
)

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 Finding the Constant

When a derivative and one value of the function are given, the constant is recoverable — and it is always recovered the same way: integrate, then substitute.

#worked-example(
  11,
  "Recovering $f(x)$",
  tier: "UTME STANDARD",
  [Given that $f'(x) = 6x^2 - 4x + 1$ and $f(1) = 5$, find $f(x)$.],
  [
    *Step 1 — Integrate.*

    $ f(x) = 2x^3 - 2x^2 + x + c $

    *Step 2 — Substitute the condition.*

    $ f(1) = 2 - 2 + 1 + c = 1 + c = 5 quad -> quad c = 4 $

    *Step 3 — Write the answer.*

    $ f(x) = 2x^3 - 2x^2 + x + 4 $

    *The check.* Differentiate the answer: $6x^2 - 4x + 1$. Substitute $x = 1$: $2 - 2 + 1 + 4 = 5$. Both conditions hold.
  ],
)

#worked-example(
  12,
  "A product before integrating",
  tier: "JAMB CHALLENGE",
  [Evaluate $integral (x + 1)(x - 1) dif x$.],
  [
    *Expand.* $(x + 1)(x - 1) = x^2 - 1$.

    *Integrate.*

    $ x^3/3 - x + c $

    *The alternative that does not work.* There is no product rule for integration at this level; expanding is the only safe route.

    *Check.* Differentiating gives $x^2 - 1$, the expanded integrand. Correct.
  ],
)

// ============================================================================
// SECTION 4.5
// ============================================================================
== 4.5 Chapter 4 Rapid-Revision Checklist

#table(
  columns: (1.35fr, 1.85fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["evaluate an indefinite integral"], [Power rule, term by term], [Add $+ c$],
  ["a fraction like $1/x^2$"], [Rewrite as $x^(-2)$], [Dividing by $-1$ changes the sign],
  ["a root like $sqrt(x)$"], [Rewrite as $x^(1/2)$], [Divide by $3/2$, i.e. multiply by $2/3$],
  ["a bracket squared"], [Expand first], [No chain rule for integration here],
  ["a definite integral"], [$F(b) - F(a)$], [Upper minus lower; never the reverse],
  ["a definite integral below the axis"], [The value may be negative], [Subtracting a negative adds],
  ["find $f(x)$ from $f'(x)$"], [Integrate, then use the given value], [$c$ is found from the condition, not guessed],
  ["check any integral"], [Differentiate the answer], [You should recover the integrand],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 4 in One Breath]
  #v(3pt)
  Integration raises the power by one and divides by the new power; an indefinite integral carries $+c$, a definite integral does not. Evaluate a definite integral as $F("upper") - F("lower")$, and find a constant by integrating first and substituting the given condition second.
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the power rule, the definite integral and the constant of integration.", width: 62%)

// ============================================================================
// SECTION 4.6
// ============================================================================
== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Evaluate $integral (6x^2 - 2) dif x$.], [$2x^3 - 2x + c$], [$12x + c$], [$2x^3 - 2x$], [$6x^3 - 2x + c$])
#mcq(2, [Evaluate $integral_0^3 2x dif x$.], [$18$], [$6$], [$9$], [$3$])
#mcq(3, [Evaluate $integral 1/x^2 dif x$.], [$1/x + c$], [$-2/x^3 + c$], [$ln x + c$], [$-1/x + c$])
#mcq(4, [Given $f'(x) = 4x$ and $f(2) = 10$, find $f(x)$.], [$2x^2 + 10$], [$2x^2 + 2$], [$4x^2 + 2$], [$2x^2 - 2$])

#answer-key-grid(("A", "C", "D", "B"))

#include "drill_ch04.typ"
