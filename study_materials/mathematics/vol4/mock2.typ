#import "template.typ": *

#current-chapter.update("Mock Examination 2")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 2 — Second Full CBT Paper]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Second Full CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A second forty-question paper built from different items: same syllabus coverage, harder traps. Sit it a week after Mock 1.]
]

#v(5pt)

+ Forty questions, forty minutes, no negative marking.

+ Expect at least six questions that need two steps of reasoning — areas between curves, grouped quartiles, two-stage probability.

+ Mark against the key only after the full forty minutes have elapsed.

== Mock 2 — Questions

#mcq(1, [Evaluate $lim_(x -> infinity) (3x + 7)/(2x^2 + 4)$.], [$frac(3, 2)$], [$0$], [$3$], [does not exist])

#mcq(2, [Differentiate $y = (4x)/(x + 5)$.], [$frac(-20, (x + 5)^2)$], [$frac(20, x + 5)$], [$4$], [$frac(20, (x + 5)^2)$])

#mcq(3, [A particle has velocity $v = 4t^2 - 6t + 7$ m/s. Find its acceleration at $t = 1$ s.], [$2$ m/s²], [$5$ m/s²], [$-2$ m/s²], [$8$ m/s²])

#mcq(4, [Given $dif y / dif x = 8x$ and $y = 34$ when $x = 3$, find $y$.], [$4x^2$], [$8x^2$], [$4x^2 - 2$], [$4x^2 + 34$])

#mcq(5, [A particle has velocity $v = 3t^2 + 5t$ m/s. Find the distance travelled from $t = 0$ to $t = 1$ s.], [$8$ m], [$frac(29, 12)$ m], [$frac(7, 2)$ m], [$7$ m])

#mcq(6, [The marks of a class are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 8, 5, 10, 9, 4 respectively. Find the modal class.], [$0 - 9$], [$10 - 19$], [$30 - 39$], [$20 - 29$])

#mcq(7, [Find the median of the numbers 5, 10, 11, 13, 17, 20, 25, 31.], [$15$], [$17$], [$frac(33, 2)$], [$13$])

#mcq(8, [Find the mean deviation of 14, 7, 17, 18.], [$14$], [$frac(7, 2)$], [$7$], [$frac(56, 3)$])

#mcq(9, [How many distinct arrangements are there of the letters of the word ASSESSMENT?], [$3628800$], [$75600$], [$37800$], [$151200$])

#mcq(10, [A fair die is thrown once. Find the probability of obtaining a factor of $6$.], [$frac(1, 3)$], [$frac(4, 5)$], [$frac(2, 3)$], [$frac(5, 6)$])

#mcq(11, [Evaluate $lim_(x -> 3) (3x^2 - 5x - 5)$.], [$37$], [$17$], [$-11$], [$7$])

#mcq(12, [Differentiate $y = (5x - 4)/(x + 2)$.], [$frac(14, (x + 2)^2)$], [$frac(-14, (x + 2)^2)$], [$frac(14, x + 2)$], [$5$])

#mcq(13, [Use calculus to estimate the increase in $y = x^2$ when $x$ grows from $4$ to $4.02$.], [$frac(8, 25)$], [$8$], [$frac(4, 25)$], [$frac(1, 50)$])

#mcq(14, [Evaluate $integral (15x^2 - 8x - 1) dif x$.], [$5x^2 - 4x - 1 + c$], [$15x^2 - 4x - 1 + c$], [$5x^2 - 8x - 1 + c$], [$5x^3 - 4x^2 - x + c$])

#mcq(15, [A particle has velocity $v = t^2 + t$ m/s. Find the distance travelled from $t = 0$ to $t = 2$ s.], [$frac(14, 3)$ m], [$6$ m], [$frac(20, 3)$ m], [$frac(28, 3)$ m])

#mcq(16, [The marks of a class are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 7, 3, 3, 4, 5 respectively. Find the modal class.], [$10 - 19$], [$0 - 9$], [$20 - 29$], [$30 - 39$])

#mcq(17, [The mean of $16$ numbers is $17$. If $3$ is added to every number, what is the new mean?], [$51$], [$20$], [$17$], [$frac(272, 19)$])

#mcq(18, [Find the variance of 3, 2, 14, 13, 8.], [$frac(244, 5)$], [$8$], [$frac(122, 5)$], [$frac(442, 5)$])

#mcq(19, [A password consists of $9$ different letters chosen in order from an alphabet of $26$. In how many ways can it be formed?], [$1133836704000$], [$3124550$], [$5429503678976$], [$362880$])

