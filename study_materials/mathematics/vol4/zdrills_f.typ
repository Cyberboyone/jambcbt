#import "template.typ": *

#current-chapter.update("Appendix F: Timed Drill 3 — Data and Spread")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Timed Drill 3 — Data, Location and Dispersion]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Timed Drill 3 — Data, Location and Dispersion]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twenty questions on tables, charts, averages and spread. Sixteen minutes.]
]

#v(5pt)

Calculate the mean before the standard deviation, and never round before the last line.

== F.1 Questions

#mcq(1, [A data set takes the values 11, 17, 20, 21, 22, 24. Find its range.], [$24$], [$11$], [$13$], [$35$])

#mcq(2, [The values 3, 7, 9, 10, 13, 17, 22, 31, 34, 37 are in order. Estimate the $30$th percentile.], [$9$], [$10$], [$37$], [$3$])

#mcq(3, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 8, 5, 3, 8 respectively. Estimate the variance.], [$frac(22775, 72)$], [$frac(22775, 144)$], [$frac(241, 12)$], [$frac(22919, 144)$])

#mcq(4, [In how many ways can a committee of $3$ be chosen from $10$ people?], [$720$], [$210$], [$30$], [$120$])

#mcq(5, [A bag contains $3$ red and $5$ blue balls. Two balls are drawn without replacement. Find the probability that one is red and one is blue.], [$frac(15, 32)$], [$frac(15, 56)$], [$frac(15, 28)$], [$1$])

#mcq(6, [Evaluate $lim_(x -> infinity) (2x^2 - 2x + 3)/(x^2 + 2x + 5)$.], [$frac(1, 2)$], [$3$], [$infinity$], [$2$])

#mcq(7, [Differentiate $y = 6x^5$ with respect to $x$.], [$30x^4$], [$6x^4$], [$30x^5$], [$30x^6$])

#mcq(8, [Find the maximum value of $y = -3x^2 - 24x + 8$.], [$8$], [$56$], [$59$], [$-56$])

#mcq(9, [Evaluate $integral 4x^5 dif x$.], [$frac(2, 3)x^6 + c$], [$4x^6 + c$], [$24x^6 + c$], [$frac(2, 3)x^6$])

#mcq(10, [The velocity of a body is $v = 3t + 3$ m/s. Find its acceleration at $t = 3$ s.], [$12$ m/s²], [$frac(45, 2)$ m/s²], [$3$ m/s²], [$6$ m/s²])

#mcq(11, [A histogram has a class $20 - 40$ with frequency $30$. Find its frequency density.], [$600$], [$frac(3, 2)$], [$frac(2, 3)$], [$50$])

#mcq(12, [Find the median of the numbers 8, 9, 11, 13, 24, 34, 35, 37.], [$24$], [$frac(171, 8)$], [$13$], [$frac(37, 2)$])

#mcq(13, [Find the mean deviation of 17, 8, 15, 5.], [$frac(45, 4)$], [$frac(19, 2)$], [$frac(19, 4)$], [$15$])

#mcq(14, [A password consists of $8$ different letters chosen in order from an alphabet of $26$. In how many ways can it be formed?], [$62990928000$], [$1562275$], [$208827064576$], [$40320$])

#mcq(15, [$A$ and $B$ are independent events with $P(A) = 1/3$ and $P(B) = 1/4$. Find $P(A "and" B)$.], [$frac(1, 7)$], [$frac(7, 12)$], [$frac(1, 24)$], [$frac(1, 12)$])

#mcq(16, [Evaluate $lim_(x -> infinity) (12x^2 + 3)/(2x^2 - 6x + 5)$.], [$frac(1, 6)$], [$6$], [$7$], [$infinity$])

#mcq(17, [Differentiate $y = (3x + 4)/(x + 6)$.], [$frac(-14, (x + 6)^2)$], [$frac(14, (x + 6)^2)$], [$frac(14, x + 6)$], [$3$])

#mcq(18, [Find the maximum value of $y = -2x^2 + 8x - 1$.], [$7$], [$-1$], [$9$], [$-7$])

#mcq(19, [Evaluate $integral_2^3 (x^2 + 4x) dif x$.], [$-frac(49, 3)$], [$frac(50, 3)$], [$frac(33, 2)$], [$frac(49, 3)$])

#mcq(20, [A particle has velocity $v = 3t^2 + 2t$ m/s. Find the distance travelled from $t = 0$ to $t = 1$ s.], [$5$ m], [$frac(17, 12)$ m], [$2$ m], [$4$ m])

#pagebreak()

== F.1 Answer Key

#answer-key-grid((
  "C", "A", "B", "D", "C", "D", "A", "B", "A", "C",
  "B", "D", "C", "A", "D", "B", "B", "A", "D", "C",
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

