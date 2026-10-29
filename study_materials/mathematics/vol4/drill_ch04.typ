#import "template.typ": *

#current-chapter.update("Chapter 4: Integration — Drills")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 16pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[END-OF-CHAPTER DRILL]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Chapter 4 Practice Set]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: rgb("#CBD5E1"))[
    41 exam-standard questions on integration. Attempt every question
    before turning to the key, then read the solution for each mistake.
  ]
]

#v(4pt)

== 4.7 Chapter 4 Practice Drill — 41 Questions

Forty-two questions graded in the order the CBT engine is likely to meet them. Allow thirty-five minutes; the key and a full solution for every question follow.

#mcq(1, [Evaluate $integral (4x + 1)^4 dif x$.], [$(4x + 1)^5/5 + c$], [$(4x + 1)^4/16 + c$], [$(4x + 1)^5 + c$], [$(4x + 1)^5/20 + c$])

#mcq(2, [Evaluate $integral (4x + 1)^3 dif x$.], [$(4x + 1)^4/16 + c$], [$(4x + 1)^4/4 + c$], [$(4x + 1)^3/12 + c$], [$(4x + 1)^4 + c$])

#mcq(3, [Find the area under $y = 1x^2$ between $x = 1$ and $x = 3$.], [$-frac(26, 3)$ square units], [$frac(26, 3)$ square units], [$8$ square units], [$frac(52, 3)$ square units])

#mcq(4, [Given $dif y / dif x = 6x - 3$ and $y = 2$ when $x = 2$, find $y$.], [$3x^2 - 3x$], [$6x^2 - 3x$], [$3x^2 - 3x - 4$], [$3x^2 - 3x + 2$])

#mcq(5, [Evaluate $integral (9x^2 - 10x + 4) dif x$.], [$3x^2 - 5x + 4 + c$], [$9x^2 - 5x + 4 + c$], [$3x^3 - 5x^2 + 4x + c$], [$3x^2 - 10x + 4 + c$])

#mcq(6, [Given $dif y / dif x = 6x - 2$ and $y = 10$ when $x = 2$, find $y$.], [$3x^2 - 2x + 2$], [$3x^2 - 2x$], [$6x^2 - 2x$], [$3x^2 - 2x + 10$])

#mcq(7, [Given $dif y / dif x = 10x + 5$ and $y = 56$ when $x = 3$, find $y$.], [$5x^2 + 5x$], [$5x^2 + 5x - 4$], [$10x^2 + 5x$], [$5x^2 + 5x + 56$])

#mcq(8, [Evaluate $integral (5x + 1)^3 dif x$.], [$(5x + 1)^4/4 + c$], [$(5x + 1)^3/15 + c$], [$(5x + 1)^4 + c$], [$(5x + 1)^4/20 + c$])

#mcq(9, [Given $dif y / dif x = 8x - 3$ and $y = 13$ when $x = 2$, find $y$.], [$4x^2 - 3x$], [$8x^2 - 3x$], [$4x^2 - 3x + 3$], [$4x^2 - 3x + 13$])

#mcq(10, [Evaluate $integral 1/x^2 dif x$.], [$1/x + c$], [$-1/x + c$], [$-1/x$], [$-2/x^3 + c$])

#mcq(11, [Evaluate $integral_0^3 (3x^2) dif x$.], [$27$], [$-27$], [$frac(82, 3)$], [$frac(27, 2)$])

#mcq(12, [Find the area under $y = 3x^2$ between $x = 1$ and $x = 3$.], [$-26$ square units], [$24$ square units], [$52$ square units], [$26$ square units])

#mcq(13, [Evaluate $integral (2x + 4)^3 dif x$.], [$(2x + 4)^4/4 + c$], [$(2x + 4)^4/8 + c$], [$(2x + 4)^3/6 + c$], [$2(2x + 4)^4/4 + c$])

#mcq(14, [Find the area under $y = 3x^2$ between $x = 0$ and $x = 1$.], [$-1$ square units], [$3$ square units], [$2$ square units], [$1$ square units])

#mcq(15, [Evaluate $integral_0^3 (3x^2 + x) dif x$.], [$-frac(63, 2)$], [$frac(191, 6)$], [$frac(63, 2)$], [$frac(33, 2)$])

#mcq(16, [Evaluate $integral 6x^5 dif x$.], [$1x^6 + c$], [$6x^6 + c$], [$36x^6 + c$], [$1x^6$])

#mcq(17, [Evaluate $integral (9x^2 - 12x - 5) dif x$.], [$3x^3 - 6x^2 - 5x + c$], [$3x^2 - 6x - 5 + c$], [$9x^2 - 6x - 5 + c$], [$3x^2 - 12x - 5 + c$])

