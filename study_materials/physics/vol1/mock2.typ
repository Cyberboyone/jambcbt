#import "template.typ": *

#current-chapter.update("Mock Examination 2")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 2 — Second Full-Syllabus CBT Paper]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Second Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A second forty-question paper built from different items: the same syllabus coverage with more of the graph, laboratory and calculation questions. Sit it a week after Mock 1.]
]

#v(5pt)

+ Forty questions, forty minutes, no negative marking.

+ Expect at least twelve questions that need a calculation before the choice can be made.

+ Mark only after the full forty minutes have elapsed.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[31 / 40]],
)

== Mock Examination 2 — Questions

#mcq(1, [A wheel turns at 20 rad s⁻¹. Its period of rotation is], [0.16 s], [0.31 s], [3.1 s], [20 s])

#mcq(2, [A steel wire and a rubber cord of the same length and area are stretched by the same force. The steel stretches less because], [steel is denser], [rubber is colder], [steel is magnetic], [steel has a larger Young modulus])

#mcq(3, [A vernier scale has 10 divisions equal in length to 9 mm on the main scale. Its least count is], [0.1 mm], [0.01 mm], [1 mm], [0.05 mm])

#mcq(4, [A body moving at 20 m s⁻¹ decelerates uniformly at 4 m s⁻². The distance it covers before stopping is], [5 m], [20 m], [50 m], [80 m])

#mcq(5, [Two forces of 10 N each act in opposite directions 0.20 m apart. The couple is], [0.020 N m], [20 N m], [2.0 N m], [200 N m])

#mcq(6, [A boy carries a load horizontally at constant speed. The work he does on the load is], [maximum], [equal to the weight], [equal to the distance], [zero, because the force is vertical and the motion horizontal])

#mcq(7, [Simple harmonic motion is motion in which the acceleration is], [proportional to the displacement and directed towards a fixed point], [constant], [proportional to the velocity], [directed away from a fixed point])

#mcq(8, [A wire that does not return to its original length after the load is removed has been stretched beyond its], [yield point only], [elastic limit], [breaking point], [limit of proportionality])

#mcq(9, [A density of 800 kg m⁻³ expressed in g cm⁻³ is], [0.080], [0.80], [8.0], [800])

#mcq(10, [A ball is dropped from a table while another is thrown horizontally from the same height. They reach the floor], [the dropped one first], [the thrown one first], [at the same time], [in an order that depends on their masses])

#mcq(11, [A man of mass 60 kg stands in a lift accelerating upward at 2.0 m s⁻². The reaction from the floor is ($g = 10$ m s⁻²)], [120 N], [480 N], [600 N], [720 N])

#mcq(12, [A heater of power 1.0 kW runs for 30 minutes. The energy supplied is], [1.8 × 10⁶ J], [1.8 × 10⁴ J], [1.8 × 10⁵ J], [1.8 × 10⁷ J])

#mcq(13, [A body moves in a circle at constant angular speed. If the radius is doubled, its linear speed], [is halved], [stays the same], [is doubled], [is quadrupled])

#mcq(14, [The density of that body is], [2000 kg m⁻³], [8000 kg m⁻³], [500 kg m⁻³], [5000 kg m⁻³])

#mcq(15, [Which of the following is a fundamental quantity?], [Length], [Area], [Force], [Velocity])

#mcq(16, [A body falls freely from rest. The time it takes to fall 20 m is ($g = 10$ m s⁻²)], [1 s], [2 s], [4 s], [20 s])

#mcq(17, [A mass of 4.0 kg hangs 0.30 m from the pivot of a beam. To balance it, a mass hung 0.40 m from the pivot on the other side must be], [2.0 kg], [3.0 kg], [4.0 kg], [5.3 kg])

#mcq(18, [An engine of power 20 kW drives a car at a steady 10 m s⁻¹. The driving force is], [200 N], [20 000 N], [2000 N], [200 000 N])

#mcq(19, [The amplitude of a damped oscillator falls steadily because], [energy is lost to friction and air resistance], [its mass decreases], [gravity weakens], [its period changes])

#mcq(20, [The pressure at a point in a liquid at rest depends on], [the shape of the vessel], [the volume of the liquid], [the area of the base], [the depth and the density of the liquid])

