#import "template.typ": *

#current-chapter.update("Mock Examination 1")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 1 — Full Sections IV & V CBT Paper]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 1]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full Sections IV & V CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the exact format and difficulty spread of the calculus and statistics block of a real UTME Mathematics paper.]
]

#v(5pt)

#grid(

  columns: (1fr, 1fr, 1fr, 1fr),

  column-gutter: 8pt,

  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],

  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],

  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],

  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],

)



+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.

+ If a question takes longer than ninety seconds, flag it and return in the final pass.

+ The CBT calculator is four-function only — no power, root or trigonometric keys.

+ Write your answers on rough paper, then mark yourself against the key.

== Mock 1 — Questions

#mcq(1, [Evaluate $lim_(x -> infinity) (5x + 7)/(3x^2 + 4)$.], [$frac(5, 3)$], [$5$], [does not exist], [$0$])

#mcq(2, [Find the gradient of $y = 2x^2 + 2x + 1$ at $x = 2$.], [$13$], [$8$], [$10$], [$6$])

#mcq(3, [Find the maximum value of $y = -x^2 - 4x - 1$.], [$-1$], [$3$], [$4$], [$-3$])

#mcq(4, [Given $dif y / dif x = 4x - 3$ and $y = -1$ when $x = 2$, find $y$.], [$2x^2 - 3x - 3$], [$2x^2 - 3x$], [$4x^2 - 3x$], [$2x^2 - 3x - 1$])

#mcq(5, [The velocity of a body is $v = 4t - 5$ m/s. Find its acceleration at $t = 2$ s.], [$3$ m/s²], [$-2$ m/s²], [$8$ m/s²], [$4$ m/s²])

#mcq(6, [The ages of 40 students are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 14, 7, 11, 3, 8 respectively. Find the median class.], [$0 - 9$], [$20 - 29$], [$10 - 19$], [$30 - 39$])

#mcq(7, [Find the interquartile range of the numbers 7, 15, 17, 23, 24, 25, 27.], [$20$], [$40$], [$10$], [$8$])

#mcq(8, [Find the variance of 6, 4, 2, 9, 10.], [$frac(224, 25)$], [$frac(448, 25)$], [$frac(31, 5)$], [$frac(237, 5)$])

#mcq(9, [A committee of $3$ men and $2$ women is to be chosen from $5$ men and $4$ women. In how many ways can this be done?], [$16$], [$720$], [$126$], [$60$])

#mcq(10, [The odds in favour of an event are $5 : 3$. Find the probability that the event occurs.], [$frac(5, 3)$], [$frac(5, 8)$], [$frac(3, 8)$], [$frac(8, 5)$])

#mcq(11, [Evaluate $lim_(x -> 5) (x^2 - 25)/(x^2 - 7x + 10)$.], [$frac(5, 3)$], [$frac(10, 7)$], [$frac(10, 3)$], [$10$])

#mcq(12, [Differentiate $y = (4x + 3)^2$.], [$8(4x + 3)$], [$2(4x + 3)$], [$4(4x + 3)$], [$8(4x + 3)^2$])

#mcq(13, [A rectangle has perimeter $28$ m. Find its largest possible area.], [$98$ m²], [$7$ m²], [$56$ m²], [$49$ m²])

#mcq(14, [Evaluate $integral_1^4 (2x^2 + 4x) dif x$.], [$72$], [$-72$], [$frac(217, 3)$], [$32$])

#mcq(15, [The velocity of a body is $v = 4t + 3$ m/s. Find its acceleration at $t = 2$ s.], [$11$ m/s²], [$4$ m/s²], [$14$ m/s²], [$8$ m/s²])

#mcq(16, [A data set takes the values 6, 10, 11, 12, 14, 18. Find its range.], [$18$], [$6$], [$12$], [$24$])

#mcq(17, [A student scored $67$ in a test weighted $5$ and $60$ in a test weighted $4$. Find the weighted mean score.], [$frac(127, 2)$], [$frac(575, 9)$], [$frac(575, 2)$], [$frac(201, 5)$])

#mcq(18, [Find the mean deviation of 14, 11, 13, 9, 3.], [$frac(16, 5)$], [$10$], [$frac(32, 5)$], [$frac(25, 2)$])

#mcq(19, [In how many ways can $5$ different books be arranged on a shelf?], [$24$], [$25$], [$120$], [$60$])

#mcq(20, [A bag contains $3$ red and $4$ blue balls. Two balls are drawn without replacement. Find the probability that one is red and one is blue.], [$frac(24, 49)$], [$frac(2, 7)$], [$1$], [$frac(4, 7)$])

