#import "template.typ": *

#current-chapter.update("Chapter 1: Change of Subject of Formula")
#pagebreak()

#chapter-opener(
  1,
  "Change of Subject of Formula",
  subtitle: "Transposition Mechanics, Repeated Variables, Denominators, Roots, Powers, Logarithms & Formula Evaluation",
  syllabus-ref: "JAMB Syllabus Sec. II • Topic 1",
  utme-weight: "1 – 2 Questions Every Year (90% Frequency)",
)

#focus-radar(
  objectives: (
    "Identify the subject of a formula and the operations wrapped around it.",
    "Rearrange a formula to make any stated variable the subject, including variables appearing twice.",
    "Handle subjects that sit inside a denominator, under a root sign, or as an exponent.",
    "Deal with formulae containing the subject squared, requiring isolation and an appropriate root.",
    "Substitute values into a rearranged formula and compute without a scientific calculator.",
  ),
  hotspots: (
    "Formulae with the subject in a denominator (resistors, lenses, parallel work) — cross-multiplication required.",
    "Subjects appearing twice, which must be *collected and factorised* rather than divided.",
    "Making $g$ or $l$ the subject of the pendulum formula $T = 2pi sqrt(l/g)$.",
    "Re-arranging interest/growth formulae and evaluating with given powers.",
    "Choosing between the positive and negative root once the subject is released from a square.",
  ),
  trap-summary: "The two errors that cost marks every year: (1) dividing by a whole bracket instead of multiplying out first, and (2) when the subject appears twice, dividing instead of factoring. If the letter you want appears in two terms, factor it out — never divide it away.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 What "Change of Subject" Really Means

A formula is an equation that states a relationship between quantities. The *subject* is the single letter that stands alone on one side, with everything else on the other side. In

$ v = u + a t $

the subject is $v$: it is written *explicitly* in terms of $u$, $a$ and $t$. Changing the subject means rewriting the same relationship so that a *different* letter — say $a$ — stands alone:

$ a = (v - u)/t $

Nothing about the physical relationship has changed. The same numbers still satisfy the same equation; only the *presentation* has changed. This distinction matters: in UTME, a formula question is never asking you to invent a new relationship, only to re-express an existing one.

#concept-box("The Balance Principle: Every Operation Has an Undo Button")[
  A formula is a balance. Whatever you do to the left-hand side, you must do to the right-hand side. To *free* a letter you therefore apply the *inverse* of whatever is currently being done to it.
  #v(3pt)
  #table(
    columns: (1fr, 1fr, 1.2fr),
    inset: 5.5pt,
    align: (center + horizon, center + horizon, left + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Operation on the subject],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Inverse (the "undo")],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Exam note],
    [Addition of $c$], [Subtract $c$], [Move the whole term, change its sign.],
    [Subtraction of $c$], [Add $c$], [Never leave a term behind on the wrong side.],
    [Multiplication by $c$], [Divide by $c$ ($c != 0$)], [If $c$ is a bracket, divide the *whole* other side.],
    [Division by $c$], [Multiply by $c$], [Produces the classic cross-multiplication step.],
    [$x^2$], [$sqrt(x)$ (positive root)], [Insert $plus.minus$ only when solving an equation, not when a length/quantity is implied.],
    [$sqrt(x)$], [Square both sides], [Squaring the *entire* side, bracket and all.],
    [$x^n$], [$root(n, x)$], [Both sides, then isolate.],
    [$a^x$], [$log_a (dot)$], [Take logarithms of both sides.],
    [$log_a x$], [$a^(dot)$], [Convert out of logarithm form.],
    [$1/x$], [Reciprocal of both sides], [Legitimate only when neither side is zero.]
  )
]

#diagram-fig(
  "diagrams/ch01_undo_machine.svg",
  "The transposition machine. The subject passes through a chain of operations; to recover it, each operation is undone in reverse order. Here $x$ is wrapped by multiply-by-3, then add-2, then square; recovering $x$ requires square root, then subtract 2, then divide by 3.",
)

== 1.2 The Five-Step Transposition Algorithm

Students who lose marks on this topic almost never lose them on hard algebra. They lose them by working from the wrong end of the expression. The fix is mechanical:

