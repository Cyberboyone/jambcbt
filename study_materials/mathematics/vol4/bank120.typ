#import "template.typ": *

#current-chapter.update("Appendix M: The 120-Question Master Bank")


#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix M: The 120-Question Master Bank]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX M]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The 120-Question Master Bank]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[One hundred and twenty questions covering every calculus and statistics item in Sections IV and V. Use it as a question bank, not a test: work in blocks of twenty by topic, then return a fortnight later and do the blocks in the shuffled order.]
]

#v(5pt)

Blocks are mixed deliberately — the CBT engine does not group by topic.

== M.1 Questions

#mcq(1, [A particle has velocity $v = 5t^2 - 6t + 8$ m/s. Find its acceleration at $t = 2$ s.], [$16$ m/s²], [$4$ m/s²], [$10$ m/s²], [$14$ m/s²])

#mcq(2, [Given $dif y / dif x = 4x$ and $y = 5$ when $x = 1$, find $y$.], [$2x^2$], [$2x^2 + 3$], [$4x^2$], [$2x^2 + 5$])

#mcq(3, [The velocity of a body is $v = 3t - 5$ m/s. Find its acceleration at $t = 2$ s.], [$3$ m/s²], [$1$ m/s²], [$-4$ m/s²], [$6$ m/s²])

#mcq(4, [The marks of a class are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 3, 2, 11, 10, 8 respectively. Find the modal class.], [$0 - 9$], [$10 - 19$], [$20 - 29$], [$30 - 39$])

#mcq(5, [Find the median of the numbers 1, 11, 12, 13, 14, 15, 28, 39.], [$14$], [$frac(133, 8)$], [$frac(27, 2)$], [$13$])

#mcq(6, [A distribution has mean $20$ and standard deviation $2$. Find its coefficient of variation, as a percentage.], [$1000.0$ percent], [$10.0$ percent], [$0.10$ percent], [$100$ percent])

#mcq(7, [A bag contains $5$ red and $2$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(10, 21)$], [$frac(10, 7)$], [$frac(5, 49)$], [$frac(25, 49)$])

#mcq(8, [Evaluate $lim_(x -> infinity) (8x^2 + 2x + 3)/(2x^2 - 6x + 5)$.], [$4$], [$frac(1, 4)$], [$5$], [$infinity$])

#mcq(9, [Find the gradient of $y = 3x^2 + 4x + 5$ at $x = -2$.], [$-8$], [$9$], [$-12$], [$10$])

#mcq(10, [A particle has velocity $v = 5t^2 - 2t - 1$ m/s. Find its acceleration at $t = 1$ s.], [$2$ m/s²], [$3$ m/s²], [$8$ m/s²], [$10$ m/s²])

#mcq(11, [Given $dif y / dif x = 4x + 1$ and $y = 14$ when $x = 2$, find $y$.], [$2x^2 + x$], [$2x^2 + x + 4$], [$4x^2 + x$], [$2x^2 + x + 14$])

#mcq(12, [A particle has velocity $v = 5t^2 - t$ m/s. Find its displacement from $t = 0$ to $t = 2$ s.], [$frac(28, 3)$ m], [$-12$ m], [$6$ m], [$12$ m])

#mcq(13, [A histogram has frequency density $2$ for the class $20 - 30$. Find the frequency of that class.], [$2$], [$200$], [$20$], [$5$])

#mcq(14, [Find the interquartile range of the numbers 5, 11, 12, 15, 16, 17, 20, 23, 24, 27, 28.], [$23$], [$36$], [$5$], [$12$])

#mcq(15, [A set of $7$ numbers has mean $9$ and variance $4$. Find $sum x^2$.], [$63$], [$595$], [$28$], [$85$])

#mcq(16, [A card is drawn at random from a standard pack of $52$. Find the probability that it is a face card.], [$frac(3, 13)$], [$frac(4, 17)$], [$frac(1, 13)$], [$frac(1, 4)$])

#mcq(17, [Evaluate $lim_(x -> infinity) (4x + 5)/(3x^2 + 4)$.], [$frac(4, 3)$], [$0$], [$4$], [does not exist])

#mcq(18, [Differentiate $y = 3x^3 + 2x^2 + 2x + 1$.], [$9x^2 + 4x + 2$], [$9x^3 + 4x^2 + 2x + 1$], [$3x^2 + 2x + 2$], [$9x^2 + 4x + 3$])

#mcq(19, [A particle has velocity $v = 2t^2 - 4t + 7$ m/s. Find its acceleration at $t = 3$ s.], [$13$ m/s²], [$2$ m/s²], [$4$ m/s²], [$8$ m/s²])

#mcq(20, [Evaluate $integral (6x^2 + 4x) dif x$.], [$2x^2 + 2x + c$], [$6x^2 + 2x + c$], [$2x^3 + 2x^2 + c$], [$2x^2 + 4x + c$])

#mcq(21, [The velocity of a body is $v = 2t - 3$ m/s. Find its acceleration at $t = 1$ s.], [$-1$ m/s²], [$2$ m/s²], [$-2$ m/s²], [$4$ m/s²])

#mcq(22, [A histogram has frequency density $2$ for the class $10 - 30$. Find the frequency of that class.], [$2$], [$800$], [$40$], [$10$])

#mcq(23, [A class of $23$ students has a mean score of $24$; a second class of $10$ students has a mean of $45$. Find the mean of the two classes together.], [$frac(334, 11)$], [$frac(69, 2)$], [$frac(21, 2)$], [$1002$])

#mcq(24, [A distribution has mean $29$ and standard deviation $5$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $29$, SD $10$], [mean $34$, SD $10$], [mean $29$, SD $5$], [mean $34$, SD $5$])

#mcq(25, [A bag contains $5$ red and $3$ blue balls. Two balls are drawn without replacement. Find the probability that both are red.], [$frac(25, 64)$], [$frac(5, 56)$], [$frac(5, 14)$], [$frac(5, 4)$])

#mcq(26, [Evaluate $lim_(x -> 7) (x^2 - 49)/(x - 7)$.], [$7$], [$49$], [$0$], [$14$])

#mcq(27, [Find the gradient of the normal to $y = x + 2$ at $x = 1$.], [$-frac(1, 4)$], [$4$], [$frac(1, 4)$], [$-4$])

#mcq(28, [Find the maximum value of $y = -2x^2 + 4x - 8$.], [$-8$], [$-6$], [$-4$], [$6$])

#mcq(29, [Evaluate $integral_1^3 (2x^2 - 3x) dif x$.], [$-frac(16, 3)$], [$frac(17, 3)$], [$frac(16, 3)$], [$0$])

#mcq(30, [A particle has velocity $v = 2t^2 + 2t$ m/s. Find the distance travelled from $t = 0$ to $t = 1$ s.], [$4$ m], [$frac(5, 3)$ m], [$frac(7, 6)$ m], [$frac(10, 3)$ m])

