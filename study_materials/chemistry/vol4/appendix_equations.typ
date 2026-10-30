#import "template.typ": *

#current-chapter.update("Appendix H: Reagents, Conditions and Equations")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Reagents, Conditions and Equations]]

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
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Reagents, Conditions and Equations]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every equation in the volume, with the reagent on the left and the condition printed beside it. Cover the equation and read across from the condition; if you can produce the product, the mark is yours.]
]

#v(4pt)

== H.1 The Alkanes

#table(
  columns: (1.45fr, 1.15fr, 2.05fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [complete combustion], [excess air], [CH₄ + 2O₂ → CO₂ + 2H₂O],
  [general combustion], [excess air], [CₙH₂ₙ₊₂ + (3n+1)/2 O₂ \ → n CO₂ + (n+1) H₂O],
  [incomplete combustion], [limited air], [2CH₄ + 3O₂ → 2CO + 4H₂O],
  [chlorination, first step], [UV light, or 300 °C], [CH₄ + Cl₂ → CH₃Cl + HCl],
  [chlorination, complete], [excess Cl₂, UV], [CH₄ + 4Cl₂ → CCl₄ + 4HCl],
  [cracking], [about 500 °C, catalyst], [C₁₆H₃₄ → C₈H₁₈ + C₈H₁₆],
  [cracking, second example], [about 500 °C], [C₁₀H₂₂ → C₅H₁₂ + C₅H₁₀],
)

== H.2 The Alkenes and Alkynes

#table(
  columns: (1.45fr, 1.15fr, 2.05fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [hydrogenation], [H₂, Ni, 150 °C], [C₂H₄ + H₂ → C₂H₆],
  [bromination], [Br₂ in CCl₄, dark], [C₂H₄ + Br₂ → C₂H₄Br₂],
  [hydrohalogenation], [HCl (g)], [C₂H₄ + HCl → C₂H₅Cl],
  [hydration], [steam, H₃PO₄, 300 °C], [C₂H₄ + H₂O → C₂H₅OH],
  [chlorination], [Cl₂], [C₂H₄ + Cl₂ → C₂H₄Cl₂],
  [oxidation to a diol], [cold dilute KMnO₄, acidified], [C₂H₄ + [O] + H₂O → C₂H₄(OH)₂],
  [polymerisation], [heat, pressure, catalyst], [n C₂H₄ → (C₂H₄)ₙ],
  [dehydration of ethanol], [conc. H₂SO₄, 170 °C], [C₂H₅OH → C₂H₄ + H₂O],
  [preparation of ethyne], [water on calcium carbide], [CaC₂ + 2H₂O → C₂H₂ + Ca(OH)₂],
  [combustion of ethyne], [oxygen], [2C₂H₂ + 5O₂ → 4CO₂ + 2H₂O],
  [bromination of ethyne], [excess Br₂], [C₂H₂ + 2Br₂ → C₂H₂Br₄],
)

== H.3 The Alcohols and Acids

#table(
  columns: (1.45fr, 1.15fr, 2.05fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [fermentation], [yeast, 25–35 °C, no air], [C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂],
  [hydration of ethene], [steam, H₃PO₄, 300 °C], [C₂H₄ + H₂O → C₂H₅OH],
  [with sodium], [room temperature], [2C₂H₅OH + 2Na → 2C₂H₅ONa + H₂],
  [with PCl₅], [room temperature], [C₂H₅OH + PCl₅ → C₂H₅Cl + POCl₃ + HCl],
  [dehydration], [conc. H₂SO₄, 170 °C], [C₂H₅OH → C₂H₄ + H₂O],
  [combustion], [excess air], [C₂H₅OH + 3O₂ → 2CO₂ + 3H₂O],
  [oxidation to ethanal], [dichromate, warm, distil], [C₂H₅OH + [O] → CH₃CHO + H₂O],
  [oxidation to the acid], [dichromate, reflux], [CH₃CHO + [O] → CH₃COOH],
  [oxidation of a secondary alcohol], [dichromate, warm], [CH₃CHOHCH₃ + [O] → CH₃COCH₃ + H₂O],
  [acid + carbonate], [dilute, room temperature], [2CH₃COOH + Na₂CO₃ → 2CH₃COONa + H₂O + CO₂],
  [acid + metal], [dilute, room temperature], [2CH₃COOH + Mg → (CH₃COO)₂Mg + H₂],
  [acid + base], [dilute, room temperature], [CH₃COOH + NaOH → CH₃COONa + H₂O],
  [acid + alcohol], [conc. H₂SO₄, warm], [CH₃COOH + C₂H₅OH ⇌ CH₃COOC₂H₅ + H₂O],
)

