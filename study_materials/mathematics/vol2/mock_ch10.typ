#import "template.typ": *

#current-chapter.update("Mock Examination 1")
#pagebreak()

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 1]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full Section II CBT Paper]
]

#v(4pt)
#v(4pt)
#text(font: "DejaVu Sans", size: 10pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the exact format, timing and difficulty spread of the Algebra section of a real UTME Mathematics paper.]

#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],
)

== Instructions

+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.
+ If a question takes longer than ninety seconds, flag it and return in the final pass.
+ Use no scientific calculator — the CBT calculator is four-function only.
+ Write your answers on rough paper, then compare with the key.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-green)[WRITE THESE FIVE FACTS ON YOUR ROUGH SHEET FIRST]
  #v(3pt)
  $ x = frac(-b plus.minus sqrt(b^2 - 4 a c), 2a) , quad alpha + beta = -frac(b, a) , quad alpha beta = frac(c, a) $
  $ T_n = a + (n - 1)d , quad S_n = frac(n, 2)[2a + (n - 1)d] , quad S_infinity = frac(a, 1 - r) $
  $ det mat(a, b; c, d) = a d - b c , quad A^(-1) = frac(1, det A) mat(d, -b; -c, a) $
]

== Mock Examination 1 — Questions

#mcq(1, [Make $x$ the subject of $y = 4x - 7$.], [$(y + 7)/4$], [$(y - 7)/4$], [$4y + 7$], [$(7 - y)/4$])

#mcq(2, [Given $1/f = 1/u + 1/v$ with $u = 8$ and $v = 8$, find $f$.], [$16$], [$8$], [$2$], [$4$])

#mcq(3, [Make $t$ the subject of $s = 1/2 a t^2$.], [$2s/a$], [$sqrt(2s/a)$], [$sqrt(s/a)$], [$2a/s$])

#mcq(4, [Find the remainder when $x^3 - 2x^2 + 3x - 4$ is divided by $(x - 2)$.], [$-2$], [$6$], [$2$], [$0$])

#mcq(5, [Which is a factor of $x^3 - 4x^2 + x + 6$?], [$(x + 2)$], [$(x - 6)$], [$(x - 2)$], [$(x + 3)$])

#mcq(6, [If $(x - 3)$ is a factor of $x^3 - 7x + k$, find $k$.], [$-6$], [$6$], [$12$], [$-12$])

#mcq(7, [Factorise $x^2 - 5x - 14$.], [$(x + 7)(x - 2)$], [$(x - 14)(x + 1)$], [$(x - 5)(x - 14)$], [$(x - 7)(x + 2)$])

#mcq(8, [Solve $2x^2 + 5x - 3 = 0$.], [$x = -1/2$ or $x = 3$], [$x = 1/2$ or $x = -3$], [$x = 1$ or $x = -3$], [$x = 3/2$ or $x = -1$])

#mcq(9, [The roots of $x^2 - 6x + 5 = 0$ are $alpha$ and $beta$. Find $alpha^2 + beta^2$.], [$36$], [$26$], [$16$], [$11$])

#mcq(10, [For what values of $k$ does $x^2 + k x + 16 = 0$ have equal roots?], [$plus.minus 8$], [$8$ only], [$plus.minus 4$], [$4$ only])

#mcq(11, [Express $x^2 - 6x + 11$ in the form $(x - h)^2 + k$.], [$(x - 3)^2 - 2$], [$(x + 3)^2 + 2$], [$(x - 6)^2 + 11$], [$(x - 3)^2 + 2$])

#mcq(12, [The quadratic whose roots are $3$ and $-5$ is], [$x^2 - 2x - 15 = 0$], [$x^2 + 8x - 15 = 0$], [$x^2 + 2x - 15 = 0$], [$x^2 - 8x + 15 = 0$])

#mcq(13, [Solve $3x + 2y = 16$ and $4x - y = 3$ simultaneously.], [$x = 2, y = 5$], [$x = 5, y = 2$], [$x = 3, y = 4$], [$x = 4, y = 3$])

#mcq(14, [The equations $2x + 3y = 7$ and $4x + 6y = 21$ have], [one solution], [two solutions], [infinitely many solutions], [no solution])

