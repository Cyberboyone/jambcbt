#import "template.typ": *

#current-chapter.update("Appendix I: Structured Questions with Model Answers")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Structured Questions with Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Structured Questions with Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twelve questions in the style of a theory paper, with an answer written the way a marker expects: the working shown, the unit attached, and the reason given before the equation.]
]

#v(4pt)

#let sq(num, marks, question, answer) = {
  block(width: 100%, breakable: false, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 11pt)[
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 8pt,
      align: (left + horizon, left + horizon, right + horizon),
      box(fill: jamb-navy, radius: 4pt, inset: (x: 7pt, y: 2.5pt), text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Q#num]),
      text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[Structured question #num],
      box(fill: jamb-bright, radius: 4pt, inset: (x: 7pt, y: 2.5pt), text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[#marks marks]),
    )
    #v(4pt)
    #question
  ]
  v(3pt, weak: true)
  block(width: 100%, breakable: false, fill: white, stroke: (left: 3pt + jamb-green, rest: 0.6pt + jamb-border), radius: (right: 6pt), inset: 11pt)[
    #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MODEL ANSWER]
    #v(3pt)
    #set text(size: 9.8pt)
    #answer
  ]
  v(8pt, weak: true)
}

#sq(1, 6, [
  A hydrocarbon contains 85.7 % carbon and 14.3 % hydrogen by mass and has a relative molecular mass of 42.0. (a) Calculate its empirical formula. (b) Deduce its molecular formula. (c) Name two possible structures and state the type of isomerism between them.
], [
  *(a)* In 100 g, carbon = 85.7/12 = 7.14 mol and hydrogen = 14.3/1 = 14.3 mol. Dividing by 7.14 gives C : H = 1 : 2, so the empirical formula is CH₂.

  *(b)* The empirical mass is 14.0, and 42.0/14.0 = 3, so the molecular formula is C₃H₆.

  *(c)* Propene, CH₂=CHCH₃, and cyclopropane, a three-membered ring. They have the same molecular formula and different structures, so they are structural isomers — here, a chain isomer against a ring isomer.
])

#sq(2, 5, [
  Hexadecane, C₁₆H₃₄, is cracked to give octane and an alkene. (a) Write the equation. (b) Explain why the alkene is the more valuable product. (c) State the condition used.
], [
  *(a)* C₁₆H₃₄ → C₈H₁₈ + C₈H₁₆. Check the atoms: 16 carbons and 34 hydrogens on each side.

  *(b)* The alkene, C₈H₁₆, carries a double bond, so it can be polymerised or hydrated; it is the feedstock of the plastics and alcohol industries, whereas the alkane is only a fuel. The refinery also wants more light fraction than the column produces, and cracking supplies it.

  *(c)* About 500 °C, over a catalyst (silica–alumina), or at high pressure without one.
])

#sq(3, 6, [
  Three colourless liquids are hexane, hex-1-ene and ethanol. Describe one chemical test that distinguishes all three, stating what you would see in each case.
], [
  Two tests are needed, because no single reagent separates all three.

  *Sodium.* Add a small piece to each liquid. Ethanol gives a steady effervescence of hydrogen, because the O–H hydrogen is replaced; hexane and hex-1-ene do not react, because they carry no –OH group.

  *Bromine water.* Add it to the two that did nothing. Hex-1-ene decolourises it at once — the bromine adds across the C=C bond to give a colourless dibromo compound — while hexane leaves the orange colour unchanged in the dark, because it is saturated.

  A complete answer names each reagent, the observation it gives for each liquid, and the reason: an –OH group, a double bond, or neither.
])

#sq(4, 7, [
  180 g of glucose is fermented with yeast. (a) Write the equation. (b) Calculate the mass of ethanol that could be obtained at 100 % conversion. (c) Explain why the vessel is closed. (d) State how the ethanol is concentrated and why the concentration from fermentation alone is limited.
], [
  *(a)* C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂.

  *(b)* n(glucose) = 180/180 = 1.00 mol, so 2.00 mol of ethanol, and m = 2.00 × 46 = 92.0 g.

  *(c)* Air would let bacteria oxidise the ethanol to ethanoic acid, and the ethanol vapour would escape; the closed vessel keeps the product in and the oxygen out.

  *(d)* Fractional distillation, because ethanol boils at 78 °C and water at 100 °C. Fermentation stops at about 14 % ethanol because above that concentration the ethanol denatures the yeast enzymes and kills the yeast.
])

