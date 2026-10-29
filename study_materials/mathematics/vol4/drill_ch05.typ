#import "template.typ": *

#current-chapter.update("Chapter 5: Area Under a Curve and Motion — Drills")
#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 16pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[END-OF-CHAPTER DRILL]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Chapter 5 Practice Set]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.8pt, fill: rgb("#CBD5E1"))[
    42 exam-standard questions on area under a curve and motion. Attempt every question
    before turning to the key, then read the solution for each mistake.
  ]
]

#v(4pt)

== 5.7 Chapter 5 Practice Drill — 42 Questions

Forty-two questions graded in the order the CBT engine is likely to meet them. Allow thirty-five minutes; the key and a full solution for every question follow.

#mcq(1, [A particle has velocity $v = 5t^2 - t$ m/s. Find its displacement from $t = 0$ to $t = 3$ s.], [$frac(99, 4)$ m], [$18$ m], [$-18$ m], [$6$ m])

#mcq(2, [Find the total area enclosed between $y = x^2 - 4$ and the $x$-axis.], [$0$ square units], [$frac(16, 3)$ square units], [$frac(64, 3)$ square units], [$frac(32, 3)$ square units])

#mcq(3, [A particle has velocity $v = 3t^2 + 6t$ m/s. Find the distance travelled from $t = 0$ to $t = 1$ s.], [$9$ m], [$frac(11, 4)$ m], [$4$ m], [$8$ m])

#mcq(4, [Use the trapezium rule with four strips of width $0.5$ to estimate $integral_0^2 x^2 dif x$.], [$2.75$], [$2.5$], [$3.0$], [$2.625$])

#mcq(5, [Find the area under $y = x^2 + 1$ from $x = 2$ to $x = 4$.], [$frac(62, 3)$ square units], [$56$ square units], [$-frac(62, 3)$ square units], [$frac(56, 3)$ square units])

#mcq(6, [The velocity of a body is $v = 3t + 2$ m/s. Find its acceleration at $t = 3$ s.], [$11$ m/s²], [$frac(39, 2)$ m/s²], [$3$ m/s²], [$6$ m/s²])

#mcq(7, [A particle has velocity $v = 4t^2 - t$ m/s. Find its displacement from $t = 0$ to $t = 3$ s.], [$frac(63, 4)$ m], [$-9$ m], [$3$ m], [$9$ m])

#mcq(8, [Find the area under $y = x^2 + 2$ from $x = 1$ to $x = 2$.], [$7$ square units], [$frac(13, 3)$ square units], [$-frac(13, 3)$ square units], [$frac(7, 3)$ square units])

#mcq(9, [A body starts with speed $5$ m/s and accelerates uniformly at $1$ m/s². Find the distance covered in $2$ s.], [$12$ m], [$10$ m], [$7$ m], [$2$ m])

#mcq(10, [Find the total area enclosed between $y = x^2 - 1$ and the $x$-axis.], [$0$ square units], [$frac(2, 3)$ square units], [$frac(8, 3)$ square units], [$frac(4, 3)$ square units])

#mcq(11, [Find the area enclosed between $y = x^2$ and $y = x$.], [$1/3$ square units], [$1/6$ square units], [$1/2$ square units], [$1/12$ square units])

#mcq(12, [A body starts with speed $7$ m/s and accelerates uniformly at $1$ m/s². Find the distance covered in $4$ s.], [$28$ m], [$11$ m], [$36$ m], [$8$ m])

#mcq(13, [A body starts with speed $5$ m/s and accelerates uniformly at $2$ m/s². Find the distance covered in $4$ s.], [$20$ m], [$36$ m], [$13$ m], [$16$ m])

#mcq(14, [Find the area under $y = x^2 + 3$ from $x = 2$ to $x = 4$.], [$56$ square units], [$-frac(74, 3)$ square units], [$frac(74, 3)$ square units], [$frac(56, 3)$ square units])

