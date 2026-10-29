#import "template.typ": *

#current-chapter.update("Chapter 1: Limits — Drills")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 16pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[END-OF-CHAPTER DRILL]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Chapter 1 Practice Set]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: rgb("#CBD5E1"))[
    42 exam-standard questions on limits. Attempt every question
    before turning to the key, then read the solution for each mistake.
  ]
]

#v(4pt)

== 1.10 Chapter 1 Practice Drill — 42 Questions

Forty-two questions graded in the order the CBT engine is likely to meet them. Allow thirty-five minutes; the key and a full solution for every question follow.

#mcq(1, [Evaluate $lim_(x -> 0) (sin(5x))/x$.], [$1$], [$frac(1, 5)$], [$5$], [$0$])

#mcq(2, [Evaluate $lim_(x -> 3) (x^2 - 9)/(x - 3)$.], [$6$], [$3$], [$9$], [$0$])

#mcq(3, [Evaluate $lim_(x -> 0) (sqrt(x + 25) - 5)/x$.], [$frac(1, 5)$], [$frac(1, 10)$], [$frac(2, 5)$], [$frac(1, 50)$])

#mcq(4, [Evaluate $lim_(x -> infinity) (9x^2 + x + 3)/(3x^2 + 2x + 5)$.], [$frac(1, 3)$], [$4$], [$infinity$], [$3$])

#mcq(5, [Evaluate $lim_(x -> 0) (sin(3x))/x$.], [$1$], [$frac(1, 3)$], [$0$], [$3$])

#mcq(6, [Evaluate $lim_(x -> 6) (x^2 - 8x + 12)/(x - 6)$.], [$8$], [$-4$], [$4$], [$0$])

#mcq(7, [Evaluate $lim_(x -> 5) (x^2 - 7x + 10)/(x - 5)$.], [$7$], [$3$], [$-3$], [$0$])

#mcq(8, [Evaluate $lim_(x -> 6) (x^2 - 36)/(x - 6)$.], [$12$], [$6$], [$36$], [$0$])

#mcq(9, [Evaluate $lim_(x -> 2) (x^3 - 8)/(x - 2)$.], [$4$], [$12$], [$8$], [$6$])

#mcq(10, [Evaluate $lim_(x -> 0) (sqrt(x + 16) - 4)/x$.], [$frac(1, 4)$], [$frac(1, 2)$], [$frac(1, 32)$], [$frac(1, 8)$])

#mcq(11, [Evaluate $lim_(x -> 4) (x^2 - 16)/(x^2 - 5x + 4)$.], [$frac(8, 3)$], [$frac(4, 3)$], [$frac(8, 5)$], [$8$])

#mcq(12, [Evaluate $lim_(x -> 0) (sqrt(x + 4) - 2)/x$.], [$frac(1, 2)$], [$1$], [$frac(1, 4)$], [$frac(1, 8)$])

#mcq(13, [A function is defined by $f(x) = (x^2 - 9)/(x - 3)$ for $x != 3$, and $f(3) = k$. Find $k$ if $f$ is continuous at $x = 3$.], [$6$], [$3$], [$9$], [$0$])

#mcq(14, [Evaluate $lim_(x -> 4) (x^2 + 5x - 7)$.], [$-11$], [$43$], [$17$], [$29$])

#mcq(15, [Evaluate $lim_(x -> 4) (x^2 - 7x + 12)/(x - 4)$.], [$7$], [$1$], [$-1$], [$0$])

#mcq(16, [Evaluate $lim_(x -> -3) (3x^2 + 5x + 7)$.], [$49$], [$5$], [$19$], [$-17$])

#mcq(17, [Evaluate $lim_(x -> 9) (x^2 - 81)/(x - 9)$.], [$18$], [$9$], [$81$], [$0$])

#mcq(18, [Evaluate $lim_(x -> 0) (sin(4x))/x$.], [$1$], [$4$], [$frac(1, 4)$], [$0$])

#mcq(19, [Evaluate $lim_(x -> 0) (sqrt(x + 9) - 3)/x$.], [$frac(1, 3)$], [$frac(2, 3)$], [$frac(1, 18)$], [$frac(1, 6)$])

#mcq(20, [Evaluate $lim_(x -> infinity) (12x^2 + x + 3)/(2x^2 + 5x + 5)$.], [$frac(1, 6)$], [$7$], [$6$], [$infinity$])

