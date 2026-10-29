#import "template.typ": *

#current-chapter.update("Mock Examination 2")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 2 — Second Full-Syllabus CBT Paper]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Second Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[A second forty-question paper built from different items: the same syllabus coverage with more of the calculation questions. Sit it a week after Mock 1.]
]

#v(5pt)

+ Forty questions, forty minutes, no negative marking.

+ Expect at least eight questions that need a calculation before the choice can be made.

+ Mark only after the full forty minutes have elapsed.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[31 / 40]],
)

== Mock Examination 2 — Questions

#mcq(1, [Which statement is true of a closed system at equilibrium?], [the overall reaction has stopped], [the macroscopic properties are constant], [the reactants are finished], [temperature falls to zero])

#mcq(2, [Which statement about electrolysis of brine is correct?], [hydrogen at the anode and chlorine at the cathode], [oxygen at both electrodes], [sodium at the cathode], [chlorine at the anode and hydrogen at the cathode])

#mcq(3, [The hydrogen-ion concentration of a solution of pH 2.7 is about], [2.0 × 10⁻³ mol dm⁻³], [2.7 × 10⁻³ mol dm⁻³], [5.0 × 10⁻² mol dm⁻³], [2.0 × 10⁻² mol dm⁻³])

#mcq(4, [The concentration of a solution made up to 2.0 dm³ containing 0.50 mol of solute is], [0.50 M], [1.0 M], [0.25 M], [2.0 M])

#mcq(5, [Ethanol burns: C₂H₅OH + 3O₂ → 2CO₂ + 3H₂O, ΔH = −1367 kJ. The heat released per gram of ethanol (M_r = 46) is], [13.7 kJ], [46 kJ], [29.7 kJ], [1367 kJ])

#mcq(6, [Which of the following is NOT a factor that affects the rate of a reaction?], [concentration], [temperature], [surface area], [the enthalpy change of the reaction])

#mcq(7, [The optimum conditions in industry are a compromise because], [the yield and the rate usually need opposite conditions], [equilibrium is never reached], [catalysts are expensive], [the laws of thermodynamics are approximate])

#mcq(8, [In a copper electroplating cell, copper(II) sulphate solution is used because it], [contains no ions], [conducts electricity and supplies copper ions], [is a reducing agent], [produces oxygen])

#mcq(9, [Copper(II) sulphate solution cannot be prepared by adding copper to dilute sulphuric acid because], [copper is too reactive], [copper is below hydrogen in the reactivity series], [sulphuric acid is a weak acid], [copper sulphate is insoluble])

#mcq(10, [The concentration of a solution in g dm⁻³ is 20.0. The mass of solute in 250 cm³ is], [0.50 g], [20.0 g], [5.0 g], [80.0 g])

#mcq(11, [For the reaction C(s) + O₂(g) → CO₂(g), ΔH = −394 kJ. When 6.0 g of carbon burns, the heat released is], [39.4 kJ], [394 kJ], [2364 kJ], [197 kJ])

#mcq(12, [Which of these will speed up the reaction between hydrogen and oxygen without being used up?], [platinum], [water], [hydrogen], [oxygen])

#mcq(13, [In the reaction H₂(g) + I₂(g) ⇌ 2HI(g), adding more hydrogen], [increases the amount of iodine], [shifts the equilibrium left], [increases the amount of HI], [changes K_c])

#mcq(14, [Which of these will rust fastest?], [iron nail in dry air], [iron nail in boiled water], [iron nail painted and left in salt water], [iron nail in salt water])

#mcq(15, [The species that acts as a base in the reaction HSO₄⁻ + H₂O ⇌ SO₄²⁻ + H₃O⁺ is], [H₂O], [HSO₄⁻], [SO₄²⁻], [H₃O⁺])

#mcq(16, [Which statement explains why the solubility of most solids increases with temperature?], [dissolving is exothermic], [dissolving is usually endothermic, so heating favours it], [solids expand when heated], [water evaporates])

#mcq(17, [The energy profile of an uncatalysed reaction has a peak that represents], [ΔH], [the activation energy above the reactants], [the energy of the products], [the bond enthalpy])

#mcq(18, [A student wants to make marble chips react faster with hydrochloric acid without changing the amount of gas produced. Which change will do it?], [use a more concentrated acid of the same volume], [cool the acid], [use the same mass of powdered marble], [use larger chips])

#mcq(19, [If the volume of the reaction vessel for a gaseous equilibrium is halved, the concentrations of all gases], [double], [halve], [stay the same], [fall to zero])

