#import "template.typ": *

#current-chapter.update("Chapter 2: Groups 1 and 2")
#pagebreak()

#chapter-opener(
  2,
  "Groups 1 and 2",
  subtitle: "The Alkali Metals and the Alkaline Earth Metals, Trends in Reactivity and Solubility, Thermal Stability of Carbonates and Nitrates, Flame Tests and the Uses of Their Compounds",
  syllabus-ref: "Sec. C • Topic 2",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the electronic configuration of Groups 1 and 2 and explain the trend in reactivity down each group.",
    "Compare the physical properties of the Group 1 metals, including the anomalies of density and melting point.",
    "Write equations for the reaction of Group 1 and Group 2 metals with oxygen, water, the halogens and hydrogen.",
    "Explain the trends in solubility of the hydroxides and sulphates of Group 2, and in the thermal stability of their carbonates and nitrates.",
    "Carry out and interpret flame tests for the common cations.",
    "Describe the preparation, properties and uses of the important compounds of sodium, calcium and magnesium.",
  ),
  hotspots: (
    "“The most reactive of these metals is …” — the one furthest down the group, not the one with the most familiar name.",
    "“Sodium is stored under paraffin oil because …” — it reacts with oxygen and water vapour in the air.",
    "“The solubility of the Group 2 sulphates down the group …” — decreases; barium sulphate is insoluble, which is why it is used as a barium meal.",
    "“Which carbonate decomposes most easily on heating?” — the one at the *top* of Group 2, magnesium carbonate.",
    "“The flame colour of potassium is …” — lilac. Sodium is golden yellow, calcium brick red, barium apple green, lithium crimson.",
    "“Calcium reacts with cold water to give …” — calcium hydroxide and hydrogen, more slowly than sodium.",
  ),
  trap-summary: "Three slips. (1) Assuming that “more reactive” means “more vigorous with everything”: sodium is more reactive than magnesium, but magnesium burns in air with a brighter flame because its oxide is far less volatile. (2) Confusing the two solubility trends: hydroxides become *more* soluble down Group 2, sulphates become *less*. (3) Writing the thermal decomposition of a Group 1 nitrate as if it gave the oxide: sodium nitrate gives sodium *nitrite* and oxygen; only lithium nitrate behaves like a Group 2 nitrate.",
)

// ============================================================================
== 2.1 The Group as a Family

The Group 1 elements — lithium, sodium, potassium, rubidium, caesium and francium — have one electron in their outermost shell, above a noble-gas core. The Group 2 elements — beryllium, magnesium, calcium, strontium, barium and radium — have two.

That single fact explains almost everything the examiner asks. Losing one electron gives a stable core and a +1 ion; losing two gives a +2 ion. The chemistry of both groups is therefore the chemistry of *electron loss*, and both groups are the most reactive metals in the periodic table.

#table(
  columns: (0.8fr, 1.3fr, 1.3fr, 1.5fr, 1.6fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Configuration],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion formed],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction with water],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Storage],
  ),

  [Li], [1s² 2s¹], [Li⁺], [steady, no flame], [under oil],
  [Na], [2, 8, 1], [Na⁺], [violent, may ignite], [under paraffin oil],
  [K], [2, 8, 8, 1], [K⁺], [very violent, ignites], [under oil],
  [Mg], [2, 8, 2], [Mg²⁺], [very slow with cold water], [dry, in air],
  [Ca], [2, 8, 8, 2], [Ca²⁺], [steady fizzing], [dry, sealed],
)

#concept-box("Why reactivity increases down the group")[
  Three things happen together as you go down Group 1 or Group 2. The atom gets *bigger*, so the outer electron is further from the nucleus. More *inner shells* shield it from the nuclear charge. And the nuclear charge rises, but not enough to outweigh the extra distance and shielding. The outer electron is therefore held less tightly, and the metal loses it more easily. The ionisation energy falls, the reaction becomes more violent, and the metal becomes a stronger reducing agent.

  The same argument in reverse explains why beryllium, at the top of Group 2, is almost covalent in its compounds while barium is thoroughly ionic.
]

// ============================================================================
== 2.2 Physical Properties of Group 1

