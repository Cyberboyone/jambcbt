#import "template.typ": *

#current-chapter.update("Chapter 3: Forces, Newton's Laws and Momentum")
#pagebreak()

#chapter-opener(
  3,
  "Forces, Newton's Laws and Momentum",
  subtitle: "Contact and Non-Contact Forces, Inertia, Newton's Three Laws, Friction and the Coefficient of Friction, Equilibrium, Moments and Couples, Centre of Gravity, Momentum, Impulse and Collisions",
  syllabus-ref: "Sec. A • Topic 3",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the common forces and say whether each is a contact or a non-contact force.",
    "State and apply Newton's three laws of motion, including $F = m a$ in a lift.",
    "Explain friction, limiting friction and the coefficient of friction, and use $F = mu R$.",
    "Find the resultant of coplanar forces and apply the principle of moments to a beam.",
    "Define momentum and impulse, and apply the conservation of momentum to collisions and recoil.",
    "Distinguish elastic from inelastic collisions and calculate the energy lost.",
  ),
  hotspots: (
    "“A body of mass 5 kg is in a lift accelerating upwards at 2 m s⁻². The reaction is …” — $m(g + a) = 60$ N.",
    "“The coefficient of friction is …” — the limiting friction divided by the normal reaction, and it has no unit.",
    "“The principle of moments states that …” — for a body in equilibrium, the sum of the clockwise moments about any point equals the sum of the anticlockwise moments.",
    "“The impulse of a force is equal to …” — the change of momentum, $F t = m v - m u$.",
    "“In a perfectly inelastic collision the bodies …” — stick together and move with a common velocity.",
    "“Total momentum before a collision equals …” — total momentum after, provided no external force acts.",
  ),
  trap-summary: "Three slips. (1) Adding the weights of both bodies in a collision question and forgetting that momentum, not mass, is what is conserved. (2) Writing $R = m g$ on a slope, or in a lift that is accelerating — the reaction equals the weight only when the body has no vertical acceleration. (3) Giving the coefficient of friction a unit: it is a ratio of two forces and is dimensionless, so an answer of “0.4 N” has already lost the mark.",
)

// ============================================================================
== 3.1 Types of Force

A *force* is a push or a pull that changes a body's motion or shape. Forces come in two families: those that need contact (the ground pushing up, a rope pulling, friction), and those that act at a distance (gravity, magnetism, electrostatic attraction).

#table(
  columns: (1.15fr, 1.15fr, 1.8fr),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Force],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it is],
  ),
  [weight], [non-contact], [the pull of the Earth, $W = m g$, always vertically downwards],
  [normal reaction], [contact], [the push of a surface on a body, perpendicular to the surface],
  [tension], [contact], [the pull along a stretched string or rope],
  [friction], [contact], [the resistance to sliding, along the surface and opposing motion],
  [upthrust], [contact], [the upward push of a fluid on an immersed body],
  [magnetic], [non-contact], [the force between poles or on a current-carrying wire],
  [electrostatic], [non-contact], [the force between charges],
)

#diagram-fig("diagrams/ch03_force_map.svg",
  "The forces on the syllabus, sorted by how they act. A contact force needs the bodies to touch; a non-contact force does not.", width: 100%)

#concept-box("Why a free-body diagram is the whole of mechanics")[
  Draw the body as a dot. Draw every force acting *on it* as an arrow from the dot, and nothing else. The weight acts at the centre of gravity; the reaction pushes out of the surface; tension pulls away from the body along the string; friction lies along the surface against the motion.

  Then resolve horizontally and vertically, and set each direction's sum equal to $m a$ (or to zero, if the body is in equilibrium). Every force question in this volume is that one procedure, and the candidates who lose marks are the ones who draw the forces acting *on the other body*.
]

// ============================================================================
== 3.2 Newton's First Law

*Every body continues in its state of rest or of uniform motion in a straight line unless acted upon by a resultant external force.*

The property that resists the change is *inertia*, and it is measured by mass. A loaded lorry is harder to start and harder to stop than a bicycle for exactly that reason, and a passenger is thrown forward when a bus brakes because the passenger's body keeps the velocity the bus has just lost.

#trap-box("“No resultant force” does not mean “not moving”")[
  A body with zero resultant force is either at rest or moving with constant velocity — and both are equilibrium. A car cruising at 100 km h⁻¹ on a straight road has zero resultant force on it, because the driving force exactly balances the friction and drag. Candidates who read “equilibrium” as “stationary” throw away the questions about constant-velocity motion.
]

