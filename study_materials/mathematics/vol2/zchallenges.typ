#import "template.typ": *

#current-chapter.update("Appendix H: Thirty Additional Graded Worked Examples")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Thirty More Worked Examples]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Thirty further examples, graded in three bands and drawn from all nine chapters. Every line of working is written out; nothing is left as "obvious". Work each one with the solution covered, then compare line by line.
  ]
]

#v(6pt)

== H.1 Foundation Band (1–10)

#worked-example(1, "Making a letter the subject", tier: "FOUNDATION", [Make $x$ the subject of $3x + 2y = 12$.], [
  $3x + 2y = 12$

  Subtract $2y$ from both sides: $3x = 12 - 2y$.

  Divide both sides by $3$: $x = (12 - 2y)/3$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = (12 - 2y)/3$, or equivalently $x = 4 - 2y/3$.

  #text(size: 8.8pt)[*Check:* substitute back — $3(4 - 2y/3) + 2y = 12 - 2y + 2y = 12$. Correct.]
])

#worked-example(2, "The subject appears twice", tier: "FOUNDATION", [Make $x$ the subject of $a x + b = c x + d$.], [
  Collect every term in $x$ on one side: $a x - c x = d - b$.

  Factorise: $x(a - c) = d - b$.

  Divide by the bracket: $x = (d - b)/(a - c)$, valid only if $a != c$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = (d - b)/(a - c)$.

  #text(size: 8.8pt)[*Why the condition:* if $a = c$ the $x$ terms cancel and the equation either has no solution or is true for every $x$.]
])

#worked-example(3, "The lens formula", tier: "FOUNDATION", [Given $1/f = 1/u + 1/v$ with $u = 12$ and $v = 6$, find $f$.], [
  Combine the right-hand side over a common denominator: $1/f = (v + u)/(u v)$.

  Invert both sides: $f = (u v)/(u + v)$.

  Substitute: $f = (12 times 6)/(12 + 6) = 72/18 = 4$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $f = 4$ units.

  #text(size: 8.8pt)[*Check:* $1/12 + 1/6 = 1/12 + 2/12 = 3/12 = 1/4$. Correct.]
])

#worked-example(4, "Remainder theorem with a negative root", tier: "FOUNDATION", [Find the remainder when $P(x) = x^4 - 3x^2 + 2x - 1$ is divided by $(x + 2)$., ], [
  The divisor $x + 2$ vanishes at $x = -2$, so the remainder is $P(-2)$.

  $P(-2) = (-2)^4 - 3(-2)^2 + 2(-2) - 1 = 16 - 12 - 4 - 1$.

  $P(-2) = -1$.

  #text(fill: jamb-green, weight: "bold")[Answer:] remainder $-1$.

  #text(size: 8.8pt)[*Trap:* using $+2$ instead of $-2$ gives $16 - 12 + 4 - 1 = 7$, which is a distractor in the real paper.]
])

#worked-example(5, "Solving a quadratic by factorising", tier: "FOUNDATION", [Solve $2x^2 - 7x + 3 = 0$.], [
  The product of the two numbers must be $a c = 6$ and their sum must be $b = -7$.

  The pair is $-6$ and $-1$.

  Split the middle term: $2x^2 - 6x - x + 3 = 0$.

  Group: $2x(x - 3) - 1(x - 3) = 0$, so $(2x - 1)(x - 3) = 0$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = 1/2$ or $x = 3$.

  #text(size: 8.8pt)[*Check:* $2(1/2)^2 - 7(1/2) + 3 = 0.5 - 3.5 + 3 = 0$. Correct.]
])

#worked-example(6, "Completing the square with a surd", tier: "FOUNDATION", [Solve $x^2 + 4x - 1 = 0$ by completing the square.], [
  Move the constant: $x^2 + 4x = 1$.

  Add the square of half the coefficient of $x$: half of $4$ is $2$, and $2^2 = 4$.

  $x^2 + 4x + 4 = 5$, that is $(x + 2)^2 = 5$.

  Take roots: $x + 2 = plus.minus sqrt(5)$, so $x = -2 plus.minus sqrt(5)$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = -2 + sqrt(5)$ or $x = -2 - sqrt(5)$.
])