#mcq(21, [Evaluate $lim_(x -> infinity) (6x^2 + 3)/(2x^2 + 5x + 5)$.], [$3$], [$frac(1, 3)$], [$4$], [$infinity$])

#mcq(22, [Evaluate $lim_(x -> 4) (x^3 - 64)/(x - 4)$.], [$16$], [$48$], [$64$], [$12$])

#mcq(23, [Evaluate $lim_(x -> infinity) (12x^2 - 2x + 3)/(3x^2 + 2x + 5)$.], [$frac(1, 4)$], [$5$], [$4$], [$infinity$])

#mcq(24, [Evaluate $lim_(x -> 0) (sin(2x))/x$.], [$1$], [$frac(1, 2)$], [$0$], [$2$])

#mcq(25, [A function is defined by $f(x) = (x^2 - 36)/(x - 6)$ for $x != 6$, and $f(6) = k$. Find $k$ if $f$ is continuous at $x = 6$.], [$6$], [$36$], [$0$], [$12$])

#mcq(26, [Evaluate $lim_(x -> 4) (3x^2 + 4x - 6)$.], [$58$], [$26$], [$70$], [$22$])

#mcq(27, [The function is $f(x) = abs(x - 2)/(x - 2)$ for $x != 2$. Find $lim_(x -> 2) f(x)$.], [$1$], [$-1$], [does not exist], [$0$])

#mcq(28, [Evaluate $lim_(x -> 8) (x^2 - 10x + 16)/(x - 8)$.], [$10$], [$6$], [$-6$], [$0$])

#mcq(29, [Evaluate $lim_(x -> 5) (x^2 - 25)/(x^2 - 8x + 15)$.], [$frac(5, 2)$], [$frac(5, 4)$], [$5$], [$10$])

#mcq(30, [Evaluate $lim_(x -> 6) (x^2 - 11x + 30)/(x - 6)$.], [$11$], [$1$], [$-1$], [$0$])

#mcq(31, [Evaluate $lim_(x -> -1) (x^2 + x - 6)$.], [$-6$], [$-4$], [$6$], [$-8$])

#mcq(32, [Evaluate $lim_(x -> 0) (sin(7x))/x$.], [$1$], [$frac(1, 7)$], [$0$], [$7$])

#mcq(33, [The function is $f(x) = abs(x - 3)/(x - 3)$ for $x != 3$. Find $lim_(x -> 3) f(x)$.], [$1$], [$-1$], [does not exist], [$0$])

#mcq(34, [The function is $f(x) = abs(x - 4)/(x - 4)$ for $x != 4$. Find $lim_(x -> 4) f(x)$.], [$1$], [$-1$], [$0$], [does not exist])

#mcq(35, [Evaluate $lim_(x -> 3) (2x^2 - 3x - 6)$.], [$3$], [$21$], [$15$], [$-9$])

#mcq(36, [Evaluate $lim_(x -> 9) (x^2 - 81)/(x^2 - 10x + 9)$.], [$frac(9, 8)$], [$frac(9, 4)$], [$frac(9, 5)$], [$18$])

#mcq(37, [Evaluate $lim_(x -> 8) (x^2 - 64)/(x^2 - 9x + 8)$.], [$frac(8, 7)$], [$frac(16, 7)$], [$frac(16, 9)$], [$16$])

#mcq(38, [Evaluate $lim_(x -> infinity) (12x^2 - 6x + 3)/(2x^2 - x + 5)$.], [$6$], [$frac(1, 6)$], [$7$], [$infinity$])

#mcq(39, [Evaluate $lim_(x -> 9) (x^2 - 81)/(x^2 - 16x + 63)$.], [$frac(9, 2)$], [$frac(9, 8)$], [$18$], [$9$])

#mcq(40, [Evaluate $lim_(x -> 7) (x^2 - 11x + 28)/(x - 7)$.], [$11$], [$-3$], [$3$], [$0$])

#mcq(41, [Evaluate $lim_(x -> 4) (x^2 - x + 1)$.], [$21$], [$11$], [$13$], [$1$])

#mcq(42, [Evaluate $lim_(x -> -2) (2x^2 + 5x + 7)$.], [$5$], [$25$], [$-9$], [$-7$])

#pagebreak()

