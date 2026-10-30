#import "template.typ": *

#current-chapter.update("Chapter 2: Motion in a Straight Line")
#pagebreak()

#chapter-opener(
  2,
  "Motion in a Straight Line",
  subtitle: "Distance and Displacement, Speed and Velocity, Acceleration, the Three Equations of Motion, Displacement–Time and Velocity–Time Graphs, Free Fall under Gravity, and Projectiles",
  syllabus-ref: "Sec. A • Topic 2",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish distance from displacement, and speed from velocity.",
    "Define acceleration and use it to read a velocity–time graph.",
    "Apply $v = u + a t$, $s = u t + 1/2 a t^2$ and $v^2 = u^2 + 2 a s$ to uniformly accelerated motion.",
    "Find velocity from the gradient of a displacement–time graph and distance from the area under a velocity–time graph.",
    "Solve free-fall problems with $g = 10$ m s⁻², including motion thrown upwards.",
    "Resolve projectile motion into a steady horizontal motion and an accelerated vertical one.",
  ),
  hotspots: (
    "“The area under a velocity–time graph gives …” — the distance travelled; the gradient gives the acceleration.",
    "“A body starts from rest and accelerates at 2 m s⁻² for 5 s. Its velocity is …” — 10 m s⁻¹.",
    "“The time of flight of a body projected horizontally from a height h is …” — $sqrt(2 h / g)$, independent of the horizontal speed.",
    "“At the highest point of its flight a projectile has …” — zero vertical velocity but acceleration g downward.",
    "“The average velocity over a round trip is …” — zero, because the displacement is zero.",
    "“The distance travelled in the nth second is …” — $u + 1/2 a (2n - 1)$.",
  ),
  trap-summary: "Three slips. (1) Using distance where the question asks for displacement: a body that returns to its start has travelled a long way and has a displacement of zero, so its average velocity is zero however tired it is. (2) Forgetting the sign of $a$ when a body is slowing down: if you take the direction of motion as positive, a deceleration is negative, and $v^2 = u^2 + 2 a s$ will then refuse to give a sensible answer if the sign is wrong. (3) Believing that the acceleration is zero at the top of a projectile's flight — the *velocity* is zero there, the acceleration is still $g$.",
)

// ============================================================================
== 2.1 Distance, Displacement, Speed and Velocity

*Distance* is the length of the path actually covered; it is a scalar and never decreases. *Displacement* is the straight line from the starting point to the finishing point, with a direction; it is a vector, and returning to the start makes it zero.

#diagram-fig("diagrams/ch02_distance.svg",
  "The dotted path is the distance travelled; the arrow is the displacement. The two are equal only when the motion is in a straight line in one direction.", width: 96%)

#formula-box("The four definitions")[
  + *Average speed* $= "total distance" / "total time"$ — a scalar.
  + *Average velocity* $= "total displacement" / "total time"$ — a vector, and zero over any closed journey.
  + *Instantaneous speed* is the limit of the average as the time interval shrinks; it is what a speedometer shows.
  + *Uniform motion* means constant velocity: equal displacements in equal times, in the same direction.
]

#worked-example(
  1,
  "A lap of a circular track",
  [A runner completes one lap of a circular track of radius 35 m in 44 s. Taking $pi = 22/7$, calculate (a) her average speed and (b) her average velocity.],
  [
    *(a)* The distance is the circumference: $2 pi r = 2 times 22/7 times 35 = 220$ m.

    Average speed $= 220 / 44 = 5.0$ m s⁻¹.

    *(b)* One lap returns her to the start, so the displacement is zero and the average velocity is zero.

    *Check.* The result is not a trick of arithmetic: velocity is displacement over time, and the displacement over a complete lap is genuinely nothing. If the question had asked for the velocity over *half* a lap, the displacement would be the diameter, 70 m, and the answer would be $70/22 = 3.2$ m s⁻¹ along the diameter.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.2 Acceleration

*Acceleration* is the rate of change of velocity: $a = (v - u)/t$, measured in m s⁻². A body accelerates if its speed changes, if its direction changes, or both — a car going round a bend at a steady 50 km h⁻¹ is accelerating, because its velocity is changing direction.

A *deceleration* is an acceleration opposite to the motion. Whether the symbol $a$ in a formula is positive or negative depends entirely on the direction you chose as positive at the start of the question, and that choice must be made before the numbers are substituted.

#concept-box("The sign convention, once and for all")[
  Choose the direction of the initial motion as positive. Then a body speeding up has $a$ with the same sign as $u$; a body slowing down has $a$ with the opposite sign; and a body thrown upwards has $a = -g$ throughout, whether it is rising or falling.

  The choice is free, but it is not optional to be consistent: the commonest lost mark in kinematics is a substituted sign that contradicts the sentence above the calculation.
]

// ============================================================================
== 2.3 The Equations of Motion

For motion in a straight line with *constant* acceleration there are three equations, and every kinematics question in the paper is solved with one of them.