#worked-example(7, "Elimination with matched coefficients", tier: "FOUNDATION", [Solve $3x - y = 7$ and $2x + 3y = 1$.], [
  Make the coefficients of $y$ match in magnitude: multiply the first equation by $3$.

  $9x - 3y = 21$ and $2x + 3y = 1$.

  The signs differ, so add: $11x = 22$, hence $x = 2$.

  Back-substitute into the first: $6 - y = 7$, so $y = -1$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = 2$, $y = -1$.

  #text(size: 8.8pt)[*Check in the second equation:* $4 - 3 = 1$. Correct.]
])

#worked-example(8, "A linear inequality", tier: "FOUNDATION", [Solve $(2x - 1)/3 <= (x + 4)/2$.], [
  Multiply every term by the lowest common denominator, $6$: $2(2x - 1) <= 3(x + 4)$.

  Expand: $4x - 2 <= 3x + 12$.

  Collect: $x <= 14$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x <= 14$.

  #text(size: 8.8pt)[*Check:* $x = 0$ gives $-1/3 <= 2$, true. $x = 14$ gives $27/3 = 9 <= 9$, true.]
])

#worked-example(9, "Direct variation", tier: "FOUNDATION", [The cost $C$ of a journey varies directly as the distance $d$. If $C = 900$ when $d = 150$ km, find $C$ when $d = 220$ km.], [
  Write the model: $C = k d$.

  Substitute the known pair: $900 = k(150)$, so $k = 6$.

  Now substitute the new distance: $C = 6(220) = 1320$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $C = 1320$ (naira).
])

#worked-example(10, "An arithmetic progression", tier: "FOUNDATION", [The $7$th term of an A.P. is $34$ and the $12$th term is $59$. Find the first term.], [
  Write both terms: $a + 6d = 34$ and $a + 11d = 59$.

  Subtract: $5d = 25$, so $d = 5$.

  Substitute back: $a + 30 = 34$, so $a = 4$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $a = 4$ (and $d = 5$).

  #text(size: 8.8pt)[*Note:* the number of gaps between the 7th and 12th terms is $5$, not $6$ or $12 - 7 + 1$.]
])

== H.2 UTME Standard Band (11–22)

#worked-example(11, "Subject twice, with brackets", tier: "UTME STANDARD", [Make $x$ the subject of $y = (3x - 2)/(5x + 1)$., ], [
  Cross-multiply: $y(5x + 1) = 3x - 2$.

  Expand: $5x y + y = 3x - 2$.

  Collect: $5x y - 3x = -2 - y$.

  Factorise: $x(5y - 3) = -(y + 2)$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = (y + 2)/(3 - 5y)$.

  #text(size: 8.8pt)[*Check:* pick $y = 1$. The formula gives $x = 3/(-2) = -1.5$. Substituting $x = -1.5$ into the original: $(3(-1.5) - 2)/(5(-1.5) + 1) = (-6.5)/(-6.5) = 1$. Correct.]
])

#worked-example(12, "Two conditions, two unknowns", tier: "UTME STANDARD", [If $(x - 1)$ and $(x - 2)$ are both factors of $x^3 + a x^2 + b x + 2$, find $a$ and $b$.], [
  A factor means a zero: $P(1) = 0$ and $P(2) = 0$.

  $P(1) = 1 + a + b + 2 = 0$, so $a + b = -3$.

  $P(2) = 8 + 4a + 2b + 2 = 0$, so $2a + b = -5$.

  Subtract the first from the second: $a = -2$. Then $b = -1$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $a = -2$, $b = -1$.

  #text(size: 8.8pt)[*Check:* $x^3 - 2x^2 - x + 2 = (x - 1)(x + 1)(x - 2)$, which vanishes at $1$ and $2$. Correct.]
])

