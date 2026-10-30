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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The numbers the examiner expects, the units they come in, and the sanity values that let you tell a right answer from a wrong one at a glance. The first two tables are worth knowing cold; the rest is for checking.]
]

#v(4pt)

== D.1 Electrical Constants

#table(
  columns: (1.9fr, 1.5fr, 1.9fr, 1.5fr),
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
  [Coulomb constant $k$], [$9.0 times 10^9$ N m² C⁻²], [permittivity $epsilon_0$], [$8.85 times 10^(-12)$ F m⁻¹],
  [electronic charge $e$], [$1.6 times 10^(-19)$ C], [electron mass], [$9.1 times 10^(-31)$ kg],
  [proton mass], [$1.67 times 10^(-27)$ kg], [electron volt], [$1$ eV $= 1.6 times 10^(-19)$ J],
  [permeability $mu_0$], [$4 pi times 10^(-7)$ H m⁻¹], [Planck constant $h$], [$6.6 times 10^(-34)$ J s],
  [speed of light $c$], [$3.0 times 10^8$ m s⁻¹], [atomic mass unit], [$1$ u $= 1.66 times 10^(-27)$ kg],
  [mains supply (Nigeria)], [240 V, 50 Hz], [cost of electricity], [about ₦60 per kWh],
)

#v(2pt)

== D.2 Unit Conversions and Prefixes

#table(
  columns: (1.5fr, 1.7fr, 1.5fr, 1.7fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equals],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prefix],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Factor],
  ),
  [1 kWh], [$3.6 times 10^6$ J], [micro µ], [$10^(-6)$],
  [1 eV], [$1.6 times 10^(-19)$ J], [milli m], [$10^(-3)$],
  [1 MeV], [$1.6 times 10^(-13)$ J], [kilo k], [$10^3$],
  [1 mm], [$10^(-3)$ m], [mega M], [$10^6$],
  [1 µF], [$10^(-6)$ F], [giga G], [$10^9$],
  [1 mA], [$10^(-3)$ A], [nano n], [$10^(-9)$],
  [1 µC], [$10^(-6)$ C], [pico p], [$10^(-12)$],
  [1 T], [$1$ Wb m⁻² $= 1$ N A⁻¹ m⁻¹], [tera T], [$10^12$],
)

#v(2pt)

== D.3 Values Worth Recognising

These are the answers to the standard questions. If a calculation gives something wildly different, the error is in the sum, not in the physics.

#table(
  columns: (2.7fr, 1.5fr, 2.6fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Situation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Order of size],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why it is worth knowing],
  ),
  [Force between two 1 µC charges 1 m apart], [9 mN], [small charges make small forces],
  [Field 1 m from a 1 µC charge], [9 kN C⁻¹], [$E = k Q \/ r^2$ with $k$ of order $10^(10)$],
  [Current in a 100 W lamp on 240 V], [0.42 A], [household currents are fractions of an ampere],
  [Current in a 2 kW kettle on 240 V], [8.3 A], [why a 13 A fuse is standard],
  [Charge on a 2 µF capacitor at 100 V], [$2 times 10^(-4)$ C], [capacitor charges are microcoulombs],
  [Energy in a 470 µF capacitor at 12 V], [0.034 J], [capacitors store small energies],
  [e.m.f. from 200 turns and 0.02 Wb in 0.1 s], [40 V], [induction gives volts, not millivolts],
  [Transformer 240 V → 12 V, 100 W], [8.3 A output], [step-down means step-up in current],
  [Photon energy of 500 nm light], [$4.0 times 10^(-19)$ J $approx$ 2.5 eV], [visible photons are a few eV],
  [Energy of a 100 V electron], [$1.6 times 10^(-17)$ J], [its wavelength is atomic-sized],
  [Fission energy per nucleus], [about 200 MeV], [a million times a chemical bond],
  [Mass defect per fission], [about 0.2 u], [a fifth of a proton mass, converted whole],
)

#v(2pt)

== D.4 Two Rules of Thumb

#concept-box("Checks that catch most arithmetic")[
  + *Carry the unit through the sum.* A resistance that comes out in volts, or an energy in amperes, is wrong before the numbers are checked. Every quantity in this volume has an unambiguous unit, and the unit of an answer is often enough to eliminate two options.
  + *Compare with a known object.* A household current is a few amperes; a capacitor holds microcoulombs; a visible photon carries about 2 eV; a nuclear reaction releases about 200 MeV. An answer a thousand times away from these is a misplaced power of ten, and the power of ten is nearly always in the conversion of millimetres to metres or microcoulombs to coulombs.
]
