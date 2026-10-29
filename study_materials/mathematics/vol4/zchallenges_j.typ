#import "template.typ": *

#current-chapter.update("Appendix J: Speed Set")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: Speed Set]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Speed Set]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Fifteen questions in twelve minutes — four seconds a mark faster than the real paper. Speed is built, not wished for.]
]

#v(5pt)

Stop at twelve minutes even if you have not finished. Note where the clock ran out.

== J.1 Questions

#mcq(1, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40, 41 - 50 with frequencies 7, 7, 10, 6, 4 respectively. How many values are at most $30$?], [$24$], [$34$], [$10$], [$17$])

#mcq(2, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 5, 9, 6, 5 respectively. Estimate the mean.], [$frac(995, 8)$], [$frac(199, 10)$], [$frac(41, 2)$], [$frac(209, 10)$])

#mcq(3, [A distribution has mean $47$ and standard deviation $8$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $47$, SD $13$], [mean $52$, SD $13$], [mean $52$, SD $8$], [mean $47$, SD $8$])

#mcq(4, [In how many ways can $3$ different posts be filled from $6$ candidates, with no candidate holding two posts?], [$20$], [$216$], [$30$], [$120$])

#mcq(5, [A bag contains $3$ red and $4$ blue balls. Two balls are drawn without replacement. Find the probability that both are red.], [$frac(9, 49)$], [$frac(1, 7)$], [$frac(1, 14)$], [$frac(6, 7)$])

#mcq(6, [Evaluate $lim_(x -> infinity) (18x^2 + 2x + 3)/(3x^2 + 3x + 5)$.], [$frac(1, 6)$], [$7$], [$infinity$], [$6$])

#mcq(7, [Find the gradient of the normal to $y = 2x + 2$ at $x = 3$.], [$-frac(1, 14)$], [$14$], [$frac(1, 14)$], [$-14$])

#mcq(8, [Find the values of $x$ for which $y = x^3 - 4x$ is increasing.], [$x > 2$], [$-2 < x < 2$], [$x < -2 quad "or" quad x > 2$], [$x < 2$])

#mcq(9, [Evaluate $integral (2x - 2)^3 dif x$.], [$(2x - 2)^4/4 + c$], [$(2x - 2)^4/8 + c$], [$(2x - 2)^3/6 + c$], [$2(2x - 2)^4/4 + c$])

#mcq(10, [A body starts with speed $4$ m/s and accelerates uniformly at $1$ m/s². Find the distance covered in $2$ s.], [$8$ m], [$6$ m], [$2$ m], [$10$ m])

#mcq(11, [A sector of a pie chart subtends $45^degree$ at the centre. What fraction of the whole does it represent?], [$8$], [$frac(1, 4)$], [$frac(1, 8)$], [$frac(20, 9)$])

#mcq(12, [Find the median of the numbers 2, 7, 10, 13, 24, 30, 31.], [$13$], [$16$], [$10$], [$31$])

#mcq(13, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 4, 3, 7, 2 respectively. Estimate the variance.], [$frac(6375, 32)$], [$frac(159, 8)$], [$frac(6375, 64)$], [$frac(6439, 64)$])

#mcq(14, [In how many ways can a committee of $4$ be chosen from $10$ people?], [$210$], [$5040$], [$252$], [$40$])

#mcq(15, [A bag contains $4$ red and $5$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(1, 6)$], [$frac(8, 9)$], [$frac(4, 81)$], [$frac(16, 81)$])

#pagebreak()

== J.1 Answer Key

#answer-key-grid((
  "A", "B", "C", "D", "B", "D", "A", "C", "B", "D",
  "C", "A", "C", "A", "D",
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
    [*12–15*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*10–11*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–9*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== J.1 Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

*Q1* #h(2pt) Ch 6 #h(0pt) *Q2* #h(2pt) Ch 7 #h(0pt) *Q3* #h(2pt) Ch 8 #h(0pt) *Q4* #h(2pt) Ch 9 #h(0pt) *Q5* #h(2pt) Ch 10 #h(0pt) *Q6* #h(2pt) Ch 1 #h(0pt) *Q7* #h(2pt) Ch 2 #h(0pt) *Q8* #h(2pt) Ch 3 #h(0pt) *Q9* #h(2pt) Ch 4 #h(0pt) *Q10* #h(2pt) Ch 5 \
*Q11* #h(2pt) Ch 6 #h(0pt) *Q12* #h(2pt) Ch 7 #h(0pt) *Q13* #h(2pt) Ch 8 #h(0pt) *Q14* #h(2pt) Ch 9 #h(0pt) *Q15* #h(2pt) Ch 10 \

== J.1 Complete Solutions

#sol-item(1, "A")[
  The cumulative frequency up to $30$ is $7 + 7 + 10 = 24$. *Chapter 6.*
]

#sol-item(2, "B")[
  Use the midpoints $5.5, 15.5, 25.5, 35.5$: $sum f x = 995/2$ over $sum f = 25$, giving $frac(199, 10)$. *Chapter 7.*
]

#sol-item(3, "C")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $52$ and the SD stays $8$. *Chapter 8.*
]

#sol-item(4, "D")[
  The posts are distinct, so order matters: $attach(P, tl: 6, bl: 3) = 6 times 5 times 4 = 120$. *Chapter 9.*
]

#sol-item(5, "B")[
  After one red has gone there are $2$ reds left in $6$ balls, so the probability is $3/7 times 2/6 = frac(1, 7)$. *Chapter 10.*
]

#sol-item(6, "D")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $18/3 = 6$. *Chapter 1.*
]

#sol-item(7, "A")[
  The tangent gradient is $4(3) + 2 = 14$, so the normal gradient is $-frac(1, 14)$. *Chapter 2.*
]

#sol-item(8, "C")[
  $dif y / dif x = 3x^2 - 4 = 3(x + 2)(x - 2)$, which is positive outside the roots $x = +-2$. *Chapter 3.*
]

#sol-item(9, "B")[
  Divide by the derivative of the bracket as well as by the new power: $(2x - 2)^4/(8) + c$. *Chapter 4.*
]

#sol-item(10, "D")[
  $v = 4 + 1t$, and $integral_0^2 v dif t = 4t + 1/2t^2$ gives $10$ m after $2$ s. *Chapter 5.*
]

#sol-item(11, "C")[
  The fraction is $45/360 = frac(1, 8)$ of the total. *Chapter 6.*
]

#sol-item(12, "A")[
  With $7$ values the median is the $4$rd in order, which is $13$. *Chapter 7.*
]

#sol-item(13, "C")[
  Using the midpoints $5.5, 15.5, 25.5, 35.5$ the mean is $frac(159, 8)$; $sum f (x - overline(x))^2 = 6375/4$ over $16$ gives the variance $frac(6375, 64)$. *Chapter 8.*
]

#sol-item(14, "A")[
  The committee has no internal order, so divide the permutations by $4!$: $attach(C, tl: 10, bl: 4) = 5040/24 = 210$. *Chapter 9.*
]

#sol-item(15, "D")[
  With replacement the draws are independent, so multiply: $4/9 times 4/9 = frac(16, 81)$. *Chapter 10.*
]