#worked-example(13, "Full factorisation of a cubic", tier: "UTME STANDARD", [Factorise completely $2x^3 - 3x^2 - 11x + 6$, given that $x = 3$ is a root.], [
  Since $x = 3$ is a root, $(x - 3)$ is a factor. Divide by synthetic division with $3$.

  Coefficients $2, -3, -11, 6$: bring down $2$; $2(3) = 6$, add to $-3$ to get $3$; $3(3) = 9$, add to $-11$ to get $-2$; $-2(3) = -6$, add to $6$ to get $0$.

  Quotient: $2x^2 + 3x - 2 = (2x - 1)(x + 2)$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $(x - 3)(2x - 1)(x + 2)$.

  #text(size: 8.8pt)[*Check:* put $x = 1$: original $= 2 - 3 - 11 + 6 = -6$; factorised $= (-2)(1)(3) = -6$. Correct.]
])

#worked-example(14, "A parameter inside a factor condition", tier: "UTME STANDARD", [Find $k$ if $(x - 2)$ is a factor of $x^3 + k x^2 - 3x + 6$.], [
  Set $P(2) = 0$: $8 + 4k - 6 + 6 = 0$.

  Simplify: $4k + 8 = 0$, so $k = -2$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $k = -2$.

  #text(size: 8.8pt)[*Check:* $x^3 - 2x^2 - 3x + 6 = x^2(x - 2) - 3(x - 2) = (x - 2)(x^2 - 3)$. Correct.]
])

#worked-example(15, "Sum and product without solving", tier: "UTME STANDARD", [The roots of $3x^2 - 6x + 1 = 0$ are $alpha$ and $beta$. Find $1/alpha + 1/beta$.], [
  Combine the fractions: $1/alpha + 1/beta = (alpha + beta)/(alpha beta)$.

  From the coefficients: $alpha + beta = -(-6)/3 = 2$ and $alpha beta = 1/3$.

  Divide: $2 -: 1/3 = 6$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $6$.

  #text(size: 8.8pt)[*Insight:* the question never requires the roots themselves — only their sum and product.]
])

#worked-example(16, "Range of a parameter for two roots", tier: "UTME STANDARD", [Find the values of $k$ for which $x^2 + k x + 4 = 0$ has two distinct real roots.], [
  Two distinct real roots need $Delta > 0$.

  $Delta = k^2 - 4(1)(4) = k^2 - 16$.

  So $k^2 > 16$, giving $k < -4$ or $k > 4$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $k < -4$ or $k > 4$.

  #text(size: 8.8pt)[*Trap:* writing $-4 < k < 4$ inverts the condition — that range gives *no* real roots.]
])

#worked-example(17, "Linear and quadratic together", tier: "UTME STANDARD", [Solve $x^2 + y^2 = 25$ and $y = x + 1$.], [
  Substitute the linear equation: $x^2 + (x + 1)^2 = 25$.

  Expand: $2x^2 + 2x + 1 = 25$, so $2x^2 + 2x - 24 = 0$.

  Divide by $2$: $x^2 + x - 12 = 0$, that is $(x + 4)(x - 3) = 0$.

  So $x = 3$ (giving $y = 4$) or $x = -4$ (giving $y = -3$).

  #text(fill: jamb-green, weight: "bold")[Answer:] $(3, 4)$ and $(-4, -3)$.

  #text(size: 8.8pt)[*Check:* $9 + 16 = 25$ and $16 + 9 = 25$. Correct.]
])

#worked-example(18, "Three unknowns", tier: "UTME STANDARD", [Solve $x + y + z = 6$, $2x - y + z = 3$, $x + 2y - z = 2$.], [
  From the first equation, $z = 6 - x - y$. Eliminate $z$ from the other two.

  Second: $2x - y + (6 - x - y) = 3$, so $x - 2y = -3$.

  Third: $x + 2y - (6 - x - y) = 2$, so $2x + 3y = 8$.

  From $x = 2y - 3$: $2(2y - 3) + 3y = 8$, so $7y = 14$ and $y = 2$.

  Then $x = 1$ and $z = 6 - 1 - 2 = 3$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = 1$, $y = 2$, $z = 3$.

  #text(size: 8.8pt)[*Check in the second:* $2 - 2 + 3 = 3$. Correct.]
])

