#import "template.typ": *

#current-chapter.update("Mock Examination 1")

#import "template.typ": *

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 1 — Full Section III CBT Paper]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 1]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full Section III CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the exact format and difficulty spread of the Geometry, Mensuration and Trigonometry block of a real UTME Mathematics paper.]
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

+ The CBT calculator is four-function only — no sine, cosine or tangent keys.

+ Write your answers on rough paper, then mark yourself against the key.

== Mock 1 — Questions

#mcq(1, [Two parallel lines are cut by a transversal, forming an angle of $87^degree$ with one of them. Find the alternate angle to it.], [$93^degree$], [$3^degree$], [$174^degree$], [$87^degree$])

#mcq(2, [Two angles of a triangle are $42^degree$ and $37^degree$. Find the exterior angle at the third vertex.], [$101^degree$], [$92^degree$], [$79^degree$], [$62^degree$])

#mcq(3, [Two points P and Q lie on the same arc AB of a circle, with $angle A P B = 42^degree$. Find $angle A Q B$.], [$138^degree$], [$42^degree$], [$84^degree$], [$21^degree$])

#mcq(4, [Points P are $7$ cm from A and $3$ cm from B, where AB $= 8$ cm. How many positions can P occupy?], [$2$], [$4$], [$3$], [$7$])

#mcq(5, [Find the area of a parallelogram with base $10$ cm and height $13$ cm.], [$65$ cm²], [$46$ cm²], [$23$ cm²], [$130$ cm²])

#mcq(6, [Find the volume of a cylinder of radius $14$ cm and height $17$ cm. (Take $pi = 22/7$.)], [$1496$ cm³], [$10472$ cm³], [$748$ cm³], [$frac(10472, 3)$ cm³])

#mcq(7, [Two towns on latitude $60^degree N$ differ in longitude by $90^degree$. Find the distance between them along that parallel. (Take $R = 6300$ km, $pi = 22/7$.)], [$9900$ km], [$5060$ km], [$4950$ km], [$2475$ km])

#mcq(8, [Find the equation of the line of gradient $3$ passing through $(3, 10)$.], [$y = 3x + 1$], [$y = 3x - 1$], [$y = -3x + 1$], [$y = 3x$])

#mcq(9, [Evaluate $tan 45^degree$.], [$sqrt(2)/2$], [$2$], [$sqrt(3)$], [$1$])

#mcq(10, [Write the bearing $"300"^degree$ as a compass direction of the form N/S angle E/W.], [N 60 E], [N 60 W], [N 30 W], [S 60 E])

#mcq(11, [Two angles on a straight line are $46^degree$ and $67^degree$. Find the third angle.], [$134^degree$], [$113^degree$], [$67^degree$], [$80^degree$])

#mcq(12, [In an isosceles triangle the vertex angle is $74^degree$. Find each base angle.], [$53^degree$], [$106^degree$], [$58^degree$], [$8^degree$])

#mcq(13, [An arc subtends $71^degree$ at the centre of a circle. Find the angle it subtends at the circumference.], [$71^degree$], [$142^degree$], [$frac(289, 2)^degree$], [$frac(71, 2)^degree$])

#mcq(14, [Two circles of radii $5$ cm and $3$ cm have their centres $5$ cm apart. How many common tangents can be drawn to them?], [$2$], [$4$], [$1$], [$3$])

#mcq(15, [Find the area of a sector of radius $14$ cm which subtends $45^degree$ at the centre. (Take $pi = 22/7$.)], [$154$ cm²], [$77$ cm²], [$98$ cm²], [$11$ cm²])

#mcq(16, [Find the volume of a cuboid $9$ cm by $8$ cm by $8$ cm.], [$416$ cm³], [$25$ cm³], [$576$ cm³], [$288$ cm³])

#mcq(17, [Two towns on latitude $60^degree N$ differ in longitude by $60^degree$. Find the distance between them along that parallel. (Take $R = 6300$ km, $pi = 22/7$.)], [$6600$ km], [$3300$ km], [$3410$ km], [$1650$ km])

#mcq(18, [Find the gradient of the line joining $(-6, 0)$ and $(3, 8)$.], [$frac(8, 9)$], [$-frac(8, 9)$], [$frac(9, 8)$], [$frac(17, 9)$])

#mcq(19, [In a right-angled triangle the side opposite $theta$ is $16$ cm, the side adjacent is $30$ cm and the hypotenuse is $34$ cm. Find $sin theta$.], [$frac(15, 17)$], [$frac(8, 15)$], [$frac(8, 17)$], [$frac(17, 8)$])

