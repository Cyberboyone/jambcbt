#import "template.typ": *

#current-chapter.update("Appendix D: Formula Sheet and Data")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Formula Sheet and Data]]

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
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Formula Sheet and Data]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every constant, conversion and formula used in Volume 2, on two pages. The examiner gives you the data; you are being tested on choosing the right relationship and using it without slipping a unit.]
]

#v(4pt)

== D.1 Constants and Conversions

#table(
  columns: (2.2fr, 1.2fr, 2.2fr, 1.2fr),
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
  [molar volume at s.t.p.], [22.4 dm³ mol⁻¹], [1 dm³], [1000 cm³],
  [molar volume at r.t.p.], [24.0 dm³ mol⁻¹], [1 M], [1 mol dm⁻³],
  [Faraday constant $F$], [96 500 C mol⁻¹], [1 atm], [101 325 Pa],
  [specific heat capacity of water], [4.2 J g⁻¹ K⁻¹], [0 °C], [273 K],
  [density of water], [1.0 g cm⁻³], [1 kJ], [1000 J],
  [charge], [$Q = I t$], [1 mole of electrons], [96 500 C],
)

== D.2 The Formulae, by Chapter

#table(
  columns: (1.5fr, 1.75fr, 1.9fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[To find],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Remember],
  ),
  [pH], [$"pH" = -log["H"^+]$], [one decimal place is enough], 
  [hydrogen-ion concentration], [$["H"^+] = 10^(-"pH")$], [reverse the sign, then antilog],
  [moles of acid and base], [$c_a V_a div c_b V_b = n_a div n_b$], [$V$ in the same unit on both sides],
  [moles from mass], [$n = m div M_r$], [use the formula mass],
  [concentration], [$c = n div V$], [$V$ in dm³],
  [mass needed], [$m = c times V times M_r$], [weigh to 3 significant figures],
  [dilution], [$c_1 V_1 = c_2 V_2$], [the moles are conserved, the volume is not],
  [percentage by mass], [$(m_"solute" div m_"solution") times 100$], [solution, not solvent],
  [water of crystallisation], [$x = n("water") div n("salt")$], [divide by the smaller number],
  [heat change], [$q = m c Delta T$], [$m$ in grams, $Delta T$ in K],
  [molar enthalpy], [$Delta H = -q div n$], [negative when the mixture warms],
  [bond enthalpy route], [$Delta H = sum "broken" - sum "formed"$], [only gases count],
  [Hess's law], [$Delta H = sum Delta H_f("products") - sum Delta H_f("reactants")$], [reverse a step, reverse its sign],
  [equilibrium constant], [$K_c = [P]^p div [R]^r$], [products on top, powers from the equation],
  [cell EMF], [$E^degree_"cell" = E^degree_"cathode" - E^degree_"anode"$], [subtract the anode value, sign included],
  [oxidation number], [sum of oxidation numbers = charge], [neutral molecule sums to zero],
  [mass deposited], [$m = (Q M_r) div (n F)$], [$Q = I t$, $n$ = electrons in the half-equation],
)

== D.3 Relative Atomic Masses You Will Actually Use

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 4pt,
  align: (center, center, center, center, center, center),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { jamb-light } else { white },
  [H 1], [C 12], [N 14], [O 16], [Na 23], [Mg 24],
  [Al 27], [S 32], [Cl 35.5], [K 39], [Ca 40], [Cr 52],
  [Mn 55], [Fe 56], [Cu 64], [Zn 65], [Br 80], [Ag 108],
  [I 127], [Ba 137], [Pb 207], [H₂O 18], [NaOH 40], [CO₂ 44],
)

== D.4 Standard Reduction Potentials

The more positive the value, the more readily the species is reduced — and the stronger its power as an oxidising agent. To find a cell EMF, put the more positive electrode on the cathode.

#table(
  columns: (1.9fr, 1fr, 1.9fr, 1fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Half-cell],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$E^degree$ / V],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Half-cell],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$E^degree$ / V],
  ),
  [$"K"^+ slash "K"$], [−2.92], [$"Fe"^(2+) slash "Fe"$], [−0.44],
  [$"Ca"^(2+) slash "Ca"$], [−2.87], [$"H"^+ slash "H"_2$], [0.00],
  [$"Mg"^(2+) slash "Mg"$], [−2.37], [$"Cu"^(2+) slash "Cu"$], [+0.34],
  [$"Zn"^(2+) slash "Zn"$], [−0.76], [$"I"_2 slash "I"^-$], [+0.54],
  [$"Fe"^(2+) slash "Fe"$], [−0.44], [$"Ag"^+ slash "Ag"$], [+0.80],
  [$"Pb"^(2+) slash "Pb"$], [−0.13], [$"Cl"_2 slash "Cl"^-$], [+1.36],
  [$"Sn"^(2+) slash "Sn"$], [−0.14], [$"MnO"_4^- slash "Mn"^(2+)$], [+1.51],
)

#trap-box("The three units that decide marks")[
  *cm³ to dm³* — divide by 1000. *°C to K* — add 273. *grams to moles* — divide by the formula mass, not the atomic mass. Nine out of ten “careless errors” in Physical Chemistry are one of these three, and each one costs more than any formula on this page.
]

#trap-box("Watch the units of $K_c$")[
  $K_c$ has units only when the powers of the products and the reactants do not cancel. For $"H"_2 + "I"_2 ⇌ 2"HI"$ it is a pure number; for $2"SO"_2 + "O"_2 ⇌ 2"SO"_3$ it carries mol⁻¹ dm³. Examiners set the cancel case deliberately, so *check before you write a unit*, and never invent one.
]
