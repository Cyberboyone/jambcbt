#import "template.typ": *

#current-chapter.update("Chapter 5: Circular Motion and SHM")

#pagebreak()

#chapter-opener(
  5,
  "Circular Motion, Gravitation and Simple Harmonic Motion",
  subtitle: "Angular Speed, Centripetal Acceleration and Force, Newton's Law of Gravitation, g and Satellite Orbits, Escape Velocity, Simple Harmonic Motion, the Pendulum and the Loaded Spring",
  syllabus-ref: "Sec. A • Topic 5",
  utme-weight: "3 Qs every year",
  running: "Circular Motion and SHM",
)

#focus-radar(
  objectives: (
    "Define angular speed and relate it to the linear speed and to the period.",
    "Explain why a body moving in a circle at constant speed is accelerating, and use $a = v^2 \/ r$.",
    "Apply $F = m v^2 \/ r$ to a car on a bend, a stone on a string and a satellite.",
    "State and use Newton's law of gravitation, including $g = G M \/ r^2$ and the orbit of a satellite.",
    "Define simple harmonic motion and sketch its two graphs.",
    "Use $T = 2 pi sqrt(l \/ g)$ and $T = 2 pi sqrt(m \/ k)$, and find the speed at any displacement.",
  ),
  hotspots: (
    "“A body moves in a circle at constant speed. Its acceleration is …” — $v^2 \/ r$, towards the centre.",
    "“If the distance between two masses is doubled, the force between them becomes …” — a quarter.",
    "“A satellite in a geostationary orbit has a period of …” — 24 hours, and it must be above the equator.",
    "“The escape velocity from the Earth is about …” — 11 km s⁻¹.",
    "“In simple harmonic motion the speed is greatest …” — at the centre, where the acceleration is zero.",
    "“The period of a pendulum carried to the Moon …” — increases, because $g$ is smaller there.",
  ),
  trap-summary: "Three slips. (1) Believing that constant speed means no acceleration: the speed is constant but the direction of the velocity is not, so there is an acceleration towards the centre and therefore a force. (2) Putting the wrong $r$ into $F = m v^2 \/ r$ — for a satellite $r$ is measured from the *centre of the Earth*, so a satellite 600 km up has $r = R + 600$ km, not 600 km. (3) Mixing up the two periods: a pendulum's period depends on its *length* and not on its mass, a spring's on the *mass* and not on the amplitude — and neither depends on the amplitude at all, which is what “isochronous” means.",
)

// ============================================================================
== 5.1 Angular Speed and the Period

A body moving in a circle of radius $r$ at a steady speed $v$ sweeps out an angle at the centre. The rate at which it sweeps that angle is the *angular speed* $omega$, measured in radians per second:

#formula-box("One motion, three equations")[
  + $omega = theta / t = 2 pi \/ T$ — radians per second, where $T$ is the period of one revolution.
  + $v = omega r$ — the linear speed along the circle.
  + $f = 1 \/ T$ — the frequency, in hertz, is the number of revolutions each second.
]

One complete revolution is $2 pi$ radians, so a body making $f$ revolutions per second turns through $2 pi f$ radians each second and $omega = 2 pi f$.

#table(
  columns: (1.3fr, 0.9fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it measures],
  ),
  [angular speed $omega$], [rad s⁻¹], [how fast the angle at the centre is swept out],
  [linear speed $v$], [m s⁻¹], [how fast the body travels along the circle],
  [period $T$], [s], [the time for one complete revolution],
  [frequency $f$], [Hz], [the number of revolutions each second],
)

*The speed is constant but the velocity is not.* Velocity is a vector, and its direction changes at every instant, so a body in uniform circular motion is accelerating even though the speedometer would not move. That acceleration points along the radius, towards the centre, and its size is

$ a = v^2 / r = omega^2 r. $