#mcq(20, [Write the bearing $"120"^degree$ as a compass direction of the form N/S angle E/W.], [N 60 E], [N 30 W], [N 60 W], [S 60 E])

#mcq(21, [Two parallel lines are cut by a transversal, forming an angle of $50^degree$ with one of them. Find the alternate angle to it.], [$50^degree$], [$130^degree$], [$40^degree$], [$100^degree$])

#mcq(22, [Find the area of a triangle with base $17$ cm and height $7$ cm.], [$119$ cm²], [$frac(119, 2)$ cm²], [$frac(119, 4)$ cm²], [$238$ cm²])

#mcq(23, [In a cyclic quadrilateral, one angle is $123^degree$. Find the angle opposite to it.], [$123^degree$], [$70^degree$], [$57^degree$], [$40^degree$])

#mcq(24, [Points P are $7$ cm from A and $8$ cm from B, where AB $= 8$ cm. How many positions can P occupy?], [$4$], [$3$], [$7$], [$2$])

#mcq(25, [Find the area of a rhombus whose diagonals are $17$ cm and $12$ cm.], [$204$ cm²], [$408$ cm²], [$102$ cm²], [$29$ cm²])

#mcq(26, [Find the total surface area of a cube of side $8$ cm.], [$64$ cm²], [$256$ cm²], [$512$ cm³], [$384$ cm²])

#mcq(27, [Two towns differ in local time by $1$ hour. Find the difference in their longitudes.], [$15^degree$], [$30^degree$], [$frac(15, 2)^degree$], [$28^degree$])

#mcq(28, [Find the midpoint of the line joining $(-4, -4)$ and $(-2, -2)$.], [$(2, 2)$], [$(-3, -3)$], [$(-3, 2)$], [$(-6, -6)$])

#mcq(29, [In a right-angled triangle the side opposite $theta$ is $8$ cm, the side adjacent is $15$ cm and the hypotenuse is $17$ cm. Find $tan theta$.], [$frac(15, 8)$], [$frac(8, 17)$], [$frac(8, 15)$], [$frac(17, 8)$])

#mcq(30, [Write the direction S30W as a three-figure bearing.], [$"210"^degree$], [$"150"^degree$], [$"250"^degree$], [$"330"^degree$])

#mcq(31, [Two angles of a triangle are $46^degree$ and $65^degree$. Find the third angle.], [$134^degree$], [$115^degree$], [$82^degree$], [$69^degree$])

#mcq(32, [Two triangles are similar. A side of the smaller is $15$ cm and the corresponding side of the larger is $45$ cm. If another side of the smaller is $20$ cm, find the corresponding side of the larger.], [$23$ cm], [$60$ cm], [$20$ cm], [$75$ cm])

#mcq(33, [An arc subtends $124^degree$ at the centre of a circle. Find the angle it subtends at the circumference.], [$62^degree$], [$124^degree$], [$118^degree$], [$75^degree$])

#mcq(34, [Points P are $3$ cm from A and $2$ cm from B, where AB $= 5$ cm. How many positions can P occupy?], [$2$], [$4$], [$1$], [$3$])

#mcq(35, [Find the area of a trapezium with parallel sides $7$ cm and $6$ cm and height $10$ cm.], [$130$ cm²], [$42$ cm²], [$210$ cm²], [$65$ cm²])

#mcq(36, [Find the volume of a cuboid $3$ cm by $4$ cm by $8$ cm.], [$136$ cm³], [$96$ cm³], [$15$ cm³], [$48$ cm³])

#mcq(37, [Find the distance between two points on the same meridian at latitudes $20^degree N$ and $50^degree S$, taking 1° as 111 km.], [$3330$ km], [$3885$ km], [$3850$ km], [$7770$ km])

#mcq(38, [Find the gradient of the line joining $(-5, -6)$ and $(1, 3)$.], [$-frac(3, 2)$], [$frac(3, 2)$], [$frac(2, 3)$], [$frac(5, 2)$])

#mcq(39, [In a right-angled triangle the side opposite $theta$ is $15$ cm, the side adjacent is $20$ cm and the hypotenuse is $25$ cm. Find $tan theta$.], [$frac(3, 4)$], [$frac(4, 3)$], [$frac(3, 5)$], [$frac(5, 3)$])

#mcq(40, [Write the direction S30E as a three-figure bearing.], [$"210"^degree$], [$"190"^degree$], [$"150"^degree$], [$"030"^degree$])

#pagebreak()

== Mock 1 — Answer Key

