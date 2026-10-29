#import "template.typ": *

#current-chapter.update("Appendix I: Mixed Revision Set")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Mixed Revision Set]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Mixed Revision Set]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twenty questions drawn from every chapter, in the shuffled order the CBT engine uses. Twenty minutes.]
]

#v(5pt)

If you cannot name the chapter a question comes from within ten seconds, that chapter is not yet secure.

== I.1 Questions

#mcq(1, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40, 41 - 50 with frequencies 4, 11, 8, 8, 7 respectively. How many values are at most $30$?], [$38$], [$8$], [$23$], [$19$])

#mcq(2, [Find the mean of the numbers 26, 21, 16, 27, 13.], [$103$], [$21$], [$frac(103, 6)$], [$frac(103, 5)$])

#mcq(3, [A set of $4$ numbers has mean $6$ and variance $3$. Find $sum x^2$.], [$156$], [$24$], [$12$], [$39$])

#mcq(4, [Evaluate $7! div 4!$.], [$1260$], [$210$], [$35$], [$4$])

#mcq(5, [A bag contains $4$ red and $3$ blue balls. Two balls are drawn without replacement. Find the probability that both are red.], [$frac(16, 49)$], [$frac(2, 21)$], [$frac(2, 7)$], [$frac(8, 7)$])

#mcq(6, [Evaluate $lim_(x -> infinity) (6x^2 - 4x + 3)/(3x^2 - x + 5)$.], [$frac(1, 2)$], [$3$], [$infinity$], [$2$])

#mcq(7, [Differentiate $y = 4/x^2$.], [$-4/x^3$], [$-8/x^3$], [$8/x^3$], [$-8/x^2$])

#mcq(8, [A particle has velocity $v = 4t^2 - 5t - 4$ m/s. Find its acceleration at $t = 2$ s.], [$11$ m/s²], [$2$ m/s²], [$3$ m/s²], [$8$ m/s²])

#mcq(9, [Evaluate $integral (9x^2 + 12x - 3) dif x$.], [$3x^2 + 6x - 3 + c$], [$3x^3 + 6x^2 - 3x + c$], [$9x^2 + 6x - 3 + c$], [$3x^2 + 12x - 3 + c$])

#mcq(10, [A particle has velocity $v = 3t^2 + 5t$ m/s. Find the distance travelled from $t = 0$ to $t = 3$ s.], [$frac(99, 2)$ m], [$42$ m], [$frac(423, 4)$ m], [$99$ m])

#mcq(11, [The values 1, 2, 4, 5, 7 occur with frequencies 6, 5, 6, 1, 2 respectively. Find the mean.], [$frac(19, 5)$], [$frac(59, 5)$], [$frac(59, 20)$], [$4$])

#mcq(12, [Find the median of the numbers 1, 6, 7, 9, 10, 14, 16, 38.], [$10$], [$frac(101, 8)$], [$9$], [$frac(19, 2)$])

#mcq(13, [A set of $4$ numbers has mean $11$ and variance $3$. Find $sum x^2$.], [$44$], [$12$], [$496$], [$124$])

#mcq(14, [In how many ways can a committee of $4$ be chosen from $8$ people?], [$70$], [$1680$], [$56$], [$32$])

#mcq(15, [The odds in favour of an event are $2 : 1$. Find the probability that the event occurs.], [$2$], [$frac(2, 3)$], [$frac(1, 3)$], [$frac(3, 2)$])

#mcq(16, [Evaluate $lim_(x -> infinity) (10x^2 + x + 3)/(2x^2 + x + 5)$.], [$frac(1, 5)$], [$6$], [$infinity$], [$5$])

#mcq(17, [Differentiate $y = (2x + 3)^5$.], [$10(2x + 3)^4$], [$5(2x + 3)^4$], [$2(2x + 3)^4$], [$10(2x + 3)^5$])

#mcq(18, [Find the maximum value of $y = -3x^2 - 12x$.], [$0$], [$15$], [$12$], [$-12$])

#mcq(19, [Evaluate $integral (6x^2 - 2x - 3) dif x$.], [$2x^2 - x - 3 + c$], [$6x^2 - x - 3 + c$], [$2x^2 - 2x - 3 + c$], [$2x^3 - x^2 - 3x + c$])

#mcq(20, [Find the area between $y = 2x$, the $x$-axis, $x = 0$ and $x = 4$.], [$8$ square units], [$16$ square units], [$frac(128, 3)$ square units], [$32$ square units])

#pagebreak()

== I.1 Answer Key

