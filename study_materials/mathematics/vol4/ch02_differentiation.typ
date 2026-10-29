#import "template.typ": *

#current-chapter.update("Chapter 2: Differentiation")
#pagebreak()

#chapter-opener(
  2,
  "Differentiation: Rules and Techniques",
  subtitle: "The Derivative as a Gradient, First Principles, the Power Rule, Constant Multiples, the Product Rule, the Quotient Rule and the Chain Rule",
  syllabus-ref: "Sec. IV • Topic 2",
  utme-weight: "2–3 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain what $f'(x)$ measures, in words, without using the word “derivative”.",
    "Differentiate from first principles using $f'(x) = lim_(h -> 0) (f(x + h) - f(x))/h$.",
    "Apply the power rule to positive, negative and fractional powers.",
    "Differentiate a product with $u' v + u v'$ and a quotient with $(u' v - u v')/v^2$.",
    "Differentiate a function of a function with the chain rule, including brackets raised to a power.",
    "Find the gradient of a curve at a given point, and the equation of the tangent there.",
  ),
  hotspots: (
    "\"Differentiate $y = (3x + 2)^5$\" — the chain rule, with the inner derivative $3$ multiplying the answer.",
    "\"Differentiate $y = (2x + 1)/(x - 1)$\" — the quotient rule, and the minus sign in the numerator is where marks go.",
    "\"Find the gradient of the curve at $x = a$\" — differentiate, then substitute; never substitute first.",
    "\"Find the equation of the tangent at a point\" — gradient from $f'$, point from $f$.",
    "\"Differentiate $sqrt(x)$ or $1/x^2$\" — rewrite as a power first.",
  ),
  trap-summary: "Four slips dominate. (1) Forgetting the inner derivative in the chain rule, so $(3x + 2)^5$ becomes $5(3x + 2)^4$ instead of $15(3x + 2)^4$. (2) Losing the minus sign in the quotient rule numerator. (3) Differentiating a product by multiplying the derivatives, which is simply not a rule. (4) Treating $1/x$ as a constant instead of $x^(-1)$.",
)

// ============================================================================
// SECTION 2.1
// ============================================================================
== 2.1 What the Derivative Measures

The derivative of a function at a point is the *gradient of the tangent* to its curve at that point. Nothing more, nothing less. Where the curve climbs steeply, the derivative is large; where it is flat, the derivative is zero; where it falls, the derivative is negative.

That single sentence answers most of the questions JAMB asks. "Find the gradient of the curve at $x = 2$" and "find $f'(2)$" are the same request.

#diagram-fig("diagrams/ch02_tangent_gradient.svg",
  "For $y = x^2$ the tangent at $x = 1.4$ has gradient $2.8$. The derivative $f'(x) = 2x$ gives exactly that: the gradient is twice the $x$-coordinate.")

== 2.2 First Principles

The gradient of a straight line through two points is "rise over run". For a curve, we take two points close together — $(x, f(x))$ and $(x + h, f(x + h))$ — and let the gap $h$ shrink to nothing. The chord becomes the tangent.

#diagram-fig("diagrams/ch02_first_principles.svg",
  "The chord through $(x, f(x))$ and $(x + h, f(x + h))$ has gradient $(f(x + h) - f(x))/h$. As $h -> 0$ the chord swings into the tangent, and the gradient becomes $f'(x)$.")

#formula-box("The Definition, and the Four Steps That Use It")[
  $ f'(x) = lim_(h -> 0) (f(x + h) - f(x))/h $

  + Write $f(x + h)$ by replacing every $x$ with $x + h$.
  + Subtract $f(x)$ and simplify — every term without an $h$ cancels.
  + Divide by $h$ — every remaining term loses one power of $h$.
  + Let $h -> 0$: any term still carrying an $h$ disappears.
]

