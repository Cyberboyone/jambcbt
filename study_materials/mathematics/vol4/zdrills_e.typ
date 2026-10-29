#import "template.typ": *

#current-chapter.update("Appendix E: Timed Drill 2 — Integration and Area")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: Timed Drill 2 — Integration and Area]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Timed Drill 2 — Integration and Area]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twenty-five questions on indefinite and definite integrals, areas under curves and motion. Twenty minutes. Watch the units: the definite integral is not an area until you know the sign.]
]

#v(5pt)

Assume $pi = 22/7$ unless a question says otherwise.

== E.1 Questions

#mcq(1, [Evaluate $lim_(x -> infinity) (2x^2 + 3x + 3)/(x^2 - 6x + 5)$.], [$frac(1, 2)$], [$3$], [$infinity$], [$2$])

#mcq(2, [Differentiate $y = (4x - 2)^3$.], [$12(4x - 2)^2$], [$3(4x - 2)^2$], [$4(4x - 2)^2$], [$12(4x - 2)^3$])

#mcq(3, [Find the maximum value of $y = -3x^2 + 24x - 1$.], [$-1$], [$47$], [$50$], [$-47$])

#mcq(4, [Evaluate $integral (2x - 5)^3 dif x$.], [$(2x - 5)^4/4 + c$], [$(2x - 5)^3/6 + c$], [$(2x - 5)^4/8 + c$], [$2(2x - 5)^4/4 + c$])

#mcq(5, [A particle has velocity $v = 2t^2 + 3t$ m/s. Find the distance travelled from $t = 0$ to $t = 2$ s.], [$frac(34, 3)$ m], [$14$ m], [$16$ m], [$frac(68, 3)$ m])

#mcq(6, [The ages of 40 students are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 8, 6, 10, 3, 6 respectively. Find the median class.], [$0 - 9$], [$10 - 19$], [$30 - 39$], [$20 - 29$])

#mcq(7, [Find the median of the numbers 12, 17, 19, 21, 36, 37.], [$21$], [$frac(71, 3)$], [$20$], [$19$])

#mcq(8, [A distribution has mean $20$ and standard deviation $4$. Find its coefficient of variation, as a percentage.], [$500.0$ percent], [$20.0$ percent], [$0.20$ percent], [$200$ percent])

#mcq(9, [How many distinct arrangements are there of the letters of the word MATHEMATICS?], [$39916800$], [$2494800$], [$9979200$], [$4989600$])

#mcq(10, [A bag contains $6$ red and $2$ blue balls. Two balls are drawn without replacement. Find the probability that both are red.], [$frac(15, 28)$], [$frac(9, 16)$], [$frac(3, 28)$], [$frac(3, 2)$])

#mcq(11, [Evaluate $lim_(x -> 5) (x^2 - 25)/(x - 5)$.], [$5$], [$25$], [$10$], [$0$])

#mcq(12, [Differentiate $y = (5x + 6)^4$.], [$4(5x + 6)^3$], [$20(5x + 6)^3$], [$5(5x + 6)^3$], [$20(5x + 6)^4$])

#mcq(13, [The curve $y = x^3 + 3x^2 - 24x$ has a stationary point at $x = 2$. Determine its nature.], [maximum], [point of inflexion], [neither], [minimum])

#mcq(14, [Find the area under $y = 3x^2$ between $x = 0$ and $x = 2$.], [$-8$ square units], [$8$ square units], [$12$ square units], [$16$ square units])

#mcq(15, [The velocity of a body is $v = 5t - 1$ m/s. Find its acceleration at $t = 3$ s.], [$5$ m/s²], [$14$ m/s²], [$frac(39, 2)$ m/s²], [$10$ m/s²])

#mcq(16, [A histogram has a class $20 - 25$ with frequency $10$. Find its frequency density.], [$50$], [$frac(1, 2)$], [$2$], [$15$])

#mcq(17, [Find the interquartile range of the numbers 4, 9, 10, 13, 15, 22, 29.], [$25$], [$13$], [$31$], [$4$])