The alkali metals are soft enough to be cut with a knife, silvery when freshly cut, and tarnish within seconds as the oxide forms. They have low densities — lithium, sodium and potassium float on water — and low melting points that fall steadily down the group.

#diagram-fig("diagrams/ch02_group1.svg",
  "Two Group 1 trends drawn from real data: melting point falls sharply from lithium to caesium, while density rises — with potassium as the one anomaly, lighter than the sodium above it.", width: 96%)

#trap-box("The two anomalies")[
  Down Group 1 the melting point *falls* and the density *rises*, but the rise is not monotonic: potassium (0.86 g cm⁻³) is *less* dense than sodium (0.97 g cm⁻³). The examination does not usually ask for the exception by name, but it does ask which metal floats on water — and sodium, potassium, lithium and even calcium all do, so “the alkali metals are less dense than water” is the safe statement and “density increases down the group” is not.
]

// ============================================================================
== 2.3 The Reactions of Group 1 Metals

#table(
  columns: (1.15fr, 1.9fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation for sodium],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation],
  ),

  [oxygen, dry air], [$4 op("Na") + op("O")_2 -> 2 op("Na")_2 op("O")$], [dull white solid; yellow flame if heated],
  [excess oxygen], [$2 op("Na") + op("O")_2 -> op("Na")_2 op("O")_2$], [sodium peroxide, pale yellow],
  [cold water], [$2 op("Na") + 2 op("H")_2 op("O") -> 2 op("NaOH") + op("H")_2$], [melts, fizzes, dashes, may ignite],
  [chlorine], [$2 op("Na") + op("Cl")_2 -> 2 op("NaCl")$], [vigorous; white smoke],
  [hydrogen], [$2 op("Na") + op("H")_2 -> 2 op("NaH")$], [white ionic hydride, on warming],
  [ammonia], [$2 op("Na") + 2 op("NH")_3 -> 2 op("NaNH")_2 + op("H")_2$], [blue solution, then amide],
)

#concept-box("The sodium-and-water demonstration, described properly")[
  A piece of sodium about the size of a pea is dropped into a trough of water containing universal indicator. It *floats*, because it is less dense than water. It *melts* into a silver ball, because the reaction is exothermic and sodium has a low melting point. It *dashes about* on the surface, driven by the hydrogen escaping from beneath it. It *fizzes*, and the hydrogen often ignites with a yellow flame. The indicator turns *purple*, because sodium hydroxide is a strong alkali.

  Potassium behaves the same way but faster, and the hydrogen ignites at once with a *lilac* flame. Rubidium and caesium are violent enough that they are never used in a school laboratory.
]

// ============================================================================
== 2.4 Group 2: The Alkaline Earth Metals

The Group 2 metals are harder, denser and less reactive than their Group 1 neighbours, but they are still well above hydrogen and are found only as compounds. Magnesium, calcium, strontium and barium all react with oxygen to give basic oxides, with water to give hydroxides, and with dilute acid to give the salt and hydrogen.

#table(
  columns: (1.3fr, 2.0fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),

  [Mg + oxygen], [$2 op("Mg") + op("O")_2 -> 2 op("MgO")$], [brilliant white flame; white ash],
  [Mg + steam], [$op("Mg") + op("H")_2 op("O") -> op("MgO") + op("H")_2$], [cold water is too slow],
  [Ca + cold water], [$op("Ca") + 2 op("H")_2 op("O") -> op("Ca(OH)")_2 + op("H")_2$], [steady fizzing; milky if the hydroxide is saturated],
  [Ca + oxygen], [$2 op("Ca") + op("O")_2 -> 2 op("CaO")$], [white solid, quicklime],
  [CaO + water], [$op("CaO") + op("H")_2 op("O") -> op("Ca(OH)")_2$], [very exothermic; slaking],
  [Mg + dilute acid], [$op("Mg") + 2 op("HCl") -> op("MgCl")_2 + op("H")_2$], [rapid; the test tube warms],
  [MgO + acid], [$op("MgO") + 2 op("HCl") -> op("MgCl")_2 + op("H")_2 op("O")$], [a basic oxide neutralising an acid],
)

