"""Chapter 2 drill bank — motion in a straight line.

Each item is (stem, [option A, B, C, D], index of the correct option, solution).
"""

DRILL_2 = [
    ("A boy walks 5 m due east and then 3 m due west. His distance travelled and his displacement are, respectively,",
     ["8 m and 2 m east", "2 m and 8 m east", "8 m and 8 m east", "2 m and 2 m west"], 0,
     "Distance adds the path: $5 + 3 = 8$ m. Displacement is the straight line from start to finish: $5 - 3 = 2$ m east."),

    ("A car covers 100 m in 5.0 s. Its average speed is",
     ["5.0 m s⁻¹", "20 m s⁻¹", "50 m s⁻¹", "500 m s⁻¹"], 1,
     "$v = s \/ t = 100 \/ 5.0 = 20$ m s⁻¹."),

    ("A speed of 72 km h⁻¹ expressed in m s⁻¹ is",
     ["7.2", "20", "36", "200"], 1,
     "$72 times 1000 \/ 3600 = 20$ m s⁻¹; the conversion is to multiply by $5\/18$."),

    ("A body moving with uniform velocity has an acceleration of",
     ["zero", "constant and non-zero", "increasing", "equal to $g$"], 0,
     "Uniform velocity means neither the magnitude nor the direction changes, so there is no change of velocity and $a = 0$."),

    ("An acceleration of 5 m s⁻² means that the velocity changes by",
     ["5 m s⁻¹ each second", "5 m each second", "5 m s⁻¹ in total", "1 m s⁻¹ each second"], 0,
     "The unit reads as metres per second, per second: 5 m s⁻¹ of velocity gained or lost in every second of the motion."),

    ("A body starts from rest and accelerates at 2.0 m s⁻² for 5.0 s. Its final velocity is",
     ["2.0 m s⁻¹", "7.0 m s⁻¹", "10 m s⁻¹", "25 m s⁻¹"], 2,
     "$v = u + a t = 0 + 2.0 times 5.0 = 10$ m s⁻¹."),

    ("A body moving at 10 m s⁻¹ accelerates at 3.0 m s⁻² for 4.0 s. Its final velocity is",
     ["12 m s⁻¹", "22 m s⁻¹", "34 m s⁻¹", "40 m s⁻¹"], 1,
     "$v = u + a t = 10 + 3.0 times 4.0 = 22$ m s⁻¹."),

    ("A body starts from rest and accelerates at 4.0 m s⁻². The distance covered in 3.0 s is",
     ["12 m", "18 m", "24 m", "36 m"], 1,
     "$s = u t + (1\/2) a t^2 = 0 + (1\/2)(4.0)(9.0) = 18$ m."),

    ("A car travelling at 20 m s⁻¹ brakes uniformly to rest in 5.0 s. The distance travelled while braking is",
     ["20 m", "40 m", "50 m", "100 m"], 2,
     "$s = ((u + v)\/2) t = ((20 + 0)\/2)(5.0) = 50$ m. The area under the velocity–time graph gives the same answer."),

    ("A body starts from rest and reaches 10 m s⁻¹ after 25 m. Its acceleration is",
     ["0.5 m s⁻²", "2.0 m s⁻²", "4.0 m s⁻²", "5.0 m s⁻²"], 1,
     "$v^2 = u^2 + 2 a s$ gives $100 = 0 + 2 a (25)$, so $a = 2.0$ m s⁻²."),

    ("A car travelling at 20 m s⁻¹ stops in 40 m. Its deceleration is",
     ["2.5 m s⁻²", "5.0 m s⁻²", "10 m s⁻²", "20 m s⁻²"], 1,
     "$0 = 400 + 2 a (40)$, so $a = -5.0$ m s⁻²: a deceleration of 5.0 m s⁻²."),

    ("A stone is dropped from rest. Taking $g = 10$ m s⁻², its speed after 3.0 s is",
     ["3.0 m s⁻¹", "10 m s⁻¹", "30 m s⁻¹", "45 m s⁻¹"], 2,
     "$v = g t = 10 times 3.0 = 30$ m s⁻¹, downwards."),

    ("A stone is dropped from a height of 45 m. Taking $g = 10$ m s⁻², it reaches the ground after",
     ["1.5 s", "3.0 s", "4.5 s", "9.0 s"], 1,
     "$h = (1\/2) g t^2$ gives $45 = 5 t^2$, so $t^2 = 9$ and $t = 3.0$ s."),

    ("A ball is thrown vertically upwards at 15 m s⁻¹. Taking $g = 10$ m s⁻², the greatest height reached is",
     ["7.5 m", "11.3 m", "15 m", "22.5 m"], 1,
     "$v^2 = u^2 - 2 g h$ with $v = 0$: $h = u^2 \/ (2 g) = 225 \/ 20 = 11.3$ m."),

    ("A ball is thrown vertically upwards at 20 m s⁻¹. Taking $g = 10$ m s⁻², the total time of flight is",
     ["2.0 s", "4.0 s", "5.0 s", "8.0 s"], 1,
     "Time to the top $= 20\/10 = 2.0$ s, and the fall takes as long again, so the flight is 4.0 s."),

    ("The area under a velocity–time graph represents",
     ["acceleration", "displacement", "average velocity", "force"], 1,
     "Velocity multiplied by time is distance, so the area is the displacement. The gradient of the same graph is the acceleration."),

    ("The gradient of a displacement–time graph represents",
     ["distance", "velocity", "acceleration", "momentum"], 1,
     "Displacement divided by time is velocity; on a $v$–$t$ graph the gradient is the acceleration instead."),

    ("The gradient of a velocity–time graph represents",
     ["speed", "displacement", "acceleration", "momentum"], 2,
     "The rate of change of velocity is the acceleration, so a steep $v$–$t$ line means a large acceleration."),

    ("On a velocity–time graph, a horizontal straight line represents",
     ["a body at rest", "uniform acceleration", "constant velocity", "zero displacement"], 2,
     "The velocity is not changing, so the acceleration is zero and the body moves at a steady speed."),

    ("On a displacement–time graph, a horizontal straight line represents",
     ["a body at rest", "constant velocity", "constant acceleration", "uniform motion"], 0,
     "The displacement is not changing with time, so the body is stationary."),

    ("For a projectile moving under gravity alone, the horizontal component of its velocity",
     ["increases steadily", "decreases steadily", "remains constant", "is zero at the top"], 2,
     "Gravity acts only downwards, so there is no horizontal force and no horizontal acceleration: the horizontal component is constant."),

    ("At the highest point of a projectile's path,",
     ["both velocity components are zero", "the vertical component of velocity is zero", "the acceleration is zero", "the horizontal component is zero"], 1,
     "The vertical velocity falls to zero at the top while the horizontal component continues unchanged; the acceleration is $g$ throughout."),

    ("A stone is thrown upwards at 20 m s⁻¹. Neglecting air resistance, it returns to the thrower with a speed of",
     ["10 m s⁻¹", "20 m s⁻¹", "40 m s⁻¹", "0"], 1,
     "Gravity removes the same amount of speed on the way up as it restores on the way down, so the return speed equals the launch speed."),

    ("A body projected at 20 m s⁻¹ at 45° to the horizontal has a range of (take $g = 10$ m s⁻²)",
     ["20 m", "40 m", "57 m", "80 m"], 1,
     "$R = u^2 sin 2 theta \/ g = 400 times sin 90 degree \/ 10 = 40$ m. The range is greatest at 45°."),

    ("Two projectiles are launched at 20 m s⁻¹, one at 30° and one at 60° to the horizontal. Their ranges are",
     ["equal", "in the ratio 1 : 2", "in the ratio 1 : 3", "unrelated"], 0,
     "The range depends on $sin 2 theta$, and $sin 60 degree = sin 120 degree$, so complementary angles give the same range."),

    ("A body travels round a circular track and returns to its starting point. Its average velocity is",
     ["equal to its average speed", "zero", "twice its average speed", "undefined"], 1,
     "Displacement is zero after a complete lap, so the average velocity — displacement over time — is zero, although the average speed is not."),

    ("Two cars travel in the same direction at 30 m s⁻¹ and 20 m s⁻¹. The velocity of the faster relative to the slower is",
     ["10 m s⁻¹", "20 m s⁻¹", "30 m s⁻¹", "50 m s⁻¹"], 0,
     "Same direction, subtract: $30 - 20 = 10$ m s⁻¹."),

    ("Two cars approach each other at 30 m s⁻¹ and 20 m s⁻¹. Their speed of approach is",
     ["10 m s⁻¹", "20 m s⁻¹", "50 m s⁻¹", "60 m s⁻¹"], 2,
     "Opposite directions, add: $30 + 20 = 50$ m s⁻¹."),

    ("The acceleration due to gravity near the Earth's surface is approximately",
     ["1.0 m s⁻²", "9.8 m s⁻²", "98 m s⁻²", "10 m s⁻² downwards only when falling"], 1,
     "About 9.8 m s⁻² (the book uses 10), always directed downwards whether the body is rising or falling."),

    ("For a body in free fall, neglecting air resistance, the acceleration is",
     ["zero", "constant and equal to $g$", "greater at the start", "greater at the end"], 1,
     "The acceleration is $g$ throughout: only the velocity changes, not the rate at which it changes."),

    ("A body's velocity changes from 4 m s⁻¹ to 12 m s⁻¹ in 2.0 s. Its acceleration is",
     ["2.0 m s⁻²", "4.0 m s⁻²", "6.0 m s⁻²", "8.0 m s⁻²"], 1,
     "$a = (v - u)\/t = (12 - 4)\/2.0 = 4.0$ m s⁻²."),

    ("A velocity–time graph rises from zero to 10 m s⁻¹ in 5.0 s. The distance covered is",
     ["10 m", "25 m", "50 m", "100 m"], 1,
     "The area is a triangle: $(1\/2) times 5.0 times 10 = 25$ m."),

    ("A body accelerates uniformly from 5 m s⁻¹ to 15 m s⁻¹ in 4.0 s. The distance covered is",
     ["20 m", "40 m", "60 m", "80 m"], 1,
     "$s = ((u + v)\/2) t = ((5 + 15)\/2)(4.0) = 40$ m — the area of the trapezium under the graph."),

    ("A ball is kicked at 30 m s⁻¹ at 30° to the horizontal. Taking $g = 10$ m s⁻², its time of flight is",
     ["1.5 s", "3.0 s", "5.2 s", "6.0 s"], 1,
     "$T = 2 u sin theta \/ g = 2 times 30 times 0.5 \/ 10 = 3.0$ s."),

    ("A body accelerates from rest at 2.0 m s⁻² for 5.0 s, then travels at constant velocity for 10 s. The total distance is",
     ["50 m", "75 m", "125 m", "150 m"], 2,
     "First stage $s = (1\/2)(2.0)(25) = 25$ m and it reaches 10 m s⁻¹; second stage $10 times 10 = 100$ m. Total 125 m."),

    ("The displacement of a body can be zero while the distance it has travelled is not. This happens when",
     ["the body is at rest", "the body returns to its starting point", "the body moves in a straight line", "the body accelerates"], 1,
     "A complete lap of a track, or a walk to the shop and back, has zero displacement and a distance equal to the whole path."),

    ("A body moves with constant speed round a circle. Its acceleration is",
     ["zero, because the speed is constant", "directed towards the centre", "directed away from the centre", "along the tangent"], 1,
     "The speed is constant but the direction of the velocity is not, so there is a centripetal acceleration towards the centre — the subject of Chapter 5."),

    ("A stone is thrown vertically upwards and returns to the thrower. Taking up as positive, its acceleration during the flight is",
     ["positive going up and negative coming down", "negative throughout", "zero at the highest point", "positive throughout"], 1,
     "The acceleration is $g$ downwards at every instant, so with up positive it is negative throughout — including at the top, where only the velocity is zero."),

    ("A body moves 12 m north and then 16 m east. The magnitude of its displacement is",
     ["4.0 m", "20 m", "28 m", "192 m"], 1,
     "The two legs are perpendicular, so $R = sqrt(12^2 + 16^2) = sqrt(400) = 20$ m, while the distance travelled is 28 m."),

    ("A car's speedometer reads 60 km h⁻¹. In m s⁻¹ this is about",
     ["6.0", "16.7", "36", "60"], 1,
     "$60 times 1000 \/ 3600 = 16.7$ m s⁻¹."),
]
