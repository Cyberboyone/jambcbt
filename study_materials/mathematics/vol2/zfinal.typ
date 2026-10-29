#import "template.typ": *

#include "rapid_fire.typ"

#current-chapter.update("Appendix L: Twenty-Five Formula Derivations")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX L]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty-Five Formula Derivations]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A formula you can derive is a formula you cannot forget. Each derivation below is short enough to reproduce in the margin of a rough sheet, and each one explains *why* the rule you memorised actually works.
  ]
]

#v(6pt)

#let deriv(n, title, body) = [
  #block(
    width: 100%,
    breakable: false,
    fill: white,
    stroke: 0.8pt + jamb-border,
    radius: 7pt,
    inset: 11pt,
  )[
    #text(font: "DejaVu Sans", size: 9.6pt, weight: "bold", fill: jamb-navy)[#text(fill: jamb-bright)[DERIVATION #n.] #title]
    #v(4pt)
    #set text(size: 9.2pt)
    #body
  ]
  #v(6pt)
]

== L.1 The Quadratic Formula

#deriv(1, "Solving $a x^2 + b x + c = 0$ by completing the square", [
  Start from the general equation and divide by $a$ (legal because $a != 0$):

  $x^2 + frac(b, a) x + frac(c, a) = 0$

  Move the constant across: $x^2 + frac(b, a) x = -frac(c, a)$.

  Add the square of half the coefficient of $x$, that is $b^2/(4a^2)$, to both sides:

  $x^2 + frac(b, a) x + frac(b^2, 4 a^2) = frac(b^2, 4 a^2) - frac(c, a)$

  The left side is now a perfect square:

  $(x + frac(b, 2a))^2 = frac(b^2 - 4 a c, 4 a^2)$

  Take the square root of both sides, remembering the $plus.minus$:

  $x + frac(b, 2a) = plus.minus frac(sqrt(b^2 - 4 a c), 2a)$

  Subtract $b/(2a)$:

  $x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a)$

  *What the derivation gives you:* the discriminant is not a memorised curiosity — it is the numerator of the square root, so its sign decides whether any real $x$ exists.
])

#deriv(2, "Sum and product of the roots", [
  Let the roots be $alpha$ and $beta$. Factorising the quadratic gives

  $a x^2 + b x + c = a(x - alpha)(x - beta)$

  Expand the right side: $a[x^2 - (alpha + beta) x + alpha beta]$.

  Compare coefficients with the left side. Since the leading coefficient is already $a$:

  Coefficient of $x$: $b = -a(alpha + beta)$, so $alpha + beta = -b/a$.

  Constant term: $c = a alpha beta$, so $alpha beta = c/a$.

  *Consequence:* any symmetric expression in the roots can be evaluated without solving.
])

#deriv(3, "The equation with prescribed roots", [
  Given roots $alpha$ and $beta$, the quadratic must contain the factors $(x - alpha)$ and $(x - beta)$.

  Multiply: $(x - alpha)(x - beta) = x^2 - (alpha + beta) x + alpha beta$.

  So the monic equation is $x^2 - ("sum") x + ("product") = 0$.

  If a different leading coefficient is required, multiply through by it: $k x^2 - k("sum")x + k("product") = 0$.
])

#deriv(4, "The vertex of a parabola", [
  Begin with $y = a x^2 + b x + c$ and complete the square:

  $y = a(x^2 + frac(b, a) x) + c = a[(x + frac(b, 2a))^2 - frac(b^2, 4 a^2)] + c$

  $y = a(x + frac(b, 2a))^2 + c - frac(b^2, 4a)$

  The squared bracket is never negative. If $a > 0$ the least value of $y$ occurs when the bracket is zero, at $x = -b/(2a)$, and that least value is $c - b^2/(4a)$.

  If $a < 0$ the same point is the greatest value.

  *Consequence:* the axis of symmetry is always $x = -b/(2a)$, and the minimum or maximum value is always $c - b^2/(4a)$.
])

== L.2 Polynomial Theorems

#deriv(5, "The remainder theorem", [
  Divide $P(x)$ by $(x - a)$. The division identity says

  $P(x) = (x - a) Q(x) + R$

  where $R$ is a constant, because the divisor has degree one.

  Substitute $x = a$: the first term on the right vanishes, since $(a - a) = 0$.

  $P(a) = 0 dot Q(a) + R = R$

  *Consequence:* evaluating the polynomial at the negated root of the divisor gives the remainder directly.
])

#deriv(6, "The factor theorem", [
  The factor theorem is the remainder theorem with $R = 0$.

  If $P(a) = 0$ then $P(x) = (x - a) Q(x)$, so $(x - a)$ divides $P(x)$ exactly.

  Conversely, if $(x - a)$ divides $P(x)$ then $R = 0$, so $P(a) = 0$.

  For a divisor $b x - a$, write it as $b(x - a/b)$; the root is $a/b$, so test $P(a/b)$.
])