#mcq(15, [A particle has velocity $v = t^2 + 4t$ m/s. Find the distance travelled from $t = 0$ to $t = 1$ s.], [$5$ m], [$frac(19, 12)$ m], [$frac(14, 3)$ m], [$frac(7, 3)$ m])

#mcq(16, [A particle has velocity $v = 3t^2 + t$ m/s. Find the distance travelled from $t = 0$ to $t = 3$ s.], [$frac(63, 2)$ m], [$30$ m], [$frac(279, 4)$ m], [$63$ m])

#mcq(17, [A body starts with speed $4$ m/s and accelerates uniformly at $2$ m/s². Find the distance covered in $3$ s.], [$12$ m], [$10$ m], [$21$ m], [$9$ m])

#mcq(18, [Find the area under $y = x^2 + 2$ from $x = 2$ to $x = 4$.], [$frac(68, 3)$ square units], [$56$ square units], [$-frac(68, 3)$ square units], [$frac(56, 3)$ square units])

#mcq(19, [A body starts with speed $2$ m/s and accelerates uniformly at $3$ m/s². Find the distance covered in $2$ s.], [$4$ m], [$10$ m], [$8$ m], [$6$ m])

#mcq(20, [A body starts with speed $2$ m/s and accelerates uniformly at $1$ m/s². Find the distance covered in $3$ s.], [$6$ m], [$5$ m], [$frac(9, 2)$ m], [$frac(21, 2)$ m])

#mcq(21, [A body starts with speed $5$ m/s and accelerates uniformly at $2$ m/s². Find the distance covered in $3$ s.], [$15$ m], [$24$ m], [$11$ m], [$9$ m])

#mcq(22, [Find the area between $y = 3x$, the $x$-axis, $x = 0$ and $x = 4$.], [$24$ square units], [$12$ square units], [$64$ square units], [$48$ square units])

#mcq(23, [A particle has velocity $v = t^2 + 2t$ m/s. Find the distance travelled from $t = 0$ to $t = 3$ s.], [$15$ m], [$frac(153, 4)$ m], [$18$ m], [$36$ m])

#mcq(24, [A particle has velocity $v = 3t^2 + 3t$ m/s. Find the distance travelled from $t = 0$ to $t = 2$ s.], [$18$ m], [$20$ m], [$28$ m], [$14$ m])

#mcq(25, [A body starts with speed $5$ m/s and accelerates uniformly at $3$ m/s². Find the distance covered in $4$ s.], [$20$ m], [$44$ m], [$17$ m], [$24$ m])

#mcq(26, [Find the total area enclosed between $y = x^2 - 9$ and the $x$-axis.], [$0$ square units], [$18$ square units], [$72$ square units], [$36$ square units])

#mcq(27, [The velocity of a body is $v = 2t + 1$ m/s. Find its acceleration at $t = 2$ s.], [$2$ m/s²], [$5$ m/s²], [$6$ m/s²], [$4$ m/s²])

#mcq(28, [Find the area under $y = x^2 + 1$ from $x = 2$ to $x = 3$.], [$19$ square units], [$-frac(22, 3)$ square units], [$frac(22, 3)$ square units], [$frac(19, 3)$ square units])

#mcq(29, [A particle has velocity $v = 3t^2 + 4t$ m/s. Find the distance travelled from $t = 0$ to $t = 2$ s.], [$20$ m], [$frac(68, 3)$ m], [$16$ m], [$32$ m])

#mcq(30, [A particle has velocity $v = 2t^2 + 2t$ m/s. Find the distance travelled from $t = 0$ to $t = 4$ s.], [$frac(176, 3)$ m], [$40$ m], [$frac(512, 3)$ m], [$frac(352, 3)$ m])

#mcq(31, [The velocity of a body is $v = 2t - 3$ m/s. Find its acceleration at $t = 3$ s.], [$3$ m/s²], [$2$ m/s²], [$0$ m/s²], [$4$ m/s²])