#mcq(15, [A two-digit number has digit sum $9$. Reversing its digits increases it by $27$. Find it.], [$63$], [$45$], [$36$], [$54$])

#mcq(16, [Solve $y = x + 2$ and $x^2 + y^2 = 10$.], [$(3, 1)$ and $(-1, -3)$], [$(1, 3)$ and $(-3, -1)$], [$(-1, 1)$ and $(3, 3)$], [$(2, 4)$ and $(-2, 0)$])

#mcq(17, [Solve $5 - 2x < 11$.], [$x < -3$], [$x > 3$], [$x > -3$], [$x < 3$])

#mcq(18, [Solve $x^2 - x - 6 > 0$.], [$x < -2$ or $x > 3$], [$-2 < x < 3$], [$x > 2$ or $x < -3$], [$-3 < x < 2$])

#mcq(19, [The integer values of $x$ satisfying $-3 <= 2x + 1 < 7$ are], [$-1, 0, 1, 2$], [$-2, -1, 0, 1$], [$-3, -2, -1, 0, 1$], [$-2, -1, 0, 1, 2$])

#mcq(20, [Solve $|2x - 1| <= 5$.], [$-3 <= x <= 2$], [$-2 <= x <= 3$], [$x <= 3$], [$-2 < x < 3$])

#mcq(21, [If $y$ varies directly as $x^2$ and $y = 27$ when $x = 3$, find $y$ when $x = 5$.], [$45$], [$125$], [$60$], [$75$])

#mcq(22, [If $y$ varies inversely as $x$ and $y = 6$ when $x = 4$, find $x$ when $y = 8$.], [$48$], [$2$], [$3$], [$12$])

#mcq(23, [$z$ varies jointly as $x$ and $y^2$. If $z = 24$ when $x = 3$ and $y = 2$, find $z$ when $x = 2$ and $y = 3$.], [$36$], [$54$], [$24$], [$18$])

#mcq(24, [$p$ is partly constant and partly varies as $q$. When $q = 2$, $p = 9$; when $q = 5$, $p = 18$. Find $p$ when $q = 8$.], [$24$], [$27$], [$30$], [$21$])

#mcq(25, [The 12th term of the A.P. $4, 9, 14, dots$ is], [$54$], [$64$], [$59$], [$49$])

#mcq(26, [The sum of the first 25 terms of the A.P. $2, 6, 10, dots$ is], [$1200$], [$1250$], [$1300$], [$1100$])

#mcq(27, [How many terms are in the A.P. $3, 7, 11, dots, 99$?], [$25$], [$24$], [$26$], [$23$])

#mcq(28, [The 6th term of the G.P. $2, 6, 18, dots$ is], [$162$], [$1458$], [$324$], [$486$])

#mcq(29, [Find the sum to infinity of $12 + 6 + 3 + dots$], [$18$], [$36$], [$24$], [$48$])

#mcq(30, [Express $0.dot(6)$ as a fraction.], [$frac(3, 5)$], [$frac(2, 3)$], [$frac(6, 10)$], [$frac(1, 6)$])

#mcq(31, [If $a * b = 3a - 2b$, evaluate $4 * 5$.], [$2$], [$22$], [$-2$], [$7$])

#mcq(32, [If $a * b = a b + a + b$, find the identity element.], [$1$], [$-1$], [$2$], [$0$])

#mcq(33, [If $a * b = a + b - 4$, the inverse of $6$ is], [$4$], [$-2$], [$2$], [$10$])

#mcq(34, [Evaluate $det mat(5, 3; -2, 4)$], [$26$], [$14$], [$20$], [$-26$])

#mcq(35, [If $A = mat(2, 1; 5, 3)$, find $det A$.], [$11$], [$-1$], [$6$], [$1$])

#mcq(36, [The inverse of $mat(3, 1; 2, 1)$ is], [$frac(1, 5) mat(1, -1; -2, 3)$], [$mat(1, -1; -2, 3)$], [$mat(3, -1; -2, 1)$], [$frac(1, 5) mat(1, 1; 2, 3)$])

#mcq(37, [If $A = mat(1, 2; 3, 4)$ and $B = mat(2, 0; 1, 2)$, find $A B$.], [$mat(4, 4; 10, 8)$], [$mat(2, 0; 3, 8)$], [$mat(4, 10; 4, 8)$], [$mat(6, 6; 12, 12)$])