#worked-example(
  1,
  "First principles for $y = x^2$",
  tier: "FOUNDATION",
  [Differentiate $y = x^2$ from first principles.],
  [
    *Step 1 — $f(x + h)$.*

    $ f(x + h) = (x + h)^2 = x^2 + 2x h + h^2 $

    *Step 2 — Subtract $f(x)$.*

    $ (x^2 + 2x h + h^2) - x^2 = 2x h + h^2 $

    *Step 3 — Divide by $h$.*

    $ (2x h + h^2)/h = 2x + h $

    *Step 4 — Let $h -> 0$.* The answer is $2x$.

    *Check against the power rule.* The power rule turns $x^2$ into $2x^1 = 2x$ in one step. First principles is the *reason* the power rule works.
  ],
)

#worked-example(
  2,
  "First principles with a constant",
  tier: "UTME STANDARD",
  [Differentiate $y = 3x^2 + 1$ from first principles.],
  [
    *Step 1.*

    $ f(x + h) = 3(x + h)^2 + 1 = 3x^2 + 6x h + 3h^2 + 1 $

    *Step 2 — subtract $f(x) = 3x^2 + 1$.*

    $ 6x h + 3h^2 $

    *Step 3 — divide by $h$.*

    $ 6x + 3h $

    *Step 4 — let $h -> 0$.* The answer is $6x$.

    *The rule the example proves.* Constants vanish under differentiation: the $+1$ contributed nothing. A constant has no gradient, so it cannot affect the slope.
  ],
)

// ============================================================================
// SECTION 2.3
// ============================================================================
== 2.3 The Power Rule and Its Extensions

#formula-box("The Power Rule")[
  $ "If" quad y = x^n quad "then" quad dif y / dif x = n x^(n-1) $

  #v(2pt)
  Bring the power down in front, then reduce the power by one. The rule holds for *every* exponent — positive, negative, fractional — which is why $1/x$ and $sqrt(x)$ need no special rules at all.

  #table(
    columns: (1fr, 1fr, 1.6fr),
    inset: 5pt,
    align: (left + horizon, left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    [Written as], [Rewrite as a power], [Derivative],
    [$1/x$], [$x^(-1)$], [$-x^(-2) = -1/x^2$],
    [$1/x^2$], [$x^(-2)$], [$-2x^(-3) = -2/x^3$],
    [$sqrt(x)$], [$x^(1/2)$], [$1/2 x^(-1/2) = 1/(2 sqrt(x))$],
    [$x sqrt(x)$], [$x^(3/2)$], [$3/2 x^(1/2)$],
    [$1/sqrt(x)$], [$x^(-1/2)$], [$-1/2 x^(-3/2)$],
  )
]

#diagram-fig("diagrams/ch02_rules_map.svg",
  "The six rules on one card. In practice the first three carry most marks; the last three appear whenever the expression is a product, a quotient or a bracket.")

#worked-example(
  3,
  "A polynomial, term by term",
  tier: "FOUNDATION",
  [Differentiate $y = 4x^5 - 3x^2 + 7$.],
  [
    *Differentiate each term separately.*

    $ 4x^5 -> 20x^4 quad -3x^2 -> -6x quad 7 -> 0 $

    *The answer.*

    $ dif y / dif x = 20x^4 - 6x $

    *Note.* The constant $7$ disappears. It shifts the curve up or down but does not tilt it, so its gradient is zero.
  ],
)

#worked-example(
  4,
  "Negative powers",
  tier: "UTME STANDARD",
  [Differentiate $y = 5/x - 2/x^2$.],
  [
    *Rewrite as powers first.*

    $ y = 5x^(-1) - 2x^(-2) $

    *Apply the power rule to each term.*

    $ 5(-1)x^(-2) = -5x^(-2) quad "and" quad -2(-2)x^(-3) = 4x^(-3) $

    *The answer.*

    $ dif y / dif x = -5/x^2 + 4/x^3 $

    *The trap.* Leaving the answer as $-5x^(-2)$ is not wrong, but exam options are usually written as fractions. Convert before you choose.
  ],
)