#mcq(20, [A bag contains $5$ red and $5$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(2, 9)$], [$1$], [$frac(1, 20)$], [$frac(1, 4)$])

#mcq(21, [Evaluate $lim_(x -> infinity) (4x^2 - 3x + 3)/(x^2 - 2x + 5)$.], [$frac(1, 4)$], [$4$], [$5$], [$infinity$])

#mcq(22, [Differentiate $y = (4x - 5)(4x + 4)$.], [$32x - 4$], [$16x - 4$], [$8x - 1$], [$32x + 36$])

#mcq(23, [Find the maximum value of $y = -3x^2 - 6x + 7$.], [$7$], [$13$], [$-10$], [$10$])

#mcq(24, [Evaluate $integral (3x + 1)^3 dif x$.], [$(3x + 1)^4/4 + c$], [$(3x + 1)^3/9 + c$], [$(3x + 1)^4/12 + c$], [$(3x + 1)^4 + c$])

#mcq(25, [The velocity of a body is $v = 3t + 6$ m/s. Find its acceleration at $t = 2$ s.], [$12$ m/s²], [$3$ m/s²], [$18$ m/s²], [$6$ m/s²])

#mcq(26, [The marks of a class are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 6, 4, 3, 5, 4 respectively. Find the modal class.], [$10 - 19$], [$20 - 29$], [$0 - 9$], [$30 - 39$])

#mcq(27, [A student scored $72$ in a test weighted $3$ and $75$ in a test weighted $5$. Find the weighted mean score.], [$frac(147, 2)$], [$frac(591, 2)$], [$54$], [$frac(591, 8)$])

#mcq(28, [Find the mean deviation of 6, 5, 15, 17.], [$frac(21, 4)$], [$frac(43, 4)$], [$frac(21, 2)$], [$frac(43, 3)$])

#mcq(29, [How many 3-digit numbers can be formed from the digits $1$ to $7$ if no digit is repeated?], [$210$], [$343$], [$35$], [$42$])

#mcq(30, [Two fair dice are thrown. Find the probability that the sum of the scores is $9$.], [$frac(2, 3)$], [$frac(1, 36)$], [$frac(5, 36)$], [$frac(1, 9)$])

#mcq(31, [Evaluate $lim_(x -> 8) (x^2 - 64)/(x^2 - 14x + 48)$.], [$4$], [$8$], [$frac(8, 7)$], [$16$])

#mcq(32, [Differentiate $y = (3x + 6)^2$.], [$2(3x + 6)$], [$3(3x + 6)$], [$6(3x + 6)$], [$6(3x + 6)^2$])

#mcq(33, [Find the maximum value of $y = -2x^2 - 8x - 7$.], [$-7$], [$3$], [$1$], [$-1$])

#mcq(34, [Evaluate $integral (4x + 4)^2 dif x$.], [$(4x + 4)^3/3 + c$], [$(4x + 4)^3/12 + c$], [$(4x + 4)^2/8 + c$], [$4(4x + 4)^3/3 + c$])

#mcq(35, [The velocity of a body is $v = 5t - 1$ m/s. Find its acceleration at $t = 2$ s.], [$5$ m/s²], [$9$ m/s²], [$8$ m/s²], [$10$ m/s²])

#mcq(36, [The values 1, 2, 4, 8, 9 occur with frequencies 1, 3, 3, 7, 5 respectively. Find the mean.], [$frac(24, 5)$], [$24$], [$frac(19, 5)$], [$frac(120, 19)$])

#mcq(37, [Find the median of the numbers 11, 19, 21, 23, 26, 37, 38.], [$23$], [$25$], [$21$], [$38$])

#mcq(38, [Find the mean deviation of 16, 15, 16, 14.], [$frac(61, 4)$], [$frac(3, 2)$], [$frac(3, 4)$], [$frac(61, 3)$])

#mcq(39, [How many 2-digit numbers can be formed from the digits $1$ to $6$ if no digit is repeated?], [$36$], [$30$], [$15$], [$6$])

#mcq(40, [A bag contains $6$ red and $3$ blue balls. Two balls are drawn without replacement. Find the probability that one is red and one is blue.], [$frac(4, 9)$], [$frac(1, 4)$], [$1$], [$frac(1, 2)$])

#pagebreak()

== Mock 2 — Answer Key