#mcq(18, [Evaluate $integral 4x^3 dif x$.], [$4x^4 + c$], [$16x^4 + c$], [$1x^4$], [$1x^4 + c$])

#mcq(19, [Evaluate $integral (12x^2 - 2x - 7) dif x$.], [$4x^2 - x - 7 + c$], [$12x^2 - x - 7 + c$], [$4x^3 - x^2 - 7x + c$], [$4x^2 - 2x - 7 + c$])

#mcq(20, [Given $dif y / dif x = 10x - 1$ and $y = 39$ when $x = 3$, find $y$.], [$5x^2 - x$], [$5x^2 - x - 3$], [$10x^2 - x$], [$5x^2 - x + 39$])

#mcq(21, [Evaluate $integral 3x^5 dif x$.], [$3x^6 + c$], [$frac(1, 2)x^6 + c$], [$18x^6 + c$], [$frac(1, 2)x^6$])

#mcq(22, [Find the area under $y = 1x^2$ between $x = 1$ and $x = 2$.], [$frac(7, 3)$ square units], [$-frac(7, 3)$ square units], [$3$ square units], [$frac(14, 3)$ square units])

#mcq(23, [Evaluate $integral_1^3 (2x^2) dif x$.], [$-frac(52, 3)$], [$frac(53, 3)$], [$frac(52, 3)$], [$9$])

#mcq(24, [Evaluate $integral 3x^2 dif x$.], [$3x^3 + c$], [$9x^3 + c$], [$1x^3$], [$1x^3 + c$])

#mcq(25, [Evaluate $integral_1^4 (x^2 - 3x) dif x$.], [$frac(3, 2)$], [$-frac(7, 6)$], [$-4$], [$-frac(3, 2)$])

#mcq(26, [Evaluate $integral (x + 2)^2 dif x$.], [$frac(x^3, 3) + 2x^2 + 4x + c$], [$frac((x + 2)^3, 3) + c$], [$frac(x^3, 3) + 2x^2 + c$], [$frac(x^3, 3) + 4x^2 + 4x + c$])

#mcq(27, [Evaluate $integral_1^4 (3x^2 + 3x) dif x$.], [$-frac(171, 2)$], [$frac(515, 6)$], [$frac(171, 2)$], [$36$])

#mcq(28, [Evaluate $integral (6x^2 - 4x) dif x$.], [$2x^2 - 2x + c$], [$2x^3 - 2x^2 + c$], [$6x^2 - 2x + c$], [$2x^2 - 4x + c$])

#mcq(29, [Evaluate $integral_1^4 (3x^2 - 2x) dif x$.], [$-48$], [$frac(145, 3)$], [$48$], [$16$])

#mcq(30, [Evaluate $integral (12x^2 + 8x - 7) dif x$.], [$4x^3 + 4x^2 - 7x + c$], [$4x^2 + 4x - 7 + c$], [$12x^2 + 4x - 7 + c$], [$4x^2 + 8x - 7 + c$])

#mcq(31, [Evaluate $integral_2^3 (2x^2) dif x$.], [$-frac(38, 3)$], [$13$], [$9$], [$frac(38, 3)$])

#mcq(32, [Evaluate $integral (4x + 4)^4 dif x$.], [$(4x + 4)^5/5 + c$], [$(4x + 4)^5/20 + c$], [$(4x + 4)^4/16 + c$], [$4(4x + 4)^5/5 + c$])

#mcq(33, [Find the area under $y = 2x^2$ between $x = 0$ and $x = 2$.], [$-frac(16, 3)$ square units], [$frac(16, 3)$ square units], [$8$ square units], [$frac(32, 3)$ square units])

#mcq(34, [Evaluate $integral (3x - 1)^3 dif x$.], [$(3x - 1)^4/12 + c$], [$(3x - 1)^4/4 + c$], [$(3x - 1)^3/9 + c$], [$3(3x - 1)^4/4 + c$])

#mcq(35, [Evaluate $integral (x + 3)^2 dif x$.], [$frac((x + 3)^3, 3) + c$], [$frac(x^3, 3) + 3x^2 + c$], [$frac(x^3, 3) + 3x^2 + 9x + c$], [$frac(x^3, 3) + 6x^2 + 9x + c$])

#mcq(36, [Evaluate $integral (2x + 1)^4 dif x$.], [$(2x + 1)^5/5 + c$], [$(2x + 1)^4/8 + c$], [$(2x + 1)^5 + c$], [$(2x + 1)^5/10 + c$])

#mcq(37, [Evaluate $integral (12x^2 - 10x - 5) dif x$.], [$4x^2 - 5x - 5 + c$], [$12x^2 - 5x - 5 + c$], [$4x^2 - 10x - 5 + c$], [$4x^3 - 5x^2 - 5x + c$])

