#import "template.typ": *

#current-chapter.update("Appendix F: Second Full Mock Examination")
#pagebreak()

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F: SECOND FULL MOCK EXAMINATION]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Second Full CBT Paper]
]

#v(4pt)
#v(4pt)
#text(font: "DejaVu Sans", size: 10pt, fill: rgb("#CBD5E1"))[A second, entirely fresh paper. Different numbers, same syllabus, same timing — use it a fortnight after Mock 1 to prove that the improvement is real.]

#v(4pt)
== Instructions

+ Attempt all forty questions in forty minutes, without notes.
+ Record the chapter named in each solution you get wrong.
+ Aim for 30 or more, and for no chapter contributing more than three misses.

#block(width: 100%, fill: trap-bg, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: trap-red)[IF YOU SCORE BELOW 24]
  #v(2pt)
  Do not start a third paper. Return to Appendix J, complete the error log for every
  miss, and redo the drill at the end of the chapter that produced each error. A paper
  you have not reviewed is a paper wasted.
]

== Appendix F: Second Full Mock Examination — Questions

#mcq(1, [Make $r$ the subject of $V = 4/3 pi r^3$.], [$root(3, V/(4pi))$], [$(3V)/(4pi)$], [$root(3, (3V)/(4pi))$], [$root(3, (4V)/(3pi))$])

#mcq(2, [Make $x$ the subject of $y = (2x + 3)/(x - 1)$.], [$(y - 3)/(y + 2)$], [$(y + 3)/(y - 2)$], [$(y + 3)/(2 - y)$], [$(3 - y)/(y - 2)$])

#mcq(3, [Make $h$ the subject of $A = 1/2 (a + b) h$.], [$A/(2(a + b))$], [$(2A)/(a - b)$], [$(2A - a)/b$], [$(2A)/(a + b)$])

#mcq(4, [Given $T = 2 pi sqrt(L/g)$, find $L$ when $T = 4pi$ and $g = 10$.], [$40$], [$160$], [$20$], [$10$])

#mcq(5, [Find the remainder when $2x^3 - 3x^2 + x - 5$ is divided by $(x + 1)$.], [$-9$], [$-11$], [$-3$], [$1$])

#mcq(6, [If $(2x - 1)$ is a factor of $2x^3 - 5x^2 + k x - 1$, find $k$.], [$-4$], [$2$], [$8$], [$4$])

#mcq(7, [Divide $x^3 - 8$ by $(x - 2)$.], [$x^2 + 2x + 4$], [$x^2 - 2x + 4$], [$x^2 + 2x - 4$], [$x^2 - 4$])

#mcq(8, [If $(x - 2)$ is a factor of $x^3 + a x^2 - 4x + 4$, find $a$.], [$1$], [$2$], [$-1$], [$-2$])

#mcq(9, [Factorise completely $x^3 + 2x^2 - 5x - 6$.], [$(x + 2)(x - 1)(x - 3)$], [$(x - 2)(x - 1)(x + 3)$], [$(x - 2)(x + 1)(x + 3)$], [$(x + 2)(x + 1)(x - 3)$])

#mcq(10, [Solve $3x^2 - 5x - 2 = 0$.], [$x = 2$ or $x = -1/3$], [$x = -2$ or $x = 1/3$], [$x = 1$ or $x = -2/3$], [$x = 2$ or $x = 1/3$])

#mcq(11, [For $2x^2 - 7x + 3 = 0$, find the sum and the product of the roots.], [$-7/2$ and $3/2$], [$7/2$ and $3/2$], [$7/2$ and $-3/2$], [$7$ and $3$])

#mcq(12, [Find the minimum value of $x^2 - 6x + 5$.], [$4$], [$-5$], [$3$], [$-4$])

#mcq(13, [Express $2x^2 - 8x + 5$ in the form $a(x - h)^2 + k$.], [$2(x - 2)^2 + 3$], [$2(x - 4)^2 - 11$], [$(x - 2)^2 - 3$], [$2(x - 2)^2 - 3$])

#mcq(14, [The equation $x^2 + (k + 2)x + 9 = 0$ has equal roots. Find the positive value of $k$.], [$-8$], [$8$], [$4$], [$1$])

#mcq(15, [Solve $3x + 2y = 12$ and $x - 2y = 4$.], [$x = 4, y = 0$], [$x = 0, y = 4$], [$x = 2, y = 3$], [$x = 4, y = 1$])