#mcq(38, [The value of $x$ for which $det mat(x, 3; 2, x) = 10$ is], [$4$ only], [$plus.minus 6$], [$16$], [$plus.minus 4$])

#mcq(39, [The degree of the polynomial $2x^3(x^2 - 1) - x$ is], [$3$], [$5$], [$6$], [$4$])

#mcq(40, [When a polynomial is divided by $(x + 2)$ the remainder is $0$. Which statement is true?], [$(x - 2)$ is a factor and $P(2) = 0$], [$P(0) = 2$], [$(x + 2)$ is a factor and $P(-2) = 0$], [the quotient has degree $0$])

#pagebreak()

== Mock Examination 1 — Answer Key

#answer-key-grid((
  "A", "D", "B", "C", "C", "A", "D", "B", "B", "A",
  "D", "C", "A", "D", "C", "B", "C", "A", "D", "B",
  "D", "C", "A", "B", "C", "B", "A", "D", "C", "B",
  "A", "D", "C", "A", "D", "B", "A", "D", "B", "C",
))

#block(width: 100%, fill: trap-bg, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: trap-red)[HOW TO MARK YOURSELF]
  #v(2pt)
  Score 30+ and this section is exam-ready. Below 24, return to the chapter named at the
  end of each solution. For every miss, write the three-line review: what you did, what
  the rule was, and what you will check next time.
]

== Mock Examination 1 — Complete Solutions

#sol-item(1, "A")[
  Add $7$, then divide by $4$: $x = (y + 7)/4$. *Chapter 1.*
]

#sol-item(2, "D")[
  $f = u v/(u + v) = 64/16 = 4$; indeed $1/8 + 1/8 = 1/4$. *Chapter 1.*
]

#sol-item(3, "B")[
  Multiply by $2$: $a t^2 = 2s$, so $t^2 = 2s/a$ and $t = sqrt(2s/a)$. *Chapter 1.*
]

#sol-item(4, "C")[
  $P(2) = 8 - 8 + 6 - 4 = 2$. *Chapter 2.*
]

#sol-item(5, "C")[
  $P(2) = 8 - 16 + 2 + 6 = 0$, so $(x - 2)$ is a factor; indeed the cubic is $(x - 2)(x - 3)(x + 1)$. *Chapter 2.*
]

#sol-item(6, "A")[
  $P(3) = 27 - 21 + k = 0$, so $k = -6$. *Chapter 2.*
]

#sol-item(7, "D")[
  Product $-14$, sum $-5$: the pair is $-7$ and $2$. *Chapter 3.*
]

#sol-item(8, "B")[
  Split the middle term: $2x^2 + 6x - x - 3 = 2x(x + 3) - 1(x + 3)$, so $(2x - 1)(x + 3) = 0$. *Chapter 3.*
]

#sol-item(9, "B")[
  $alpha + beta = 6$, $alpha beta = 5$, so $alpha^2 + beta^2 = 36 - 10 = 26$. *Chapter 3.*
]

#sol-item(10, "A")[
  $Delta = k^2 - 64 = 0$, so $k = plus.minus 8$; both signs give a repeated root. *Chapter 3.*
]

#sol-item(11, "D")[
  Complete the square: $x^2 - 6x + 11 = (x - 3)^2 - 9 + 11 = (x - 3)^2 + 2$. *Chapter 3.*
]

#sol-item(12, "C")[
  Sum $= -2$ and product $= -15$, so $x^2 - (-2)x + (-15) = 0$. *Chapter 3.*
]

#sol-item(13, "A")[
  From the second, $y = 4x - 3$; substituting gives $3x + 8x - 6 = 16$, so $x = 2$ and $y = 5$. Check: $8 - 5 = 3$ ✓ *Chapter 4.*
]

#sol-item(14, "D")[
  Coefficients are proportional ($2/4 = 3/6$) but constants are not ($7/21$), so the lines are parallel. *Chapter 4.*
]

#sol-item(15, "C")[
  $10b + a - (10a + b) = 9(b - a) = 27$, so $b - a = 3$ with $a + b = 9$: $a = 3$, $b = 6$. *Chapter 4.*
]

