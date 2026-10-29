#import "template.typ": *

#current-chapter.update("Appendix D: Chapter Recap Pages")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Nine Chapter Recap Pages]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    One page per chapter: the single diagram that holds the whole idea, the five things the examiner expects, the formula spine, and three self-test questions with answers. Use these in the last week, and again in the ten minutes before you enter the hall.
  ]
]

#v(6pt)

#let recap(n, title, img, expects, spine, selftest) = [
  == D.#n #title

  #figure(
    image("diagrams/" + img, width: 100%),
    caption: [Recap skeleton for #title],
  )

  #grid(
    columns: (1.15fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
      #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[Five things the examiner expects]
      #v(3pt)
      #set text(size: 9.2pt)
      #expects
    ],
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 10pt)[
      #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Formula spine]
      #v(3pt)
      #set text(size: 9.2pt)
      #spine
    ],
  )

  #v(4pt)
  #block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 10pt)[
    #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[Three-question self test]
    #v(3pt)
    #set text(size: 9.2pt)
    #selftest
  ]
]

#recap(1, "Change of Subject", "recap_ch01.svg",
  [
    + Isolate the required letter *before* substituting numbers.
    + Handle a subject that appears *twice* by factorising.
    + Square or root a whole side, bracket included.
    + Show the operation performed on both sides.
    + State any restriction, for example a denominator that may not be zero.
  ],
  [
    $ y = a x + b arrow.r.double x = (y - b)/a $

    $ y = a/x arrow.r.double x = a/y $

    $ 1/f = 1/u + 1/v arrow.r.double f = (u v)/(u + v) $
  ],
  [
    + Make $x$ the subject of $3x + 2y = 12$. #text(fill: jamb-green)[$x = (12 - 2y)/3$]
    + Make $t$ the subject of $v = u + a t$. #text(fill: jamb-green)[$t = (v - u)/a$]
    + Make $R$ the subject of $1/R = 1/R_1 + 1/R_2$. #text(fill: jamb-green)[$R = (R_1 R_2)/(R_1 + R_2)$]
  ],
)

#recap(2, "Polynomials", "recap_ch02.svg",
  [
    + Apply the remainder theorem with the *negated* root of the divisor.
    + Prove a factor by showing $P(a) = 0$, not by asserting it.
    + Align powers, inserting zeros, before dividing.
    + Factorise a cubic completely — one linear, then a quadratic.
    + Check a factorisation by expanding it back.
  ],
  [
    Remainder on $(x - a)$: $P(a)$

    Remainder on $(b x - a)$: $P(a/b)$

    $P(x) = D(x) Q(x) + R(x)$
  ],
  [
    + Find the remainder when $x^3 + 2x - 3$ is divided by $(x - 1)$. #text(fill: jamb-green)[$0$]
    + Is $(x + 2)$ a factor of $x^3 + 2x^2 - 5x - 10$? #text(fill: jamb-green)[Yes: $P(-2) = 0$]
    + Divide $x^3 - 27$ by $(x - 3)$. #text(fill: jamb-green)[$x^2 + 3x + 9$]
  ],
)

#recap(3, "Quadratic Equations & Graphs", "recap_ch03.svg",
  [
    + Choose the quickest of factorising, formula or completing the square.
    + Use $alpha + beta = -b/a$ and $alpha beta = c/a$ without solving.
    + Read the discriminant *before* solving.
    + Sketch the parabola to confirm an inequality.
    + Keep every root, including the negative one, when the question asks for "the roots".
  ],
  [
    $ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a) $

    $ alpha + beta = -frac(b, a) , quad alpha beta = frac(c, a) $

    $ y = a(x - h)^2 + k , quad "vertex" (h, k) $
  ],
  [
    + Solve $4x^2 - 9 = 0$. #text(fill: jamb-green)[$x = plus.minus 3/2$]
    + Find the discriminant of $x^2 + 4x + 8 = 0$. #text(fill: jamb-green)[$-16$, so no real roots]
    + If $alpha, beta$ are roots of $x^2 - 5x + 6 = 0$, find $alpha beta$. #text(fill: jamb-green)[$6$]
  ],
)