// ============================================================================
== 3.3 Newton's Second Law

*The rate of change of momentum of a body is proportional to the resultant force acting on it, and takes place in the direction of that force.*

For a body of constant mass this becomes the equation the whole syllabus runs on:

#formula-box("The second law, three ways")[
  + $F = m a$ — the working form, with $F$ the *resultant* force in newtons.
  + $F = (m v - m u)/t$ — the definition, which still works when the mass changes (a rocket).
  + $W = m g$ — the special case where the force is weight and the acceleration is $g$.
]

#worked-example(
  1,
  "A lift, and the reading on a scale inside it",
  [A person of mass 60 kg stands on a scale in a lift. Taking $g = 10$ m s⁻², find the reading of the scale (the normal reaction) when the lift is (a) at rest, (b) accelerating upwards at 2.0 m s⁻², (c) accelerating downwards at 2.0 m s⁻², and (d) moving upwards at a steady speed.],
  [
    The scale reads the normal reaction $R$. Taking upwards as positive, the resultant force is $R - m g$ and it equals $m a$.

    $R = m(g + a)$ when the acceleration is upward, and $R = m(g - a)$ when it is downward.

    *(a)* At rest, $a = 0$: $R = 60 times 10 = 600$ N.

    *(b)* $R = 60(10 + 2.0) = 720$ N — heavier.

    *(c)* $R = 60(10 - 2.0) = 480$ N — lighter.

    *(d)* Steady speed means $a = 0$, so $R = 600$ N again, *whatever* the speed and whether the lift is going up or down.

    *Check.* The reading changes only while the velocity is *changing*: heavier as the lift starts upwards, lighter as it starts downwards, and normal at a steady speed.
  ],
  tier: "UTME STANDARD",
  source: "UTME-style",
)

// ============================================================================
== 3.4 Newton's Third Law

*To every action there is an equal and opposite reaction.*

The two forces act on *different bodies*, which is why they never cancel. A book on a table pushes down on the table and the table pushes up on the book: the pair is book-on-table and table-on-book, not two forces on the book. Drop a stone and the Earth pulls it down; the stone pulls the Earth up with the same force, and the Earth's enormous mass makes its acceleration unmeasurably small.

// ============================================================================
== 3.5 Friction

Friction is the force between surfaces in contact that opposes relative sliding. It is caused by the interlocking of microscopic irregularities and by the attraction between the surfaces, and it is useful: without it no wheel would turn, no floor could be walked on and no knot would hold.

#concept-box("The three facts the examiner tests")[
  + Friction is *independent of the area of contact* — a brick slides as easily on its side as on its end, for the same material and weight.
  + Friction is *proportional to the normal reaction*, not to the weight: $F <= mu R$.
  + The *coefficient of friction* $mu$ is a ratio of two forces. It has no unit and no dimension, and it depends on the pair of surfaces, not on their size.
]

The maximum friction available before sliding begins is the *limiting friction*, and at that point $F = mu R$. Once sliding starts the friction drops slightly; the value used in this book is always the limiting value.

#diagram-fig("diagrams/ch03_friction.svg",
  "Friction against the applied force: while the body is at rest the friction grows to match the pull, until it reaches its limiting value; after that it stays nearly constant while the body slides.", width: 88%)

#worked-example(
  2,
  "Pulling a block at constant speed",
  [A block of mass 8.0 kg is pulled along a horizontal floor by a horizontal force. The coefficient of friction between the block and the floor is 0.35. Taking $g = 10$ m s⁻², find (a) the normal reaction, (b) the friction, and (c) the pulling force needed to keep the block moving at constant speed. What happens if the pulling force is doubled?],
  [
    *(a)* On level ground with no vertical acceleration, $R = m g = 80$ N.

    *(b)* $F = mu R = 0.35 times 80 = 28$ N.

    *(c)* At constant speed the acceleration is zero, so the resultant force is zero and the pull equals the friction: 28 N.

    Doubling the pull to 56 N leaves a resultant of $56 - 28 = 28$ N on a mass of 8.0 kg, which is an acceleration of 3.5 m s⁻². It does not move at double the speed; it moves faster and faster.

    *Check.* A force that barely keeps a body moving is not the same as a force that starts it moving faster — the first answers “constant speed”, the second answers “resultant force”. Read which one the question asked for.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.6 Equilibrium, Moments and Couples

A body in equilibrium has no resultant force *and* no resultant turning effect. The first condition gives the force equations; the second gives the *principle of moments*.

#formula-box("The two conditions")[
  + *Forces:* the sum of the forces in any direction is zero.
  + *Moments:* the sum of the clockwise moments about any point equals the sum of the anticlockwise moments, where a moment is $F times d$ with $d$ the perpendicular distance from the pivot.
  + *A couple* is two equal, opposite, parallel forces; its moment is $F times$ the perpendicular distance *between* them.
]