+ *Circle the subject.* Say out loud what is being done to it, in order, from the inside out.
+ *Peel from the outside in.* Undo the *last* operation first. (This is why the square root comes before subtracting 2 in the diagram above.)
+ *Clear fractions early.* If the subject is trapped in a denominator, cross-multiply before doing anything else.
+ *Collect the subject.* If it appears more than once, gather all its terms on one side and factorise.
+ *Tidy and check.* Simplify, then substitute one convenient number into both the original and the new formula to confirm they agree.

#trap-box("Peeling From the Wrong End")[
  To make $x$ the subject of $y = 3(x + 2)^2$, many candidates subtract 2 first. That is illegal: the $2$ is *inside* a bracket that is itself squared, so the bracket must be released first.
  $ y = 3(x + 2)^2 quad arrow.r.double quad (x + 2)^2 = y/3 quad arrow.r.double quad x + 2 = sqrt(y/3) quad arrow.r.double quad x = sqrt(y/3) - 2 $
  Reverse-BODMAS is the rule: undo powers and roots before undoing brackets, and brackets before addition.
]

== 1.3 Formula Families You Will Meet

=== Family A: The subject is multiplied and then increased

Formulae of the shape $y = a x + b$. Undo the addition, then the multiplication:

$ y = a x + b quad arrow.r.double quad a x = y - b quad arrow.r.double quad x = (y - b)/a $

The same skeleton covers $v = u + a t$, $A = P + I$, $C = 2pi r + h$, and any "rate plus fixed part" formula (tariffs, taxi fares, wages with a basic salary).

=== Family B: The subject is divided, or sits inside a denominator

When the subject is *below the line*, cross-multiplying is the fastest and safest first move.

$ y = a/x quad arrow.r.double quad x y = a quad arrow.r.double quad x = a/y $

For a formulae such as $1/f = 1/u + 1/v$ there are two legal routes: combine the right-hand side into a single fraction and then invert, or multiply through by $f u v$. The second route is shown in Example 9 and is far less error-prone.

=== Family C: The subject appears twice

This is the single most examined wrinkle. If the letter you want occurs in two terms, *no single operation can free it*; you must first gather the terms, then factorise.

$ a x + b x = c quad arrow.r.double quad x(a + b) = c quad arrow.r.double quad x = c/(a + b) $

The same technique handles $x$ appearing on both sides of a fraction, which is how JAMB disguises it:

$ y = (3x - 1)/(x + 2) quad arrow.r.double quad y(x + 2) = 3x - 1 quad arrow.r.double quad x y + 2y = 3x - 1 $

$ x y - 3x = -1 - 2y quad arrow.r.double quad x(y - 3) = -(1 + 2y) quad arrow.r.double quad x = (1 + 2y)/(3 - y) $

#shortcut-box("The Cross-Multiply Then Collect Rhythm")[
  For any formula with the subject in a fraction on *both* sides, the sequence is always:
  + Cross-multiply.
  + Expand every bracket.
  + Move every term containing the subject to the left, everything else to the right.
  + Factorise the subject out.
  + Divide by its bracket.
  Five lines, always. Practise the rhythm until it is automatic; it converts a "hard" question into a two-mark certainty.
]

=== Family D: The subject is under a root, or raised to a power

Release the root *last* when the subject is inside it, and *first* when the subject is outside it.

$ T = 2pi sqrt(l/g) quad arrow.r.double quad T/(2pi) = sqrt(l/g) quad arrow.r.double quad T^2/(4pi^2) = l/g quad arrow.r.double quad g = (4pi^2 l)/T^2 $

Notice the final step is a *reciprocal* operation, not a multiplication: from $l/g = T^2/(4pi^2)$ we invert both sides to get $g/l = 4pi^2/T^2$, then multiply by $l$.

=== Family E: The subject is an exponent

Take logarithms of both sides, then divide by the coefficient of the exponent.

$ y = a^x quad arrow.r.double quad log y = x log a quad arrow.r.double quad x = (log y)/(log a) = log_a y $

=== Family F: The subject is squared inside a formula (a hidden quadratic)

If the formula contains the subject both squared and to the first power, isolation produces a quadratic equation, and the subject is recovered with the quadratic formula.

$ A = 2pi r(r + h) quad arrow.r.double quad 2pi r^2 + 2pi h r - A = 0 quad arrow.r.double quad r = (-2pi h + sqrt(4pi^2 h^2 + 8pi A))/(4pi) $