#recap(4, "Simultaneous Equations", "recap_ch04.svg",
  [
    + Match coefficients, then add if the signs differ, subtract if they are the same.
    + Substitute a linear equation into a quadratic one.
    + Report *both* answers of a linear–quadratic pair as ordered pairs.
    + Eliminate the *same* variable from two different pairs when there are three unknowns.
    + Classify: one solution, none, or infinitely many.
  ],
  [
    Unique solution: $a_1 b_2 - a_2 b_1 != 0$

    No solution: proportions agree except the constants.

    Infinite solutions: all three proportions agree.
  ],
  [
    + Solve $2x + 3y = 13$, $4x - 3y = 5$. #text(fill: jamb-green)[$x = 3, y = 7/3$ — recheck: $x = 3$, $y = 7/3$.]
    + Solve $y = x + 1$, $x^2 + y^2 = 25$. #text(fill: jamb-green)[$(3, 4)$ and $(-4, -3)$]
    + How many solutions has $2x + y = 5$, $4x + 2y = 11$? #text(fill: jamb-green)[None — parallel]
  ],
)

#recap(5, "Inequalities", "recap_ch05.svg",
  [
    + Reverse the symbol when multiplying or dividing by a negative number.
    + Keep a compound inequality as three parts.
    + Read a quadratic inequality from the *shape* of the parabola.
    + Exclude zero denominators from any rational solution.
    + Test one point in the shaded region to confirm the side.
  ],
  [
    $P(x) < 0$: between the roots (for $a > 0$)

    $P(x) > 0$: outside the roots

    $|x - h| < k arrow.r.double h - k < x < h + k$
  ],
  [
    + Solve $4 - 3x >= 10$. #text(fill: jamb-green)[$x <= -2$]
    + Solve $x^2 >= 9$. #text(fill: jamb-green)[$x <= -3$ or $x >= 3$]
    + Solve $-1 < 2x + 3 <= 7$. #text(fill: jamb-green)[$-2 < x <= 2$]
  ],
)

#recap(6, "Variation", "recap_ch06.svg",
  [
    + Translate the English into an equation with a constant $k$.
    + Find $k$ from the given data pair *before* answering.
    + Distinguish "varies as" from "varies inversely as".
    + Handle joint variation by multiplying the varying parts.
    + Treat "partly constant" as a linear equation $y = k x + c$.
  ],
  [
    Direct: $y = k x$

    Inverse: $y = k/x$

    Joint: $y = k x z$; joint and inverse: $y = k x z/w$
  ],
  [
    + $y prop x$, $y = 15$ when $x = 5$; find $y$ when $x = 8$. #text(fill: jamb-green)[$24$]
    + $y prop 1/x$, $y = 4$ when $x = 3$; find $x$ when $y = 6$. #text(fill: jamb-green)[$2$]
    + Test the table $x = 1, 2, 3$ with $y = 6, 3, 2$. #text(fill: jamb-green)[Inverse variation: $x y = 6$]
  ],
)

#recap(7, "Sequences & Series", "recap_ch07.svg",
  [
    + Identify the progression from the *differences* or *ratios*.
    + Substitute $n$, not the number of steps, into $T_n$.
    + Use the last-term form of the A.P. sum when the last term is given.
    + Check $|r| < 1$ before using $S_infinity$.
    + Convert recurring decimals into a G.P. with ratio $10^(-k)$.
  ],
  [
    $ T_n = a + (n - 1) d , quad S_n = frac(n, 2)[2a + (n - 1)d] $

    $ T_n = a r^(n-1) , quad S_n = frac(a(1 - r^n), 1 - r) $

    $ S_infinity = frac(a, 1 - r) , quad |r| < 1 $
  ],
  [
    + The $8$th term of $5, 9, 13, dots$. #text(fill: jamb-green)[$33$]
    + The sum to infinity of $8 + 4 + 2 + dots$. #text(fill: jamb-green)[$16$]
    + Write $0.dot(3)$ as a G.P. sum. #text(fill: jamb-green)[$0.3/(1 - 0.1) = 1/3$]
  ],
)

