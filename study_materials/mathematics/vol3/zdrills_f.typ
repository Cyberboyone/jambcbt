#import "template.typ": *

#current-chapter.update("Appendix F: Timed Drill 3 — Trigonometry & Bearings")

#import "template.typ": *

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Timed Drill 3 — Trigonometry & Bearings]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Timed Drill 3 — Trigonometry & Bearings]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twenty questions on ratios, special angles, coordinate geometry, bearings, elevation and the sine and cosine rules. Sixteen minutes.]
]

#v(5pt)

Draw the bearing diagram before you touch the calculator.

== F.1 Questions

#mcq(1, [A pyramid has a square base of side $6$ cm and height $6$ cm. Find its volume.], [$216$ cm³], [$108$ cm³], [$72$ cm³], [$36$ cm³])

#mcq(2, [Taking $R = 6300$ km and $pi = 22/7$, find the length of a meridian (pole to pole).], [$19800$ km], [$39600$ km], [$9900$ km], [$12600$ km])

#mcq(3, [Find the equation of the line of gradient $-2$ passing through $(0, -4)$.], [$y = -2x + 4$], [$y = -2x - 4$], [$y = 2x - 4$], [$y = -2x$])

#mcq(4, [The period of $y = sin x$ is], [$180^degree$], [$90^degree$], [$343^degree$], [$360^degree$])

#mcq(5, [In $triangle A B C$, $a = 4$ cm, $b = 6$ cm and $angle C = 60^degree$. Find $c$.], [$6$ cm], [$10$ cm], [$5$ cm], [$7$ cm])

#mcq(6, [Two angles of a triangle are $45^degree$ and $57^degree$. Find the third angle.], [$135^degree$], [$123^degree$], [$91^degree$], [$78^degree$])

#mcq(7, [Two angles of a triangle are $79^degree$ and $39^degree$. Find the exterior angle at the third vertex.], [$118^degree$], [$62^degree$], [$131^degree$], [$101^degree$])

#mcq(8, [Two tangents are drawn from an external point to a circle, and the angle between them is $107^degree$. Find the angle subtended by the chord of contact at the centre.], [$107^degree$], [$73^degree$], [$86^degree$], [$56^degree$])

#mcq(9, [Two circles of radii $5$ cm and $3$ cm have their centres $14$ cm apart. How many common tangents can be drawn to them?], [$4$], [$2$], [$1$], [$3$])

#mcq(10, [Find the area of a rhombus whose diagonals are $6$ cm and $19$ cm.], [$114$ cm²], [$228$ cm²], [$57$ cm²], [$25$ cm²])

#mcq(11, [Find the volume of a cuboid $4$ cm by $6$ cm by $6$ cm.], [$168$ cm³], [$144$ cm³], [$16$ cm³], [$72$ cm³])

#mcq(12, [Two towns on the equator differ in longitude by $90^degree$. Find the distance between them along the equator. (Take $R = 6300$ km, $pi = 22/7$.)], [$4950$ km], [$19800$ km], [$110$ km], [$9900$ km])

#mcq(13, [Find the distance between $(0, 0)$ and $(20, 21)$.], [$41$], [$31$], [$29$], [$58$])

#mcq(14, [In a right-angled triangle the side opposite $theta$ is $9$ cm, the side adjacent is $12$ cm and the hypotenuse is $15$ cm. Find $sin theta$.], [$frac(3, 5)$], [$frac(4, 5)$], [$frac(3, 4)$], [$frac(5, 3)$])

#mcq(15, [Write the direction N60E as a three-figure bearing.], [$"300"^degree$], [$"100"^degree$], [$"120"^degree$], [$"060"^degree$])

#mcq(16, [The interior angle of a regular polygon is $144^degree$. How many sides has it?], [$11$], [$10$], [$9$], [$20$])

#mcq(17, [Two triangles are similar. A side of the smaller is $5$ cm and the corresponding side of the larger is $20$ cm. If another side of the smaller is $12$ cm, find the corresponding side of the larger.], [$16$ cm], [$48$ cm], [$12$ cm], [$53$ cm])

#mcq(18, [In a cyclic quadrilateral, one angle is $69^degree$. Find the angle opposite to it.], [$111^degree$], [$69^degree$], [$159^degree$], [$124^degree$])

#mcq(19, [Points P are $4$ cm from A and $3$ cm from B, where AB $= 3$ cm. How many positions can P occupy?], [$4$], [$3$], [$7$], [$2$])

#mcq(20, [Find the perimeter of a sector of radius $14$ cm with angle $60^degree$. (Take $pi = 22/7$.)], [$frac(44, 3)$ cm], [$28$ cm], [$frac(128, 3)$ cm], [$88$ cm])

