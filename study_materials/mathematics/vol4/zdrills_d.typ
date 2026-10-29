#import "template.typ": *

#current-chapter.update("Appendix D: Timed Drill 1 — Calculus Core")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Timed Drill 1 — Limits, Differentiation and Applications]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Timed Drill 1 — Limits, Differentiation and Applications]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Thirty questions on limits, the rules of differentiation, tangents and turning points. Twenty-five minutes. Anything below 24/30 sends you back to Chapters 1–3.]
]

#v(5pt)

Time yourself honestly: fifty seconds a question.

== D.1 Questions

#mcq(1, [Evaluate $lim_(x -> 8) (x^2 - 14x + 48)/(x - 8)$.], [$2$], [$14$], [$-2$], [$0$])

#mcq(2, [Differentiate $y = (3x + 5)(x + 6)$.], [$3x + 23$], [$6x + 23$], [$4x + 11$], [$6x + 13$])

#mcq(3, [A particle has velocity $v = 4t^2 + 5t + 4$ m/s. Find its acceleration at $t = 3$ s.], [$55$ m/s²], [$17$ m/s²], [$8$ m/s²], [$29$ m/s²])

#mcq(4, [Evaluate $integral 2x^3 dif x$.], [$2x^4 + c$], [$8x^4 + c$], [$frac(1, 2)x^4 + c$], [$frac(1, 2)x^4$])

#mcq(5, [The velocity of a body is $v = 2t$ m/s. Find its acceleration at $t = 3$ s.], [$6$ m/s²], [$2$ m/s²], [$9$ m/s²], [$4$ m/s²])

#mcq(6, [The marks of a class are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 5, 8, 4, 2, 6 respectively. Find the modal class.], [$0 - 9$], [$20 - 29$], [$30 - 39$], [$10 - 19$])

#mcq(7, [Find the mean of the numbers 6, 12, 23, 18, 7, 9.], [$75$], [$12$], [$frac(25, 2)$], [$frac(75, 7)$])

#mcq(8, [Every value in a data set is multiplied by $2$. If the variance was $6$, what is the new variance?], [$24$], [$12$], [$6$], [$8$])

#mcq(9, [A committee of $3$ men and $2$ women is to be chosen from $5$ men and $6$ women. In how many ways can this be done?], [$25$], [$1800$], [$462$], [$150$])

#mcq(10, [A bag contains $7$ red and $2$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(7, 12)$], [$frac(14, 9)$], [$frac(49, 81)$], [$frac(7, 81)$])

#mcq(11, [Evaluate $lim_(x -> infinity) (6x + 6)/(3x^2 + 4)$.], [$0$], [$2$], [$6$], [does not exist])

#mcq(12, [Differentiate $y = 4x^3 - 4x^2 + 2x - 1$.], [$12x^3 - 8x^2 + 2x - 1$], [$12x^2 - 8x + 2$], [$4x^2 - 4x + 2$], [$12x^2 - 8x + 3$])

#mcq(13, [A particle has velocity $v = 3t^2 + 5t + 3$ m/s. Find its acceleration at $t = 2$ s.], [$25$ m/s²], [$11$ m/s²], [$6$ m/s²], [$17$ m/s²])

#mcq(14, [Evaluate $integral (4x - 2)^3 dif x$.], [$(4x - 2)^4/4 + c$], [$(4x - 2)^4/16 + c$], [$(4x - 2)^3/12 + c$], [$4(4x - 2)^4/4 + c$])

#mcq(15, [A particle has velocity $v = t^2 + 6t$ m/s. Find the distance travelled from $t = 0$ to $t = 1$ s.], [$frac(10, 3)$ m], [$7$ m], [$frac(9, 4)$ m], [$frac(20, 3)$ m])

#mcq(16, [The ages of 40 students are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 3, 4, 3, 3, 2 respectively. Find the median class.], [$0 - 9$], [$10 - 19$], [$20 - 29$], [$30 - 39$])

#mcq(17, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 2, 7, 9, 5 respectively. Estimate the mean.], [$frac(1053, 8)$], [$frac(1053, 46)$], [$frac(41, 2)$], [$frac(1099, 46)$])

#mcq(18, [Find the mean deviation of 14, 3, 15, 3, 4.], [$frac(39, 5)$], [$frac(268, 25)$], [$frac(39, 4)$], [$frac(134, 25)$])

#mcq(19, [In how many ways can $4$ different posts be filled from $6$ candidates, with no candidate holding two posts?], [$15$], [$1296$], [$360$], [$120$])

#mcq(20, [A bag contains $3$ red and $2$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(9, 25)$], [$frac(3, 10)$], [$frac(6, 5)$], [$frac(3, 25)$])