#recap(8, "Binary Operations", "recap_ch08.svg",
  [
    + Substitute carefully — the operation is defined, not standard.
    + Test closure, commutativity and associativity with the definition, not by intuition.
    + Find the identity first; every inverse question depends on it.
    + Solve the inverse equation $a * b = e$ as ordinary algebra.
    + Apply a bracketed operation from the inside out.
  ],
  [
    Identity $e$: $a * e = e * a = a$

    Inverse $b$ of $a$: $a * b = e$

    Associative: $(a * b) * c = a * (b * c)$
  ],
  [
    + If $a * b = a b + a$, find $3 * 4$. #text(fill: jamb-green)[$15$]
    + If $a * b = 2a - b$, find the identity. #text(fill: jamb-green)[$e = a$ is not constant, so none exists]
    + If $a * b = a + b - 6$, find the inverse of $10$. #text(fill: jamb-green)[$2$]
  ],
)

#recap(9, "Matrices", "recap_ch09.svg",
  [
    + Check orders before multiplying, and quote the order of the product.
    + Multiply rows by columns, never entry by entry.
    + Compute the determinant with the correct sign pattern.
    + Verify an inverse by multiplying back to the identity.
    + Keep the order of multiplication in $A X = B$.
  ],
  [
    $ det mat(a, b; c, d) = a d - b c $

    $ A^(-1) = frac(1, det A) mat(d, -b; -c, a) $

    $ A X = B arrow.r.double X = A^(-1) B $
  ],
  [
    + Find the order of $A B$ when $A$ is $2 times 3$ and $B$ is $3 times 4$. #text(fill: jamb-green)[$2 times 4$]
    + Find $det mat(5, 2; 3, 1)$. #text(fill: jamb-green)[$-1$]
    + Solve $mat(1, 1; 2, 3) vec(x, y) = vec(4, 10)$. #text(fill: jamb-green)[$x = 2, y = 2$]
  ],
)

#current-chapter.update("Appendix E: 200-Item Flashcard Bank")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[200-Item Flashcard Bank]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Cover the right-hand column and answer aloud. Tick each item you answer correctly in under five seconds; the unticked items are your personal revision list. Two passes a week keeps the whole of Volume 2 warm.
  ]
]

#v(6pt)