#worked-example(
  1,
  "A body on a circle",
  [A small body moves in a circle of radius 0.50 m at a constant speed of 4.0 m s⁻¹. Find (a) its angular speed, (b) its period, and (c) its centripetal acceleration.],
  [
    *(a)* $omega = v \/ r = 4.0 \/ 0.50 = 8.0$ rad s⁻¹.

    *(b)* $T = 2 pi \/ omega = (2 times 3.14) \/ 8.0 = 6.28 \/ 8.0 = 0.79$ s.

    *(c)* $a = v^2 \/ r = (4.0)^2 \/ 0.50 = 16 \/ 0.50 = 32$ m s⁻², directed towards the centre.

    *Check.* The second route gives the same acceleration: $a = omega^2 r = (8.0)^2 times 0.50 = 32$ m s⁻². Notice how large it is — three times $g$ — which is why a body on a short string at speed needs a strong string.

  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 5.2 Centripetal Force

A body does not go round a circle by itself. Something must pull it towards the centre the whole time, and that something is the *centripetal force*:

#formula-box("The force that keeps a body on its circle")[
  $F = m v^2 / r = m omega^2 r$
  The force is always directed to the centre of the circle, perpendicular to the velocity. It does no work on the body, because there is no displacement along it — which is why the speed stays constant.
]

The force is not a new kind of force; it is whatever is available. For a car on a bend it is friction between the tyres and the road. For a stone on a string it is the tension. For a satellite it is gravity. For a bucket of water swung in a vertical circle it is the reaction of the bucket. The examiner's question is always the same: *which force is doing this job, and is it large enough?*

#diagram-fig("diagrams/ch05_circular.svg",
  "Circular motion. The velocity is a tangent to the circle and the force is a radius: the body's speed is constant, but its velocity turns with every step.", width: 100%)

#worked-example(
  2,
  "A car on a bend",
  [A car of mass 1200 kg rounds a bend of radius 50 m at 20 m s⁻¹. Taking $g = 10$ m s⁻², find (a) the centripetal force needed and (b) the least coefficient of friction between the tyres and the road for the car to stay on the road.],
  [
    *(a)* $F = m v^2 \/ r = 1200 times (20)^2 \/ 50 = 1200 times 400 \/ 50 = 9600$ N.

    *(b)* The only horizontal force on the car is friction, and the greatest friction available is $mu R = mu m g$ on level ground. Setting the two equal:

    $mu m g = m v^2 \/ r$, so $mu = v^2 \/ (r g) = 400 \/ (50 times 10) = 0.80$.

    *Check.* Put the coefficient back in: $mu m g = 0.80 times 1200 times 10 = 9600$ N, the same as in part (a). A wet road has $mu$ nearer 0.4, which halves the greatest safe speed to about 14 m s⁻¹ — and that is why bends are signposted.

  ],
  tier: "UTME STANDARD",
)

#trap-box("There is no such thing as centrifugal force")[
  In the frame of the ground there is one force on the car, and it points *towards* the centre of the bend. The “force” that seems to throw you outwards is your own inertia: your body is trying to continue in a straight line while the car turns under you. An answer that puts a force pointing away from the centre has drawn the free-body diagram of a passenger in the car, not of the car.
]

// ============================================================================
== 5.3 Newton's Law of Gravitation

*Every particle of matter attracts every other particle with a force proportional to the product of their masses and inversely proportional to the square of the distance between their centres:*

$ F = G m_1 m_2 / r^2 $

where $G = 6.67 times 10^(-11)$ N m² kg⁻² is the gravitational constant — the same everywhere, and the reason the law is called universal.

#diagram-fig("diagrams/ch05_gravity.svg",
  "The inverse-square law. Doubling the distance quarters the force and trebling it divides the force by nine, which is why the weight of a body falls off so quickly with height.", width: 90%)

