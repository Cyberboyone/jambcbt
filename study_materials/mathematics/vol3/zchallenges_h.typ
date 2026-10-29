#import "template.typ": *

#current-chapter.update("Appendix H: JAMB Challenge Set")

#import "template.typ": *

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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twenty questions of the kind that separate 280 from 320: two-step bearings, frustums, tangents, and trigonometric equations with two solutions in the range.]
]

#v(5pt)

Do not time this set. Aim for a complete written solution to every one.

== H.1 Questions

#mcq(1, [A pyramid has a square base of side $8$ cm and height $6$ cm. Find its volume.], [$128$ cm³], [$384$ cm³], [$192$ cm³], [$48$ cm³])

#mcq(2, [The circumference of the circle of latitude $60^degree$ is, as a fraction of the equator's circumference,], [one quarter], [the same], [one half], [one eighth])

#mcq(3, [Find the equation of the line of gradient $-2$ passing through $(-1, 1)$.], [$y = -2x + 1$], [$y = -2x - 1$], [$y = 2x - 1$], [$y = -2x$])

#mcq(4, [If $sin theta = frac(20, 29)$ and $theta$ is acute, find $cos theta$.], [$frac(20, 29)$], [$frac(9, 29)$], [$frac(239, 290)$], [$frac(21, 29)$])

#mcq(5, [From a point $10$ m from the foot of a vertical tower, the angle of elevation of the top is $45^degree$. Find the height of the tower.], [$20$ m], [$5$ m], [$30$ m], [$10$ m])

#mcq(6, [Find each exterior angle of a regular polygon with $9$ sides.], [$40^degree$], [$20^degree$], [$80^degree$], [$53^degree$])

#mcq(7, [Two triangles are similar. A side of the smaller is $5$ cm and the corresponding side of the larger is $15$ cm. If another side of the smaller is $12$ cm, find the corresponding side of the larger.], [$15$ cm], [$36$ cm], [$12$ cm], [$41$ cm])

#mcq(8, [Two tangents are drawn from an external point to a circle, and the angle between them is $98^degree$. Find the angle subtended by the chord of contact at the centre.], [$98^degree$], [$95^degree$], [$82^degree$], [$65^degree$])

#mcq(9, [A construction is described as "accurate". This means the answer must be], [measured with a protractor], [calculated from a formula], [constructed with compasses and ruler only], [estimated by eye])

#mcq(10, [Find the length of an arc of a circle of radius $7$ cm subtending $60^degree$ at the centre. (Take $pi = 22/7$.)], [$frac(22, 3)$ cm], [$frac(44, 3)$ cm], [$frac(77, 3)$ cm], [$44$ cm])

#mcq(11, [Find the total surface area of a cube of side $2$ cm.], [$4$ cm²], [$16$ cm²], [$8$ cm³], [$24$ cm²])

#mcq(12, [Two points on the same meridian are $555$ km apart. Find their difference in latitude, taking 1° as 111 km.], [$10^degree$], [$5^degree$], [$2^degree$], [$18^degree$])

#mcq(13, [Find the gradient of the line joining $(-8, 4)$ and $(3, -8)$.], [$frac(12, 11)$], [$-frac(11, 12)$], [$-frac(12, 11)$], [$-frac(1, 11)$])

#mcq(14, [In a right-angled triangle the side opposite $theta$ is $3$ cm, the side adjacent is $4$ cm and the hypotenuse is $5$ cm. Find $tan theta$.], [$frac(3, 4)$], [$frac(4, 3)$], [$frac(3, 5)$], [$frac(5, 3)$])

#mcq(15, [The bearing of Q from P is $"200"^degree$. Find the bearing of P from Q.], [$"200"^degree$], [$"020"^degree$], [$"160"^degree$], [$"290"^degree$])

#mcq(16, [Two straight lines intersect. One of the angles formed is $62^degree$. Find the angle vertically opposite to it.], [$118^degree$], [$28^degree$], [$75^degree$], [$62^degree$])

#mcq(17, [Two angles of a triangle are $34^degree$ and $76^degree$. Find the exterior angle at the third vertex.], [$70^degree$], [$123^degree$], [$110^degree$], [$93^degree$])