#let cards(rows) = table(
  columns: (1fr, 1.35fr),
  inset: 4.6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer],
  ),
  ..rows.map(((a, b)) => ([#a], [#b])).flatten(),
)

// The header row needs the navy fill; supply it through a wrapper table.
#let flash(rows) = {
  show table: it => it
  table(
    columns: (1fr, 1.35fr),
    inset: 4.6pt,
    align: (left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer],
    ..rows.map(((a, b)) => ([#a], [#b])).flatten(),
  )
}

== E.1 Change of Subject (1–24)

#flash((
  ("Subject of a formula", "The single letter standing alone on one side."),
  ("First step with a fraction", "Cross-multiply."),
  ("The subject appears twice", "Collect its terms, then factorise."),
  ("Undo order", "Reverse BODMAS: undo addition before multiplication."),
  ("$y = 3x + 5$, make $x$ the subject", "$x = (y - 5)/3$"),
  ("$y = 5 - 2x$, make $x$ the subject", "$x = (5 - y)/2$"),
  ("$y = a/x$, make $x$ the subject", "$x = a/y$"),
  ("$y = a/(x + b)$, make $x$ the subject", "$x = a/y - b$"),
  ("$a x + b x = c$, make $x$ the subject", "$x = c/(a + b)$"),
  ("$y = sqrt(x + 4)$, make $x$ the subject", "$x = y^2 - 4$"),
  ("$y = 2 sqrt(x)$, make $x$ the subject", "$x = y^2/4$"),
  ("$y = (x + 1)/3$, make $x$ the subject", "$x = 3y - 1$"),
  ("$1/f = 1/u + 1/v$, make $f$ the subject", "$f = u v/(u + v)$"),
  ("$1/R = 1/R_1 + 1/R_2$, make $R$ the subject", "$R = R_1 R_2/(R_1 + R_2)$"),
  ("$v = u + a t$, make $t$ the subject", "$t = (v - u)/a$"),
  ("$s = 1/2 a t^2$, make $t$ the subject", "$t = sqrt(2s/a)$"),
  ("$T = 2 pi sqrt(l/g)$, make $g$ the subject", "$g = 4 pi^2 l/T^2$"),
  ("$A = P(1 + r/100)^n$, make $r$ the subject", "$r = 100[(A/P)^(1/n) - 1]$"),
  ("$y = a^x$, make $x$ the subject", "$x = log_a y$"),
  ("$y = log_a x$, make $x$ the subject", "$x = a^y$"),
  ("$V = 4/3 pi r^3$, make $r$ the subject", "$r = root(3, (3V)/(4pi))$"),
  ("$A = pi r^2$, make $r$ the subject", "$r = sqrt(A/pi)$"),
  ("Squaring a side", "Square the *whole* side, including any coefficient."),
  ("Restriction to state after transposing", "Any value that would make a denominator zero."),
))

== E.2 Polynomials (25–52)

#flash((
  ("Remainder theorem", "The remainder on dividing by $(x - a)$ is $P(a)$."),
  ("Divisor $(x + 3)$", "Evaluate at $x = -3$."),
  ("Divisor $(2x - 5)$", "Evaluate at $x = 5/2$."),
  ("Factor theorem", "$(x - a)$ is a factor exactly when $P(a) = 0$."),
  ("Degree of a product", "The sum of the degrees of the factors."),
  ("Degree of a remainder", "One less than the degree of the divisor."),
  ("Missing power in synthetic division", "Insert a zero coefficient."),
  ("Synthetic division first step", "Bring the leading coefficient down unchanged."),
  ("Synthetic division multiplier", "The *negated* root of the divisor."),
  ("Number of linear factors of a cubic", "At most three, counting repeats."),
  ("Test a cubic for integer roots", "Try the factors of the constant term."),
  ("Repeated root in a cubic", "The quotient also vanishes at that root."),
  ("Remainder when dividing $x^3 - 1$ by $(x - 1)$", "$0$"),
  ("Remainder of $x^3 + 1$ divided by $(x + 1)$", "$0$"),
  ("$x^3 - a^3$ factorised", "$(x - a)(x^2 + a x + a^2)$"),
  ("$x^3 + a^3$ factorised", "$(x + a)(x^2 - a x + a^2)$"),
  ("$x^2 - a^2$ factorised", "$(x - a)(x + a)$"),
  ("$a^3 - b^3$ sign pattern", "Same sign, then all plus."),
  ("$a^3 + b^3$ sign pattern", "Same sign, then alternating: minus, plus."),
  ("Coaching a factorisation check", "Expand the factors back."),
  ("Degree of $3x^4 - x + 7$", "$4$"),
  ("Leading coefficient of $2 - 5x^3$", "$-5$"),
  ("Constant term of $(x - 2)(x + 5)$", "$-10$"),
  ("Condition for a quadratic factor over the integers", "The discriminant must be a perfect square."),
  ("Value of a polynomial by substitution", "Replace every $x$ and evaluate from the inside out."),
  ("Why synthetic division is faster", "It records only coefficients."),
  ("Common error with $(x + a)$", "Forgetting to use $-a$."),
  ("When a cubic has no integer root", "Use the quadratic formula on the quotient."),
))

== E.3 Quadratics (53–84)