#formula-box("The two equations you must be able to write at speed")[
  $"CaCO"_3 -> "CaO" + "CO"_2 quad "(limestone to quicklime, about 900 °C)"$
  #v(3pt)
  $"CaO" + "H"_2 "O" -> "Ca(OH)"_2 quad "(quicklime to slaked lime, very exothermic)"$
]

// ============================================================================
== 2.5 Two Solubility Trends, and One Thermal Trend

The Group 2 compounds behave in two opposite ways as you go down the group, and the examination tests both.

#diagram-fig("diagrams/ch02_group2.svg",
  "Solubility of the Group 2 hydroxides and sulphates in grams per 100 g of water. The hydroxide curve rises down the group; the sulphate curve falls, so that barium sulphate is effectively insoluble. The sulphate axis is logarithmic because the fall spans five orders of magnitude.", width: 100%)

#table(
  columns: (1.2fr, 1.5fr, 1.5fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Down Group 2],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Extreme case],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where you meet it],
  ),

  [solubility of hydroxide], [increases], [Ba(OH)₂ is soluble; Mg(OH)₂ is nearly insoluble], [Mg(OH)₂ as an antacid; limewater is Ca(OH)₂],
  [solubility of sulphate], [decreases], [BaSO₄ is insoluble], [the sulphate test with BaCl₂; the barium meal],
  [thermal stability of carbonate], [increases], [MgCO₃ decomposes at about 350 °C, BaCO₃ above 1300 °C], [“which carbonate is most easily decomposed?”],
  [alkalinity of the hydroxide], [increases], [Ba(OH)₂ is the strongest base in the group], [titrations with barium hydroxide],
)

#trap-box("Group 1 carbonates are stable — except one")[
  Sodium and potassium carbonates do not decompose on heating; they melt. Lithium carbonate behaves like a *Group 2* carbonate and decomposes to lithium oxide and carbon dioxide. The reason is the small size of the lithium ion, which polarises the carbonate ion enough to break it — the same “diagonal relationship” that makes lithium chemistry resemble magnesium chemistry.

  Nitrates follow the same split. Sodium and potassium nitrates give the *nitrite* and oxygen; lithium and the Group 2 nitrates give the *oxide*, nitrogen dioxide and oxygen.
]

#worked-example(
  1,
  "Carbonate to oxide",
  tier: "FOUNDATION",
  [Limestone is calcium carbonate. Calculate the mass of calcium oxide obtained by heating 500 kg of pure limestone, and the volume of carbon dioxide released at s.t.p.],
  [
    *Moles of limestone.* $M_r(op("CaCO")_3) = 40 + 12 + 48 = 100$.
    $n = 500000 div 100 = 5000 "mol"$

    *Mass of calcium oxide.* The ratio is 1 : 1, and $M_r(op("CaO")) = 56$.
    $m = 5000 times 56 = 280000 "g" = 280 "kg"$

    *Volume of carbon dioxide.* One mole of gas occupies 22.4 dm³ at s.t.p.
    $V = 5000 times 22.4 = 112000 "dm"^3 = 112 "m"^3$

    *Check.* The mass falls from 500 kg to 280 kg, a loss of 220 kg; the carbon dioxide lost has a mass of $5000 times 44 = 220$ kg. Mass is conserved.
  ],
)

#worked-example(
  2,
  "Sodium and water, by the numbers",
  tier: "UTME STANDARD",
  [4.6 g of sodium is added to excess water. Calculate the volume of hydrogen produced at s.t.p.],
  [
    *Moles of sodium.* $M_r(op("Na")) = 23$.
    $n = 4.6 div 23 = 0.20 "mol"$

    *Mole ratio.* $2 op("Na") + 2 op("H")_2 op("O") -> 2 op("NaOH") + op("H")_2$, so two moles of sodium give one mole of hydrogen.
    $n(op("H")_2) = 0.20 div 2 = 0.10 "mol"$

    *Volume.*
    $V = 0.10 times 22.4 = 2.24 "dm"^3$

    *Mass of alkali.* $n(op("NaOH")) = 0.20$ mol, so $m = 0.20 times 40 = 8.0$ g. If the question asks for the concentration instead, divide by the volume of water used — the sodium disappears into it, so the volume barely changes.
  ],
)

