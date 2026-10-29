#import "template.typ": *

#current-chapter.update("Chapter 1: Limits")
#pagebreak()

#chapter-opener(
  1,
  "Limits",
  subtitle: "What a Limit Means, Direct Substitution, the $0/0$ Case, One-Sided Limits, Continuity, and Limits at Infinity",
  syllabus-ref: "Sec. IV • Topic 1",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Say what $lim_(x -> a) f(x) = L$ means, in one sentence and without symbols.",
    "Evaluate a limit by direct substitution whenever the function is defined at the point.",
    "Recognise the $0/0$ form, factorise, cancel the common factor, and substitute again.",
    "Evaluate one-sided limits and decide when a limit does not exist.",
    "Test a function for continuity at a point, and evaluate limits as $x$ grows without bound.",
  ),
  hotspots: (
    "\"Evaluate $lim_(x -> a) (x^2 - a^2)/(x - a)$\" — always the difference of two squares, always one cancellation.",
    "\"Evaluate $lim_(x -> a)$ of a cubic difference like $(x^3 - 8)/(x - 2)$\" — factorise by inspection.",
    "\"Find the value of $k$ for which the function is continuous\" — set the two pieces equal.",
    "\"Evaluate $lim_(x -> infinity)$ of a ratio of polynomials\" — divide by the highest power.",
    "\"Does the limit exist?\" — check the two one-sided limits separately.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Substituting and getting $0/0$, then writing \"undefined\" as the answer — $0/0$ is an *invitation to factorise*, not a result. (2) Cancelling a factor and then forgetting to substitute the *cancelled* expression, so the answer stays $0$. (3) Assuming a limit exists because both sides look close on a sketch — they must be *equal*.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 What a Limit Means

A limit answers a single question: *what value is the function heading towards* as the input gets closer and closer to a particular number?

It is deliberately not the same question as "what is the function's value there". Consider

$ f(x) = (x^2 - 4)/(x - 2) $

At $x = 2$ the bottom is zero, so the expression is undefined — the function simply has no value at that point. But feed it $x = 1.9$, then $1.99$, then $1.999$:

$ f(1.9) = 3.9 quad f(1.99) = 3.99 quad f(1.999) = 3.999 $

The outputs are marching towards $4$. Nothing stops them, and nothing obliges the function to be *defined* at $2$ for them to do so. We write

$ lim_(x -> 2) (x^2 - 4)/(x - 2) = 4 $

and read it as "the limit of the expression as $x$ tends to $2$ is $4$".

#diagram-fig("diagrams/ch01_limit_idea.svg",
  "The graph of $y = (x^2 - 4)/(x - 2)$ is the straight line $y = x + 2$ with one point removed. The limit is the height the hole would sit at: $4$.")

#concept-box("The Sentence to Learn")[
  $lim_(x -> a) f(x) = L$ means: as $x$ gets arbitrarily close to $a$ — from *both* sides — the output $f(x)$ gets arbitrarily close to $L$.

  #v(3pt)
  Two consequences follow, and both are examinable:

  - The function does *not* need to be defined at $a$ for the limit to exist.
  - If the two sides head for different values, the limit does not exist at all.

  #v(3pt)
  The notation $x -> a$ never means $x = a$. A limit is about the *approach*, not the arrival.
]

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 Direct Substitution

Most limits in UTME are not $0/0$ at all. If the function is defined at the point — no zero denominator, no negative under a square root — then the limit is simply the value:

#formula-box("The Substitution Rule")[
  $ lim_(x -> a) f(x) = f(a) quad "provided" f(a) "is defined" $

  #v(2pt)
  Polynomials are always defined, so *every* polynomial limit is one substitution. A rational function fails the test only when the denominator is zero at $x = a$.
]

#worked-example(
  1,
  "A polynomial limit",
  tier: "FOUNDATION",
  [Evaluate $lim_(x -> 2) (3x^2 - 5x + 1)$.],
  [
    *Substitute directly.* No denominator, so nothing can go wrong:

    $ 3(2)^2 - 5(2) + 1 = 12 - 10 + 1 = 3 $

    The limit is $3$.

    *Why substitution is legitimate here.* The expression is a polynomial, and a polynomial is defined at every real number. There is no hole to approach.
  ],
)