#answer-key-grid((
  "D", "C", "B", "A", "D", "B", "C", "A", "D", "B",
  "C", "A", "D", "A", "B", "C", "B", "A", "C", "D",
  "A", "B", "C", "D", "C", "D", "A", "B", "C", "A",
  "D", "B", "A", "C", "D", "B", "D", "B", "A", "C",
))

== Mock 1 — Complete Solutions

#sol-item(1, "D")[
  Alternate angles are equal, so the alternate angle is also $87^degree$. *Chapter 1.*
]

#sol-item(2, "C")[
  The exterior angle equals the sum of the two interior opposite angles: $42 + 37 = 79^degree$. *Chapter 2.*
]

#sol-item(3, "B")[
  Angles in the same segment are equal. *Chapter 3.*
]

#sol-item(4, "A")[
  Two circles of radii $7$ and $3$ with centres $8$ apart: the number of intersections is $2$ (compare $8$ with $10$ and $4$). *Chapter 4.*
]

#sol-item(5, "D")[
  $A = b h = 10 times 13 = 130$ cm² (not $1/2 b h$ — that is the triangle). *Chapter 5.*
]

#sol-item(6, "B")[
  $V = pi r^2 h = 22/7 times 196 times 17 = 10472$ cm³. *Chapter 6.*
]

#sol-item(7, "C")[
  Radius of the parallel $= R cos 60^degree = 3150$ km, so $1^degree = 55$ km and the distance is $90 times 55 = 4950$ km. *Chapter 7.*
]

#sol-item(8, "A")[
  $y - y_1 = m(x - x_1)$: $y - 10 = 3(x - 3)$, giving $y = 3x + 1$. *Chapter 8.*
]

#sol-item(9, "D")[
  $tan 45^degree = 1$. *Chapter 9.*
]

#sol-item(10, "B")[
  $"300"^degree$ lies in the quadrant whose axes are North/South and East/West, so it is written *N 60 W*. *Chapter 10.*
]

#sol-item(11, "C")[
  Angles on a straight line add to $180^degree$: $180 - 46 - 67 = 67^degree$. *Chapter 1.*
]

#sol-item(12, "A")[
  The base angles are equal and total $180 - 74 = 106^degree$, so each is $53^degree$. *Chapter 2.*
]

#sol-item(13, "D")[
  Angle at the circumference $= 1/2 times$ angle at the centre $= frac(71, 2)^degree$. *Chapter 3.*
]

#sol-item(14, "A")[
  The radii differ by $2$ cm and sum to $8$ cm; since the centres are $5$ cm apart the circles intersect in two points, so they have $2$ common tangents. *Chapter 4.*
]

#sol-item(15, "B")[
  $A = theta/360 times pi r^2 = 45/360 times 22/7 times 196 = 77$ cm². *Chapter 5.*
]

#sol-item(16, "C")[
  $V = l b h = 9 times 8 times 8 = 576$ cm³. *Chapter 6.*
]

#sol-item(17, "B")[
  Radius of the parallel $= R cos 60^degree = 3150$ km, so $1^degree = 55$ km and the distance is $60 times 55 = 3300$ km. *Chapter 7.*
]

#sol-item(18, "A")[
  $m = (y_2 - y_1)/(x_2 - x_1) = (8 - (0))/(3 - ((-6))) = frac(8, 9)$. *Chapter 8.*
]

#sol-item(19, "C")[
  $sin theta = frac(8, 17)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(20, "D")[
  $"120"^degree$ lies in the quadrant whose axes are North/South and East/West, so it is written *S 60 E*. *Chapter 10.*
]

#sol-item(21, "A")[
  Alternate angles are equal, so the alternate angle is also $50^degree$. *Chapter 1.*
]

#sol-item(22, "B")[
  $A = 1/2 b h = 1/2 times 17 times 7 = frac(119, 2)$ cm². *Chapter 2.*
]

#sol-item(23, "C")[
  Opposite angles of a cyclic quadrilateral are supplementary: $180 - 123 = 57^degree$. *Chapter 3.*
]

#sol-item(24, "D")[
  Two circles of radii $7$ and $8$ with centres $8$ apart: the number of intersections is $2$ (compare $8$ with $15$ and $1$). *Chapter 4.*
]

#sol-item(25, "C")[
  $A = 1/2 d_1 d_2 = 1/2 times 17 times 12 = 102$ cm². *Chapter 5.*
]

#sol-item(26, "D")[
  $S.A. = 6 a^2 = 6 times 64 = 384$ cm². *Chapter 6.*
]

#sol-item(27, "A")[
  One hour corresponds to $15^degree$, so $1$ hours corresponds to $15^degree$. *Chapter 7.*
]