#answer-key-grid((
  "B", "D", "A", "C", "C", "D", "A", "B", "B", "C",
  "D", "A", "C", "D", "A", "B", "B", "C", "A", "D",
  "B", "A", "D", "C", "B", "C", "D", "A", "A", "D",
  "B", "C", "C", "B", "A", "D", "A", "C", "B", "D",
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
    [*34–40*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*28–33*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–27*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== Mock 2 — Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 1 #h(0pt) *Q2* #h(2pt) Ch 2 #h(0pt) *Q3* #h(2pt) Ch 3 #h(0pt) *Q4* #h(2pt) Ch 4 #h(0pt) *Q5* #h(2pt) Ch 5 #h(0pt) *Q6* #h(2pt) Ch 6 #h(0pt) *Q7* #h(2pt) Ch 7 #h(0pt) *Q8* #h(2pt) Ch 8 #h(0pt) *Q9* #h(2pt) Ch 9 #h(0pt) *Q10* #h(2pt) Ch 10 \
*Q11* #h(2pt) Ch 1 #h(0pt) *Q12* #h(2pt) Ch 2 #h(0pt) *Q13* #h(2pt) Ch 3 #h(0pt) *Q14* #h(2pt) Ch 4 #h(0pt) *Q15* #h(2pt) Ch 5 #h(0pt) *Q16* #h(2pt) Ch 6 #h(0pt) *Q17* #h(2pt) Ch 7 #h(0pt) *Q18* #h(2pt) Ch 8 #h(0pt) *Q19* #h(2pt) Ch 9 #h(0pt) *Q20* #h(2pt) Ch 10 \
*Q21* #h(2pt) Ch 1 #h(0pt) *Q22* #h(2pt) Ch 2 #h(0pt) *Q23* #h(2pt) Ch 3 #h(0pt) *Q24* #h(2pt) Ch 4 #h(0pt) *Q25* #h(2pt) Ch 5 #h(0pt) *Q26* #h(2pt) Ch 6 #h(0pt) *Q27* #h(2pt) Ch 7 #h(0pt) *Q28* #h(2pt) Ch 8 #h(0pt) *Q29* #h(2pt) Ch 9 #h(0pt) *Q30* #h(2pt) Ch 10 \
*Q31* #h(2pt) Ch 1 #h(0pt) *Q32* #h(2pt) Ch 2 #h(0pt) *Q33* #h(2pt) Ch 3 #h(0pt) *Q34* #h(2pt) Ch 4 #h(0pt) *Q35* #h(2pt) Ch 5 #h(0pt) *Q36* #h(2pt) Ch 6 #h(0pt) *Q37* #h(2pt) Ch 7 #h(0pt) *Q38* #h(2pt) Ch 8 #h(0pt) *Q39* #h(2pt) Ch 9 #h(0pt) *Q40* #h(2pt) Ch 10 \

== Mock 2 — Complete Solutions

#sol-item(1, "B")[
  The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio shrinks towards $0$. *Chapter 1.*
]

#sol-item(2, "D")[
  Quotient rule: $((4)(x + 5) - (4x)(1))/(x + 5)^2 = 20/(x + 5)^2$. *Chapter 2.*
]

#sol-item(3, "A")[
  $a = dif v / dif t = 8t - 6$, so at $t = 1$ the acceleration is $2$ m/s². *Chapter 3.*
]

#sol-item(4, "C")[
  Integrating gives $y = 4x^2 + k$. Substituting $x = 3$, $y = 34$ gives $k = -2$, so $y = 4x^2 - 2$. *Chapter 4.*
]

#sol-item(5, "C")[
  Distance $= integral_0^1 v dif t = t^3 + frac(5, 2)t^2$ evaluated at $1$, giving $frac(7, 2)$ m. *Chapter 5.*
]

#sol-item(6, "D")[
  The modal class is the one with the highest frequency, $10$, so it is $20 - 29$. For grouped data a class is modal, not a single value. *Chapter 6.*
]

#sol-item(7, "A")[
  With an even count the median is the mean of the middle two, $(13 + 17)/2 = 15$. *Chapter 7.*
]

#sol-item(8, "B")[
  The mean is $14$; the deviations average to $frac(7, 2)$ in magnitude. *Chapter 8.*
]

#sol-item(9, "B")[
  The word has $10$ letters with repeats: S $4$ times, E $2$ times. Divide $10!$ by the factorial of each repeat, giving $75600$. *Chapter 9.*
]

#sol-item(10, "C")[
  There are $6$ equally likely outcomes and $4$ of them qualify, so the probability is $4/6 = frac(2, 3)$. *Chapter 10.*
]

#sol-item(11, "D")[
  Substitute $x = 3$: $3(3)^2 + (-5)(3) + (-5) = 7$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(12, "A")[
  Quotient rule: $((5)(x + 2) - (5x - 4)(1))/(x + 2)^2 = 14/(x + 2)^2$. *Chapter 2.*
]

