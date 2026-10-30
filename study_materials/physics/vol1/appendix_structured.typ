#import "template.typ": *

#current-chapter.update("Appendix I: Structured Questions with Model Answers")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Structured Questions with Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Structured Questions with Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Eight long questions, one per skill the paper tests. The UTME itself is multiple choice, but a topic you can write out in three numbered steps is a topic you cannot lose a mark on.]
]

#v(6pt)

#set text(size: 9.5pt)

== I.1 Measurement and Uncertainty

*Question.* A student measures the diameter of a wire with a micrometer screw gauge of least count 0.01 mm. The sleeve reads 3.5 mm and the thimble reads 27 divisions. The gauge has a zero error of $+0.02$ mm. (a) State the reading before correction. (b) Give the corrected diameter. (c) Express the uncertainty of the corrected reading as a percentage.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* The reading is the main-scale value plus the thimble divisions times the least count: $3.5 + 27 times 0.01 = 3.77$ mm. \
  *(b)* A positive zero error is subtracted: $3.77 - 0.02 = 3.75$ mm. \
  *(c)* The uncertainty is one least count, 0.01 mm, so $(0.01 \/ 3.75) times 100 = 0.27$ %.
]

== I.2 A Three-Stage Journey

*Question.* A car accelerates uniformly from rest to 20 m s⁻¹ in 8.0 s, travels at that speed for 10 s, then brakes uniformly to rest in 5.0 s. Find (a) the acceleration in the first stage, (b) the total distance, (c) the average speed for the whole journey.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $a = (v - u)\/t = 20\/8.0 = 2.5$ m s⁻². \
  *(b)* Stage 1: $(1\/2)(2.5)(8.0)^2 = 80$ m. Stage 2: $20 times 10 = 200$ m. Stage 3: average $10$ m s⁻¹ for 5.0 s $= 50$ m. Total $= 330$ m. \
  *(c)* Total time $= 23$ s, so the average speed is $330\/23 = 14$ m s⁻¹.
]

== I.3 Force on a Rough Surface

*Question.* A block of mass 5.0 kg is pulled along a horizontal table by a horizontal force of 30 N. The coefficient of friction between the block and the table is 0.40. Taking $g = 10$ m s⁻², find (a) the normal reaction, (b) the friction, (c) the acceleration.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* On a horizontal surface $N = m g = 5.0 times 10 = 50$ N. \
  *(b)* $f = mu N = 0.40 times 50 = 20$ N. \
  *(c)* The resultant is $30 - 20 = 10$ N, so $a = 10\/5.0 = 2.0$ m s⁻².
]

== I.4 A Pump and Its Efficiency

*Question.* A pump raises 900 kg of water through 12 m in 60 s. Its efficiency is 75 %. Taking $g = 10$ m s⁻², calculate (a) the useful work done, (b) the useful power output, (c) the power input to the pump.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $W = m g h = 900 times 10 times 12 = 1.08 times 10^5$ J. \
  *(b)* $P = W\/t = 1.08 times 10^5 \/ 60 = 1800$ W. \
  *(c)* $P_"input" = 1800\/0.75 = 2400$ W — the missing 600 W is lost to friction in the pump and the pipe.
]

== I.5 A Satellite in Orbit

*Question.* A satellite orbits the Earth at a radius of $7.0 times 10^6$ m from the centre. Taking $G = 6.7 times 10^(-11)$ N m² kg⁻² and the mass of the Earth as $6.0 times 10^24$ kg, calculate (a) the orbital speed, (b) the period, in hours.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $v = sqrt(G M \/ r) = sqrt((6.7 times 10^(-11))(6.0 times 10^24) \/ (7.0 times 10^6)) = 7.6 times 10^3$ m s⁻¹. \
  *(b)* $T = 2 pi r \/ v = (2)(3.14)(7.0 times 10^6) \/ (7.6 times 10^3) = 5.8 times 10^3$ s, which is about 1.6 hours.
]

== I.6 A Pendulum on Two Planets

*Question.* A simple pendulum has a length of 0.40 m. (a) Find its period on Earth, where $g = 10$ m s⁻². (b) Find its frequency. (c) State and explain what happens to the period if the pendulum is taken to the Moon, where $g$ is about one sixth as large.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $T = 2 pi sqrt(l\/g) = 6.28 sqrt(0.040) = 1.26$ s. \
  *(b)* $f = 1\/T = 0.79$ Hz. \
  *(c)* The period increases by a factor of $sqrt(6)$, to about 3.1 s, because $T$ is proportional to $1\/sqrt(g)$. The mass of the bob is irrelevant throughout.
]

== I.7 A Loaded Spring

*Question.* A mass of 0.50 kg hangs from a vertical spring of constant 200 N m⁻¹. (a) Find the extension. (b) Find the elastic energy stored. (c) The mass is pulled down a little and released. Find the period of the resulting oscillation.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* $e = F\/k = 5.0\/200 = 0.025$ m. \
  *(b)* $E = (1\/2) k e^2 = (1\/2)(200)(0.025)^2 = 0.063$ J. \
  *(c)* $T = 2 pi sqrt(m\/k) = 6.28 sqrt(0.0025) = 0.31$ s, and the answer does not depend on the amplitude.
]

== I.8 A Floating Block

*Question.* A block of volume 0.20 m³ and density 600 kg m⁻³ floats in water of density 1000 kg m⁻³. (a) Find the upthrust on it. (b) Find the fraction of its volume below the surface. (c) Find the least downward force needed to hold it completely submerged.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  *(a)* A floating body displaces its own weight, so $U = rho V g = 600 times 0.20 times 10 = 1200$ N. \
  *(b)* The fraction submerged is the ratio of the densities: $600\/1000 = 0.60$, so 60 % is under water. \
  *(c)* Fully submerged the upthrust is $1000 times 0.20 times 10 = 2000$ N against a weight of 1200 N, so the extra downward force is 800 N.
]
