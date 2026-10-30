#import "template.typ": *

#current-chapter.update("Mock Examination 1")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 1 — Full-Syllabus CBT Paper]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 1]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the format, the difficulty spread and the topic mix of a real UTME Physics paper on measurement, motion, forces, energy, circular motion and the properties of matter.]
]

#v(5pt)

+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.

+ One minute a question. If a question takes longer than ninety seconds, flag it and return in the final pass.

+ Mark yourself against the key only when the forty minutes have elapsed.

+ Record every miss in the Question Map — it converts a score into a revision plan.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],
)

== Mock Examination 1 — Questions

#mcq(1, [A quantity has the unit kg m² s⁻³. It is a], [force], [energy], [pressure], [power])

#mcq(2, [The same train passes a platform 200 m long at 20 m s⁻¹ in], [5 s], [10 s], [15 s], [30 s])

#mcq(3, [The limiting friction between two surfaces is equal to], [$N \/ mu$], [$mu N$], [$mu \/ N$], [$mu + N$])

#mcq(4, [The work done in lifting a mass of 10 kg through 2.0 m is ($g = 10$ m s⁻²)], [200 J], [20 J], [50 J], [2000 J])

#mcq(5, [A body moving in a circle at constant speed has], [constant velocity], [zero acceleration], [constant acceleration], [constant speed but changing velocity])

#mcq(6, [The energy stored in a spring of constant 400 N m⁻¹ stretched 0.10 m is], [0.40 J], [2.0 J], [4.0 J], [20 J])

#mcq(7, [The unit of density in base SI units is], [g cm⁻³], [kg m³], [kg m⁻³], [N m⁻³])

#mcq(8, [A car moving at 20 m s⁻¹ travels for 15 s. The distance covered is], [300 m], [35 m], [150 m], [600 m])

#mcq(9, [A 2.0 kg block rests on a smooth plane inclined at 30° to the horizontal. The force down the slope is ($g = 10$ m s⁻²)], [5.0 N], [17 N], [20 N], [10 N])

#mcq(10, [A bullet of mass 0.020 kg leaves a gun at 300 m s⁻¹. Its kinetic energy is], [6.0 J], [900 J], [60 J], [1800 J])

#mcq(11, [A body moves at 2.0 m s⁻¹ in a circle of radius 0.50 m. Its centripetal acceleration is], [1.0 m s⁻²], [4.0 m s⁻²], [8.0 m s⁻²], [16 m s⁻²])

#mcq(12, [A solid floats in water with half of its volume submerged. Its density is], [500 kg m⁻³], [250 kg m⁻³], [1000 kg m⁻³], [2000 kg m⁻³])

#mcq(13, [The SI unit of electric current is the], [coulomb], [volt], [watt], [ampere])

#mcq(14, [A car slows from 30 m s⁻¹ to rest in 6 s. Its acceleration is], [−5 m s⁻²], [−0.2 m s⁻²], [+5 m s⁻²], [−180 m s⁻²])

#mcq(15, [The inertia of a body is measured by its], [weight], [mass], [volume], [density])

#mcq(16, [A wheel and axle have radii 0.50 m and 0.10 m. The velocity ratio is], [0.20], [0.60], [5.0], [0.50])

#mcq(17, [The least speed a stone needs at the top of a vertical circle of radius 1.0 m to keep the string taut is ($g = 10$ m s⁻²)], [1.0 m s⁻¹], [3.2 m s⁻¹], [10 m s⁻¹], [20 m s⁻¹])

#mcq(18, [Adding detergent to water], [lowers its surface tension], [raises its surface tension], [does not change it], [raises its boiling point only])

#mcq(19, [The dimensions of impulse are], [$M L T^(-2)$], [$M L^2 T^(-2)$], [$M L T^(-1)$], [$M L^(-1) T^(-1)$])

#mcq(20, [A boy walks 12 m north and then 5 m east. His displacement is], [7 m], [17 m], [60 m], [13 m])