#worked-example(19, "A cost word problem", tier: "UTME STANDARD", [Three pens and two books cost 1700 naira; five pens and four books cost 3100 naira. Find the cost of one pen.], [
  Let a pen cost $p$ and a book cost $b$: $3p + 2b = 1700$ and $5p + 4b = 3100$.

  Double the first equation: $6p + 4b = 3400$.

  Subtract the second from it: $p = 300$.

  Then $900 + 2b = 1700$, so $b = 400$.

  #text(fill: jamb-green, weight: "bold")[Answer:] a pen costs 300 naira (a book costs 400 naira).

  #text(size: 8.8pt)[*Check:* $5(300) + 4(400) = 1500 + 1600 = 3100$. Correct.]
])

#worked-example(20, "A quadratic inequality", tier: "UTME STANDARD", [Solve $x^2 - 4x - 5 >= 0$.], [
  Factorise: $(x - 5)(x + 1) >= 0$.

  The roots are $-1$ and $5$, and $a = 1 > 0$, so the parabola opens upwards.

  The product is positive *outside* the roots.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x <= -1$ or $x >= 5$.

  #text(size: 8.8pt)[*Test:* $x = 0$ gives $-5$, which is not $>= 0$, so the interval $(-1, 5)$ is correctly excluded.]
])

#worked-example(21, "A rational inequality", tier: "UTME STANDARD", [Solve $3/(x - 2) > 1$.], [
  Subtract $1$ from both sides: $3/(x - 2) - 1 > 0$.

  Combine: $(3 - (x - 2))/(x - 2) > 0$, that is $(5 - x)/(x - 2) > 0$.

  Critical values $x = 5$ and $x = 2$; the expression is positive between them.

  #text(fill: jamb-green, weight: "bold")[Answer:] $2 < x < 5$.

  #text(size: 8.8pt)[*Trap:* multiplying both sides by $(x - 2)$ without knowing its sign — that is why the sign chart is the safe route.]
])

#worked-example(22, "Partial variation", tier: "UTME STANDARD", [$y$ is partly constant and partly varies as $x$. If $y = 11$ when $x = 2$ and $y = 21$ when $x = 4$, find $y$ when $x = 6$.], [
  Write $y = k x + c$.

  Substitute: $2k + c = 11$ and $4k + c = 21$.

  Subtract: $2k = 10$, so $k = 5$; then $c = 1$.

  At $x = 6$: $y = 5(6) + 1 = 31$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $y = 31$.

  #text(size: 8.8pt)[*Note:* two constants mean two data pairs are needed. With a single pair, $k$ and $c$ cannot both be fixed.]
])

== H.3 JAMB Challenge Band (23–30)

#worked-example(23, "A quadratic built from surd roots", tier: "JAMB CHALLENGE", [Find the equation whose roots are $2 + sqrt(3)$ and $2 - sqrt(3)$.], [
  Sum of roots: $(2 + sqrt(3)) + (2 - sqrt(3)) = 4$.

  Product of roots: $(2 + sqrt(3))(2 - sqrt(3)) = 4 - 3 = 1$.

  The equation is $x^2 - ("sum") x + ("product") = 0$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x^2 - 4x + 1 = 0$.

  #text(size: 8.8pt)[*Check:* substituting $x = 2 + sqrt(3)$ gives $(7 + 4sqrt(3)) - (8 + 4sqrt(3)) + 1 = 0$. Correct.]
])

#worked-example(24, "A cubic from given roots", tier: "JAMB CHALLENGE", [Find the cubic with roots $1$, $-2$ and $3$, and leading coefficient $1$.], [
  Each root gives a factor: $(x - 1)(x + 2)(x - 3)$.

  Multiply the first two: $(x - 1)(x + 2) = x^2 + x - 2$.

  Multiply by the third: $(x^2 + x - 2)(x - 3) = x^3 + x^2 - 2x - 3x^2 - 3x + 6$.

  Collect: $x^3 - 2x^2 - 5x + 6$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x^3 - 2x^2 - 5x + 6 = 0$.

  #text(size: 8.8pt)[*Root check:* $P(1) = 1 - 2 - 5 + 6 = 0$, $P(-2) = -8 - 8 + 10 + 6 = 0$, $P(3) = 27 - 18 - 15 + 6 = 0$. Correct.]
])

