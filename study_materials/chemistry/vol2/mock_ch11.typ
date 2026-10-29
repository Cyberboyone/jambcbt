#import "template.typ": *

#current-chapter.update("Mock Examination 1")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Mock Examination 1 — Full-Syllabus CBT Paper]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[MOCK EXAMINATION 1]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full-Syllabus CBT Paper]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the format, the difficulty spread and the topic mix of a real UTME Chemistry paper on acids and salts, solutions, energetics, rates, equilibrium and redox.]
]

#v(5pt)

+ Attempt *all forty* questions in *forty minutes*. There is no negative marking, so never leave a blank.

+ One minute a question. If a question takes longer than ninety seconds, flag it and return in the final pass.

+ Mark yourself against the key only when the forty minutes have elapsed.

+ Record every miss in the Question Map — it converts a score into a revision plan.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[QUESTIONS] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TIME] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[40 min]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[MARKING] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[No negatives]],
  block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 8pt)[#text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: jamb-green)[TARGET] #v(1pt) #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[30 / 40]],
)

== Mock Examination 1 — Questions

#mcq(1, [The pH of a strong base of concentration 0.050 M is about], [1.3], [13.0], [12.0], [12.7])

#mcq(2, [A solution of sodium chloride freezes], [at exactly 0 °C], [above 0 °C], [below 0 °C], [at 100 °C])

#mcq(3, [Hess's law is a consequence of the law of conservation of], [mass], [energy], [momentum], [charge])

#mcq(4, [A reaction is described as explosive when], [its rate increases very rapidly once started], [it has a very high activation energy], [it is endothermic], [it produces a gas])

#mcq(5, [For an endothermic equilibrium, raising the temperature], [decreases K_c], [leaves K_c unchanged], [has no effect on the mixture], [increases K_c])

#mcq(6, [The oxidation number of iron in Fe₂O₃ is], [+2], [+3], [+6], [−3])

#mcq(7, [24.0 cm³ of 0.100 M hydrochloric acid neutralises 20.0 cm³ of sodium hydroxide. The concentration of the alkali is], [0.083 M], [0.240 M], [0.120 M], [0.100 M])

#mcq(8, [Which statement about the dissolving of ammonium nitrate is correct?], [it is endothermic, so the solution cools], [it is exothermic, so the solution warms], [it produces a gas], [it produces a precipitate])

#mcq(9, [For the reaction N₂ + 3H₂ → 2NH₃, ΔH = −92 kJ. The enthalpy change per mole of ammonia is], [−92 kJ mol⁻¹], [−184 kJ mol⁻¹], [+46 kJ mol⁻¹], [−46 kJ mol⁻¹])

#mcq(10, [When a reaction reaches completion, the rate of the reaction is], [maximum], [zero], [constant], [negative])

#mcq(11, [In the Haber process, ammonia is liquefied and removed from the equilibrium mixture. This], [lowers K_c], [stops the reaction], [pulls the equilibrium further to the right], [raises K_c])

#mcq(12, [In the reaction MnO₄⁻ + 8H⁺ + 5Fe²⁺ → Mn²⁺ + 5Fe³⁺ + 4H₂O, the oxidising agent is], [MnO₄⁻], [Fe²⁺], [H⁺], [H₂O])

#mcq(13, [The conjugate acid of ammonia is], [NH₂⁻], [N₂H₄], [H₃O⁺], [NH₄⁺])

#mcq(14, [The concentration of a solution is 2.0 g dm⁻³. Expressed in mol dm⁻³ for a solute of molar mass 40, this is], [0.050 M], [0.020 M], [0.20 M], [0.50 M])

#mcq(15, [For an exothermic reaction with ΔH = −40 kJ mol⁻¹ and E_a(forward) = 60 kJ mol⁻¹, E_a(reverse) is], [60 kJ mol⁻¹], [100 kJ mol⁻¹], [20 kJ mol⁻¹], [40 kJ mol⁻¹])

#mcq(16, [Which of these will produce the same amount of gas but more quickly?], [coarse chips in warm acid], [coarse chips in cold acid], [powder in warm acid], [powder in cold acid])

#mcq(17, [Which statement about the position of equilibrium is correct?], [it can be changed by a catalyst], [it can be changed by removing a product], [it is fixed for all conditions], [it changes with time in a closed system])