#mcq(31, [The marks of a class are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 3, 10, 9, 7, 7 respectively. Find the modal class.], [$10 - 19$], [$0 - 9$], [$20 - 29$], [$30 - 39$])

#mcq(32, [Find the interquartile range of the numbers 1, 3, 4, 6, 8, 10, 14, 18, 19, 27, 29.], [$28$], [$23$], [$6$], [$15$])

#mcq(33, [Find the range of 3, 9, 13, 14, 18, 37.], [$34$], [$37$], [$3$], [$40$])

#mcq(34, [A bag contains $7$ red and $4$ blue balls. Two balls are drawn without replacement. Find the probability that one is red and one is blue.], [$frac(56, 121)$], [$frac(14, 55)$], [$frac(28, 55)$], [$1$])

#mcq(35, [Evaluate $lim_(x -> 4) (3x^2 + 5x + 8)$.], [$36$], [$60$], [$40$], [$76$])

#mcq(36, [Find the gradient of $y = x^2 - x + 8$ at $x = 3$.], [$14$], [$5$], [$6$], [$1$])

#mcq(37, [A particle has velocity $v = 4t^2 + 5t - 7$ m/s. Find its acceleration at $t = 3$ s.], [$44$ m/s²], [$17$ m/s²], [$8$ m/s²], [$29$ m/s²])

#mcq(38, [Evaluate $integral (6x^2 + 8x + 6) dif x$.], [$2x^2 + 4x + 6 + c$], [$6x^2 + 4x + 6 + c$], [$2x^3 + 4x^2 + 6x + c$], [$2x^2 + 8x + 6 + c$])

#mcq(39, [Find the area between $y = 2x$ and $y = 1x^2$ in the first quadrant.], [$2$ square units], [$frac(4, 3)$ square units], [$frac(8, 3)$ square units], [$frac(2, 3)$ square units])

#mcq(40, [A histogram has a class $20 - 40$ with frequency $10$. Find its frequency density.], [$frac(1, 2)$], [$200$], [$2$], [$30$])

#mcq(41, [The mean of $22$ numbers is $13$. If $7$ is added to every number, what is the new mean?], [$91$], [$20$], [$13$], [$frac(286, 29)$])

#mcq(42, [Find the variance of 4, 11, 10, 9, 5.], [$frac(388, 25)$], [$frac(39, 5)$], [$frac(343, 5)$], [$frac(194, 25)$])

#mcq(43, [A bag contains $7$ red and $4$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(49, 121)$], [$frac(21, 55)$], [$frac(14, 11)$], [$frac(7, 121)$])

#mcq(44, [Evaluate $lim_(x -> 4) (x^2 - 16)/(x - 4)$.], [$4$], [$16$], [$8$], [$0$])

#mcq(45, [A particle moves so that $s = 3t^3 - 4t^2$ metres after $t$ seconds. Find its velocity at $t = 2$ s.], [$8$ m/s], [$10$ m/s], [$28$ m/s^2], [$20$ m/s])

#mcq(46, [A particle has velocity $v = 3t^2 - 2t + 8$ m/s. Find its acceleration at $t = 2$ s.], [$10$ m/s²], [$16$ m/s²], [$4$ m/s²], [$6$ m/s²])

#mcq(47, [Evaluate $integral (4x - 4)^3 dif x$.], [$(4x - 4)^4/4 + c$], [$(4x - 4)^3/12 + c$], [$(4x - 4)^4/16 + c$], [$4(4x - 4)^4/4 + c$])

#mcq(48, [The velocity of a body is $v = 3t - 6$ m/s. Find its acceleration at $t = 1$ s.], [$-3$ m/s²], [$3$ m/s²], [$-frac(9, 2)$ m/s²], [$6$ m/s²])

#mcq(49, [A histogram has a class $0 - 5$ with frequency $20$. Find its frequency density.], [$4$], [$100$], [$frac(1, 4)$], [$25$])

#mcq(50, [Find the mode of the numbers 2, 6, 6, 16, 19, 19.], [$2$], [$11$], [$6 and 19$], [$6$])

#mcq(51, [A distribution has mean $32$ and standard deviation $2$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $32$, SD $7$], [mean $37$, SD $2$], [mean $37$, SD $7$], [mean $32$, SD $2$])

#mcq(52, [A bag contains $4$ red and $3$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(2, 7)$], [$frac(8, 7)$], [$frac(4, 49)$], [$frac(16, 49)$])

#mcq(53, [Evaluate $lim_(x -> infinity) (10x^2 - 3x + 3)/(2x^2 - x + 5)$.], [$5$], [$frac(1, 5)$], [$6$], [$infinity$])

#mcq(54, [A particle moves so that $s = 4t^3 + 5t^2$ metres after $t$ seconds. Find its velocity at $t = 4$ s.], [$336$ m/s], [$58$ m/s], [$106$ m/s^2], [$232$ m/s])

#mcq(55, [The curve $y = x^3 + 6x^2$ has a stationary point at $x = 0$. Determine its nature.], [maximum], [minimum], [point of inflexion], [neither])

#mcq(56, [Evaluate $integral (9x^2 + 4x - 1) dif x$.], [$3x^2 + 2x - 1 + c$], [$9x^2 + 2x - 1 + c$], [$3x^3 + 2x^2 - x + c$], [$3x^2 + 4x - 1 + c$])

#mcq(57, [A particle has velocity $v = 2t^2 + 2t$ m/s. Find the distance travelled from $t = 0$ to $t = 3$ s.], [$24$ m], [$27$ m], [$frac(117, 2)$ m], [$54$ m])

#mcq(58, [The values 5, 6, 10, 13, 17, 18 occur with frequencies 7, 6, 2, 5, 2, 6 respectively. Find the mode.], [$5$], [$6$], [$10$], [$13$])

#mcq(59, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 6, 5, 5, 4 respectively. Estimate the mean.], [$95$], [$frac(41, 2)$], [$20$], [$19$])

#mcq(60, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 4, 8, 8, 3 respectively. Estimate the variance.], [$frac(90400, 529)$], [$frac(913, 46)$], [$frac(45200, 529)$], [$frac(45729, 529)$])

#mcq(61, [$A$ and $B$ are independent events with $P(A) = 1/2$ and $P(B) = 1/3$. Find $P(A "and" B)$.], [$frac(1, 5)$], [$frac(5, 6)$], [$frac(1, 6)$], [$frac(1, 12)$])

#mcq(62, [Evaluate $lim_(x -> 3) (x^2 - 4x + 2)$.], [$23$], [$-1$], [$-5$], [$-7$])

#mcq(63, [Differentiate $y = 3x^3 - 4x^2 - x - 2$.], [$9x^3 - 8x^2 - x - 2$], [$3x^2 - 4x - 1$], [$9x^2 - 8x$], [$9x^2 - 8x - 1$])

