#import "template.typ": *

#current-chapter.update("Appendix H: Equations and Half-Equations")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Equations and Half-Equations]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Equations and Half-Equations]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every equation the volume uses, balanced and in one place. Isoelectronic puzzles and unbalanced redox equations are where marks are most often thrown away, so this is the page to copy by hand until it comes out right first time.]
]

#v(4pt)

== H.1 Acids, Bases and Salts

#table(
  columns: (2.2fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [acid + metal], [$"Zn" + 2"HCl" -> "ZnCl"_2 + "H"_2$],
  [acid + carbonate], [$"CaCO"_3 + 2"HCl" -> "CaCl"_2 + "H"_2"O" + "CO"_2$],
  [acid + hydrogencarbonate], [$"NaHCO"_3 + "HCl" -> "NaCl" + "H"_2"O" + "CO"_2$],
  [acid + base], [$"HCl" + "NaOH" -> "NaCl" + "H"_2"O"$],
  [acid + metal oxide], [$"CuO" + "H"_2"SO"_4 -> "CuSO"_4 + "H"_2"O"$],
  [acid + sulphite], [$"Na"_2"SO"_3 + 2"HCl" -> 2"NaCl" + "H"_2"O" + "SO"_2$],
  [ammonia + acid], [$"NH"_3 + "HCl" -> "NH"_4"Cl"$],
  [strong acid ionisation], [$"HCl" -> "H"^+ + "Cl"^-$],
  [weak acid ionisation], [$"CH"_3"COOH" ⇌ "CH"_3"COO"^- + "H"^+$],
  [water ionisation], [$"H"_2"O" ⇌ "H"^+ + "OH"^-$],
  [neutralisation, ionic], [$"H"^+ + "OH"^- -> "H"_2"O"$],
)

== H.2 Solutions

#table(
  columns: (2.2fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relationship],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [concentration], [$c = n div V$],
  [moles from concentration], [$n = c V$],
  [dilution], [$c_1 V_1 = c_2 V_2$],
  [mass from concentration], [$m = c V M_r$],
  [percentage by mass], [$"% " = (m_"solute" div m_"solution") times 100$],
  [water of crystallisation], [$x = n("H"_2"O") div n("salt")$],
  [solubility], [$s = (m_"solute" div m_"water") times 100$],
)

== H.3 Energetics

#table(
  columns: (2.2fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relationship],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [heat change], [$q = m c Delta T$],
  [molar enthalpy], [$Delta H = -q div n$],
  [bond enthalpies], [$Delta H = sum E("broken") - sum E("formed")$],
  [from formation enthalpies], [$Delta H = sum Delta H_f("products") - sum Delta H_f("reactants")$],
  [from combustion enthalpies], [$Delta H = sum Delta H_c("reactants") - sum Delta H_c("products")$],
  [Hess's law], [$Delta H_1 + Delta H_2 = Delta H_3$],
)

#concept-box("Why the two sums are the other way round")[
  Formation enthalpies are measured *from the elements*, so the elements sit at the bottom of both routes and the products term comes first. Combustion enthalpies are measured *to the oxides*, so both substances fall towards the same oxides and the reactants term comes first. Learn the reason, and you will never reverse the wrong sum.
]

== H.4 Rates

#table(
  columns: (2.2fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relationship],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [average rate], [$"rate" = Delta["reactant"] div Delta t$],
  [rate from a graph], [gradient of the concentration–time tangent],
  [rate law], [$"rate" = k["A"]^m["B"]^n$],
  [first order], [$"rate" prop ["A"]$],
  [decomposition of peroxide], [$2"H"_2"O"_2 -> 2"H"_2"O" + "O"_2$],
  [thiosulphate and acid], [$"Na"_2"S"_2"O"_3 + 2"HCl" -> 2"NaCl" + "S" + "SO"_2 + "H"_2"O"$],
)

== H.5 Equilibrium