#mcq(20, [Which of these is the correct half-equation for the oxidation of iron?], [Fe²⁺ + 2e⁻ → Fe], [Fe³⁺ + e⁻ → Fe²⁺], [Fe + 2e⁻ → Fe²⁺], [Fe → Fe²⁺ + 2e⁻])

#mcq(21, [The indicator most suitable for the titration of a weak acid with a strong base is], [methyl orange], [phenolphthalein], [litmus], [universal indicator])

#mcq(22, [Which piece of apparatus measures a fixed volume of solution most accurately for a standard solution?], [volumetric flask], [beaker], [conical flask], [test tube])

#mcq(23, [The enthalpy change of formation of CO₂ cannot be measured directly by burning carbon because], [carbon does not burn], [CO₂ is a gas], [the reaction is endothermic], [some CO is always formed])

#mcq(24, [Which of these would increase the rate of the reaction between a gas and a solid?], [decreasing the gas pressure], [increasing the particle size of the solid], [increasing the gas pressure and grinding the solid], [cooling the system])

#mcq(25, [The decomposition CaCO₃(s) ⇌ CaO(s) + CO₂(g) is described by K_c = [CO₂]. Increasing the pressure], [shifts it right], [shifts the equilibrium to the left], [has no effect], [increases K_c])

#mcq(26, [Zinc is a better reducing agent than copper because its standard reduction potential is], [more positive], [zero], [more negative], [larger in magnitude])

#mcq(27, [Washing prepared crystals with a little cold distilled water removes], [water of crystallisation], [the crystal lattice], [the anion], [soluble impurities from the surface])

#mcq(28, [The concentration of a solution made by dissolving 0.25 mol of solute in 250 cm³ is], [1.0 M], [0.010 M], [0.100 M], [10 M])

#mcq(29, [Which quantity has the units kJ mol⁻¹?], [enthalpy change], [heat capacity], [specific heat capacity], [temperature])

#mcq(30, [Which method is unsuitable for measuring the rate of a reaction that produces a gas?], [collecting the gas over water], [a gas syringe], [loss in mass on a balance], [measuring the volume of the reaction vessel])

#mcq(31, [Which statement explains why ammonia is liquefied and drawn off in the Haber process?], [ammonia is a catalyst], [removal of product shifts the equilibrium to the right], [it lowers the temperature], [it increases K_c])

#mcq(32, [Which substance is a stronger reducing agent: zinc (E° = −0.76 V) or copper (E° = +0.34 V)?], [copper, because its potential is positive], [both are equal], [zinc, because its potential is more negative], [neither is a reducing agent])

#mcq(33, [Which pair gives a solution that is basic?], [NH₄Cl], [NaNO₃], [CH₃COONa], [KCl])

#mcq(34, [The solubility of potassium chlorate at 40 °C is 14 g per 100 g of water. The mass of water needed to dissolve 28 g of the salt is], [100 g], [200 g], [280 g], [400 g])

#mcq(35, [The enthalpy of formation of a compound in its standard state can be measured directly when], [the compound can be made from its elements in one step], [it is a gas], [it is a fuel], [it decomposes on heating])

#mcq(36, [Which statement is true about the effect of temperature on the rate of reaction?], [the rate increases mainly because the collision frequency increases], [the rate falls because the molecules evaporate], [the rate is unchanged], [the rate increases mainly because the fraction of molecules with E ≥ E_a rises])

#mcq(37, [Which of these best illustrates a dynamic equilibrium?], [a filled swimming pool with taps on and water leaving at the same rate], [a car parked in a garage], [a balloon bursting], [a candle burning])

#mcq(38, [Which product is formed at the anode during the electrolysis of molten lead(II) bromide?], [lead], [hydrogen], [bromine], [oxygen])

#mcq(39, [0.10 M hydrochloric acid and 0.10 M ethanoic acid are compared. The hydrochloric acid], [has the higher pH], [reacts faster with magnesium], [conducts less well], [is a weaker electrolyte])

#mcq(40, [Adding salt to water raises its boiling point because the salt], [increases the vapour pressure], [reacts with the water], [increases the mass], [lowers the vapour pressure])

#pagebreak()

== Mock Examination 2 — Answer Key