#mcq(18, [Find the mean deviation of 9, 16, 19, 14, 15.], [$frac(73, 5)$], [$frac(124, 25)$], [$frac(62, 25)$], [$frac(73, 4)$])

#mcq(19, [How many diagonals has a polygon with $8$ sides?], [$20$], [$28$], [$40$], [$5$])

#mcq(20, [The probability that a student passes a test at the first attempt is $frac(3, 13)$. Find the probability of passing at least once in $2$ independent attempts.], [$frac(9, 169)$], [$frac(160, 169)$], [$frac(6, 13)$], [$frac(69, 169)$])

#mcq(21, [Evaluate $lim_(x -> 4) (3x^2 + 4x - 1)$.], [$31$], [$65$], [$27$], [$63$])

#mcq(22, [Find the second derivative of $y = 2x^3 - 6x^2 - 1$.], [$12x - 12$], [$6x - 12$], [$12x^2 - 12x$], [$12x - 6$])

#mcq(23, [The curve $y = x^3 + 9x^2 + 15x$ has a stationary point at $x = -1$. Determine its nature.], [maximum], [minimum], [point of inflexion], [neither])

#mcq(24, [Given $dif y / dif x = 6x + 4$ and $y = 17$ when $x = 2$, find $y$.], [$3x^2 + 4x$], [$6x^2 + 4x$], [$3x^2 + 4x - 3$], [$3x^2 + 4x + 17$])

#mcq(25, [A body starts with speed $7$ m/s and accelerates uniformly at $3$ m/s². Find the distance covered in $4$ s.], [$52$ m], [$28$ m], [$19$ m], [$24$ m])

#pagebreak()

== E.1 Answer Key

#answer-key-grid((
  "D", "A", "B", "C", "A", "D", "C", "B", "D", "A",
  "C", "B", "D", "B", "A", "C", "B", "C", "A", "D",
  "D", "A", "B", "C", "A",
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
    [*21–25*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*17–20*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–16*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== E.1 Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 1 #h(0pt) *Q2* #h(2pt) Ch 2 #h(0pt) *Q3* #h(2pt) Ch 3 #h(0pt) *Q4* #h(2pt) Ch 4 #h(0pt) *Q5* #h(2pt) Ch 5 #h(0pt) *Q6* #h(2pt) Ch 6 #h(0pt) *Q7* #h(2pt) Ch 7 #h(0pt) *Q8* #h(2pt) Ch 8 #h(0pt) *Q9* #h(2pt) Ch 9 #h(0pt) *Q10* #h(2pt) Ch 10 \
*Q11* #h(2pt) Ch 1 #h(0pt) *Q12* #h(2pt) Ch 2 #h(0pt) *Q13* #h(2pt) Ch 3 #h(0pt) *Q14* #h(2pt) Ch 4 #h(0pt) *Q15* #h(2pt) Ch 5 #h(0pt) *Q16* #h(2pt) Ch 6 #h(0pt) *Q17* #h(2pt) Ch 7 #h(0pt) *Q18* #h(2pt) Ch 8 #h(0pt) *Q19* #h(2pt) Ch 9 #h(0pt) *Q20* #h(2pt) Ch 10 \
*Q21* #h(2pt) Ch 1 #h(0pt) *Q22* #h(2pt) Ch 2 #h(0pt) *Q23* #h(2pt) Ch 3 #h(0pt) *Q24* #h(2pt) Ch 4 #h(0pt) *Q25* #h(2pt) Ch 5 \

== E.1 Complete Solutions

#sol-item(1, "D")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $2/1 = 2$. *Chapter 1.*
]

#sol-item(2, "A")[
  Bring the power down, reduce it by one, then multiply by the derivative of the bracket, which is $4$: $12(4x - 2)^2$. *Chapter 2.*
]

#sol-item(3, "B")[
  The maximum occurs where $dif y / dif x = -6x + 24 = 0$, that is at $x = 4$. There $y = 47$. *Chapter 3.*
]

#sol-item(4, "C")[
  Divide by the derivative of the bracket as well as by the new power: $(2x - 5)^4/(8) + c$. *Chapter 4.*
]