#sq(5, 6, [
  Three alcohols are propan-1-ol, propan-2-ol and 2-methylpropan-2-ol. (a) Classify each. (b) State the product of oxidation of each with acidified potassium dichromate(VI), and the observation for the third.
], [
  *(a)* Propan-1-ol is primary; propan-2-ol is secondary; 2-methylpropan-2-ol is tertiary.

  *(b)* Propan-1-ol gives propanal, and with excess reagent propanoic acid. Propan-2-ol gives propanone; it cannot be oxidised further because the carbinol carbon has no hydrogen left. 2-Methylpropan-2-ol does not react, so the orange colour of the dichromate stays unchanged — the negative observation is the identification.
])

#sq(6, 6, [
  30.0 g of ethanoic acid is warmed with excess ethanol and a few drops of concentrated sulphuric acid. (a) Name the product. (b) Calculate the maximum mass obtainable. (c) State the purpose of the sulphuric acid. (d) Explain why the yield is usually below the maximum.
], [
  *(a)* Ethyl ethanoate, CH₃COOC₂H₅.

  *(b)* n(acid) = 30.0/60.0 = 0.500 mol, and the reaction is one to one, so 0.500 mol of ester: m = 0.500 × 88.0 = 44.0 g.

  *(c)* It catalyses the reaction and absorbs the water formed, which shifts the equilibrium to the right.

  *(d)* The reaction is reversible, so it reaches an equilibrium before all the acid has reacted; some ester is also lost during the work-up.
])

#sq(7, 7, [
  A triglyceride may be written C₃H₅(C₁₇H₃₅COO)₃. (a) Name the products of its reaction with boiling sodium hydroxide. (b) Write the equation. (c) Explain why soap forms a scum in hard water, and why a detergent does not.
], [
  *(a)* Sodium stearate — the soap — and glycerol.

  *(b)* C₃H₅(C₁₇H₃₅COO)₃ + 3NaOH → 3C₁₇H₃₅COONa + C₃H₅(OH)₃.

  *(c)* Hard water contains Ca²⁺ and Mg²⁺. The calcium salt of a fatty acid is insoluble, so it precipitates as scum: 2C₁₇H₃₅COONa + Ca²⁺ → (C₁₇H₃₅COO)₂Ca + 2Na⁺. A detergent has a sulphonate head, and its calcium salt is soluble, so it lathers without forming a scum.
])

#sq(8, 7, [
  (a) Name the polymer formed from chloroethene and draw its repeat unit. (b) State the type of polymerisation. (c) A sample has a relative molecular mass of 62 500; calculate the degree of polymerisation. (d) State one environmental problem with the polymer and one method of control.
], [
  *(a)* Poly(chloroethene), PVC. The repeat unit is –[CH₂–CHCl]–.

  *(b)* Addition polymerisation: the double bond opens and the units join with nothing eliminated.

  *(c)* The repeat unit C₂H₃Cl has relative mass 62.5, so n = 62 500/62.5 = 1 000.

  *(d)* It does not biodegrade and it releases hydrogen chloride when burned. Control: recycling, or controlled incineration with scrubbing of the flue gas.
])

#sq(9, 5, [
  A food sample gives a violet colour with Biuret reagent, a blue-black colour with iodine, and a brick-red precipitate with Benedict's solution after boiling. (a) State what each result shows. (b) The sample contains 0.80 g of nitrogen in 25.0 g; calculate the percentage of protein.
], [
  *(a)* Violet with Biuret: a protein is present. Blue-black with iodine: starch is present. Brick-red with Benedict's: a reducing sugar is present. The three tests are independent and the sample contains all three.

  *(b)* Protein contains about 16 % nitrogen, so m(protein) = 0.80/0.16 = 5.0 g, and the percentage is 5.0/25.0 × 100 = 20 %.
])