#flash((
  ("Quadratic formula", "$x = (-b plus.minus sqrt(b^2 - 4ac))/(2a)$"),
  ("Discriminant", "$b^2 - 4ac$"),
  ("$Delta > 0$", "Two distinct real roots."),
  ("$Delta = 0$", "One repeated real root."),
  ("$Delta < 0$", "No real roots."),
  ("Sum of roots", "$-b/a$"),
  ("Product of roots", "$c/a$"),
  ("$alpha^2 + beta^2$", "$(alpha + beta)^2 - 2 alpha beta$"),
  ("$(alpha - beta)^2$", "$(alpha + beta)^2 - 4 alpha beta$"),
  ("Equation from roots $alpha, beta$", "$x^2 - (alpha + beta) x + alpha beta = 0$"),
  ("Vertex of $a x^2 + b x + c$", "$x = -b/(2a)$"),
  ("Minimum value with $a > 0$", "$c - b^2/(4a)$"),
  ("Completed square form", "$a(x + b/(2a))^2 + c - b^2/(4a)$"),
  ("Solve $x^2 = k$", "$x = plus.minus sqrt(k)$"),
  ("Solve by factorising first rule", "Bring everything to one side."),
  ("Condition for equal roots", "$b^2 = 4 a c$"),
  ("If roots are equal, the vertex", "Lies on the $x$-axis."),
  ("Direction of opening", "$a > 0$ upwards, $a < 0$ downwards."),
  ("Axis of symmetry", "$x = -b/(2a)$"),
  ("$y$-intercept of a quadratic", "The constant term $c$."),
  ("Two numbers with given sum and product", "Solve $t^2 - S t + P = 0$."),
  ("Disguised quadratic $x^4 - 5x^2 + 4 = 0$", "Let $u = x^2$."),
  ("Disguised quadratic with surds", "Let $u = sqrt(x)$, then discard $u < 0$."),
  ("Reciprocal roots", "Replace $x$ by $1/x$ in the equation."),
  ("Roots differing in sign", "Product is negative."),
  ("Roots equal in magnitude, opposite in sign", "Sum is zero."),
  ("One root zero", "Constant term is zero."),
  ("Roots reciprocal of each other", "$a = c$."),
  ("Sum of squares of roots of $x^2 - 3x + 1$", "$7$"),
  ("Number of real roots of $x^2 + x + 1$", "None"),
  ("Product of roots of $2x^2 + 5x - 3$", "$-3/2$"),
  ("Word-problem step after solving", "Reject answers that contradict the story."),
))

== E.4 Simultaneous Equations (85–108)

#flash((
  ("Method to choose when coefficients match", "Elimination by addition or subtraction."),
  ("Sign rule for elimination", "Opposite signs — add; same signs — subtract."),
  ("Linear plus quadratic", "Substitute the linear equation."),
  ("Number of solutions equals", "Number of points where the graphs meet."),
  ("Parallel distinct lines", "No solution."),
  ("Coincident lines", "Infinitely many solutions."),
  ("Determinant test", "$a_1 b_2 - a_2 b_1 != 0$ means a unique solution."),
  ("Three unknowns", "Eliminate the same variable twice."),
  ("After eliminating, the system becomes", "Two equations in two unknowns."),
  ("Two-digit number", "$10a + b$."),
  ("Reversed two-digit number", "$10b + a$."),
  ("Sum of a two-digit number and its reverse", "$11(a + b)$."),
  ("Difference of a two-digit number and its reverse", "$9(a - b)$."),
  ("Cost problem setup", "One equation per item type, one unknown per price."),
  ("Age problem trap", "Compare ages *now*; adjust both by the same number of years."),
  ("Speed–distance setup", "$d = s t$ for each leg."),
  ("Mixture problem", "Track total quantity and total value separately."),
  ("Back-substitution", "Put the found value into the *simplest* original equation."),
  ("Final check", "Both values satisfy both original equations."),
  ("If a solution is fractional in a digits problem", "Reject it."),
  ("Graphical solution", "Read off the intersection point."),
  ("When substitution is better", "One equation already has a coefficient of $1$ or $-1$."),
  ("When elimination is better", "Coefficients are already multiples of each other."),
  ("Number of solutions of a linear–quadratic pair", "Zero, one or two, never more."),
))