#mcq(38, [Given $dif y / dif x = 10x + 5$ and $y = 11$ when $x = 1$, find $y$.], [$5x^2 + 5x$], [$5x^2 + 5x + 1$], [$10x^2 + 5x$], [$5x^2 + 5x + 11$])

#mcq(39, [Find the area under $y = 1x^2$ between $x = 0$ and $x = 1$.], [$-frac(1, 3)$ square units], [$1$ square units], [$frac(1, 3)$ square units], [$frac(2, 3)$ square units])

#mcq(40, [Evaluate $integral_2^3 (3x^2 - 4x) dif x$.], [$9$], [$-9$], [$frac(28, 3)$], [$frac(3, 2)$])

#mcq(41, [Given $dif y / dif x = 8x + 2$ and $y = 44$ when $x = 3$, find $y$.], [$4x^2 + 2x$], [$8x^2 + 2x$], [$4x^2 + 2x + 44$], [$4x^2 + 2x + 2$])

#pagebreak()

== 4.8 Quick Answer Key & Complete Solutions — Chapter 4

#answer-key-grid((
  "D", "A", "B", "C", "C", "A", "B", "D", "C", "B",
  "A", "D", "B", "D", "C", "A", "A", "D", "C", "B",
  "B", "A", "C", "D", "D", "A", "C", "B", "C", "A",
  "D", "B", "B", "A", "C", "D", "D", "B", "C", "A",
  "D",
))

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF — CHAPTER 4]
  #v(3pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–41*], [Secure. Move to the next chapter; return to this drill in one week for a timed re-run.],
    [*28–33*], [Developing. Re-read the two worked examples nearest each mistake, then redo only the questions you missed.],
    [*0–27*], [Revise. The solution lines name the chapter every time — reopen the section cited most often.],
  )
]

#sol-item(1, "D")[
  Raise the power by one, divide by the new power and by $4$: $(4x + 1)^5/20 + c$. *Chapter 4.*
]

#sol-item(2, "A")[
  Raise the power by one, divide by the new power and by $4$: $(4x + 1)^4/16 + c$. *Chapter 4.*
]

#sol-item(3, "B")[
  $integral_1^3 1x^2 dif x = 1/3[3^3 - 1^3] = frac(26, 3)$ square units. *Chapter 4.*
]

#sol-item(4, "C")[
  Integrating gives $y = 3x^2 - 3x + k$. Substituting $x = 2$, $y = 2$ gives $k = -4$, so $y = 3x^2 - 3x - 4$. *Chapter 4.*
]

#sol-item(5, "C")[
  Integrate term by term: $3x^3 - 5x^2 + 4x + c$. *Chapter 4.*
]

#sol-item(6, "A")[
  Integrating gives $y = 3x^2 - 2x + k$. Substituting $x = 2$, $y = 10$ gives $k = 2$, so $y = 3x^2 - 2x + 2$. *Chapter 4.*
]

#sol-item(7, "B")[
  Integrating gives $y = 5x^2 + 5x + k$. Substituting $x = 3$, $y = 56$ gives $k = -4$, so $y = 5x^2 + 5x - 4$. *Chapter 4.*
]

#sol-item(8, "D")[
  Raise the power by one, divide by the new power and by $5$: $(5x + 1)^4/20 + c$. *Chapter 4.*
]

#sol-item(9, "C")[
  Integrating gives $y = 4x^2 - 3x + k$. Substituting $x = 2$, $y = 13$ gives $k = 3$, so $y = 4x^2 - 3x + 3$. *Chapter 4.*
]

#sol-item(10, "B")[
  Write $1/x^2 = x^(-2)$; the antiderivative is $x^(-1)/(-1) = -1/x + c$. *Chapter 4.*
]

#sol-item(11, "A")[
  The antiderivative is $x^3$. Substituting $3$ and $0$ and subtracting gives $27$. *Chapter 4.*
]

#sol-item(12, "D")[
  $integral_1^3 3x^2 dif x = 1[3^3 - 1^3] = 26$ square units. *Chapter 4.*
]

#sol-item(13, "B")[
  Divide by the derivative of the bracket as well as by the new power: $(2x + 4)^4/(8) + c$. *Chapter 4.*
]

#sol-item(14, "D")[
  $integral_0^1 3x^2 dif x = 1[1^3 - 0^3] = 1$ square units. *Chapter 4.*
]

#sol-item(15, "C")[
  The antiderivative is $x^3 + frac(1, 2)x^2$. Substituting $3$ and $0$ and subtracting gives $frac(63, 2)$. *Chapter 4.*
]