#worked-example(25, "Inverse variation with a square root", tier: "JAMB CHALLENGE", [$y$ varies inversely as $sqrt(x)$. If $y = 6$ when $x = 4$, find $x$ when $y = 3$.], [
  Model: $y = k/sqrt(x)$.

  Substitute: $6 = k/2$, so $k = 12$.

  Now $3 = 12/sqrt(x)$, so $sqrt(x) = 4$ and $x = 16$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $x = 16$.

  #text(size: 8.8pt)[*Check:* $12/sqrt(16) = 12/4 = 3$. Correct.]
])

#worked-example(26, "A G.P. with a given sum", tier: "JAMB CHALLENGE", [A G.P. has first term $3$ and common ratio $2$. Find the least number of terms whose sum exceeds $1000$.], [
  $S_n = 3(2^n - 1)/(2 - 1) = 3(2^n - 1)$.

  We need $3(2^n - 1) > 1000$, so $2^n > 334.overline(3)$.

  $2^8 = 256$ (too small) and $2^9 = 512$ (large enough).

  #text(fill: jamb-green, weight: "bold")[Answer:] $n = 9$ terms.

  #text(size: 8.8pt)[*Verify:* $S_8 = 3(255) = 765$ and $S_9 = 3(511) = 1533$. Correct.]
])

#worked-example(27, "A recurring decimal as a G.P.", tier: "JAMB CHALLENGE", [Express $0.dot(4)dot(5)$ as a fraction in its lowest terms.], [
  Write $0.454545 dots = 0.45 + 0.0045 + 0.000045 + dots$.

  This is a G.P. with $a = 0.45$ and $r = 0.01$.

  $S_infinity = 0.45/(1 - 0.01) = 0.45/0.99 = 45/99$.

  Simplify: $5/11$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $5/11$.

  #text(size: 8.8pt)[*Check:* $5 -: 11 = 0.4545 dots$. Correct.]
])

#worked-example(28, "A binary operation with an identity", tier: "JAMB CHALLENGE", [A binary operation is defined by $a * b = a + b + 2a b$. Find the identity element and the inverse of $3$.], [
  Identity: $a * e = a$, so $a + e + 2a e = a$.

  Then $e + 2a e = 0$, that is $e(1 + 2a) = 0$ for every $a$, so $e = 0$.

  Inverse of $3$: solve $3 + b + 6b = 0$.

  $3 + 7b = 0$, so $b = -3/7$.

  #text(fill: jamb-green, weight: "bold")[Answer:] identity $0$; inverse of $3$ is $-3/7$.

  #text(size: 8.8pt)[*Check:* $3 * (-3/7) = 3 - 3/7 - 18/7 = 3 - 21/7 = 0$. Correct.]
])

#worked-example(29, "A matrix inverse with a fraction", tier: "JAMB CHALLENGE", [Find the inverse of $M = mat(4, 3; 2, 5)$.], [
  $det M = 4(5) - 3(2) = 20 - 6 = 14$.

  Swap the leading diagonal, negate the other two entries: $mat(5, -3; -2, 4)$.

  Divide every entry by $14$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $M^(-1) = frac(1, 14) mat(5, -3; -2, 4)$.

  #text(size: 8.8pt)[*Check:* $M M^(-1) = frac(1, 14) mat(4, 3; 2, 5) mat(5, -3; -2, 4) = frac(1, 14) mat(14, 0; 0, 14) = I$. Correct.]
])

#worked-example(30, "A three-by-three determinant", tier: "JAMB CHALLENGE", [Evaluate $det mat(2, 1, 3; 1, 0, 2; 4, 1, 1)$.], [
  Expand along the first row, with signs $+$, $-$, $+$.

  First term: $2 det mat(0, 2; 1, 1) = 2(0 - 2) = -4$.

  Second term: $-1 det mat(1, 2; 4, 1) = -(1 - 8) = 7$.

  Third term: $+3 det mat(1, 0; 4, 1) = 3(1 - 0) = 3$.

  Sum: $-4 + 7 + 3 = 6$.

  #text(fill: jamb-green, weight: "bold")[Answer:] $6$.
])

