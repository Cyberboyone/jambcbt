"""Chapter 5 drill bank — circular motion, gravitation and simple harmonic motion.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_5 = [
    ("A body moves in a circle of radius 2.0 m at a constant speed of 6.0 m s⁻¹. Its angular speed is",
     ["3.0 rad s⁻¹", "6.0 rad s⁻¹", "12 rad s⁻¹", "18 rad s⁻¹"], 0,
     "$omega = v\/r = 6.0\/2.0 = 3.0$ rad s⁻¹."),

    ("A body moves in a circle with angular speed 4.0 rad s⁻¹ and radius 0.50 m. Its linear speed is",
     ["0.13 m s⁻¹", "2.0 m s⁻¹", "4.5 m s⁻¹", "8.0 m s⁻¹"], 1,
     "$v = omega r = 4.0 times 0.50 = 2.0$ m s⁻¹."),

    ("A wheel makes one complete revolution every 0.25 s. Its frequency is",
     ["0.25 Hz", "2.0 Hz", "4.0 Hz", "8.0 Hz"], 2,
     "$f = 1\/T = 1\/0.25 = 4.0$ Hz, and $omega = 2 pi f = 25$ rad s⁻¹."),

    ("A body going round a circle at constant speed has an acceleration that is",
     ["zero, because the speed is constant", "along the tangent", "towards the centre", "away from the centre"], 2,
     "The velocity changes direction, and the change per second points to the centre: $a = v^2\/r$."),

    ("A body moves in a circle of radius 0.50 m at 4.0 m s⁻¹. Its centripetal acceleration is",
     ["2.0 m s⁻²", "8.0 m s⁻²", "32 m s⁻²", "64 m s⁻²"], 2,
     "$a = v^2\/r = 16\/0.50 = 32$ m s⁻², which is also $omega^2 r$ with $omega = 8.0$ rad s⁻¹."),

    ("The centripetal force on a body of mass 2.0 kg moving in a circle of radius 4.0 m at 6.0 m s⁻¹ is",
     ["3.0 N", "9.0 N", "18 N", "72 N"], 2,
     "$F = m v^2\/r = 2.0 times 36 \/ 4.0 = 18$ N, towards the centre."),

    ("A car of mass 1000 kg rounds a bend of radius 50 m at 10 m s⁻¹. The centripetal force needed is",
     ["200 N", "1000 N", "2000 N", "5000 N"], 2,
     "$F = m v^2\/r = 1000 times 100 \/ 50 = 2000$ N, supplied by friction between the tyres and the road."),

    ("For a car on a level bend, the greatest safe speed is given by",
     ["$v = mu r g$", "$v = sqrt(mu r g)$", "$v = sqrt(r \/ (mu g))$", "$v = mu sqrt(r g)$"], 1,
     "Setting $mu m g = m v^2\/r$ gives $v^2 = mu r g$, so $v = sqrt(mu r g)$."),

    ("A stone on a string is whirled in a horizontal circle. If the string breaks, the stone moves",
     ["towards the centre", "along the tangent", "outwards along the radius", "along the circle"], 1,
     "With no force left, the stone continues in a straight line in the direction it was moving — along the tangent."),

    ("A stone on a string is whirled in a vertical circle. At the lowest point the tension is",
     ["less than the weight", "equal to the weight", "greater than the weight", "zero"], 2,
     "At the bottom the tension must supply both the centripetal force and the weight: $T = m v^2\/r + m g$."),

    ("Newton's law of gravitation states that the force between two masses is",
     ["proportional to the distance between them", "inversely proportional to the distance", "inversely proportional to the square of the distance", "independent of the distance"], 2,
     "$F = G m_1 m_2 \/ r^2$: proportional to both masses and to the inverse square of the separation."),

    ("If the distance between two masses is trebled, the gravitational force between them becomes",
     ["three times as large", "one third as large", "one ninth as large", "nine times as large"], 2,
     "$F prop 1\/r^2$, so trebling $r$ divides the force by 9."),

    ("Two bodies of mass 2.0 kg and 8.0 kg are 0.20 m apart. Taking $G = 6.7 times 10^(-11)$ N m² kg⁻², the force between them is",
     ["$2.7 times 10^(-8)$ N", "$5.4 times 10^(-8)$ N", "$2.7 times 10^(-9)$ N", "$1.1 times 10^(-7)$ N"], 0,
     "$F = G m_1 m_2 \/ r^2 = (6.7 times 10^(-11))(16)\/(0.040) = 2.7 times 10^(-8)$ N — tiny, because gravity is the weakest of the forces."),

    ("The acceleration due to gravity at the surface of a planet of mass $M$ and radius $R$ is",
     ["$G M R$", "$G M \/ R^2$", "$G M \/ R$", "$G R^2 \/ M$"], 1,
     "Setting $G M m \/ R^2 = m g$ gives $g = G M \/ R^2$."),

    ("A planet has twice the mass of the Earth and twice its radius. The acceleration due to gravity at its surface is",
     ["half that on the Earth", "the same as on the Earth", "twice that on the Earth", "four times that on the Earth"], 0,
     "$g prop M\/R^2$, so doubling both multiplies $g$ by $2\/4 = 1\/2$."),

    ("The orbital speed of a satellite at a distance $r$ from the centre of a planet of mass $M$ is",
     ["$sqrt(G M r)$", "$sqrt(G M \/ r)$", "$G M \/ r$", "$sqrt(r \/ (G M))$"], 1,
     "Gravity supplies the centripetal force: $G M m\/r^2 = m v^2\/r$, so $v = sqrt(G M \/ r)$."),

    ("As a satellite moves into a higher orbit, its orbital speed",
     ["increases", "decreases", "stays the same", "becomes zero"], 1,
     "$v = sqrt(G M \/ r)$: a larger $r$ means a smaller speed, although the period lengthens."),

    ("A geostationary satellite must",
     ["orbit above the equator with a period of 24 hours", "orbit over the poles", "have a period of 1 hour", "be at a height of 100 km"], 0,
     "It must keep pace with the Earth's rotation, so its period is one day and its orbit lies in the equatorial plane, from west to east."),

    ("The escape velocity from the Earth is about",
     ["1.1 km s⁻¹", "8.0 km s⁻¹", "11 km s⁻¹", "110 km s⁻¹"], 2,
     "$v_e = sqrt(2 g R) = sqrt(2 times 10 times 6.4 times 10^6) = 1.1 times 10^4$ m s⁻¹ $= 11$ km s⁻¹."),

    ("Simple harmonic motion is defined by",
     ["constant acceleration", "acceleration proportional to displacement and directed towards the centre", "acceleration proportional to velocity", "zero acceleration"], 1,
     "$a = -omega^2 x$: the size grows with the displacement and the minus sign points it back towards the centre."),

    ("In simple harmonic motion, the acceleration is greatest",
     ["at the centre", "at the ends of the motion", "midway between centre and end", "nowhere — it is constant"], 1,
     "$a = omega^2 x$, so the acceleration is largest where the displacement is largest, and zero at the centre."),

    ("In simple harmonic motion, the speed is greatest",
     ["at the ends", "at the centre", "midway", "at all points equally"], 1,
     "At the centre the displacement is zero and all the energy is kinetic; $v_max = omega A$."),

    ("The period of a simple pendulum depends on",
     ["its mass", "its amplitude", "its length", "the material of the bob"], 2,
     "$T = 2 pi sqrt(l \/ g)$, so only the length and the local value of $g$ matter — a pendulum is isochronous."),

    ("A simple pendulum has a period of 2.0 s. If its length is made four times as long, the period becomes",
     ["0.50 s", "1.0 s", "4.0 s", "8.0 s"], 2,
     "$T prop sqrt(l)$, so four times the length gives twice the period: 4.0 s."),

    ("A simple pendulum of length 0.98 m has a period of about (take $g = 10$ m s⁻², $pi = 3.14$)",
     ["0.99 s", "1.4 s", "2.0 s", "3.1 s"], 2,
     "$T = 2 pi sqrt(0.98\/10) = 6.28 times 0.313 = 1.97$ s ≈ 2.0 s."),

    ("The period of a loaded spring depends on",
     ["the amplitude of the oscillation", "the mass and the spring constant", "the length of the spring only", "gravity"], 1,
     "$T = 2 pi sqrt(m\/k)$: the amplitude does not appear, which is what makes a spring balance's oscillation isochronous."),

    ("A mass of 0.40 kg hangs from a spring of constant 40 N m⁻¹. Its period of oscillation is about",
     ["0.20 s", "0.63 s", "1.6 s", "6.3 s"], 1,
     "$T = 2 pi sqrt(m\/k) = 6.28 sqrt(0.010) = 0.63$ s."),

    ("A body in simple harmonic motion has amplitude 0.10 m and angular speed 5.0 rad s⁻¹. Its maximum speed is",
     ["0.020 m s⁻¹", "0.50 m s⁻¹", "5.0 m s⁻¹", "50 m s⁻¹"], 1,
     "$v_max = omega A = 5.0 times 0.10 = 0.50$ m s⁻¹, at the centre."),

    ("The same body is at a displacement of 0.060 m. Its speed there is",
     ["0.20 m s⁻¹", "0.32 m s⁻¹", "0.40 m s⁻¹", "0.50 m s⁻¹"], 2,
     "$v = omega sqrt(A^2 - x^2) = 5.0 sqrt(0.0100 - 0.0036) = 5.0 times 0.080 = 0.40$ m s⁻¹."),

    ("The maximum acceleration of a body in SHM of amplitude $A$ and angular speed $omega$ is",
     ["$omega A$", "$omega^2 A$", "$omega A^2$", "$A \/ omega$"], 1,
     "$a = omega^2 x$ and the largest $x$ is $A$, so $a_max = omega^2 A$."),

    ("The energy of a body in simple harmonic motion is",
     ["all kinetic at the ends", "all potential at the centre", "constant in total, but exchanged between kinetic and potential", "always zero at the centre"], 2,
     "The total stays constant; at the ends it is all potential and at the centre all kinetic."),

    ("Damping of an oscillator",
     ["increases its amplitude", "reduces its amplitude over time", "changes its period to zero", "removes its mass"], 1,
     "Damping removes energy (friction, air resistance), so the amplitude falls — the oscillations die away."),

    ("Resonance occurs when",
     ["the driving frequency matches the natural frequency", "the amplitude is zero", "the damping is zero", "the frequency is doubled"], 0,
     "At resonance the oscillator absorbs energy most efficiently and the amplitude becomes very large — the reason soldiers break step on a bridge."),

    ("A body moves in a circle of radius 0.25 m at 2.0 m s⁻¹. Its period is",
     ["0.13 s", "0.79 s", "1.6 s", "3.1 s"], 1,
     "$omega = v\/r = 8.0$ rad s⁻¹, so $T = 2 pi\/omega = 6.28\/8.0 = 0.79$ s."),

    ("The centripetal force on a body in circular motion does no work because",
     ["the force is small", "the force is perpendicular to the displacement", "the speed is constant", "the mass is constant"], 1,
     "$W = F s cos theta$ with $theta = 90$°, so $cos 90 degree = 0$; that is why the speed does not change even though a force acts."),

    ("The weight of a body at a height equal to the Earth's radius above the surface is",
     ["the same as at the surface", "half as much", "a quarter as much", "twice as much"], 2,
     "At height $R$ the distance from the centre is $2R$, so $g$ falls to $g\/4$ and so does the weight."),

    ("A satellite in a low circular orbit close to the Earth's surface has a speed of about",
     ["0.8 km s⁻¹", "8 km s⁻¹", "80 km s⁻¹", "800 km s⁻¹"], 1,
     "$v = sqrt(g R) = sqrt(10 times 6.4 times 10^6) = 8.0 times 10^3$ m s⁻¹."),

    ("A pendulum clock taken from the equator to the poles will",
     ["gain time", "lose time", "keep the same time", "stop"], 0,
     "$g$ is larger at the poles, so $T = 2 pi sqrt(l\/g)$ is smaller and the clock runs fast — it gains time."),

    ("For a body in circular motion, the angle swept in one complete revolution is",
     ["90°", "180°", "360°", "$2 pi$ radians"], 3,
     "One revolution is $2 pi$ radians (360°), which is the basis of $omega = 2 pi\/T$."),
    ("A stone whirled in a horizontal circle of radius 0.80 m makes 30 revolutions per minute. Its linear speed is about",
     ["1.6 m s⁻¹", "2.5 m s⁻¹", "6.3 m s⁻¹", "25 m s⁻¹"], 1,
     "30 revolutions per minute is 0.50 s⁻¹, so $omega = 2 pi f = 3.14$ rad s⁻¹ and $v = omega r = 3.14 times 0.80 = 2.5$ m s⁻¹."),
]
