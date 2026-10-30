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
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Data, Formulae and Constants]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The constants, the unit tables and the physical data the paper assumes. Numbers here are quoted to the precision the syllabus uses, not to the precision of a research handbook.]
]

#v(4pt)

== D.1 Constants and Conversions

#table(
  columns: (2.1fr, 1.3fr, 2.1fr, 1.3fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  ),
  [acceleration of free fall], [$g = 10$ m s⁻²], [radius of the Earth], [$6.4 times 10^6$ m],
  [gravitational constant], [$G = 6.7 times 10^(-11)$ N m² kg⁻²], [mass of the Earth], [$6.0 times 10^24$ kg],
  [density of water], [1000 kg m⁻³], [atmospheric pressure], [$1.0 times 10^5$ Pa],
  [density of mercury], [13 600 kg m⁻³], [density of ice], [900 kg m⁻³],
  [speed of light], [$3.0 times 10^8$ m s⁻¹], [speed of sound in air], [340 m s⁻¹],
  [1 km h⁻¹], [0.28 m s⁻¹], [1 g cm⁻³], [1000 kg m⁻³],
  [1 kWh], [$3.6 times 10^6$ J], [1 atmosphere], [760 mmHg],
  [1 tonne], [1000 kg], [1 hectare], [$10^4$ m²],
)

== D.2 SI Base Units

#table(
  columns: (1.5fr, 0.9fr, 2.4fr, 1.2fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Dimension],
  ),
  [length], [$l$], [metre, m], [$L$],
  [mass], [$m$], [kilogram, kg], [$M$],
  [time], [$t$], [second, s], [$T$],
  [electric current], [$I$], [ampere, A], [$I$],
  [temperature], [$T$], [kelvin, K], [$Theta$],
  [amount of substance], [$n$], [mole, mol], [$N$],
  [luminous intensity], [$I_v$], [candela, cd], [$J$],
)

== D.3 Derived Units Worth Knowing

#table(
  columns: (1.5fr, 1.1fr, 1.9fr, 1.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In base units],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Dimension],
  ),
  [force], [newton, N], [kg m s⁻²], [$M L T^(-2)$],
  [work, energy], [joule, J], [kg m² s⁻²], [$M L^2 T^(-2)$],
  [power], [watt, W], [kg m² s⁻³], [$M L^2 T^(-3)$],
  [pressure], [pascal, Pa], [kg m⁻¹ s⁻²], [$M L^(-1) T^(-2)$],
  [momentum, impulse], [N s], [kg m s⁻¹], [$M L T^(-1)$],
  [frequency], [hertz, Hz], [s⁻¹], [$T^(-1)$],
  [density], [—], [kg m⁻³], [$M L^(-3)$],
  [moment of a force], [N m], [kg m² s⁻²], [$M L^2 T^(-2)$],
)

== D.4 Prefixes

#table(
  columns: (1.1fr, 1.1fr, 1.1fr, 1.1fr, 1.1fr, 1.1fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prefix],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prefix],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Factor],
  ),
  [giga], [G], [$10^9$], [milli], [m], [$10^(-3)$],
  [mega], [M], [$10^6$], [micro], [$mu$], [$10^(-6)$],
  [kilo], [k], [$10^3$], [nano], [n], [$10^(-9)$],
  [centi], [c], [$10^(-2)$], [pico], [p], [$10^(-12)$],
)

== D.5 Physical Data for Calculations

#table(
  columns: (2.2fr, 1.1fr, 2.2fr, 1.1fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Material],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Material],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  ),
  [steel, Young modulus], [$2.0 times 10^11$ Pa], [copper, Young modulus], [$1.2 times 10^11$ Pa],
  [rubber, Young modulus], [$1.0 times 10^7$ Pa], [bone, Young modulus], [$1.5 times 10^10$ Pa],
  [water, surface tension], [$7.3 times 10^(-2)$ N m⁻¹], [mercury, surface tension], [0.47 N m⁻¹],
  [water, viscosity], [$1.0 times 10^(-3)$ Pa s], [glycerine, viscosity], [0.83 Pa s],
  [aluminium, density], [2700 kg m⁻³], [iron, density], [7900 kg m⁻³],
  [air, density], [1.3 kg m⁻³], [sea water, density], [1030 kg m⁻³],
)