#mcq(21, [Evaluate $lim_(x -> infinity) (18x^2 + x + 3)/(3x^2 + 6x + 5)$.], [$6$], [$frac(1, 6)$], [$7$], [$infinity$])

#mcq(22, [Differentiate $y = 5x^3 - 3x^2 + x + 1$.], [$15x^3 - 6x^2 + x + 1$], [$15x^2 - 6x + 1$], [$5x^2 - 3x + 1$], [$15x^2 - 6x + 2$])

#mcq(23, [A particle has velocity $v = 5t^2 + t + 7$ m/s. Find its acceleration at $t = 3$ s.], [$55$ m/s²], [$16$ m/s²], [$31$ m/s²], [$10$ m/s²])

#mcq(24, [Find the area under $y = 2x^2$ between $x = 1$ and $x = 3$.], [$-frac(52, 3)$ square units], [$16$ square units], [$frac(104, 3)$ square units], [$frac(52, 3)$ square units])

#mcq(25, [Find the area under $y = x^2 + 3$ from $x = 2$ to $x = 3$.], [$19$ square units], [$-frac(28, 3)$ square units], [$frac(28, 3)$ square units], [$frac(19, 3)$ square units])

#mcq(26, [In a pie chart of $180$ students, $22$ chose Physics. Find the angle of the Physics sector.], [$frac(11, 90)^degree$], [$88^degree$], [$316^degree$], [$44^degree$])

#mcq(27, [Find the mean of the numbers 21, 19, 15, 5, 2, 16.], [$13$], [$78$], [$16$], [$frac(78, 7)$])

#mcq(28, [A distribution has mean $28$ and standard deviation $6$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $28$, SD $11$], [mean $33$, SD $6$], [mean $33$, SD $11$], [mean $28$, SD $6$])

#mcq(29, [Evaluate $6! div 4!$.], [$60$], [$15$], [$30$], [$4$])

#mcq(30, [A bag contains $7$ red and $3$ blue balls. Two balls are drawn without replacement. Find the probability that both are red.], [$frac(7, 15)$], [$frac(49, 100)$], [$frac(7, 90)$], [$frac(7, 5)$])

#mcq(31, [Evaluate $lim_(x -> 7) (x^2 - 12x + 35)/(x - 7)$.], [$12$], [$-2$], [$0$], [$2$])

#mcq(32, [Differentiate $y = (x - 3)/(x + 1)$.], [$frac(-4, (x + 1)^2)$], [$frac(4, (x + 1)^2)$], [$frac(4, x + 1)$], [$1$])

#mcq(33, [Find the maximum value of $y = -3x^2 - 18x + 5$.], [$32$], [$5$], [$35$], [$-32$])

#mcq(34, [Evaluate $integral (4x - 3)^4 dif x$.], [$(4x - 3)^5/5 + c$], [$(4x - 3)^4/16 + c$], [$(4x - 3)^5/20 + c$], [$4(4x - 3)^5/5 + c$])

#mcq(35, [A particle has velocity $v = 2t^2 + 6t$ m/s. Find the distance travelled from $t = 0$ to $t = 1$ s.], [$8$ m], [$frac(5, 2)$ m], [$frac(22, 3)$ m], [$frac(11, 3)$ m])

#mcq(36, [The ages of 40 students are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 11, 9, 11, 10, 9 respectively. Find the median class.], [$0 - 9$], [$20 - 29$], [$10 - 19$], [$30 - 39$])

#mcq(37, [The mean of $5$ numbers is $frac(59, 5)$. 4 of them are 16, 9, 13, 13. Find the remaining one.], [$11$], [$51$], [$55$], [$8$])

#mcq(38, [Find the mean deviation of 19, 5, 3, 16, 13.], [$frac(56, 5)$], [$frac(144, 25)$], [$frac(288, 25)$], [$14$])

#mcq(39, [A committee of $3$ men and $2$ women is to be chosen from $7$ men and $5$ women. In how many ways can this be done?], [$350$], [$45$], [$4200$], [$792$])

#mcq(40, [A bag contains $5$ red and $3$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(5, 14)$], [$frac(5, 4)$], [$frac(25, 64)$], [$frac(5, 64)$])

#pagebreak()

== Mock 1 — Answer Key

#answer-key-grid((
  "D", "C", "B", "A", "D", "B", "C", "A", "D", "B",
  "C", "A", "D", "A", "B", "C", "B", "A", "C", "D",
  "A", "B", "C", "D", "C", "D", "A", "B", "C", "A",
  "D", "B", "A", "C", "D", "B", "D", "B", "A", "C",
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