== 1.11 Quick Answer Key & Complete Solutions — Chapter 1

#answer-key-grid((
  "C", "A", "B", "D", "D", "C", "B", "A", "B", "D",
  "A", "C", "A", "D", "B", "C", "A", "B", "D", "C",
  "A", "B", "C", "D", "D", "A", "C", "B", "C", "B",
  "A", "D", "C", "D", "A", "B", "B", "A", "D", "C",
  "C", "A",
))

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF — CHAPTER 1]
  #v(3pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*35–42*], [Secure. Move to the next chapter; return to this drill in one week for a timed re-run.],
    [*29–34*], [Developing. Re-read the two worked examples nearest each mistake, then redo only the questions you missed.],
    [*0–28*], [Revise. The solution lines name the chapter every time — reopen the section cited most often.],
  )
]

#sol-item(1, "C")[
  Write $sin(5x)/x = 5 times (sin 5x)/(5x)$. As $x -> 0$ the bracket tends to $1$, so the limit is $5$. *Chapter 1.*
]

#sol-item(2, "A")[
  $x^2 - 9 = (x - 3)(x + 3)$. After cancelling, the expression is $x + 3$, which tends to $6$ as $x -> 3$. *Chapter 1.*
]

#sol-item(3, "B")[
  Multiply above and below by $sqrt(x + 25) + 5$. The top becomes $x$, the bottom $5 + 5 = 10$, so the limit is $frac(1, 10)$. *Chapter 1.*
]

#sol-item(4, "D")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $9/3 = 3$. *Chapter 1.*
]

#sol-item(5, "D")[
  Write $sin(3x)/x = 3 times (sin 3x)/(3x)$. As $x -> 0$ the bracket tends to $1$, so the limit is $3$. *Chapter 1.*
]

#sol-item(6, "C")[
  The numerator factorises as $(x - 6)(x - 2)$. Cancelling leaves $x - 2$, which tends to $6 - 2 = 4$. *Chapter 1.*
]

#sol-item(7, "B")[
  The numerator factorises as $(x - 5)(x - 2)$. Cancelling leaves $x - 2$, which tends to $5 - 2 = 3$. *Chapter 1.*
]

#sol-item(8, "A")[
  $x^2 - 36 = (x - 6)(x + 6)$. After cancelling, the expression is $x + 6$, which tends to $12$ as $x -> 6$. *Chapter 1.*
]

#sol-item(9, "B")[
  $x^3 - 8 = (x - 2)(x^2 + 2x + 4)$. After cancelling, the expression tends to $4 + 4 + 4 = 12$. *Chapter 1.*
]

#sol-item(10, "D")[
  Multiply above and below by $sqrt(x + 16) + 4$. The top becomes $x$, the bottom $4 + 4 = 8$, so the limit is $frac(1, 8)$. *Chapter 1.*
]

#sol-item(11, "A")[
  Both quadratics factorise: $(x - 4)(x + 4)$ over $(x - 4)(x - 1)$. Cancelling leaves $(x + 4)/(x - 1)$, which tends to $8/3 = frac(8, 3)$. *Chapter 1.*
]

#sol-item(12, "C")[
  Multiply above and below by $sqrt(x + 4) + 2$. The top becomes $x$, the bottom $2 + 2 = 4$, so the limit is $frac(1, 4)$. *Chapter 1.*
]

#sol-item(13, "A")[
  Continuity needs $k = lim_(x -> 3) f(x)$. The difference of two squares cancels, leaving $x + 3$, which tends to $6$. *Chapter 1.*
]

#sol-item(14, "D")[
  Substitute $x = 4$: $1(4)^2 + 5(4) + (-7) = 29$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(15, "B")[
  The numerator factorises as $(x - 4)(x - 3)$. Cancelling leaves $x - 3$, which tends to $4 - 3 = 1$. *Chapter 1.*
]

#sol-item(16, "C")[
  Substitute $x = -3$: $3(-3)^2 + 5(-3) + 7 = 19$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(17, "A")[
  $x^2 - 81 = (x - 9)(x + 9)$. After cancelling, the expression is $x + 9$, which tends to $18$ as $x -> 9$. *Chapter 1.*
]

#sol-item(18, "B")[
  Write $sin(4x)/x = 4 times (sin 4x)/(4x)$. As $x -> 0$ the bracket tends to $1$, so the limit is $4$. *Chapter 1.*
]