#sol-item(5, "A")[
  Distance $= integral_0^2 v dif t = frac(2, 3)t^3 + frac(3, 2)t^2$ evaluated at $2$, giving $frac(34, 3)$ m. *Chapter 5.*
]

#sol-item(6, "D")[
  The cumulative frequencies pass $33/2 = frac(33, 2)$ inside the class $20 - 29$, which is therefore the median class. *Chapter 6.*
]

#sol-item(7, "C")[
  With an even count the median is the mean of the middle two, $(19 + 21)/2 = 20$. *Chapter 7.*
]

#sol-item(8, "B")[
  Coefficient of variation $= "SD" div "mean" times 100 = (4 div 20) times 100 = 20.0$ percent. *Chapter 8.*
]

#sol-item(9, "D")[
  The word has $11$ letters with repeats: M $2$ times, A $2$ times, T $2$ times. Divide $11!$ by the factorial of each repeat, giving $4989600$. *Chapter 9.*
]

#sol-item(10, "A")[
  After one red has gone there are $5$ reds left in $7$ balls, so the probability is $6/8 times 5/7 = frac(15, 28)$. *Chapter 10.*
]

#sol-item(11, "C")[
  $x^2 - 25 = (x - 5)(x + 5)$. After cancelling, the expression is $x + 5$, which tends to $10$ as $x -> 5$. *Chapter 1.*
]

#sol-item(12, "B")[
  Bring the power down, reduce it by one, then multiply by the derivative of the bracket, which is $5$: $20(5x + 6)^3$. *Chapter 2.*
]

#sol-item(13, "D")[
  $y'' = 6x + 6$, which at $x = 2$ equals $18 > 0$. A positive second derivative means a minimum. *Chapter 3.*
]

#sol-item(14, "B")[
  $integral_0^2 3x^2 dif x = 1[2^3 - 0^3] = 8$ square units. *Chapter 4.*
]

#sol-item(15, "A")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 5$, which is constant. *Chapter 5.*
]

#sol-item(16, "C")[
  Frequency density $= 10 div 5 = 2$. Frequency density, not frequency, is what a histogram plots; it is frequency divided by class width. *Chapter 6.*
]

#sol-item(17, "B")[
  $Q_1$ occupies position $(7 + 1)/4 = 2$ and $Q_3$ position $3(7 + 1)/4 = 6$, so $Q_1 = 9$ and $Q_3 = 22$. The interquartile range is $22 - 9 = 13$. *Chapter 7.*
]

#sol-item(18, "C")[
  The mean is $frac(73, 5)$; the deviations average to $frac(62, 25)$ in magnitude. *Chapter 8.*
]

#sol-item(19, "A")[
  Joining pairs of vertices gives $attach(C, tl: 8, bl: 2) = 28$ segments, of which $8$ are sides, so there are $20$ diagonals. *Chapter 9.*
]

#sol-item(20, "D")[
  $P("at least one") = 1 - (1 - frac(3, 13))^2 = frac(69, 169)$. Multiply the failures, then subtract from $1$. *Chapter 10.*
]

#sol-item(21, "D")[
  Substitute $x = 4$: $3(4)^2 + 4(4) + (-1) = 63$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(22, "A")[
  $dif y / dif x = 6x^2 - 12x$, and differentiating again gives $y'' = 12x - 12$. *Chapter 2.*
]

#sol-item(23, "B")[
  $y'' = 6x + 18$, which at $x = -1$ equals $12 > 0$. A positive second derivative means a minimum. *Chapter 3.*
]

#sol-item(24, "C")[
  Integrating gives $y = 3x^2 + 4x + k$. Substituting $x = 2$, $y = 17$ gives $k = -3$, so $y = 3x^2 + 4x - 3$. *Chapter 4.*
]

#sol-item(25, "A")[
  $v = 7 + 3t$, and $integral_0^4 v dif t = 7t + 3/2t^2$ gives $52$ m after $4$ s. *Chapter 5.*
]