#worked-example(
  3,
  "A satellite at twice the Earth's radius",
  [A satellite orbits the Earth at a height equal to the Earth's radius, so that its distance from the centre of the Earth is $2R$. Taking $R = 6.4 times 10^6$ m and $g = 10$ m s⁻² at the surface, find (a) its orbital speed and (b) its period.],
  [
    *(a)* Gravity supplies the centripetal force:

    $G M m \/ (2R)^2 = m v^2 \/ (2R)$, so $v^2 = G M \/ (2R)$.

    At the surface $g = G M \/ R^2$, so $G M = g R^2$ and

    $v = sqrt(g R \/ 2) = sqrt(10 times 6.4 times 10^6 \/ 2) = sqrt(3.2 times 10^7) = 5.7 times 10^3$ m s⁻¹.

    *(b)* $T = 2 pi r \/ v = (2 times 3.14 times 1.28 times 10^7) \/ (5.7 times 10^3) = 1.4 times 10^4$ s ≈ 3.9 hours.

    *Check.* A satellite in a low orbit — $r$ barely more than $R$ — has $v = sqrt(g R) = sqrt(6.4 times 10^7) = 8.0$ km s⁻¹ and a period of about 84 minutes. Moving out to $2R$ *slowed* it to 5.7 km s⁻¹ but *lengthened* its period almost three-fold, because $T prop r^(3\/2)$ and $2^(3\/2) = 2.8$: a higher orbit is a slower, longer orbit, and that is the counter-intuitive fact the examiner likes.

  ],
  tier: "JAMB CHALLENGE",
)

#concept-box("Where $g$ comes from, and why it is not constant")[
  At the surface of a planet $g = G M \/ R^2$. The Earth is not a perfect sphere and it spins, so $g$ is about 9.78 m s⁻² at the equator and 9.83 m s⁻² at the poles; the book uses 10 m s⁻². Weight is $m g$, and it changes with height and with the planet, while mass does not change at all. An astronaut on the Moon has the same mass as on the Earth and about one sixth of the weight.
]

// ============================================================================
== 5.4 Satellites and Escape Velocity

Two results come straight out of setting gravity equal to the centripetal force:

#formula-box("The orbit and the escape")[
  + *Orbital speed:* $v = sqrt(G M \/ r)$, with $r$ measured from the centre of the planet.
  + *Kepler's third law:* $T^2 prop r^3$ — the square of the period is proportional to the cube of the radius.
  + *Escape velocity:* $v_e = sqrt(2 g R) = sqrt(2 G M \/ R)$ ≈ 11 km s⁻¹ for the Earth.
]

A *geostationary* satellite has a period of exactly one day, so it stays above the same point on the Earth: it must orbit above the equator, from west to east, at a radius of about 42 000 km. Communications and weather satellites live there, and the height is fixed by the period — not chosen by the engineer.

// ============================================================================
== 5.5 Simple Harmonic Motion

*Simple harmonic motion* is the motion of a body whose acceleration is proportional to its displacement from a fixed point and always directed towards that point:

$ a = - omega^2 x $

The minus sign is the whole of the definition: the acceleration always opposes the displacement, which is what pulls the body back. A body in SHM oscillates about its equilibrium position with a period

$T = 2 pi \/ omega$, and it is *isochronous* — the period does not depend on the amplitude.

#diagram-fig("diagrams/ch05_shm.svg",
  "Simple harmonic motion: a sine curve of amplitude A and period T, and an acceleration that is a straight line through the origin, opposite to the displacement.", width: 92%)

#table(
  columns: (1.5fr, 1.5fr, 1.2fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Oscillator],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Period],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Depends on],
  ),
  [simple pendulum, length $l$], [$T = 2 pi sqrt(l \/ g)$], [length and $g$ only],
  [loaded spring, mass $m$], [$T = 2 pi sqrt(m \/ k)$], [mass and spring constant],
)

#formula-box("The three quantities of an oscillator")[
  + *Maximum speed:* $v_max = omega A$, reached as the body passes through the centre.
  + *Speed at a displacement $x$:* $v = omega sqrt(A^2 - x^2)$.
  + *Maximum acceleration:* $a_max = omega^2 A$, at the ends of the swing, where the body stops.
]

Energy sloshes back and forth as well: at the ends all of it is potential, at the centre all of it is kinetic, and the total stays constant. Damping — friction, air resistance — removes energy and the amplitude falls; *resonance* is what happens when a driving frequency matches the natural frequency, and it is why a bridge can be destroyed by soldiers marching in step.