// ============================================================================
== 2.6 Flame Tests

A few drops of a solution of a metal salt are placed on a clean nichrome wire and held in a non-luminous flame. The heat excites electrons in the metal ion; as they fall back they emit light of a characteristic wavelength. The colour is a fingerprint of the cation.

#diagram-fig("diagrams/ch02_flame.svg",
  "The flame colours the examiner expects. Learn the six in the strip; they identify the cation in a qualitative analysis question in under a second.", width: 100%)

#table(
  columns: (1.1fr, 1.5fr, 2.2fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Flame colour],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Remember it by],
  ),

  [Li⁺], [crimson red], [lithium: the deepest red in the group],
  [Na⁺], [golden yellow], [street lamps: the sodium lamp is the yellow one],
  [K⁺], [lilac], [potassium: pale violet, easily masked by sodium],
  [Ca²⁺], [brick red], [brick: calcium builds bricks],
  [Sr²⁺], [crimson], [strontium: the red of fireworks],
  [Ba²⁺], [apple green], [barium: the green of fireworks],
  [Cu²⁺], [blue-green], [copper roofs turn green],
)

#shortcut-box("Why the sodium flame hides the rest")[
  Sodium's yellow is so intense that a trace of it masks every other colour. That is why the wire is cleaned in concentrated hydrochloric acid between tests, and why a cobalt-blue glass is held in front of the flame when potassium is being tested: the glass absorbs the yellow and lets the lilac through.
]

// ============================================================================
== 2.7 Oxides, Hydroxides and Peroxides

The Group 1 and Group 2 metals form three kinds of oxygen compound, and the examination asks you to tell them apart by what happens when water is added.

#diagram-fig("diagrams/ch02_hydroxide_flow.svg",
  "Adding water to the oxides. The normal oxides give the hydroxide directly; the peroxide gives the hydroxide and hydrogen peroxide, which then decomposes. Calcium oxide reacts most violently of the four.", width: 100%)

#table(
  columns: (1.35fr, 1.9fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Compound],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[With water],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Character],
  ),

  [Na₂O], [$op("Na")_2 op("O") + op("H")_2 op("O") -> 2 op("NaOH")$], [basic oxide; strong alkali],
  [Na₂O₂], [$2 op("Na")_2 op("O")_2 + 2 op("H")_2 op("O") -> 4 op("NaOH") + op("O")_2$], [peroxide; hydrolyses to H₂O₂, which then gives oxygen],
  [CaO], [$op("CaO") + op("H")_2 op("O") -> op("Ca(OH)")_2$], [quicklime to slaked lime; very exothermic],
  [MgO], [nearly insoluble; slowly gives Mg(OH)₂], [basic; used to line furnaces],
  [Al₂O₃], [insoluble; amphoteric], [reacts with acid *and* with alkali],
)

#concept-box("Amphoteric, and why it matters")[
  Aluminium oxide reacts with acids to give aluminium salts and with alkalis to give aluminates. An oxide that does both is *amphoteric*. Zinc oxide and lead(II) oxide are the other two the syllabus expects. The consequence is practical: aluminium does not corrode in alkaline solution the way iron does, and a solution of sodium hydroxide will dissolve the oxide layer that protects aluminium — which is why caustic soda must never be stored in aluminium vessels.
]

// ============================================================================
== 2.8 The Compounds You Must Know

#table(
  columns: (1.35fr, 1.35fr, 2.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Compound],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
  ),

  [NaCl], [sodium chloride], [food, preservation, the raw material for chlorine and sodium hydroxide],
  [NaOH], [caustic soda], [soap making, paper, oven cleaners, titration standard],
  [NaHCO₃], [baking soda], [raising agent; mild antacid; fire extinguishers],
  [Na₂CO₃], [washing soda], [water softening, glass making, detergent],
  [CaCO₃], [limestone], [cement, the blast furnace, chalk, toothpaste],
  [CaO], [quicklime], [neutralising acid soil, mortar, steel making],
  [Ca(OH)₂], [slaked lime], [whitewash, mortar, testing for carbon dioxide, water treatment],
  [CaSO₄·2H₂O], [gypsum], [plaster of Paris when heated to the hemihydrate],
  [Mg(OH)₂], [magnesium hydroxide], [antacid; the “milk of magnesia” suspension],
  [MgSO₄·7H₂O], [Epsom salt], [laxative; bath salts],
  [BaSO₄], [barium sulphate], [the barium meal: insoluble, so not toxic],
  [BaCl₂], [barium chloride], [the test for sulphate ions],
)