#worked-example(
  5,
  "A fractional power",
  tier: "UTME STANDARD",
  [Differentiate $y = 3 sqrt(x)$ and evaluate the gradient at $x = 4$.],
  [
    *Rewrite.* $y = 3x^(1/2)$.

    *Differentiate.*

    $ dif y / dif x = 3 times 1/2 x^(-1/2) = 3/(2 sqrt(x)) $

    *Substitute $x = 4$.*

    $ 3/(2 times 2) = 3/4 $

    The gradient at $x = 4$ is $3/4$.

    *Check by sense.* The curve $y = 3 sqrt(x)$ is rising but flattening; a positive gradient smaller than $1$ is exactly right.
  ],
)

// ============================================================================
// SECTION 2.4
// ============================================================================
== 2.4 The Product Rule

A product of two functions is *not* differentiated by multiplying the two derivatives. The correct rule pairs each derivative with the other function:

#formula-box("The Product Rule")[
  $ "If" quad y = u v quad "then" quad dif y / dif x = u' v + u v' $

  #v(2pt)
  "Differentiate the first times the second, plus the first times the derivative of the second." Both halves are always positive — a product never produces a minus sign.
]

#worked-example(
  6,
  "Expand or use the rule?",
  tier: "FOUNDATION",
  [Differentiate $y = (2x + 1)(x - 3)$.],
  [
    *Method 1 — expand first.* $y = 2x^2 - 6x + x - 3 = 2x^2 - 5x - 3$, so

    $ dif y / dif x = 4x - 5 $

    *Method 2 — product rule.* Take $u = 2x + 1$ and $v = x - 3$, so $u' = 2$ and $v' = 1$:

    $ u' v + u v' = 2(x - 3) + (2x + 1)(1) = 2x - 6 + 2x + 1 = 4x - 5 $

    Both methods give $4x - 5$.

    *Which to use.* If the product expands easily, expand. The rule earns its keep only when expanding would be painful — which is the next example.
  ],
)

#worked-example(
  7,
  "A product that is not worth expanding",
  tier: "UTME STANDARD",
  [Differentiate $y = (x^2 + 1)(3x - 2)$.],
  [
    *Name the parts.* $u = x^2 + 1$ so $u' = 2x$; $v = 3x - 2$ so $v' = 3$.

    *Apply the rule.*

    $ dif y / dif x = 2x(3x - 2) + (x^2 + 1)(3) $

    *Expand and collect.*

    $ 6x^2 - 4x + 3x^2 + 3 = 9x^2 - 4x + 3 $

    *Check by expanding first.* $(x^2 + 1)(3x - 2) = 3x^3 - 2x^2 + 3x - 2$, whose derivative is $9x^2 - 4x + 3$. The two agree, as they must.

    *The exam habit.* Simplify the answer. Options are written in collected form, and an uncollected expression is easy to mis-match.
  ],
)

// ============================================================================
// SECTION 2.5
// ============================================================================
== 2.5 The Quotient Rule

#formula-box("The Quotient Rule")[
  $ "If" quad y = u/v quad "then" quad dif y / dif x = (u' v - u v')/v^2 $

  #v(2pt)
  "Bottom times derivative of top, minus top times derivative of bottom, all over bottom squared." The order matters: reversing the numerator flips the sign of the whole answer.

  #v(2pt)
  A useful special case: the derivative of $1/v$ is $-v'/v^2$.
]

#worked-example(
  8,
  "A quotient with linear parts",
  tier: "UTME STANDARD",
  [Differentiate $y = (2x + 1)/(x - 1)$ with respect to $x$.],
  [
    *Name the parts.* $u = 2x + 1$, $u' = 2$; $v = x - 1$, $v' = 1$.

    *Apply the rule.*

    $ dif y / dif x = (2(x - 1) - (2x + 1)(1))/(x - 1)^2 $

    *Simplify the numerator.*

    $ 2x - 2 - 2x - 1 = -3 $

    *The answer.*

    $ dif y / dif x = -3/(x - 1)^2 $

    *Sense check.* The derivative is negative for every $x != 1$, so the curve always falls — true of this function, and visible on its graph. The squared denominator can never be negative, which is why the sign is decided entirely by the numerator.
  ],
)