#mcq(16, [Solve $5x - 3y = 11$ and $2x + 3y = 17$.], [$x = 3, y = 4$], [$x = 4, y = 3$], [$x = 4, y = -3$], [$x = 2, y = 5$])

#mcq(17, [How many solutions has the system $y = 2x + 3$, $y = 2x - 5$?], [Exactly one], [Exactly two], [Infinitely many], [None])

#mcq(18, [Solve $x + y = 5$ and $x^2 + y^2 = 13$.], [$(1, 4)$ and $(4, 1)$], [$(2, 3)$ and $(3, 2)$], [$(2, 3)$ only], [$(5, 0)$ and $(0, 5)$])

#mcq(19, [Solve $3x - 7 < 5x + 3$.], [$x < -5$], [$x > 5$], [$x > -5$], [$x < 5$])

#mcq(20, [Solve $x^2 - x - 6 < 0$.], [$-2 < x < 3$], [$x < -2$ or $x > 3$], [$-3 < x < 2$], [$x < 3$])

#mcq(21, [How many integers satisfy $-3 < x <= 4$?], [$6$], [$8$], [$5$], [$7$])

#mcq(22, [Solve $|2x - 3| <= 5$.], [$-1 <= x <= 4$], [$x <= 4$], [$-4 <= x <= 1$], [$1 <= x <= 4$])

#mcq(23, [$y$ varies directly as $x$, and $y = 12$ when $x = 3$. Find $y$ when $x = 7$.], [$21$], [$28$], [$24$], [$84$])

#mcq(24, [$y$ varies inversely as $x^2$. If $y = 2$ when $x = 3$, find $y$ when $x = 6$.], [$1$], [$4$], [$1/2$], [$1/4$])

#mcq(25, [$y$ varies jointly as $x$ and $z$ and inversely as $w$. If $y = 6$ when $x = 2$, $z = 3$, $w = 4$, find $y$ when $x = 5$, $z = 2$, $w = 8$.], [$10$], [$2.5$], [$20$], [$5$])

#mcq(26, [$y$ is partly constant and partly varies as $x$. If $y = 11$ when $x = 2$ and $y = 21$ when $x = 4$, find $y$ when $x = 6$.], [$41$], [$31$], [$26$], [$36$])

#mcq(27, [The $5$th term of the A.P. $3, 7, 11, dots$ is], [$19$], [$23$], [$15$], [$20$])

#mcq(28, [Find the sum of the first $20$ terms of $2, 5, 8, dots$], [$600$], [$620$], [$610$], [$305$])

#mcq(29, [The $5$th term of the G.P. $2, 6, 18, dots$ is], [$54$], [$486$], [$108$], [$162$])

#mcq(30, [Find the sum to infinity of $1 + 1/3 + 1/9 + dots$], [$2$], [$4/3$], [$3/2$], [$9/4$])

#mcq(31, [In an A.P. the $3$rd term is $10$ and the $7$th is $22$. The first term is], [$6$], [$4$], [$3$], [$7$])

#mcq(32, [Insert two geometric means between $3$ and $24$.], [$6$ and $12$], [$9$ and $15$], [$8$ and $16$], [$6$ and $18$])

#mcq(33, [If $a * b = a + b + a b$, find $2 * 3$.], [$6$], [$11$], [$5$], [$12$])

#mcq(34, [If $a * b = a + b - 4$, the identity element is], [$4$], [$0$], [$-4$], [$1$])

#mcq(35, [If $a * b = a + b + a b$, the inverse of $2$ under $*$ is], [$-2$], [$2/3$], [$-1/3$], [$-2/3$])

#mcq(36, [The determinant of $mat(3, 2; 1, 4)$ is], [$14$], [$2$], [$10$], [$12$])

#mcq(37, [If $A = mat(1, 2; 3, 4)$ and $B = mat(0, 1; 1, 0)$, find $A B$.], [$mat(0, 2; 3, 0)$], [$mat(1, 0; 0, 4)$], [$mat(2, 1; 4, 3)$], [$mat(3, 2; 7, 4)$])

#mcq(38, [The inverse of $mat(2, 1; 5, 3)$ is], [$mat(3, -1; -5, 2)$], [$mat(3, -1; 5, -2)$], [$mat(-3, 1; 5, -2)$], [$mat(2, -1; -5, 3)$])

#mcq(39, [Using matrices, solve $2x + y = 7$, $5x + 3y = 18$.], [$x = 1, y = 3$], [$x = 2, y = 2$], [$x = 3, y = -1$], [$x = 3, y = 1$])

