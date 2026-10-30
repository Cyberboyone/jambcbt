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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The numbers the examiner expects, the units they come in, and the values that let you tell a right answer from a wrong one at a glance. The first two tables are worth knowing cold; the rest is for checking.]
]

#v(4pt)

== D.1 Thermal Constants and Conversions

#table(
  columns: (2.0fr, 1.5fr, 2.0fr, 1.4fr),
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
  [ice point], [0 °C = 273 K], [steam point], [100 °C = 373 K],
  [absolute zero], [−273 °C = 0 K], [body temperature], [37 °C = 310 K],
  [atmospheric pressure], [$1.01 times 10^5$ Pa], [1 atmosphere in mmHg], [760 mmHg],
  [molar gas constant], [$R = 8.31$ J mol⁻¹ K⁻¹], [Boltzmann constant], [$k = 1.38 times 10^(-23)$ J K⁻¹],
  [Avogadro constant], [$6.02 times 10^23$ mol⁻¹], [molar volume at s.t.p.], [22.4 dm³],
  [Stefan constant], [$sigma = 5.67 times 10^(-8)$], [Wien constant], [$2.9 times 10^(-3)$ m K],
)

== D.2 The Six Quantities You Must Know Cold

#table(
  columns: (1.7fr, 1.5fr, 2.3fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol and unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it appears],
  ),
  [specific heat capacity of water], [$c$, J kg⁻¹ K⁻¹], [every calorimetry question — 4200],
  [specific latent heat of fusion of ice], [$L_f$, J kg⁻¹], [$Q = m L$ — $3.34 times 10^5$],
  [specific latent heat of vaporisation of water], [$L_v$, J kg⁻¹], [steam and boiling — $2.26 times 10^6$],
  [linear expansivity], [$alpha$, K⁻¹], [$Delta L = alpha L_0 Delta theta$],
  [thermal conductivity], [$k$, W m⁻¹ K⁻¹], [$P = k A Delta theta \/ L$],
  [molar gas constant], [$R$, J mol⁻¹ K⁻¹], [$p V = n R T$ — 8.31],
)

== D.3 Specific Heats, Latent Heats and Expansivities

#table(
  columns: (1.8fr, 1.4fr, 1.8fr, 1.4fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Substance],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$c$ / J kg⁻¹ K⁻¹],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Substance],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$alpha$ / $10^(-5)$ K⁻¹],
  ),
  [water], [4200], [brass], [1.9],
  [ice], [2100], [copper], [1.7],
  [copper], [400], [aluminium], [2.3],
  [aluminium], [900], [steel], [1.2],
  [iron and steel], [460], [glass], [0.9],
  [lead], [130], [invar], [0.12],
  [mercury], [140], [platinum], [0.9],
)

#v(4pt)

#table(
  columns: (1.8fr, 1.5fr, 1.9fr, 1.5fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Latent heat],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Conductivity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$k$ / W m⁻¹ K⁻¹],
  ),
  [$L_f$ of ice], [$3.34 times 10^5$ J kg⁻¹], [copper], [400],
  [$L_v$ of water], [$2.26 times 10^6$ J kg⁻¹], [aluminium], [205],
  [$L_f$ of lead], [$2.5 times 10^4$ J kg⁻¹], [steel], [50],
  [$L_f$ of copper], [$2.05 times 10^5$ J kg⁻¹], [glass], [0.8],
  [$L_v$ of alcohol], [$8.5 times 10^5$ J kg⁻¹], [water], [0.6],
  [$L_v$ of mercury], [$2.7 times 10^5$ J kg⁻¹], [air], [0.026],
)

// ============================================================================
== D.4 Unit Conversions That Catch Candidates

#table(
  columns: (1.4fr, 1.3fr, 2.6fr),
  inset: 3.6pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[From],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[To],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How],
  ),
  [°C], [K], [add 273 — but only when the symbol means a *temperature*],
  [K], [°C], [subtract 273 — a temperature *difference* is the same in both],
  [cm³], [m³], [multiply by $10^(-6)$ — 250 cm³ is $2.5 times 10^(-4)$ m³],
  [dm³ (litre)], [m³], [multiply by $10^(-3)$ — 22.4 dm³ is 0.0224 m³],
  [g], [kg], [divide by 1000 — 250 g is 0.250 kg],
  [J], [kJ], [divide by 1000],
  [W], [kW], [divide by 1000 — 2.0 kW is 2000 W],
  [minutes], [seconds], [multiply by 60],
)