#formula-box("The three equations — and what each one leaves out")[
  + $v = u + a t$ — leaves out $s$.
  + $s = u t + 1/2 a t^2$ — leaves out $v$.
  + $v^2 = u^2 + 2 a s$ — leaves out $t$.
]

The method is always the same. Write down the five symbols — $u$, $v$, $a$, $s$, $t$ — put in the three you know, mark the one you want, and choose the equation that does not contain the fifth. That last step is the whole of the technique: choosing an equation with an unknown in it wastes a line and invites an error.

#worked-example(
  2,
  "Three quantities from one acceleration",
  [A car accelerates uniformly from 10 m s⁻¹ to 30 m s⁻¹ in 8.0 s. Find (a) its acceleration, (b) the distance it covers in that time, and (c) its velocity 3.0 s after the acceleration began.],
  [
    *(a)* $a = (v - u)/t = (30 - 10)/8.0 = 2.5$ m s⁻².

    *(b)* $s = u t + 1/2 a t^2 = 10(8.0) + 1/2 (2.5)(8.0)^2 = 80 + 80 = 160$ m.

    *(c)* $v = u + a t = 10 + 2.5(3.0) = 17.5$ m s⁻¹.

    *Check.* The average velocity is $(10 + 30)/2 = 20$ m s⁻¹, and over 8.0 s that gives 160 m — the same distance, by a shorter route. Any uniform-acceleration problem can be checked that way: $s = $ average velocity $times$ time.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Braking distance",
  [A car travelling at 20 m s⁻¹ brakes uniformly and stops in 40 m. Find (a) the deceleration and (b) the time taken to stop. What would the stopping distance be at 40 m s⁻¹ with the same deceleration?],
  [
    *(a)* Take the direction of motion as positive, so $u = 20$, $v = 0$, $s = 40$ and $a$ is negative.

    $v^2 = u^2 + 2 a s$, so $0 = 400 + 80a$ and $a = -5.0$ m s⁻²; the deceleration is 5.0 m s⁻².

    *(b)* $v = u + a t$, so $0 = 20 - 5.0t$ and $t = 4.0$ s.

    At 40 m s⁻¹, $s = u^2 / (2 times 5.0) = 1600/10 = 160$ m — four times the distance for twice the speed.

    *Check.* Doubling the speed quadruples the stopping distance, because $s$ depends on $u^2$. The same reason is why a speed limit is worth more than a better brake, and why a candidate who remembers “four times” can answer the conceptual version of this question without any arithmetic at all.
  ],
  tier: "UTME STANDARD",
  source: "UTME-style",
)

// ============================================================================
== 2.4 Motion Graphs

A graph is a table with the arithmetic already done, and the examiner asks two things of it: the *gradient* and the *area*.

#diagram-fig("diagrams/ch02_st_graph.svg",
  "Displacement–time graphs. The gradient is the velocity: a straight line means steady velocity, a curve means changing velocity, and a horizontal line means the body is at rest.", width: 90%)

#diagram-fig("diagrams/ch02_vt_graph.svg",
  "Velocity–time graphs. The gradient is the acceleration and the area under the line is the distance travelled — here, a trapezium whose area is 12 × 6 = 72 m.", width: 90%)

#table(
  columns: (1fr, 1.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Graph],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gradient gives],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Area under the line gives],
  ),
  [displacement against time], [velocity], [nothing physical],
  [velocity against time], [acceleration], [distance travelled],
  [acceleration against time], [nothing physical], [change in velocity],
)

#trap-box("Reading a graph without reading the axes")[
  Before anything else, look at the two labels. A straight line on a displacement–time graph means *constant velocity*, and the same straight line on a velocity–time graph means *constant acceleration* — the same picture, two different physical situations. Half the marks in this topic are lost by candidates who recognise the shape and forget the axes.
]

// ============================================================================
== 2.5 Free Fall

A body falling freely under gravity has one acceleration, $g$, directed downwards, and its value near the Earth's surface is about 9.8 m s⁻² — taken as 10 m s⁻² in the UTME unless the question says otherwise.

#diagram-fig("diagrams/ch02_free_fall.svg",
  "The same acceleration, two sign conventions. Rising, the velocity and gravity oppose each other; falling, they agree — but $g$ is downward in both cases.", width: 94%)

#worked-example(
  4,
  "A ball thrown vertically upwards",
  [A ball is thrown vertically upwards with a speed of 20 m s⁻¹. Taking $g = 10$ m s⁻² and ignoring air resistance, find (a) the greatest height reached, (b) the time to reach it, and (c) the total time of flight.],
  [
    Taking upwards as positive: $u = 20$ m s⁻¹, $a = -10$ m s⁻², and at the top $v = 0$.

    *(a)* $v^2 = u^2 + 2 a s$ gives $0 = 400 - 20s$, so $s = 20$ m.

    *(b)* $v = u + a t$ gives $0 = 20 - 10t$, so $t = 2.0$ s.

    *(c)* The fall back to the starting point takes the same 2.0 s, so the total is 4.0 s — or, directly, $s = 0$ in $s = u t + 1/2 a t^2$ gives $t(20 - 5t) = 0$, so $t = 0$ or $t = 4.0$ s.

    *Check.* At the top the velocity is zero but the acceleration is not: it is still 10 m s⁻² downward, which is why the ball does not hang there. And the upward and downward times are equal only because the ball returns to the same height — a fact worth remembering, because it halves the algebra in most questions of this kind.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.6 Projectiles

A projectile is a body given an initial velocity and then left to gravity alone. The trick that solves every projectile question is to split the motion into two independent motions at right angles: *horizontal*, with no acceleration, and *vertical*, with acceleration $g$ downward.

#diagram-fig("diagrams/ch02_projectile.svg",
  "A projectile's path. The horizontal velocity never changes; the vertical velocity falls steadily, is zero at the top, and then grows downward.", width: 92%)