#mcq(32, [Find the area under $y = x^2 + 1$ from $x = 1$ to $x = 2$.], [$7$ square units], [$-frac(10, 3)$ square units], [$frac(7, 3)$ square units], [$frac(10, 3)$ square units])

#mcq(33, [A particle has velocity $v = t^2 + 4t$ m/s. Find the distance travelled from $t = 0$ to $t = 2$ s.], [$12$ m], [$frac(32, 3)$ m], [$frac(44, 3)$ m], [$frac(64, 3)$ m])

#mcq(34, [A particle has velocity $v = 2t^2 + 3t$ m/s. Find the distance travelled from $t = 0$ to $t = 3$ s.], [$27$ m], [$frac(135, 2)$ m], [$frac(63, 2)$ m], [$63$ m])

#mcq(35, [The velocity of a body is $v = 3t + 1$ m/s. Find its acceleration at $t = 2$ s.], [$7$ m/s²], [$8$ m/s²], [$6$ m/s²], [$3$ m/s²])

#mcq(36, [A body starts with speed $6$ m/s and accelerates uniformly at $1$ m/s². Find the distance covered in $4$ s.], [$32$ m], [$24$ m], [$10$ m], [$8$ m])

#mcq(37, [A particle has velocity $v = 5t^2 - t$ m/s. Find its displacement from $t = 0$ to $t = 4$ s.], [$frac(128, 3)$ m], [$16$ m], [$-16$ m], [$4$ m])

#mcq(38, [Find the area under $y = x^2 + 2$ from $x = 1$ to $x = 3$.], [$26$ square units], [$-frac(38, 3)$ square units], [$frac(26, 3)$ square units], [$frac(38, 3)$ square units])

#mcq(39, [The velocity of a body is $v = 3t - 1$ m/s. Find its acceleration at $t = 3$ s.], [$8$ m/s²], [$frac(21, 2)$ m/s²], [$3$ m/s²], [$6$ m/s²])

#mcq(40, [The velocity of a body is $v = 4t + 2$ m/s. Find its acceleration at $t = 2$ s.], [$4$ m/s²], [$10$ m/s²], [$12$ m/s²], [$8$ m/s²])

#mcq(41, [A particle has velocity $v = 3t^2 + 6t$ m/s. Find the distance travelled from $t = 0$ to $t = 2$ s.], [$20$ m], [$24$ m], [$28$ m], [$40$ m])

#mcq(42, [The velocity of a body is $v = 2t + 5$ m/s. Find its acceleration at $t = 2$ s.], [$9$ m/s²], [$2$ m/s²], [$14$ m/s²], [$4$ m/s²])

#pagebreak()

== 5.8 Quick Answer Key & Complete Solutions — Chapter 5

#answer-key-grid((
  "B", "D", "C", "A", "A", "C", "D", "B", "A", "D",
  "B", "C", "B", "C", "D", "A", "C", "A", "B", "D",
  "B", "A", "C", "D", "B", "D", "A", "C", "C", "A",
  "B", "D", "B", "C", "D", "A", "B", "D", "C", "A",
  "A", "B",
))

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF — CHAPTER 5]
  #v(3pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*35–42*], [Secure. Move to the next chapter; return to this drill in one week for a timed re-run.],
    [*29–34*], [Developing. Re-read the two worked examples nearest each mistake, then redo only the questions you missed.],
    [*0–28*], [Revise. The solution lines name the chapter every time — reopen the section cited most often.],
  )
]

#sol-item(1, "B")[
  $s = integral_0^3 v dif t = -frac(1, 3)t^3 + frac(5, 2)t^2$, which at $t = 3$ is $18$ m. The velocity changes sign, so the displacement is smaller than the distance. *Chapter 5.*
]