#trap-box("The two unit slips that cost the most marks")[
  *Kelvin.* Every gas-law equation, every efficiency and every radiation formula uses $T$ in kelvin. A temperature of 27 °C is 300 K, not 27; doubling 27 °C to 54 °C does not double anything, while doubling 300 K to 600 K doubles both $p V$ and the absolute temperature. Convert *before* you substitute, and write the kelvin value on the line above the equation.
  *Mass.* Specific heat capacities are quoted per kilogram. A question that gives 250 g must become 0.250 kg, and a question that quotes 4.2 J g⁻¹ K⁻¹ must become 4200 J kg⁻¹ K⁻¹ before it meets a formula that uses kilograms.
]

== D.5 Prefixes and Typical Values

#table(
  columns: (1fr, 1.1fr, 1fr, 1.1fr),
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

#v(6pt)

#table(
  columns: (1.7fr, 1.5fr, 2.1fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Typical size],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The check it gives you],
  ),
  [kettle power], [1 – 3 kW], [a kettle of 50 kW is a decimal slip],
  [heat to boil a litre], [about $3.4 times 10^5$ J], [an answer of 3.4 J is a unit slip],
  [room temperature], [25 °C = 298 K], [a gas-law answer in °C is wrong],
  [body temperature], [37 °C = 310 K], [a clinical thermometer range of 20–100 °C is wrong],
  [expansion of a 1 m rail over 30 K], [about 0.4 mm], [an expansion of 4 cm would derail trains],
  [thermal conductivity of a metal], [50 – 400 W m⁻¹ K⁻¹], [0.03 is the value for air or foam],
  [efficiency of a real engine], [20 – 40 %], [an efficiency of 85 % is not a Carnot result],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The one-table rule]
  #v(3pt)
  #text(size: 10.1pt)[
    If you memorise a single table in this volume, memorise the water column of D.2: 4200, $3.34 times 10^5$ and $2.26 times 10^6$. Between them they answer more heat questions than every other number in the syllabus combined, and they are the numbers a wrong option is usually built to punish.
  ]
]

== D.6 The Symbols This Volume Uses

#table(
  columns: (0.8fr, 1.5fr, 0.9fr, 2.3fr),
  inset: 4pt,
  align: (center + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Unit],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Remember],
  ),
  [$theta$], [Celsius temperature], [°C], [what a thermometer reads],
  [$T$], [thermodynamic temperature], [K], [always $theta + 273$],
  [$Q$], [heat energy transferred], [J], [$Q = m c Delta theta$ or $Q = m L$],
  [$c$], [specific heat capacity], [J kg⁻¹ K⁻¹], [per kilogram, not per gram],
  [$C$], [heat capacity of a body], [J K⁻¹], [$C = m c$; the calorimeter has one],
  [$L$], [specific latent heat], [J kg⁻¹], [at constant temperature],
  [$alpha, beta, gamma$], [linear, area, volume expansivity], [K⁻¹], [$beta = 2 alpha$, $gamma = 3 alpha$],
  [$k$], [thermal conductivity], [W m⁻¹ K⁻¹], [large for metals, tiny for air],
  [$p$], [pressure], [Pa], [$1.01 times 10^5$ Pa is one atmosphere],
  [$V$], [volume], [m³], [convert cm³ and dm³ first],
  [$n$], [amount of gas], [mol], [$p V = n R T$],
  [$U$], [internal energy], [J], [$Delta U = Q - W$],
  [$W$], [work done *by* the gas], [J], [$W = p Delta V$ at constant pressure],
  [$eta$], [efficiency], [none], [$eta = W \/ Q_1 = 1 - T_2 \/ T_1$],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Read the symbol, then the unit]
  #v(3pt)
  #text(size: 10.1pt)[
    Half the errors in this volume are caught by reading the unit back to yourself after the answer. Joules for heat, joules per kilogram for latent heat, watts for a rate of heat flow, kelvin for anything in a gas law. If the unit of your answer does not match the unit of the quantity the question asked for, the number is wrong however neatly it was worked out.
  ]
]
