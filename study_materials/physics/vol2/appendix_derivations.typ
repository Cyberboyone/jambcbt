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
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Derivations Worth Knowing]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six results that are asked as “show that …” and that are much harder to forget once they have been derived rather than memorised. Each one is three or four lines and uses nothing beyond the chapter it belongs to.]
]

#v(4pt)

== H.1 The Harmonics of a Stretched String

*Start with the condition.* A string fixed at both ends must have a node at each end, so its length must contain a whole number of half wavelengths:

$ L = n lambda_n \/ 2 quad => quad lambda_n = 2L \/ n. $

*Convert the wavelength into a frequency* with the wave equation:

$ f_n = v \/ lambda_n = n v \/ (2L). $

The lowest of these, $n = 1$, is the fundamental $v\/(2L)$, and every other is a whole multiple of it — which is what “harmonic” means.

*A pipe open at both ends* has antinodes at both ends, which is the same geometry shifted by half a wavelength, so it obeys the identical formula. That is why an open pipe and a string of the same length sound the same notes.

== H.2 The Odd Harmonics of a Closed Pipe

*A closed pipe has a node at the closed end and an antinode at the open end.* The distance from a node to the next antinode is a quarter wavelength, so the length must contain an odd number of quarter wavelengths:

$ L = (2n - 1) lambda \/ 4 quad => quad lambda = 4L \/ (2n - 1). $

Dividing the wave speed by this wavelength gives

$ f_n = (2n - 1) v \/ (4L), $

which for $n = 1, 2, 3 dots$ gives $f_1, 3f_1, 5f_1$ — the odd harmonics only. The even ones are missing because they would need an antinode at the closed end, and the closed end cannot move.

== H.3 The Critical Angle

*Take Snell's law with the second medium air,* of refractive index 1:

$ n sin i = 1 times sin r quad => quad sin r = n sin i. $

As $i$ grows, $r$ grows faster. The critical angle is the value of $i$ for which $r$ reaches its largest possible value, 90°:

$ n sin c = sin 90° = 1 quad => quad sin c = 1\/n. $

Beyond that angle there is no value of $r$ that satisfies the equation, and the light does not cross the boundary at all. The equation itself tells you that total internal reflection is a *consequence* of Snell's law, not a separate rule.

== H.4 The Lens Formula from Similar Triangles

*Draw the three rays.* The ray through the optical centre goes straight, and the ray parallel to the axis passes through the far focus. The two triangles formed — object to centre, and image to centre — are similar, so

$ ("image height")\/("object height") = v \/ u = m. $

*Use the second pair of triangles,* the one at the focus: the triangle between the object and the near focus, and the one between the image and the far focus, give

$ ("image height")\/("object height") = (v - f)\/f. $

Equating the two expressions for the magnification and dividing through by $v$ gives $1\/f = 1\/u + 1\/v$. The mirror formula follows the same argument with the rays reflected rather than refracted, which is why the two formulae are identical.

== H.5 The Inverse-Square Law for Illuminance

*Spread the same power over a larger sphere.* A point source of luminous intensity $I$ sends its light out equally in all directions, so at a distance $d$ the same flux passes through a sphere of area $4 pi d^2$. The illuminance is the flux per unit area:

$ E = (4 pi I)\/(4 pi d^2) = I \/ d^2. $

Doubling $d$ spreads the same light over four times the area, so $E$ falls to a quarter — the “inverse square” of the name. Nothing in the derivation depends on the colour of the light or on the medium, which is why the law holds for a lamp, for a radio aerial and for the gravitational field of a planet.

== H.6 The Doppler Shift for a Moving Source

*Count the waves in front of the source.* In one second the source emits $f$ waves and moves forward a distance $v_s$. The first wave emitted has travelled $v$ metres, so the $f$ waves are crowded into a length $v - v_s$:

$ lambda' = (v - v_s)\/f. $

The waves then travel at $v$ through the air, so the frequency an observer ahead of the source receives is

$ f' = v \/ lambda' = f v \/ (v - v_s). $

Behind the source the same argument with $v + v_s$ gives the lower frequency. Notice that the source has emitted $f$ waves throughout: only the *spacing* has changed, which is why the received frequency differs from the emitted one.

#trap-box("Derivations are marked on the reasoning, not the algebra")[
  A “show that” question carries marks for stating the starting condition (a node at each end, Snell's law, the similar triangles) and for saying what the result means. A candidate who writes the final line without the starting condition has done the algebra and left the marks. Begin every derivation with the sentence that says *what the geometry or the law requires*.
]

== H.7 The Six Results at a Glance

#table(
  columns: (2.3fr, 1.9fr, 1.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Result],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Starting condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The line that follows],
  ),
  [string harmonics], [a node at each fixed end], [$f_n = n v \/ (2L)$],
  [closed-pipe harmonics], [a node at one end, an antinode at the other], [$f_n = (2n - 1) v \/ (4L)$],
  [critical angle], [refraction at 90°], [$sin c = 1\/n$],
  [lens formula], [similar triangles at the centre and at the focus], [$1\/f = 1\/u + 1\/v$],
  [inverse-square law], [flux spread over a sphere], [$E = I\/d^2$],
  [Doppler shift], [waves crowded by a moving source], [$f' = f v \/ (v - v_s)$],
  [apparent depth], [rays bent away from the normal at the surface], [$n = "real" \/ "apparent"$],
  [prism deviation], [the two refractions added at the two faces], [$d = i_1 + i_2 - A$],
)

#v(4pt)

#v(4pt)

Which of these can the paper ask for? The string and pipe harmonics are the most frequent, because they double as a “state the next harmonic” question. The critical angle and the lens formula are usually asked as calculations rather than derivations, but the derivation is what tells you which way the inequality runs when the question turns to total internal reflection. The inverse-square law and the Doppler shift are the two that appear in the structured paper, where a line of algebra earns a mark that a memorised formula does not.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Rehearse the first column, not the second]
  #v(3pt)
  #text(size: 9.6pt)[If you can say the starting condition — a node at each end, refraction at 90°, similar triangles — the algebra writes itself in four lines. If you can only recite the answer, one forgotten symbol costs the whole question. Practise the derivation by covering the right-hand column and writing it out.]
]

