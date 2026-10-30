"""Chapter 3 drill bank — forces, Newton's laws and momentum.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_3 = [
    ("A body of mass 5.0 kg moves with an acceleration of 4.0 m s⁻². The resultant force on it is",
     ["1.25 N", "9.0 N", "20 N", "45 N"], 2,
     "$F = m a = 5.0 times 4.0 = 20$ N."),

    ("The weight of a body of mass 3.0 kg, taking $g = 10$ m s⁻², is",
     ["0.30 N", "3.0 N", "30 N", "300 N"], 2,
     "$W = m g = 3.0 times 10 = 30$ N, directed vertically downwards."),

    ("A person of mass 70 kg stands on a scale in a lift accelerating upwards at 2.0 m s⁻². The reading of the scale is",
     ["560 N", "700 N", "840 N", "980 N"], 2,
     "$R = m(g + a) = 70(10 + 2.0) = 840$ N — heavier than at rest, as the passenger feels."),

    ("The same person is in a lift accelerating downwards at 2.0 m s⁻². The scale now reads",
     ["560 N", "700 N", "840 N", "0"], 0,
     "$R = m(g - a) = 70(10 - 2.0) = 560$ N: the floor pushes less because the person is accelerating down with it."),

    ("The same person is in a lift moving upwards at a steady 3.0 m s⁻¹. The scale reads",
     ["560 N", "700 N", "840 N", "910 N"], 1,
     "Steady speed means no acceleration, so $R = m g = 700$ N whatever the speed and whichever way the lift moves."),

    ("Newton's first law is best described as the law of",
     ["momentum", "inertia", "gravitation", "action and reaction"], 1,
     "A body keeps its state of rest or uniform motion unless a resultant force acts, and the property that resists change is inertia, measured by mass."),

    ("A book rests on a table. The reaction to the weight of the book is",
     ["the push of the table on the book", "the pull of the book on the Earth", "the weight of the table", "the friction between book and table"], 1,
     "Action and reaction are the same kind of force on *different* bodies: the Earth pulls the book down, so the book pulls the Earth up. The table's push is a separate force that happens to balance the weight."),

    ("The momentum of a body of mass 2.0 kg moving at 5.0 m s⁻¹ is",
     ["0.40 kg m s⁻¹", "2.5 kg m s⁻¹", "7.0 kg m s⁻¹", "10 kg m s⁻¹"], 3,
     "$p = m v = 2.0 times 5.0 = 10$ kg m s⁻¹, in the direction of the velocity."),

    ("Impulse is equal to",
     ["the rate of change of momentum", "the change of momentum", "the product of mass and acceleration", "the work done"], 1,
     "$F t = m v - m u$: impulse and change of momentum are the same quantity, both measured in N s or kg m s⁻¹."),

    ("A ball of mass 0.50 kg travelling at 10 m s⁻¹ is stopped in 0.10 s. The average force on it is",
     ["5.0 N", "10 N", "50 N", "500 N"], 2,
     "$F = (m v - m u)\/t = (0 - 0.50 times 10)\/0.10 = -50$ N, so 50 N opposite to the motion."),

    ("A gun of mass 2.0 kg fires a bullet of mass 0.020 kg at 300 m s⁻¹. The recoil speed of the gun is",
     ["0.30 m s⁻¹", "3.0 m s⁻¹", "30 m s⁻¹", "300 m s⁻¹"], 1,
     "Momentum before is zero, so $2.0 v = 0.020 times 300 = 6.0$ and $v = 3.0$ m s⁻¹."),

    ("Two bodies of equal mass collide and stick together, one moving at 6.0 m s⁻¹ and the other at rest. Their common velocity is",
     ["0", "3.0 m s⁻¹", "6.0 m s⁻¹", "12 m s⁻¹"], 1,
     "$6 m = 2 m v$, so $v = 3.0$ m s⁻¹: the momentum is shared between twice the mass, which halves the speed."),

    ("In a perfectly inelastic collision between two equal masses, one moving and one at rest, the fraction of the kinetic energy lost is",
     ["none", "one quarter", "one half", "all of it"], 2,
     "Initial energy $= (1\/2) m v^2$; final $= (1\/2)(2m)(v\/2)^2 = (1\/4) m v^2$. Half the energy becomes heat and sound."),

    ("Friction between two surfaces does *not* depend on",
     ["the nature of the surfaces", "the normal reaction", "the area of contact", "whether the body is moving"], 2,
     "Friction is proportional to the reaction and depends on the materials, not on how much surface is in contact — a brick slides as easily on its side as on its end."),

    ("A block slides on a horizontal floor. The friction is 20 N and the normal reaction is 50 N. The coefficient of friction is",
     ["0.25", "0.40", "2.5", "4.0"], 1,
     "$mu = F\/R = 20\/50 = 0.40$, and it has no unit."),

    ("A block of mass 4.0 kg rests on a horizontal floor with $mu = 0.50$. Taking $g = 10$ m s⁻², the horizontal force needed to keep it moving at constant speed is",
     ["8.0 N", "20 N", "40 N", "80 N"], 1,
     "$F = mu R = mu m g = 0.50 times 4.0 times 10 = 20$ N; at constant speed the pull just balances the friction."),

    ("A force of 10 N acts at a perpendicular distance of 0.50 m from a pivot. The moment is",
     ["0.50 N m", "5.0 N m", "10 N m", "20 N m"], 1,
     "Moment $= F times d = 10 times 0.50 = 5.0$ N m."),

    ("A uniform metre rule is pivoted at its centre. A load of 60 N hangs 0.50 m from the pivot. To balance it, a vertical effort applied 2.0 m from the pivot on the other side must be",
     ["7.5 N", "15 N", "30 N", "120 N"], 1,
     "Taking moments about the pivot: $E times 2.0 = 60 times 0.50$, so $E = 15$ N."),

    ("A couple consists of two forces which are",
     ["equal and in the same direction", "equal, opposite and parallel", "unequal and perpendicular", "equal and perpendicular"], 1,
     "A couple is a pair of equal, opposite, parallel forces, and its moment is one force times the perpendicular distance *between* them."),

    ("Two opposite forces of 5.0 N act 0.40 m apart. The moment of the couple is",
     ["0.20 N m", "2.0 N m", "5.0 N m", "20 N m"], 1,
     "For a couple the distance used is the one between the forces: $5.0 times 0.40 = 2.0$ N m."),

    ("The centre of gravity of a uniform metre rule is at",
     ["the 0 cm mark", "the 25 cm mark", "the 50 cm mark", "the 100 cm mark"], 2,
     "A uniform rule balances at its midpoint, so its weight acts at the 50 cm mark — the fact that makes moment questions about rules work."),

    ("A body is in equilibrium when",
     ["it is at rest", "the resultant force is zero only", "the resultant moment is zero only", "the resultant force and the resultant moment are both zero"], 3,
     "Both conditions are needed: a couple can leave the resultant force zero while the body still turns."),

    ("A body of mass 2.0 kg is lifted by a rope with an acceleration of 1.0 m s⁻². Taking $g = 10$ m s⁻², the tension in the rope is",
     ["18 N", "20 N", "22 N", "24 N"], 2,
     "$T - m g = m a$, so $T = m(g + a) = 2.0(10 + 1.0) = 22$ N."),

    ("A block of mass 5.0 kg rests on level ground. The normal reaction on it is",
     ["5.0 N", "10 N", "50 N", "zero"], 2,
     "With no vertical acceleration, $R = m g = 5.0 times 10 = 50$ N."),

    ("A block of mass 5.0 kg rests on a smooth plane inclined at 30° to the horizontal. Taking $g = 10$ m s⁻², the normal reaction is",
     ["25 N", "43 N", "50 N", "87 N"], 1,
     "$R = m g cos theta = 50 times cos 30 degree = 43$ N; the component down the slope is $50 sin 30 degree = 25$ N."),

    ("Newton's second law can be written $F = (m v - m u)\/t$. This form is useful because it",
     ["ignores the mass", "works when the mass changes", "removes the need for time", "applies only to collisions"], 1,
     "The rate-of-change-of-momentum form survives a rocket burning fuel, where $m$ is not constant and $F = m a$ cannot be applied directly."),

    ("The SI unit of impulse is",
     ["N", "N s", "N m", "kg m s⁻²"], 1,
     "Impulse is force times time, so N s — which is the same as kg m s⁻¹, the unit of momentum."),

    ("Which of these is a unit of momentum?",
     ["N s⁻¹", "kg m s⁻¹", "N m", "kg m s⁻²"], 1,
     "$p = m v$ gives kg m s⁻¹, identical to N s."),

    ("A body of mass 3.0 kg moving at 4.0 m s⁻¹ collides with a stationary 1.0 kg body and they stick together. Their common velocity is",
     ["1.0 m s⁻¹", "3.0 m s⁻¹", "4.0 m s⁻¹", "12 m s⁻¹"], 1,
     "$3.0 times 4.0 = 4.0 v$, so $v = 3.0$ m s⁻¹."),

    ("A stationary shell explodes into two fragments. Immediately after the explosion,",
     ["both fragments move in the same direction", "the total momentum is zero", "the total kinetic energy is zero", "the heavier fragment is at rest"], 1,
     "The explosion is internal, so momentum is conserved: the fragments move in opposite directions with equal and opposite momenta, and the total is still zero."),

    ("In an elastic collision,",
     ["momentum is not conserved", "kinetic energy is conserved", "the bodies always stick together", "energy is created"], 1,
     "Both momentum and kinetic energy are conserved in an elastic collision; in an inelastic one only momentum is."),

    ("An airbag reduces injury in a crash because it",
     ["reduces the change of momentum", "increases the time of impact and so reduces the force", "increases the force", "removes the momentum"], 1,
     "$F t = m v - m u$: for a fixed change of momentum, a longer time means a smaller force — which is also why a fielder draws her hands back."),

    ("The direction of the friction force on a sliding body is",
     ["along the motion", "opposite to the motion", "perpendicular to the surface", "vertically upwards"], 1,
     "Friction opposes relative sliding and lies along the surface, so it points against the direction of motion."),

    ("Compared with its mass, the weight of a body",
     ["is the same everywhere", "changes with the gravitational field", "is measured in kilograms", "is a scalar"], 1,
     "Mass is a scalar and does not change; weight is $m g$, a force, and it changes with $g$ — about one sixth as much on the Moon."),

    ("A body of mass 10 kg is taken to the Moon, where $g = 1.6$ m s⁻². Its weight there is",
     ["1.6 N", "10 N", "16 N", "100 N"], 2,
     "$W = m g = 10 times 1.6 = 16$ N, while its mass stays 10 kg."),

    ("A body is acted on by several forces whose vector sum is zero. The body",
     ["must be at rest", "must be moving", "is either at rest or moving with constant velocity", "is accelerating"], 2,
     "Zero resultant force means zero acceleration: rest and uniform motion are the two cases, and both count as equilibrium."),

    ("A ball of mass 0.20 kg hits a wall at 10 m s⁻¹ and rebounds at 10 m s⁻¹. The change in momentum is",
     ["zero", "2.0 kg m s⁻¹", "4.0 kg m s⁻¹", "20 kg m s⁻¹"], 2,
     "Momentum is a vector: $0.20(10) - 0.20(-10) = 4.0$ kg m s⁻¹, because the velocity reverses."),

    ("The ball in the previous question is in contact with the wall for 0.10 s. The average force on the wall is",
     ["4.0 N", "20 N", "40 N", "80 N"], 2,
     "$F = (m v - m u)\/t = 4.0\/0.10 = 40$ N."),

    ("Two forces of 10 N and 6.0 N act on a body in opposite directions. The resultant force is",
     ["16 N in the direction of the 10 N force", "4.0 N in the direction of the 10 N force",
      "4.0 N in the direction of the 6.0 N force", "zero"], 1,
     "Opposite directions, subtract: $10 - 6.0 = 4.0$ N, and the resultant points the way the larger force does."),

    ("A force of 20 N acts on a body of mass 4.0 kg. Its acceleration is",
     ["0.20 m s⁻²", "2.0 m s⁻²", "5.0 m s⁻²", "80 m s⁻²"], 2,
     "$a = F\/m = 20\/4.0 = 5.0$ m s⁻²."),
]