#answer-key-grid(label: "✓ ANSWER KEY", (
  "B", "D", "A", "C", "C", "D", "A", "B", "B", "C",
  "D", "A", "C", "D", "A", "B", "B", "C", "A", "D",
  "B", "A", "D", "C", "B", "C", "D", "A", "A", "D",
  "B", "C", "C", "B", "A", "D", "A", "C", "B", "D",
))

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READ YOUR SCORE]
  #v(3pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–40*], [Secure. Sit the next paper under the same conditions within a week.],
    [*28–33*], [Developing. Group your misses by chapter in the Question Map and revise the heaviest one.],
    [*0–27*], [Revise before re-testing. Reread the chapter and redo its drill first.],
  )
]

== Mock Examination 2 — Question Map

Which chapter each question came from, grouped so that a column of misses in your script becomes a revision list. Tick every question you got wrong; the chapter with the longest tick list is the one to revise tonight, before you re-sit the paper.

#table(
  columns: (0.42fr, 1.75fr, 2.55fr, 0.5fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.]),
  [1], [Acids, Bases and Salts], [3, 9, 15, 21, 27, 33, 39], [7],
  [2], [Solutions and Solubility], [4, 10, 16, 22, 28, 34, 40], [7],
  [3], [Chemical Energetics], [5, 11, 17, 23, 29, 35], [6],
  [4], [Rates of Reaction], [6, 12, 18, 24, 30, 36], [6],
  [5], [Chemical Equilibrium], [1, 7, 13, 19, 25, 31, 37], [7],
  [6], [Redox and Electrochemistry], [2, 8, 14, 20, 26, 32, 38], [7],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 2 — Complete Solutions
  #sol-item(1, "B", dense: true, pad: 7.0pt)[
    *Chapter 5.* Concentrations, pressure and colour stay constant even though both reactions continue.
  ]

  #sol-item(2, "D", dense: true, pad: 7.0pt)[
    *Chapter 6.* Chloride is oxidised at the anode to chlorine, and water is reduced at the cathode to hydrogen.
  ]
  ]

  #sol-item(3, "A", dense: true, pad: 7.0pt)[
    *Chapter 1.* 10⁻²·⁷ = 2.0 × 10⁻³ mol dm⁻³.
  ]

  #sol-item(4, "C", dense: true, pad: 7.0pt)[
    *Chapter 2.* c = 0.50 ÷ 2.0 = 0.25 M.
  ]

  #sol-item(5, "C", dense: true, pad: 7.0pt)[
    *Chapter 3.* 1367 ÷ 46 = 29.7 kJ per gram.
  ]

  #sol-item(6, "D", dense: true, pad: 7.0pt)[
    *Chapter 4.* ΔH controls the energy balance, not how quickly the reaction reaches the products.
  ]

  #sol-item(7, "A", dense: true, pad: 7.0pt)[
    *Chapter 5.* A low temperature gives a high yield but a very slow rate, so a middle temperature is chosen.
  ]

  #sol-item(8, "B", dense: true, pad: 7.0pt)[
    *Chapter 6.* The electrolyte supplies the copper ions that are reduced at the cathode.
  ]

  #sol-item(9, "B", dense: true, pad: 7.0pt)[
    *Chapter 1.* Copper does not displace hydrogen from a dilute acid, so the oxide or carbonate is used instead.
  ]

  #sol-item(10, "C", dense: true, pad: 7.0pt)[
    *Chapter 2.* 20.0 × 0.250 = 5.0 g.
  ]

  #sol-item(11, "D", dense: true, pad: 7.0pt)[
    *Chapter 3.* 6.0 g is 0.50 mol, so the heat is 0.50 × 394 = 197 kJ.
  ]

  #sol-item(12, "A", dense: true, pad: 7.0pt)[
    *Chapter 4.* Platinum catalyses the combination of hydrogen and oxygen, which is why a catalytic converter and a platinum gauze work.
  ]

  #sol-item(13, "C", dense: true, pad: 7.0pt)[
    *Chapter 5.* More hydrogen drives the forward reaction, producing more HI at the expense of iodine.
  ]

  #sol-item(14, "D", dense: true, pad: 7.0pt)[
    *Chapter 6.* Salt water provides both water and a conducting electrolyte, with plenty of dissolved oxygen.
  ]

  #sol-item(15, "A", dense: true, pad: 7.0pt)[
    *Chapter 1.* Water accepts a proton from HSO₄⁻ to become H₃O⁺, so water is the base in the forward reaction.
  ]

  #sol-item(16, "B", dense: true, pad: 7.0pt)[
    *Chapter 2.* For most solids the lattice energy is larger than the hydration energy, so dissolving is endothermic and heating shifts the equilibrium towards dissolution.
  ]

  #sol-item(17, "B", dense: true, pad: 7.0pt)[
    *Chapter 3.* The height of the peak above the reactant line is the activation energy.
  ]

  #sol-item(18, "C", dense: true, pad: 7.0pt)[
    *Chapter 4.* The same mass of marble gives the same amount of gas, and powdering it increases the surface area — so the gas is produced faster.
  ]

  #sol-item(19, "A", dense: true, pad: 7.0pt)[
    *Chapter 5.* Halving the volume doubles every concentration at that instant — the position then adjusts.
  ]

  #sol-item(20, "D", dense: true, pad: 7.0pt)[
    *Chapter 6.* Oxidation is loss of electrons, shown with the electrons on the right.
  ]

  #sol-item(21, "B", dense: true, pad: 7.0pt)[
    *Chapter 1.* The equivalence point of a weak acid–strong base titration is alkaline, and phenolphthalein changes colour in that range.
  ]

  #sol-item(22, "A", dense: true, pad: 7.0pt)[
    *Chapter 2.* A volumetric flask is calibrated to contain one exact volume at a stated temperature.
  ]

  #sol-item(23, "D", dense: true, pad: 7.0pt)[
    *Chapter 3.* Incomplete combustion produces carbon monoxide, so Hess's law is used with the two combustion values.
  ]

  #sol-item(24, "C", dense: true, pad: 7.0pt)[
    *Chapter 4.* Higher pressure and a smaller particle size both increase the rate.
  ]

  #sol-item(25, "B", dense: true, pad: 7.0pt)[
    *Chapter 5.* Higher pressure is opposed by reducing the gas, so carbon dioxide is reabsorbed and limestone reforms.
  ]

  #sol-item(26, "C", dense: true, pad: 7.0pt)[
    *Chapter 6.* A more negative potential means the metal is more easily oxidised, hence a stronger reducing agent.
  ]

  #sol-item(27, "D", dense: true, pad: 7.0pt)[
    *Chapter 1.* A small volume of cold water dissolves surface impurities without dissolving a significant mass of the crystals.
  ]

  #sol-item(28, "A", dense: true, pad: 7.0pt)[
    *Chapter 2.* 250 cm³ = 0.250 dm³, so c = 0.25 ÷ 0.250 = 1.0 M.
  ]

  #sol-item(29, "A", dense: true, pad: 7.0pt)[
    *Chapter 3.* Enthalpy change per mole carries the units kJ mol⁻¹.
  ]

  #sol-item(30, "D", dense: true, pad: 7.0pt)[
    *Chapter 4.* The vessel volume says nothing about the amount of gas produced.
  ]

  #sol-item(31, "B", dense: true, pad: 7.0pt)[
    *Chapter 5.* Continuously removing the product keeps the forward reaction favoured, improving the conversion.
  ]

  #sol-item(32, "C", dense: true, pad: 7.0pt)[
    *Chapter 6.* The more negative the reduction potential, the greater the tendency to be oxidised, so zinc is the stronger reducing agent.
  ]

  #sol-item(33, "C", dense: true, pad: 7.0pt)[
    *Chapter 1.* Sodium ethanoate is the salt of a weak acid and a strong base, so the ethanoate ion hydrolyses and leaves OH⁻.
  ]

  #sol-item(34, "B", dense: true, pad: 7.0pt)[
    *Chapter 2.* Doubling the salt doubles the water: 28 g needs 200 g.
  ]

  #sol-item(35, "A", dense: true, pad: 7.0pt)[
    *Chapter 3.* If the elements combine directly and cleanly, the heat change is the formation enthalpy.
  ]

  #sol-item(36, "D", dense: true, pad: 7.0pt)[
    *Chapter 4.* Collisions become only slightly more frequent, but the fraction of energetic molecules increases markedly.
  ]

  #sol-item(37, "A", dense: true, pad: 7.0pt)[
    *Chapter 5.* Water flows in and out equally, so the level — like the concentrations at equilibrium — stays constant.
  ]

  #sol-item(38, "C", dense: true, pad: 7.0pt)[
    *Chapter 6.* Bromide ions are oxidised to bromine vapour at the anode; lead forms at the cathode.
  ]

  #sol-item(39, "B", dense: true, pad: 7.0pt)[
    *Chapter 1.* Complete ionisation gives a higher hydrogen-ion concentration, which means a faster reaction with magnesium and better conduction.
  ]

  #sol-item(40, "D", dense: true, pad: 7.0pt)[
    *Chapter 2.* A lower vapour pressure means a higher temperature is needed before the vapour pressure equals atmospheric pressure.
  ]

]