#mcq(18, [Which gas is produced at the anode when acidified water is electrolysed?], [oxygen], [hydrogen], [chlorine], [hydrogen and oxygen])

#mcq(19, [A student titrates 25.0 cm³ of sodium hydroxide with 0.100 M hydrochloric acid and obtains 23.60, 23.55 and 23.65 cm³. The mean titre to use is], [23.55 cm³], [23.65 cm³], [23.60 cm³], [23.70 cm³])

#mcq(20, [Which mixture cannot be separated by filtration?], [sand and water], [chalk and water], [precipitate and solution], [salt and water])

#mcq(21, [Which statement about standard enthalpy of formation is true?], [it can be positive or negative], [it is always negative], [it is always zero], [it is always positive])

#mcq(22, [The graph of mass of product against time for a fast reaction is], [a straight line to the end], [steep at first and flattens early], [flat at first], [a horizontal line])

#mcq(23, [A saturated solution of silver chloride with excess solid present is an equilibrium in which], [no precipitation occurs], [the solid is completely dissolved], [the rate of dissolving equals the rate of precipitation], [K_c has units of mol dm⁻³ only])

#mcq(24, [Which oxide is formed when iron rusts?], [FeO], [Fe₃O₄ only], [iron(II) sulphate], [hydrated iron(III) oxide])

#mcq(25, [A solution of pH 1.3 has a hydrogen-ion concentration closest to], [0.02 mol dm⁻³], [0.13 mol dm⁻³], [0.05 mol dm⁻³], [0.20 mol dm⁻³])

#mcq(26, [Which observation shows that blue copper(II) sulphate has become anhydrous?], [it dissolves in water], [it turns green], [it melts], [it turns white])

#mcq(27, [Bond enthalpy values are always quoted for], [bonds in the gaseous state being broken], [bonds being formed], [bonds in solution], [solid bonds])

#mcq(28, [Which graph would show the effect of concentration on the initial rate of a first order reaction?], [a horizontal line], [a straight line through the origin], [a falling curve], [a curve with a peak])

#mcq(29, [In a reaction A + B ⇌ C + D, the value of K_c is 1.0 at a certain temperature. At equilibrium, the], [products cannot form], [reaction has stopped], [concentrations of reactants and products are equal], [yield is zero])

#mcq(30, [In the electrolysis of copper(II) sulphate with inert electrodes, the anode reaction is], [2H₂O → O₂ + 4H⁺ + 4e⁻], [Cu²⁺ + 2e⁻ → Cu], [2H⁺ + 2e⁻ → H₂], [Cu → Cu²⁺ + 2e⁻])

#mcq(31, [An aqueous solution of potassium nitrate is neutral because], [it contains no ions], [nitrate is a weak base], [potassium is a weak acid], [both of its ions are spectators])

#mcq(32, [1.00 g of a hydrate of molar mass 250 loses 0.36 g of water on heating. The number of moles of water per mole of salt is], [3], [5], [4], [6])

#mcq(33, [Which experimental result would suggest heat loss in calorimetry?], [the calculated ΔH is smaller in magnitude than the accepted value], [the calculated ΔH is larger in magnitude], [the mass is wrong], [the reading is unstable])

#mcq(34, [In an experiment measuring the rate of a reaction, the temperature must be kept constant because], [the reaction would stop], [the mass would change], [the rate would change and the measurement would not be valid], [the products would be different])

#mcq(35, [In that contact process equilibrium, K_c = 3.0 × 10⁴ at 450 °C. The mixture at equilibrium contains], [more reactant than product], [equal amounts], [no product], [more product than reactant])

#mcq(36, [The mass deposited at a cathode is proportional to the], [volume of the electrolyte], [quantity of electricity passed], [size of the anode], [colour of the solution])

#mcq(37, [Which pair of solutions produces a precipitate that dissolves in excess ammonia?], [BaCl₂ and Na₂SO₄], [Pb(NO₃)₂ and KI], [CuSO₄ and NaOH], [AgNO₃ and NaCl])

#mcq(38, [When a saturated solution is cooled and crystals form, the remaining solution is], [unsaturated], [still saturated], [supersaturated], [pure solvent])

#mcq(39, [If bonds formed release more energy than bonds broken, the reaction is], [exothermic], [endothermic], [neutral], [impossible])

#mcq(40, [Which statement best explains why food is kept in a refrigerator?], [low temperature stops all reactions], [cold kills all bacteria], [low temperature slows the rate of decomposition and bacterial action], [cold inactivates oxygen])

