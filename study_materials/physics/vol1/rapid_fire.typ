#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 The First Twenty

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.6pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [A force acting on a body of mass 4.0 kg gives it an acceleration of 5.0 m s⁻². The force is], [20 N],
    [The potential energy of a body of mass 5.0 kg raised 4.0 m is ($g = 10$ m s⁻²)], [200 J],
    [A body taken to a height equal to the Earth's radius has a weight of], [one quarter of its surface weight],
    [The meniscus of mercury in a glass tube is convex because], [its cohesion exceeds its adhesion to glass],
    [A force of 10 N acts at 30° above the horizontal. Its vertical component is], [5.0 N],
    [The area under a velocity-time graph gives the], [displacement],
    [Three forces act at a point and the body stays at rest. The resultant force is], [zero],
    [One kilowatt-hour expressed in joules is], [3.6 × 10⁶ J],
    [The centripetal force on a 0.50 kg body moving in a circle of radius 2.0 m at 4.0 m s⁻¹ is], [4.0 N],
    [Water rises in a capillary tube. If a tube of half the diameter is used, the rise is], [doubled],
    [Two forces of 5 N each act at 120° to each other. Their resultant is], [5 N],
    [At the highest point of its flight a ball thrown vertically upward has an acceleration of], [10 m s⁻² downward],
    [The tension in the string of the pulley system above is], [24 N],
    [An inclined plane 5.0 m long rises 1.0 m. Its velocity ratio is], [5.0],
    [A mass of 2.0 kg hangs on a spring of constant 200 N m⁻¹. Its period is about], [0.63 s],
    [A liquid of relative density 2.5 has a density of], [2500 kg m⁻³],
    [The prefix used for $10^(-9)$ is], [nano],
    [A body moving at 10 m s⁻¹ decelerates uniformly at 2 m s⁻². It comes to rest after], [5 s],
    [Masses of 3.0 kg and 2.0 kg hang on either side of a light pulley. The acceleration of the system is ($g = 10$ m s⁻²)], [2.0 m s⁻²],
    [A block and tackle has four rope sections supporting the load. Its velocity ratio is], [4],
  )
]

#pagebreak()

== A.2 The Second Twenty

Twenty more, in the same format. If a line takes longer than twenty seconds, the chapter to reread is the one printed in your head beside it — write the number down and treat the list as a revision order, not a score.

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.6pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [For the planets, Kepler's third law states that the square of the period is proportional to], [the cube of the radius],
    [The total pressure at that depth, taking atmospheric pressure as $1.0 times 10^5$ Pa, is], [$1.5 times 10^5$ Pa],
    [A systematic error is caused by], [a zero error in the instrument],
    [A stone falls 5 m in the first second. In the first two seconds it falls], [20 m],
    [A force of 50 N acts for 4.0 s on a 5.0 kg body at rest. Its final speed is], [40 m s⁻¹],
    [If the speed of a body is doubled, its kinetic energy], [becomes four times as large],
    [The acceleration due to gravity at a depth equal to half the Earth's radius is], [$g\/2$],
    [A spring is stretched 0.20 m by a force that rises steadily to 60 N. The energy stored is], [6.0 J],
    [The dimensional formula of work is], [$M L^2 T^(-2)$],
    [A body starts from rest and accelerates at 3 m s⁻². The distance covered in 4 s is], [24 m],
    [A force of 40 N pulls a 10 kg block on a frictionless surface. Its acceleration is], [4.0 m s⁻²],
    [A body of mass 2.0 kg falls freely through 5.0 m. Its kinetic energy at the bottom is ($g = 10$ m s⁻²)], [100 J],
    [If both masses are doubled and the distance between them is halved, the gravitational force becomes], [16 times as large],
    [A sphere falling through a viscous liquid reaches terminal velocity when], [the drag plus the upthrust equals the weight],
    [The volume of a cube of side 0.020 m is], [$8.0 times 10^(-6)$ m³],
    [A stone is thrown vertically upward at 20 m s⁻¹. Its greatest height is ($g = 10$ m s⁻²)], [20 m],
    [A block of weight 20 N begins to slide when pushed with 8.0 N. The coefficient of static friction is], [0.40],
    [A pump raises 600 kg of water through 10 m in 60 s. Its useful power is ($g = 10$ m s⁻²)], [1000 W],
    [The centripetal force on a body in circular motion is always directed], [towards the centre],
    [A hydraulic press has pistons of area 5.0 cm² and 100 cm². A force of 20 N on the small piston produces], [400 N],
  )
]