which tidies to $r = (-pi h + sqrt(pi^2 h^2 + 2pi A))/(2pi)$. Only the positive root is kept because $r$ is a radius.

#diagram-fig(
  "diagrams/ch01_formula_families.svg",
  "The six formula families and their first move: un-do addition (A), cross-multiply (B), factorise (C), isolate the root (D), take logarithms (E), form a quadratic (F).",
)

// ============================================================================
// SECTION 1.4 — WORKED EXAMPLES
// ============================================================================
== 1.4 Graded Step-by-Step Worked Examples

#worked-example(
  1,
  "One-step transposition",
  tier: "FOUNDATION",
  [Make $t$ the subject of $v = u + a t$.],
  [
    *Step 1 — Locate the subject.* The letter $t$ occurs once, multiplied by $a$ and then added to $u$.

    *Step 2 — Undo the addition.* Subtract $u$ from both sides:

    $ v - u = a t $
    *Step 3 — Undo the multiplication.* Divide both sides by $a$ (valid since $a != 0$):

    $ t = (v - u)/a $
    *Check.* Put $u = 2$, $a = 3$, $t = 4$: then $v = 2 + 12 = 14$, and the formula gives $t = (14 - 2)/3 = 4$ ✓

  ],
)

#worked-example(
  2,
  "Subject inside a squared term",
  tier: "UTME STANDARD",
  [Make $a$ the subject of $s = u t + 1/2 a t^2$.],
  [
    *Step 1 — Isolate the term containing $a$.* Subtract $u t$:

    $ s - u t = 1/2 a t^2 $
    *Step 2 — Remove the fraction* by multiplying by $2$:

    $ 2(s - u t) = a t^2 $
    *Step 3 — Divide by $t^2$:*

    $ a = (2(s - u t))/t^2 $
    *Common slip.* Dividing only $s$ by $t^2$ and leaving $u t$ undivided. The bracket must be divided as a whole.
    *Check.* $u = 1$, $t = 2$, $a = 5$ gives $s = 2 + 10 = 12$; the formula returns $(2(12 - 2))/4 = 5$ ✓

  ],
)

#worked-example(
  3,
  "Releasing a squared subject with a root",
  tier: "UTME STANDARD",
  [Given $v^2 = u^2 + 2 a s$, make $s$ the subject, then make $u$ the subject.],
  [
    *Part (i) — Make $s$ the subject.* Subtract $u^2$, then divide by $2a$:
    $ v^2 - u^2 = 2 a s quad arrow.r.double quad s = (v^2 - u^2)/(2a) $
    *Part (ii) — Make $u$ the subject.* Subtract $2 a s$ and take the square root:
    $ u^2 = v^2 - 2 a s quad arrow.r.double quad u = sqrt(v^2 - 2 a s) $
    *Note on the sign.* In a mechanics context $u$ is a speed and therefore non-negative, so the principal (positive) root is taken. If the question asks for *all* algebraic solutions, write $plus.minus$.

  ],
)

#worked-example(
  4,
  "A formula with two operations and a bracket",
  tier: "FOUNDATION",
  [Make $h$ the subject of $A = 1/2 (a + b) h$.],
  [
    *Step 1 — Clear the fraction:* multiply both sides by $2$:

    $ 2A = (a + b) h $
    *Step 2 — Divide by the bracket $(a + b)$:*

    $ h = (2A)/(a + b) $
    *Equivalent form.* $h = 2A/(a + b)$ — the same expression. In multiple-choice papers both forms sometimes appear; do not be fooled into thinking one is "more correct".
  ],
)

#worked-example(
  5,
  "Subject in a denominator",
  tier: "UTME STANDARD",
  [Make $x$ the subject of $y = 3/(x - 2)$.],
  [
    *Step 1 — Cross-multiply.* Multiply both sides by $(x - 2)$:

    $ y(x - 2) = 3 $
    *Step 2 — Expand:* $x y - 2 y = 3$.

    *Step 3 — Move the term without $x$ to the right:* $x y = 3 + 2 y$.

    *Step 4 — Divide by $y$:*

    $ x = (3 + 2y)/y = 3/y + 2 $
    *Check.* $x = 8$ gives $y = 3/6 = 0.5$; the formula returns $3/0.5 + 2 = 8$ ✓

  ],
)