#sol-item(2, "D")[
  The curve cuts the axis at $x = +-2$. Each region has area $frac(16, 3)$, so the total is $frac(32, 3)$ square units — the raw integral over $[-2, 2]$ is zero and is not the area. *Chapter 5.*
]

#sol-item(3, "C")[
  Distance $= integral_0^1 v dif t = t^3 + 3t^2$ evaluated at $1$, giving $4$ m. *Chapter 5.*
]

#sol-item(4, "A")[
  The ordinates at $0, 0.5, 1, 1.5, 2$ are $0, 0.25, 1, 2.25, 4$. The rule gives $0.5/2[0 + 4 + 2(0.25 + 1 + 2.25)] = 0.25[4 + 7] = 2.75$. The exact value is $8/3 = 2.667$. *Chapter 5.*
]

#sol-item(5, "A")[
  $integral_2^4 (x^2 + 1) dif x = [x^3/3 + 1x]$. Substituting gives $frac(62, 3)$ square units. *Chapter 5.*
]

#sol-item(6, "C")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(7, "D")[
  $s = integral_0^3 v dif t = -frac(1, 3)t^3 + 2t^2$, which at $t = 3$ is $9$ m. The velocity changes sign, so the displacement is smaller than the distance. *Chapter 5.*
]

#sol-item(8, "B")[
  $integral_1^2 (x^2 + 2) dif x = [x^3/3 + 2x]$. Substituting gives $frac(13, 3)$ square units. *Chapter 5.*
]

#sol-item(9, "A")[
  $v = 5 + 1t$, and $integral_0^2 v dif t = 5t + 1/2t^2$ gives $12$ m after $2$ s. *Chapter 5.*
]

#sol-item(10, "D")[
  The curve cuts the axis at $x = +-1$. Each region has area $frac(2, 3)$, so the total is $frac(4, 3)$ square units — the raw integral over $[-1, 1]$ is zero and is not the area. *Chapter 5.*
]

#sol-item(11, "B")[
  They meet at $x = 0$ and $x = 1$. $integral_0^1 (x - x^2) dif x = 1/2 - 1/3 = 1/6$ square units. *Chapter 5.*
]

#sol-item(12, "C")[
  $v = 7 + 1t$, and $integral_0^4 v dif t = 7t + 1/2t^2$ gives $36$ m after $4$ s. *Chapter 5.*
]

#sol-item(13, "B")[
  $v = 5 + 2t$, and $integral_0^4 v dif t = 5t + 1t^2$ gives $36$ m after $4$ s. *Chapter 5.*
]

#sol-item(14, "C")[
  $integral_2^4 (x^2 + 3) dif x = [x^3/3 + 3x]$. Substituting gives $frac(74, 3)$ square units. *Chapter 5.*
]

#sol-item(15, "D")[
  Distance $= integral_0^1 v dif t = frac(1, 3)t^3 + 2t^2$ evaluated at $1$, giving $frac(7, 3)$ m. *Chapter 5.*
]

#sol-item(16, "A")[
  Distance $= integral_0^3 v dif t = t^3 + frac(1, 2)t^2$ evaluated at $3$, giving $frac(63, 2)$ m. *Chapter 5.*
]

#sol-item(17, "C")[
  $v = 4 + 2t$, and $integral_0^3 v dif t = 4t + 1t^2$ gives $21$ m after $3$ s. *Chapter 5.*
]

#sol-item(18, "A")[
  $integral_2^4 (x^2 + 2) dif x = [x^3/3 + 2x]$. Substituting gives $frac(68, 3)$ square units. *Chapter 5.*
]

#sol-item(19, "B")[
  $v = 2 + 3t$, and $integral_0^2 v dif t = 2t + 3/2t^2$ gives $10$ m after $2$ s. *Chapter 5.*
]

#sol-item(20, "D")[
  $v = 2 + 1t$, and $integral_0^3 v dif t = 2t + 1/2t^2$ gives $frac(21, 2)$ m after $3$ s. *Chapter 5.*
]

