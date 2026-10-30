"""Mock-paper bank for Chapter 5 — circular motion, gravitation and SHM.

These items never appear in the end-of-chapter drill; `tools/papers_phys1.py`
deals them into the two mock papers, the rapid-fire appendix and the master bank.
"""

PAPER_5 = [
    ("A body moves in a circle of radius 3.0 m at a constant speed of 9.0 m s⁻¹. Its angular speed is",
     ["0.33 rad s⁻¹", "3.0 rad s⁻¹", "6.0 rad s⁻¹", "27 rad s⁻¹"], 1,
     "$omega = v\/r = 9.0\/3.0 = 3.0$ rad s⁻¹."),

    ("A wheel turns at 20 rad s⁻¹. Its period of rotation is",
     ["0.16 s", "0.31 s", "3.1 s", "20 s"], 1,
     "$T = 2 pi \/ omega = 6.28\/20 = 0.31$ s."),

    ("A body makes 5.0 revolutions every second. Its angular speed is",
     ["5.0 rad s⁻¹", "10 rad s⁻¹", "16 rad s⁻¹", "31 rad s⁻¹"], 3,
     "$omega = 2 pi f = 6.28 times 5.0 = 31$ rad s⁻¹."),

    ("A body completes a circle in 0.50 s. Its frequency is",
     ["0.50 Hz", "1.0 Hz", "2.0 Hz", "4.0 Hz"], 2,
     "$f = 1\/T = 1\/0.50 = 2.0$ Hz."),

    ("A body moves at 2.0 m s⁻¹ in a circle of radius 0.50 m. Its centripetal acceleration is",
     ["1.0 m s⁻²", "4.0 m s⁻²", "8.0 m s⁻²", "16 m s⁻²"], 2,
     "$a = v^2\/r = 4.0\/0.50 = 8.0$ m s⁻²."),

    ("The centripetal force on a 0.50 kg body moving in a circle of radius 2.0 m at 4.0 m s⁻¹ is",
     ["1.0 N", "2.0 N", "4.0 N", "8.0 N"], 2,
     "$F = m v^2\/r = 0.50 times 16 \/ 2.0 = 4.0$ N."),

    ("A car of mass 800 kg rounds a bend of radius 80 m at 20 m s⁻¹. The centripetal force is",
     ["200 N", "2000 N", "4000 N", "8000 N"], 2,
     "$F = 800 times 400 \/ 80 = 4000$ N, supplied by friction."),

    ("A car rounds a level bend of radius 20 m with the coefficient of friction 0.50. Taking $g = 10$ m s⁻², the greatest safe speed is",
     ["5.0 m s⁻¹", "10 m s⁻¹", "14 m s⁻¹", "20 m s⁻¹"], 1,
     "$v = sqrt(mu r g) = sqrt(0.50 times 20 times 10) = 10$ m s⁻¹."),

    ("A body moving in a circle at constant speed has",
     ["constant velocity", "constant speed but changing velocity", "zero acceleration", "constant acceleration"], 1,
     "The speed does not change, but the direction of motion does, so the velocity changes and there is an acceleration towards the centre."),

    ("The least speed a stone needs at the top of a vertical circle of radius 1.0 m to keep the string taut is ($g = 10$ m s⁻²)",
     ["1.0 m s⁻¹", "3.2 m s⁻¹", "10 m s⁻¹", "20 m s⁻¹"], 1,
     "At the top $T + m g = m v^2\/r$; the string just goes slack when $T = 0$, so $v = sqrt(g r) = 3.2$ m s⁻¹."),

    ("The angle swept in 2.0 s by a body turning at 3.0 rad s⁻¹ is",
     ["1.5 rad", "3.0 rad", "6.0 rad", "9.0 rad"], 2,
     "$theta = omega t = 3.0 times 2.0 = 6.0$ rad."),

    ("A body moves in a circle at constant angular speed. If the radius is doubled, its linear speed",
     ["is halved", "stays the same", "is doubled", "is quadrupled"], 2,
     "$v = omega r$, so doubling $r$ at the same $omega$ doubles $v$."),

    ("The centripetal force on a body in circular motion is always directed",
     ["along the tangent", "away from the centre", "towards the centre", "vertically downwards"], 2,
     "The change in velocity points to the centre of the circle, and the force is in the direction of that change."),

    ("Two bodies of mass 1.0 kg and 4.0 kg are 0.50 m apart. Taking $G = 6.7 times 10^(-11)$ N m² kg⁻², the force between them is",
     ["$1.1 times 10^(-10)$ N", "$1.1 times 10^(-9)$ N", "$5.4 times 10^(-9)$ N", "$2.7 times 10^(-9)$ N"], 1,
     "$F = G m_1 m_2 \/ r^2 = (6.7 times 10^(-11))(4.0)\/(0.25) = 1.1 times 10^(-9)$ N."),

    ("If both masses are doubled and the distance between them is halved, the gravitational force becomes",
     ["2 times as large", "4 times as large", "8 times as large", "16 times as large"], 3,
     "$F prop m_1 m_2 \/ r^2$, so the factor is $2 times 2 times 4 = 16$."),

    ("The acceleration due to gravity at the surface of a planet is given by",
     ["$G M \/ R$", "$G M \/ R^2$", "$G M R$", "$G R^2 \/ M$"], 1,
     "Equating $G M m \/ R^2$ to $m g$ gives $g = G M \/ R^2$."),

    ("A planet has $1\/81$ of the Earth's mass and $1\/4$ of its radius. Its surface gravity is about",
     ["0.06 of the Earth's", "0.20 of the Earth's", "4.0 times the Earth's", "5.1 times the Earth's"], 1,
     "$g prop M\/R^2$, so the ratio is $(1\/81) times 16 = 0.20$."),

    ("A body taken to a height equal to the Earth's radius has a weight of",
     ["the same as at the surface", "one half of its surface weight", "one quarter of its surface weight", "one ninth of its surface weight"], 2,
     "The distance from the centre doubles, so $g$ falls to one quarter."),

    ("The acceleration due to gravity at a depth equal to half the Earth's radius is",
     ["$g\/4$", "$g\/2$", "$g$", "$2g$"], 1,
     "Inside a uniform Earth $g$ falls linearly with depth: $g' = g(1 - d\/R)$, and $d = R\/2$ gives $g\/2$."),

    ("The orbital speed of a satellite at distance $r$ from the centre of a planet of mass $M$ is",
     ["$sqrt(G M r)$", "$sqrt(G M \/ r)$", "$G M \/ r$", "$sqrt(r \/ (G M))$"], 1,
     "Gravity supplies the centripetal force: $G M \/ r^2 = v^2 \/ r$."),

    ("A satellite moved to a higher circular orbit has",
     ["a shorter period", "a longer period", "the same period", "no period"], 1,
     "$T^2 prop r^3$, so a larger orbit takes longer to complete."),

    ("A geostationary satellite has a period of",
     ["1 hour", "12 hours", "24 hours", "365 days"], 2,
     "It must keep pace with the Earth's rotation, which takes one day."),

    ("The escape velocity from a planet of mass $M$ and radius $R$ is",
     ["$sqrt(2 G M \/ R)$", "$sqrt(G M \/ R)$", "$2 G M \/ R$", "$sqrt(2 G M R)$"], 0,
     "Equating the kinetic energy to the gravitational potential energy gives $v_e = sqrt(2 G M \/ R)$."),

    ("The escape velocity from the Moon is smaller than from the Earth mainly because the Moon has",
     ["no atmosphere", "a smaller mass and radius", "a longer day", "a colder surface"], 1,
     "$v_e = sqrt(2 G M \/ R)$ is smaller when $M$ is small."),

    ("The gravitational field strength at a point is measured in",
     ["N", "N kg⁻¹", "kg N⁻¹", "J kg⁻¹"], 1,
     "Field strength is force per unit mass, so N kg⁻¹ — the same unit as the acceleration it produces."),

    ("An astronaut in an orbiting spacecraft feels weightless because",
     ["gravity does not reach the spacecraft", "the spacecraft and astronaut fall together", "the astronaut has no mass", "the spacecraft has no mass"], 1,
     "Both are in free fall with the same acceleration, so the floor exerts no reaction."),

    ("For the planets, Kepler's third law states that the square of the period is proportional to",
     ["the radius", "the square of the radius", "the cube of the radius", "the square root of the radius"], 2,
     "$T^2 prop r^3$ for orbits about the same central body."),

    ("The value of $g$ is slightly greater at the poles than at the equator because",
     ["the poles are closer to the Sun", "the Earth bulges at the equator", "the poles spin faster", "the air is thinner"], 1,
     "The equatorial radius is larger, so a point on the equator is farther from the centre and $g$ is smaller."),

    ("Simple harmonic motion is motion in which the acceleration is",
     ["constant", "proportional to the displacement and directed towards a fixed point", "proportional to the velocity", "directed away from a fixed point"], 1,
     "$a = -omega^2 x$ is the defining relation."),

    ("A simple pendulum of length 2.5 m has a period of ($g = 10$ m s⁻², $pi = 3.14$)",
     ["1.6 s", "2.5 s", "3.1 s", "6.3 s"], 2,
     "$T = 2 pi sqrt(l\/g) = 6.28 sqrt(0.25) = 3.1$ s."),

    ("A pendulum that beats seconds, with a period of 2.0 s, has a length of ($g = 10$ m s⁻², $pi^2 = 10$)",
     ["0.25 m", "0.50 m", "1.0 m", "2.0 m"], 2,
     "$l = g T^2 \/ (4 pi^2) = 10 times 4 \/ 40 = 1.0$ m."),

    ("A mass of 0.25 kg hangs on a spring of constant 100 N m⁻¹. Its period is about",
     ["0.16 s", "0.31 s", "1.6 s", "3.1 s"], 1,
     "$T = 2 pi sqrt(m\/k) = 6.28 sqrt(0.0025) = 0.31$ s."),

    ("A mass of 2.0 kg hangs on a spring of constant 200 N m⁻¹. Its period is about",
     ["0.31 s", "0.63 s", "1.3 s", "6.3 s"], 1,
     "$T = 2 pi sqrt(2.0\/200) = 6.28 times 0.10 = 0.63$ s."),

    ("A body in SHM has amplitude 0.20 m and angular speed 4.0 rad s⁻¹. Its maximum speed is",
     ["0.05 m s⁻¹", "0.80 m s⁻¹", "4.0 m s⁻¹", "5.0 m s⁻¹"], 1,
     "$v_max = omega A = 4.0 times 0.20 = 0.80$ m s⁻¹, at the centre."),

    ("The maximum acceleration of that body is",
     ["0.80 m s⁻²", "1.6 m s⁻²", "3.2 m s⁻²", "16 m s⁻²"], 2,
     "$a_max = omega^2 A = 16 times 0.20 = 3.2$ m s⁻², at the ends."),

    ("At the centre of its motion a body in SHM has",
     ["maximum acceleration and zero speed", "zero acceleration and maximum speed", "maximum acceleration and maximum speed", "zero acceleration and zero speed"], 1,
     "The displacement is zero there, so $a = omega^2 x$ vanishes while the speed reaches $omega A$."),

    ("The total energy of a body in SHM is proportional to",
     ["the amplitude", "the square of the amplitude", "the square root of the amplitude", "the period"], 1,
     "Both the maximum kinetic and maximum potential energy vary as $A^2$."),

    ("A child on a swing is pushed gently at the end of every oscillation. The amplitude grows because",
     ["the child is heavier", "the push is at the natural frequency, so the swing resonates", "gravity is stronger", "the rope stretches"], 1,
     "Energy is fed in in step with the natural frequency, which is the condition for resonance."),

    ("A body moving in a circle of radius 2.0 m has a centripetal acceleration of 8.0 m s⁻². Its speed is",
     ["2.0 m s⁻¹", "4.0 m s⁻¹", "16 m s⁻¹", "32 m s⁻¹"], 1,
     "$a = v^2\/r$, so $v = sqrt(a r) = sqrt(16) = 4.0$ m s⁻¹."),

    ("The amplitude of a damped oscillator falls steadily because",
     ["its mass decreases", "energy is lost to friction and air resistance", "gravity weakens", "its period changes"], 1,
     "Damping removes mechanical energy from the system on every cycle, so the swings grow smaller."),
]