#worked-example(
  6,
  "The reciprocal formula that JAMB loves",
  tier: "UTME STANDARD",
  source: "lens / parallel resistors",
  [Given $1/f = 1/u + 1/v$, make $f$ the subject, then make $u$ the subject.],
  [
    *Part (i) — Make $f$ the subject.* Combine the right-hand side over the common denominator $u v$:
    $ 1/f = (v + u)/(u v) $
    Invert both sides:
    $ f = (u v)/(u + v) $
    *Part (ii) — Make $u$ the subject.* Start again from $1/u = 1/f - 1/v$ and combine:
    $ 1/u = (v - f)/(f v) quad arrow.r.double quad u = (f v)/(v - f) $
    *Why this matters.* The distractor $f = (u + v)/(u v)$ is always offered. It is the reciprocal of the correct answer — a one-mark gift to candidates who invert only one side.

  ],
)

#worked-example(
  7,
  "The pendulum: subject under a square root",
  tier: "JAMB CHALLENGE",
  [Make $g$ the subject of $T = 2pi sqrt(l/g)$, and hence find $T$ when $l = 0.98$ m and $g = 9.8$ $"m s"^(-2)$ (take $pi = 22/7$).],
  [
    *Step 1 — Isolate the root:* divide both sides by $2pi$:

    $ T/(2pi) = sqrt(l/g) $
    *Step 2 — Square both sides* (the bracket is squared as a whole):

    $ T^2/(4pi^2) = l/g $
    *Step 3 — Invert and multiply:*

    $ g/l = (4pi^2)/T^2 quad arrow.r.double quad g = (4pi^2 l)/T^2 $
    *Step 4 — Evaluate.* Here $l/g = 0.98/9.8 = 0.1$, so $sqrt(l/g) = sqrt(0.1) approx 0.3162$.

    $ T = 2 times 22/7 times 0.3162 approx 6.2857 times 0.3162 approx 1.99 "s (about 2 s)" $
    *Examiner's note.* JAMB often supplies $pi^2 approx 10$ and $g = 10$ $"m s"^(-2)$ so that $T = 2pi sqrt(l/10)$ simplifies neatly: with $l = 2.5$ m, $T = 2pi times 0.5 = pi approx 3.14$ s.
  ],
)

#worked-example(
  8,
  "Two-step with a cube root",
  tier: "UTME STANDARD",
  [Make $r$ the subject of $V = 4/3 pi r^3$.],
  [
    *Step 1 — Clear the fraction:* multiply by $3$:

    $ 3V = 4 pi r^3 $
    *Step 2 — Divide by $4pi$:*

    $ r^3 = (3V)/(4pi) $
    *Step 3 — Cube root both sides:*

    $ r = root(3, (3V)/(4pi)) $
    *Check with a neat case.* If $r = 3$, $V = 36pi$; then $root(3, frac(108pi, 4pi)) = root(3, 27) = 3$ ✓ (with $108pi$ meaning $3 times 36pi$).

  ],
)

#worked-example(
  9,
  "Subject appearing twice: collect and factorise",
  tier: "JAMB CHALLENGE",
  [Make $x$ the subject of $y = (3x - 1)/(x + 2)$ (the fractional-linear form).],
  [
    *Step 1 — Cross-multiply:*

    $ y(x + 2) = 3x - 1 $
    *Step 2 — Expand the left side:* $x y + 2 y = 3x - 1$.

    *Step 3 — Collect all $x$-terms on the left, all other terms on the right:*

    $ x y - 3x = -1 - 2y $
    *Step 4 — Factorise $x$:*

    $ x(y - 3) = -(1 + 2y) $
    *Step 5 — Divide:*

    $ x = (-(1 + 2y))/(y - 3) = (1 + 2y)/(3 - y) $
    *Why the sign flip is legal.* Multiplying numerator and denominator by $-1$ leaves the value unchanged. Writing the answer with a positive leading term is conventional and matches the option list.

  ],
)