#mcq(64, [The radius of a circle increases at $3$ cm/s. Find the rate at which the area increases when $r = 4$ cm.], [$24pi$ cm²/s], [$48pi$ cm²/s], [$8pi$ cm²/s], [$12pi$ cm²/s])

#mcq(65, [Given $dif y / dif x = 6x + 2$ and $y = 3$ when $x = 1$, find $y$.], [$3x^2 + 2x$], [$3x^2 + 2x - 2$], [$6x^2 + 2x$], [$3x^2 + 2x + 3$])

#mcq(66, [The velocity of a body is $v = 5t + 6$ m/s. Find its acceleration at $t = 3$ s.], [$21$ m/s²], [$frac(81, 2)$ m/s²], [$5$ m/s²], [$10$ m/s²])

#mcq(67, [A data set takes the values 1, 3, 13, 21, 23, 24. Find its range.], [$23$], [$24$], [$1$], [$25$])

#mcq(68, [Find the interquartile range of the numbers 7, 10, 11, 14, 16, 18, 27.], [$20$], [$28$], [$4$], [$8$])

#mcq(69, [A distribution has mean $21$ and standard deviation $3$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $21$, SD $8$], [mean $26$, SD $8$], [mean $21$, SD $3$], [mean $26$, SD $3$])

#mcq(70, [A bag contains $4$ red and $4$ blue balls. Two balls are drawn with replacement. Find the probability that both are red.], [$frac(3, 14)$], [$1$], [$frac(1, 4)$], [$frac(1, 16)$])

#mcq(71, [Evaluate $lim_(x -> infinity) (4x + 6)/(2x^2 + 4)$.], [$2$], [$0$], [$4$], [does not exist])

#mcq(72, [A particle moves so that $s = 4t^3$ metres after $t$ seconds. Find its velocity at $t = 2$ s.], [$48$ m/s], [$32$ m/s], [$24$ m/s], [$48$ m/s^2])

#mcq(73, [A particle has velocity $v = 4t^2 + 5t$ m/s. Find its acceleration at $t = 2$ s.], [$21$ m/s²], [$26$ m/s²], [$13$ m/s²], [$8$ m/s²])

#mcq(74, [Evaluate $integral_0^3 (3x^2 + 2x) dif x$.], [$-36$], [$frac(109, 3)$], [$frac(39, 2)$], [$36$])

#mcq(75, [The velocity of a body is $v = 4t - 4$ m/s. Find its acceleration at $t = 1$ s.], [$0$ m/s²], [$-2$ m/s²], [$4$ m/s²], [$8$ m/s²])

#mcq(76, [The values 1, 4, 5, 6, 7 occur with frequencies 2, 6, 1, 3, 4 respectively. Find the mean.], [$frac(23, 5)$], [$frac(77, 16)$], [$frac(77, 5)$], [$frac(16, 5)$])

#mcq(77, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 3, 2, 6, 9 respectively. Estimate the mean.], [$26$], [$130$], [$frac(41, 2)$], [$27$])

#mcq(78, [Find the mean deviation of 4, 10, 3, 4.], [$frac(21, 4)$], [$frac(19, 8)$], [$frac(19, 4)$], [$7$])

#mcq(79, [A fair die is thrown once. Find the probability of obtaining a multiple of $3$.], [$frac(2, 3)$], [$frac(2, 5)$], [$frac(1, 3)$], [$frac(1, 2)$])

#mcq(80, [Evaluate $lim_(x -> infinity) (4x + 4)/(2x^2 + 4)$.], [$2$], [$4$], [does not exist], [$0$])

#mcq(81, [Find the gradient of the normal to $y = 2x - 4$ at $x = 2$.], [$-frac(1, 4)$], [$4$], [$frac(1, 4)$], [$-4$])

#mcq(82, [A particle has velocity $v = 2t^2 + 6t - 5$ m/s. Find its acceleration at $t = 2$ s.], [$15$ m/s²], [$10$ m/s²], [$4$ m/s²], [$14$ m/s²])

#mcq(83, [Evaluate $integral (3x + 2)^3 dif x$.], [$(3x + 2)^4/4 + c$], [$(3x + 2)^4/12 + c$], [$(3x + 2)^3/9 + c$], [$3(3x + 2)^4/4 + c$])

#mcq(84, [The velocity of a body is $v = 3t - 5$ m/s. Find its acceleration at $t = 1$ s.], [$-2$ m/s²], [$-frac(7, 2)$ m/s²], [$3$ m/s²], [$6$ m/s²])

#mcq(85, [A data set takes the values 3, 6, 24, 26, 27, 29. Find its range.], [$29$], [$3$], [$26$], [$32$])

#mcq(86, [Find the mean of the numbers 28, 18, 19, 3, 27, 15, 22.], [$132$], [$19$], [$frac(33, 2)$], [$frac(132, 7)$])

#mcq(87, [A distribution has mean $46$ and standard deviation $7$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $46$, SD $12$], [mean $51$, SD $7$], [mean $51$, SD $12$], [mean $46$, SD $7$])

#mcq(88, [Evaluate $lim_(x -> infinity) (10x^2 - 4x + 3)/(2x^2 + x + 5)$.], [$5$], [$frac(1, 5)$], [$6$], [$infinity$])

#mcq(89, [Differentiate $y = (4x - 6)^3$.], [$3(4x - 6)^2$], [$4(4x - 6)^2$], [$12(4x - 6)^2$], [$12(4x - 6)^3$])

#mcq(90, [Evaluate $integral (4x + 1)^2 dif x$.], [$(4x + 1)^3/3 + c$], [$(4x + 1)^3/12 + c$], [$(4x + 1)^2/8 + c$], [$(4x + 1)^3 + c$])

#mcq(91, [In a pie chart of $180$ students, $36$ chose Physics. Find the angle of the Physics sector.], [$72^degree$], [$frac(1, 5)^degree$], [$144^degree$], [$288^degree$])

#mcq(92, [The mean of $6$ numbers is $frac(40, 3)$. 5 of them are 16, 18, 11, 8, 10. Find the remaining one.], [$13$], [$63$], [$78$], [$17$])

#mcq(93, [A distribution has mean $30$ and standard deviation $5$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $30$, SD $10$], [mean $35$, SD $10$], [mean $30$, SD $5$], [mean $35$, SD $5$])

#mcq(94, [Evaluate $lim_(x -> 6) (x^2 - 36)/(x^2 - 7x + 6)$.], [$frac(12, 5)$], [$frac(6, 5)$], [$frac(12, 7)$], [$12$])

#mcq(95, [Find the gradient of the normal to $y = 2x - 1$ at $x = 3$.], [$11$], [$frac(1, 11)$], [$-frac(1, 11)$], [$-11$])

