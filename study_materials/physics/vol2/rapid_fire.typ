#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 The First Twenty

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.6pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [A wave of 50 Hz has a wavelength of 4.0 m. Its speed is], [200 m s⁻¹],
    [The period of a 250 Hz wave is], [0.004 s],
    [A wave length of 2.0 m at 170 Hz travels at], [340 m s⁻¹],
    [When a wave enters a denser medium, the quantity that does not change is], [the frequency],
    [Two neighbouring nodes on a stationary wave are], [$lambda\/2$ apart],
    [A string of length $L$ sounds its fundamental at], [$v\/(2L)$],
    [A pipe closed at one end sounds at], [odd harmonics only],
    [The fundamental of a closed pipe of length $L$ is], [$v\/(4L)$],
    [Sound cannot travel through], [a vacuum],
    [The speed of sound is greatest in], [solids],
    [An echo travels], [twice the distance to the reflector],
    [The pitch of a note depends on], [its frequency],
    [The loudness of a note depends on], [its amplitude],
    [The quality of a note depends on], [its overtones],
    [Two forks of 512 Hz and 516 Hz beat at], [4 beats per second],
    [As a source approaches, the observed frequency], [rises],
    [A ray striking a plane mirror at 30° to its surface has an angle of incidence of], [60°],
    [A plane mirror forms an image that is], [virtual, upright, the same size, laterally inverted],
    [The image in a plane mirror lies], [as far behind as the object is in front],
    [Turning a mirror through $theta$ turns the reflected ray through], [$2 theta$],
  )
]

#pagebreak()

== A.2 The Second Twenty

Twenty more, in the same format. If a line takes longer than twenty seconds, write down the chapter it belongs to and treat that list as a revision order rather than a score.

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.6pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [The focal length of a mirror of radius 24 cm is], [12 cm],
    [A concave mirror is described by the sign of its focal length as], [positive],
    [A convex mirror always forms an image that is], [virtual, upright and diminished],
    [A ray through the centre of curvature of a concave mirror reflects], [along its own path],
    [A ray parallel to the axis of a concave mirror reflects], [through the focus],
    [The mirror formula is], [$1\/f = 1\/u + 1\/v$],
    [The magnification of a mirror or lens is], [$v\/u$],
    [The refractive index of a medium is], [$sin i \/ sin r$],
    [The critical angle is given by], [$sin c = 1\/n$],
    [Total internal reflection needs light to travel], [from dense to rare, beyond the critical angle],
    [The apparent depth of an object under water is], [real depth $\/ n$],
    [When light enters a denser medium its speed and wavelength], [both fall, while the frequency stays fixed],
    [A parallel-sided glass block produces], [a sideways displacement, not a deviation],
    [The colour deviated most by a prism is], [violet],
    [White light is a mixture of colours because], [a second prism recombines the spectrum into white],
    [A converging lens has a focal length that is], [positive],
    [The lens formula is], [$1\/f = 1\/u + 1\/v$],
    [The power of a lens in dioptres is], [$1\/f$ with $f$ in metres],
    [Short sight is corrected with], [a diverging lens],
    [The magnification of a telescope is], [$f_0 \/ f_e$],
  )
]

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[How to use this list]
  #v(3pt)
  #text(size: 9.6pt)[
    Work down the list with the answers covered. A line you answer in under five seconds is secure; five to twenty seconds is fragile; anything you cannot answer at all is a hole. Tally the holes by chapter — four holes in one chapter is an evening's revision, and forty scattered holes means the chapters need rereading, not the list. Run the list again the morning after a drill: the lines you answered slowly the first time are the ones that will be slow in the hall.
  ]
]
