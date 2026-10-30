#import "template.typ": *

#current-chapter.update("Chapter 4: Work, Energy, Power and Machines")
#pagebreak()

#chapter-opener(
  4,
  "Work, Energy, Power and Machines",
  subtitle: "Work Done by a Force at an Angle, Kinetic and Potential Energy, the Conservation of Energy, Power and its Two Forms, Efficiency, and the Mechanical Advantage, Velocity Ratio and Efficiency of Simple Machines",
  syllabus-ref: "Sec. A • Topic 4",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Calculate the work done by a force, including a force at an angle to the displacement.",
    "Recall and apply $K E = 1/2 m v^2$ and $P E = m g h$.",
    "Apply the conservation of energy to falling bodies, pendulums and machines.",
    "Calculate power as $W/t$ and as $F v$, and distinguish power from energy.",
    "Define efficiency and calculate it for a machine.",
    "Use mechanical advantage, velocity ratio and efficiency for levers, pulleys and inclined planes.",
  ),
  hotspots: (
    "“The work done in lifting a 5 kg mass through 2 m is …” — 100 J, and it is stored as potential energy.",
    "“A force at 60° to the displacement does work …” — $F s cos 60 degree$, not $F s$.",
    "“A pump raises 200 kg of water through 10 m in 20 s. Its power is …” — 1000 W.",
    "“A machine has MA 4 and VR 5. Its efficiency is …” — 80 %.",
    "“The kinetic energy of a body is doubled when its speed is …” — multiplied by $sqrt(2)$.",
    "“The efficiency of a machine can never exceed 100 % because …” — friction and weight of moving parts waste energy.",
  ),
  trap-summary: "Three slips. (1) Writing $W = F s$ when the force is at an angle to the motion: only the component along the displacement does work, so the answer is $F s cos theta$, and a force perpendicular to the motion does none at all. (2) Confusing power with energy: a 100 W bulb used for 10 s uses 1000 J, and a question that asks for the *energy* wants the product. (3) Treating mechanical advantage as efficiency — MA compares forces, efficiency compares the work you get out with the work you put in, and a machine can have a large MA and a poor efficiency at the same time.",
)

// ============================================================================
== 4.1 Work

*Work* is done when a force moves its point of application through a distance in the direction of the force. One joule is the work done when a force of one newton moves a body one metre along its own direction.

#formula-box("The three cases")[
  + *Force along the motion:* $W = F s$.
  + *Force at an angle θ to the motion:* $W = F s cos theta$ — only the component along the displacement does work.
  + *Force perpendicular to the motion:* $W = 0$. A man carrying a load on level ground does no work on the load, because the force he exerts is upward and the motion is horizontal.
]

#diagram-fig("diagrams/ch04_work_angle.svg",
  "A force at an angle to the displacement. The component along the motion is $F cos theta$ and does the work; the component perpendicular to it does none.", width: 94%)

#worked-example(
  1,
  "Work done at an angle",
  [A box is dragged 8.0 m along a horizontal floor by a rope inclined at 30° to the horizontal, with a tension of 50 N. Find (a) the work done by the tension and (b) the work done by the weight of the box.],
  [
    *(a)* Only the horizontal component of the tension moves the box:

    $W = F s cos theta = 50 times 8.0 times cos 30 degree = 400 times 0.866 = 346$ J ≈ 3.5 × 10² J.

    *(b)* The weight acts vertically downwards and the motion is horizontal, so the angle between them is 90° and $cos 90 degree = 0$. The weight does no work.

    *Check.* The vertical component of the tension, $50 sin 30 degree = 25$ N, lifts the box slightly and so *reduces* the normal reaction — which is why dragging by a rope at an angle is easier than pushing horizontally. The work check is the cosine, not the force.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.2 Energy

*Energy* is the capacity to do work, measured in joules. It exists in many forms — kinetic, potential, chemical, thermal, electrical, nuclear, sound — and the syllabus asks you to convert between them and to add them up.

#table(
  columns: (1.05fr, 1.5fr, 1.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Form],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stored or moving],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Converted to],
  ),
  [kinetic, $1/2 m v^2$], [moving], [heat on impact; electrical energy in a generator],
  [gravitational potential, $m g h$], [stored by height], [kinetic energy in a fall; electricity in a dam],
  [elastic potential], [stored by deformation], [kinetic energy of a released spring or bow],
  [chemical], [stored in bonds], [heat and work in a muscle or an engine],
  [electrical], [carried by a current], [light, heat, sound, motion],
  [nuclear], [stored in the nucleus], [heat in a reactor; light in the Sun],
)