== F.1 Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 6 #h(0pt) *Q2* #h(2pt) Ch 7 #h(0pt) *Q3* #h(2pt) Ch 8 #h(0pt) *Q4* #h(2pt) Ch 9 #h(0pt) *Q5* #h(2pt) Ch 10 #h(0pt) *Q6* #h(2pt) Ch 1 #h(0pt) *Q7* #h(2pt) Ch 2 #h(0pt) *Q8* #h(2pt) Ch 3 #h(0pt) *Q9* #h(2pt) Ch 4 #h(0pt) *Q10* #h(2pt) Ch 5 \
*Q11* #h(2pt) Ch 6 #h(0pt) *Q12* #h(2pt) Ch 7 #h(0pt) *Q13* #h(2pt) Ch 8 #h(0pt) *Q14* #h(2pt) Ch 9 #h(0pt) *Q15* #h(2pt) Ch 10 #h(0pt) *Q16* #h(2pt) Ch 1 #h(0pt) *Q17* #h(2pt) Ch 2 #h(0pt) *Q18* #h(2pt) Ch 3 #h(0pt) *Q19* #h(2pt) Ch 4 #h(0pt) *Q20* #h(2pt) Ch 5 \

== F.1 Complete Solutions

#sol-item(1, "C")[
  Range $= $ largest $-$ smallest $= 24 - 11 = 13$. *Chapter 6.*
]

#sol-item(2, "A")[
  The $30$th percentile sits at position $30 times 10 / 100 = 3$, so take the value $9$. *Chapter 7.*
]

#sol-item(3, "B")[
  Using the midpoints $5.5, 15.5, 25.5, 35.5$ the mean is $frac(241, 12)$; $sum f (x - overline(x))^2 = 22775/6$ over $24$ gives the variance $frac(22775, 144)$. *Chapter 8.*
]

#sol-item(4, "D")[
  The committee has no internal order, so divide the permutations by $3!$: $attach(C, tl: 10, bl: 3) = 720/6 = 120$. *Chapter 9.*
]

#sol-item(5, "C")[
  Two orders count: red then blue, and blue then red. Their probabilities are $3/8 times 5/7$ and $5/8 times 3/7$, and they add to $frac(15, 28)$. *Chapter 10.*
]

#sol-item(6, "D")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $2/1 = 2$. *Chapter 1.*
]

#sol-item(7, "A")[
  Multiply by the power and reduce it by one: $dif y / dif x = 6 times 5 x^4 = 30x^4$. *Chapter 2.*
]

#sol-item(8, "B")[
  The maximum occurs where $dif y / dif x = -6x + -24 = 0$, that is at $x = -4$. There $y = 56$. *Chapter 3.*
]

#sol-item(9, "A")[
  Add one to the power and divide by the new power: $4x^6 div 6 = frac(2, 3)x^6 + c$. Never forget the constant. *Chapter 4.*
]

#sol-item(10, "C")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(11, "B")[
  Frequency density $= 30 div 20 = frac(3, 2)$. Frequency density, not frequency, is what a histogram plots; it is frequency divided by class width. *Chapter 6.*
]

#sol-item(12, "D")[
  With an even count the median is the mean of the middle two, $(13 + 24)/2 = frac(37, 2)$. *Chapter 7.*
]

#sol-item(13, "C")[
  The mean is $frac(45, 4)$; the deviations average to $frac(19, 4)$ in magnitude. *Chapter 8.*
]

#sol-item(14, "A")[
  $attach(P, tl: 26, bl: 8) = 26 times 25 times 24 times 23 times 22 times 21 times 20 times 19 = 62990928000$. *Chapter 9.*
]

#sol-item(15, "D")[
  Independent events multiply: $1/3 times 1/4 = 1/12$. *Chapter 10.*
]

#sol-item(16, "B")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $12/2 = 6$. *Chapter 1.*
]

#sol-item(17, "B")[
  Quotient rule: $((3)(x + 6) - (3x + 4)(1))/(x + 6)^2 = 14/(x + 6)^2$. *Chapter 2.*
]

#sol-item(18, "A")[
  The maximum occurs where $dif y / dif x = -4x + 8 = 0$, that is at $x = 2$. There $y = 7$. *Chapter 3.*
]

#sol-item(19, "D")[
  The antiderivative is $frac(1, 3)x^3 + 2x^2$. Substituting $3$ and $2$ and subtracting gives $frac(49, 3)$. *Chapter 4.*
]

#sol-item(20, "C")[
  Distance $= integral_0^1 v dif t = t^3 + t^2$ evaluated at $1$, giving $2$ m. *Chapter 5.*
]