#mcq(21, [A 10 kg block is pushed with 25 N against a friction of 15 N. Its acceleration is], [1.0 m s⁻²], [0.40 m s⁻²], [2.5 m s⁻²], [4.0 m s⁻²])

#mcq(22, [A machine does 600 J of work in 4.0 s. Its power is], [240 W], [150 W], [600 W], [2400 W])

#mcq(23, [A body moving in a circle of radius 2.0 m has a centripetal acceleration of 8.0 m s⁻². Its speed is], [2.0 m s⁻¹], [16 m s⁻¹], [4.0 m s⁻¹], [32 m s⁻¹])

#mcq(24, [A manometer connected to a gas supply measures], [the absolute temperature of the gas], [the density of the gas], [the volume of the gas], [the difference between the gas pressure and atmospheric pressure])

#mcq(25, [The number 0.000 42 written in standard form is], [$4.2 times 10^(-3)$], [$42 times 10^(-5)$], [$4.2 times 10^(-4)$], [$4.2 times 10^4$])

#mcq(26, [A cyclist rides at 30 km h⁻¹ for 1 h and then at 20 km h⁻¹ for 2 h. His average speed is], [21.7 km h⁻¹], [25 km h⁻¹], [50 km h⁻¹], [23.3 km h⁻¹])

#mcq(27, [A 5.0 kg block is dragged along a table with a coefficient of friction of 0.20. The friction is ($g = 10$ m s⁻²)], [10 N], [1.0 N], [25 N], [50 N])

#mcq(28, [A lever has an effort arm of 1.2 m and a load arm of 0.30 m. Its velocity ratio is], [0.25], [4.0], [0.40], [1.5])

#mcq(29, [The escape velocity from the Moon is smaller than from the Earth mainly because the Moon has], [no atmosphere], [a longer day], [a smaller mass and radius], [a colder surface])

#mcq(30, [A balloon filled with a light gas rises because], [the upthrust of the displaced air exceeds its weight], [the gas inside is denser than air], [gravity does not act on gases], [air pressure is zero])

#mcq(31, [A boy walks 3 km due east and then 4 km due north. His displacement from the start is], [1 km], [7 km], [12 km], [5 km])

#mcq(32, [A body moves at 2 m s⁻¹ for 4 s and then at 6 m s⁻¹ for 4 s. Its average speed is], [3 m s⁻¹], [4 m s⁻¹], [5 m s⁻¹], [8 m s⁻¹])

#mcq(33, [A string lifts a mass of 2.0 kg upward at 4.0 m s⁻². The tension is ($g = 10$ m s⁻²)], [28 N], [8.0 N], [12 N], [20 N])

#mcq(34, [The energy wasted in a machine appears mainly as], [light], [mass], [heat and sound], [momentum])

#mcq(35, [A car of mass 800 kg rounds a bend of radius 80 m at 20 m s⁻¹. The centripetal force is], [200 N], [2000 N], [8000 N], [4000 N])

#mcq(36, [A body of mass 0.40 kg occupies 500 cm³. Its density is], [0.80 kg m⁻³], [800 kg m⁻³], [8.0 kg m⁻³], [8000 kg m⁻³])

#mcq(37, [Two forces of 10 N each act at 60° to each other. Their resultant is about], [10 N], [20 N], [200 N], [17.3 N])

#mcq(38, [The stone in the last question reaches its greatest height after], [1 s], [2 s], [4 s], [10 s])

#mcq(39, [The same man stands in a lift moving at a steady speed. The reaction is], [600 N], [120 N], [480 N], [720 N])

#mcq(40, [A lamp of power 60 W is left on for one hour. The energy it uses is], [60 J], [3600 J], [216 000 J], [2160 J])

#pagebreak()

== Mock Examination 1 — Answer Key

#answer-key-grid((
  "D", "C", "B", "A", "D", "B", "C", "A", "D", "B",
  "C", "A", "D", "A", "B", "C", "B", "A", "C", "D",
  "A", "B", "C", "D", "C", "D", "A", "B", "C", "A",
  "D", "B", "A", "C", "D", "B", "D", "B", "A", "C",
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

