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
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Sixty terms, each defined in the words a marking scheme would accept. If a definition here disagrees with a textbook, the textbook is longer than the space the paper gives you.]
]

#v(6pt)

#table(
  columns: (1.16fr, 2.14fr, 1.16fr, 2.14fr),
  inset: (x: 5pt, y: 3.3pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),
  [fundamental quantity], [one that cannot be defined in terms of others], [derived quantity], [one built from the fundamental ones],
  [dimension], [the way a quantity is built from mass, length and time], [scalar], [a quantity with magnitude only],
  [vector], [a quantity with magnitude and direction], [resultant], [the single vector equivalent to two or more],
  [component], [the part of a vector along a chosen direction], [resolution], [splitting a vector into two components],
  [displacement], [distance moved in a stated direction], [velocity], [rate of change of displacement],
  [speed], [rate of covering distance], [acceleration], [rate of change of velocity],
  [uniform motion], [motion at constant velocity], [free fall], [motion under gravity alone],
  [projectile], [a body moving under gravity after being launched], [range], [the horizontal distance a projectile covers],
  [inertia], [a body's resistance to a change of motion], [momentum], [the product of mass and velocity],
  [impulse], [the product of a force and the time it acts], [force], [that which changes a body's momentum],
  [weight], [the gravitational force on a mass], [friction], [the force opposing relative sliding of surfaces],
  [normal reaction], [the perpendicular push of a surface on a body], [limit of proportionality], [the point beyond which extension stops being proportional to load],
  [elastic limit], [the greatest stretch from which a body still returns], [tension], [a pull transmitted along a string or rod],
  [equilibrium], [the state in which the forces on a body cancel], [moment], [the turning effect of a force],
  [couple], [two equal, opposite, parallel forces], [centre of gravity], [the point where the whole weight acts],
  [work], [the product of a force and the displacement along it], [energy], [the capacity to do work],
  [kinetic energy], [the energy of motion], [potential energy], [energy stored by position or shape],
  [power], [the rate of doing work], [efficiency], [useful output as a percentage of the input],
  [mechanical advantage], [load divided by effort], [velocity ratio], [effort distance divided by load distance],
  [angular speed], [the angle swept per second], [centripetal force], [the force directed to the centre of a circle],
  [period], [the time for one complete oscillation or orbit], [frequency], [the number of cycles per second],
  [gravitational field strength], [the force per unit mass at a point], [escape velocity], [the least speed that lets a body leave a planet],
  [geostationary orbit], [an orbit with a 24-hour period above the equator], [simple harmonic motion], [motion with acceleration proportional to displacement and directed to a fixed point],
  [amplitude], [the greatest displacement from the centre], [damping], [the steady loss of amplitude of an oscillator],
  [resonance], [large amplitude when the driving frequency matches the natural one], [stress], [force per unit cross-sectional area],
  [strain], [extension per unit original length], [Young modulus], [stress divided by strain],
  [density], [mass per unit volume], [relative density], [density compared with water],
  [pressure], [force per unit area], [upthrust], [the upward force of a fluid on an immersed body],
  [surface tension], [the force per unit length along a liquid surface], [viscosity], [a fluid's resistance to flow],
  [terminal velocity], [the steady speed reached when the forces on a falling body balance], [Pascal's principle], [pressure applied to an enclosed fluid is transmitted undiminished],
)