== H.4 The Fats, Soaps and Polymers

#table(
  columns: (1.45fr, 1.15fr, 2.05fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
  ),
  [formation of a fat], [esterification], [C₃H₅(OH)₃ + 3RCOOH → C₃H₅(OOCR)₃ + 3H₂O],
  [hydrogenation of an oil], [H₂, Ni, 200 °C], [C₁₇H₃₃COOH + H₂ → C₁₇H₃₅COOH],
  [saponification], [NaOH (aq), boil], [C₃H₅(OOCR)₃ + 3NaOH → 3RCOONa + C₃H₅(OH)₃],
  [scum formation], [hard water], [2RCOONa + Ca²⁺ → (RCOO)₂Ca + 2Na⁺],
  [nylon-6,6], [condensation, heat], [n H₂N(CH₂)₆NH₂ + n HOOC(CH₂)₄COOH → polymer + 2n H₂O],
  [terylene], [condensation, heat], [n HO(CH₂)₂OH + n HOOC–C₆H₄–COOH → polymer + 2n H₂O],
  [protein formation], [condensation], [n H₂N–CHR–COOH → polypeptide + n H₂O],
  [starch hydrolysis], [dilute acid, boil], [(C₆H₁₀O₅)ₙ + nH₂O → nC₆H₁₂O₆],
  [sucrose hydrolysis], [dilute acid, boil], [C₁₂H₂₂O₁₁ + H₂O → C₆H₁₂O₆ + C₆H₁₂O₆],
)

== H.5 The Observations

#table(
  columns: (1.25fr, 1.5fr, 1.95fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Change],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What is happening],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation or species],
  ),
  [orange bromine water goes colourless], [addition across C=C], [Br₂ + C₂H₄ → C₂H₄Br₂],
  [purple KMnO₄ goes colourless], [the alkene is oxidised to a diol], [MnO₄⁻ → Mn²⁺],
  [orange dichromate goes green], [an alcohol is oxidised], [Cr₂O₇²⁻ → Cr³⁺],
  [a sweet smell appears], [esterification], [RCOOH + R′OH → RCOOR′ + H₂O],
  [white fumes with PCl₅], [the –OH is replaced], [ROH + PCl₅ → RCl + POCl₃ + HCl],
  [brick-red precipitate with Benedict's], [a reducing sugar reduces Cu²⁺], [Cu²⁺ → Cu₂O],
  [violet with Biuret], [peptide bonds bind Cu²⁺], [a copper–peptide complex],
  [blue-black with iodine], [iodine trapped in the amylose coil], [an iodine–starch complex],
  [silver mirror with Tollens' reagent], [an aldehyde is oxidised], [Ag⁺ → Ag],
  [white precipitate with BaCl₂ and acid], [barium sulphate], [Ba²⁺ + SO₄²⁻ → BaSO₄],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[The six equations that carry the most marks]
  #v(3pt)
  #set text(size: 9.7pt)
  + *Chlorination:* CH₄ + Cl₂ → CH₃Cl + HCl, with UV light — substitution, not addition.
  + *Addition:* C₂H₄ + Br₂ → C₂H₄Br₂ — the test for unsaturation, and the reason bromine water goes colourless.
  + *Dehydration:* C₂H₅OH → C₂H₄ + H₂O, with concentrated H₂SO₄ at 170 °C.
  + *Oxidation:* C₂H₅OH + 2[O] → CH₃COOH + H₂O, with acidified dichromate under reflux.
  + *Esterification:* CH₃COOH + C₂H₅OH ⇌ CH₃COOC₂H₅ + H₂O, with a little concentrated H₂SO₄.
  + *Saponification:* C₃H₅(OOCR)₃ + 3NaOH → 3RCOONa + C₃H₅(OH)₃, by boiling with alkali.
]
