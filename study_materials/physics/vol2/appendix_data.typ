#import "template.typ": *

#current-chapter.update("Appendix D: Data, Formulae and Constants")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Data, Formulae and Constants]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Data, Formulae and Constants]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The numbers the examiner expects you to use, the units they are measured in, and the prefixes that turn one into another. Nothing here needs to be memorised beyond the first table — the rest is for checking.]
]

#v(4pt)

== D.1 Constants and Conversions

#table(
  columns: (2.1fr, 1.3fr, 2.1fr, 1.3fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  ),
  [speed of light in a vacuum], [$c = 3.0 times 10^8$ m s⁻¹], [speed of sound in air], [340 m s⁻¹],
  [speed of sound in water], [1500 m s⁻¹], [speed of sound in steel], [5000 m s⁻¹],
  [refractive index of air], [1.00], [refractive index of water], [1.33],
  [refractive index of glass], [1.50], [refractive index of diamond], [2.42],
  [critical angle of glass], [42°], [critical angle of water], [49°],
  [wavelength of red light], [700 nm], [wavelength of violet light], [400 nm],
  [near point of a normal eye], [25 cm], [far point of a normal eye], [infinity],
  [1 nm], [$10^(-9)$ m], [1 MHz], [$10^6$ Hz],
  [1 GHz], [$10^9$ Hz], [1 lux], [1 lm m⁻²],
)

== D.2 The Six Quantities You Must Know Cold

#table(
  columns: (1.5fr, 1.6fr, 2.2fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol and unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it appears],
  ),
  [speed of light], [$c$, m s⁻¹], [$c = f lambda$ for every electromagnetic wave],
  [speed of sound], [$v$, m s⁻¹], [echoes, resonance tubes, Doppler],
  [refractive index], [$n$, no unit], [Snell's law, critical angle, apparent depth],
  [focal length], [$f$, m or cm], [mirrors and lenses, $1\/f = 1\/u + 1\/v$],
  [power of a lens], [$P$, dioptre], [$P = 1\/f$ with $f$ in metres],
  [illuminance], [$E$, lux], [$E = I\/d^2$],
)

== D.3 Unit Conversions That Catch Candidates

#table(
  columns: (1.4fr, 1.4fr, 2.4fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[From],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[To],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How],
  ),
  [cm], [m], [divide by 100 — 25 cm becomes 0.25 m],
  [mm], [m], [divide by 1000 — 0.50 mm becomes $5.0 times 10^(-4)$ m],
  [nm], [m], [multiply by $10^(-9)$ — 600 nm becomes $6.0 times 10^(-7)$ m],
  [MHz], [Hz], [multiply by $10^6$],
  [kHz], [Hz], [multiply by $10^3$],
  [minutes], [seconds], [multiply by 60],
  [ms], [s], [divide by 1000 — 20 ms becomes 0.020 s],
)

#trap-box("The unit slip is the commonest lost mark in this volume")[
  Every formula in this volume mixes lengths, and every one of them will give a wrong answer if the lengths are in different units. Two rules cover almost every case: put every length into *metres* before using a formula that also contains a speed or a power, and put every frequency into *hertz* before using $v = f lambda$. The one deliberate exception is the lens and mirror formulae, which work perfectly well in centimetres as long as *all* the lengths are in centimetres.
]

== D.4 Prefixes

#table(
  columns: (1fr, 1.2fr, 1fr, 1.2fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prefix],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prefix],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
  ),
  [giga $10^9$], [G], [milli $10^(-3)$], [m],
  [mega $10^6$], [M], [micro $10^(-6)$], [$mu$],
  [kilo $10^3$], [k], [nano $10^(-9)$], [n],
  [centi $10^(-2)$], [c], [pico $10^(-12)$], [p],
)

== D.5 Typical Values for Sanity Checks

An answer that is off by a factor of a thousand is almost always a unit error, and a quick check against this table catches it before you hand in the paper.

#table(
  columns: (1.6fr, 1.4fr, 2.0fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Typical size],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The check it gives you],
  ),
  [audible frequency], [20 Hz – 20 kHz], [a frequency outside this band is not a sound you can hear],
  [wavelength of audible sound], [1.7 cm – 17 m], [a sound wavelength of 300 m is impossible in air],
  [wavelength of visible light], [400 – 700 nm], [an answer of 0.5 mm for light is a unit slip],
  [focal length of a spectacle lens], [10 cm – 1.0 m], [a power of 0.02 D is a centimetre slip],
  [critical angle], [24° – 49°], [a critical angle above 90° cannot exist],
  [magnification of a telescope], [5 – 100], [a magnification of 0.02 means the ratio is upside down],
)