#table(
  columns: (2.2fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relationship],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [general equilibrium], [$a"A" + b"B" ⇌ c"C" + d"D"$],
  [equilibrium constant], [$K_c = ["C"]^c["D"]^d div (["A"]^a["B"]^b)$],
  [Haber], [$"N"_2 + 3"H"_2 ⇌ 2"NH"_3$, $Delta H = -92$ kJ mol⁻¹],
  [Haber $K_c$], [$K_c = ["NH"_3]^2 div (["N"_2]["H"_2]^3)$],
  [contact process], [$2"SO"_2 + "O"_2 ⇌ 2"SO"_3$, $Delta H = -197$ kJ mol⁻¹],
  [contact $K_c$], [$K_c = ["SO"_3]^2 div (["SO"_2]^2["O"_2])$],
  [dimerisation], [$2"NO"_2 ⇌ "N"_2"O"_4$],
  [hydrogen iodide], [$"H"_2 + "I"_2 ⇌ 2"HI"$, $K_c = ["HI"]^2 div (["H"_2]["I"_2])$],
)

== H.6 Redox Half-Equations

#table(
  columns: (2.2fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Half-cell],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [zinc], [$"Zn"^(2+) + 2e^- -> "Zn"$],
  [copper], [$"Cu"^(2+) + 2e^- -> "Cu"$],
  [hydrogen], [$2"H"^+ + 2e^- -> "H"_2$],
  [silver], [$"Ag"^+ + e^- -> "Ag"$],
  [chlorine], [$"Cl"_2 + 2e^- -> 2"Cl"^-$],
  [oxygen in acid], [$"O"_2 + 4"H"^+ + 4e^- -> 2"H"_2"O"$],
  [water oxidation], [$2"H"_2"O" -> "O"_2 + 4"H"^+ + 4e^-$],
  [permanganate], [$"MnO"_4^- + 8"H"^+ + 5e^- -> "Mn"^(2+) + 4"H"_2"O"$],
  [dichromate], [$"Cr"_2"O"_7^(2-) + 14"H"^+ + 6e^- -> 2"Cr"^(3+) + 7"H"_2"O"$],
  [iron(II)/iron(III)], [$"Fe"^(3+) + e^- -> "Fe"^(2+)$],
  [iodine], [$"I"_2 + 2e^- -> 2"I"^-$],
)

== H.7 Cell Reactions Worth Knowing

#table(
  columns: (1.35fr, 1.9fr, 0.8fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cell],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Overall reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[EMF / V],
  ),
  [Daniell], [$"Zn" + "Cu"^(2+) -> "Zn"^(2+) + "Cu"$], [1.10],
  [silver–zinc], [$"Zn" + 2"Ag"^+ -> "Zn"^(2+) + 2"Ag"$], [1.56],
  [copper–silver], [$"Cu" + 2"Ag"^+ -> "Cu"^(2+) + 2"Ag"$], [0.46],
  [hydrogen–copper], [$"H"_2 + "Cu"^(2+) -> 2"H"^+ + "Cu"$], [0.34],
  [magnesium–copper], [$"Mg" + "Cu"^(2+) -> "Mg"^(2+) + "Cu"$], [2.71],
)

#shortcut-box("Balancing a redox equation in four moves")[
  *1.* Split into two half-equations. *2.* Balance the atoms other than O and H. *3.* Balance O with H₂O and H with H⁺ (or OH⁻ in alkali). *4.* Balance charge with electrons, then multiply each half-equation so the electrons match, and add. If the electrons on both sides do not cancel exactly, the equation is wrong — always check that step.
]

#trap-box("The half-equation sign trap")[
  A reduction potential of $-0.76$ V does not mean the electrode gives out $-0.76$ V when it is the *anode*. In the sum $E^degree_"cell" = E^degree_"cathode" - E^degree_"anode"$, subtract the value *with its sign*: $0.34 - (-0.76) = 1.10$ V. Candidates who drop the minus sign get $0.42$ V — a favourite wrong option.
]