#mcq(96, [Evaluate $integral_1^2 (3x^2 - x) dif x$.], [$-frac(11, 2)$], [$frac(11, 2)$], [$frac(35, 6)$], [$4$])

#mcq(97, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40, 41 - 50 with frequencies 4, 2, 9, 2, 10 respectively. How many values are at most $30$?], [$27$], [$9$], [$15$], [$11$])

#mcq(98, [Find the median of the numbers 4, 6, 12, 14, 15, 17, 21, 26.], [$15$], [$frac(29, 2)$], [$frac(115, 8)$], [$14$])

#mcq(99, [Find the variance of 8, 13, 4, 7.], [$frac(21, 2)$], [$21$], [$8$], [$frac(149, 2)$])

#mcq(100, [Evaluate $lim_(x -> -1) (3x^2 - x - 2)$.], [$0$], [$6$], [$-4$], [$2$])

#mcq(101, [Differentiate $y = 2x^2$ with respect to $x$.], [$2x^1$], [$4x^2$], [$4x^3$], [$4x^1$])

#mcq(102, [Evaluate $integral (15x^2 - 4x - 7) dif x$.], [$5x^2 - 2x - 7 + c$], [$5x^3 - 2x^2 - 7x + c$], [$15x^2 - 2x - 7 + c$], [$5x^2 - 4x - 7 + c$])

#mcq(103, [The ages of 40 students are grouped as 0 - 9, 10 - 19, 20 - 29, 30 - 39, 40 - 49 with frequencies 4, 5, 9, 7, 14 respectively. Find the median class.], [$30 - 39$], [$0 - 9$], [$10 - 19$], [$20 - 29$])

#mcq(104, [A class of $24$ students has a mean score of $46$; a second class of $21$ students has a mean of $30$. Find the mean of the two classes together.], [$38$], [$8$], [$frac(578, 15)$], [$1734$])

#mcq(105, [A distribution has mean $23$ and standard deviation $2$. Find its coefficient of variation, as a percentage.], [$1150.0$ percent], [$8.7$ percent], [$0.09$ percent], [$87$ percent])

#mcq(106, [Evaluate $lim_(x -> infinity) (2x + 3)/(3x^2 + 4)$.], [$frac(2, 3)$], [$2$], [does not exist], [$0$])

#mcq(107, [Find the $x$-coordinate of the turning point of $y = 2x^2 - 2x + 8$.], [$frac(1, 2)$], [$-frac(1, 2)$], [$1$], [$2$])

#mcq(108, [Evaluate $integral (4x - 4)^4 dif x$.], [$(4x - 4)^5/5 + c$], [$(4x - 4)^4/16 + c$], [$(4x - 4)^5/20 + c$], [$4(4x - 4)^5/5 + c$])

#mcq(109, [A histogram has a class $0 - 20$ with frequency $40$. Find its frequency density.], [$2$], [$800$], [$frac(1, 2)$], [$60$])

#mcq(110, [The data are grouped as 1 - 10, 11 - 20, 21 - 30, 31 - 40 with frequencies 2, 7, 6, 7 respectively. Estimate the mean.], [$frac(521, 4)$], [$frac(521, 22)$], [$frac(41, 2)$], [$frac(543, 22)$])

#mcq(111, [Find the standard deviation of 8, 3, 6, 2, correct to two decimal places.], [$4.77$], [$5.69$], [$2.38$], [$3.38$])

#mcq(112, [Evaluate $lim_(x -> infinity) (6x^2 + 2x + 3)/(2x^2 - 2x + 5)$.], [$frac(1, 3)$], [$4$], [$infinity$], [$3$])

#mcq(113, [A particle moves so that $s = 3t^3 + t^2$ metres after $t$ seconds. Find its velocity at $t = 3$ s.], [$90$ m/s], [$29$ m/s], [$87$ m/s], [$56$ m/s^2])

#mcq(114, [Find the area under $y = 2x^2$ between $x = 1$ and $x = 2$.], [$-frac(14, 3)$ square units], [$6$ square units], [$frac(28, 3)$ square units], [$frac(14, 3)$ square units])

#mcq(115, [The values 2, 6, 11, 12, 13, 15 occur with frequencies 1, 6, 4, 2, 6, 8 respectively. Find the mode.], [$2$], [$15$], [$6$], [$11$])

#mcq(116, [The mean of $17$ numbers is $19$. If $2$ is added to every number, what is the new mean?], [$21$], [$38$], [$19$], [$17$])

#mcq(117, [A distribution has mean $33$ and standard deviation $5$. If $5$ is added to every value, what are the new mean and standard deviation?], [mean $33$, SD $10$], [mean $38$, SD $10$], [mean $33$, SD $5$], [mean $38$, SD $5$])

#mcq(118, [Evaluate $lim_(x -> -1) (3x^2 - 2x + 5)$.], [$10$], [$6$], [$0$], [$4$])

#mcq(119, [Find the gradient of $y = x^2 - 5x + 4$ at $x = 3$.], [$-2$], [$6$], [$1$], [$-3$])

#mcq(120, [The values 2, 3, 6, 7, 9 occur with frequencies 4, 2, 1, 1, 7 respectively. Find the mean.], [$frac(27, 5)$], [$6$], [$18$], [$3$])

#pagebreak()

== M.1 Answer Key

#answer-key-grid((
  "D", "B", "A", "C", "C", "B", "D", "A", "A", "C",
  "B", "D", "C", "D", "B", "A", "B", "A", "D", "C",
  "B", "C", "A", "D", "C", "D", "A", "B", "C", "B",
  "A", "D", "A", "C", "D", "B", "D", "C", "B", "A",
  "B", "D", "A", "C", "D", "A", "C", "B", "A", "C",
  "B", "D", "A", "D", "B", "C", "B", "A", "D", "C",
  "C", "B", "D", "A", "B", "C", "A", "D", "D", "C",
  "B", "A", "A", "D", "C", "B", "A", "B", "C", "D",
  "A", "D", "B", "C", "C", "D", "B", "A", "C", "B",
  "A", "D", "D", "A", "C", "B", "C", "B", "A", "D",
  "D", "B", "A", "C", "B", "D", "A", "C", "A", "B",
  "C", "D", "C", "D", "B", "A", "D", "A", "C", "B",
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
    [*102–120*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*84–101*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–83*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== M.1 Question Map

The chapter each block of questions came from. Group your misses by this table first: the chapter with the most misses under it is the only revision task worth starting tonight.

#table(
  columns: (0.5fr, 1.9fr, 0.7fr, 2.1fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Qs],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where to go if these are your misses],
  [1], [Limits], [15], [Chapter 1 and its drill],
  [2], [Differentiation], [15], [Chapter 2 and its drill],
  [3], [Applications of Differentiation], [10], [Chapter 3 and its drill],
  [4], [Integration], [15], [Chapter 4 and its drill],
  [5], [Area and Motion], [10], [Chapter 5 and its drill],
  [6], [Representation of Data], [16], [Chapter 6 and its drill],
  [7], [Measures of Location], [15], [Chapter 7 and its drill],
  [8], [Measures of Dispersion], [15], [Chapter 8 and its drill],
  [10], [Probability], [9], [Chapter 10 and its drill],
)