#formula-box("The two energies you will use in every calculation")[
  + *Kinetic:* $E_k = 1/2 m v^2$ — doubling the speed quadruples the energy.
  + *Gravitational potential:* $E_p = m g h$ — measured from whatever level you choose as zero, since only changes matter.
]

// ============================================================================
== 4.3 The Conservation of Energy

*Energy can be neither created nor destroyed; it is only converted from one form to another.*

In a machine, in a fall, in a pendulum, the total stays the same — and the bookkeeping is often the shortest route to an answer, because it never asks for the acceleration or the time.

#diagram-fig("diagrams/ch04_energy_chain.svg",
  "One quantity in five of its forms. Energy moves freely between them, and every conversion ends with some of it as heat.", width: 100%)

#worked-example(
  2,
  "A stone dropped down a well",
  [A stone of mass 0.50 kg is dropped from rest into a well 20 m deep. Taking $g = 10$ m s⁻², find (a) its loss of potential energy and (b) its speed as it reaches the bottom, neglecting air resistance.],
  [
    *(a)* $E_p = m g h = 0.50 times 10 times 20 = 100$ J.

    *(b)* All of it becomes kinetic energy:

    $1/2 m v^2 = 100$ with $m = 0.50$ kg, that is $0.25 v^2 = 100$, so $v^2 = 400$ and $v = 20$ m s⁻¹.

    *Check.* The mass cancels in the energy equation, which is why every body dropped from the same height arrives with the same speed — the same conclusion Galileo reached, and the reason a feather and a coin fall together in a vacuum. It also agrees with $v^2 = u^2 + 2 a s = 0 + 2(10)(20) = 400$.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "A pendulum, and where the speed is greatest",
  [A pendulum bob of mass 0.20 kg is pulled aside until it is 0.45 m above its lowest point and released. Find (a) its speed at the lowest point and (b) the height at which its speed is half that value.],
  [
    *(a)* $m g h = 1/2 m v^2$, so $v = sqrt(2 g h) = sqrt(2 times 10 times 0.45) = 3.0$ m s⁻¹.

    *(b)* At half the speed the kinetic energy is a quarter of its maximum, so three quarters of the potential energy is still stored:

    $1/2 m (1.5)^2 = m g h'$, so $h' = 2.25/20 = 0.11$ m.

    *Check.* The bob spends most of its time near the ends of its swing, where it is slow, and least time at the bottom, where it is fast — which is why a pendulum's average speed is lower than its maximum speed.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.4 Power

*Power* is the rate of doing work or of transferring energy: $P = W/t$, measured in watts, where one watt is one joule per second.

#formula-box("Two forms of the same definition")[
  + $P = W / t$ — the average power over an interval.
  + $P = F v$ — the power delivered by a force moving a body at speed $v$; useful for a car climbing a hill at constant speed.
  + $1 "kW" = 10^3 "W"$ and $1 "MW" = 10^6 "W"$; domestic electricity is sold in kilowatt-hours, $1 "kWh" = 3.6 times 10^6$ J.
]

#worked-example(
  4,
  "A pump, and the cost of lifting water",
  [A pump raises 300 kg of water through a height of 12 m in 40 s. Taking $g = 10$ m s⁻², find (a) the work done and (b) the useful power of the pump. If the pump is rated at 1.2 kW, what is its efficiency?],
  [
    *(a)* $W = m g h = 300 times 10 times 12 = 36 000$ J.

    *(b)* $P = W/t = 36 000/40 = 900$ W.

    Efficiency $= "useful power" / "input power" times 100 = 900/1200 times 100 = 75 %$.

    *Check.* The remaining 300 W goes into friction in the pipes and into the kinetic energy of the water as it leaves the pipe. A pump that claimed 100 % would be claiming that the water left the pipe at rest and that the pipes had no friction — which is why the efficiency of a real machine is always less than one.
  ],
  tier: "UTME STANDARD",
  source: "UTME-style",
)

// ============================================================================
== 4.5 Machines

A *machine* is a device that changes the size or direction of a force. It does not create energy: the work you get out is always less than the work you put in, and the ratio is the efficiency.

#formula-box("The three numbers of every machine")[
  + *Mechanical advantage* $"MA" = "load" / "effort"$ — how many times the machine multiplies your force.
  + *Velocity ratio* $"VR" = "distance moved by effort" / "distance moved by load"$ — a property of the geometry of the machine, fixed when it is built.
  + *Efficiency* $= ("MA")/("VR") times 100 %$ — and it can never exceed 100 %, because $"MA" <= "VR"$.
]

#diagram-fig("diagrams/ch04_pulley.svg",
  "Three pulley systems. Each extra rope section that supports the load adds one to the velocity ratio, because the effort must travel that much further than the load rises — and that is the whole of the machine's advantage.", width: 88%)