#worked-example(
  9,
  "A quotient with a quadratic",
  tier: "JAMB CHALLENGE",
  [Differentiate $y = (x^2 + 3)/x$, and confirm by simplifying first.],
  [
    *Method 1 — quotient rule.* $u = x^2 + 3$, $u' = 2x$; $v = x$, $v' = 1$:

    $ (2x(x) - (x^2 + 3)(1))/x^2 = (2x^2 - x^2 - 3)/x^2 = (x^2 - 3)/x^2 $

    *Method 2 — simplify first.* $y = x + 3/x = x + 3x^(-1)$, so

    $ dif y / dif x = 1 - 3x^(-2) = (x^2 - 3)/x^2 $

    The two agree.

    *The lesson.* When the denominator is a single term, divide through first. It is faster, and it removes the risk of the quotient rule slip. The quotient rule is for a genuine fraction with a multi-term denominator.
  ],
)

// ============================================================================
// SECTION 2.6
// ============================================================================
== 2.6 The Chain Rule

A bracket raised to a power is a *function of a function*: the inside ($3x + 2$) feeds the outside (raising to the fifth power). Differentiate the outside, leave the inside alone, then multiply by the derivative of the inside.

#formula-box("The Chain Rule for a Linear Inside")[
  $ "If" quad y = (a x + b)^n quad "then" quad dif y / dif x = n a (a x + b)^(n-1) $

  #v(2pt)
  The extra factor $a$ is the whole difference between the right answer and the commonest wrong one. If you forget it, you have differentiated with respect to the bracket rather than with respect to $x$.
]

#worked-example(
  10,
  "A bracket to the fifth",
  tier: "UTME STANDARD",
  [Differentiate $y = (3x + 2)^5$.],
  [
    *Outside first.* Bring the $5$ down and reduce it to $4$, leaving the bracket intact:

    $ 5(3x + 2)^4 $

    *Multiply by the inside derivative.* The derivative of $3x + 2$ is $3$:

    $ dif y / dif x = 15(3x + 2)^4 $

    *The check.* Put $x = 0$: the answer gives $15(2)^4 = 240$. Differentiate numerically near $0$ and you get the same figure — the coefficient $15$ is not optional.
  ],
)

#worked-example(
  11,
  "A square root of a linear expression",
  tier: "JAMB CHALLENGE",
  [Differentiate $y = sqrt(4x + 1)$.],
  [
    *Rewrite as a power.* $y = (4x + 1)^(1/2)$.

    *Chain rule.* Bring down $1/2$, reduce the power by one, and multiply by $4$:

    $ dif y / dif x = 1/2 (4x + 1)^(-1/2) times 4 = 2(4x + 1)^(-1/2) $

    *Write it as a fraction.*

    $ dif y / dif x = 2/sqrt(4x + 1) $

    *The common mistake.* Answering $1/(2 sqrt(4x + 1))$ — that is the derivative with respect to $(4x + 1)$, not with respect to $x$. The missing factor of $4$ is the entire difference.
  ],
)

#worked-example(
  12,
  "Product and chain together",
  tier: "JAMB CHALLENGE",
  [Differentiate $y = (2x - 1)^3 (x + 1)$.],
  [
    *Name the parts.* $u = (2x - 1)^3$, so by the chain rule $u' = 6(2x - 1)^2$; and $v = x + 1$, so $v' = 1$.

    *Product rule.*

    $ dif y / dif x = 6(2x - 1)^2 (x + 1) + (2x - 1)^3 (1) $

    *Factor out the common bracket.*

    $ (2x - 1)^2 [6(x + 1) + (2x - 1)] = (2x - 1)^2 (8x + 5) $

    *Why factorising is worth it.* An option printed as $(2x - 1)^2 (8x + 5)$ cannot be matched against an uncollected sum in the time available. Collect, always.
  ],
)