#sol-item(16, "A")[
  Add one to the power and divide by the new power: $6x^6 div 6 = 1x^6 + c$. Never forget the constant. *Chapter 4.*
]

#sol-item(17, "A")[
  Integrate term by term: $3x^3 - 6x^2 - 5x + c$. *Chapter 4.*
]

#sol-item(18, "D")[
  Add one to the power and divide by the new power: $4x^4 div 4 = 1x^4 + c$. Never forget the constant. *Chapter 4.*
]

#sol-item(19, "C")[
  Integrate term by term: $4x^3 - x^2 - 7x + c$. *Chapter 4.*
]

#sol-item(20, "B")[
  Integrating gives $y = 5x^2 - x + k$. Substituting $x = 3$, $y = 39$ gives $k = -3$, so $y = 5x^2 - x - 3$. *Chapter 4.*
]

#sol-item(21, "B")[
  Add one to the power and divide by the new power: $3x^6 div 6 = frac(1, 2)x^6 + c$. Never forget the constant. *Chapter 4.*
]

#sol-item(22, "A")[
  $integral_1^2 1x^2 dif x = 1/3[2^3 - 1^3] = frac(7, 3)$ square units. *Chapter 4.*
]

#sol-item(23, "C")[
  The antiderivative is $frac(2, 3)x^3$. Substituting $3$ and $1$ and subtracting gives $frac(52, 3)$. *Chapter 4.*
]

#sol-item(24, "D")[
  Add one to the power and divide by the new power: $3x^3 div 3 = 1x^3 + c$. Never forget the constant. *Chapter 4.*
]

#sol-item(25, "D")[
  The antiderivative is $frac(1, 3)x^3 - frac(3, 2)x^2$. Substituting $4$ and $1$ and subtracting gives $-frac(3, 2)$. *Chapter 4.*
]

#sol-item(26, "A")[
  Expand first: $x^2 + 4x + 4$, then integrate to $x^3/3 + 2x^2 + 4x + c$. *Chapter 4.*
]

#sol-item(27, "C")[
  The antiderivative is $x^3 + frac(3, 2)x^2$. Substituting $4$ and $1$ and subtracting gives $frac(171, 2)$. *Chapter 4.*
]

#sol-item(28, "B")[
  Integrate term by term: $2x^3 - 2x^2 + c$. *Chapter 4.*
]

#sol-item(29, "C")[
  The antiderivative is $x^3 - x^2$. Substituting $4$ and $1$ and subtracting gives $48$. *Chapter 4.*
]

#sol-item(30, "A")[
  Integrate term by term: $4x^3 + 4x^2 - 7x + c$. *Chapter 4.*
]

#sol-item(31, "D")[
  The antiderivative is $frac(2, 3)x^3$. Substituting $3$ and $2$ and subtracting gives $frac(38, 3)$. *Chapter 4.*
]

#sol-item(32, "B")[
  Divide by the derivative of the bracket as well as by the new power: $(4x + 4)^5/(20) + c$. *Chapter 4.*
]

#sol-item(33, "B")[
  $integral_0^2 2x^2 dif x = 2/3[2^3 - 0^3] = frac(16, 3)$ square units. *Chapter 4.*
]

#sol-item(34, "A")[
  Divide by the derivative of the bracket as well as by the new power: $(3x - 1)^4/(12) + c$. *Chapter 4.*
]

#sol-item(35, "C")[
  Expand first: $x^2 + 6x + 9$, then integrate to $x^3/3 + 3x^2 + 9x + c$. *Chapter 4.*
]

#sol-item(36, "D")[
  Raise the power by one, divide by the new power and by $2$: $(2x + 1)^5/10 + c$. *Chapter 4.*
]

#sol-item(37, "D")[
  Integrate term by term: $4x^3 - 5x^2 - 5x + c$. *Chapter 4.*
]

#sol-item(38, "B")[
  Integrating gives $y = 5x^2 + 5x + k$. Substituting $x = 1$, $y = 11$ gives $k = 1$, so $y = 5x^2 + 5x + 1$. *Chapter 4.*
]

#sol-item(39, "C")[
  $integral_0^1 1x^2 dif x = 1/3[1^3 - 0^3] = frac(1, 3)$ square units. *Chapter 4.*
]

#sol-item(40, "A")[
  The antiderivative is $x^3 - 2x^2$. Substituting $3$ and $2$ and subtracting gives $9$. *Chapter 4.*
]

#sol-item(41, "D")[
  Integrating gives $y = 4x^2 + 2x + k$. Substituting $x = 3$, $y = 44$ gives $k = 2$, so $y = 4x^2 + 2x + 2$. *Chapter 4.*
]