#worked-example(
  2,
  "A rational limit with a safe denominator",
  tier: "FOUNDATION",
  [Evaluate $lim_(x -> 3) (x^2 + 1)/(x + 2)$.],
  [
    *Check the denominator first.* At $x = 3$ the denominator is $3 + 2 = 5$, which is not zero, so substitution is safe.

    $ (3^2 + 1)/(3 + 2) = 10/5 = 2 $

    The limit is $2$.

    *The habit.* Always substitute into the *denominator alone* before substituting into the whole expression. Five seconds of checking prevents the $0/0$ surprise.
  ],
)

// ============================================================================
// SECTION 1.3
// ============================================================================
== 1.3 The $0/0$ Case: Factorise, Cancel, Substitute

When substitution gives $0/0$, the expression contains a factor that is zero at the point — one in the top and one in the bottom. Cancelling that common factor removes the difficulty, and the limit is then found by substituting into what remains.

#diagram-fig("diagrams/ch01_approach_flow.svg",
  "The four-step decision path. Only the third step needs any algebra, and it is always the same algebra: factorise and cancel.")

#formula-box("The $0/0$ Routine")[
  + Substitute. If you get a number, that is the answer.
  + If you get $0/0$, factorise the top and the bottom.
  + Cancel the factor that vanishes — usually $(x - a)$.
  + Substitute into the cancelled expression.

  #v(2pt)
  The cancelled expression is the original function with its hole filled in, which is exactly why its value at $a$ is the limit.
]

#worked-example(
  3,
  "Difference of two squares",
  tier: "UTME STANDARD",
  [Evaluate $lim_(x -> 4) (x^2 - 16)/(x - 4)$.],
  [
    *Step 1 — Substitute.* Both the top and the bottom give $0$, so this is the $0/0$ form.

    *Step 2 — Factorise the top.* $x^2 - 16 = (x - 4)(x + 4)$.

    *Step 3 — Cancel.*

    $ (x^2 - 16)/(x - 4) = ((x - 4)(x + 4))/(x - 4) = x + 4 $

    *Step 4 — Substitute.*

    $ lim_(x -> 4) (x + 4) = 8 $

    The limit is $8$.

    *The pattern to memorise.* $(x^2 - a^2)/(x - a)$ always collapses to $x + a$, so the answer is always $2a$. Here $2(4) = 8$ — a one-second check.
  ],
)

#worked-example(
  4,
  "A quadratic that factorises",
  tier: "UTME STANDARD",
  [Evaluate $lim_(x -> -2) (x^2 + 5x + 6)/(x + 2)$.],
  [
    *Step 1 — Substitute.* The top gives $4 - 10 + 6 = 0$ and the bottom gives $0$. The $0/0$ form again.

    *Step 2 — Factorise.* Two numbers multiplying to $6$ and adding to $5$ are $2$ and $3$:

    $ x^2 + 5x + 6 = (x + 2)(x + 3) $

    *Step 3 — Cancel and substitute.*

    $ (x + 2)(x + 3)/(x + 2) = x + 3 quad -> quad -2 + 3 = 1 $

    The limit is $1$.

    *Check.* The cancelled expression is $x + 3$; at $x = -2$ that is $1$. If your answer had come out as $0$, you substituted before cancelling — the commonest error in the chapter.
  ],
)

#worked-example(
  5,
  "A cubic difference",
  tier: "JAMB CHALLENGE",
  [Evaluate $lim_(x -> 2) (x^3 - 8)/(x - 2)$.],
  [
    *Step 1 — Substitute.* $8 - 8 = 0$ over $0$: the $0/0$ form.

    *Step 2 — Factorise a difference of cubes.* For $x^3 - a^3$ the factorisation is

    $ x^3 - a^3 = (x - a)(x^2 + a x + a^2) $

    With $a = 2$: $x^3 - 8 = (x - 2)(x^2 + 2x + 4)$.

    *Step 3 — Cancel and substitute.*

    $ x^2 + 2x + 4 quad -> quad 4 + 4 + 4 = 12 $

    The limit is $12$.

    *The quick route.* If you cannot recall the cubic factorisation, divide $x^3 - 8$ by $x - 2$ directly, or test the pattern: the answer is always $3a^2$, and here $3(4) = 12$.
  ],
)

