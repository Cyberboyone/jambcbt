#import "template.typ": *

#current-chapter.update("Appendix I: Mixed Revision Set")

#import "template.typ": *

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Mixed Revision Set]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Mixed Revision Set]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twenty questions drawn from every chapter, in the shuffled order the CBT engine uses. Twenty minutes.]
]

#v(5pt)

If you cannot name the chapter a question comes from within ten seconds, that chapter is not yet secure.

== I.1 Questions

#mcq(1, [Find the curved surface area of a cylinder of radius $7$ cm and height $12$ cm. (Take $pi = 22/7$.)], [$1848$ cm²], [$836$ cm²], [$528$ cm²], [$264$ cm²])

#mcq(2, [Find the distance between two points on the same meridian at latitudes $35^degree N$ and $65^degree S$, taking 1° as 111 km.], [$3330$ km], [$5550$ km], [$5500$ km], [$11100$ km])

#mcq(3, [Find the gradient of the line joining $(-2, -7)$ and $(-8, -6)$.], [$-frac(1, 6)$], [$frac(1, 6)$], [$-6$], [$frac(5, 6)$])

#mcq(4, [In a right-angled triangle the side opposite $theta$ is $15$ cm, the side adjacent is $20$ cm and the hypotenuse is $25$ cm. Find $sin theta$.], [$frac(4, 5)$], [$frac(3, 5)$], [$frac(3, 4)$], [$frac(5, 3)$])

#mcq(5, [The bearing of Q from P is $"110"^degree$. Find the bearing of P from Q.], [$"110"^degree$], [$"250"^degree$], [$"290"^degree$], [$"200"^degree$])

#mcq(6, [Two straight lines intersect. One of the angles formed is $144^degree$. Find the angle vertically opposite to it.], [$36^degree$], [$54^degree$], [$157^degree$], [$144^degree$])

#mcq(7, [Two angles of a triangle are $51^degree$ and $39^degree$. Find the exterior angle at the third vertex.], [$103^degree$], [$90^degree$], [$73^degree$], [$112^degree$])

#mcq(8, [A chord of a circle of radius $13$ cm is $5$ cm from the centre. Find the length of the chord.], [$24$ cm], [$12$ cm], [$18$ cm], [$21$ cm])

#mcq(9, [Points P are $3$ cm from A and $8$ cm from B, where AB $= 9$ cm. How many positions can P occupy?], [$4$], [$2$], [$3$], [$7$])

#mcq(10, [Find the perimeter of a sector of radius $7$ cm with angle $90^degree$. (Take $pi = 22/7$.)], [$25$ cm], [$11$ cm], [$14$ cm], [$44$ cm])

#mcq(11, [Find the volume of a cuboid $3$ cm by $5$ cm by $8$ cm.], [$158$ cm³], [$16$ cm³], [$120$ cm³], [$60$ cm³])

#mcq(12, [Two towns differ in local time by $6$ hours. Find the difference in their longitudes.], [$180^degree$], [$45^degree$], [$105^degree$], [$90^degree$])

#mcq(13, [Find the midpoint of the line joining $(7, -7)$ and $(-1, -3)$.], [$(-8, 4)$], [$(3, 4)$], [$(3, -5)$], [$(6, -10)$])

#mcq(14, [In a right-angled triangle the side opposite $theta$ is $9$ cm, the side adjacent is $40$ cm and the hypotenuse is $41$ cm. Find $cos theta$.], [$frac(40, 41)$], [$frac(9, 41)$], [$frac(9, 40)$], [$frac(41, 40)$])

#mcq(15, [From a point $9$ m from the foot of a vertical tower, the angle of elevation of the top is $60^degree$. Find the height of the tower.], [$9sqrt(3)/3$ m], [$9sqrt(3)$ m], [$9$ m], [$27$ m])

#mcq(16, [Two parallel lines are cut by a transversal. One interior angle is $69^degree$. Find the co-interior angle on the same side.], [$69^degree$], [$159^degree$], [$124^degree$], [$111^degree$])