#worked-example(
  4,
  "A pendulum that beats seconds",
  [A simple pendulum has a length of 0.98 m. Taking $g = 10$ m s⁻² and $pi = 3.14$, find (a) its period and (b) the length that would give a period of 1.0 s.],
  [
    *(a)* $T = 2 pi sqrt(l \/ g) = 2 times 3.14 times sqrt(0.98 \/ 10) = 6.28 times 0.313 = 1.97$ s ≈ 2.0 s.

    *(b)* $T^2 = 4 pi^2 l \/ g$, so $l = g T^2 \/ (4 pi^2) = (10 times 1.0) \/ (4 times 9.86) = 0.25$ m.

    *Check.* The period goes as the square root of the length, so quartering the length halves the period: from 1.97 s to 0.99 s. That is why part (b) needs a quarter of the length, not a half.

  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "The speed at a given displacement",
  [A body oscillates with simple harmonic motion of amplitude 0.10 m and period 0.50 s. Find (a) its maximum speed, (b) its speed when it is 0.060 m from the centre, and (c) its maximum acceleration.],
  [
    $omega = 2 pi \/ T = 6.28 \/ 0.50 = 12.6$ rad s⁻¹.

    *(a)* $v_max = omega A = 12.6 times 0.10 = 1.26$ m s⁻¹ ≈ 1.3 m s⁻¹.

    *(b)* $v = omega sqrt(A^2 - x^2) = 12.6 times sqrt(0.0100 - 0.0036) = 12.6 times 0.080 = 1.0$ m s⁻¹.

    *(c)* $a_max = omega^2 A = (12.6)^2 times 0.10 = 15.9$ m s⁻².

    *Check.* At $x = 0.060$ m the body has travelled 60 % of the way to the end, and its speed has fallen to 1.0 out of 1.26 — but it is still moving quickly. At the end itself $x = A$, the square root is zero and the body stops, which is exactly where its acceleration is greatest.

  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: circular motion, gravitation and simple harmonic motion.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A body going round a circle at a steady speed is still accelerating, because its velocity keeps changing direction: the acceleration is $v^2/r$ towards the centre, and the force that produces it is whatever is to hand — friction on a bend, tension on a string, gravity for a satellite. That single equation, $F = m v^2/r$, turns into Newton's law of gravitation when the force is the pull between two masses, and the inverse square that comes with it explains the fall of $g$ with height, the speed of an orbit, the four-fold lengthening of a satellite's period at twice the radius, and the 11 km s⁻¹ needed to escape. When the restoring force is proportional to the displacement the motion is simple harmonic: the acceleration points back to the centre and grows with the distance, the period is fixed whatever the amplitude, a pendulum's period depends on its length and a spring's on its mass, and the speed is greatest at the centre and zero at the ends.
  ]
]

== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [A body moves round a circle at constant speed. Which statement is true?], [Its velocity is constant], [Its acceleration is zero], [Its acceleration is directed towards the centre], [No force acts on it])
#mcq(2, [A simple pendulum has period $T$. If its length is made four times as long, the period becomes], [$2 T$], [$4 T$], [$T div 2$], [$T sqrt(2)$])
#mcq(3, [The gravitational force between two masses is $F$. If the distance between them is doubled, the force becomes], [$2 F$], [$F div 2$], [$F div 4$], [$4 F$])
#mcq(4, [A body in simple harmonic motion has its greatest speed], [at the ends of its swing], [at the centre of its swing], [midway between the centre and an end], [only at the start])

#answer-key-grid(("C", "A", "C", "B"))

#answer-notes((
  ("C", [the speed is constant but the velocity's direction changes, so there is an acceleration $v^2 \/ r$ towards the centre.]),
  ("A", [$T prop sqrt(l)$, so four times the length gives $sqrt(4) = 2$ times the period.]),
  ("C", [$F prop 1 \/ r^2$: doubling $r$ divides the force by four.]),
  ("B", [at the centre the displacement is zero, so the acceleration is zero and the speed is at its maximum $omega A$.]),
))

#concept-box("Carry this into Chapter 6")[
  Everything so far has treated bodies as points with mass. Real matter has *bulk*: it can be stretched, squeezed, floated and made to flow. The last chapter of this volume asks how a solid resists being pulled apart, how much mass fits into a cubic metre, why a ship made of steel floats, and why a steel needle can rest on water — the properties that a material has because it is made of particles rather than being a mathematical point.
]

#include "drill_ch05.typ"