== Mock 1 — Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 1 #h(0pt) *Q2* #h(2pt) Ch 2 #h(0pt) *Q3* #h(2pt) Ch 3 #h(0pt) *Q4* #h(2pt) Ch 4 #h(0pt) *Q5* #h(2pt) Ch 5 #h(0pt) *Q6* #h(2pt) Ch 6 #h(0pt) *Q7* #h(2pt) Ch 7 #h(0pt) *Q8* #h(2pt) Ch 8 #h(0pt) *Q9* #h(2pt) Ch 9 #h(0pt) *Q10* #h(2pt) Ch 10 \
*Q11* #h(2pt) Ch 1 #h(0pt) *Q12* #h(2pt) Ch 2 #h(0pt) *Q13* #h(2pt) Ch 3 #h(0pt) *Q14* #h(2pt) Ch 4 #h(0pt) *Q15* #h(2pt) Ch 5 #h(0pt) *Q16* #h(2pt) Ch 6 #h(0pt) *Q17* #h(2pt) Ch 7 #h(0pt) *Q18* #h(2pt) Ch 8 #h(0pt) *Q19* #h(2pt) Ch 9 #h(0pt) *Q20* #h(2pt) Ch 10 \
*Q21* #h(2pt) Ch 1 #h(0pt) *Q22* #h(2pt) Ch 2 #h(0pt) *Q23* #h(2pt) Ch 3 #h(0pt) *Q24* #h(2pt) Ch 4 #h(0pt) *Q25* #h(2pt) Ch 5 #h(0pt) *Q26* #h(2pt) Ch 6 #h(0pt) *Q27* #h(2pt) Ch 7 #h(0pt) *Q28* #h(2pt) Ch 8 #h(0pt) *Q29* #h(2pt) Ch 9 #h(0pt) *Q30* #h(2pt) Ch 10 \
*Q31* #h(2pt) Ch 1 #h(0pt) *Q32* #h(2pt) Ch 2 #h(0pt) *Q33* #h(2pt) Ch 3 #h(0pt) *Q34* #h(2pt) Ch 4 #h(0pt) *Q35* #h(2pt) Ch 5 #h(0pt) *Q36* #h(2pt) Ch 6 #h(0pt) *Q37* #h(2pt) Ch 7 #h(0pt) *Q38* #h(2pt) Ch 8 #h(0pt) *Q39* #h(2pt) Ch 9 #h(0pt) *Q40* #h(2pt) Ch 10 \

== Mock 1 — Complete Solutions

#sol-item(1, "D")[
  The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio shrinks towards $0$. *Chapter 1.*
]

#sol-item(2, "C")[
  $dif y / dif x = 4x + 2$, so at $x = 2$ the gradient is $4(2) + 2 = 10$. *Chapter 2.*
]

#sol-item(3, "B")[
  The maximum occurs where $dif y / dif x = -2x + -4 = 0$, that is at $x = -2$. There $y = 3$. *Chapter 3.*
]

#sol-item(4, "A")[
  Integrating gives $y = 2x^2 - 3x + k$. Substituting $x = 2$, $y = -1$ gives $k = -3$, so $y = 2x^2 - 3x - 3$. *Chapter 4.*
]

#sol-item(5, "D")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 4$, which is constant. *Chapter 5.*
]

#sol-item(6, "B")[
  The cumulative frequencies pass $43/2 = frac(43, 2)$ inside the class $20 - 29$, which is therefore the median class. *Chapter 6.*
]

#sol-item(7, "C")[
  $Q_1$ occupies position $(7 + 1)/4 = 2$ and $Q_3$ position $3(7 + 1)/4 = 6$, so $Q_1 = 15$ and $Q_3 = 25$. The interquartile range is $25 - 15 = 10$. *Chapter 7.*
]

#sol-item(8, "A")[
  Mean $= frac(31, 5)$; the mean square deviation is $frac(224, 25)$. *Chapter 8.*
]

#sol-item(9, "D")[
  Choose the men and the women separately, then multiply: $attach(C, tl: 5, bl: 3) times attach(C, tl: 4, bl: 2) = 10 times 6 = 60$. *Chapter 9.*
]

#sol-item(10, "B")[
  Odds $a : b$ mean $5$ favourable outcomes against $3$ unfavourable, so $P = 5/(5 + 3) = frac(5, 8)$. *Chapter 10.*
]

#sol-item(11, "C")[
  Both quadratics factorise: $(x - 5)(x + 5)$ over $(x - 5)(x - 2)$. Cancelling leaves $(x + 5)/(x - 2)$, which tends to $10/3 = frac(10, 3)$. *Chapter 1.*
]

#sol-item(12, "A")[
  Bring the power down, reduce it by one, then multiply by the derivative of the bracket, which is $4$: $8(4x + 3)$. *Chapter 2.*
]

