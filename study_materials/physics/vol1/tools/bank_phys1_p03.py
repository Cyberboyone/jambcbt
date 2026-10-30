"""Mock-paper bank for Chapter 3 — forces, Newton's laws and momentum.

These items never appear in the end-of-chapter drill; `tools/papers_phys1.py`
deals them into the two mock papers, the rapid-fire appendix and the master bank.
"""

PAPER_3 = [
    ("A force acting on a body of mass 4.0 kg gives it an acceleration of 5.0 m s⁻². The force is",
     ["0.80 N", "9.0 N", "20 N", "80 N"], 2,
     "$F = m a = 4.0 times 5.0 = 20$ N."),

    ("The weight of a body of mass 5.0 kg is ($g = 10$ m s⁻²)",
     ["0.50 N", "5.0 N", "50 N", "500 N"], 2,
     "Weight is the force of gravity, $W = m g = 5.0 times 10 = 50$ N."),

    ("Newton's second law may be written as",
     ["force equals mass times velocity", "force equals the rate of change of momentum", "force equals momentum times time", "force equals mass times distance"], 1,
     "$F = (m v - m u)\/t$ — when the mass is constant this is $F = m a$."),

    ("A man of mass 60 kg stands in a lift accelerating upward at 2.0 m s⁻². The reaction from the floor is ($g = 10$ m s⁻²)",
     ["120 N", "480 N", "600 N", "720 N"], 3,
     "$R - m g = m a$, so $R = 60(10 + 2) = 720$ N."),

    ("The same man stands in a lift accelerating downward at 2.0 m s⁻². The reaction is",
     ["120 N", "480 N", "600 N", "720 N"], 1,
     "$m g - R = m a$, so $R = 60(10 - 2) = 480$ N."),

    ("The same man stands in a lift moving at a steady speed. The reaction is",
     ["120 N", "480 N", "600 N", "720 N"], 2,
     "With no acceleration the forces balance and $R = m g = 600$ N."),

    ("The impulse of a force is equal to the",
     ["change in momentum", "change in kinetic energy", "work done", "rate of change of momentum"], 0,
     "Impulse is $F t$, which by Newton's second law equals the change in momentum."),

    ("A ball of mass 0.20 kg moving at 20 m s⁻¹ is brought to rest in 0.05 s. The average force is",
     ["4.0 N", "20 N", "80 N", "400 N"], 2,
     "$F = (m v - m u)\/t = (0 - 0.20 times 20)\/0.05$, a magnitude of 80 N."),

    ("The momentum of a body of mass 3.0 kg moving at 4.0 m s⁻¹ is",
     ["0.75 kg m s⁻¹", "7.0 kg m s⁻¹", "12 kg m s⁻¹", "48 kg m s⁻¹"], 2,
     "$p = m v = 3.0 times 4.0 = 12$ kg m s⁻¹."),

    ("A body of mass 2.0 kg moves east at 3.0 m s⁻¹ while a 3.0 kg body moves west at 2.0 m s⁻¹. The total momentum is",
     ["0", "6 kg m s⁻¹ east", "12 kg m s⁻¹ east", "12 kg m s⁻¹ west"], 0,
     "The momenta are equal and opposite: $(6) + (-6) = 0$."),

    ("A body of mass 2.0 kg moving at 6.0 m s⁻¹ collides with and sticks to a 4.0 kg body at rest. Their common speed is",
     ["1.0 m s⁻¹", "2.0 m s⁻¹", "3.0 m s⁻¹", "6.0 m s⁻¹"], 1,
     "Momentum is conserved: $2.0 times 6.0 = 6.0 times v$, so $v = 2.0$ m s⁻¹."),

    ("A gun of mass 2.0 kg fires a bullet of mass 0.020 kg at 400 m s⁻¹. The recoil speed of the gun is",
     ["0.10 m s⁻¹", "4.0 m s⁻¹", "20 m s⁻¹", "40 m s⁻¹"], 1,
     "$2.0 times v = 0.020 times 400 = 8.0$, so $v = 4.0$ m s⁻¹ backwards."),

    ("A block of weight 100 N rests on a surface with a coefficient of friction of 0.40. The friction when it slides is",
     ["0.40 N", "40 N", "100 N", "250 N"], 1,
     "$f = mu N = 0.40 times 100 = 40$ N."),

    ("A 10 kg block is pushed with 25 N against a friction of 15 N. Its acceleration is",
     ["0.40 m s⁻²", "1.0 m s⁻²", "2.5 m s⁻²", "4.0 m s⁻²"], 1,
     "The resultant is $25 - 15 = 10$ N, so $a = 10\/10 = 1.0$ m s⁻²."),

    ("The limiting friction between two surfaces is equal to",
     ["$mu N$", "$N \/ mu$", "$mu \/ N$", "$mu + N$"], 0,
     "The greatest friction before sliding is the coefficient multiplied by the normal reaction."),

    ("A 2.0 kg block rests on a smooth plane inclined at 30° to the horizontal. The force down the slope is ($g = 10$ m s⁻²)",
     ["5.0 N", "10 N", "17 N", "20 N"], 1,
     "$F = m g sin theta = 20 times 0.50 = 10$ N; the $cos theta$ component is balanced by the reaction."),

    ("A force of 20 N acts at a perpendicular distance of 0.50 m from a pivot. The moment is",
     ["0.025 N m", "10 N m", "40 N m", "100 N m"], 1,
     "$M = F d = 20 times 0.50 = 10$ N m."),

    ("A mass of 4.0 kg hangs 0.30 m from the pivot of a beam. To balance it, a mass hung 0.40 m from the pivot on the other side must be",
     ["2.0 kg", "3.0 kg", "4.0 kg", "5.3 kg"], 1,
     "The moments balance: $4.0 times 0.30 = m times 0.40$, so $m = 3.0$ kg."),

    ("A uniform metre rule is pivoted at its centre. A 2.0 N weight hangs at the 20 cm mark. To balance the rule a 2.0 N weight must hang at the",
     ["40 cm mark", "60 cm mark", "80 cm mark", "90 cm mark"], 2,
     "The 20 cm mark is 30 cm from the pivot, so the second weight must also be 30 cm away — at 80 cm."),

    ("Two forces of 10 N each act in opposite directions 0.20 m apart. The couple is",
     ["0.020 N m", "2.0 N m", "20 N m", "200 N m"], 1,
     "A couple's moment is one force times the perpendicular separation: $10 times 0.20 = 2.0$ N m."),

    ("The centre of gravity of a uniform metre rule is at the",
     ["0 cm mark", "25 cm mark", "50 cm mark", "100 cm mark"], 2,
     "The rule is uniform, so the weight acts at its midpoint."),

    ("A body becomes more stable when its centre of gravity is",
     ["raised", "lowered", "moved to one side", "unchanged"], 1,
     "A low centre of gravity means the weight line stays inside the base through a larger tilt."),

    ("Newton's third law states that action and reaction are",
     ["equal and act on the same body", "equal, opposite and act on different bodies", "unequal and act on the same body", "equal and in the same direction"], 1,
     "The two forces are always equal in size, opposite in direction, and never act on the same body — that is why they do not cancel."),

    ("The inertia of a body is measured by its",
     ["weight", "mass", "volume", "density"], 1,
     "Mass is the measure of inertia — the resistance to any change of motion."),

    ("A string lifts a mass of 2.0 kg upward at 4.0 m s⁻². The tension is ($g = 10$ m s⁻²)",
     ["8.0 N", "12 N", "20 N", "28 N"], 3,
     "$T - m g = m a$, so $T = 2.0(10 + 4.0) = 28$ N."),

    ("Masses of 3.0 kg and 2.0 kg hang on either side of a light pulley. The acceleration of the system is ($g = 10$ m s⁻²)",
     ["1.0 m s⁻²", "2.0 m s⁻²", "5.0 m s⁻²", "10 m s⁻²"], 1,
     "$a = (m_1 - m_2) g \/ (m_1 + m_2) = 10\/5.0 = 2.0$ m s⁻²."),

    ("The tension in the string of the pulley system above is",
     ["20 N", "24 N", "30 N", "50 N"], 1,
     "For the lighter mass, $T - 20 = 2.0 times 2.0$, so $T = 24$ N."),

    ("A force of 40 N pulls a 10 kg block on a frictionless surface. Its acceleration is",
     ["0.25 m s⁻²", "2.0 m s⁻²", "4.0 m s⁻²", "400 m s⁻²"], 2,
     "$a = F\/m = 40\/10 = 4.0$ m s⁻²."),

    ("A body in free fall experiences apparent weightlessness because",
     ["gravity stops acting", "the reaction on it is zero", "its mass becomes zero", "air resistance vanishes"], 1,
     "The body and its support fall together, so the support pushes on it with no force at all."),

    ("The SI unit of momentum is",
     ["N s⁻¹", "kg m s⁻¹", "kg m s⁻²", "N m"], 1,
     "Momentum is mass times velocity: kg m s⁻¹, which is the same as the newton-second."),

    ("A force of 50 N acts for 4.0 s on a 5.0 kg body at rest. Its final speed is",
     ["4.0 m s⁻¹", "10 m s⁻¹", "40 m s⁻¹", "200 m s⁻¹"], 2,
     "$F t = m v$, so $50 times 4.0 = 5.0 v$ and $v = 40$ m s⁻¹."),

    ("A car of mass 1500 kg accelerates from rest to 20 m s⁻¹ in 10 s. The average force is",
     ["300 N", "1500 N", "3000 N", "30 000 N"], 2,
     "$F = m (v - u)\/t = 1500 times 20 \/ 10 = 3000$ N."),

    ("A block of weight 20 N begins to slide when pushed with 8.0 N. The coefficient of static friction is",
     ["0.20", "0.40", "2.5", "5.0"], 1,
     "$mu = f\/N = 8.0\/20 = 0.40$."),

    ("A 5.0 kg block is dragged along a table with a coefficient of friction of 0.20. The friction is ($g = 10$ m s⁻²)",
     ["1.0 N", "10 N", "25 N", "50 N"], 1,
     "$N = 50$ N and $f = 0.20 times 50 = 10$ N."),

    ("A ball of mass 2.0 kg strikes a wall at 10 m s⁻¹ and rebounds at 10 m s⁻¹. The change in momentum is",
     ["0", "20 kg m s⁻¹", "40 kg m s⁻¹", "80 kg m s⁻¹"], 2,
     "Taking the initial direction as positive: $-20 - (+20) = -40$ kg m s⁻¹, a change of magnitude 40."),

    ("If the impact in the last question lasts 0.10 s, the average force on the ball is",
     ["200 N", "400 N", "800 N", "4000 N"], 1,
     "The force is the change in momentum divided by the time: 40 over 0.10 gives 400 N."),

    ("A force of 20 N acts for 3.0 s. The impulse is",
     ["6.7 N s", "23 N s", "60 N s", "600 N s"], 2,
     "Impulse $= F t = 20 times 3.0 = 60$ N s."),

    ("Three forces act at a point and the body stays at rest. The resultant force is",
     ["equal to the largest force", "zero", "equal to the sum of the forces", "unknown"], 1,
     "Equilibrium means the vector sum of the forces is zero."),

    ("A mass of 100 g hangs from a spring balance. Taking $g = 10$ m s⁻², the balance reads",
     ["0.10 N", "1.0 N", "10 N", "100 N"], 1,
     "$W = 0.100 times 10 = 1.0$ N."),

    ("A man pushes a wall with a force of 50 N. The wall pushes on the man with",
     ["zero", "less than 50 N", "50 N", "more than 50 N"], 2,
     "Newton's third law: the reaction is equal in size and opposite in direction."),
]