#deriv(7, "Difference of two cubes", [
  Divide $x^3 - a^3$ by $(x - a)$ synthetically. The coefficients are $1, 0, 0, -a^3$:

  Bring down $1$; multiply by $a$ to get $a$, add to $0$ to get $a$; multiply by $a$ to get $a^2$, add to $0$ to get $a^2$; multiply by $a$ to get $a^3$, add to $-a^3$ to get $0$.

  The quotient is $x^2 + a x + a^2$, so $x^3 - a^3 = (x - a)(x^2 + a x + a^2)$.
])

#deriv(8, "Sum of two cubes", [
  The same division with $(x + a)$ uses the root $-a$: the quotient is $x^2 - a x + a^2$.

  $x^3 + a^3 = (x + a)(x^2 - a x + a^2)$

  *Sign check:* the cubic factor's sign pattern follows the cube — plus for a sum, minus for a difference — while the quadratic factor always has a middle term of the opposite sign to the cube.
])

#deriv(9, "Why synthetic division works", [
  Dividing by $(x - a)$ means writing $P(x) = (x - a)Q(x) + R$.

  Comparing coefficients from the top, each coefficient of $Q$ is obtained by multiplying the previous one by $a$ and adding the corresponding coefficient of $P$.

  That is exactly the mechanical procedure: bring down, multiply by $a$, add, repeat. The final addition gives $R = P(a)$, which agrees with the remainder theorem.
])

== L.3 Sequences and Series

#deriv(10, "The $n$th term of an A.P.", [
  Each step adds $d$. To reach the $n$th term from the first, we make $n - 1$ steps.

  $T_n = a + d + d + dots + d$ with $n - 1$ copies of $d$

  $T_n = a + (n - 1)d$

  *Consequence:* the count of steps is one fewer than the term number. This single fact is the source of most A.P. errors.
])

#deriv(11, "The sum of an A.P. (Gauss pairing)", [
  Write the sum forwards and backwards:

  $S_n = a + (a + d) + dots + l$

  $S_n = l + (l - d) + dots + a$

  Add the two lines term by term. Every pair sums to $a + l$, and there are $n$ pairs.

  $2 S_n = n(a + l)$, so $S_n = frac(n, 2)(a + l)$.

  Since $l = a + (n - 1)d$, this becomes $S_n = frac(n, 2)[2a + (n - 1)d]$.
])

#deriv(12, "The sum of a G.P.", [
  Write $S_n = a + a r + a r^2 + dots + a r^(n-1)$ and multiply by $r$:

  $r S_n = a r + a r^2 + dots + a r^n$

  Subtract the second line from the first; almost everything cancels:

  $S_n(1 - r) = a - a r^n = a(1 - r^n)$

  Divide by $1 - r$ (legal when $r != 1$):

  $S_n = frac(a(1 - r^n), 1 - r)$

  *Consequence:* the formula fails at $r = 1$ because the division by zero is illegal — there the sum is simply $n a$.
])

#deriv(13, "Sum to infinity", [
  Start from $S_n = a(1 - r^n)/(1 - r)$ and let $n$ grow without limit.

  If $|r| < 1$ then $r^n$ tends to zero, so

  $S_infinity = frac(a, 1 - r)$

  If $|r| > 1$ the term $r^n$ grows without limit and no finite sum exists.

  *Consequence:* always test $|r| < 1$ before writing a sum to infinity.
])

#deriv(14, "A recurring decimal as a fraction", [
  Take $x = 0.dot(4)dot(5) = 0.454545 dots$

  Multiply by $100$ (the block has two digits): $100 x = 45.4545 dots$

  Subtract: $99 x = 45$, so $x = 45/99 = 5/11$.

  Equivalently, treat $0.45, 0.0045, dots$ as a G.P. with $a = 0.45$ and $r = 0.01$:

  $S_infinity = frac(0.45, 1 - 0.01) = frac(45, 99)$

  Both routes must give the same fraction; if they do not, the block length was misread.
])

== L.4 Algebra of Formulae

#deriv(15, "Product over sum", [
  Take $1/f = 1/u + 1/v$. Combine the right side over the common denominator $u v$:

  $1/f = frac(v + u, u v)$

  Invert both sides — this is legal because neither side is zero:

  $f = frac(u v, u + v)$

  *Consequence:* the same derivation gives the resistance of two parallel resistors and the focal length of a thin lens. One derivation, two chapters of Physics.
])

#deriv(16, "Making $x$ the subject when it appears twice", [
  Take $y = (a x + b)/(c x + d)$.

  Cross-multiply: $y(c x + d) = a x + b$.

  Expand: $c x y + d y = a x + b$.

  Collect the $x$ terms: $c x y - a x = b - d y$.

  Factorise: $x(c y - a) = b - d y$.

  Divide: $x = (b - d y)/(c y - a)$, undefined when $y = a/c$.

  *Consequence:* the excluded value $y = a/c$ is the horizontal asymptote of the original function — a fact that shows up in graph questions.
])