== E.5 Inequalities (109–128)

#flash((
  ("Reversal rule", "Multiplying or dividing by a negative reverses the symbol."),
  ("$x > 3$ on a number line", "Open circle at $3$, arrow to the right."),
  ("$x >= 3$ on a number line", "Solid circle at $3$, arrow to the right."),
  ("Compound inequality handling", "Operate on all three parts."),
  ("Quadratic inequality first step", "Factorise and find the roots."),
  ("$P(x) < 0$ with $a > 0$", "Between the roots."),
  ("$P(x) > 0$ with $a > 0$", "Outside the roots."),
  ("Negative leading coefficient", "Multiply by $-1$ and reverse first."),
  ("Rational inequality", "Sign chart; exclude denominator zeros."),
  ("$|x| < k$", "$-k < x < k$."),
  ("$|x| > k$", "$x < -k$ or $x > k$."),
  ("$|x - 3| <= 2$", "$1 <= x <= 5$."),
  ("Region boundary for $<$", "Dashed line."),
  ("Region boundary for $<=$", "Solid line."),
  ("Choosing the side of a line", "Test $(0, 0)$ unless the line passes through it."),
  ("Number of integers with $-2 < x < 3$", "Four: $-1, 0, 1, 2$."),
  ("Does $x^2 <= 4$ mean $x <= 2$?", "No: it means $-2 <= x <= 2$."),
  ("Inequality with a fraction", "Multiply through by the positive square of the denominator."),
  ("Why test a value", "One counter-example disproves a claimed solution set."),
  ("Feasible region", "The overlap of all the constraint half-planes."),
))

== E.6 Variation (129–146)

#flash((
  ("$y$ varies directly as $x$", "$y = k x$."),
  ("$y$ varies inversely as $x$", "$y = k/x$."),
  ("$y$ varies as $x^2$", "$y = k x^2$."),
  ("$y$ varies inversely as $x^2$", "$y = k/x^2$."),
  ("$y$ varies jointly as $x$ and $z$", "$y = k x z$."),
  ("$y$ varies jointly as $x, z$ and inversely as $w$", "$y = k x z/w$."),
  ("Partly constant and partly varies as $x$", "$y = k x + c$."),
  ("Testing a table for direct variation", "$y/x$ is constant."),
  ("Testing a table for inverse variation", "$x y$ is constant."),
  ("Graph of direct variation", "Straight line through the origin."),
  ("Graph of inverse variation", "Rectangular hyperbola."),
  ("Doubling $x$ under inverse-square", "$y$ falls to one quarter."),
  ("Tripling $x$ under direct cube variation", "$y$ is multiplied by $27$."),
  ("Worker–days", "workers times days is constant for a fixed task."),
  ("Number of steps needed in a variation question", "Three: write, find $k$, substitute."),
  ("Unit of the constant of variation", "Whatever makes the equation dimensionally consistent."),
  ("Partial variation needs how many data pairs", "Two, because there are two constants."),
  ("Inverse variation as $x$ approaches zero", "$y$ grows without bound."),
))

== E.7 Progressions (147–172)