#mcq(17, [Find the area of a triangle with base $6$ cm and height $12$ cm.], [$36$ cm²], [$72$ cm²], [$18$ cm²], [$144$ cm²])

#mcq(18, [The angle between a tangent and a chord at the point of contact is $57^degree$. Find the angle in the alternate segment.], [$123^degree$], [$114^degree$], [$57^degree$], [$33^degree$])

#mcq(19, [PQ = $14$ cm. A point X moves so that $angle P X Q = 90^degree$. The radius of the circle on which X lies is], [$14$ cm], [$28$ cm], [$frac(14, 3)$ cm], [$7$ cm])

#mcq(20, [Find the area of a rectangle $14$ cm by $13$ cm.], [$54$ cm²], [$182$ cm²], [$27$ cm²], [$91$ cm²])

#pagebreak()

== I.1 Answer Key

#answer-key-grid((
  "C", "D", "A", "B", "C", "D", "B", "A", "B", "A",
  "C", "D", "C", "A", "B", "D", "A", "C", "D", "B",
))

== I.1 Complete Solutions

#sol-item(1, "C")[
  Curved area $= 2 pi r h = 2 times 22/7 times 7 times 12 = 528$ cm². *Chapter 6.*
]

#sol-item(2, "D")[
  Opposite hemispheres: the angular distance is $35 + 65 = 100^degree$, so the distance is $100 times 111 = 11100$ km. *Chapter 7.*
]

#sol-item(3, "A")[
  $m = (y_2 - y_1)/(x_2 - x_1) = ((-6) - ((-7)))/((-8) - ((-2))) = -frac(1, 6)$. *Chapter 8.*
]

#sol-item(4, "B")[
  $sin theta = frac(3, 5)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(5, "C")[
  The back bearing is the forward bearing $plus.minus 180^degree$: $"110"^degree$ $plus.minus 180^degree = 290^degree$. *Chapter 10.*
]

#sol-item(6, "D")[
  Vertically opposite angles are equal, so the required angle is $144^degree$. The angle adjacent to it would be $36^degree$. *Chapter 1.*
]

#sol-item(7, "B")[
  The exterior angle equals the sum of the two interior opposite angles: $51 + 39 = 90^degree$. *Chapter 2.*
]

#sol-item(8, "A")[
  Half the chord $= sqrt(13^2 - 5^2) = 12$, so the chord is $24$ cm. *Chapter 3.*
]

#sol-item(9, "B")[
  Two circles of radii $3$ and $8$ with centres $9$ apart: the number of intersections is $2$ (compare $9$ with $11$ and $5$). *Chapter 4.*
]

#sol-item(10, "A")[
  Perimeter $= 2r +$ arc $= 14 + 11 = 25$ cm. *Chapter 5.*
]

#sol-item(11, "C")[
  $V = l b h = 3 times 5 times 8 = 120$ cm³. *Chapter 6.*
]

#sol-item(12, "D")[
  One hour corresponds to $15^degree$, so $6$ hours corresponds to $90^degree$. *Chapter 7.*
]

#sol-item(13, "C")[
  Midpoint $= ((x_1 + x_2)/2, (y_1 + y_2)/2) = (3, -5)$. *Chapter 8.*
]

#sol-item(14, "A")[
  $cos theta = frac(40, 41)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(15, "B")[
  $tan 60^degree = h/9 = sqrt(3)$, so $h = 9 sqrt(3)$ m. *Chapter 10.*
]

#sol-item(16, "D")[
  Co-interior (allied) angles are supplementary: $180 - 69 = 111^degree$. *Chapter 1.*
]

#sol-item(17, "A")[
  $A = 1/2 b h = 1/2 times 6 times 12 = 36$ cm². *Chapter 2.*
]

#sol-item(18, "C")[
  By the alternate segment theorem the two angles are equal. *Chapter 3.*
]

#sol-item(19, "D")[
  $angle P X Q = 90^degree$ puts X on the circle with PQ as diameter, so the radius is $14/2 = 7$ cm. *Chapter 4.*
]

#sol-item(20, "B")[
  $A = b h = 14 times 13 = 182$ cm². *Chapter 5.*
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

== I.1 Question Map

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