#sol-item(19, "D")[
  Multiply above and below by $sqrt(x + 9) + 3$. The top becomes $x$, the bottom $3 + 3 = 6$, so the limit is $frac(1, 6)$. *Chapter 1.*
]

#sol-item(20, "C")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $12/2 = 6$. *Chapter 1.*
]

#sol-item(21, "A")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $6/2 = 3$. *Chapter 1.*
]

#sol-item(22, "B")[
  $x^3 - 64 = (x - 4)(x^2 + 4x + 16)$. After cancelling, the expression tends to $16 + 16 + 16 = 48$. *Chapter 1.*
]

#sol-item(23, "C")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $12/3 = 4$. *Chapter 1.*
]

#sol-item(24, "D")[
  Write $sin(2x)/x = 2 times (sin 2x)/(2x)$. As $x -> 0$ the bracket tends to $1$, so the limit is $2$. *Chapter 1.*
]

#sol-item(25, "D")[
  Continuity needs $k = lim_(x -> 6) f(x)$. The difference of two squares cancels, leaving $x + 6$, which tends to $12$. *Chapter 1.*
]

#sol-item(26, "A")[
  Substitute $x = 4$: $3(4)^2 + 4(4) + (-6) = 58$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(27, "C")[
  From the right the ratio is $+1$; from the left it is $-1$. The two one-sided limits differ, so the limit does not exist. *Chapter 1.*
]

#sol-item(28, "B")[
  The numerator factorises as $(x - 8)(x - 2)$. Cancelling leaves $x - 2$, which tends to $8 - 2 = 6$. *Chapter 1.*
]

#sol-item(29, "C")[
  Both quadratics factorise: $(x - 5)(x + 5)$ over $(x - 5)(x - 3)$. Cancelling leaves $(x + 5)/(x - 3)$, which tends to $10/2 = 5$. *Chapter 1.*
]

#sol-item(30, "B")[
  The numerator factorises as $(x - 6)(x - 5)$. Cancelling leaves $x - 5$, which tends to $6 - 5 = 1$. *Chapter 1.*
]

#sol-item(31, "A")[
  Substitute $x = -1$: $1(-1)^2 + 1(-1) + (-6) = -6$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(32, "D")[
  Write $sin(7x)/x = 7 times (sin 7x)/(7x)$. As $x -> 0$ the bracket tends to $1$, so the limit is $7$. *Chapter 1.*
]

#sol-item(33, "C")[
  From the right the ratio is $+1$; from the left it is $-1$. The two one-sided limits differ, so the limit does not exist. *Chapter 1.*
]

#sol-item(34, "D")[
  From the right the ratio is $+1$; from the left it is $-1$. The two one-sided limits differ, so the limit does not exist. *Chapter 1.*
]

#sol-item(35, "A")[
  Substitute $x = 3$: $2(3)^2 + (-3)(3) + (-6) = 3$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(36, "B")[
  Both quadratics factorise: $(x - 9)(x + 9)$ over $(x - 9)(x - 1)$. Cancelling leaves $(x + 9)/(x - 1)$, which tends to $18/8 = frac(9, 4)$. *Chapter 1.*
]

#sol-item(37, "B")[
  Both quadratics factorise: $(x - 8)(x + 8)$ over $(x - 8)(x - 1)$. Cancelling leaves $(x + 8)/(x - 1)$, which tends to $16/7 = frac(16, 7)$. *Chapter 1.*
]

#sol-item(38, "A")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $12/2 = 6$. *Chapter 1.*
]

#sol-item(39, "D")[
  Both quadratics factorise: $(x - 9)(x + 9)$ over $(x - 9)(x - 7)$. Cancelling leaves $(x + 9)/(x - 7)$, which tends to $18/2 = 9$. *Chapter 1.*
]

#sol-item(40, "C")[
  The numerator factorises as $(x - 7)(x - 4)$. Cancelling leaves $x - 4$, which tends to $7 - 4 = 3$. *Chapter 1.*
]

#sol-item(41, "C")[
  Substitute $x = 4$: $1(4)^2 + (-1)(4) + 1 = 13$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(42, "A")[
  Substitute $x = -2$: $2(-2)^2 + 5(-2) + 7 = 5$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