*Q1* #h(2pt) Ch 3 #h(0pt) *Q2* #h(2pt) Ch 4 #h(0pt) *Q3* #h(2pt) Ch 5 #h(0pt) *Q4* #h(2pt) Ch 6 #h(0pt) *Q5* #h(2pt) Ch 7 #h(0pt) *Q6* #h(2pt) Ch 8 #h(0pt) *Q7* #h(2pt) Ch 10 #h(0pt) *Q8* #h(2pt) Ch 1 #h(0pt) *Q9* #h(2pt) Ch 2 #h(0pt) *Q10* #h(2pt) Ch 3 \
*Q11* #h(2pt) Ch 4 #h(0pt) *Q12* #h(2pt) Ch 5 #h(0pt) *Q13* #h(2pt) Ch 6 #h(0pt) *Q14* #h(2pt) Ch 7 #h(0pt) *Q15* #h(2pt) Ch 8 #h(0pt) *Q16* #h(2pt) Ch 10 #h(0pt) *Q17* #h(2pt) Ch 1 #h(0pt) *Q18* #h(2pt) Ch 2 #h(0pt) *Q19* #h(2pt) Ch 3 #h(0pt) *Q20* #h(2pt) Ch 4 \
*Q21* #h(2pt) Ch 5 #h(0pt) *Q22* #h(2pt) Ch 6 #h(0pt) *Q23* #h(2pt) Ch 7 #h(0pt) *Q24* #h(2pt) Ch 8 #h(0pt) *Q25* #h(2pt) Ch 10 #h(0pt) *Q26* #h(2pt) Ch 1 #h(0pt) *Q27* #h(2pt) Ch 2 #h(0pt) *Q28* #h(2pt) Ch 3 #h(0pt) *Q29* #h(2pt) Ch 4 #h(0pt) *Q30* #h(2pt) Ch 5 \
*Q31* #h(2pt) Ch 6 #h(0pt) *Q32* #h(2pt) Ch 7 #h(0pt) *Q33* #h(2pt) Ch 8 #h(0pt) *Q34* #h(2pt) Ch 10 #h(0pt) *Q35* #h(2pt) Ch 1 #h(0pt) *Q36* #h(2pt) Ch 2 #h(0pt) *Q37* #h(2pt) Ch 3 #h(0pt) *Q38* #h(2pt) Ch 4 #h(0pt) *Q39* #h(2pt) Ch 5 #h(0pt) *Q40* #h(2pt) Ch 6 \
*Q41* #h(2pt) Ch 7 #h(0pt) *Q42* #h(2pt) Ch 8 #h(0pt) *Q43* #h(2pt) Ch 10 #h(0pt) *Q44* #h(2pt) Ch 1 #h(0pt) *Q45* #h(2pt) Ch 2 #h(0pt) *Q46* #h(2pt) Ch 3 #h(0pt) *Q47* #h(2pt) Ch 4 #h(0pt) *Q48* #h(2pt) Ch 5 #h(0pt) *Q49* #h(2pt) Ch 6 #h(0pt) *Q50* #h(2pt) Ch 7 \
*Q51* #h(2pt) Ch 8 #h(0pt) *Q52* #h(2pt) Ch 10 #h(0pt) *Q53* #h(2pt) Ch 1 #h(0pt) *Q54* #h(2pt) Ch 2 #h(0pt) *Q55* #h(2pt) Ch 3 #h(0pt) *Q56* #h(2pt) Ch 4 #h(0pt) *Q57* #h(2pt) Ch 5 #h(0pt) *Q58* #h(2pt) Ch 6 #h(0pt) *Q59* #h(2pt) Ch 7 #h(0pt) *Q60* #h(2pt) Ch 8 \
*Q61* #h(2pt) Ch 10 #h(0pt) *Q62* #h(2pt) Ch 1 #h(0pt) *Q63* #h(2pt) Ch 2 #h(0pt) *Q64* #h(2pt) Ch 3 #h(0pt) *Q65* #h(2pt) Ch 4 #h(0pt) *Q66* #h(2pt) Ch 5 #h(0pt) *Q67* #h(2pt) Ch 6 #h(0pt) *Q68* #h(2pt) Ch 7 #h(0pt) *Q69* #h(2pt) Ch 8 #h(0pt) *Q70* #h(2pt) Ch 10 \
*Q71* #h(2pt) Ch 1 #h(0pt) *Q72* #h(2pt) Ch 2 #h(0pt) *Q73* #h(2pt) Ch 3 #h(0pt) *Q74* #h(2pt) Ch 4 #h(0pt) *Q75* #h(2pt) Ch 5 #h(0pt) *Q76* #h(2pt) Ch 6 #h(0pt) *Q77* #h(2pt) Ch 7 #h(0pt) *Q78* #h(2pt) Ch 8 #h(0pt) *Q79* #h(2pt) Ch 10 #h(0pt) *Q80* #h(2pt) Ch 1 \
*Q81* #h(2pt) Ch 2 #h(0pt) *Q82* #h(2pt) Ch 3 #h(0pt) *Q83* #h(2pt) Ch 4 #h(0pt) *Q84* #h(2pt) Ch 5 #h(0pt) *Q85* #h(2pt) Ch 6 #h(0pt) *Q86* #h(2pt) Ch 7 #h(0pt) *Q87* #h(2pt) Ch 8 #h(0pt) *Q88* #h(2pt) Ch 1 #h(0pt) *Q89* #h(2pt) Ch 2 #h(0pt) *Q90* #h(2pt) Ch 4 \
*Q91* #h(2pt) Ch 6 #h(0pt) *Q92* #h(2pt) Ch 7 #h(0pt) *Q93* #h(2pt) Ch 8 #h(0pt) *Q94* #h(2pt) Ch 1 #h(0pt) *Q95* #h(2pt) Ch 2 #h(0pt) *Q96* #h(2pt) Ch 4 #h(0pt) *Q97* #h(2pt) Ch 6 #h(0pt) *Q98* #h(2pt) Ch 7 #h(0pt) *Q99* #h(2pt) Ch 8 #h(0pt) *Q100* #h(2pt) Ch 1 \
*Q101* #h(2pt) Ch 2 #h(0pt) *Q102* #h(2pt) Ch 4 #h(0pt) *Q103* #h(2pt) Ch 6 #h(0pt) *Q104* #h(2pt) Ch 7 #h(0pt) *Q105* #h(2pt) Ch 8 #h(0pt) *Q106* #h(2pt) Ch 1 #h(0pt) *Q107* #h(2pt) Ch 2 #h(0pt) *Q108* #h(2pt) Ch 4 #h(0pt) *Q109* #h(2pt) Ch 6 #h(0pt) *Q110* #h(2pt) Ch 7 \
*Q111* #h(2pt) Ch 8 #h(0pt) *Q112* #h(2pt) Ch 1 #h(0pt) *Q113* #h(2pt) Ch 2 #h(0pt) *Q114* #h(2pt) Ch 4 #h(0pt) *Q115* #h(2pt) Ch 6 #h(0pt) *Q116* #h(2pt) Ch 7 #h(0pt) *Q117* #h(2pt) Ch 8 #h(0pt) *Q118* #h(2pt) Ch 1 #h(0pt) *Q119* #h(2pt) Ch 2 #h(0pt) *Q120* #h(2pt) Ch 6 \

