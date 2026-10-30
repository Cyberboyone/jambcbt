"""Mock-paper bank for Chapter 2 — motion in a straight line.

These items never appear in the end-of-chapter drill; `tools/papers_phys1.py`
deals them into the two mock papers, the rapid-fire appendix and the master bank.
"""

PAPER_2 = [
    ("A car covers 100 km in 2 h. Its average speed is",
     ["25 km h⁻¹", "50 km h⁻¹", "100 km h⁻¹", "200 km h⁻¹"], 1,
     "Average speed is total distance over total time: $100 \/ 2 = 50$ km h⁻¹."),

    ("A speed of 108 km h⁻¹ expressed in m s⁻¹ is",
     ["10.8", "30", "36", "108"], 1,
     "Divide by 3.6: $108 \/ 3.6 = 30$ m s⁻¹."),

    ("A car starts from rest and accelerates uniformly at 4 m s⁻² for 5 s. Its final speed is",
     ["9 m s⁻¹", "20 m s⁻¹", "25 m s⁻¹", "40 m s⁻¹"], 1,
     "$v = u + a t = 0 + 4 times 5 = 20$ m s⁻¹."),

    ("A body starts from rest and accelerates at 2 m s⁻². The distance covered in 6 s is",
     ["6 m", "12 m", "36 m", "72 m"], 2,
     "$s = u t + (1\/2) a t^2 = 0 + (1\/2)(2)(36) = 36$ m."),

    ("A car travelling at 20 m s⁻¹ brakes uniformly at 5 m s⁻². The distance it covers before stopping is",
     ["20 m", "40 m", "80 m", "100 m"], 1,
     "$v^2 = u^2 + 2 a s$ with $v = 0$ gives $s = u^2 \/ (2a) = 400 \/ 10 = 40$ m."),

    ("A body moving at 10 m s⁻¹ decelerates uniformly at 2 m s⁻². It comes to rest after",
     ["2 s", "5 s", "8 s", "20 s"], 1,
     "$v = u + a t$ with $v = 0$ gives $t = u\/a = 10\/2 = 5$ s."),

    ("A stone is released from rest and falls freely for 3 s. Taking $g = 10$ m s⁻², its speed is",
     ["3 m s⁻¹", "10 m s⁻¹", "30 m s⁻¹", "45 m s⁻¹"], 2,
     "$v = u + g t = 0 + 10 times 3 = 30$ m s⁻¹."),

    ("The stone in the last question has fallen",
     ["15 m", "30 m", "45 m", "90 m"], 2,
     "$s = (1\/2) g t^2 = (1\/2)(10)(9) = 45$ m."),

    ("A body falls freely from rest. The time it takes to fall 20 m is ($g = 10$ m s⁻²)",
     ["1 s", "2 s", "4 s", "20 s"], 1,
     "$s = (1\/2) g t^2$, so $t = sqrt(2 s \/ g) = sqrt(40\/10) = 2$ s."),

    ("A stone is thrown vertically upward at 20 m s⁻¹. Its greatest height is ($g = 10$ m s⁻²)",
     ["10 m", "20 m", "40 m", "80 m"], 1,
     "At the top $v = 0$, so $h = u^2 \/ (2g) = 400\/20 = 20$ m."),

    ("The stone in the last question reaches its greatest height after",
     ["1 s", "2 s", "4 s", "10 s"], 1,
     "$t = u\/g = 20\/10 = 2$ s."),

    ("The stone then returns to the thrower. Its total time of flight is",
     ["2 s", "4 s", "6 s", "20 s"], 1,
     "Up and down take equal times, so the flight lasts $2 times 2 = 4$ s."),

    ("A projectile has a horizontal velocity of 20 m s⁻¹ and stays in the air for 3 s. Its range is",
     ["6.7 m", "23 m", "60 m", "600 m"], 2,
     "The horizontal velocity is constant: $R = v_x t = 20 times 3 = 60$ m."),

    ("A ball rolls off a table 1.25 m high at 3 m s⁻¹. The time it takes to reach the floor is ($g = 10$ m s⁻²)",
     ["0.25 s", "0.50 s", "1.0 s", "1.5 s"], 1,
     "The vertical motion is free fall: $t = sqrt(2 h \/ g) = sqrt(2.5\/10) = 0.50$ s."),

    ("The ball in the last question lands a horizontal distance from the table of",
     ["0.75 m", "1.5 m", "3.0 m", "6.0 m"], 1,
     "$x = v_x t = 3 times 0.50 = 1.5$ m."),

    ("The area under a velocity-time graph gives the",
     ["acceleration", "displacement", "speed", "momentum"], 1,
     "Velocity multiplied by time is a distance; the area between the curve and the time axis gives the displacement."),

    ("The gradient of a velocity-time graph gives the",
     ["displacement", "acceleration", "speed", "distance"], 1,
     "The rate of change of velocity is acceleration."),

    ("A horizontal line on a distance-time graph shows that the body is",
     ["at rest", "moving uniformly", "accelerating", "decelerating"], 0,
     "The distance is not changing, so the body is stationary."),

    ("A body moving with uniform velocity has an acceleration of",
     ["zero", "constant and non-zero", "increasing", "decreasing"], 0,
     "Uniform velocity means the velocity is not changing, so the acceleration is zero."),

    ("A body moves at 2 m s⁻¹ for 4 s and then at 6 m s⁻¹ for 4 s. Its average speed is",
     ["3 m s⁻¹", "4 m s⁻¹", "5 m s⁻¹", "8 m s⁻¹"], 1,
     "Total distance $= 8 + 24 = 32$ m; total time $= 8$ s; so $32\/8 = 4$ m s⁻¹."),

    ("A cyclist rides at 30 km h⁻¹ for 1 h and then at 20 km h⁻¹ for 2 h. His average speed is",
     ["21.7 km h⁻¹", "23.3 km h⁻¹", "25 km h⁻¹", "50 km h⁻¹"], 1,
     "Total distance $= 30 + 40 = 70$ km in 3 h, so $70\/3 = 23.3$ km h⁻¹."),

    ("A train 100 m long passes a telegraph pole at 10 m s⁻¹. The time taken is",
     ["1 s", "5 s", "10 s", "20 s"], 2,
     "The train must move its own length past the pole: $100\/10 = 10$ s."),

    ("The same train passes a platform 200 m long at 20 m s⁻¹ in",
     ["5 s", "10 s", "15 s", "30 s"], 2,
     "It must cover its own length plus the platform: $300\/20 = 15$ s."),

    ("A body moves once round a circle of radius 7 m and returns to its start. Its displacement is",
     ["0", "7 m", "14 m", "44 m"], 0,
     "Displacement is the straight line from start to finish; the body ends where it began, so it is zero although the distance is 44 m."),

    ("A boy walks 8 m east and then 6 m west. His displacement is",
     ["2 m east", "2 m west", "14 m east", "6 m west"], 0,
     "The two legs are in opposite directions, so they subtract: $8 - 6 = 2$ m east."),

    ("A car slows from 30 m s⁻¹ to rest in 6 s. Its acceleration is",
     ["−5 m s⁻²", "−0.2 m s⁻²", "+5 m s⁻²", "−180 m s⁻²"], 0,
     "$a = (v - u)\/t = (0 - 30)\/6 = -5$ m s⁻², a deceleration of 5 m s⁻²."),

    ("A body starts from rest and accelerates at 3 m s⁻². The distance covered in 4 s is",
     ["6 m", "12 m", "24 m", "48 m"], 2,
     "$s = (1\/2) a t^2 = (1\/2)(3)(16) = 24$ m."),

    ("A body moving at 5 m s⁻¹ accelerates at 2 m s⁻² for 6 s. Its final speed is",
     ["7 m s⁻¹", "12 m s⁻¹", "17 m s⁻¹", "23 m s⁻¹"], 2,
     "$v = u + a t = 5 + 12 = 17$ m s⁻¹."),

    ("If the speed of a car is doubled, its stopping distance",
     ["stays the same", "doubles", "trebles", "becomes four times as large"], 3,
     "The stopping distance is $u^2 \/ (2a)$, so it varies as the square of the speed."),

    ("A velocity-time graph is a straight line through the origin with a gradient of 4. The acceleration is",
     ["0.25 m s⁻²", "2 m s⁻²", "4 m s⁻²", "8 m s⁻²"], 2,
     "The gradient of a velocity-time graph is the acceleration, 4 m s⁻²."),

    ("At the highest point of its flight a ball thrown vertically upward has an acceleration of",
     ["zero", "10 m s⁻² upward", "10 m s⁻² downward", "5 m s⁻² downward"], 2,
     "Only gravity acts throughout the flight; its velocity is momentarily zero, its acceleration is not."),

    ("A ball is dropped from a table while another is thrown horizontally from the same height. They reach the floor",
     ["at the same time", "the dropped one first", "the thrown one first", "in an order that depends on their masses"], 0,
     "The vertical motion of both is free fall from rest, so the horizontal velocity does not affect the time of fall."),

    ("The range of a projectile is greatest when it is launched at",
     ["30°", "45°", "60°", "90°"], 1,
     "Range is proportional to $sin 2 theta$, which is largest at $theta = 45$°."),

    ("Ignoring air resistance, the horizontal component of a projectile's velocity",
     ["increases", "decreases", "stays constant", "becomes zero"], 2,
     "No horizontal force acts, so the horizontal velocity does not change while the vertical one does."),

    ("A stone falls 5 m in the first second. In the first two seconds it falls",
     ["10 m", "15 m", "20 m", "40 m"], 2,
     "The distance varies as $t^2$, so twice the time gives four times the distance: $4 times 5 = 20$ m."),

    ("A car accelerates uniformly from 10 m s⁻¹ to 30 m s⁻¹ in 8 s. The distance covered is",
     ["40 m", "80 m", "160 m", "320 m"], 2,
     "The average velocity is $(10 + 30)\/2 = 20$ m s⁻¹, so $s = 20 times 8 = 160$ m."),

    ("A body accelerating uniformly from rest covers a distance proportional to",
     ["$t$", "$t^2$", "$1\/t$", "$sqrt(t)$"], 1,
     "$s = (1\/2) a t^2$ when $u = 0$, so $s$ varies as the square of the time."),

    ("A boy walks 12 m north and then 5 m east. His displacement is",
     ["7 m", "13 m", "17 m", "60 m"], 1,
     "The legs are perpendicular, so $sqrt(144 + 25) = 13$ m from the start."),

    ("A car moving at 20 m s⁻¹ travels for 15 s. The distance covered is",
     ["35 m", "150 m", "300 m", "600 m"], 2,
     "$s = v t = 20 times 15 = 300$ m."),

    ("A body moving at 20 m s⁻¹ decelerates uniformly at 4 m s⁻². The distance it covers before stopping is",
     ["5 m", "20 m", "50 m", "80 m"], 2,
     "$s = u^2 \/ (2a) = 400\/8 = 50$ m."),
]