#current-chapter.update("Appendix I: Twenty Advanced Challenge Problems")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty Advanced Challenge Problems]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The hardest band: problems that combine two chapters or hide the method behind a disguise. Attempt each for at least four minutes before reading the solution. These are the questions that separate a 30/40 from a 37/40.
  ]
]

#v(6pt)

#let chal(n, prompt, solution) = [
  #block(
    width: 100%,
    fill: jamb-light,
    stroke: 0.8pt + jamb-border,
    radius: 6pt,
    inset: 10pt,
  )[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[#text(fill: jamb-bright)[CHALLENGE #n.] ] #prompt
    #v(4pt)
    #text(size: 9pt)[#solution]
  ]
  #v(4pt)
]

#chal(1, [If $alpha$ and $beta$ are the roots of $x^2 - p x + q = 0$, express $alpha^3 + beta^3$ in terms of $p$ and $q$.], [
  Use $alpha^3 + beta^3 = (alpha + beta)^3 - 3 alpha beta(alpha + beta)$.

  With $alpha + beta = p$ and $alpha beta = q$: $alpha^3 + beta^3 = p^3 - 3 p q$. *Chapter 3.*
])

#chal(2, [Solve $2^(2x) - 5(2^x) + 4 = 0$.], [
  Let $u = 2^x$. Then $u^2 - 5u + 4 = 0$, so $(u - 1)(u - 4) = 0$ and $u = 1$ or $u = 4$.

  Returning to $x$: $2^x = 1$ gives $x = 0$; $2^x = 4$ gives $x = 2$. *Chapters 1 and 3.*
])

#chal(3, [Solve $x^4 - 5x^2 + 4 = 0$.], [
  Let $u = x^2$: $u^2 - 5u + 4 = 0$, so $u = 1$ or $u = 4$.

  $x^2 = 1$ gives $x = plus.minus 1$; $x^2 = 4$ gives $x = plus.minus 2$.

  All four values are admissible: $x = plus.minus 1, plus.minus 2$. *Chapter 3.*
])

#chal(4, [If $x + y = 5$ and $x^2 + y^2 = 13$, find $x^3 + y^3$.], [
  First find $x y$: $(x + y)^2 = x^2 + y^2 + 2 x y$, so $25 = 13 + 2 x y$ and $x y = 6$.

  Then $x^3 + y^3 = (x + y)^3 - 3 x y(x + y) = 125 - 3(6)(5) = 125 - 90 = 35$. *Chapter 3.*
])

#chal(5, [If $x^2 + 1/x^2 = 7$, find the positive value of $x + 1/x$.], [
  Square the target: $(x + 1/x)^2 = x^2 + 2 + 1/x^2 = 7 + 2 = 9$.

  So $x + 1/x = plus.minus 3$; the positive value is $3$. *Chapters 1 and 3.*
])

#chal(6, [Find $k$ if $(x + 3)$ is a factor of $x^3 + k x^2 - 4x + 3$.], [
  Set $P(-3) = 0$: $-27 + 9k + 12 + 3 = 0$.

  $9k - 12 = 0$, so $k = 4/3$. *Chapter 2.*
])

#chal(7, [Solve $3x^2 - 2x - 4 = 0$, leaving the roots in surd form.], [
  The discriminant is $4 + 48 = 52 = 4 times 13$, so $sqrt(52) = 2 sqrt(13)$.

  $x = (2 plus.minus 2 sqrt(13))/6 = (1 plus.minus sqrt(13))/3$. *Chapter 3.*
])

#chal(8, [A G.P. has second term $12$ and fifth term $96$. Find the sum of its first six terms.], [
  $T_2 = a r = 12$ and $T_5 = a r^4 = 96$. Dividing: $r^3 = 8$, so $r = 2$ and $a = 6$.

  $S_6 = 6(2^6 - 1)/(2 - 1) = 6(63) = 378$. *Chapter 7.*
])