#mcq(18, [Two tangents are drawn from an external point to a circle, and the angle between them is $50^degree$. Find the angle subtended by the chord of contact at the centre.], [$130^degree$], [$50^degree$], [$100^degree$], [$143^degree$])

#mcq(19, [Points P are $3$ cm from A and $5$ cm from B, where AB $= 11$ cm. How many positions can P occupy?], [$2$], [$0$], [$4$], [$3$])

#mcq(20, [Find the area of a rectangle $16$ cm by $14$ cm.], [$60$ cm²], [$30$ cm²], [$112$ cm²], [$224$ cm²])

#pagebreak()

== H.1 Answer Key

#answer-key-grid((
  "A", "C", "B", "D", "D", "A", "B", "C", "C", "A",
  "D", "B", "C", "A", "B", "D", "C", "A", "B", "D",
))

== H.1 Complete Solutions

#sol-item(1, "A")[
  $V = 1/3 times$ base area $times h = 1/3 times 64 times 6 = 128$ cm³. *Chapter 6.*
]

#sol-item(2, "C")[
  The radius of the parallel is $R cos 60^degree = R/2$, so its circumference is half the equator's. *Chapter 7.*
]

#sol-item(3, "B")[
  $y - y_1 = m(x - x_1)$: $y - 1 = -2(x - -1)$, giving $y = -2x - 1$. *Chapter 8.*
]

#sol-item(4, "D")[
  $sin^2 theta + cos^2 theta = 1$, so $cos theta = sqrt(1 - frac(400, 841)) = frac(21, 29)$. *Chapter 9.*
]

#sol-item(5, "D")[
  $tan 45^degree = h/10$ and $tan 45^degree = 1$, so $h = 10$ m. *Chapter 10.*
]

#sol-item(6, "A")[
  The exterior angles of any polygon total $360^degree$, so each is $360^degree -: 9 = 40^degree$. *Chapter 1.*
]

#sol-item(7, "B")[
  The scale factor is $15 -: 5 = 3$, so the side is $12 times 3 = 36$ cm. *Chapter 2.*
]

#sol-item(8, "C")[
  The angle between the tangents and the angle at the centre are supplementary: $180 - 98 = 82^degree$. *Chapter 3.*
]

#sol-item(9, "C")[
  Accurate constructions use only a straight edge and compasses; a protractor would make it a measurement. *Chapter 4.*
]

#sol-item(10, "A")[
  Arc $= theta/360 times 2 pi r = 60/360 times 2 times 22/7 times 7 = frac(22, 3)$ cm. *Chapter 5.*
]

#sol-item(11, "D")[
  $S.A. = 6 a^2 = 6 times 4 = 24$ cm². *Chapter 6.*
]

#sol-item(12, "B")[
  $theta = 555 -: 111 = 5^degree$. *Chapter 7.*
]

#sol-item(13, "C")[
  $m = (y_2 - y_1)/(x_2 - x_1) = ((-8) - (4))/(3 - ((-8))) = -frac(12, 11)$. *Chapter 8.*
]

#sol-item(14, "A")[
  $tan theta = frac(3, 4)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(15, "B")[
  The back bearing is the forward bearing $plus.minus 180^degree$: $"200"^degree$ $plus.minus 180^degree = 20^degree$. *Chapter 10.*
]

#sol-item(16, "D")[
  Vertically opposite angles are equal, so the required angle is $62^degree$. The angle adjacent to it would be $118^degree$. *Chapter 1.*
]

#sol-item(17, "C")[
  The exterior angle equals the sum of the two interior opposite angles: $34 + 76 = 110^degree$. *Chapter 2.*
]

#sol-item(18, "A")[
  The angle between the tangents and the angle at the centre are supplementary: $180 - 50 = 130^degree$. *Chapter 3.*
]

#sol-item(19, "B")[
  Two circles of radii $3$ and $5$ with centres $11$ apart: the number of intersections is $0$ (compare $11$ with $8$ and $2$). *Chapter 4.*
]

#sol-item(20, "D")[
  $A = b h = 16 times 14 = 224$ cm². *Chapter 5.*
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

== H.1 Question Map

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