#worked-example(
  10,
  "Fractional-linear with algebraic coefficients",
  tier: "JAMB CHALLENGE",
  [Make $x$ the subject of $y = (a x + b)/(c x + d)$ and hence state the condition under which the formula fails.],
  [
    *Step 1 — Cross-multiply:*

    $ y(c x + d) = a x + b $
    *Step 2 — Expand:* $c x y + d y = a x + b$.

    *Step 3 — Collect:* $c x y - a x = b - d y$.

    *Step 4 — Factorise:* $x(c y - a) = b - d y$.

    *Step 5 — Divide:*

    $ x = (b - d y)/(c y - a) $
    *Failure condition.* The formula is undefined when $c y - a = 0$, i.e. $y = a/c$ — which is exactly the horizontal asymptote of the graph. JAMB has asked this "for what value of $y$ is $x$ undefined?" variant.
  ],
)

#worked-example(
  11,
  "Quadratic in the subject (positive root only)",
  tier: "JAMB CHALLENGE",
  [The total surface area of a closed cylinder is $A = 2pi r^2 + 2pi r h$. Make $r$ the subject, given $r > 0$.],
  [
    *Step 1 — Recognise a quadratic in $r$:*

    $ 2pi r^2 + 2pi h r - A = 0 $
    *Step 2 — Identify coefficients:* $a = 2pi$, $b = 2pi h$, $c = -A$.

    *Step 3 — Apply the quadratic formula:*

    $ r = (-2pi h plus.minus sqrt(4pi^2 h^2 + 8pi A))/(4pi) $
    *Step 4 — Simplify by dividing the surd by $4pi$.* Since $sqrt(4pi^2 h^2 + 8pi A) = 2 sqrt(pi^2 h^2 + 2pi A)$:

    $ r = (-2pi h plus.minus 2 sqrt(pi^2 h^2 + 2pi A))/(4pi) = (-pi h + sqrt(pi^2 h^2 + 2pi A))/(2pi) $
    *Step 5 — Reject the negative root* because a radius cannot be negative.

    *Check with numbers.* $r = 2$, $h = 5$ gives $A = 8pi + 20pi = 28pi approx 87.96$. Substituting back: $(-5pi + sqrt(25pi^2 + 56pi^2))/(2pi) = (-5pi + 9pi)/(2pi) = 2$ ✓

  ],
)

#worked-example(
  12,
  "Compounded growth: the subject is the rate",
  tier: "JAMB CHALLENGE",
  [Make $r$ the subject of $A = P(1 + r/100)^n$, then find $r$ (to the nearest whole number) if a sum of $₦200000$ grows to $₦242000$ in two years.],
  [
    *Step 1 — Divide by $P$:*

    $ A/P = (1 + r/100)^n $
    *Step 2 — Take the $n$th root of both sides:*

    $ (A/P)^(1/n) = 1 + r/100 $
    *Step 3 — Subtract $1$ and multiply by $100$:*

    $ r = 100 [(A/P)^(1/n) - 1] $
    *Step 4 — Substitute $A = 242000$, $P = 200000$, $n = 2$:*

    $ A/P = 1.21 quad arrow.r.double quad sqrt(1.21) = 1.1 quad arrow.r.double quad r = 100(1.1 - 1) = 10% $
    *Examiner's note.* $1.21$ and $1.1$ are chosen deliberately: the paper cannot expect a calculator, so the square root is always exact.
  ],
)

#worked-example(
  13,
  "Subject in an exponent",
  tier: "JAMB CHALLENGE",
  [Make $x$ the subject of $y = 2^(x + 1)$ and evaluate $x$ when $y = 32$.],
  [
    *Step 1 — Take logarithms (base $2$ is convenient):*

    $ log_2 y = x + 1 $
    *Step 2 — Subtract $1$:*

    $ x = log_2 y - 1 $
    *Step 3 — Evaluate.* $32 = 2^5$, so $log_2 32 = 5$ and $x = 5 - 1 = 4$.

    *Alternative.* Write $y = 2 times 2^x$, so $2^x = y/2$ and $x = log_2 (y/2)$. Both forms agree: $log_2 16 = 4$ ✓
  ],
)

#worked-example(
  14,
  "Subject inside a logarithm",
  tier: "UTME STANDARD",
  [Make $x$ the subject of $log_10 (x/a) = b$.],
  [
    *Step 1 — Convert out of logarithm form* using "base raised to the answer equals the argument":

    $ x/a = 10^b $
    *Step 2 — Multiply by $a$:*

    $ x = a dot 10^b $
    *Check.* $a = 3$, $b = 2$ gives $x = 300$, and $log_10 (300/3) = log_10 100 = 2$ ✓

  ],
)