== M.1 Complete Solutions

#sol-item(1, "D")[
  $a = dif v / dif t = 10t - 6$, so at $t = 2$ the acceleration is $14$ m/s². *Chapter 3.*
]

#sol-item(2, "B")[
  Integrating gives $y = 2x^2 + k$. Substituting $x = 1$, $y = 5$ gives $k = 3$, so $y = 2x^2 + 3$. *Chapter 4.*
]

#sol-item(3, "A")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(4, "C")[
  The modal class is the one with the highest frequency, $11$, so it is $20 - 29$. For grouped data a class is modal, not a single value. *Chapter 6.*
]

#sol-item(5, "C")[
  With an even count the median is the mean of the middle two, $(13 + 14)/2 = frac(27, 2)$. *Chapter 7.*
]

#sol-item(6, "B")[
  Coefficient of variation $= "SD" div "mean" times 100 = (2 div 20) times 100 = 10.0$ percent. *Chapter 8.*
]

#sol-item(7, "D")[
  With replacement the draws are independent, so multiply: $5/7 times 5/7 = frac(25, 49)$. *Chapter 10.*
]

#sol-item(8, "A")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $8/2 = 4$. *Chapter 1.*
]

#sol-item(9, "A")[
  $dif y / dif x = 6x + 4$, so at $x = -2$ the gradient is $6(-2) + 4 = -8$. *Chapter 2.*
]

#sol-item(10, "C")[
  $a = dif v / dif t = 10t - 2$, so at $t = 1$ the acceleration is $8$ m/s². *Chapter 3.*
]

#sol-item(11, "B")[
  Integrating gives $y = 2x^2 + x + k$. Substituting $x = 2$, $y = 14$ gives $k = 4$, so $y = 2x^2 + x + 4$. *Chapter 4.*
]

#sol-item(12, "D")[
  $s = integral_0^2 v dif t = -frac(1, 3)t^3 + frac(5, 2)t^2$, which at $t = 2$ is $12$ m. The velocity changes sign, so the displacement is smaller than the distance. *Chapter 5.*
]

#sol-item(13, "C")[
  Frequency $= "density" times "class width" = 2 times 10 = 20$. *Chapter 6.*
]

#sol-item(14, "D")[
  $Q_1$ occupies position $(11 + 1)/4 = 3$ and $Q_3$ position $3(11 + 1)/4 = 9$, so $Q_1 = 12$ and $Q_3 = 24$. The interquartile range is $24 - 12 = 12$. *Chapter 7.*
]

#sol-item(15, "B")[
  $sum x^2 = n(overline(x)^2 + sigma^2) = 7(9^2 + 4) = 595$. *Chapter 8.*
]

#sol-item(16, "A")[
  $12$ of the $52$ cards qualify, so the probability is $frac(12, 52) = frac(3, 13)$. *Chapter 10.*
]

#sol-item(17, "B")[
  The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio shrinks towards $0$. *Chapter 1.*
]

#sol-item(18, "A")[
  Bring each power down and reduce it: $9x^2 + 4x + 2$. A constant differentiates to zero. *Chapter 2.*
]

#sol-item(19, "D")[
  $a = dif v / dif t = 4t - 4$, so at $t = 3$ the acceleration is $8$ m/s². *Chapter 3.*
]

#sol-item(20, "C")[
  Integrate term by term: $2x^3 + 2x^2 + c$. *Chapter 4.*
]

#sol-item(21, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 2$, which is constant. *Chapter 5.*
]

#sol-item(22, "C")[
  Frequency $= "density" times "class width" = 2 times 20 = 40$. *Chapter 6.*
]

#sol-item(23, "A")[
  Combined mean $= (23 times 24 + 10 times 45) div 33 = frac(334, 11)$. The plain average of the two means ignores the sizes. *Chapter 7.*
]

#sol-item(24, "D")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $34$ and the SD stays $5$. *Chapter 8.*
]

#sol-item(25, "C")[
  After one red has gone there are $4$ reds left in $7$ balls, so the probability is $5/8 times 4/7 = frac(5, 14)$. *Chapter 10.*
]

#sol-item(26, "D")[
  $x^2 - 49 = (x - 7)(x + 7)$. After cancelling, the expression is $x + 7$, which tends to $14$ as $x -> 7$. *Chapter 1.*
]

#sol-item(27, "A")[
  The tangent gradient is $2(1) + 2 = 4$, so the normal gradient is $-frac(1, 4)$. *Chapter 2.*
]

#sol-item(28, "B")[
  The maximum occurs where $dif y / dif x = -4x + 4 = 0$, that is at $x = 1$. There $y = -6$. *Chapter 3.*
]

#sol-item(29, "C")[
  The antiderivative is $frac(2, 3)x^3 - frac(3, 2)x^2$. Substituting $3$ and $1$ and subtracting gives $frac(16, 3)$. *Chapter 4.*
]

#sol-item(30, "B")[
  Distance $= integral_0^1 v dif t = frac(2, 3)t^3 + t^2$ evaluated at $1$, giving $frac(5, 3)$ m. *Chapter 5.*
]

#sol-item(31, "A")[
  The modal class is the one with the highest frequency, $10$, so it is $10 - 19$. For grouped data a class is modal, not a single value. *Chapter 6.*
]

#sol-item(32, "D")[
  $Q_1$ occupies position $(11 + 1)/4 = 3$ and $Q_3$ position $3(11 + 1)/4 = 9$, so $Q_1 = 4$ and $Q_3 = 19$. The interquartile range is $19 - 4 = 15$. *Chapter 7.*
]

#sol-item(33, "A")[
  Range $= 37 - 3 = 34$. *Chapter 8.*
]

#sol-item(34, "C")[
  Two orders count: red then blue, and blue then red. Their probabilities are $7/11 times 4/10$ and $4/11 times 7/10$, and they add to $frac(28, 55)$. *Chapter 10.*
]