#mcq(21, [Evaluate $lim_(x -> infinity) (3x^2 - x + 3)/(x^2 + 5)$.], [$3$], [$frac(1, 3)$], [$4$], [$infinity$])

#mcq(22, [Differentiate $y = 4x^4$ with respect to $x$.], [$4x^3$], [$16x^3$], [$16x^4$], [$16x^5$])

#mcq(23, [The curve $y = x^3 + 9x^2 + 24x$ has a stationary point at $x = -2$. Determine its nature.], [maximum], [point of inflexion], [minimum], [neither])

#mcq(24, [Evaluate $integral (2x - 2)^2 dif x$.], [$(2x - 2)^3/3 + c$], [$(2x - 2)^2/4 + c$], [$2(2x - 2)^3/3 + c$], [$(2x - 2)^3/6 + c$])

#mcq(25, [The velocity of a body is $v = 2t - 5$ m/s. Find its acceleration at $t = 2$ s.], [$-1$ m/s²], [$2$ m/s²], [$-6$ m/s²], [$4$ m/s²])

#mcq(26, [The values 2, 4, 7, 11, 12, 14 occur with frequencies 3, 7, 7, 8, 8, 6 respectively. Find the mode.], [$2$], [$4$], [$7$], [$11$])

#mcq(27, [Find the mean of the numbers 4, 10, 18, 5, 25, 9.], [$frac(71, 6)$], [$71$], [$10$], [$frac(71, 7)$])

#mcq(28, [A set of $6$ numbers has mean $4$ and variance $3$. Find $sum x^2$.], [$24$], [$18$], [$114$], [$19$])

#mcq(29, [In how many ways can a committee of $4$ be chosen from $7$ people?], [$840$], [$35$], [$21$], [$28$])

#mcq(30, [The probability that a student passes a test at the first attempt is $frac(2, 7)$. Find the probability of passing at least once in $2$ independent attempts.], [$frac(24, 49)$], [$frac(4, 49)$], [$frac(45, 49)$], [$frac(4, 7)$])

#pagebreak()

== D.1 Answer Key

#answer-key-grid((
  "A", "B", "D", "C", "B", "D", "C", "A", "D", "C",
  "A", "B", "D", "B", "A", "C", "B", "D", "C", "A",
  "A", "B", "C", "D", "B", "D", "A", "C", "B", "A",
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
    [*25–30*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*21–24*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–20*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== D.1 Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 1 #h(0pt) *Q2* #h(2pt) Ch 2 #h(0pt) *Q3* #h(2pt) Ch 3 #h(0pt) *Q4* #h(2pt) Ch 4 #h(0pt) *Q5* #h(2pt) Ch 5 #h(0pt) *Q6* #h(2pt) Ch 6 #h(0pt) *Q7* #h(2pt) Ch 7 #h(0pt) *Q8* #h(2pt) Ch 8 #h(0pt) *Q9* #h(2pt) Ch 9 #h(0pt) *Q10* #h(2pt) Ch 10 \
*Q11* #h(2pt) Ch 1 #h(0pt) *Q12* #h(2pt) Ch 2 #h(0pt) *Q13* #h(2pt) Ch 3 #h(0pt) *Q14* #h(2pt) Ch 4 #h(0pt) *Q15* #h(2pt) Ch 5 #h(0pt) *Q16* #h(2pt) Ch 6 #h(0pt) *Q17* #h(2pt) Ch 7 #h(0pt) *Q18* #h(2pt) Ch 8 #h(0pt) *Q19* #h(2pt) Ch 9 #h(0pt) *Q20* #h(2pt) Ch 10 \
*Q21* #h(2pt) Ch 1 #h(0pt) *Q22* #h(2pt) Ch 2 #h(0pt) *Q23* #h(2pt) Ch 3 #h(0pt) *Q24* #h(2pt) Ch 4 #h(0pt) *Q25* #h(2pt) Ch 5 #h(0pt) *Q26* #h(2pt) Ch 6 #h(0pt) *Q27* #h(2pt) Ch 7 #h(0pt) *Q28* #h(2pt) Ch 8 #h(0pt) *Q29* #h(2pt) Ch 9 #h(0pt) *Q30* #h(2pt) Ch 10 \

== D.1 Complete Solutions

#sol-item(1, "A")[
  The numerator factorises as $(x - 8)(x - 6)$. Cancelling leaves $x - 6$, which tends to $8 - 6 = 2$. *Chapter 1.*
]

#sol-item(2, "B")[
  Multiply out first: $y = 3x^2 + 23x + 30$, so $dif y / dif x = 6x + 23$. *Chapter 2.*
]