#sol-item(13, "D")[
  With sides $x$ and $14 - x$, the area $14x - x^2$ is greatest at $x = 7$, giving $49$ m². *Chapter 3.*
]

#sol-item(14, "A")[
  The antiderivative is $frac(2, 3)x^3 + 2x^2$. Substituting $4$ and $1$ and subtracting gives $72$. *Chapter 4.*
]

#sol-item(15, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 4$, which is constant. *Chapter 5.*
]

#sol-item(16, "C")[
  Range $= $ largest $-$ smallest $= 18 - 6 = 12$. *Chapter 6.*
]

#sol-item(17, "B")[
  Weighted mean $= (5 times 67 + 4 times 60) div 9 = frac(575, 9)$. *Chapter 7.*
]

#sol-item(18, "A")[
  The mean is $10$; the deviations average to $frac(16, 5)$ in magnitude. *Chapter 8.*
]

#sol-item(19, "C")[
  Any of the $5$ can go first, then any of the rest, and so on: $5! = 120$. *Chapter 9.*
]

#sol-item(20, "D")[
  Two orders count: red then blue, and blue then red. Their probabilities are $3/7 times 4/6$ and $4/7 times 3/6$, and they add to $frac(4, 7)$. *Chapter 10.*
]

#sol-item(21, "A")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $18/3 = 6$. *Chapter 1.*
]

#sol-item(22, "B")[
  Bring each power down and reduce it: $15x^2 + -6x + 1$. A constant differentiates to zero. *Chapter 2.*
]

#sol-item(23, "C")[
  $a = dif v / dif t = 10t + 1$, so at $t = 3$ the acceleration is $31$ m/s². *Chapter 3.*
]

#sol-item(24, "D")[
  $integral_1^3 2x^2 dif x = 2/3[3^3 - 1^3] = frac(52, 3)$ square units. *Chapter 4.*
]

#sol-item(25, "C")[
  $integral_2^3 (x^2 + 3) dif x = [x^3/3 + 3x]$. Substituting gives $frac(28, 3)$ square units. *Chapter 5.*
]

#sol-item(26, "D")[
  Each student is $2^degree$, so $22$ students occupy $22 times 2^degree = 44^degree$. *Chapter 6.*
]

#sol-item(27, "A")[
  The sum is $78$ and there are $6$ numbers, so the mean is $13$. *Chapter 7.*
]

#sol-item(28, "B")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $33$ and the SD stays $6$. *Chapter 8.*
]

#sol-item(29, "C")[
  The quotient cancels every factor up to $4$: $6 times 5 = 30$. *Chapter 9.*
]

#sol-item(30, "A")[
  After one red has gone there are $6$ reds left in $9$ balls, so the probability is $7/10 times 6/9 = frac(7, 15)$. *Chapter 10.*
]

#sol-item(31, "D")[
  The numerator factorises as $(x - 7)(x - 5)$. Cancelling leaves $x - 5$, which tends to $7 - 5 = 2$. *Chapter 1.*
]

#sol-item(32, "B")[
  Quotient rule: $((1)(x + 1) - (x - 3)(1))/(x + 1)^2 = 4/(x + 1)^2$. *Chapter 2.*
]

#sol-item(33, "A")[
  The maximum occurs where $dif y / dif x = -6x + -18 = 0$, that is at $x = -3$. There $y = 32$. *Chapter 3.*
]

#sol-item(34, "C")[
  Divide by the derivative of the bracket as well as by the new power: $(4x - 3)^5/(20) + c$. *Chapter 4.*
]

#sol-item(35, "D")[
  Distance $= integral_0^1 v dif t = frac(2, 3)t^3 + 3t^2$ evaluated at $1$, giving $frac(11, 3)$ m. *Chapter 5.*
]

#sol-item(36, "B")[
  The cumulative frequencies pass $50/2 = 25$ inside the class $20 - 29$, which is therefore the median class. *Chapter 6.*
]

#sol-item(37, "D")[
  Total $= 5 times frac(59, 5) = 59$; the known numbers add to $51$, so the remaining one is $59 - 51 = 8$. *Chapter 7.*
]

#sol-item(38, "B")[
  The mean is $frac(56, 5)$; the deviations average to $frac(144, 25)$ in magnitude. *Chapter 8.*
]

#sol-item(39, "A")[
  Choose the men and the women separately, then multiply: $attach(C, tl: 7, bl: 3) times attach(C, tl: 5, bl: 2) = 35 times 10 = 350$. *Chapter 9.*
]

#sol-item(40, "C")[
  With replacement the draws are independent, so multiply: $5/8 times 5/8 = frac(25, 64)$. *Chapter 10.*
]