#worked-example(
  3,
  "A metre rule on a pivot",
  [A uniform metre rule of weight 2.0 N is pivoted at the 40 cm mark. A load of 6.0 N is hung at the 10 cm mark. At which mark must a 4.0 N load be hung to balance the rule?],
  [
    The rule is uniform, so its weight acts at its centre, the 50 cm mark — 10 cm to the right of the pivot.

    Clockwise moments about the pivot: the rule's weight, $2.0 times 0.10 = 0.20$ N m; the 4.0 N load at distance $d$ to the right, $4.0 d$.

    Anticlockwise: the 6.0 N load at $0.30$ m to the left, $6.0 times 0.30 = 1.80$ N m.

    $4.0 d + 0.20 = 1.80$, so $d = 0.40$ m.

    The load hangs at $40 + 40 = 80$ cm.

    *Check.* The heavier load sits closer to the pivot, as it must: 6.0 N at 30 cm balances 4.0 N at 40 cm because $6 times 30 = 4 times 40$ plus the rule's own 20 N cm. If your answer put the smaller load nearer the pivot, the moments were taken about the wrong point.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/ch03_moments.svg",
  "Example 3 once the rule is balanced: the 6.0 N load at 30 cm from the pivot produces exactly the moment of the 4.0 N load at 40 cm plus the rule's own weight at 10 cm.", width: 100%)

#trap-box("Where the pivot is decides the question")[
  Take moments about the point where an *unknown* force acts, and that force disappears from the equation. In a beam with two supports, taking moments about one support gives the reaction at the other in a single line — and it is why the choice of pivot is a strategy, not an accident.
]

// ============================================================================
== 3.7 Momentum and Impulse

*Momentum* is mass times velocity, $p = m v$, measured in kg m s⁻¹, and it is a vector. *Impulse* is force times the time for which it acts, and it equals the change of momentum:

#formula-box("The impulse–momentum equation")[
  $F t = m v - m u$ — which is Newton's second law with the time written in. A large change of momentum can be produced by a large force acting briefly or a small force acting for a long time.
]

That is the physics of the airbag, the crash barrier, the bending of the knees on landing and the sandpit under a long-jump: each one lengthens the time, and so reduces the force.

#worked-example(
  4,
  "Catching a ball, and the force in the hands",
  [A ball of mass 0.20 kg travelling at 12 m s⁻¹ is caught and brought to rest in 0.050 s. Find (a) the change in momentum and (b) the average force exerted by the hands. What would the force be if the catch took 0.50 s?],
  [
    *(a)* Taking the direction of the ball as positive, $m u = 0.20 times 12 = 2.4$ kg m s⁻¹ and $m v = 0$.

    Change of momentum $= 0 - 2.4 = -2.4$ kg m s⁻¹; the magnitude is 2.4 kg m s⁻¹, opposite to the ball's motion.

    *(b)* $F = (m v - m u)/t$, with 2.4 N s delivered over 0.050 s: $F = 48$ N, opposite to the ball's motion.

    Over 0.50 s the same change of momentum needs only 4.8 N — ten times less, for ten times longer.

    *Check.* The impulse is the same in both cases; only its distribution in time has changed. That is exactly what a fielder does when she lets her hands travel back with the ball.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.8 Collisions

In every collision between bodies with no *external* resultant force, the total momentum is conserved:

$m_1 u_1 + m_2 u_2 = m_1 v_1 + m_2 v_2$

Kinetic energy, however, is not always conserved. In an *elastic* collision it is; in an *inelastic* one some of it becomes heat, sound and deformation. When the bodies stick together the collision is *perfectly inelastic* and they share a common velocity.

#diagram-fig("diagrams/ch03_collision.svg",
  "A perfectly inelastic collision: the momentum before equals the momentum after, while most of the kinetic energy leaves as heat, sound and deformation.", width: 96%)

