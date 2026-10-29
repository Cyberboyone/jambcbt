#import "template.typ": *

#current-chapter.update("Appendix K: 200 Rapid-Fire Questions")
#pagebreak()

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[200 Rapid-Fire Questions]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Two hundred one-line questions, in syllabus order, each answerable in under twenty
    seconds once the rule is secure. Work in blocks of twenty, mark out of twenty, and
    return to any block below sixteen. Every answer has been computed, not estimated.
  ]
]

#v(6pt)

== How to Use the Bank

Work in blocks of twenty against a clock of eight minutes. Write only the answer — the
point of the bank is *recall speed*, not presentation. Mark immediately, then record the
block score in the table at the end. A block you finish in under five minutes with
eighteen or more correct is secure; anything less goes back into the error log.

#table(
  columns: (auto, 1fr, 1fr, auto),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Block],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Items],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Focus],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Target time],
  [1–20], [Formula evaluation and transposition], [4 items], [8 min],
  [21–44], [Polynomials: remainders and factors], [4 items], [8 min],
  [45–72], [Quadratics: discriminant, sum, product], [4 items], [8 min],
  [73–96], [Simultaneous equations], [2 items], [10 min],
  [97–116], [Inequalities], [1 items], [8 min],
  [117–136], [Variation], [1 items], [8 min],
  [137–160], [Progressions], [1 items], [8 min],
  [161–178], [Binary operations], [2 items], [6 min],
  [179–200], [Matrices and determinants], [3 items], [8 min],
)

#let rapid(n, q) = [
  #grid(
    columns: (auto, 1fr, auto),
    column-gutter: 6pt,
    align: (right + horizon, left + horizon, right + horizon),
    text(font: "DejaVu Sans", size: 8.2pt, fill: jamb-navy, weight: "bold")[#n],
    text(size: 8.8pt)[#q],
    text(font: "DejaVu Sans", size: 8pt, fill: jamb-border)["......"],
  )
]

== K.1 Questions