#chal(9, [The roots of $x^2 - k x + 8 = 0$ differ by $2$. Find $k$.], [
  $(alpha - beta)^2 = (alpha + beta)^2 - 4 alpha beta = k^2 - 32$.

  Setting this equal to $4$: $k^2 = 36$, so $k = plus.minus 6$.

  Both signs work, because the difference of the roots depends on $k^2$. *Chapter 3.*
])

#chal(10, [If $A = mat(1, 2; 3, 4)$, find $A^2$.], [
  $A^2 = mat(1, 2; 3, 4) mat(1, 2; 3, 4) = mat(1 + 6, 2 + 8; 3 + 12, 6 + 16) = mat(7, 10; 15, 22)$.

  Note that $A^2 != mat(1, 4; 9, 16)$ — matrices do not square entry by entry. *Chapter 9.*
])

#chal(11, [Solve $|x - 1| + |x + 2| = 5$.], [
  For $x >= 1$: $(x - 1) + (x + 2) = 5$, so $2x + 1 = 5$ and $x = 2$; valid.

  For $-2 < x < 1$: $(1 - x) + (x + 2) = 3$, never $5$; no solution in this band.

  For $x <= -2$: $(1 - x) - (x + 2) = 5$, so $-2x - 1 = 5$ and $x = -3$; valid.

  Solutions: $x = 2$ or $x = -3$. *Chapter 5.*
])

#chal(12, [Find the sum of all two-digit numbers divisible by $7$.], [
  The numbers run from $14$ to $98$ in steps of $7$; the number of terms is $(98 - 14)/7 + 1 = 13$.

  $S = 13/2 (14 + 98) = 13/2 (112) = 13(56) = 728$. *Chapter 7.*
])

#chal(13, [Solve $3^(x+1) = 27^(2x-1)$.], [
  Write $27 = 3^3$, so $27^(2x - 1) = 3^(6x - 3)$.

  Equate indices: $x + 1 = 6x - 3$, so $4 = 5x$ and $x = 4/5$. *Chapters 1 and 3.*
])

#chal(14, [Find $k$ such that the line $y = 2x + k$ touches the curve $y = x^2 - 4x + 5$.], [
  "Touches" means exactly one intersection: substitute $2x + k = x^2 - 4x + 5$.

  $x^2 - 6x + (5 - k) = 0$; tangency needs $Delta = 0$.

  $36 - 4(5 - k) = 0$, so $16 + 4k = 0$ and $k = -4$. *Chapter 4.*
])

#chal(15, [Solve $(x^2 - 9)/(x - 1) >= 0$.], [
  Factorise the numerator: $(x - 3)(x + 3)/(x - 1) >= 0$.

  Critical values $-3, 1, 3$. Testing the four bands: $x < -3$ negative; $-3 < x < 1$ positive; $1 < x < 3$ negative; $x > 3$ positive.

  #text(fill: jamb-green)[Answer:] $-3 <= x < 1$ or $x >= 3$. *Chapter 5.*
])

#chal(16, [A binary operation is defined by $a * b = (a + b)/(a - b)$ for $a != b$. Show that $*$ is not commutative and evaluate $5 * 3 + 3 * 5$.], [
  $5 * 3 = 8/2 = 4$ and $3 * 5 = 8/(-2) = -4$; the results differ, so $*$ is not commutative.

  Their sum is $4 + (-4) = 0$. *Chapter 8.*
])

#chal(17, [Two taps together fill a tank in $6$ hours. One tap alone takes $5$ hours longer than the other. How long does the slower tap take alone?], [
  Let the faster tap take $x$ hours, so the slower takes $x + 5$.

  In one hour they fill $1/x + 1/(x + 5) = 1/6$ of the tank.

  Multiply by $6x(x + 5)$: $6(x + 5) + 6x = x(x + 5)$, so $x^2 - 7x - 30 = 0$.

  $(x - 10)(x + 3) = 0$, so $x = 10$ (reject $-3$).

  The slower tap takes $15$ hours. *Chapter 4.*
])

#chal(18, [Evaluate $det mat(1, 2, 3; 2, 4, 6; 1, 1, 1)$ without a full expansion.], [
  The second row is exactly twice the first, so the rows are linearly dependent.

  A matrix with proportional rows has determinant $0$.

  #text(fill: jamb-green)[Answer:] $0$. *Chapter 9.*
])