#trap-box("Three ways candidates destroy a $0/0$ limit")[
  *Writing "undefined".* $0/0$ is not the answer; it is the signal to factorise. A $0/0$ limit almost always exists.

  *Cancelling terms instead of factors.* You may cancel $(x - 2)$ from top and bottom because it is a *factor* of each. You may never cancel the $x$ in $x + 2$.

  *Stopping after cancelling.* The cancellation only simplifies the expression — you still have to substitute the number into what is left.
]

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 One-Sided Limits and When a Limit Fails

Sometimes a function behaves differently on the two sides of a point. We then speak of a *left-hand limit* (approach from below, written $x -> a^-$) and a *right-hand limit* (approach from above, written $x -> a^+$).

#diagram-fig("diagrams/ch01_one_sided.svg",
  "A function whose two branches head for different heights at $x = 2$. The left limit is $2$, the right limit is $3.2$, so the two-sided limit does not exist.")

#concept-box("The Existence Test")[
  $ lim_(x -> a) f(x) "exists if and only if" lim_(x -> a^-) f(x) = lim_(x -> a^+) f(x) $

  #v(3pt)
  If the two one-sided limits differ, we say the limit *does not exist* — not that it is zero, and not that it is infinite. "Does not exist" is a perfectly good exam answer, and JAMB uses it as an option.

  #v(3pt)
  For a piecewise function — one rule below the point, another above — always compute both one-sided limits separately before deciding.
]

#worked-example(
  6,
  "A piecewise function at the join",
  tier: "UTME STANDARD",
  [
    The function is defined by $f(x) = x + 1$ for $x < 2$ and $f(x) = 2x + 1$ for $x >= 2$. Find $lim_(x -> 2) f(x)$, or state that it does not exist.
  ],
  [
    *Left-hand limit.* Use the rule that applies below $2$:

    $ lim_(x -> 2^-) (x + 1) = 3 $

    *Right-hand limit.* Use the rule that applies at and above $2$:

    $ lim_(x -> 2^+) (2x + 1) = 5 $

    *Compare.* $3 != 5$, so the two sides disagree and the limit does not exist.

    *What the graph shows.* A jump at $x = 2$: the curve approaches height $3$ from the left and height $5$ from the right. A jump is exactly the visual signature of a limit that fails.
  ],
)

#worked-example(
  7,
  "A limit that needs a conjugate",
  tier: "JAMB CHALLENGE",
  [Evaluate $lim_(x -> 3) (sqrt(x + 1) - 2)/(x - 3)$.],
  [
    *Step 1 — Substitute.* The top gives $sqrt(4) - 2 = 0$ and the bottom gives $0$: the $0/0$ form, but no factor is visible.

    *Step 2 — Multiply by the conjugate.* Multiply top and bottom by $sqrt(x + 1) + 2$:

    $ ((sqrt(x + 1) - 2)(sqrt(x + 1) + 2))/((x - 3)(sqrt(x + 1) + 2)) = ((x + 1) - 4)/((x - 3)(sqrt(x + 1) + 2)) $

    *Step 3 — Simplify the top.* $(x + 1) - 4 = x - 3$, so the factor cancels:

    $ (x - 3)/((x - 3)(sqrt(x + 1) + 2)) = 1/(sqrt(x + 1) + 2) $

    *Step 4 — Substitute $x = 3$.*

    $ 1/(sqrt(4) + 2) = 1/4 $

    The limit is $1/4$.

    *Why the conjugate works.* Multiplying by the conjugate turns the difference of two square roots into the difference of two squares — and differences of squares factorise, which is what lets the $x - 3$ cancel.
  ],
)

// ============================================================================
// SECTION 1.5
// ============================================================================
== 1.5 Continuity

A function is *continuous* at a point when the graph runs through it without a break: no jump, no hole, no vertical asymptote.

#diagram-fig("diagrams/ch01_continuity.svg",
  "The three ways continuity fails. Left: a continuous curve. Middle: a jump, where the two one-sided limits differ. Right: a hole, where the limit exists but the function is not defined (or not equal to the limit).")

#concept-box("The Three Conditions")[
  A function is continuous at $x = a$ when all three hold:

  + $f(a)$ is defined;
  + $lim_(x -> a) f(x)$ exists;
  + $lim_(x -> a) f(x) = f(a)$.

  #v(3pt)
  A typical exam question gives a piecewise function with an unknown constant $k$ and asks for the value that makes it continuous. The method is one line: *set the two pieces equal at the join.*
]

