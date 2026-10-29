#import "template.typ": *

#current-chapter.update("Appendix H: JAMB Challenge Set")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: JAMB Challenge Set]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[JAMB Challenge Set]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twenty questions of the kind that separate 280 from 320: two-stage limits, chain-rule derivatives, areas between curves and probability trees without replacement.]
]

#v(5pt)

Do not time this set. Aim for a complete written solution to every one.

== H.1 Questions

#mcq(1, [In a pie chart of $40$ students, $25$ percent chose History. How many students is that?], [$10$], [$30$], [$frac(8, 5)$], [$frac(125, 2)$])

#mcq(2, [The mean of $21$ numbers is $20$. If $7$ is added to every number, what is the new mean?], [$140$], [$20$], [$27$], [$15$])

#mcq(3, [A distribution has mean $21$ and standard deviation $3$. Find its coefficient of variation, as a percentage.], [$700.0$ percent], [$14.3$ percent], [$0.14$ percent], [$143$ percent])

#mcq(4, [How many 3-digit numbers can be formed from the digits $1$ to $6$ if no digit is repeated?], [$216$], [$20$], [$30$], [$120$])

#mcq(5, [The probability that a student passes a test at the first attempt is $frac(1, 5)$. Find the probability of passing at least once in $3$ independent attempts.], [$frac(1, 125)$], [$frac(124, 125)$], [$frac(3, 5)$], [$frac(61, 125)$])

#mcq(6, [Evaluate $lim_(x -> -1) (3x^2 + 4x - 2)$.], [$-3$], [$5$], [$1$], [$-9$])

#mcq(7, [Find the gradient of the normal to $y = 3x - 6$ at $x = 3$.], [$12$], [$-frac(1, 12)$], [$frac(1, 12)$], [$-12$])

#mcq(8, [Use calculus to estimate the increase in $y = x^2$ when $x$ grows from $6$ to $6.05$.], [$frac(9, 5)$], [$12$], [$frac(3, 5)$], [$frac(1, 20)$])

#mcq(9, [Given $dif y / dif x = 6x - 5$ and $y = 3$ when $x = 2$, find $y$.], [$3x^2 - 5x$], [$6x^2 - 5x$], [$3x^2 - 5x + 1$], [$3x^2 - 5x + 3$])

#mcq(10, [The velocity of a body is $v = 5t - 2$ m/s. Find its acceleration at $t = 1$ s.], [$5$ m/s²], [$3$ m/s²], [$frac(1, 2)$ m/s²], [$10$ m/s²])

#mcq(11, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40, 41 - 50 with frequencies 3, 4, 10, 7, 2 respectively. How many values are at most $30$?], [$26$], [$10$], [$14$], [$17$])

#mcq(12, [A class of $24$ students has a mean score of $29$; a second class of $13$ students has a mean of $51$. Find the mean of the two classes together.], [$40$], [$frac(1359, 37)$], [$11$], [$1359$])

#mcq(13, [Find the variance of 5, 10, 6, 5.], [$frac(17, 2)$], [$frac(13, 2)$], [$frac(17, 4)$], [$frac(93, 2)$])

#mcq(14, [In how many ways can $4$ different posts be filled from $8$ candidates, with no candidate holding two posts?], [$1680$], [$70$], [$4096$], [$336$])

#mcq(15, [A bag contains $5$ red and $5$ blue balls. Two balls are drawn without replacement. Find the probability that both are red.], [$frac(1, 4)$], [$frac(2, 9)$], [$frac(1, 18)$], [$1$])

#mcq(16, [Evaluate $lim_(x -> 8) (x^2 - 12x + 32)/(x - 8)$.], [$12$], [$-4$], [$0$], [$4$])

#mcq(17, [Differentiate $y = 4x^3$ with respect to $x$.], [$4x^2$], [$12x^3$], [$12x^2$], [$12x^4$])

#mcq(18, [Find the values of $x$ for which $y = 3x^3 - 12x$ is increasing.], [$x < -2 quad "or" quad x > 2$], [$x > 2$], [$-2 < x < 2$], [$x < 2$])

#mcq(19, [Evaluate $integral (15x^2 + 6x + 1) dif x$.], [$5x^2 + 3x + 1 + c$], [$5x^3 + 3x^2 + x + c$], [$15x^2 + 3x + 1 + c$], [$5x^2 + 6x + 1 + c$])

#mcq(20, [The velocity of a body is $v = 4t + 5$ m/s. Find its acceleration at $t = 1$ s.], [$9$ m/s²], [$7$ m/s²], [$8$ m/s²], [$4$ m/s²])

#pagebreak()

== H.1 Answer Key