#sol-item(3, "D")[
  $a = dif v / dif t = 8t + 5$, so at $t = 3$ the acceleration is $29$ m/s². *Chapter 3.*
]

#sol-item(4, "C")[
  Add one to the power and divide by the new power: $2x^4 div 4 = frac(1, 2)x^4 + c$. Never forget the constant. *Chapter 4.*
]

#sol-item(5, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 2$, which is constant. *Chapter 5.*
]

#sol-item(6, "D")[
  The modal class is the one with the highest frequency, $8$, so it is $10 - 19$. For grouped data a class is modal, not a single value. *Chapter 6.*
]

#sol-item(7, "C")[
  The sum is $75$ and there are $6$ numbers, so the mean is $frac(25, 2)$. *Chapter 7.*
]

#sol-item(8, "A")[
  Multiplying by $k$ multiplies the variance by $k^2$ and the standard deviation by $k$. Here the new variance is $6 times 4 = 24$. *Chapter 8.*
]

#sol-item(9, "D")[
  Choose the men and the women separately, then multiply: $attach(C, tl: 5, bl: 3) times attach(C, tl: 6, bl: 2) = 10 times 15 = 150$. *Chapter 9.*
]

#sol-item(10, "C")[
  With replacement the draws are independent, so multiply: $7/9 times 7/9 = frac(49, 81)$. *Chapter 10.*
]

#sol-item(11, "A")[
  The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio shrinks towards $0$. *Chapter 1.*
]

#sol-item(12, "B")[
  Bring each power down and reduce it: $12x^2 + -8x + 2$. A constant differentiates to zero. *Chapter 2.*
]

#sol-item(13, "D")[
  $a = dif v / dif t = 6t + 5$, so at $t = 2$ the acceleration is $17$ m/s². *Chapter 3.*
]

#sol-item(14, "B")[
  Divide by the derivative of the bracket as well as by the new power: $(4x - 2)^4/(16) + c$. *Chapter 4.*
]

#sol-item(15, "A")[
  Distance $= integral_0^1 v dif t = frac(1, 3)t^3 + 3t^2$ evaluated at $1$, giving $frac(10, 3)$ m. *Chapter 5.*
]

#sol-item(16, "C")[
  The cumulative frequencies pass $15/2 = frac(15, 2)$ inside the class $20 - 29$, which is therefore the median class. *Chapter 6.*
]

#sol-item(17, "B")[
  Use the midpoints $5.5, 15.5, 25.5, 35.5$: $sum f x = 1053/2$ over $sum f = 23$, giving $frac(1053, 46)$. *Chapter 7.*
]

#sol-item(18, "D")[
  The mean is $frac(39, 5)$; the deviations average to $frac(134, 25)$ in magnitude. *Chapter 8.*
]

#sol-item(19, "C")[
  The posts are distinct, so order matters: $attach(P, tl: 6, bl: 4) = 6 times 5 times 4 times 3 = 360$. *Chapter 9.*
]

#sol-item(20, "A")[
  With replacement the draws are independent, so multiply: $3/5 times 3/5 = frac(9, 25)$. *Chapter 10.*
]

#sol-item(21, "A")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $3/1 = 3$. *Chapter 1.*
]

#sol-item(22, "B")[
  Multiply by the power and reduce it by one: $dif y / dif x = 4 times 4 x^3 = 16x^3$. *Chapter 2.*
]

#sol-item(23, "C")[
  $y'' = 6x + 18$, which at $x = -2$ equals $6 > 0$. A positive second derivative means a minimum. *Chapter 3.*
]

#sol-item(24, "D")[
  Divide by the derivative of the bracket as well as by the new power: $(2x - 2)^3/(6) + c$. *Chapter 4.*
]

#sol-item(25, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 2$, which is constant. *Chapter 5.*
]

#sol-item(26, "D")[
  The mode is the value with the greatest frequency ($8$), which is $11$. *Chapter 6.*
]

#sol-item(27, "A")[
  The sum is $71$ and there are $6$ numbers, so the mean is $frac(71, 6)$. *Chapter 7.*
]

#sol-item(28, "C")[
  $sum x^2 = n(overline(x)^2 + sigma^2) = 6(4^2 + 3) = 114$. *Chapter 8.*
]

#sol-item(29, "B")[
  The committee has no internal order, so divide the permutations by $4!$: $attach(C, tl: 7, bl: 4) = 840/24 = 35$. *Chapter 9.*
]

#sol-item(30, "A")[
  $P("at least one") = 1 - (1 - frac(2, 7))^2 = frac(24, 49)$. Multiply the failures, then subtract from $1$. *Chapter 10.*
]