#worked-example(
  5,
  "A bullet embedded in a block",
  [A bullet of mass 20 g travelling at 400 m s⁻¹ embeds itself in a block of mass 1.98 kg resting on a smooth surface. Find (a) the velocity of the block and bullet afterwards and (b) the kinetic energy lost in the collision.],
  [
    *(a)* Momentum before $= 0.020 times 400 + 0 = 8.0$ kg m s⁻¹.

    After the collision the combined mass is 2.00 kg:

    $8.0 = 2.00 v$, so $v = 4.0$ m s⁻¹.

    *(b)* Initial kinetic energy $= 1/2 (0.020)(400)^2 = 1600$ J.

    Final kinetic energy $= 1/2 (2.00)(4.0)^2 = 16$ J.

    Energy lost $= 1584$ J ≈ 1.6 kJ — converted into heat and into the work of deforming the block.

    *Check.* Momentum is conserved but kinetic energy is not, and the two facts together are the signature of an inelastic collision. A candidate who conserves kinetic energy here gets a bullet that bounces back at 400 m s⁻¹ and a block that does not move — physically impossible, and easy to spot if you ask where the energy went.
  ],
  tier: "JAMB CHALLENGE",
)

#trap-box("The three ways momentum questions are lost")[
  *Signs.* Momentum is a vector: a body that rebounds has a velocity of the opposite sign, and the change of momentum is $m v - (-m u) = m(v + u)$, not $m(v - u)$.

  *Mass in the wrong units.* 20 g is 0.020 kg, not 20 kg; the commonest arithmetic slip in the topic is a factor of a thousand.

  *External forces.* A collision with the ground is not a conservation-of-momentum problem for the ball alone — the Earth takes the momentum. Momentum is conserved for the *system*, and the Earth is part of it.
]

// ============================================================================
#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A force is what changes motion, and Newton's first law says that without one there is no change: a body at rest stays at rest and a body in motion keeps its velocity, which is inertia. The second law turns that into arithmetic, $F = m a$, with $F$ the *resultant* force — which is why a lift that accelerates upwards reads heavier on a scale and one that moves at a steady speed reads normal. The third law pairs every force with an equal and opposite one acting on a different body, so the pair never cancels. Friction is the surface force that opposes sliding, proportional to the reaction and not to the area, and its coefficient is a pure number. A body in equilibrium has no resultant force and no resultant moment, and moments are taken about a point you choose — usually the point where an unknown force acts, so that it disappears. Momentum, $m v$, is conserved in every collision with no external resultant force, but kinetic energy is conserved only in the elastic ones, and the difference between the two is where the marks in the harder questions are hidden.
  ]
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the three laws, friction, moments and momentum.", width: 100%)

== 3.9 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [A body of mass 4 kg moves with an acceleration of 3 m s⁻². The resultant force on it is], [0.75 N], [7 N], [12 N], [36 N])
#mcq(2, [The coefficient of friction between two surfaces], [has the unit N], [has the unit N m⁻¹], [is dimensionless], [depends on the area of contact])
#mcq(3, [A force of 20 N acts for 0.50 s on a body of mass 5 kg initially at rest. The final velocity is], [2 m s⁻¹], [4 m s⁻¹], [10 m s⁻¹], [50 m s⁻¹])
#mcq(4, [Two bodies of equal mass collide and stick together, one moving at 6 m s⁻¹ and the other at rest. Their common velocity is], [0], [3 m s⁻¹], [6 m s⁻¹], [12 m s⁻¹])

#answer-key-grid(("C", "C", "A", "B"))

#answer-notes((
  ("C", [$F = m a = 4 times 3 = 12$ N.]),
  ("C", [it is the ratio of two forces, so it has no unit and does not depend on the area of contact.]),
  ("A", [impulse $F t = 10$ N s $= m v$, so $v = 10/5 = 2$ m s⁻¹.]),
  ("B", [momentum $6m = 2m v$, so $v = 3$ m s⁻¹ — half the speed, twice the mass.]),
))

#concept-box("Carry this into Chapter 4")[
  A force that moves a body through a distance *does work*, and work is energy transferred. The next chapter turns $F = m a$ into $W = F s$, defines the energy a moving body carries, and shows that the total is conserved — which is often a faster route to an answer than the forces themselves, especially when the motion is up a slope or a fall.
]

#include "drill_ch03.typ"