#block(width: 100%, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 10pt)[
  #set text(size: 9pt)
  #rapid(1, [Evaluate $f = (u v)/(u + v)$ when $u = 12$ and $v = 12$.])
  #rapid(2, [Evaluate $f = (u v)/(u + v)$ when $u = 6$ and $v = 6$.])
  #rapid(3, [Evaluate $f = (u v)/(u + v)$ when $u = 10$ and $v = 6$.])
  #rapid(4, [Evaluate $f = (u v)/(u + v)$ when $u = 6$ and $v = 12$.])
  #rapid(5, [Evaluate $f = (u v)/(u + v)$ when $u = 16$ and $v = 12$.])
  #rapid(6, [Evaluate $f = (u v)/(u + v)$ when $u = 4$ and $v = 6$.])
  #rapid(7, [If $y = 6x - 5$ and $y = 4$, find $x$.])
  #rapid(8, [If $y = 5x + 7$ and $y = -5$, find $x$.])
  #rapid(9, [If $y = 6x + 2$ and $y = 9$, find $x$.])
  #rapid(10, [If $y = 3x - 2$ and $y = -7$, find $x$.])
  #rapid(11, [If $y = 7x - 1$ and $y = -3$, find $x$.])
  #rapid(12, [If $t = sqrt(25x)$, find $t$ when $x = 5$.])
  #rapid(13, [If $t = sqrt(9x)$, find $t$ when $x = 3$.])
  #rapid(14, [If $t = sqrt(4x)$, find $t$ when $x = 2$.])
  #rapid(15, [If $t = sqrt(9x)$, find $t$ when $x = 4$.])
  #rapid(16, [If $t = sqrt(4x)$, find $t$ when $x = 3$.])
  #rapid(17, [Using $pi = 22/7$, evaluate $A = 4 pi r^2$ when $r = 4$.])
  #rapid(18, [Using $pi = 22/7$, evaluate $A = 4 pi r^2$ when $r = 4$.])
  #rapid(19, [Using $pi = 22/7$, evaluate $A = 4 pi r^2$ when $r = 2$.])
  #rapid(20, [Using $pi = 22/7$, evaluate $A = 4 pi r^2$ when $r = 4$.])
  #rapid(21, [Find the remainder when $x^3 + 3x^2 + 3x + 0$ is divided by $(x + 0)$.])
  #rapid(22, [Find the remainder when $x^3 - 4x^2 + 3x + 3$ is divided by $(x - 3)$.])
  #rapid(23, [Find the remainder when $x^3 - 4x^2 + 4x + 3$ is divided by $(x - 2)$.])
  #rapid(24, [Find the remainder when $x^3 + 0x^2 + 2x + 1$ is divided by $(x + 1)$.])
  #rapid(25, [Find the remainder when $x^3 - 2x^2 + 3x + 1$ is divided by $(x - 2)$.])
  #rapid(26, [Find the remainder when $x^3 + 0x^2 - 2x + 6$ is divided by $(x - 2)$.])
  #rapid(27, [Find the remainder when $x^3 + 1x^2 + 4x + 6$ is divided by $(x + 3)$.])
  #rapid(28, [Find the remainder when $x^3 + 1x^2 + 1x - 2$ is divided by $(x + 0)$.])
  #rapid(29, [Factorise $x^2 + 3x + 2$.])
  #rapid(30, [Factorise $x^2 + 5x + 4$.])
  #rapid(31, [Factorise $x^2 + 4x - 5$.])
  #rapid(32, [Factorise $x^2 + 5x + 6$.])
  #rapid(33, [Factorise $x^2 - 4x + 3$.])
  #rapid(34, [Factorise $x^2 + 0x - 25$.])
  #rapid(35, [Factorise $x^2 - 1x - 2$.])
  #rapid(36, [Factorise $x^2 + 6x + 8$.])
  #rapid(37, [If $(x - 3)$ is a factor of $x^3 + 1x^2 - 3x + c$, find $c$.])
  #rapid(38, [If $(x - 3)$ is a factor of $x^3 - 2x^2 - 3x + c$, find $c$.])
  #rapid(39, [If $(x - 3)$ is a factor of $x^3 + 4x^2 - 3x + c$, find $c$.])
  #rapid(40, [If $(x - 4)$ is a factor of $x^3 - 1x^2 - 3x + c$, find $c$.])
  #rapid(41, [If $(x - 4)$ is a factor of $x^3 + 4x^2 - 3x + c$, find $c$.])
  #rapid(42, [If $(x - 2)$ is a factor of $x^3 - 1x^2 - 3x + c$, find $c$.])
  #rapid(43, [If $(x - 4)$ is a factor of $x^3 + 1x^2 - 3x + c$, find $c$.])
  #rapid(44, [If $(x - 1)$ is a factor of $x^3 + 2x^2 - 3x + c$, find $c$.])
  #rapid(45, [Find the discriminant of $3x^2 - 7x - 4 = 0$.])
  #rapid(46, [Find the discriminant of $1x^2 - 9x - 3 = 0$.])
  #rapid(47, [Find the discriminant of $2x^2 - 7x - 7 = 0$.])
  #rapid(48, [Find the discriminant of $3x^2 + 8x + 4 = 0$.])
  #rapid(49, [Find the discriminant of $4x^2 - 7x + 0 = 0$.])
  #rapid(50, [Find the discriminant of $2x^2 - 5x + 3 = 0$.])
  #rapid(51, [Find the discriminant of $3x^2 + 8x + 0 = 0$.])
  #rapid(52, [Find the discriminant of $1x^2 + 2x - 9 = 0$.])
  #rapid(53, [Find the discriminant of $1x^2 + 6x - 2 = 0$.])
  #rapid(54, [For $3x^2 - 1x - 7 = 0$, find the sum of the roots.])
  #rapid(55, [For $1x^2 + 2x + 1 = 0$, find the sum of the roots.])
  #rapid(56, [For $1x^2 - 6x + 0 = 0$, find the sum of the roots.])
  #rapid(57, [For $2x^2 - 6x - 2 = 0$, find the sum of the roots.])
  #rapid(58, [For $1x^2 + 6x - 1 = 0$, find the sum of the roots.])
  #rapid(59, [For $3x^2 - 3x + 6 = 0$, find the sum of the roots.])
  #rapid(60, [For $3x^2 - 5x + 3 = 0$, find the sum of the roots.])
  #rapid(61, [For $3x^2 - 2x - 5 = 0$, find the sum of the roots.])
  #rapid(62, [For $3x^2 - 6x - 7 = 0$, find the sum of the roots.])
  #rapid(63, [For $2x^2 + 6x - 4 = 0$, find the product of the roots.])
  #rapid(64, [For $2x^2 + 7x - 7 = 0$, find the product of the roots.])
  #rapid(65, [For $1x^2 + 8x - 2 = 0$, find the product of the roots.])
  #rapid(66, [For $3x^2 + 1x + 0 = 0$, find the product of the roots.])
  #rapid(67, [For $3x^2 - 3x + 5 = 0$, find the product of the roots.])
  #rapid(68, [For $3x^2 - 2x - 3 = 0$, find the product of the roots.])
  #rapid(69, [For $1x^2 - 5x + 1 = 0$, find the product of the roots.])
  #rapid(70, [For $3x^2 + 7x - 7 = 0$, find the product of the roots.])
  #rapid(71, [For $3x^2 + 2x + 0 = 0$, find the product of the roots.])
  #rapid(72, [For $1x^2 - 8x - 3 = 0$, find the product of the roots.])
  #rapid(73, [Solve $1x - 5y = 28$ and $1x + 5y = -22$.])
  #rapid(74, [Solve $2x + 1y = 4$ and $3x - 5y = -33$.])
  #rapid(75, [Solve $1x + 1y = 2$ and $1x - 2y = 8$.])
  #rapid(76, [Solve $3x + 4y = -13$ and $1x - 4y = 17$.])
  #rapid(77, [Solve $1x + 2y = 7$ and $3x + 1y = -4$.])
  #rapid(78, [Solve $1x + 5y = -9$ and $5x - 4y = 42$.])
  #rapid(79, [Solve $5x - 4y = -1$ and $5x + 4y = -9$.])
  #rapid(80, [Solve $2x + 1y = 16$ and $2x + 2y = 22$.])
  #rapid(81, [Solve $1x + 5y = 33$ and $4x + 3y = 30$.])
  #rapid(82, [Solve $4x - 1y = 10$ and $5x - 3y = 16$.])
  #rapid(83, [Solve $3x + 4y = -19$ and $1x - 1y = 3$.])
  #rapid(84, [Solve $2x - 2y = -4$ and $3x - 4y = -9$.])
  #rapid(85, [Solve $5x - 5y = 10$ and $2x + 4y = 10$.])
  #rapid(86, [Solve $3x + 1y = 19$ and $2x - 3y = -2$.])
  #rapid(87, [Solve $3x + 1y = -8$ and $3x + 3y = 0$.])
  #rapid(88, [Solve $2x - 2y = 12$ and $4x + 4y = -8$.])
  #rapid(89, [Solve $4x - 2y = 20$ and $5x + 3y = 25$.])
  #rapid(90, [Solve $3x + 3y = 27$ and $2x - 3y = -12$.])
  #rapid(91, [Solve $4x + 5y = 13$ and $2x - 4y = -26$.])
  #rapid(92, [Solve $5x + 5y = 30$ and $1x + 5y = 18$.])
  #rapid(93, [Solve $4x - 2y = -24$ and $4x + 5y = 18$.])
  #rapid(94, [Solve $3x - 2y = -19$ and $5x - 4y = -35$.])
  #rapid(95, [Solve $5x - 4y = -10$ and $2x + 1y = -4$.])
  #rapid(96, [Solve $4x + 2y = 28$ and $2x - 2y = 2$.])
  #rapid(97, [Solve $4x < 2$.])
  #rapid(98, [Solve $5x < -2$.])
  #rapid(99, [Solve $6x < 0$.])
  #rapid(100, [Solve $5x < 1$.])
  #rapid(101, [Solve $5x < 4$.])
  #rapid(102, [Solve $4x < 1$.])
  #rapid(103, [Solve $3x < 0$.])
  #rapid(104, [Solve $4x < -3$.])
  #rapid(105, [Solve $2x < -6$.])
  #rapid(106, [Solve $4x < 4$.])
  #rapid(107, [Solve $x^2 - 6x + 5 < 0$.])
  #rapid(108, [Solve $x^2 - 9x + 18 < 0$.])
  #rapid(109, [Solve $x^2 + 3x - 4 < 0$.])
  #rapid(110, [Solve $x^2 - 3x - 18 < 0$.])
  #rapid(111, [Solve $x^2 - 10x + 24 < 0$.])
  #rapid(112, [Solve $x^2 - 4x + 3 < 0$.])
  #rapid(113, [Solve $x^2 + 2x + 0 < 0$.])
  #rapid(114, [Solve $x^2 - 2x - 8 < 0$.])
  #rapid(115, [Solve $x^2 - 2x + 0 < 0$.])
  #rapid(116, [Solve $x^2 - 3x + 2 < 0$.])
  #rapid(117, [$y$ varies directly as $x$ and $y = 16$ when $x = 4$. Find $y$ when $x = 3$.])
  #rapid(118, [$y$ varies directly as $x$ and $y = 40$ when $x = 5$. Find $y$ when $x = 6$.])
  #rapid(119, [$y$ varies directly as $x$ and $y = 14$ when $x = 2$. Find $y$ when $x = 2$.])
  #rapid(120, [$y$ varies directly as $x$ and $y = 6$ when $x = 3$. Find $y$ when $x = 4$.])
  #rapid(121, [$y$ varies directly as $x$ and $y = 21$ when $x = 3$. Find $y$ when $x = 4$.])
  #rapid(122, [$y$ varies directly as $x$ and $y = 12$ when $x = 2$. Find $y$ when $x = 6$.])
  #rapid(123, [$y$ varies directly as $x$ and $y = 21$ when $x = 3$. Find $y$ when $x = 4$.])
  #rapid(124, [$y$ varies directly as $x$ and $y = 10$ when $x = 5$. Find $y$ when $x = 6$.])
  #rapid(125, [$y$ varies directly as $x$ and $y = 28$ when $x = 4$. Find $y$ when $x = 2$.])
  #rapid(126, [$y$ varies directly as $x$ and $y = 15$ when $x = 5$. Find $y$ when $x = 2$.])
  #rapid(127, [$y$ varies inversely as $x$ and $y = 4$ when $x = 3$. Find $y$ when $x = 6$.])
  #rapid(128, [$y$ varies inversely as $x$ and $y = $2/5$$ when $x = 5$. Find $y$ when $x = 6$.])
  #rapid(129, [$y$ varies inversely as $x$ and $y = 3$ when $x = 2$. Find $y$ when $x = 6$.])
  #rapid(130, [$y$ varies inversely as $x$ and $y = $3/2$$ when $x = 2$. Find $y$ when $x = 4$.])
  #rapid(131, [$y$ varies inversely as $x$ and $y = $3/4$$ when $x = 4$. Find $y$ when $x = 6$.])
  #rapid(132, [$y$ varies inversely as $x$ and $y = $18/5$$ when $x = 5$. Find $y$ when $x = 2$.])
  #rapid(133, [$y$ varies inversely as $x$ and $y = 1$ when $x = 4$. Find $y$ when $x = 4$.])
  #rapid(134, [$y$ varies inversely as $x$ and $y = $8/5$$ when $x = 5$. Find $y$ when $x = 2$.])
  #rapid(135, [$y$ varies inversely as $x$ and $y = $4/5$$ when $x = 5$. Find $y$ when $x = 6$.])
  #rapid(136, [$y$ varies inversely as $x$ and $y = $6/5$$ when $x = 5$. Find $y$ when $x = 2$.])
  #rapid(137, [Find the $14$th term of the A.P. $5, 10, 15, dots$.])
  #rapid(138, [Find the $14$th term of the A.P. $5, 12, 19, dots$.])
  #rapid(139, [Find the $15$th term of the A.P. $3, 9, 15, dots$.])
  #rapid(140, [Find the $9$th term of the A.P. $2, 5, 8, dots$.])
  #rapid(141, [Find the $9$th term of the A.P. $3, 7, 11, dots$.])
  #rapid(142, [Find the $13$th term of the A.P. $6, 13, 20, dots$.])
  #rapid(143, [Find the $11$th term of the A.P. $4, 9, 14, dots$.])
  #rapid(144, [Find the $11$th term of the A.P. $3, 8, 13, dots$.])
  #rapid(145, [Find the sum of the first $19$ terms of $1, 5, 9, dots$.])
  #rapid(146, [Find the sum of the first $12$ terms of $3, 8, 13, dots$.])
  #rapid(147, [Find the sum of the first $18$ terms of $3, 5, 7, dots$.])
  #rapid(148, [Find the sum of the first $8$ terms of $3, 5, 7, dots$.])
  #rapid(149, [Find the sum of the first $19$ terms of $5, 10, 15, dots$.])
  #rapid(150, [Find the sum of the first $20$ terms of $1, 5, 9, dots$.])
  #rapid(151, [Find the sum of the first $13$ terms of $1, 6, 11, dots$.])
  #rapid(152, [Find the sum of the first $16$ terms of $3, 7, 11, dots$.])
  #rapid(153, [Find the $5$th term of the G.P. $4, 8, 16, dots$.])
  #rapid(154, [Find the $5$th term of the G.P. $3, 6, 12, dots$.])
  #rapid(155, [Find the $6$th term of the G.P. $3, 6, 12, dots$.])
  #rapid(156, [Find the $6$th term of the G.P. $3, 9, 27, dots$.])
  #rapid(157, [Find the $5$th term of the G.P. $3, 9, 27, dots$.])
  #rapid(158, [Find the $6$th term of the G.P. $1, 3, 9, dots$.])
  #rapid(159, [Find the $4$th term of the G.P. $1, 2, 4, dots$.])
  #rapid(160, [Find the $6$th term of the G.P. $1, 3, 9, dots$.])
  #rapid(161, [If $a * b = p q - p$, evaluate $3 * 2$.])
  #rapid(162, [If $a * b = 2p + q$, evaluate $1 * -1$.])
  #rapid(163, [If $a * b = 2p + q$, evaluate $3 * 0$.])
  #rapid(164, [If $a * b = 2p + q$, evaluate $3 * -2$.])
  #rapid(165, [If $a * b = p + q + p q$, evaluate $2 * 4$.])
  #rapid(166, [If $a * b = 2p + q$, evaluate $2 * -4$.])
  #rapid(167, [If $a * b = p q - p$, evaluate $2 * 0$.])
  #rapid(168, [If $a * b = p + q - p q$, evaluate $6 * 3$.])
  #rapid(169, [If $a * b = 2p + q$, evaluate $-1 * 6$.])
  #rapid(170, [If $a * b = a + b - 7$, find the identity element.])
  #rapid(171, [If $a * b = a + b - 2$, find the identity element.])
  #rapid(172, [If $a * b = a + b - 6$, find the identity element.])
  #rapid(173, [If $a * b = a + b - 8$, find the identity element.])
  #rapid(174, [If $a * b = a + b - 9$, find the identity element.])
  #rapid(175, [If $a * b = a + b - 7$, find the identity element.])
  #rapid(176, [If $a * b = a + b - 2$, find the identity element.])
  #rapid(177, [If $a * b = a + b - 9$, find the identity element.])
  #rapid(178, [If $a * b = a + b - 5$, find the identity element.])
  #rapid(179, [Evaluate $det mat(-1, 5; -4, 2)$.])
  #rapid(180, [Evaluate $det mat(2, -2; 6, 5)$.])
  #rapid(181, [Evaluate $det mat(-4, -3; 5, 3)$.])
  #rapid(182, [Evaluate $det mat(4, 3; 4, 3)$.])
  #rapid(183, [Evaluate $det mat(6, 6; 0, 5)$.])
  #rapid(184, [Evaluate $det mat(5, 3; -2, -2)$.])
  #rapid(185, [Evaluate $det mat(2, -1; -3, -4)$.])
  #rapid(186, [Evaluate $det mat(-1, -1; -4, 1)$.])
  #rapid(187, [Evaluate $det mat(3, -2; -1, -2)$.])
  #rapid(188, [Evaluate $det mat(-1, -2; 3, 1)$.])
  #rapid(189, [Find the determinant of the inverse of $mat(2, -2; 2, 2)$.])
  #rapid(190, [Find the determinant of the inverse of $mat(1, -2; 1, 4)$.])
  #rapid(191, [Find the determinant of the inverse of $mat(4, 0; -1, 3)$.])
  #rapid(192, [Find the determinant of the inverse of $mat(3, -1; -2, 2)$.])
  #rapid(193, [Find the determinant of the inverse of $mat(4, -3; 3, 4)$.])
  #rapid(194, [Find the determinant of the inverse of $mat(2, -3; -2, 2)$.])
  #rapid(195, [Find the determinant of the inverse of $mat(3, 0; -3, 3)$.])
  #rapid(196, [Find the determinant of the inverse of $mat(4, -3; 1, 1)$.])
  #rapid(197, [Find the determinant of the inverse of $mat(4, 3; 3, 1)$.])
  #rapid(198, [Find the determinant of the inverse of $mat(2, 2; 0, 1)$.])
  #rapid(199, [Find the determinant of the inverse of $mat(1, 2; -1, 2)$.])
  #rapid(200, [Find the determinant of the inverse of $mat(1, -3; 0, 3)$.])
]