#sol-item(13, "C")[
  $dif y = 2x dif x = 2(4)(0.02) = frac(4, 25)$, that is about 0.16. *Chapter 3.*
]

#sol-item(14, "D")[
  Integrate term by term: $5x^3 - 4x^2 - x + c$. *Chapter 4.*
]

#sol-item(15, "A")[
  Distance $= integral_0^2 v dif t = frac(1, 3)t^3 + frac(1, 2)t^2$ evaluated at $2$, giving $frac(14, 3)$ m. *Chapter 5.*
]

#sol-item(16, "B")[
  The modal class is the one with the highest frequency, $7$, so it is $0 - 9$. For grouped data a class is modal, not a single value. *Chapter 6.*
]

#sol-item(17, "B")[
  Adding a constant to every value adds the same constant to the mean: $17 + 3 = 20$. *Chapter 7.*
]

#sol-item(18, "C")[
  Mean $= 8$; the mean square deviation is $frac(122, 5)$. *Chapter 8.*
]

#sol-item(19, "A")[
  $attach(P, tl: 26, bl: 9) = 26 times 25 times 24 times 23 times 22 times 21 times 20 times 19 times 18 = 1133836704000$. *Chapter 9.*
]

#sol-item(20, "D")[
  With replacement the draws are independent, so multiply: $5/10 times 5/10 = frac(1, 4)$. *Chapter 10.*
]

#sol-item(21, "B")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $4/1 = 4$. *Chapter 1.*
]

#sol-item(22, "A")[
  Multiply out first: $y = 16x^2 - 4x - 20$, so $dif y / dif x = 32x - 4$. *Chapter 2.*
]

#sol-item(23, "D")[
  The maximum occurs where $dif y / dif x = -6x + -6 = 0$, that is at $x = -1$. There $y = 10$. *Chapter 3.*
]

#sol-item(24, "C")[
  Raise the power by one, divide by the new power and by $3$: $(3x + 1)^4/12 + c$. *Chapter 4.*
]

#sol-item(25, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(26, "C")[
  The modal class is the one with the highest frequency, $6$, so it is $0 - 9$. For grouped data a class is modal, not a single value. *Chapter 6.*
]

#sol-item(27, "D")[
  Weighted mean $= (3 times 72 + 5 times 75) div 8 = frac(591, 8)$. *Chapter 7.*
]

#sol-item(28, "A")[
  The mean is $frac(43, 4)$; the deviations average to $frac(21, 4)$ in magnitude. *Chapter 8.*
]

#sol-item(29, "A")[
  $attach(P, tl: 7, bl: 3) = 7 times 6 times 5 = 210$. *Chapter 9.*
]

#sol-item(30, "D")[
  There are $36$ equally likely pairs and $4$ of them sum to $9$, so the probability is $frac(4, 36) = frac(1, 9)$. *Chapter 10.*
]

#sol-item(31, "B")[
  Both quadratics factorise: $(x - 8)(x + 8)$ over $(x - 8)(x - 6)$. Cancelling leaves $(x + 8)/(x - 6)$, which tends to $16/2 = 8$. *Chapter 1.*
]

#sol-item(32, "C")[
  Bring the power down, reduce it by one, then multiply by the derivative of the bracket, which is $3$: $6(3x + 6)$. *Chapter 2.*
]

#sol-item(33, "C")[
  The maximum occurs where $dif y / dif x = -4x + -8 = 0$, that is at $x = -2$. There $y = 1$. *Chapter 3.*
]

#sol-item(34, "B")[
  Divide by the derivative of the bracket as well as by the new power: $(4x + 4)^3/(12) + c$. *Chapter 4.*
]

#sol-item(35, "A")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 5$, which is constant. *Chapter 5.*
]

#sol-item(36, "D")[
  $sum f x = 120$ and $sum f = 19$, so the mean is $frac(120, 19)$. *Chapter 6.*
]

#sol-item(37, "A")[
  With $7$ values the median is the $4$rd in order, which is $23$. *Chapter 7.*
]

#sol-item(38, "C")[
  The mean is $frac(61, 4)$; the deviations average to $frac(3, 4)$ in magnitude. *Chapter 8.*
]

#sol-item(39, "B")[
  $attach(P, tl: 6, bl: 2) = 6 times 5 = 30$. *Chapter 9.*
]

#sol-item(40, "D")[
  Two orders count: red then blue, and blue then red. Their probabilities are $6/9 times 3/8$ and $3/9 times 6/8$, and they add to $frac(1, 2)$. *Chapter 10.*
]