#pagebreak()

== F.1 Answer Key

#answer-key-grid((
  "C", "A", "B", "D", "C", "D", "A", "B", "A", "C",
  "B", "D", "C", "A", "D", "B", "B", "A", "D", "C",
))

== F.1 Complete Solutions

#sol-item(1, "C")[
  $V = 1/3 times$ base area $times h = 1/3 times 36 times 6 = 72$ cm³. *Chapter 6.*
]

#sol-item(2, "A")[
  Length $= 2 pi R = 2 times 22/7 times 6300 = 39600$ km; a meridian is half of that, 19800 km. *Chapter 7.*
]

#sol-item(3, "B")[
  $y - y_1 = m(x - x_1)$: $y - -4 = -2(x - 0)$, giving $y = -2x - 4$. *Chapter 8.*
]

#sol-item(4, "D")[
  Sine repeats every $360^degree$; tangent repeats every $180^degree$. *Chapter 9.*
]

#sol-item(5, "C")[
  $c^2 = a^2 + b^2 - 2 a b cos 60^degree = 16 + 36 - 24 = 28$, so $c = 5$ cm. *Chapter 10.*
]

#sol-item(6, "D")[
  The angles of a triangle total $180^degree$: $180 - 45 - 57 = 78^degree$. *Chapter 1.*
]

#sol-item(7, "A")[
  The exterior angle equals the sum of the two interior opposite angles: $79 + 39 = 118^degree$. *Chapter 2.*
]

#sol-item(8, "B")[
  The angle between the tangents and the angle at the centre are supplementary: $180 - 107 = 73^degree$. *Chapter 3.*
]

#sol-item(9, "A")[
  The radii differ by $2$ cm and sum to $8$ cm; since the centres are $14$ cm apart the circles do not meet, so they have $4$ common tangents. *Chapter 4.*
]

#sol-item(10, "C")[
  $A = 1/2 d_1 d_2 = 1/2 times 6 times 19 = 57$ cm². *Chapter 5.*
]

#sol-item(11, "B")[
  $V = l b h = 4 times 6 times 6 = 144$ cm³. *Chapter 6.*
]

#sol-item(12, "D")[
  On the equator the radius is $R$, and $1^degree = 110$ km, so the distance is $90 times 110 = 9900$ km. *Chapter 7.*
]

#sol-item(13, "C")[
  $d = sqrt(20^2 + 21^2) = sqrt(841) = 29$. *Chapter 8.*
]

#sol-item(14, "A")[
  $sin theta = frac(3, 5)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(15, "D")[
  Bearings are measured clockwise from North, so N60E is $"060"^degree$. *Chapter 10.*
]

#sol-item(16, "B")[
  Exterior angle $= 180^degree - 144^degree = 36^degree$; $n = 360 -: 36 = 10$. *Chapter 1.*
]

#sol-item(17, "B")[
  The scale factor is $20 -: 5 = 4$, so the side is $12 times 4 = 48$ cm. *Chapter 2.*
]

#sol-item(18, "A")[
  Opposite angles of a cyclic quadrilateral are supplementary: $180 - 69 = 111^degree$. *Chapter 3.*
]

#sol-item(19, "D")[
  Two circles of radii $4$ and $3$ with centres $3$ apart: the number of intersections is $2$ (compare $3$ with $7$ and $1$). *Chapter 4.*
]

#sol-item(20, "C")[
  Perimeter $= 2r +$ arc $= 28 + frac(44, 3) = frac(128, 3)$ cm. *Chapter 5.*
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
    [*17–20*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*14–16*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–13*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== F.1 Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

#table(
  columns: (1fr,) * 8,
  inset: 4pt,
  align: center + horizon,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Q1* #h(3pt) Ch 6], [*Q2* #h(3pt) Ch 7], [*Q3* #h(3pt) Ch 8], [*Q4* #h(3pt) Ch 9], [*Q5* #h(3pt) Ch 10], [*Q6* #h(3pt) Ch 1], [*Q7* #h(3pt) Ch 2], [*Q8* #h(3pt) Ch 3],
  [*Q9* #h(3pt) Ch 4], [*Q10* #h(3pt) Ch 5], [*Q11* #h(3pt) Ch 6], [*Q12* #h(3pt) Ch 7], [*Q13* #h(3pt) Ch 8], [*Q14* #h(3pt) Ch 9], [*Q15* #h(3pt) Ch 10], [*Q16* #h(3pt) Ch 1],
  [*Q17* #h(3pt) Ch 2], [*Q18* #h(3pt) Ch 3], [*Q19* #h(3pt) Ch 4], [*Q20* #h(3pt) Ch 5],
)