#pagebreak()

== Mock Examination 1 — Answer Key

#answer-key-grid(label: "✓ ANSWER KEY", (
  "D", "C", "B", "A", "D", "B", "C", "A", "D", "B",
  "C", "A", "D", "A", "B", "C", "B", "A", "C", "D",
  "A", "B", "C", "D", "C", "D", "A", "B", "C", "A",
  "D", "B", "A", "C", "D", "B", "D", "B", "A", "C",
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

== Mock Examination 1 — Question Map

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
  [1], [Acids, Bases and Salts], [1, 7, 13, 19, 25, 31, 37], [7],
  [2], [Solutions and Solubility], [2, 8, 14, 20, 26, 32, 38], [7],
  [3], [Chemical Energetics], [3, 9, 15, 21, 27, 33, 39], [7],
  [4], [Rates of Reaction], [4, 10, 16, 22, 28, 34, 40], [7],
  [5], [Chemical Equilibrium], [5, 11, 17, 23, 29, 35], [6],
  [6], [Redox and Electrochemistry], [6, 12, 18, 24, 30, 36], [6],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 1 — Complete Solutions
  #sol-item(1, "D", dense: true, pad: 7.5pt)[
    *Chapter 1.* pOH = −log(0.050) = 1.30, so pH = 14 − 1.30 = 12.70.
  ]

  #sol-item(2, "C", dense: true, pad: 7.5pt)[
    *Chapter 2.* A dissolved solute lowers the freezing point, which is why salt is spread on icy roads.
  ]
  ]

  #sol-item(3, "B", dense: true, pad: 7.5pt)[
    *Chapter 3.* If enthalpy were not conserved along a cycle, energy could be created, which the first law forbids.
  ]

  #sol-item(4, "A", dense: true, pad: 7.5pt)[
    *Chapter 4.* A highly exothermic reaction with a low barrier can accelerate itself, giving an explosion.
  ]

  #sol-item(5, "D", dense: true, pad: 7.5pt)[
    *Chapter 5.* Heating favours the endothermic forward reaction, so more product forms and K_c rises.
  ]

  #sol-item(6, "B", dense: true, pad: 7.5pt)[
    *Chapter 6.* 2x + 3(−2) = 0, so x = +3.
  ]

  #sol-item(7, "C", dense: true, pad: 7.5pt)[
    *Chapter 1.* c_b = c_a V_a ÷ V_b = 0.100 × 24.0 ÷ 20.0 = 0.120 M.
  ]

  #sol-item(8, "A", dense: true, pad: 7.5pt)[
    *Chapter 2.* Ammonium nitrate dissolves endothermically, which is why it is used in cold packs.
  ]

  #sol-item(9, "D", dense: true, pad: 7.5pt)[
    *Chapter 3.* Two moles of ammonia form, so −92 ÷ 2 = −46 kJ mol⁻¹.
  ]

  #sol-item(10, "B", dense: true, pad: 7.5pt)[
    *Chapter 4.* Once a limiting reactant is used up, no further change can occur, so the rate falls to zero.
  ]

  #sol-item(11, "C", dense: true, pad: 7.5pt)[
    *Chapter 5.* Removing a product prevents the reverse reaction and keeps the forward reaction proceeding.
  ]

  #sol-item(12, "A", dense: true, pad: 7.5pt)[
    *Chapter 6.* Manganese falls from +7 to +2, so permanganate is reduced and is the oxidising agent.
  ]

  #sol-item(13, "D", dense: true, pad: 7.5pt)[
    *Chapter 1.* Ammonia accepts a proton to become the ammonium ion, so NH₄⁺ is its conjugate acid.
  ]

  #sol-item(14, "A", dense: true, pad: 7.5pt)[
    *Chapter 2.* 2.0 ÷ 40 = 0.050 mol dm⁻³.
  ]

  #sol-item(15, "B", dense: true, pad: 7.5pt)[
    *Chapter 3.* The products lie 40 kJ below the reactants, so the reverse barrier is 60 + 40 = 100 kJ mol⁻¹.
  ]

  #sol-item(16, "C", dense: true, pad: 7.5pt)[
    *Chapter 4.* The same mass gives the same volume of gas, but the powder at the higher temperature produces it faster.
  ]

  #sol-item(17, "B", dense: true, pad: 7.5pt)[
    *Chapter 5.* Removing a product shifts the position to the right; a catalyst does not change it.
  ]

  #sol-item(18, "A", dense: true, pad: 7.5pt)[
    *Chapter 6.* Water is oxidised at the anode, releasing oxygen gas.
  ]

  #sol-item(19, "C", dense: true, pad: 7.5pt)[
    *Chapter 1.* All three readings are within 0.10 cm³, and their mean is 23.60 cm³.
  ]

  #sol-item(20, "D", dense: true, pad: 7.5pt)[
    *Chapter 2.* Salt is dissolved, so it passes through the filter paper with the water.
  ]

  #sol-item(21, "A", dense: true, pad: 7.5pt)[
    *Chapter 3.* Most formation enthalpies are negative, but some, such as that of NO or C₂H₂, are positive.
  ]

  #sol-item(22, "B", dense: true, pad: 7.5pt)[
    *Chapter 4.* A fast reaction uses up the reactants quickly, so the curve rises sharply and levels off sooner.
  ]

  #sol-item(23, "C", dense: true, pad: 7.5pt)[
    *Chapter 5.* Solid and dissolved ions exchange continuously at equal rates, which is a solubility equilibrium.
  ]

  #sol-item(24, "D", dense: true, pad: 7.5pt)[
    *Chapter 6.* Rust is hydrated iron(III) oxide, Fe₂O₃·xH₂O.
  ]

  #sol-item(25, "C", dense: true, pad: 7.5pt)[
    *Chapter 1.* 10⁻¹·³ = 0.050 mol dm⁻³.
  ]

  #sol-item(26, "D", dense: true, pad: 7.5pt)[
    *Chapter 2.* The blue colour comes from the hydrated ion; the anhydrous salt is white and turns blue again when water is added.
  ]

  #sol-item(27, "A", dense: true, pad: 7.5pt)[
    *Chapter 3.* The standard definition uses gases, because in a solid extra energy would be needed to vaporise it.
  ]

  #sol-item(28, "B", dense: true, pad: 7.5pt)[
    *Chapter 4.* For a first order reaction rate ∝ concentration, so the graph is a straight line through the origin.
  ]

  #sol-item(29, "C", dense: true, pad: 7.5pt)[
    *Chapter 5.* With the powers equal and K_c = 1, the product and reactant concentration products are equal.
  ]

  #sol-item(30, "A", dense: true, pad: 7.5pt)[
    *Chapter 6.* With inert electrodes, water is oxidised at the anode, giving oxygen.
  ]

  #sol-item(31, "D", dense: true, pad: 7.5pt)[
    *Chapter 1.* Neither K⁺ nor NO₃⁻ reacts with water, so the solution stays at pH 7.
  ]

  #sol-item(32, "B", dense: true, pad: 7.5pt)[
    *Chapter 2.* Moles of salt = 1.00 ÷ 250 = 0.00400; moles of water = 0.36 ÷ 18 = 0.0200; ratio 5.
  ]

  #sol-item(33, "A", dense: true, pad: 7.5pt)[
    *Chapter 3.* Lost heat never appears in ΔT, so the measured temperature rise and the computed enthalpy are both too small.
  ]

  #sol-item(34, "C", dense: true, pad: 7.5pt)[
    *Chapter 4.* Only one variable should be tested at a time, and temperature strongly affects rate.
  ]

  #sol-item(35, "D", dense: true, pad: 7.5pt)[
    *Chapter 5.* A large K_c means the products dominate the equilibrium mixture.
  ]

  #sol-item(36, "B", dense: true, pad: 7.5pt)[
    *Chapter 6.* Faraday's law: the mass deposited is proportional to the charge passed.
  ]

  #sol-item(37, "D", dense: true, pad: 7.5pt)[
    *Chapter 1.* Silver chloride dissolves in excess ammonia to give a colourless complex; barium sulphate and lead iodide do not.
  ]

  #sol-item(38, "B", dense: true, pad: 7.5pt)[
    *Chapter 2.* It is in contact with the crystals and holds as much as it can at the lower temperature, so it is saturated.
  ]

  #sol-item(39, "A", dense: true, pad: 7.5pt)[
    *Chapter 3.* The surplus energy is given out, so ΔH is negative.
  ]

  #sol-item(40, "C", dense: true, pad: 7.5pt)[
    *Chapter 4.* Cooling slows the reactions but does not stop them completely.
  ]

]