#sol-item(21, "B")[
  $v = 5 + 2t$, and $integral_0^3 v dif t = 5t + 1t^2$ gives $24$ m after $3$ s. *Chapter 5.*
]

#sol-item(22, "A")[
  $integral_0^4 3x dif x = 3/2x^2$ from $0$ to $4$, giving $24$ square units. *Chapter 5.*
]

#sol-item(23, "C")[
  Distance $= integral_0^3 v dif t = frac(1, 3)t^3 + t^2$ evaluated at $3$, giving $18$ m. *Chapter 5.*
]

#sol-item(24, "D")[
  Distance $= integral_0^2 v dif t = t^3 + frac(3, 2)t^2$ evaluated at $2$, giving $14$ m. *Chapter 5.*
]

#sol-item(25, "B")[
  $v = 5 + 3t$, and $integral_0^4 v dif t = 5t + 3/2t^2$ gives $44$ m after $4$ s. *Chapter 5.*
]

#sol-item(26, "D")[
  The curve cuts the axis at $x = +-3$. Each region has area $18$, so the total is $36$ square units — the raw integral over $[-3, 3]$ is zero and is not the area. *Chapter 5.*
]

#sol-item(27, "A")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 2$, which is constant. *Chapter 5.*
]

#sol-item(28, "C")[
  $integral_2^3 (x^2 + 1) dif x = [x^3/3 + 1x]$. Substituting gives $frac(22, 3)$ square units. *Chapter 5.*
]

#sol-item(29, "C")[
  Distance $= integral_0^2 v dif t = t^3 + 2t^2$ evaluated at $2$, giving $16$ m. *Chapter 5.*
]

#sol-item(30, "A")[
  Distance $= integral_0^4 v dif t = frac(2, 3)t^3 + t^2$ evaluated at $4$, giving $frac(176, 3)$ m. *Chapter 5.*
]

#sol-item(31, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 2$, which is constant. *Chapter 5.*
]

#sol-item(32, "D")[
  $integral_1^2 (x^2 + 1) dif x = [x^3/3 + 1x]$. Substituting gives $frac(10, 3)$ square units. *Chapter 5.*
]

#sol-item(33, "B")[
  Distance $= integral_0^2 v dif t = frac(1, 3)t^3 + 2t^2$ evaluated at $2$, giving $frac(32, 3)$ m. *Chapter 5.*
]

#sol-item(34, "C")[
  Distance $= integral_0^3 v dif t = frac(2, 3)t^3 + frac(3, 2)t^2$ evaluated at $3$, giving $frac(63, 2)$ m. *Chapter 5.*
]

#sol-item(35, "D")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(36, "A")[
  $v = 6 + 1t$, and $integral_0^4 v dif t = 6t + 1/2t^2$ gives $32$ m after $4$ s. *Chapter 5.*
]

#sol-item(37, "B")[
  $s = integral_0^4 v dif t = -frac(1, 3)t^3 + frac(5, 2)t^2$, which at $t = 4$ is $16$ m. The velocity changes sign, so the displacement is smaller than the distance. *Chapter 5.*
]

#sol-item(38, "D")[
  $integral_1^3 (x^2 + 2) dif x = [x^3/3 + 2x]$. Substituting gives $frac(38, 3)$ square units. *Chapter 5.*
]

#sol-item(39, "C")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 3$, which is constant. *Chapter 5.*
]

#sol-item(40, "A")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 4$, which is constant. *Chapter 5.*
]

#sol-item(41, "A")[
  Distance $= integral_0^2 v dif t = t^3 + 3t^2$ evaluated at $2$, giving $20$ m. *Chapter 5.*
]

#sol-item(42, "B")[
  Acceleration is the derivative of velocity, $a = dif v / dif t = 2$, which is constant. *Chapter 5.*
]