#sol-item(16, "B")[
  Substituting gives $2x^2 + 4x - 6 = 0$, i.e. $x^2 + 2x - 3 = 0$, so $x = 1$ or $x = -3$ and $y = 3$ or $y = -1$. *Chapter 4.*
]

#sol-item(17, "C")[
  $-2x < 6$; dividing by $-2$ reverses the sign: $x > -3$. *Chapter 5.*
]

#sol-item(18, "A")[
  $(x - 3)(x + 2) > 0$: the parabola is positive outside its roots. *Chapter 5.*
]

#sol-item(19, "D")[
  Subtract $1$: $-4 <= 2x < 6$; halve: $-2 <= x < 3$. *Chapter 5.*
]

#sol-item(20, "B")[
  $-5 <= 2x - 1 <= 5$ gives $-4 <= 2x <= 6$, so $-2 <= x <= 3$. *Chapter 5.*
]

#sol-item(21, "D")[
  $27 = 9k$ gives $k = 3$, so $y = 3(25) = 75$. *Chapter 6.*
]

#sol-item(22, "C")[
  $x y = 24$, so $x = 24/8 = 3$. *Chapter 6.*
]

#sol-item(23, "A")[
  $24 = k(3)(4) = 12k$, so $k = 2$ and $z = 2(2)(9) = 36$. *Chapter 6.*
]

#sol-item(24, "B")[
  $p = k q + c$: $9 = 2k + c$, $18 = 5k + c$, so $k = 3$, $c = 3$ and $p = 27$. *Chapter 6.*
]

#sol-item(25, "C")[
  $T_12 = 4 + 11(5) = 59$. *Chapter 7.*
]

#sol-item(26, "B")[
  $S_25 = frac(25, 2)[4 + 24(4)] = frac(25, 2)(100) = 1250$. *Chapter 7.*
]

#sol-item(27, "A")[
  $99 = 3 + (n - 1)4$ gives $n - 1 = 24$, so $n = 25$. *Chapter 7.*
]

#sol-item(28, "D")[
  $T_6 = 2(3^5) = 486$. *Chapter 7.*
]

#sol-item(29, "C")[
  $a = 12$, $r = 1/2$, so $S_infinity = 12/(1/2) = 24$. *Chapter 7.*
]

#sol-item(30, "B")[
  G.P. with $a = frac(6, 10)$ and $r = frac(1, 10)$: $frac(6/10, 9/10) = frac(2, 3)$. *Chapter 7.*
]

#sol-item(31, "A")[
  $3(4) - 2(5) = 12 - 10 = 2$. *Chapter 8.*
]

#sol-item(32, "D")[
  $a e + a + e = a$ gives $e(a + 1) = 0$, so $e = 0$ for all $a$. *Chapter 8.*
]

#sol-item(33, "C")[
  Identity: $e = 4$. Solve $6 + b - 4 = 4$, giving $b = 2$. *Chapter 8.*
]

#sol-item(34, "A")[
  $5(4) - 3(-2) = 20 + 6 = 26$. *Chapter 9.*
]

#sol-item(35, "D")[
  $2(3) - 1(5) = 1$, so $A$ is invertible. *Chapter 9.*
]

#sol-item(36, "B")[
  $det = 3 - 2 = 1$; swap the diagonal, negate the off-diagonal: $mat(1, -1; -2, 3)$. *Chapter 9.*
]

#sol-item(37, "A")[
  Row times column: $(1)(2) + (2)(1) = 4$, $(1)(0) + (2)(2) = 4$, $(3)(2) + (4)(1) = 10$, $(3)(0) + (4)(2) = 8$. *Chapter 9.*
]

#sol-item(38, "D")[
  $x^2 - 6 = 10$, so $x^2 = 16$ and $x = plus.minus 4$. *Chapter 9.*
]

#sol-item(39, "B")[
  $2x^3(x^2 - 1) = 2x^5 - 2x^3$; the leading term is $x^5$. *Chapter 2.*
]

#sol-item(40, "C")[
  A zero remainder means the divisor divides exactly, so it is a factor and $P(-2) = 0$. *Chapter 2.*
]