== K.2 Answer Key

#block(width: 100%, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 10pt)[
  #grid(
    columns: (1fr,) * 5,
    column-gutter: 10pt,
    row-gutter: 3pt,
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[1. ] 6],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[2. ] 3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[3. ] $15/4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[4. ] 4],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[5. ] $48/7$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[6. ] $12/5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[7. ] $3/2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[8. ] $-12/5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[9. ] $7/6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[10. ] $-5/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[11. ] $-2/7$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[12. ] $11035/987$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[13. ] $1351/260$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[14. ] $2786/985$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[15. ] 6],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[16. ] $1351/390$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[17. ] $1408/7$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[18. ] $1408/7$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[19. ] $352/7$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[20. ] $1408/7$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[21. ] 0],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[22. ] 3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[23. ] 3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[24. ] -2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[25. ] 7],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[26. ] 10],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[27. ] -24],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[28. ] -2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[29. ] $(x - 2)(x - 1)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[30. ] $(x - 4)(x - 1)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[31. ] $(x + 1)(x - 5)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[32. ] $(x - 2)(x - 3)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[33. ] $(x + 1)(x + 3)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[34. ] $(x + 5)(x - 5)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[35. ] $(x - 1)(x + 2)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[36. ] $(x - 4)(x - 2)$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[37. ] -27],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[38. ] 0],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[39. ] -54],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[40. ] -36],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[41. ] -116],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[42. ] 2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[43. ] -68],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[44. ] 0],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[45. ] 97],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[46. ] 93],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[47. ] 105],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[48. ] 16],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[49. ] 49],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[50. ] 1],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[51. ] 64],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[52. ] 40],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[53. ] 44],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[54. ] $1/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[55. ] -2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[56. ] 6],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[57. ] 3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[58. ] -6],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[59. ] 1],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[60. ] $5/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[61. ] $2/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[62. ] 2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[63. ] -2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[64. ] $-7/2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[65. ] -2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[66. ] 0],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[67. ] $5/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[68. ] -1],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[69. ] 1],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[70. ] $-7/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[71. ] 0],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[72. ] -3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[73. ] $x = 3, y = -5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[74. ] $x = -1, y = 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[75. ] $x = 4, y = -2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[76. ] $x = 1, y = -4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[77. ] $x = -3, y = 5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[78. ] $x = 6, y = -3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[79. ] $x = -1, y = -1$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[80. ] $x = 5, y = 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[81. ] $x = 3, y = 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[82. ] $x = 2, y = -2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[83. ] $x = -1, y = -4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[84. ] $x = 1, y = 3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[85. ] $x = 3, y = 1$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[86. ] $x = 5, y = 4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[87. ] $x = -4, y = 4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[88. ] $x = 2, y = -4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[89. ] $x = 5, y = 0$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[90. ] $x = 3, y = 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[91. ] $x = -3, y = 5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[92. ] $x = 3, y = 3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[93. ] $x = -3, y = 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[94. ] $x = -3, y = 5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[95. ] $x = -2, y = 0$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[96. ] $x = 5, y = 4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[97. ] $x < $1/2$$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[98. ] $x < $-2/5$$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[99. ] $x < 0$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[100. ] $x < $1/5$$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[101. ] $x < $4/5$$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[102. ] $x < $1/4$$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[103. ] $x < 0$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[104. ] $x < $-3/4$$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[105. ] $x < -3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[106. ] $x < 1$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[107. ] $1 < x < 5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[108. ] $3 < x < 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[109. ] $-4 < x < 1$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[110. ] $-3 < x < 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[111. ] $4 < x < 6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[112. ] $1 < x < 3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[113. ] $-2 < x < 0$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[114. ] $-2 < x < 4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[115. ] $0 < x < 2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[116. ] $1 < x < 2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[117. ] 12],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[118. ] 48],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[119. ] 14],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[120. ] 8],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[121. ] 28],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[122. ] 36],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[123. ] 28],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[124. ] 12],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[125. ] 14],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[126. ] 6],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[127. ] 2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[128. ] $1/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[129. ] 1],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[130. ] $3/4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[131. ] $1/2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[132. ] 9],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[133. ] 1],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[134. ] 4],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[135. ] $2/3$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[136. ] 3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[137. ] 70],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[138. ] 96],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[139. ] 87],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[140. ] 26],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[141. ] 35],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[142. ] 90],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[143. ] 54],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[144. ] 53],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[145. ] 703],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[146. ] 366],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[147. ] 360],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[148. ] 80],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[149. ] 950],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[150. ] 780],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[151. ] 403],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[152. ] 528],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[153. ] 64],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[154. ] 48],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[155. ] 96],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[156. ] 729],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[157. ] 243],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[158. ] 243],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[159. ] 8],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[160. ] 243],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[161. ] 3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[162. ] 1],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[163. ] 6],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[164. ] 4],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[165. ] 14],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[166. ] 0],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[167. ] -2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[168. ] -9],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[169. ] 4],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[170. ] 7],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[171. ] 2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[172. ] 6],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[173. ] 8],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[174. ] 9],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[175. ] 7],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[176. ] 2],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[177. ] 9],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[178. ] 5],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[179. ] 18],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[180. ] 22],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[181. ] 3],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[182. ] 0],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[183. ] 30],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[184. ] -4],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[185. ] -11],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[186. ] -5],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[187. ] -8],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[188. ] 5],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[189. ] $1/8$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[190. ] $1/6$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[191. ] $1/12$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[192. ] $1/4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[193. ] $1/25$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[194. ] $-1/2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[195. ] $1/9$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[196. ] $1/7$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[197. ] $-1/5$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[198. ] $1/2$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[199. ] $1/4$],
    text(size: 8.4pt)[#text(fill: jamb-navy, weight: "bold")[200. ] $1/3$],
  )
]

#trap-box("The Twenty-Second Rule")[
  If an item in this bank takes more than twenty seconds, you are not recalling — you are
  re-deriving. Re-deriving is fine in the chapter, but it costs marks in the hall. Note the
  item number, return to the named chapter, and rebuild the rule until it is automatic.
]

== K.3 Block Score Record

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: 6pt,
  align: center,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  ..(range(1, 11).map(i => text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Block #i])),
  ..range(1, 11).map(i => [\ ]),
  ..range(1, 11).map(i => [\ ]),
)