#mcq(40, [The determinant of $mat(1, 2, 3; 0, 1, 4; 5, 6, 0)$ is], [$-1$], [$1$], [$0$], [$25$])

#pagebreak()

== Appendix F: Second Full Mock Examination — Answer Key

#answer-key-grid((
  "C", "B", "D", "A", "B", "D", "A", "C", "C", "A",
  "B", "D", "D", "C", "A", "B", "D", "B", "C", "A",
  "D", "A", "B", "C", "D", "B", "A", "C", "D", "C",
  "B", "A", "B", "A", "D", "C", "C", "A", "D", "B",
))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-green)[SCORE CONVERSION]
  #v(2pt)
  Each question is worth the same mark. Convert to a percentage by multiplying your
  score by 2.5. A UTME Mathematics paper of forty questions drawn from this volume
  would place 30/40 in the top band; 24/40 is the minimum for a competitive total.
]

== Appendix F: Second Full Mock Examination — Complete Solutions

#sol-item(1, "C")[
  Multiply by $3$: $3V = 4 pi r^3$. Divide by $4pi$: $r^3 = (3V)/(4pi)$. Cube root: $r = root(3, (3V)/(4pi))$. *Chapter 1.*
]

#sol-item(2, "B")[
  Cross-multiply: $y(x - 1) = 2x + 3$, so $y x - y = 2x + 3$. Collect: $x(y - 2) = y + 3$, hence $x = (y + 3)/(y - 2)$. *Chapter 1.*
]

#sol-item(3, "D")[
  Multiply by $2$: $2A = (a + b) h$. Divide by the bracket: $h = (2A)/(a + b)$. *Chapter 1.*
]

#sol-item(4, "A")[
  Square both sides: $T^2 = 4 pi^2 L/g$, so $L = g T^2/(4 pi^2)$. Substituting: $L = 10 times 16 pi^2/(4 pi^2) = 40$. *Chapter 1.*
]

#sol-item(5, "B")[
  By the remainder theorem the remainder is $P(-1) = -2 - 3 - 1 - 5 = -11$. *Chapter 2.*
]

#sol-item(6, "D")[
  A factor gives a zero remainder at $x = 1/2$: $1/4 - 5/4 + k/2 - 1 = 0$, so $k/2 = 2$ and $k = 4$. *Chapter 2.*
]

#sol-item(7, "A")[
  A difference of cubes: $x^3 - 8 = (x - 2)(x^2 + 2x + 4)$, so the quotient is $x^2 + 2x + 4$ with zero remainder. *Chapter 2.*
]

#sol-item(8, "C")[
  Set $P(2) = 0$: $8 + 4a - 8 + 4 = 0$, so $4a = -4$ and $a = -1$. *Chapter 2.*
]

#sol-item(9, "C")[
  $P(2) = 8 + 8 - 10 - 6 = 0$, so $(x - 2)$ is a factor. Division gives $x^2 + 4x + 3 = (x + 1)(x + 3)$. *Chapter 2.*
]

#sol-item(10, "A")[
  Split the middle term: $3x^2 - 6x + x - 2 = 3x(x - 2) + 1(x - 2)$, so $(3x + 1)(x - 2) = 0$. *Chapter 3.*
]

#sol-item(11, "B")[
  Sum $= -b/a = 7/2$; product $= c/a = 3/2$. The sign belongs to the sum only. *Chapter 3.*
]

#sol-item(12, "D")[
  Complete the square: $x^2 - 6x + 5 = (x - 3)^2 - 4$, which is least when $x = 3$, giving $-4$. *Chapter 3.*
]

#sol-item(13, "D")[
  Factor out $2$: $2(x^2 - 4x) + 5 = 2[(x - 2)^2 - 4] + 5 = 2(x - 2)^2 - 3$. *Chapter 3.*
]

#sol-item(14, "C")[
  Equal roots need $Delta = 0$: $(k + 2)^2 - 36 = 0$, so $k + 2 = plus.minus 6$, giving $k = 4$ or $k = -8$. The positive value is $4$. *Chapter 3.*
]

#sol-item(15, "A")[
  The $y$ coefficients are opposites, so add: $4x = 16$, $x = 4$. Then $12 + 2y = 12$, so $y = 0$. *Chapter 4.*
]