#chal(19, [If $2^x dot 4^(x - 1) = 8$, find $x$.], [
  Write everything in base $2$: $2^x dot 2^(2x - 2) = 2^3$.

  Combine the left side: $2^(3x - 2) = 2^3$, so $3x - 2 = 3$ and $x = 5/3$. *Chapters 1 and 3.*
])

#chal(20, [The sum of the first $n$ terms of a sequence is $S_n = n^2 + 3n$. Find its $10$th term and identify the sequence.], [
  $T_n = S_n - S_(n-1) = (n^2 + 3n) - [(n - 1)^2 + 3(n - 1)]$.

  Expanding: $n^2 + 3n - (n^2 - 2n + 1 + 3n - 3) = n^2 + 3n - n^2 - n + 2 = 2n + 2$.

  So $T_10 = 22$; the terms are $4, 6, 8, 10, dots$, an A.P. with $a = 4$ and $d = 2$. *Chapter 7.*
])

#current-chapter.update("Appendix J: Error Log and Progress Trackers")

#pagebreak()
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Error Log & Progress Trackers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Photocopy these pages, or draw the same tables in a notebook. An error written down once is an error you stop repeating; an error merely noticed is an error you will meet again in the hall.
  ]
]

#v(6pt)

== J.1 The Three-Line Review

Every wrong answer earns three lines, no more:

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 10pt,
  block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 6pt, inset: 10pt)[
    #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: trap-red)[Line 1 — What I did]
    #v(3pt)
    #text(size: 9pt)[Write the actual step that went wrong: "I divided by $-2$ and kept the inequality sign."]
  ],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 6pt, inset: 10pt)[
    #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-green)[Line 2 — What the rule is]
    #v(3pt)
    #text(size: 9pt)[State the rule correctly: "Dividing by a negative reverses the inequality."]
  ],
  block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 6pt, inset: 10pt)[
    #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[Line 3 — What I check next time]
    #v(3pt)
    #text(size: 9pt)[Make it a physical action: "Before writing the final sign, circle the negative divisor."]
  ],
)

== J.2 Master Error Log

#table(
  columns: (auto, 1.25fr, 1.05fr, 1.25fr, auto),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Question & source],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The wrong step],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The correct rule],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Chapter],
  ),
  ..range(1, 31).map(i => ([#i], [\ ], [\ ], [\ ], [\ ])).flatten(),
)

#pagebreak()

== J.3 Chapter Mastery Tracker

Rate each chapter from $1$ (cannot start) to $5$ (can teach it). Date every entry; the point is to see the movement.

#table(
  columns: (1.5fr, auto, auto, auto, auto, 1.1fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[First reading],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Drill score],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Revisit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Confidence /5],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Weakest sub-topic],
  ),
  ..(
    "1 Change of subject", "2 Polynomials", "3 Quadratics", "4 Simultaneous equations",
    "5 Inequalities", "6 Variation", "7 Progressions", "8 Binary operations", "9 Matrices",
  ).map(t => ([#t], [\ ], [\ ], [\ ], [\ ], [\ ])).flatten(),
)

== J.4 Mock Score Record

#table(
  columns: (auto, 1.2fr, auto, auto, auto, 1.5fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Score /40],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Time used],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Percent],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapters that cost marks],
  ),
  ..(
    "Mock 1", "Mock 2", "Qualifying test A", "Qualifying test B",
    "Qualifying test C", "Qualifying test D",
  ).map(t => ([#t], [\ ], [\ ], [\ ], [\ ], [\ ])).flatten(),
)

== J.5 Weekly Study Log

#table(
  columns: (auto, 1.4fr, auto, auto, 1.4fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topics studied],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Hours],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions attempted],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[One thing learned about my own habits],
  ),
  ..range(1, 11).map(i => ([#i], [\ ], [\ ], [\ ], [\ ])).flatten(),
)

#trap-box("The Tracker Trap")[
  Filling in these tables is not studying. They are a mirror, not a gym. If a week passes with no revision entry, the problem is not the table — return to Appendix B and restart the countdown from the day you actually reached.
]