#formula-box("The projectile toolkit")[
  + *Horizontal:* $u_x = u cos theta$, constant, so $x = u cos theta \, t$.
  + *Vertical:* $u_y = u sin theta$, with $a = -g$, so $y = u sin theta \, t - 1/2 g t^2$.
  + *Time of flight* (returning to the same height): $T = (2 u sin theta)/g$.
  + *Range:* $R = u^2 sin 2theta / g$, which is greatest at 45°.
  + *Horizontal projection from a height h:* $t = sqrt(2h/g)$ and range $= u sqrt(2h/g)$.
]

#worked-example(
  5,
  "A stone thrown horizontally from a cliff",
  [A stone is thrown horizontally at 15 m s⁻¹ from the top of a cliff 45 m high. Taking $g = 10$ m s⁻², find (a) the time it takes to reach the ground, (b) how far from the foot of the cliff it lands, and (c) its velocity as it lands.],
  [
    *(a)* Vertically the stone starts from rest: $h = 1/2 g t^2$, so $45 = 5t^2$ and $t = 3.0$ s.

    *(b)* Horizontally the speed is constant: $x = 15 times 3.0 = 45$ m.

    *(c)* The vertical velocity on landing is $v_y = g t = 30$ m s⁻¹, and the horizontal velocity is still 15 m s⁻¹. They are at right angles, so

    $v = sqrt(15^2 + 30^2) = sqrt(1125) = 34$ m s⁻¹, at $tan^(-1)(30/15) = 63 degree$ below the horizontal.

    *Check.* The time of fall depends only on the height — the horizontal speed does not change it at all. That is the single most examined idea in the topic, and the reason a bullet fired horizontally and one dropped from the same height hit the ground together.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: speed and velocity, acceleration, the three equations and graphs.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Motion in a line is described by five quantities — $u$, $v$, $a$, $s$ and $t$ — and any three of them fix the other two, provided the acceleration is constant. Distance and speed are scalar versions of displacement and velocity, and the difference is not academic: a lap of a track has a large distance and a zero displacement, so the average velocity over it is zero. Acceleration is the rate of change of velocity, and a deceleration is the same quantity with the opposite sign, which is why the direction you call positive must be chosen before the substitution. The three equations of motion are shortcuts through the same physics, and the graphs say the same thing again: the gradient of a displacement–time graph is velocity, the gradient of a velocity–time graph is acceleration, and the area under a velocity–time graph is the distance. Gravity gives every freely falling body the same acceleration, and a projectile is simply two of these motions at right angles — steady across, accelerated down.
  ]
]

== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The area under a velocity–time graph represents], [acceleration], [distance travelled], [change in velocity], [average speed])
#mcq(2, [A body starting from rest accelerates uniformly at 4 m s⁻². The distance it covers in the first 3 s is], [6 m], [12 m], [18 m], [36 m])
#mcq(3, [A stone is thrown vertically upwards. At the highest point of its flight], [both velocity and acceleration are zero], [velocity is zero and acceleration is 10 m s⁻² downward], [velocity is 10 m s⁻¹ and acceleration is zero], [both velocity and acceleration are 10 m s⁻² downward])
#mcq(4, [A body is projected horizontally from a height with a speed $u$. The time of flight depends on], [the height only], [the speed $u$ only], [both the height and the speed], [the angle of projection])

#answer-key-grid(("B", "C", "B", "A"))

#answer-notes((
  ("B", [the area under a $v$–$t$ graph is $v times t$, which is a distance; the gradient of the same graph is the acceleration.]),
  ("C", [$s = 1/2 a t^2 = 1/2 (4)(3)^2 = 18$ m, because $u = 0$.]),
  ("B", [the velocity is momentarily zero at the top, but gravity has not stopped acting: $a = g$ downward throughout.]),
  ("A", [the vertical motion starts from rest whatever the horizontal speed, so $t = sqrt(2h\/g)$ depends on $h$ alone.]),
))

#concept-box("Carry this into Chapter 3")[
  Nothing in this chapter asked *why* a body accelerates — only what its acceleration does to its motion. Chapter 3 supplies the cause: a force. Newton's second law puts the numbers back into the symbol $a$, and momentum gives the same physics a second form that survives collisions, where the acceleration changes too fast to measure.
]

#include "drill_ch02.typ"