#worked-example(
  8,
  "Finding $k$ for continuity",
  tier: "UTME STANDARD",
  [
    The function $f(x) = x^2 + k$ for $x < 1$ and $f(x) = 3x$ for $x >= 1$ is continuous at $x = 1$. Find $k$.
  ],
  [
    *Step 1 — Left-hand value at the join.* Using the lower rule at $x = 1$:

    $ lim_(x -> 1^-) (x^2 + k) = 1 + k $

    *Step 2 — Right-hand value at the join.* Using the upper rule:

    $ lim_(x -> 1^+) 3x = 3 $

    *Step 3 — Set them equal.* Continuity requires the two to agree:

    $ 1 + k = 3 quad -> quad k = 2 $

    *Check.* With $k = 2$ both pieces give $3$ at $x = 1$, so there is no jump.

    *The template.* Every "find $k$" continuity question is this: evaluate both pieces at the join, equate, solve.
  ],
)

// ============================================================================
// SECTION 1.6
// ============================================================================
== 1.6 Limits at Infinity

When $x$ grows without bound, powers of $x$ behave very differently from constants: $x^2$ becomes enormous while $4$ stays at $4$. In a ratio of polynomials, the highest power in the denominator decides everything.

#formula-box("Divide by the Highest Power")[
  For $lim_(x -> infinity) ("polynomial")/("polynomial")$, divide every term of top and bottom by the highest power of $x$ in the *denominator*. Every term of the form $"constant"/x^n$ then tends to $0$.

  #v(2pt)
  The shortcut: if the top and bottom have the *same* degree, the limit is the ratio of the leading coefficients.
]

#worked-example(
  9,
  "A ratio of quadratics",
  tier: "UTME STANDARD",
  [Evaluate $lim_(x -> infinity) (4x^2 + 3)/(2x^2 - x)$.],
  [
    *Step 1 — Divide top and bottom by $x^2$.*

    $ (4 + 3/x^2)/(2 - 1/x) $

    *Step 2 — Let $x$ grow.* Both $3/x^2$ and $1/x$ tend to $0$:

    $ (4 + 0)/(2 - 0) = 2 $

    The limit is $2$.

    *The shortcut check.* Top degree $2$, bottom degree $2$ — equal — so the answer is the ratio of leading coefficients, $4/2 = 2$. Two seconds, same answer.
  ],
)

#worked-example(
  10,
  "When the bottom wins",
  tier: "JAMB CHALLENGE",
  [Evaluate $lim_(x -> infinity) (5x + 2)/(x^2 + 1)$.],
  [
    *Divide by $x^2$.*

    $ (5/x + 2/x^2)/(1 + 1/x^2) $

    *Let $x$ grow.* The top tends to $0$ and the bottom tends to $1$:

    $ 0/1 = 0 $

    The limit is $0$.

    *The general rule for ratios.* If the top's degree is *lower* than the bottom's, the limit is $0$; if the degrees are *equal*, it is the ratio of leading coefficients; if the top's degree is *higher*, the expression grows without bound and the limit does not exist as a finite number.

    *Why it is not "undefined".* The expression is perfectly well defined for every large $x$; it is the *limit* that equals $0$. Write $0$, not "undefined".
  ],
)

// ============================================================================
// SECTION 1.7
// ============================================================================
== 1.7 Worked Examples in Exam Order

#worked-example(
  11,
  "A rational expression with a non-zero denominator",
  tier: "FOUNDATION",
  [Evaluate $lim_(x -> 3) (x^2 - x - 6)/(x^2 - 9)$.],
  [
    *Substitute first.* At $x = 3$: top $= 9 - 3 - 6 = 0$, bottom $= 9 - 9 = 0$. The $0/0$ form.

    *Factorise both.* $x^2 - x - 6 = (x - 3)(x + 2)$ and $x^2 - 9 = (x - 3)(x + 3)$.

    *Cancel.*

    $ ((x - 3)(x + 2))/((x - 3)(x + 3)) = (x + 2)/(x + 3) $

    *Substitute.*

    $ (3 + 2)/(3 + 3) = 5/6 $

    The limit is $5/6$.

    *The lesson.* With $0/0$ in a fraction of fractions, factorise *both* the top and the bottom. Only one factor cancels; the rest stays.
  ],
)

