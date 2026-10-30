#import "template.typ": *

#current-chapter.update("Appendix E: The Formula Map")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Formula Map]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Formula Map]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every relation in the volume, with the question it answers printed beside it. Learn the questions, not the symbols: an examination asks a question, and the formula is only the shortest way to the answer.]
]

== E.1 The Map

#set text(size: 8.8pt)

#table(
  columns: (2.15fr, 2.2fr, 0.35fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question it answers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
  ),
  [$v = f lambda$], [the speed of a wave], [1],
  [$f = 1\/T$], [the frequency from the period], [1],
  [$lambda_"new" = v_"new" \/ f$], [the wavelength after a change of medium], [1],
  [$f_1 = v\/(2L)$], [the fundamental of a string or an open pipe], [1],
  [$f_n = n v \/ (2L)$], [the harmonics of a string or an open pipe], [1],
  [$f_n = (2n - 1) v \/ (4L)$], [the odd harmonics of a closed pipe], [1],
  [$v = 2d \/ t$], [the speed of sound from an echo], [2],
  [$d = v t \/ 2$], [the depth from an echo time], [2],
  [$lambda\/2 = l_2 - l_1$], [the wavelength from two resonances], [2],
  [$e = lambda\/4 - l_1$], [the end correction of a resonance tube], [2],
  [$f_"beat" = f_1 - f_2$], [the beat frequency], [2],
  [$f' = f v\/(v - v_s)$], [the frequency heard from an approaching source], [2],
  [$f' = f v\/(v + v_s)$], [the frequency heard from a receding source], [2],
  [$i = r$], [the law of reflection], [3],
  [$f = r\/2$], [the focal length from the radius of curvature], [3],
  [$1\/f = 1\/u + 1\/v$], [the image distance of a mirror or lens], [3, 5],
  [$m = v\/u$], [the magnification], [3, 5],
  [$n = sin i \/ sin r$], [Snell's law], [4],
  [$n = v_1 \/ v_2 = lambda_1 \/ lambda_2$], [the refractive index from speeds or wavelengths], [4],
  [$v = c \/ n$], [the speed of light in a medium], [4],
  [$sin c = 1\/n$], [the critical angle], [4],
  [$n = "real depth" \/ "apparent depth"$], [the apparent depth under water], [4],
  [$A = r_1 + r_2$], [the angle of a prism from the internal angles], [4],
  [$d = i_1 + i_2 - A$], [the deviation of a prism], [4],
  [$P = 1\/f$], [the power of a lens in dioptres], [5],
  [$P = P_1 + P_2$], [the power of two thin lenses in contact], [5],
  [$M = f_0 \/ f_e$], [the magnification of a telescope], [5],
  [$E = I\/d^2$], [the illuminance from a point source], [6],
  [$c = f lambda$], [the wavelength of any electromagnetic wave], [6],
  [$lambda = a x \/ d$], [the wavelength in Young's double-slit experiment], [6],
)

#pagebreak()

== E.2 Symbols Used in This Volume

#table(
  columns: (0.8fr, 2.4fr, 1.4fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Unit],
  ),
  [$lambda$], [wavelength], [m],
  [$f$], [frequency], [Hz],
  [$T$], [period], [s],
  [$v$], [speed of a wave or of sound], [m s⁻¹],
  [$c$], [speed of light in a vacuum], [m s⁻¹],
  [$n$], [refractive index], [none],
  [$i, r$], [angles of incidence and refraction or reflection], [°],
  [$c$ (as an angle)], [the critical angle], [°],
  [$u, v$], [object and image distances], [m or cm],
  [$f$ (optics)], [focal length], [m or cm],
  [$m$], [magnification], [none],
  [$P$], [power of a lens], [D],
  [$A, d$], [angle of a prism, total deviation], [°],
  [$I$], [luminous intensity], [cd],
  [$E$], [illuminance], [lux],
  [$a, x, d$ (Young)], [slit separation, fringe spacing, screen distance], [m],
)

#trap-box("The same letter, two jobs")[
  This volume uses $v$ for three different things — the speed of a wave, the speed of sound and the image distance — and $d$ for two: the distance to a screen, and the total deviation of a prism. Read the *question* before you read the symbol. A candidate who writes $1\/f = 1\/u + 1\/v$ and substitutes the speed of sound has done the algebra correctly and the physics wrongly.
]

== E.3 The Three Relations That Do Most of the Work

#concept-box("If you learn only three")[
  + $v = f lambda$ — the wave equation. It answers every question about wave speed, wavelength and frequency, in sound, light and the electromagnetic spectrum alike.
  + $1\/f = 1\/u + 1\/v$ with $m = v\/u$ — the imaging equation. It answers every mirror and every lens question, provided the signs are kept.
  + $n = sin i \/ sin r$ with $sin c = 1\/n$ — the refraction pair. It answers every boundary question, including the apparent depth and the critical angle.
]

Everything else in the map is either a rearrangement of these three or a definition. That is why the chapter recaps keep returning to them: an examination is not a memory test of thirty formulae, it is a test of whether three relations can be recognised inside thirty different stories.