#worked-example(
  15,
  "A formula needing substitution before isolation",
  tier: "UTME STANDARD",
  [If $S = n/2 (2a + (n - 1)d)$, make $d$ the subject.],
  [
    *Step 1 — Clear the fraction:* multiply by $2$:

    $ 2S = n(2a + (n - 1)d) $
    *Step 2 — Divide by $n$:*

    $ (2S)/n = 2a + (n - 1)d $
    *Step 3 — Subtract $2a$:*

    $ (2S)/n - 2a = (n - 1)d $
    *Step 4 — Divide by $(n - 1)$, noting $n != 1$:*

    $ d = ((2S)/n - 2a)/(n - 1) = (2(S - n a))/(n(n - 1)) $
    *Check.* $a = 1$, $d = 2$, $n = 5$ gives $S = 5/2 (2 + 8) = 25$; the formula returns $2(25 - 5)/(5 times 4) = 40/20 = 2$ ✓

  ],
)

#worked-example(
  16,
  "Negative sign in front of the subject",
  tier: "FOUNDATION",
  [Make $m$ the subject of $y = c - k m$.],
  [
    *Step 1 — Move $c$ to the left:* $y - c = -k m$.

    *Step 2 — Divide by $-k$:*

    $ m = (y - c)/(-k) = (c - y)/k $
    *Shortcut.* Moving a term across the equals sign is equivalent to subtracting it from both sides; the sign of the moved term flips. Reversing the whole equation ($y - c = -k m$ ⇔ $c - y = k m$) is often the cleaner route.
  ],
)

#worked-example(
  17,
  "Three-letter fraction: the harmonic mean",
  tier: "UTME STANDARD",
  [Given $1/h = 1/a + 1/b$, make $h$ the subject and evaluate $h$ when $a = 6$ and $b = 3$.],
  [
    *Step 1 — Combine the right side:*

    $ 1/h = (b + a)/(a b) $
    *Step 2 — Invert:*

    $ h = (a b)/(a + b) $
    *Step 3 — Evaluate:* $h = (6 times 3)/(6 + 3) = 18/9 = 2$.

    *Recognition.* The result — product over sum — is the *harmonic mean* of $a$ and $b$. The same form reappears in parallel resistors, two-pipe cistern problems and the focal length formula. Learn it once, use it three times.

  ],
)

#worked-example(
  18,
  "Subject appearing in a bracket on both sides",
  tier: "JAMB CHALLENGE",
  [Make $x$ the subject of $a(x + b) = c(x - d)$.],
  [
    *Step 1 — Expand both sides:*

    $ a x + a b = c x - c d $
    *Step 2 — Collect $x$-terms on the left:*

    $ a x - c x = -c d - a b $
    *Step 3 — Factorise:*

    $ x(a - c) = -(a b + c d) $
    *Step 4 — Divide:*

    $ x = (-(a b + c d))/(a - c) = (a b + c d)/(c - a) $
    *Check.* $a = 2$, $b = 1$, $c = 5$, $d = 3$: the left side is $2(3) = 6$, right side $5(0) = 0$ — not equal, so instead check with $x$ computed: $x = (2 + 15)/(5 - 2) = 17/3$. Then LHS $= 2(17/3 + 1) = 40/3$ and RHS $= 5(17/3 - 3) = 5(8/3) = 40/3$ ✓

  ],
)

#worked-example(
  19,
  "A formula where the subject is inside a surd ratio",
  tier: "JAMB CHALLENGE",
  [Make $x$ the subject of $sqrt((x + a)/(x - a)) = b$, given $b > 1$.],
  [
    *Step 1 — Square both sides:*

    $ (x + a)/(x - a) = b^2 $
    *Step 2 — Cross-multiply:* $x + a = b^2 x - a b^2$.

    *Step 3 — Collect:* $a + a b^2 = b^2 x - x = x(b^2 - 1)$.

    *Step 4 — Divide:*

    $ x = (a(1 + b^2))/(b^2 - 1) $
    *Check.* $a = 1$, $b = 2$ gives $x = 5/3$. Then $(5/3 + 1)/(5/3 - 1) = (8/3)/(2/3) = 4$ and $sqrt(4) = 2 = b$ ✓

  ],
)