#sol-item(16, "B")[
  Add to eliminate $y$: $7x = 28$, $x = 4$. Then $20 - 3y = 11$, so $y = 3$. *Chapter 4.*
]

#sol-item(17, "D")[
  Both lines have gradient $2$ but different intercepts, so they are parallel and never meet. *Chapter 4.*
]

#sol-item(18, "B")[
  From the linear equation $y = 5 - x$, so $x^2 + (5 - x)^2 = 13$ gives $2x^2 - 10x + 12 = 0$, that is $x^2 - 5x + 6 = 0$. *Chapter 4.*
]

#sol-item(19, "C")[
  Collect: $-2x < 10$. Dividing by $-2$ reverses the sign: $x > -5$. *Chapter 5.*
]

#sol-item(20, "A")[
  $x^2 - x - 6 = (x - 3)(x + 2)$, roots $-2$ and $3$. The parabola opens upwards, so it is below the axis between the roots. *Chapter 5.*
]

#sol-item(21, "D")[
  The integers are $-2, -1, 0, 1, 2, 3, 4$ — seven in all, since $-3$ is excluded and $4$ is included. *Chapter 5.*
]

#sol-item(22, "A")[
  The modulus inequality becomes $-5 <= 2x - 3 <= 5$. Add $3$: $-2 <= 2x <= 8$; divide by $2$: $-1 <= x <= 4$. *Chapter 5.*
]

#sol-item(23, "B")[
  $y = k x$ with $k = 12/3 = 4$, so $y = 4 times 7 = 28$. *Chapter 6.*
]

#sol-item(24, "C")[
  $y = k/x^2$ with $k = 2 times 9 = 18$, so $y = 18/36 = 1/2$. *Chapter 6.*
]

#sol-item(25, "D")[
  $y = k x z/w$, so $6 = k(6)/4$ and $k = 4$. Then $y = 4(10)/8 = 5$. *Chapter 6.*
]

#sol-item(26, "B")[
  Write $y = k x + c$. Subtracting the two data pairs: $2k = 10$, so $k = 5$ and $c = 11 - 10 = 1$. Hence $y = 5(6) + 1 = 31$. *Chapter 6.*
]

#sol-item(27, "A")[
  $a = 3$, $d = 4$, so $T_5 = 3 + 4(4) = 19$. *Chapter 7.*
]

#sol-item(28, "C")[
  $S_20 = 20/2 [2(2) + 19(3)] = 10(4 + 57) = 10(61) = 610$. *Chapter 7.*
]

#sol-item(29, "D")[
  $T_5 = 2(3)^4 = 2(81) = 162$. *Chapter 7.*
]

#sol-item(30, "C")[
  $a = 1$, $r = 1/3$, so $S_infinity = 1/(1 - 1/3) = 3/2$. *Chapter 7.*
]

#sol-item(31, "B")[
  $T_7 - T_3 = 4d = 12$, so $d = 3$ and $a = 10 - 2(3) = 4$. *Chapter 7.*
]

#sol-item(32, "A")[
  With two means, $24 = 3 r^3$, so $r^3 = 8$ and $r = 2$; the terms are $3, 6, 12, 24$. *Chapter 7.*
]

#sol-item(33, "B")[
  Substitute: $2 + 3 + 2(3) = 11$. *Chapter 8.*
]

#sol-item(34, "A")[
  The identity satisfies $a * e = a$: $a + e - 4 = a$, so $e = 4$. *Chapter 8.*
]

#sol-item(35, "D")[
  The identity is $0$, so solve $2 + b + 2b = 0$, giving $3b = -2$ and $b = -2/3$. *Chapter 8.*
]

#sol-item(36, "C")[
  $det = 3(4) - 2(1) = 10$. *Chapter 9.*
]

#sol-item(37, "C")[
  Multiplying by $B$ interchanges the two columns of $A$, so $A B = mat(2, 1; 4, 3)$. *Chapter 9.*
]

#sol-item(38, "A")[
  $det = 6 - 5 = 1$, so the inverse is the cofactor form $mat(3, -1; -5, 2)$. *Chapter 9.*
]

#sol-item(39, "D")[
  The determinant is $6 - 5 = 1$, so Cramer's rule gives $x = (21 - 18)/1 = 3$ and $y = (36 - 35)/1 = 1$. *Chapter 9.*
]

#sol-item(40, "B")[
  Expand along the first row: $1(0 - 24) - 2(0 - 20) + 3(0 - 5) = -24 + 40 - 15 = 1$. *Chapter 9.*
]