#mcq(21, [The measurement 5.00 cm has], [1 significant figure], [3 significant figures], [2 significant figures], [5 significant figures])

#mcq(22, [The ball in the last question lands a horizontal distance from the table of], [1.5 m], [0.75 m], [3.0 m], [6.0 m])

#mcq(23, [The impulse of a force is equal to the], [change in kinetic energy], [work done], [rate of change of momentum], [change in momentum])

#mcq(24, [A force acts at right angles to the displacement of a body. The work done by the force is], [maximum], [negative], [zero], [equal to the force])

#mcq(25, [Two bodies of mass 1.0 kg and 4.0 kg are 0.50 m apart. Taking $G = 6.7 times 10^(-11)$ N m² kg⁻², the force between them is], [$1.1 times 10^(-10)$ N], [$1.1 times 10^(-9)$ N], [$5.4 times 10^(-9)$ N], [$2.7 times 10^(-9)$ N])

#mcq(26, [A force of 500 N acts on an area of 0.25 m². The pressure is], [125 Pa], [500 Pa], [2000 Pa], [12 500 Pa])

#mcq(27, [Which of the following is a scalar quantity?], [Velocity], [Displacement], [Force], [Mass])

#mcq(28, [A car starts from rest and accelerates uniformly at 4 m s⁻² for 5 s. Its final speed is], [20 m s⁻¹], [9 m s⁻¹], [25 m s⁻¹], [40 m s⁻¹])

#mcq(29, [A car of mass 1500 kg accelerates from rest to 20 m s⁻¹ in 10 s. The average force is], [3000 N], [300 N], [1500 N], [30 000 N])

#mcq(30, [The mechanical energy of a swinging pendulum stays constant if], [the string is long], [the bob is heavy], [the angle is large], [air resistance is ignored])

#mcq(31, [The maximum acceleration of that body is], [0.80 m s⁻²], [3.2 m s⁻²], [1.6 m s⁻²], [16 m s⁻²])

#mcq(32, [Hooke's law is obeyed], [up to the breaking point], [at all extensions], [up to the limit of proportionality], [only for rubber])

#mcq(33, [A distance of 5.0 km expressed in metres is], [5.0 m], [50 m], [5000 m], [500 m])

#mcq(34, [A body accelerating uniformly from rest covers a distance proportional to], [$t$], [$t^2$], [$1\/t$], [$sqrt(t)$])

#mcq(35, [A force of 20 N acts for 3.0 s. The impulse is], [60 N s], [6.7 N s], [23 N s], [600 N s])

#mcq(36, [A boy of mass 50 kg climbs a staircase 3.0 m high in 5.0 s. His power output is ($g = 10$ m s⁻²)], [30 W], [150 W], [1500 W], [300 W])

#mcq(37, [The escape velocity from a planet of mass $M$ and radius $R$ is], [$sqrt(2 G M \/ R)$], [$sqrt(G M \/ R)$], [$2 G M \/ R$], [$sqrt(2 G M R)$])

#mcq(38, [The Young modulus of a material is measured in], [N], [N m⁻¹], [N m⁻²], [J])

#mcq(39, [Which pair of quantities has the same dimensions?], [Work and power], [Work and energy], [Force and momentum], [Energy and power])

#mcq(40, [A body moves once round a circle of radius 7 m and returns to its start. Its displacement is], [7 m], [14 m], [44 m], [0])

#pagebreak()

== Mock Examination 2 — Answer Key

#answer-key-grid((
  "B", "D", "A", "C", "C", "D", "A", "B", "B", "C",
  "D", "A", "C", "D", "A", "B", "B", "C", "A", "D",
  "B", "A", "D", "C", "B", "C", "D", "A", "A", "D",
  "B", "C", "C", "B", "A", "D", "A", "C", "B", "D",
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
    [*34–40*], [Secure. Sit the next paper under the same conditions within a week.],
    [*28–33*], [Developing. Group your misses by chapter in the Question Map and revise the heaviest one.],
    [*0–27*], [Revise before re-testing. Reread the chapter and redo its drill first.],
  )
]

== Mock Examination 2 — Question Map

Which chapter each question came from, grouped so that a column of misses in your script becomes a revision list. Tick every question you got wrong; the chapter with the longest tick list is the one to revise tonight, before you re-sit the paper.