#answer-key-grid((
  "A", "C", "B", "D", "D", "A", "B", "C", "C", "A",
  "D", "B", "C", "A", "B", "D", "C", "A", "B", "D",
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

== H.1 Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 6 #h(0pt) *Q2* #h(2pt) Ch 7 #h(0pt) *Q3* #h(2pt) Ch 8 #h(0pt) *Q4* #h(2pt) Ch 9 #h(0pt) *Q5* #h(2pt) Ch 10 #h(0pt) *Q6* #h(2pt) Ch 1 #h(0pt) *Q7* #h(2pt) Ch 2 #h(0pt) *Q8* #h(2pt) Ch 3 #h(0pt) *Q9* #h(2pt) Ch 4 #h(0pt) *Q10* #h(2pt) Ch 5 \
*Q11* #h(2pt) Ch 6 #h(0pt) *Q12* #h(2pt) Ch 7 #h(0pt) *Q13* #h(2pt) Ch 8 #h(0pt) *Q14* #h(2pt) Ch 9 #h(0pt) *Q15* #h(2pt) Ch 10 #h(0pt) *Q16* #h(2pt) Ch 1 #h(0pt) *Q17* #h(2pt) Ch 2 #h(0pt) *Q18* #h(2pt) Ch 3 #h(0pt) *Q19* #h(2pt) Ch 4 #h(0pt) *Q20* #h(2pt) Ch 5 \

== H.1 Complete Solutions

#sol-item(1, "A")[
  $25$ percent of $40$ is $10$ students. *Chapter 6.*
]

#sol-item(2, "C")[
  Adding a constant to every value adds the same constant to the mean: $20 + 7 = 27$. *Chapter 7.*
]

#sol-item(3, "B")[
  Coefficient of variation $= "SD" div "mean" times 100 = (3 div 21) times 100 = 14.3$ percent. *Chapter 8.*
]

#sol-item(4, "D")[
  $attach(P, tl: 6, bl: 3) = 6 times 5 times 4 = 120$. *Chapter 9.*
]

#sol-item(5, "D")[
  $P("at least one") = 1 - (1 - frac(1, 5))^3 = frac(61, 125)$. Multiply the failures, then subtract from $1$. *Chapter 10.*
]

#sol-item(6, "A")[
  Substitute $x = -1$: $3(-1)^2 + 4(-1) + (-2) = -3$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(7, "B")[
  The tangent gradient is $6(3) + (-6) = 12$, so the normal gradient is $-frac(1, 12)$. *Chapter 2.*
]

#sol-item(8, "C")[
  $dif y = 2x dif x = 2(6)(0.05) = frac(3, 5)$, that is about 0.6. *Chapter 3.*
]

#sol-item(9, "C")[
  Integrating gives $y = 3x^2 - 5x + k$. Substituting $x = 2$, $y = 3$ gives $k = 1$, so $y = 3x^2 - 5x + 1$. *Chapter 4.*
]

#sol-item(10, "A")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 5$, which is constant. *Chapter 5.*
]

#sol-item(11, "D")[
  The cumulative frequency up to $30$ is $3 + 4 + 10 = 17$. *Chapter 6.*
]

#sol-item(12, "B")[
  Combined mean $= (24 times 29 + 13 times 51) div 37 = frac(1359, 37)$. The plain average of the two means ignores the sizes. *Chapter 7.*
]

#sol-item(13, "C")[
  Mean $= frac(13, 2)$; the mean square deviation is $frac(17, 4)$. *Chapter 8.*
]

#sol-item(14, "A")[
  The posts are distinct, so order matters: $attach(P, tl: 8, bl: 4) = 8 times 7 times 6 times 5 = 1680$. *Chapter 9.*
]

#sol-item(15, "B")[
  After one red has gone there are $4$ reds left in $9$ balls, so the probability is $5/10 times 4/9 = frac(2, 9)$. *Chapter 10.*
]

#sol-item(16, "D")[
  The numerator factorises as $(x - 8)(x - 4)$. Cancelling leaves $x - 4$, which tends to $8 - 4 = 4$. *Chapter 1.*
]

#sol-item(17, "C")[
  Multiply by the power and reduce it by one: $dif y / dif x = 4 times 3 x^2 = 12x^2$. *Chapter 2.*
]

#sol-item(18, "A")[
  $dif y / dif x = 9x^2 - 12 = 9(x + 2)(x - 2)$, which is positive outside the roots $x = +-2$. *Chapter 3.*
]

#sol-item(19, "B")[
  Integrate term by term: $5x^3 + 3x^2 + x + c$. *Chapter 4.*
]

#sol-item(20, "D")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 4$, which is constant. *Chapter 5.*
]

