#import "template.typ": *

#current-chapter.update("Appendix F: Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The words an examiner uses with a precise meaning, defined in one line each. If a question turns on the difference between two of these, the difference is usually the answer.]
]

#v(5pt)

#table(
  columns: (1.35fr, 2.85fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),
  [amplitude], [the greatest displacement of a point from its rest position],
  [antinode], [a point of maximum displacement in a stationary wave],
  [beat], [the periodic rise and fall in loudness heard when two notes of slightly different frequency sound together],
  [coherent], [describes two sources of the same frequency with a constant phase difference],
  [concave], [curved inwards, like the inside of a spoon; converging in a mirror],
  [convex], [curved outwards, like the back of a spoon; diverging in a mirror],
  [critical angle], [the angle of incidence in the denser medium for which the refracted ray grazes the surface],
  [diffraction], [the spreading of a wave as it passes an obstacle or a narrow gap],
  [dispersion], [the separation of white light into its colours because the refractive index varies with wavelength],
  [diverging], [spreading light out; describes a convex mirror or a concave lens],
  [Doppler effect], [the apparent change of frequency when a source and an observer move relative to each other],
  [echo], [a sound heard again after reflection from a distant surface],
  [end correction], [the extra effective length of a resonance tube caused by the vibrating air outside its open end],
  [focal length], [the distance from the pole or optical centre to the principal focus],
  [focus], [the point to which a beam parallel to the principal axis is brought, or from which it appears to diverge],
  [frequency], [the number of complete oscillations per second],
  [fundamental], [the lowest frequency a system can produce],
  [harmonic], [any frequency that is a whole multiple of the fundamental],
  [illuminance], [the luminous flux falling on unit area of a surface, in lux],
  [image, real], [an image formed where light actually converges; it can be caught on a screen],
  [image, virtual], [an image from which light only appears to come; it cannot be caught on a screen],
  [interference], [the superposition of two coherent waves to give regions of reinforcement and cancellation],
  [longitudinal], [describes a wave whose particles vibrate along the direction of travel],
  [luminous intensity], [the power of a source in a given direction, in candela],
  [magnification], [the ratio of the image height to the object height, equal to $v\/u$],
  [node], [a point of permanently zero displacement in a stationary wave],
  [normal], [the line perpendicular to a surface at the point where a ray meets it],
  [period], [the time for one complete oscillation],
  [polarisation], [the restriction of a transverse wave's vibrations to one plane],
  [principal focus], [the focus on the principal axis of a mirror or lens],
  [real depth], [the actual distance of an object below a surface],
  [refraction], [the change of direction of a wave as its speed changes at a boundary],
  [refractive index], [the ratio of the sine of the angle of incidence to the sine of the angle of refraction, or of the speed in air to the speed in the medium],
  [resonance], [a large amplitude produced when a system is driven at its natural frequency],
  [reverberation], [the persistence of sound after the source stops, because of repeated reflections],
  [stationary wave], [a pattern of nodes and antinodes formed by two identical waves travelling in opposite directions],
  [total internal reflection], [the reflection of all the light at a boundary when the angle of incidence exceeds the critical angle],
  [transverse], [describes a wave whose particles vibrate at right angles to the direction of travel],
  [wavelength], [the distance between two successive points in step on a wave],
)

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The four pairs examinations live on]
  #v(3pt)
  #text(size: 9.6pt)[
    *Real and virtual* — can it be caught on a screen? *Stationary and progressive* — does energy travel? *Longitudinal and transverse* — is the vibration along or across the direction of travel? *Converging and diverging* — do the rays meet or spread? Each question in the book that seems to turn on vocabulary is really turning on one of these four distinctions.
  ]
]