#sol-item(35, "D")[
  Substitute $x = 4$: $3(4)^2 + 5(4) + 8 = 76$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(36, "B")[
  $dif y / dif x = 2x - 1$, so at $x = 3$ the gradient is $2(3) + (-1) = 5$. *Chapter 2.*
]

#sol-item(37, "D")[
  $a = dif v / dif t = 8t + 5$, so at $t = 3$ the acceleration is $29$ m/s². *Chapter 3.*
]

#sol-item(38, "C")[
  Integrate term by term: $2x^3 + 4x^2 + 6x + c$. *Chapter 4.*
]

#sol-item(39, "B")[
  They meet at $x = 0$ and $x = 2$. $integral_0^2.0 (2x - 1x^2) dif x = frac(4, 3)$ square units. *Chapter 5.*
]

#sol-item(40, "A")[
  Frequency density $= 10 div 20 = frac(1, 2)$. Frequency density, not frequency, is what a histogram plots; it is frequency divided by class width. *Chapter 6.*
]

#sol-item(41, "B")[
  Adding a constant to every value adds the same constant to the mean: $13 + 7 = 20$. *Chapter 7.*
]

#sol-item(42, "D")[
  Mean $= frac(39, 5)$; the mean square deviation is $frac(194, 25)$. *Chapter 8.*
]

#sol-item(43, "A")[
  With replacement the draws are independent, so multiply: $7/11 times 7/11 = frac(49, 121)$. *Chapter 10.*
]

#sol-item(44, "C")[
  $x^2 - 16 = (x - 4)(x + 4)$. After cancelling, the expression is $x + 4$, which tends to $8$ as $x -> 4$. *Chapter 1.*
]

#sol-item(45, "D")[
  $v = dif s / dif t = 9t^2 - 8t$, so at $t = 2$, $v = 20$ m/s. *Chapter 2.*
]

#sol-item(46, "A")[
  $a = dif v / dif t = 6t - 2$, so at $t = 2$ the acceleration is $10$ m/s². *Chapter 3.*
]

#sol-item(47, "C")[
  Divide by the derivative of the bracket as well as by the new power: $(4x - 4)^4/(16) + c$. *Chapter 4.*
]

#sol-item(48, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(49, "A")[
  Frequency density $= 20 div 5 = 4$. Frequency density, not frequency, is what a histogram plots; it is frequency divided by class width. *Chapter 6.*
]

#sol-item(50, "C")[
  Each of $6, 19$ appears twice, more often than any other value, so the data are bimodal. *Chapter 7.*
]

#sol-item(51, "B")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $37$ and the SD stays $2$. *Chapter 8.*
]

#sol-item(52, "D")[
  With replacement the draws are independent, so multiply: $4/7 times 4/7 = frac(16, 49)$. *Chapter 10.*
]

#sol-item(53, "A")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $10/2 = 5$. *Chapter 1.*
]

#sol-item(54, "D")[
  $v = dif s / dif t = 12t^2 + 10t$, so at $t = 4$, $v = 232$ m/s. *Chapter 2.*
]

#sol-item(55, "B")[
  $y'' = 6x + 12$, which at $x = 0$ equals $12 > 0$. A positive second derivative means a minimum. *Chapter 3.*
]

#sol-item(56, "C")[
  Integrate term by term: $3x^3 + 2x^2 - x + c$. *Chapter 4.*
]

#sol-item(57, "B")[
  Distance $= integral_0^3 v dif t = frac(2, 3)t^3 + t^2$ evaluated at $3$, giving $27$ m. *Chapter 5.*
]

#sol-item(58, "A")[
  The mode is the value with the greatest frequency ($7$), which is $5$. *Chapter 6.*
]

#sol-item(59, "D")[
  Use the midpoints $5.5, 15.5, 25.5, 35.5$: $sum f x = 380$ over $sum f = 20$, giving $19$. *Chapter 7.*
]

#sol-item(60, "C")[
  Using the midpoints $5.5, 15.5, 25.5, 35.5$ the mean is $frac(913, 46)$; $sum f (x - overline(x))^2 = 45200/23$ over $23$ gives the variance $frac(45200, 529)$. *Chapter 8.*
]

#sol-item(61, "C")[
  Independent events multiply: $1/2 times 1/3 = 1/6$. *Chapter 10.*
]

#sol-item(62, "B")[
  Substitute $x = 3$: $1(3)^2 + (-4)(3) + 2 = -1$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(63, "D")[
  Bring each power down and reduce it: $9x^2 + -8x + -1$. A constant differentiates to zero. *Chapter 2.*
]

#sol-item(64, "A")[
  $A = pi r^2$, so $dif A / dif t = 2 pi r (dif r)/dif t = 2 pi (4)(3) = 24pi$ cm²/s. *Chapter 3.*
]

#sol-item(65, "B")[
  Integrating gives $y = 3x^2 + 2x + k$. Substituting $x = 1$, $y = 3$ gives $k = -2$, so $y = 3x^2 + 2x - 2$. *Chapter 4.*
]

#sol-item(66, "C")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 5$, which is constant. *Chapter 5.*
]

#sol-item(67, "A")[
  Range $= $ largest $-$ smallest $= 24 - 1 = 23$. *Chapter 6.*
]

#sol-item(68, "D")[
  $Q_1$ occupies position $(7 + 1)/4 = 2$ and $Q_3$ position $3(7 + 1)/4 = 6$, so $Q_1 = 10$ and $Q_3 = 18$. The interquartile range is $18 - 10 = 8$. *Chapter 7.*
]

#sol-item(69, "D")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $26$ and the SD stays $3$. *Chapter 8.*
]

#sol-item(70, "C")[
  With replacement the draws are independent, so multiply: $4/8 times 4/8 = frac(1, 4)$. *Chapter 10.*
]

#sol-item(71, "B")[
  The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio shrinks towards $0$. *Chapter 1.*
]

#sol-item(72, "A")[
  $v = dif s / dif t = 12t^2$, so at $t = 2$, $v = 48$ m/s. *Chapter 2.*
]

#sol-item(73, "A")[
  $a = dif v / dif t = 8t + 5$, so at $t = 2$ the acceleration is $21$ m/s². *Chapter 3.*
]

#sol-item(74, "D")[
  The antiderivative is $x^3 + x^2$. Substituting $3$ and $0$ and subtracting gives $36$. *Chapter 4.*
]

#sol-item(75, "C")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 4$, which is constant. *Chapter 5.*
]

#sol-item(76, "B")[
  $sum f x = 77$ and $sum f = 16$, so the mean is $frac(77, 16)$. *Chapter 6.*
]

#sol-item(77, "A")[
  Use the midpoints $5.5, 15.5, 25.5, 35.5$: $sum f x = 520$ over $sum f = 20$, giving $26$. *Chapter 7.*
]

