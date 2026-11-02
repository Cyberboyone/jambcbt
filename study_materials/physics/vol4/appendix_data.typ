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


#v(8pt)

== D.5 The Constants in the Order the Paper Uses Them

#text(size: 9.2pt)[A constant is only useful if you know which question drags it in. This is the same list as D.1 and D.2, arranged by the chapter that needs it, so that a question can be answered from the constant it names.]

#v(3pt)

#table(
  columns: (1.0fr, 1.5fr, 0.7fr, 1.9fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Constant],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question that needs it],
  ),
  [*$k$*], [$9.0 times 10^9$ N m² C⁻²], [1], [force between charges; field of a point charge],
  [*$epsilon_0$*], [$8.85 times 10^(-12)$ F m⁻¹], [1], [capacitance of a parallel-plate capacitor],
  [*$e$*], [$1.6 times 10^(-19)$ C], [2, 5], [charge on an electron; the electron-volt],
  [*$m_e$*], [$9.1 times 10^(-31)$ kg], [4, 5], [deflection in a beam; the de Broglie wavelength],
  [*$h$*], [$6.6 times 10^(-34)$ J s], [5], [photon energy; threshold frequency; $lambda = h\/p$],
  [*$c$*], [$3.0 times 10^8$ m s⁻¹], [5, 6], [converting a frequency to a wavelength],
  [*$N_A$*], [$6.0 times 10^(23)$ mol⁻¹], [6], [number of nuclei in a given mass],
  [*$1$ u*], [$1.66 times 10^(-27)$ kg], [6], [mass defect and binding energy],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Every one of these is printed on the question paper in the real examination, so the skill being tested is not recall of the value but recognition of which one the question needs. A candidate who reaches for $h$ in a capacitor question has misread the stem, not forgotten a constant.]

#v(6pt)

#concept-box("Reading a data sheet under time pressure")[
  + *Find the quantity, not the letter.* A data sheet is a list of symbols; the stem gives you a description. Say the quantity in words — “the charge on an electron”, “the energy of a photon” — and only then look for its symbol.
  + *Prefer the value in the question to the value on the sheet.* Every paper prints a data sheet, and most papers then give the constant they want you to use inside the question. The question wins, every time.
  + *Two constants, one equation.* If an equation needs two constants, both are on the sheet and both must be substituted in SI; a formula that mixes a value in grams with a value in kilograms is the commonest silent error in nuclear arithmetic.
  + *A constant is a unit as well as a number.* $h$ carries J s, so $h f$ comes out in joules and not in electron-volts; dividing by $e$ afterwards is not optional.
]

#v(6pt)

== D.6 Six Values to Have at the Fingertips

#text(size: 9.2pt)[The data sheet is printed on the paper, so nothing here has to be memorised. These six are worth knowing anyway, because knowing them lets you *check* an answer instead of trusting it.]

#v(3pt)

#table(
  columns: (1.55fr, 0.95fr, 2.4fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Number],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it lets you check],
  ),
  [Electronic charge], [$1.6 times 10^(-19)$ C], [any answer in coulombs or electron-volts — the two are one multiplication apart],
  [Planck constant], [$6.6 times 10^(-34)$ J s], [a photon of visible light must come out near 2 eV; anything near 2 keV is X-ray, anything near 2 meV is radio],
  [Speed of light], [$3.0 times 10^8$ m s⁻¹], [$f = c\/lambda$: 500 nm must give $6 times 10^(14)$ Hz],
  [Electron mass], [$9.1 times 10^(-31)$ kg], [an electron's de Broglie wavelength at 100 V must be about 0.1 nm, the size of an atom],
  [Coulomb constant], [$9 times 10^9$ N m² C⁻²], [two microcoulomb charges a metre apart must give a force of order millinewtons],
  [One atomic mass unit], [$1.66 times 10^(-27)$ kg], [a mass defect must be a fraction of a proton mass, never several of them],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six numbers, six checks. A candidate who runs one of these against every numerical answer catches the misplaced power of ten, which is the single commonest way a correct method is marked wrong.]
