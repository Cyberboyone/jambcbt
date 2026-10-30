#import "template.typ": *

#current-chapter.update("Appendix H: Derivations Worth Knowing")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Derivations Worth Knowing]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Derivations Worth Knowing]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Nine results that the paper treats as formulae. A derivation is not extra work — it is the shortest route back to the formula if memory fails in the hall.]
]

#v(6pt)

#set text(size: 9.6pt)

== H.1 The Equations of Motion

*Start with the definition of acceleration.* Acceleration is the rate of change of velocity, and for uniform acceleration the average velocity is the mean of the first and last values.

$ a = (v - u) \/ t quad => quad v = u + a t $

*Now use the average velocity.* The distance is the average velocity multiplied by the time:

$ s = ((u + v)\/2) t = ((u + u + a t)\/2) t = u t + (1\/2) a t^2 $

*Eliminate the time.* Put $t = (v - u)\/a$ into the average-velocity form:

$ s = ((u + v)\/2) ((v - u)\/a) quad => quad 2 a s = v^2 - u^2 $

Each of the three is the same physics in a different variable, which is why a question tells you which one to use by what it gives you and what it asks for.

== H.2 Newton's Second Law from Momentum

Momentum is $p = m v$. If a constant force acts for a time $t$, the momentum changes from $m u$ to $m v$:

$ F = (m v - m u)\/t = m ((v - u)\/t) = m a $

The form with momentum is the more general one: it still works when the mass changes, as it does for a rocket burning fuel, and it is the form the impulse questions are set on.

== H.3 The Least Speed at the Top of a Vertical Circle

At the top of the circle the string and gravity both pull towards the centre:

$ T + m g = (m v^2)\/r $

The string can only pull, so the least possible tension is zero. Setting $T = 0$:

$ v^2 = g r quad => quad v = sqrt(g r) $

Below that speed the string goes slack and the body leaves the circle — it becomes a projectile, not a pendulum.

== H.4 The Period of a Simple Pendulum

For a small angle the restoring force along the arc is $m g sin theta$, and for small angles $sin theta$ is approximately $theta$ in radians. The displacement along the arc is $x = l theta$, so

$ F = - m g (x \/ l) quad => quad a = - (g \/ l) x $

This is the SHM condition $a = - omega^2 x$ with $omega^2 = g\/l$. Substituting into $T = 2 pi \/ omega$:

$ T = 2 pi sqrt(l \/ g) $

The mass has cancelled — which is why a pendulum keeps the same time whatever bob hangs on it, and why the $sin theta = theta$ step is why the period drifts at large swings.

== H.5 The Speed at Any Point of an SHM Journey

The total energy of an oscillator of amplitude $A$ is the potential energy at the end, $(1\/2) m omega^2 A^2$. At a displacement $x$ the potential energy is $(1\/2) m omega^2 x^2$, so the kinetic energy is the difference:

$ (1\/2) m v^2 = (1\/2) m omega^2 (A^2 - x^2) quad => quad v = omega sqrt(A^2 - x^2) $

At the centre $x = 0$ and $v = omega A$; at the ends $x = A$ and $v = 0$. Both extremes fall out of the same line.

== H.6 Pressure at a Depth in a Liquid

Take a column of liquid of area $A$ and height $h$. Its volume is $A h$, its mass is $rho A h$ and its weight is $rho A h g$. That weight presses on the area $A$ at the bottom:

$ p = (rho A h g)\/A = rho g h $

The area cancels, which is the important part: the pressure depends on the depth and the density, never on the shape or width of the vessel.

== H.7 Upthrust from the Pressure Difference

A block of height $h$ and area $A$ is fully immersed. The pressure on its top is $rho g h_1$ and on its bottom $rho g h_2$, with $h_2 - h_1 = h$. The difference of the two forces is

$ U = rho g A (h_2 - h_1) = rho g A h = rho V g $

So the upthrust is the weight of the fluid displaced — Archimedes' principle, derived rather than remembered.

== H.8 The Young Modulus from a Wire's Extension

Stress is force per area, strain is extension per length, and for a wire within its elastic limit stress is proportional to strain:

$ E = ("stress") \/ ("strain") = (F \/ A) \/ (e \/ L) = (F L)\/(A e) $

The rearranged form is the one to carry: $e = F L \/ (A E)$, which shows at a glance that a long, thin wire of a soft material stretches most.

== H.9 The Power of a Constant Force

Power is work per time, and the work done by a constant force along its own direction is $F s$. If the force moves the body a distance $s$ in a time $t$, then

$ P = (F s)\/t = F v $

So a car with a 20 kW engine climbing at a steady 10 m s⁻¹ must be pushing with 2000 N — the faster the same power is used, the smaller the force available.
