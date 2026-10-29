#import "template.typ": *

#current-chapter.update("Appendix J: Speed Set")

#import "template.typ": *

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

#mcq(1, [Find the volume of a cylinder of radius $7$ cm and height $14$ cm. (Take $pi = 22/7$.)], [$2156$ cm³], [$616$ cm³], [$308$ cm³], [$frac(2156, 3)$ cm³])

#mcq(2, [Town P is on longitude $0^degree$ and town Q is $30^degree$ east of P. If the local time at P is 12:00 noon, what is the local time at Q?], [3:00 p.m.], [2:00 p.m.], [1:00 p.m.], [4:00 p.m.])

#mcq(3, [Find the distance between $(0, 0)$ and $(12, 16)$.], [$28$], [$192$], [$20$], [$22$])

#mcq(4, [In a right-angled triangle the side opposite $theta$ is $9$ cm, the side adjacent is $40$ cm and the hypotenuse is $41$ cm. Find $sin theta$.], [$frac(40, 41)$], [$frac(9, 40)$], [$frac(18, 41)$], [$frac(9, 41)$])

#mcq(5, [A boat sails on a bearing of $"260"^degree$ and then turns through $90^degree$ clockwise. What is its new bearing?], [$"170"^degree$], [$"350"^degree$], [$"015"^degree$], [$"260"^degree$])

#mcq(6, [Three angles meet at a point and measure $81^degree$, $105^degree$ and $108^degree$. Find the fourth.], [$174^degree$], [$86^degree$], [$33^degree$], [$66^degree$])

#mcq(7, [Find the area of a triangle with base $11$ cm and height $8$ cm.], [$44$ cm²], [$88$ cm²], [$22$ cm²], [$176$ cm²])

#mcq(8, [An arc subtends $44^degree$ at the circumference of a circle. Find the angle it subtends at the centre.], [$44^degree$], [$136^degree$], [$88^degree$], [$22^degree$])

#mcq(9, [Two circles of radii $6$ cm and $3$ cm have their centres $2$ cm apart. How many common tangents can be drawn to them?], [$4$], [$0$], [$1$], [$3$])

#mcq(10, [Find the length of an arc of a circle of radius $14$ cm subtending $60^degree$ at the centre. (Take $pi = 22/7$.)], [$frac(88, 3)$ cm], [$frac(308, 3)$ cm], [$88$ cm], [$frac(44, 3)$ cm])

#mcq(11, [A pyramid has a square base of side $6$ cm and height $12$ cm. Find its volume.], [$432$ cm³], [$216$ cm³], [$144$ cm³], [$72$ cm³])

#mcq(12, [Two towns on the equator differ in longitude by $45^degree$. Find the distance between them along the equator. (Take $R = 6300$ km, $pi = 22/7$.)], [$4950$ km], [$2475$ km], [$9900$ km], [$110$ km])

#mcq(13, [Find the centre of the circle $(x + 1)^2 + (y - 4)^2 = 25$.], [$(1, -4)$], [$(4, -1)$], [$(-1, 4)$], [$(5, 5)$])

#mcq(14, [In a right-angled triangle the side opposite $theta$ is $12$ cm, the side adjacent is $16$ cm and the hypotenuse is $20$ cm. Find $cos theta$.], [$frac(4, 5)$], [$frac(3, 5)$], [$frac(3, 4)$], [$frac(5, 4)$])

#mcq(15, [Write the bearing $"150"^degree$ as a compass direction of the form N/S angle E/W.], [N 60 E], [N 30 W], [S 60 E], [S 30 E])

#pagebreak()

== J.1 Answer Key

#answer-key-grid((
  "A", "B", "C", "D", "B", "D", "A", "C", "B", "D",
  "C", "A", "C", "A", "D",
))

== J.1 Complete Solutions

#sol-item(1, "A")[
  $V = pi r^2 h = 22/7 times 49 times 14 = 2156$ cm³. *Chapter 6.*
]

#sol-item(2, "B")[
  Q is east, so its local time is ahead: $30 times 4 = 120$ minutes. *Chapter 7.*
]

#sol-item(3, "C")[
  $d = sqrt(12^2 + 16^2) = sqrt(400) = 20$. *Chapter 8.*
]

#sol-item(4, "D")[
  $sin theta = frac(9, 41)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(5, "B")[
  $"260"^degree$ $+ 90^degree = 350^degree$, so the new bearing is $"350"^degree$. *Chapter 10.*
]

#sol-item(6, "D")[
  Angles at a point total $360^degree$: $360 - 81 - 105 - 108 = 66^degree$. *Chapter 1.*
]

#sol-item(7, "A")[
  $A = 1/2 b h = 1/2 times 11 times 8 = 44$ cm². *Chapter 2.*
]

#sol-item(8, "C")[
  Angle at the centre $= 2 times$ angle at the circumference $= 2 times 44 = 88^degree$. *Chapter 3.*
]

#sol-item(9, "B")[
  The radii differ by $3$ cm and sum to $9$ cm; since the centres are $2$ cm apart the circles lie one inside the other, so they have $0$ common tangents. *Chapter 4.*
]

#sol-item(10, "D")[
  Arc $= theta/360 times 2 pi r = 60/360 times 2 times 22/7 times 14 = frac(44, 3)$ cm. *Chapter 5.*
]

#sol-item(11, "C")[
  $V = 1/3 times$ base area $times h = 1/3 times 36 times 12 = 144$ cm³. *Chapter 6.*
]

#sol-item(12, "A")[
  On the equator the radius is $R$, and $1^degree = 110$ km, so the distance is $45 times 110 = 4950$ km. *Chapter 7.*
]

#sol-item(13, "C")[
  Comparing with $(x - h)^2 + (y - k)^2 = r^2$ gives the centre $(-1, 4)$. *Chapter 8.*
]

#sol-item(14, "A")[
  $cos theta = frac(4, 5)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(15, "D")[
  $"150"^degree$ lies in the quadrant whose axes are North/South and East/West, so it is written *S 30 E*. *Chapter 10.*
]

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

#table(
  columns: (1fr,) * 8,
  inset: 4pt,
  align: center + horizon,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Q1* #h(3pt) Ch 6], [*Q2* #h(3pt) Ch 7], [*Q3* #h(3pt) Ch 8], [*Q4* #h(3pt) Ch 9], [*Q5* #h(3pt) Ch 10], [*Q6* #h(3pt) Ch 1], [*Q7* #h(3pt) Ch 2], [*Q8* #h(3pt) Ch 3],
  [*Q9* #h(3pt) Ch 4], [*Q10* #h(3pt) Ch 5], [*Q11* #h(3pt) Ch 6], [*Q12* #h(3pt) Ch 7], [*Q13* #h(3pt) Ch 8], [*Q14* #h(3pt) Ch 9], [*Q15* #h(3pt) Ch 10],
)