== L.5 Matrices

#deriv(17, "The two-by-two inverse", [
  For $A = mat(a, b; c, d)$, define the adjugate $A^* = mat(d, -b; -c, a)$.

  Multiply: $A A^* = mat(a d - b c, -a b + b a; c d - d c, -b c + d a)$.

  Every off-diagonal entry is zero, and both diagonal entries equal $a d - b c = det A$.

  So $A A^* = (det A) I$, and dividing by $det A$ gives $A^(-1) = frac(1, det A) mat(d, -b; -c, a)$.

  *Consequence:* the inverse exists exactly when $det A != 0$; when the determinant vanishes, division is impossible and no inverse exists.
])

#deriv(18, "Determinant as an area scale factor", [
  Take the unit square with corners $(0,0), (1,0), (0,1), (1,1)$. Applying the matrix $mat(a, b; c, d)$ sends $(1, 0)$ to $(a, c)$ and $(0, 1)$ to $(b, d)$.

  The image is a parallelogram spanned by $(a, c)$ and $(b, d)$, whose area is $|a d - b c|$.

  So the determinant is the factor by which the transformation scales area; a zero determinant collapses the plane onto a line, which is why the matrix is then singular.

  *Consequence:* a negative determinant means the transformation also reverses orientation.
])

#deriv(19, "Cramer's rule for two unknowns", [
  Take $a_1 x + b_1 y = c_1$ and $a_2 x + b_2 y = c_2$.

  Eliminate $y$ by multiplying the first equation by $b_2$ and the second by $b_1$, then subtracting:

  $x(a_1 b_2 - a_2 b_1) = c_1 b_2 - c_2 b_1$

  So $x = D_x/D$ with $D = a_1 b_2 - a_2 b_1$ and $D_x = c_1 b_2 - c_2 b_1$.

  The same elimination for $y$ gives $D_y = a_1 c_2 - a_2 c_1$.

  *Consequence:* both numerators are the determinant with one column replaced by the constants.
])

== L.6 Equations and Inequalities

#deriv(20, "Why the inequality sign reverses", [
  Take a true statement such as $3 < 5$.

  Multiply both sides by $-1$: the left becomes $-3$ and the right $-5$.

  But $-3$ is *greater* than $-5$, not less. The order has been reversed.

  Formally, multiplying by a negative number reflects every point of the number line about zero, and reflection exchanges left and right.

  *Consequence:* any operation that reverses order — multiplying or dividing by a negative, or taking reciprocals of numbers with the same sign — reverses the symbol.
])

#deriv(21, "The modulus inequality", [
  The statement $|X| < k$, for $k > 0$, says the distance of $X$ from zero is less than $k$.

  The points within distance $k$ of zero are exactly those between $-k$ and $k$.

  So $|X| < k$ is equivalent to $-k < X < k$.

  For $|X| > k$ the points are those *beyond* distance $k$ on either side: $X < -k$ or $X > k$.

  *Consequence:* a modulus inequality with $<$ always gives one interval; with $>$ it gives two rays.
])

#deriv(22, "Solving a linear–quadratic pair", [
  Suppose one equation is linear and the other quadratic.

  Solve the linear equation for one variable — say $y = m x + k$.

  Substitute into the quadratic. The result is a single quadratic in $x$.

  Each real root of that quadratic gives one intersection point; the number of real roots is the number of solutions.

  *Consequence:* a linear–quadratic system can never have more than two solutions, because a quadratic has at most two real roots.
])

#deriv(23, "The constant of variation", [
  A statement such as "$y$ varies directly as $x$" fixes only the *shape* of the relationship, not its size.

  Every relationship of that shape is $y = k x$ for some fixed number $k$.

  A single data pair therefore fixes $k$ uniquely: substitute the pair and solve.

  *Consequence:* variation questions always follow three steps — write the model, find $k$, substitute the new value. Skipping the middle step is the commonest lost mark in the topic.
])

#deriv(24, "Why a quadratic can have equal roots only when $Delta = 0$", [
  From the formula $x = (-b plus.minus sqrt(Delta))/(2a)$, the two roots differ only in the sign of the surd term.

  If $Delta > 0$ the surd is a positive real number, so the two roots differ.

  If $Delta < 0$ no real surd exists.

  If $Delta = 0$ the surd term is zero, and both roots collapse to $-b/(2a)$.

  *Consequence:* "equal roots" and "the vertex lies on the $x$-axis" are the same statement.
])

#deriv(25, "Expanding $(x + p)(x + q)$", [
  Multiply term by term: $x^2 + q x + p x + p q$.

  Collect: $x^2 + (p + q)x + p q$.

  Comparing with $x^2 + b x + c$ shows that factorising a monic quadratic means finding two numbers whose *sum* is $b$ and whose *product* is $c$.

  *Consequence:* the entire "split the middle term" method is just this expansion read backwards.
])