#sol-item(78, "B")[
  The mean is $frac(21, 4)$; the deviations average to $frac(19, 8)$ in magnitude. *Chapter 8.*
]

#sol-item(79, "C")[
  There are $6$ equally likely outcomes and $2$ of them qualify, so the probability is $2/6 = frac(1, 3)$. *Chapter 10.*
]

#sol-item(80, "D")[
  The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio shrinks towards $0$. *Chapter 1.*
]

#sol-item(81, "A")[
  The tangent gradient is $4(2) + (-4) = 4$, so the normal gradient is $-frac(1, 4)$. *Chapter 2.*
]

#sol-item(82, "D")[
  $a = dif v / dif t = 4t + 6$, so at $t = 2$ the acceleration is $14$ m/s². *Chapter 3.*
]

#sol-item(83, "B")[
  Divide by the derivative of the bracket as well as by the new power: $(3x + 2)^4/(12) + c$. *Chapter 4.*
]

#sol-item(84, "C")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(85, "C")[
  Range $= $ largest $-$ smallest $= 29 - 3 = 26$. *Chapter 6.*
]

#sol-item(86, "D")[
  The sum is $132$ and there are $7$ numbers, so the mean is $frac(132, 7)$. *Chapter 7.*
]

#sol-item(87, "B")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $51$ and the SD stays $7$. *Chapter 8.*
]

#sol-item(88, "A")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $10/2 = 5$. *Chapter 1.*
]

#sol-item(89, "C")[
  Bring the power down, reduce it by one, then multiply by the derivative of the bracket, which is $4$: $12(4x - 6)^2$. *Chapter 2.*
]

#sol-item(90, "B")[
  Raise the power by one, divide by the new power and by $4$: $(4x + 1)^3/12 + c$. *Chapter 4.*
]

#sol-item(91, "A")[
  Each student is $2^degree$, so $36$ students occupy $36 times 2^degree = 72^degree$. *Chapter 6.*
]

#sol-item(92, "D")[
  Total $= 6 times frac(40, 3) = 80$; the known numbers add to $63$, so the remaining one is $80 - 63 = 17$. *Chapter 7.*
]

#sol-item(93, "D")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $35$ and the SD stays $5$. *Chapter 8.*
]

#sol-item(94, "A")[
  Both quadratics factorise: $(x - 6)(x + 6)$ over $(x - 6)(x - 1)$. Cancelling leaves $(x + 6)/(x - 1)$, which tends to $12/5 = frac(12, 5)$. *Chapter 1.*
]

#sol-item(95, "C")[
  The tangent gradient is $4(3) + (-1) = 11$, so the normal gradient is $-frac(1, 11)$. *Chapter 2.*
]

#sol-item(96, "B")[
  The antiderivative is $x^3 - frac(1, 2)x^2$. Substituting $2$ and $1$ and subtracting gives $frac(11, 2)$. *Chapter 4.*
]

#sol-item(97, "C")[
  The cumulative frequency up to $30$ is $4 + 2 + 9 = 15$. *Chapter 6.*
]

#sol-item(98, "B")[
  With an even count the median is the mean of the middle two, $(14 + 15)/2 = frac(29, 2)$. *Chapter 7.*
]

#sol-item(99, "A")[
  Mean $= 8$; the mean square deviation is $frac(21, 2)$. *Chapter 8.*
]

#sol-item(100, "D")[
  Substitute $x = -1$: $3(-1)^2 + (-1)(-1) + (-2) = 2$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(101, "D")[
  Multiply by the power and reduce it by one: $dif y / dif x = 2 times 2 x^1 = 4x^1$. *Chapter 2.*
]

#sol-item(102, "B")[
  Integrate term by term: $5x^3 - 2x^2 - 7x + c$. *Chapter 4.*
]

#sol-item(103, "A")[
  The cumulative frequencies pass $39/2 = frac(39, 2)$ inside the class $30 - 39$, which is therefore the median class. *Chapter 6.*
]

#sol-item(104, "C")[
  Combined mean $= (24 times 46 + 21 times 30) div 45 = frac(578, 15)$. The plain average of the two means ignores the sizes. *Chapter 7.*
]

#sol-item(105, "B")[
  Coefficient of variation $= "SD" div "mean" times 100 = (2 div 23) times 100 = 8.7$ percent. *Chapter 8.*
]

#sol-item(106, "D")[
  The denominator grows like $x^2$ while the numerator grows like $x$, so the ratio shrinks towards $0$. *Chapter 1.*
]

#sol-item(107, "A")[
  Set $dif y / dif x = 4x - 2 = 0$, so $x = frac(1, 2)$. *Chapter 2.*
]

#sol-item(108, "C")[
  Divide by the derivative of the bracket as well as by the new power: $(4x - 4)^5/(20) + c$. *Chapter 4.*
]

#sol-item(109, "A")[
  Frequency density $= 40 div 20 = 2$. Frequency density, not frequency, is what a histogram plots; it is frequency divided by class width. *Chapter 6.*
]

#sol-item(110, "B")[
  Use the midpoints $5.5, 15.5, 25.5, 35.5$: $sum f x = 521$ over $sum f = 22$, giving $frac(521, 22)$. *Chapter 7.*
]

#sol-item(111, "C")[
  Mean $= frac(19, 4)$; variance $= 5.6875$, so the standard deviation is $2.38$. *Chapter 8.*
]

#sol-item(112, "D")[
  Divide every term by $x^2$: the fractions $1/x$ and $1/x^2$ vanish, leaving $6/2 = 3$. *Chapter 1.*
]

#sol-item(113, "C")[
  $v = dif s / dif t = 9t^2 + 2t$, so at $t = 3$, $v = 87$ m/s. *Chapter 2.*
]

#sol-item(114, "D")[
  $integral_1^2 2x^2 dif x = 2/3[2^3 - 1^3] = frac(14, 3)$ square units. *Chapter 4.*
]

#sol-item(115, "B")[
  The mode is the value with the greatest frequency ($8$), which is $15$. *Chapter 6.*
]

#sol-item(116, "A")[
  Adding a constant to every value adds the same constant to the mean: $19 + 2 = 21$. *Chapter 7.*
]

#sol-item(117, "D")[
  Adding a constant moves the mean but leaves the spread untouched, so the mean becomes $38$ and the SD stays $5$. *Chapter 8.*
]

#sol-item(118, "A")[
  Substitute $x = -1$: $3(-1)^2 + (-2)(-1) + 5 = 10$. The function is a polynomial, so the limit is the value. *Chapter 1.*
]

#sol-item(119, "C")[
  $dif y / dif x = 2x - 5$, so at $x = 3$ the gradient is $2(3) + (-5) = 1$. *Chapter 2.*
]

#sol-item(120, "B")[
  $sum f x = 90$ and $sum f = 15$, so the mean is $6$. *Chapter 6.*
]