== Mock Examination 1 — Question Map

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
  [1], [Measurement, Units and Dimensions], [1, 7, 13, 19, 25, 31, 37], [7],
  [2], [Motion in a Straight Line], [2, 8, 14, 20, 26, 32, 38], [7],
  [3], [Forces, Newton's Laws and Momentum], [3, 9, 15, 21, 27, 33, 39], [7],
  [4], [Work, Energy, Power and Machines], [4, 10, 16, 22, 28, 34, 40], [7],
  [5], [Circular Motion, Gravitation and SHM], [5, 11, 17, 23, 29, 35], [6],
  [6], [Properties of Matter], [6, 12, 18, 24, 30, 36], [6],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 1 — Complete Solutions
  #sol-item(1, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* kg m² s⁻³ is the watt: energy (kg m² s⁻²) per second.
  ]

  #sol-item(2, "C", dense: true, pad: 0.0pt)[
    *Chapter 2.* It must cover its own length plus the platform: $300\/20 = 15$ s.
  ]
  ]

  #sol-item(3, "B", dense: true, pad: 0.0pt)[
    *Chapter 3.* The greatest friction before sliding is the coefficient multiplied by the normal reaction.
  ]

  #sol-item(4, "A", dense: true, pad: 0.0pt)[
    *Chapter 4.* $W = m g h = 10 times 10 times 2.0 = 200$ J.
  ]

  #sol-item(5, "D", dense: true, pad: 0.0pt)[
    *Chapter 5.* The speed does not change, but the direction of motion does, so the velocity changes and there is an acceleration towards the centre.
  ]

  #sol-item(6, "B", dense: true, pad: 0.0pt)[
    *Chapter 6.* $E = (1\/2) k e^2 = (1\/2)(400)(0.010) = 2.0$ J.
  ]

  #sol-item(7, "C", dense: true, pad: 0.0pt)[
    *Chapter 1.* Density is mass divided by volume, and the base units are the kilogram and the metre.
  ]

  #sol-item(8, "A", dense: true, pad: 0.0pt)[
    *Chapter 2.* $s = v t = 20 times 15 = 300$ m.
  ]

  #sol-item(9, "D", dense: true, pad: 0.0pt)[
    *Chapter 3.* $F = m g sin theta = 20 times 0.50 = 10$ N; the $cos theta$ component is balanced by the reaction.
  ]

  #sol-item(10, "B", dense: true, pad: 0.0pt)[
    *Chapter 4.* $E_k = (1\/2)(0.020)(300^2) = 900$ J.
  ]

  #sol-item(11, "C", dense: true, pad: 0.0pt)[
    *Chapter 5.* $a = v^2\/r = 4.0\/0.50 = 8.0$ m s⁻².
  ]

  #sol-item(12, "A", dense: true, pad: 0.0pt)[
    *Chapter 6.* The fraction submerged equals the density ratio, so the density is half that of water.
  ]

  #sol-item(13, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* The ampere is one of the seven base units; the coulomb is a derived unit (A s).
  ]

  #sol-item(14, "A", dense: true, pad: 0.0pt)[
    *Chapter 2.* $a = (v - u)\/t = (0 - 30)\/6 = -5$ m s⁻², a deceleration of 5 m s⁻².
  ]

  #sol-item(15, "B", dense: true, pad: 0.0pt)[
    *Chapter 3.* Mass is the measure of inertia — the resistance to any change of motion.
  ]

  #sol-item(16, "C", dense: true, pad: 0.0pt)[
    *Chapter 4.* The velocity ratio is the wheel radius divided by the axle radius: 0.50 over 0.10, which is 5.0.
  ]

  #sol-item(17, "B", dense: true, pad: 0.0pt)[
    *Chapter 5.* At the top $T + m g = m v^2\/r$; the string just goes slack when $T = 0$, so $v = sqrt(g r) = 3.2$ m s⁻¹.
  ]

  #sol-item(18, "A", dense: true, pad: 0.0pt)[
    *Chapter 6.* Detergent molecules crowd the surface and weaken the pull between water molecules, so water wets and foams.
  ]

  #sol-item(19, "C", dense: true, pad: 0.0pt)[
    *Chapter 1.* Impulse is force times time, the same as momentum: $M L T^(-1)$.
  ]

  #sol-item(20, "D", dense: true, pad: 0.0pt)[
    *Chapter 2.* The legs are perpendicular, so $sqrt(144 + 25) = 13$ m from the start.
  ]

  #sol-item(21, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* The resultant is $25 - 15 = 10$ N, so $a = 10\/10 = 1.0$ m s⁻².
  ]

  #sol-item(22, "B", dense: true, pad: 0.0pt)[
    *Chapter 4.* $P = W\/t = 600\/4.0 = 150$ W.
  ]

  #sol-item(23, "C", dense: true, pad: 0.0pt)[
    *Chapter 5.* $a = v^2\/r$, so $v = sqrt(a r) = sqrt(16) = 4.0$ m s⁻¹.
  ]

  #sol-item(24, "D", dense: true, pad: 0.0pt)[
    *Chapter 6.* The difference in liquid levels gives the pressure excess or defect.
  ]

  #sol-item(25, "C", dense: true, pad: 0.0pt)[
    *Chapter 1.* The decimal point moves four places right, so the index is $-4$.
  ]

  #sol-item(26, "D", dense: true, pad: 0.0pt)[
    *Chapter 2.* Total distance $= 30 + 40 = 70$ km in 3 h, so $70\/3 = 23.3$ km h⁻¹.
  ]

  #sol-item(27, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* $N = 50$ N and $f = 0.20 times 50 = 10$ N.
  ]

  #sol-item(28, "B", dense: true, pad: 0.0pt)[
    *Chapter 4.* The velocity ratio is the effort arm divided by the load arm: 1.2 over 0.30, which is 4.0.
  ]

  #sol-item(29, "C", dense: true, pad: 0.0pt)[
    *Chapter 5.* $v_e = sqrt(2 G M \/ R)$ is smaller when $M$ is small.
  ]

  #sol-item(30, "A", dense: true, pad: 0.0pt)[
    *Chapter 6.* Archimedes' principle applies to gases too: the weight of the air displaced is greater than the weight of the balloon.
  ]

  #sol-item(31, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* The two legs are perpendicular, so $sqrt(3^2 + 4^2) = 5$ km — not the 7 km he actually walked.
  ]

  #sol-item(32, "B", dense: true, pad: 0.0pt)[
    *Chapter 2.* Total distance $= 8 + 24 = 32$ m; total time $= 8$ s; so $32\/8 = 4$ m s⁻¹.
  ]

  #sol-item(33, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* $T - m g = m a$, so $T = 2.0(10 + 4.0) = 28$ N.
  ]

  #sol-item(34, "C", dense: true, pad: 0.0pt)[
    *Chapter 4.* Friction converts useful work into heat and a little sound, which is why machines need lubrication.
  ]

  #sol-item(35, "D", dense: true, pad: 0.0pt)[
    *Chapter 5.* $F = 800 times 400 \/ 80 = 4000$ N, supplied by friction.
  ]

  #sol-item(36, "B", dense: true, pad: 0.0pt)[
    *Chapter 6.* $500$ cm³ $= 5.0 times 10^(-4)$ m³, so $rho = 0.40 \/ 5.0 times 10^(-4) = 800$ kg m⁻³.
  ]

  #sol-item(37, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* For two equal forces the resultant lies along the bisector: $R = 2 times 10 cos 30$° $= 17.3$ N.
  ]

  #sol-item(38, "B", dense: true, pad: 0.0pt)[
    *Chapter 2.* $t = u\/g = 20\/10 = 2$ s.
  ]

  #sol-item(39, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* With no acceleration the forces balance and $R = m g = 600$ N.
  ]

  #sol-item(40, "C", dense: true, pad: 0.0pt)[
    *Chapter 4.* $E = P t = 60 times 3600 = 2.16 times 10^5$ J.
  ]

]