#table(
  columns: (1.15fr, 1.0fr, 1.5fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Machine],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Velocity ratio],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),
  [single fixed pulley], [1], [changes the direction of the effort only; no gain in force],
  [single movable pulley], [2], [the load is shared by two rope sections],
  [block and tackle, $n$ sections], [$n$], [the effort moves $n$ times as far as the load rises],
  [inclined plane, length $l$, height $h$], [$l\/h$], [the effort travels the slope, the load rises the height],
  [lever, effort arm $a$, load arm $b$], [$a\/b$], [the arms are the distances moved, in proportion],
  [wheel and axle, radii $R$ and $r$], [$R\/r$], [one turn moves the effort $2 pi R$ and the load $2 pi r$],
)

#worked-example(
  5,
  "A block and tackle on a building site",
  [A block and tackle with four rope sections lifts a load of 600 N through 2.0 m while the effort of 200 N moves 9.0 m. Find (a) the mechanical advantage, (b) the velocity ratio, (c) the efficiency, and (d) the work wasted.],
  [
    *(a)* $"MA" = 600/200 = 3.0$.

    *(b)* $"VR" = 9.0/2.0 = 4.5$ — the ratio of the distances moved, which is what the geometry of a machine fixes.

    *(c)* $"Efficiency" = ("MA")/("VR") times 100 = 3.0/4.5 times 100 = 67 %$.

    *(d)* Work in $= 200 times 9.0 = 1800$ J; work out $= 600 times 2.0 = 1200$ J; wasted $= 600$ J, in friction in the pulleys and in lifting the rope itself.

    *Check.* $"MA"$ is less than $"VR"$, as it must be, and the efficiency is between 0 and 100 %. An answer of 150 % would mean the machine had created energy — and it is worth looking for that possibility before writing the answer down, because the examiner puts it there deliberately.
  ],
  tier: "JAMB CHALLENGE",
)

#trap-box("Efficiency, and the three ways to lose it")[
  *Friction* in bearings, pulleys and the slope; *the weight of the moving parts* of the machine itself, which the effort must also lift; and *deformation*, where the machine bends instead of transmitting the force. Every one of them turns some of the input work into heat, which is why efficiency is always measured as a fraction below one and never as a promise above it.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: work, the two energies, conservation, power and machines.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Work is force times the distance moved *along* the force, which is why a force at an angle does $F s cos theta$ and a force at right angles does nothing. Energy is the capacity to do work, and it appears in two forms in every mechanics question: kinetic, $1/2 m v^2$, and gravitational potential, $m g h$. The conservation of energy says the total never changes, only its form, and it turns a fall or a swing into a single equation without any need for the acceleration. Power is the rate of transferring energy, $W/t$, or $F v$ for a force moving a body at speed $v$, and it is the quantity you pay for. A machine trades force for distance: it multiplies your effort by its mechanical advantage, but only at the cost of moving through a greater distance, which is its velocity ratio, and friction sees to it that the work out is always less than the work in. Efficiency, the ratio of the two, is therefore a number between zero and one, and a machine that reports more than one has been measured wrongly.
  ]
]

== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The work done in lifting a body of mass 4 kg through a height of 5 m is], [20 J], [50 J], [200 J], [2000 J])
#mcq(2, [A machine of efficiency 80 % has a velocity ratio of 5. Its mechanical advantage is], [0.16], [4], [6.25], [80])
#mcq(3, [A force of 20 N moves a body 5 m in a direction at 60° to the force. The work done is], [50 J], [87 J], [100 J], [173 J])
#mcq(4, [The kinetic energy of a body is doubled when its speed is], [doubled], [halved], [multiplied by 1.4], [multiplied by 4])

#answer-key-grid(("C", "B", "A", "C"))

#answer-notes((
  ("C", [$W = m g h = 4 times 10 times 5 = 200$ J — take $g = 10$ unless told otherwise.]),
  ("B", [$"Efficiency" = ("MA")/("VR")$, so $"MA" = 0.80 times 5 = 4$.]),
  ("A", [$W = F s cos 60 degree = 20 times 5 times 0.5 = 50$ J.]),
  ("C", [$E_k prop v^2$, so doubling the energy multiplies the speed by $sqrt(2) = 1.4$.]),
))

#concept-box("Carry this into Chapter 5")[
  Everything so far has moved in a straight line, and every force has been along the motion or perpendicular to it. Chapter 5 curves the motion: a body going round a circle at constant speed is accelerating all the time, because its velocity is changing direction, and the force that does it points at the centre. The same inverse-square law that holds the planets then gives the pendulum its period — and simple harmonic motion is the motion that every restoring force produces.
]

#include "drill_ch04.typ"