#trap-box("Soluble or insoluble — read the use")[
  Barium sulphate is used as a barium meal *because* it is insoluble: barium ions are toxic, and an insoluble salt is not absorbed. Barium chloride, which is soluble, is poisonous and is used only in the laboratory. The same logic explains why magnesium hydroxide is a safe antacid — it is almost insoluble, so it neutralises stomach acid slowly without being absorbed.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the trends, the reactions, the solubility rules and the flame tests.", width: 100%)

#pagebreak()
== 2.9 Chapter 2 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + write the electronic configuration of any Group 1 or Group 2 element;
  + explain why reactivity increases down both groups, in terms of radius and shielding;
  + describe the physical properties of the alkali metals, including their low density;
  + write the equations for sodium and calcium with water, oxygen, chlorine and hydrogen;
  + describe the reaction of magnesium with steam;
  + state both solubility trends of Group 2 and give the extreme case of each;
  + explain the trend in thermal stability of the carbonates and the nitrates;
  + name the flame colour of Li, Na, K, Ca, Sr, Ba and Cu;
  + distinguish an oxide, a peroxide and an amphoteric oxide by their reaction with water;
  + name the uses of NaCl, NaOH, NaHCO₃, Na₂CO₃, CaCO₃, CaO, Ca(OH)₂, Mg(OH)₂ and BaSO₄.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Groups 1 and 2 are the two families of electron donors, and the same argument — a bigger atom, more shielding, a lower ionisation energy — explains why both become more reactive downwards. Sodium and potassium are soft, light and violent with water; magnesium and calcium are harder and steadier, and calcium's reaction with cold water is fast enough to collect hydrogen from it. The two solubility trends run in opposite directions: hydroxides become more soluble down the group, sulphates less, which is why barium sulphate is the insoluble one and why it can be swallowed. Carbonates and nitrates become harder to decompose down the group, with lithium the exception that behaves like a Group 2 element. Flame tests turn the cation into a colour, and the compounds of the two groups — caustic soda, washing soda, limestone, quicklime, slaked lime and Epsom salt — are the raw materials of the next two chapters.
  ]
]

== 2.10 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The most reactive of the following metals is], [lithium], [sodium], [potassium], [calcium])
#mcq(2, [Sodium is stored under paraffin oil because it], [is radioactive], [reacts with oxygen and water vapour in air], [dissolves in water], [melts at room temperature])
#mcq(3, [Which Group 2 sulphate is the least soluble in water?], [magnesium sulphate], [calcium sulphate], [strontium sulphate], [barium sulphate])
#mcq(4, [The flame colour of calcium is], [golden yellow], [lilac], [brick red], [apple green])

#answer-key-grid(("C", "B", "D", "C"))

#answer-notes((
  ("C", [potassium is furthest down the group among the four, so its outer electron is the easiest to lose and its reaction with water is the most violent.]),
  ("B", [sodium tarnishes in air as it forms the oxide and reacts with water vapour, so it is kept under oil to exclude both.]),
  ("D", [the solubility of the Group 2 sulphates falls down the group, and barium sulphate is effectively insoluble — which is why it is used as a barium meal.]),
  ("B", [calcium gives a brick-red flame; sodium is golden yellow, potassium lilac and barium apple green.]),
))

#concept-box("Carry this into Chapter 3")[
  Aluminium sits at the boundary the last chapter drew: it is above carbon, so it cannot be reduced by coke, and it is below magnesium, so it is not as violently reactive as a Group 2 metal. Its oxide is amphoteric and impervious, and both facts shape the next chapter — the amphoteric oxide is what the Bayer process separates, and the impervious layer is why aluminium does not corrode even though it is high in the series.
]

#include "drill_ch02.typ"