#worked-example(
  12,
  "The bridge to differentiation",
  tier: "UTME STANDARD",
  [Evaluate $lim_(h -> 0) ((2 + h)^2 - 4)/h$.],
  [
    *Expand the bracket.* $(2 + h)^2 = 4 + 4h + h^2$, so the top becomes

    $ 4 + 4h + h^2 - 4 = 4h + h^2 = h(4 + h) $

    *Cancel.*

    $ (h(4 + h))/h = 4 + h $

    *Substitute $h = 0$.* The limit is $4$.

    *Why this example matters.* This is the derivative of $x^2$ at $x = 2$, computed from first principles. Every first-principles derivative in Chapter 2 is this same calculation with a general $x$ instead of $2$.
  ],
)

#worked-example(
  13,
  "Handle to the wall",
  tier: "JAMB CHALLENGE",
  [Evaluate $lim_(x -> 0) (x^2 + 3x)/x$, and say what happens at $x = 0$.],
  [
    *Factorise.* $x^2 + 3x = x(x + 3)$, so

    $ (x(x + 3))/x = x + 3 $

    *Substitute.* The limit is $3$.

    *What happens at $x = 0$.* The original expression is $0/0$ — undefined. The *limit* exists and equals $3$ precisely because the function approaches that height, even though it never lands there.

    *The exam phrasing.* If the question asks for the limit, the answer is $3$. If it asks whether the function is continuous at $0$, the answer is no — and the difference between those two answers is worth a mark.
  ],
)

#worked-example(
  14,
  "A limit with a parameter",
  tier: "JAMB CHALLENGE",
  [
    Given that $lim_(x -> 2) (x^2 + a x - 6)/(x - 2)$ exists, find $a$ and the value of the limit.
  ],
  [
    *Step 1 — The top must vanish.* If the top did not vanish at $x = 2$ the expression would grow without bound, so we need

    $ 4 + 2a - 6 = 0 quad -> quad 2a = 2 quad -> quad a = 1 $

    *Step 2 — Factorise with $a = 1$.* $x^2 + x - 6 = (x - 2)(x + 3)$.

    *Step 3 — Cancel and substitute.*

    $ lim_(x -> 2) (x + 3) = 5 $

    So $a = 1$ and the limit is $5$.

    *The reasoning to state.* "For the limit to exist, the numerator must also vanish at $x = 2$." That sentence is the whole question.
  ],
)

// ============================================================================
// SECTION 1.8
// ============================================================================
== 1.8 Chapter 1 Rapid-Revision Checklist

#table(
  columns: (1.3fr, 1.9fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question wording],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  ["evaluate a limit at a number"], [Substitute], [Check the denominator first],
  ["both top and bottom vanish"], [Factorise and cancel], [Never answer "undefined"],
  ["a cubic difference"], [Factorise $x^3 - a^3$], [The answer is $3a^2$ when the denominator is $x - a$],
  ["a square root in the top"], [Multiply by the conjugate], [Both top and bottom, always],
  ["a piecewise function"], [Two one-sided limits], [Equal means the limit exists],
  ["find $k$ for continuity"], [Equate the two pieces at the join], [Substitute $x = a$ into both rules],
  ["$x$ tends to infinity"], [Divide by the highest power of $x$ in the bottom], [Equal degrees means the ratio of leading coefficients],
  ["limit of a constant"], [The constant itself], [$lim_(x -> a) 7 = 7$],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 1 in One Breath]
  #v(3pt)
  A limit is the height a function heads for, not necessarily the height it reaches. Substitute first; if the result is a number, that is the answer; if it is $0/0$, factorise, cancel and substitute again. Two sides that disagree mean no limit, and a ratio of polynomials at infinity is decided by the highest powers.
]

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: substitution, the $0/0$ routine and the existence test.", width: 62%)

// ============================================================================
// SECTION 1.9
// ============================================================================
== 1.9 Chapter 1 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Evaluate $lim_(x -> 5) (x^2 - 25)/(x - 5)$], [$5$], [$10$], [$0$], [does not exist])
#mcq(2, [Evaluate $lim_(x -> 2) (2x^2 - 3x + 1)$], [$3$], [$1$], [$9$], [$15$])
#mcq(3, [Evaluate $lim_(x -> infinity) (6x^3 - 2)/(3x^3 + x)$], [$0$], [$3$], [$2$], [does not exist])
#mcq(4, [Evaluate $lim_(x -> 0) (x^2 - 4x)/x$], [$4$], [$0$], [does not exist], [$-4$])

#answer-key-grid(("B", "A", "C", "D"))

#include "drill_ch01.typ"