#worked-example(
  20,
  "Formulae with a negative exponent",
  tier: "UTME STANDARD",
  [Make $v$ the subject of $E = 1/2 m v^2$, then make $v$ the subject of $E = 1/2 m v^(-2)$.],
  [
    *Part (i).* $v^2 = 2E/m$, so $v = sqrt(2E/m)$ (speed, positive root).
    *Part (ii).* Multiply by $v^2$: $E v^2 = m/2$, hence
    $ v^2 = m/(2E) quad arrow.r.double quad v = sqrt(m/(2E)) $
    *Insight.* A negative power is a reciprocal in disguise. Rewriting $v^(-2)$ as $1/v^2$ before transposing removes the trap entirely.
  ],
)

#worked-example(
  21,
  "Evaluation after transposition",
  tier: "UTME STANDARD",
  [The area of a trapezium is $A = 1/2 (a + b) h$. Given $A = 120$, $a = 8$ and $h = 10$, find $b$.],
  [
    *Step 1 — Transpose first,* so the arithmetic is a single substitution:

    $ b = (2A)/h - a $
    *Step 2 — Substitute:*

    $ b = (2 times 120)/10 - 8 = 24 - 8 = 16 $
    *Step 3 — Verify.* $1/2 (8 + 16)(10) = 120$ ✓

    *Habit worth keeping.* Transposing before substituting means you solve the algebra once and the arithmetic once; substituting first usually means solving algebra with numbers attached, which invites slips.
  ],
)

#worked-example(
  22,
  "Two formulae combined",
  tier: "JAMB CHALLENGE",
  [Given $v = u + a t$ and $s = u t + 1/2 a t^2$, eliminate $a$ to express $s$ in terms of $u$, $v$ and $t$.],
  [
    *Step 1 — From the first formula,* $a = (v - u)/t$.

    *Step 2 — Substitute into the second:*

    $ s = u t + 1/2 ((v - u)/t) t^2 = u t + 1/2 (v - u) t $
    *Step 3 — Factorise $t$:*

    $ s = t(u + (v - u)/2) = t((2u + v - u)/2) = t(u + v)/2 $
    *Interpretation.* The result $s = (u + v)t/2$ says distance equals average speed times time — the standard "suvat" identity. JAMB has asked candidates to derive it in words.
  ],
)

// ============================================================================
// RAPID REVISION
// ============================================================================
== 1.5 Chapter 1 Rapid-Revision Checklist

#table(
  columns: (1.05fr, 2.1fr, 1.5fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Formula shape],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[First move],
  text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Result / watchpoint],

  [$y = a x + b$], [Subtract $b$, then divide by $a$.], [$x = (y - b)/a$.],
  [$y = a/x$], [Multiply by $x$, then divide by $y$.], [$x = a/y$; $y != 0$.],
  [$y = a/(x + b)$], [Cross-multiply, expand, collect.], [$x = a/y - b$.],
  [$a x + b x = c$], [Factorise the subject.], [$x = c/(a + b)$; never divide by $x$.],
  [$y = (a x + b)/(c x + d)$], [Cross-multiply, collect, factorise.], [$x = (b - d y)/(c y - a)$; undefined at $y = a/c$.],
  [$y = sqrt(x)$], [Square both sides.], [$x = y^2$; require $y >= 0$.],
  [$y = a sqrt(x + b)$], [Divide by $a$, then square, then subtract $b$.], [$x = (y/a)^2 - b$.],
  [$y = a^x$], [Take logs of both sides.], [$x = log_a y$.],
  [$y = log_a x$], [Convert to exponential form.], [$x = a^y$.],
  [$c = a r^2 + b r$], [Arrange as a quadratic in the subject.], [Quadratic formula; keep the root that fits the context.],
  [$1/f = 1/u + 1/v$], [Combine, then invert both sides.], [$f = frac(u v, u + v)$ — inverted, not $(u + v)$ over $(u v)$!],
)

#shortcut-box("Three Checks That Take Ten Seconds")[
  + *Dimension/substitution check:* put simple numbers (1, 2, 3) into the original and the rearranged formula; they must agree.
  + *Undefined-value check:* note the values that make any denominator zero — the option list often includes them.
  + *Shape check:* if the answer should be a length, reject a negative root; if it should be an angle, keep it within range.
]

// ============================================================================
// END-OF-CHAPTER DRILL (generated by drills/gen_drills.py)
// ============================================================================

// ============================================================================
#include "drill_ch01.typ"