#table(
  columns: (0.42fr, 1.75fr, 2.55fr, 0.5fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.]),
  [1], [Measurement, Units and Dimensions], [3, 9, 15, 21, 27, 33, 39], [7],
  [2], [Motion in a Straight Line], [4, 10, 16, 22, 28, 34, 40], [7],
  [3], [Forces, Newton's Laws and Momentum], [5, 11, 17, 23, 29, 35], [6],
  [4], [Work, Energy, Power and Machines], [6, 12, 18, 24, 30, 36], [6],
  [5], [Circular Motion, Gravitation and SHM], [1, 7, 13, 19, 25, 31, 37], [7],
  [6], [Properties of Matter], [2, 8, 14, 20, 26, 32, 38], [7],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 2 — Complete Solutions
  #sol-item(1, "B", dense: true, pad: 7.5pt)[
    *Chapter 5.* $T = 2 pi \/ omega = 6.28\/20 = 0.31$ s.
  ]

  #sol-item(2, "D", dense: true, pad: 7.5pt)[
    *Chapter 6.* A larger modulus means a smaller strain for the same stress.
  ]
  ]

  #sol-item(3, "A", dense: true, pad: 7.5pt)[
    *Chapter 1.* Least count $= 1$ mm $-$ 0.9 mm $= 0.1$ mm.
  ]

  #sol-item(4, "C", dense: true, pad: 7.5pt)[
    *Chapter 2.* $s = u^2 \/ (2a) = 400\/8 = 50$ m.
  ]

  #sol-item(5, "C", dense: true, pad: 7.5pt)[
    *Chapter 3.* A couple's moment is one force times the perpendicular separation: $10 times 0.20 = 2.0$ N m.
  ]

  #sol-item(6, "D", dense: true, pad: 7.5pt)[
    *Chapter 4.* $W = F s cos theta$ with $theta = 90$°, so no work is done by the upward force.
  ]

  #sol-item(7, "A", dense: true, pad: 7.5pt)[
    *Chapter 5.* $a = -omega^2 x$ is the defining relation.
  ]

  #sol-item(8, "B", dense: true, pad: 7.5pt)[
    *Chapter 6.* Permanent extension begins beyond the elastic limit, which is where plastic deformation starts.
  ]

  #sol-item(9, "B", dense: true, pad: 7.5pt)[
    *Chapter 1.* Divide by 1000: $800$ kg m⁻³ $= 0.80$ g cm⁻³.
  ]

  #sol-item(10, "C", dense: true, pad: 7.5pt)[
    *Chapter 2.* The vertical motion of both is free fall from rest, so the horizontal velocity does not affect the time of fall.
  ]

  #sol-item(11, "D", dense: true, pad: 7.5pt)[
    *Chapter 3.* $R - m g = m a$, so $R = 60(10 + 2) = 720$ N.
  ]

  #sol-item(12, "A", dense: true, pad: 7.5pt)[
    *Chapter 4.* $E = 1000 times 1800 = 1.8 times 10^6$ J.
  ]

  #sol-item(13, "C", dense: true, pad: 7.5pt)[
    *Chapter 5.* $v = omega r$, so doubling $r$ at the same $omega$ doubles $v$.
  ]

  #sol-item(14, "D", dense: true, pad: 7.5pt)[
    *Chapter 6.* Its mass is $0.20$ kg, so $rho = 0.20 \/ 4.0 times 10^(-5) = 5000$ kg m⁻³.
  ]

  #sol-item(15, "A", dense: true, pad: 7.5pt)[
    *Chapter 1.* Mass, length, time, current, temperature, amount of substance and luminous intensity are the base quantities; area and force are derived from them.
  ]

  #sol-item(16, "B", dense: true, pad: 7.5pt)[
    *Chapter 2.* $s = (1\/2) g t^2$, so $t = sqrt(2 s \/ g) = sqrt(40\/10) = 2$ s.
  ]

  #sol-item(17, "B", dense: true, pad: 7.5pt)[
    *Chapter 3.* The moments balance: $4.0 times 0.30 = m times 0.40$, so $m = 3.0$ kg.
  ]

  #sol-item(18, "C", dense: true, pad: 7.5pt)[
    *Chapter 4.* $P = F v$, so $F = 20 000 \/ 10 = 2000$ N.
  ]

  #sol-item(19, "A", dense: true, pad: 7.5pt)[
    *Chapter 5.* Damping removes mechanical energy from the system on every cycle, so the swings grow smaller.
  ]

  #sol-item(20, "D", dense: true, pad: 7.5pt)[
    *Chapter 6.* $p = rho g h$: only the depth, the density and $g$ matter, not the shape of the container.
  ]

  #sol-item(21, "B", dense: true, pad: 7.5pt)[
    *Chapter 1.* The trailing zeros after the decimal point are significant, so there are three.
  ]

  #sol-item(22, "A", dense: true, pad: 7.5pt)[
    *Chapter 2.* $x = v_x t = 3 times 0.50 = 1.5$ m.
  ]

  #sol-item(23, "D", dense: true, pad: 7.5pt)[
    *Chapter 3.* Impulse is $F t$, which by Newton's second law equals the change in momentum.
  ]

  #sol-item(24, "C", dense: true, pad: 7.5pt)[
    *Chapter 4.* $cos 90$° is zero, which is why the centripetal force does no work on a body in circular motion.
  ]

  #sol-item(25, "B", dense: true, pad: 7.5pt)[
    *Chapter 5.* $F = G m_1 m_2 \/ r^2 = (6.7 times 10^(-11))(4.0)\/(0.25) = 1.1 times 10^(-9)$ N.
  ]

  #sol-item(26, "C", dense: true, pad: 7.5pt)[
    *Chapter 6.* $p = 500\/0.25 = 2000$ Pa.
  ]

  #sol-item(27, "D", dense: true, pad: 7.5pt)[
    *Chapter 1.* Mass has magnitude only; velocity, displacement and force all have a direction and obey the parallelogram law.
  ]

  #sol-item(28, "A", dense: true, pad: 7.5pt)[
    *Chapter 2.* $v = u + a t = 0 + 4 times 5 = 20$ m s⁻¹.
  ]

  #sol-item(29, "A", dense: true, pad: 7.5pt)[
    *Chapter 3.* $F = m (v - u)\/t = 1500 times 20 \/ 10 = 3000$ N.
  ]

  #sol-item(30, "D", dense: true, pad: 7.5pt)[
    *Chapter 4.* With gravity alone doing work, potential and kinetic energy trade but their sum does not change.
  ]

  #sol-item(31, "B", dense: true, pad: 7.5pt)[
    *Chapter 5.* $a_max = omega^2 A = 16 times 0.20 = 3.2$ m s⁻², at the ends.
  ]

  #sol-item(32, "C", dense: true, pad: 7.5pt)[
    *Chapter 6.* Beyond that limit the extension is no longer proportional to the load, even though the wire may still be elastic.
  ]

  #sol-item(33, "C", dense: true, pad: 7.5pt)[
    *Chapter 1.* One kilometre is 1000 m, so $5.0 times 1000 = 5000$ m.
  ]

  #sol-item(34, "B", dense: true, pad: 7.5pt)[
    *Chapter 2.* $s = (1\/2) a t^2$ when $u = 0$, so $s$ varies as the square of the time.
  ]

  #sol-item(35, "A", dense: true, pad: 7.5pt)[
    *Chapter 3.* Impulse $= F t = 20 times 3.0 = 60$ N s.
  ]

  #sol-item(36, "D", dense: true, pad: 7.5pt)[
    *Chapter 4.* $W = 50 times 10 times 3.0 = 1500$ J in 5.0 s, so $300$ W.
  ]

  #sol-item(37, "A", dense: true, pad: 7.5pt)[
    *Chapter 5.* Equating the kinetic energy to the gravitational potential energy gives $v_e = sqrt(2 G M \/ R)$.
  ]

  #sol-item(38, "C", dense: true, pad: 7.5pt)[
    *Chapter 6.* Stress divided by a dimensionless strain leaves the unit of stress, N m⁻².
  ]

  #sol-item(39, "B", dense: true, pad: 7.5pt)[
    *Chapter 1.* Work and energy are both $M L^2 T^(-2)$ — they are measured in the same unit, the joule.
  ]

  #sol-item(40, "D", dense: true, pad: 7.5pt)[
    *Chapter 2.* Displacement is the straight line from start to finish; the body ends where it began, so it is zero although the distance is 44 m.
  ]

]