// ============================================================================
// SECTION 2.7
// ============================================================================
== 2.7 Gradients and Tangents

#worked-example(
  13,
  "Gradient at a point",
  tier: "FOUNDATION",
  [Find the gradient of the curve $y = x^3 - 2x$ at the point where $x = -1$.],
  [
    *Differentiate.*

    $ dif y / dif x = 3x^2 - 2 $

    *Substitute $x = -1$, not before.*

    $ 3(1) - 2 = 1 $

    The gradient is $1$.

    *The order that matters.* Differentiate first, substitute second. Substituting first turns the curve into a single number, whose derivative is zero — a guaranteed wrong answer of $0$.
  ],
)

#worked-example(
  14,
  "The equation of a tangent",
  tier: "JAMB CHALLENGE",
  [Find the equation of the tangent to $y = x^2 - 3x + 1$ at the point where $x = 2$.],
  [
    *Step 1 — The gradient.* $dif y / dif x = 2x - 3$, so at $x = 2$ the gradient is $m = 1$.

    *Step 2 — The point.* Substitute $x = 2$ into the *original* curve, not the derivative:

    $ y = 4 - 6 + 1 = -1 quad "so the point is" (2, -1) $

    *Step 3 — The line.* Use $y - y_1 = m(x - x_1)$:

    $ y + 1 = 1(x - 2) quad -> quad y = x - 3 $

    The tangent is $y = x - 3$.

    *The two-stage trap.* Gradient from the derivative, point from the function. Candidates who use the derivative for both get a point of $(2, 1)$, which is not on the curve at all.
  ],
)

// ============================================================================
// SECTION 2.8
// ============================================================================
== 2.8 Chapter 2 Rapid-Revision Checklist

#table(
  columns: (1.35fr, 1.85fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["differentiate a polynomial"], [Power rule term by term], [Constants vanish],
  ["differentiate $1/x$ or $sqrt(x)$"], [Rewrite as a power first], [$x^(-1)$ and $x^(1/2)$],
  ["a product of brackets"], [Expand if easy, else $u' v + u v'$], [Never multiply the derivatives],
  ["a fraction with $x$ on the bottom"], [$(u' v - u v')/v^2$], [Order matters — reverse it and the sign flips],
  ["a bracket to a power"], [Chain rule], [Multiply by the inside derivative],
  ["gradient at a point"], [Differentiate, then substitute], [Never substitute first],
  ["equation of a tangent"], [$f'$ for the gradient, $f$ for the point], [Two different substitutions],
  ["first principles"], [Four steps ending with $h -> 0$], [Every $h$ must cancel before the limit],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 2 in One Breath]
  #v(3pt)
  The derivative is the gradient of the tangent. Bring the power down and reduce it by one; keep constants multiplying; a constant term vanishes. For products use $u' v + u v'$, for quotients $(u' v - u v')/v^2$, and for brackets multiply by the inside derivative. To find a gradient, differentiate first and substitute second.
]

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the power rule, the product and quotient rules, and the chain rule.", width: 62%)

// ============================================================================
// SECTION 2.9
// ============================================================================
== 2.9 Chapter 2 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Differentiate $y = (2x + 3)^4$ with respect to $x$.], [$4(2x + 3)^3$], [$2(2x + 3)^4$], [$8(2x + 3)^3$], [$(2x + 3)^3$])
#mcq(2, [Differentiate $y = 3x^2 - 1/x$.], [$6x - 1/x^2$], [$6x + 1/x^2$], [$6x + 1/x$], [$3x + 1/x^2$])
#mcq(3, [Find the gradient of $y = x^3 - 4x$ at $x = 2$.], [$8$], [$12$], [$4$], [$0$])
#mcq(4, [Differentiate $y = (x + 1)/(x - 2)$.], [$3/(x - 2)^2$], [$-1/(x - 2)^2$], [$(2x - 1)/(x - 2)^2$], [$-3/(x - 2)^2$])

#answer-key-grid(("C", "B", "A", "D"))

#include "drill_ch02.typ"