#answer-key-grid((
  "C", "D", "A", "B", "C", "D", "B", "A", "B", "A",
  "C", "D", "C", "A", "B", "D", "A", "C", "D", "B",
))

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READ YOUR SCORE]
  #v(3pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*17–20*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*14–16*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–13*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== I.1 Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 6 #h(0pt) *Q2* #h(2pt) Ch 7 #h(0pt) *Q3* #h(2pt) Ch 8 #h(0pt) *Q4* #h(2pt) Ch 9 #h(0pt) *Q5* #h(2pt) Ch 10 #h(0pt) *Q6* #h(2pt) Ch 1 #h(0pt) *Q7* #h(2pt) Ch 2 #h(0pt) *Q8* #h(2pt) Ch 3 #h(0pt) *Q9* #h(2pt) Ch 4 #h(0pt) *Q10* #h(2pt) Ch 5 \
*Q11* #h(2pt) Ch 6 #h(0pt) *Q12* #h(2pt) Ch 7 #h(0pt) *Q13* #h(2pt) Ch 8 #h(0pt) *Q14* #h(2pt) Ch 9 #h(0pt) *Q15* #h(2pt) Ch 10 #h(0pt) *Q16* #h(2pt) Ch 1 #h(0pt) *Q17* #h(2pt) Ch 2 #h(0pt) *Q18* #h(2pt) Ch 3 #h(0pt) *Q19* #h(2pt) Ch 4 #h(0pt) *Q20* #h(2pt) Ch 5 \

== I.1 Complete Solutions

#sol-item(1, "C")[
  The cumulative frequency up to $30$ is $4 + 11 + 8 = 23$. *Chapter 6.*
]

#sol-item(2, "D")[
  The sum is $103$ and there are $5$ numbers, so the mean is $frac(103, 5)$. *Chapter 7.*
]

#sol-item(3, "A")[
  $sum x^2 = n(overline(x)^2 + sigma^2) = 4(6^2 + 3) = 156$. *Chapter 8.*
]

#sol-item(4, "B")[
  The quotient cancels every factor up to $4$: $7 times 6 times 5 = 210$. *Chapter 9.*
]

#sol-item(5, "C")[
  After one red has gone there are $3$ reds left in $6$ balls, so the probability is $4/7 times 3/6 = frac(2, 7)$. *Chapter 10.*
]

#sol-item(6, "D")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $6/3 = 2$. *Chapter 1.*
]

#sol-item(7, "B")[
  Write $y = 4x^(-2)$, so $dif y / dif x = -8x^(-3) = -8/x^3$. *Chapter 2.*
]

#sol-item(8, "A")[
  $a = dif v / dif t = 8t - 5$, so at $t = 2$ the acceleration is $11$ m/s². *Chapter 3.*
]

#sol-item(9, "B")[
  Integrate term by term: $3x^3 + 6x^2 - 3x + c$. *Chapter 4.*
]

#sol-item(10, "A")[
  Distance $= integral_0^3 v dif t = t^3 + frac(5, 2)t^2$ evaluated at $3$, giving $frac(99, 2)$ m. *Chapter 5.*
]

#sol-item(11, "C")[
  $sum f x = 59$ and $sum f = 20$, so the mean is $frac(59, 20)$. *Chapter 6.*
]

#sol-item(12, "D")[
  With an even count the median is the mean of the middle two, $(9 + 10)/2 = frac(19, 2)$. *Chapter 7.*
]

#sol-item(13, "C")[
  $sum x^2 = n(overline(x)^2 + sigma^2) = 4(11^2 + 3) = 496$. *Chapter 8.*
]

#sol-item(14, "A")[
  The committee has no internal order, so divide the permutations by $4!$: $attach(C, tl: 8, bl: 4) = 1680/24 = 70$. *Chapter 9.*
]

#sol-item(15, "B")[
  Odds $a : b$ mean $2$ favourable outcomes against $1$ unfavourable, so $P = 2/(2 + 1) = frac(2, 3)$. *Chapter 10.*
]

#sol-item(16, "D")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $10/2 = 5$. *Chapter 1.*
]

#sol-item(17, "A")[
  Bring the power down, reduce it by one, then multiply by the derivative of the bracket, which is $2$: $10(2x + 3)^4$. *Chapter 2.*
]

#sol-item(18, "C")[
  The maximum occurs where $dif y / dif x = -6x + -12 = 0$, that is at $x = -2$. There $y = 12$. *Chapter 3.*
]

#sol-item(19, "D")[
  Integrate term by term: $2x^3 - x^2 - 3x + c$. *Chapter 4.*
]

#sol-item(20, "B")[
  $integral_0^4 2x dif x = 1x^2$ from $0$ to $4$, giving $16$ square units. *Chapter 5.*
]