#sol-item(28, "B")[
  Midpoint $= ((x_1 + x_2)/2, (y_1 + y_2)/2) = (-3, -3)$. *Chapter 8.*
]

#sol-item(29, "C")[
  $tan theta = frac(8, 15)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(30, "A")[
  Bearings are measured clockwise from North, so S30W is $"210"^degree$. *Chapter 10.*
]

#sol-item(31, "D")[
  The angles of a triangle total $180^degree$: $180 - 46 - 65 = 69^degree$. *Chapter 1.*
]

#sol-item(32, "B")[
  The scale factor is $45 -: 15 = 3$, so the side is $20 times 3 = 60$ cm. *Chapter 2.*
]

#sol-item(33, "A")[
  Angle at the circumference $= 1/2 times$ angle at the centre $= 62^degree$. *Chapter 3.*
]

#sol-item(34, "C")[
  Two circles of radii $3$ and $2$ with centres $5$ apart: the number of intersections is $1$ (compare $5$ with $5$ and $1$). *Chapter 4.*
]

#sol-item(35, "D")[
  $A = 1/2 (a + b) h = 1/2 (7 + 6) times 10 = 65$ cm². *Chapter 5.*
]

#sol-item(36, "B")[
  $V = l b h = 3 times 4 times 8 = 96$ cm³. *Chapter 6.*
]

#sol-item(37, "D")[
  Opposite hemispheres: the angular distance is $20 + 50 = 70^degree$, so the distance is $70 times 111 = 7770$ km. *Chapter 7.*
]

#sol-item(38, "B")[
  $m = (y_2 - y_1)/(x_2 - x_1) = (3 - ((-6)))/(1 - ((-5))) = frac(3, 2)$. *Chapter 8.*
]

#sol-item(39, "A")[
  $tan theta = frac(3, 4)$ from the definitions SOH CAH TOA. *Chapter 9.*
]

#sol-item(40, "C")[
  Bearings are measured clockwise from North, so S30E is $"150"^degree$. *Chapter 10.*
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
    [*34–40*], [Secure. Next step: the next paper in this appendix, under the same conditions.],
    [*28–33*], [Developing. Every solution line ends with a chapter number — revise the chapter that appears most often.],
    [*0–27*], [Revise before re-testing. Redo this paper only after two drills in the weak chapters are back above 80 percent.],
  )
]

== Mock 1 — Question Map

Which chapter each question came from. If three or more of your misses spring from the same column, that chapter is the next revision task.

#table(
  columns: (1fr,) * 8,
  inset: 4pt,
  align: center + horizon,
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Q1* #h(3pt) Ch 1], [*Q2* #h(3pt) Ch 2], [*Q3* #h(3pt) Ch 3], [*Q4* #h(3pt) Ch 4], [*Q5* #h(3pt) Ch 5], [*Q6* #h(3pt) Ch 6], [*Q7* #h(3pt) Ch 7], [*Q8* #h(3pt) Ch 8],
  [*Q9* #h(3pt) Ch 9], [*Q10* #h(3pt) Ch 10], [*Q11* #h(3pt) Ch 1], [*Q12* #h(3pt) Ch 2], [*Q13* #h(3pt) Ch 3], [*Q14* #h(3pt) Ch 4], [*Q15* #h(3pt) Ch 5], [*Q16* #h(3pt) Ch 6],
  [*Q17* #h(3pt) Ch 7], [*Q18* #h(3pt) Ch 8], [*Q19* #h(3pt) Ch 9], [*Q20* #h(3pt) Ch 10], [*Q21* #h(3pt) Ch 1], [*Q22* #h(3pt) Ch 2], [*Q23* #h(3pt) Ch 3], [*Q24* #h(3pt) Ch 4],
  [*Q25* #h(3pt) Ch 5], [*Q26* #h(3pt) Ch 6], [*Q27* #h(3pt) Ch 7], [*Q28* #h(3pt) Ch 8], [*Q29* #h(3pt) Ch 9], [*Q30* #h(3pt) Ch 10], [*Q31* #h(3pt) Ch 1], [*Q32* #h(3pt) Ch 2],
  [*Q33* #h(3pt) Ch 3], [*Q34* #h(3pt) Ch 4], [*Q35* #h(3pt) Ch 5], [*Q36* #h(3pt) Ch 6], [*Q37* #h(3pt) Ch 7], [*Q38* #h(3pt) Ch 8], [*Q39* #h(3pt) Ch 9], [*Q40* #h(3pt) Ch 10],
)