#sq(10, 7, [
  25.0 cm³ of a vinegar solution is titrated with 0.100 mol dm⁻³ sodium hydroxide; the mean of the concordant titres is 21.00 cm³. (a) Calculate the concentration of ethanoic acid in mol dm⁻³. (b) Express it in g dm⁻³. (c) State why the first titration is not used in the mean.
], [
  *(a)* n(NaOH) = 0.100 × 21.00/1000 = 2.10 × 10⁻³ mol. The acid and alkali react one to one, so n(acid) = 2.10 × 10⁻³ mol in 25.0 cm³, and c = 2.10 × 10⁻³ × 1000/25.0 = 0.0840 mol dm⁻³.

  *(b)* M(CH₃COOH) = 60.0, so 0.0840 × 60.0 = 5.04 g dm⁻³, which is about 5 % — a table vinegar.

  *(c)* The first is a rough titration, run quickly to find the end point; it overshoots, so including it would make the mean too high.
])

#sq(11, 5, [
  In a chromatogram, a mixture of three dyes gave spots whose centres were 1.2 cm, 3.6 cm and 5.4 cm from the origin, while the solvent front moved 6.0 cm. (a) Calculate the Rf of each dye. (b) Explain why Rf is a constant for a substance in a given solvent.
], [
  *(a)* Rf = 1.2/6.0 = 0.20; 3.6/6.0 = 0.60; 5.4/6.0 = 0.90.

  *(b)* Each dye partitions between the stationary phase (the water held on the paper) and the moving solvent in a fixed ratio at a fixed temperature, so the fraction of the solvent's distance it travels is fixed. A different solvent or a different temperature gives a different Rf, which is why the solvent must be stated with the value.
])

#sq(12, 8, [
  Describe how you would prepare pure, dry crystals of copper(II) sulphate from copper(II) oxide and dilute sulphuric acid, and how you would show that the product is pure.
], [
  + Warm 50 cm³ of dilute sulphuric acid in a beaker and add copper(II) oxide a little at a time, stirring, until no more dissolves and some black solid remains.
  + Filter while hot to remove the excess copper(II) oxide.
  + Evaporate the filtrate in an evaporating dish to about half its volume, then leave it to cool slowly so that crystals form.
  + Filter the crystals, press them between filter papers, and dry them in a desiccator or in air — not over a flame, which would drive off the water of crystallisation.
  + Check purity by measuring the melting point: a pure sample melts sharply at one temperature, an impure one over a range. A chromatogram should give a single spot.
  + Calculate the yield: the theoretical mass comes from the moles of copper(II) oxide used, and a yield above 100 % would show that the crystals were still wet.
])

#sq(13, 7, [
  A 5.00 g sample of hydrated copper(II) sulphate, CuSO₄·xH₂O, is heated to constant mass. The residue weighs 3.20 g. (a) Calculate the moles of anhydrous copper(II) sulphate and of water removed. (b) Deduce the value of x. (c) State the colour change. (d) Explain why the heating is continued to constant mass.
], [
  *(a)* M(CuSO₄) = 63.5 + 32.0 + 4(16.0) = 159.5, so n(salt) = 3.20/159.5 = 0.0201 mol. The water lost is 5.00 − 3.20 = 1.80 g, so n(water) = 1.80/18.0 = 0.100 mol.

  *(b)* x = 0.100/0.0201 = 4.98, which is 5 to the nearest whole number: CuSO₄·5H₂O.

  *(c)* Blue crystals turn to a white powder; adding water back restores the blue.

  *(d)* Water may be trapped under the crust of the solid, so the mass would be too high and x too low. Heating, cooling in a desiccator and weighing again until two successive masses agree shows that all the water has gone — and cooling in a desiccator prevents the anhydrous salt from taking water back from the air before it is weighed.
])

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[How a structured answer is marked]
  #v(3pt)
  #set text(size: 9.7pt)
  Every mark in this appendix is attached to a step, not to a sentence. The calculation mark is for the working, the unit and the number of figures; the equation mark is for the formulae and the balancing; the explanation mark is for the word *because*. A correct final answer with no working usually earns one mark out of three, and a wrong final answer with correct working usually earns two. Write the steps in the order the question asks them, and never leave a part blank: a partial answer to part (c) cannot damage parts (a) and (b).
]