#flash((
  ("A.P. common difference", "$d = T_2 - T_1$."),
  ("A.P. $n$th term", "$a + (n - 1) d$."),
  ("A.P. sum", "$n/2 [2a + (n - 1) d]$."),
  ("A.P. sum with last term", "$n/2 (a + l)$."),
  ("Number of terms from first and last", "$n = (l - a)/d + 1$."),
  ("G.P. common ratio", "$r = T_2/T_1$."),
  ("G.P. $n$th term", "$a r^(n-1)$."),
  ("G.P. sum", "$a(1 - r^n)/(1 - r)$."),
  ("Sum to infinity", "$a/(1 - r)$, valid for $|r| < 1$."),
  ("Three terms in A.P.", "$a - d, a, a + d$."),
  ("Three terms in G.P.", "$a/r, a, a r$."),
  ("A.P. condition for three terms", "$2 T_2 = T_1 + T_3$."),
  ("G.P. condition for three terms", "$T_2^2 = T_1 T_3$."),
  ("Arithmetic mean of $p$ and $q$", "$(p + q)/2$."),
  ("Geometric mean of $p$ and $q$", "$sqrt(p q)$."),
  ("$0.dot(6)$ as a fraction", "$2/3$."),
  ("$0.dot(1)dot(8)$ as a fraction", "$2/11$."),
  ("Recurring decimal ratio", "$r = 10^(-k)$ where $k$ is the block length."),
  ("Which series converges", "A G.P. with $|r| < 1$."),
  ("What happens at $r = 1$", "The sum formula fails; the sum is $n a$."),
  ("A.P. with $d = 0$", "Every term is $a$."),
  ("Number of terms of $3, 6, 9, dots, 60$", "$20$."),
  ("Sum of the first $n$ natural numbers", "$n(n + 1)/2$."),
  ("Sum of the first $n$ odd numbers", "$n^2$."),
  ("If $T_n$ is linear in $n$", "The sequence is an A.P."),
  ("If $T_n$ contains $r^n$", "The sequence is a G.P."),
))

== E.8 Binary Operations (173–186)

#flash((
  ("Binary operation", "A rule combining two elements into one."),
  ("Closure", "Every result lies in the set."),
  ("Commutative test", "$a * b = b * a$."),
  ("Associative test", "$(a * b) * c = a * (b * c)$."),
  ("Identity test", "$a * e = a$ for all $a$."),
  ("Inverse test", "$a * b = e$."),
  ("Procedure for an inverse question", "Find $e$ first, then solve."),
  ("Distributive test", "$a * (b + c) = (a * b) + (a * c)$."),
  ("Disproof of a property", "A single counter-example suffices."),
  ("$a * b = a + b - ab$: identity", "$0$."),
  ("$a * b = a + b + ab$: identity", "$0$."),
  ("$a * b = ab/2$: identity", "$2$."),
  ("Self-inverse element", "One whose inverse is itself."),
  ("Cayley table use", "Read off the identity row and column."),
))

== E.9 Matrices (187–200)

#flash((
  ("Order of a matrix", "Rows × columns."),
  ("Product $2 times 3$ by $3 times 4$", "Defined, order $2 times 4$."),
  ("Product $2 times 3$ by $2 times 3$", "Not defined."),
  ("Element $c_(i j)$ of $A B$", "Row $i$ of $A$ dotted with column $j$ of $B$."),
  ("Is $A B = B A$?", "Not in general."),
  ("Determinant of $mat(a, b; c, d)$", "$a d - b c$."),
  ("Singular matrix", "Determinant zero; no inverse."),
  ("Inverse of $mat(a, b; c, d)$", "$frac(1, a d - b c) mat(d, -b; -c, a)$."),
  ("Identity matrix", "Ones on the main diagonal, zeros elsewhere."),
  ("Cramer's rule for $x$", "Replace the $x$-column by the constants; divide by $D$."),
  ("Solving $A X = B$", "$X = A^(-1) B$."),
  ("Transpose", "Rows and columns interchanged."),
  ("Effect of multiplying by the identity", "No change."),
  ("Order of a $3 times 3$ determinant expansion", "Three products of three entries each, with alternating signs."),
))

#shortcut-box("The Five-Second Rule")[
  A flashcard you answer in more than five seconds is not yet learned — it is only recognised. Mark those cards and return to them the *same* evening, then again after three days. This spacing, not total repetition, is what moves a fact into recall.
]

#include "mock2.typ"
