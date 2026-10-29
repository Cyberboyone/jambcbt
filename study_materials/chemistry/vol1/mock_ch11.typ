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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty questions in forty minutes — the format, the difficulty spread and the topic mix of a real UTME Chemistry paper on matter, the mole, gases, atomic structure, the periodic table and bonding.]
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

#mcq(1, [A mixture of ammonium chloride and sodium chloride is heated. Ammonium chloride sublimes while sodium chloride remains. The method therefore used is], [filtration], [distillation], [chromatography], [sublimation])

#mcq(2, [The percentage by mass of nitrogen in NO₂ (M = 46) is], [14.0 %], [46.0 %], [30.4 %], [69.6 %])

#mcq(3, [A gas cylinder contains 4 mol of gas at 300 K in 20 dm³. Using R = 0.0821 dm³ atm K⁻¹ mol⁻¹, the pressure is about], [2.0 atm], [4.9 atm], [24 atm], [0.5 atm])

#mcq(4, [The relative atomic mass of an element is calculated from isotopic abundances because], [elements exist as mixtures of isotopes of different masses], [atoms of the same element always have the same mass], [electrons contribute to the mass], [the mass number is always a whole number])

#mcq(5, [The most reactive of the Group II metals listed is], [magnesium], [calcium], [beryllium], [strontium])

#mcq(6, [The bond in a metal is between], [positive and negative ions], [positive ions and delocalised electrons], [shared electron pairs], [molecules])

#mcq(7, [Chromatography paper is spotted with the mixture], [above the solvent front], [at the very top of the paper], [on a pencil line just above the level of the solvent], [in the middle of the paper])

#mcq(8, [An oxide of nitrogen contains 36.8 % nitrogen and 63.2 % oxygen by mass. Its empirical formula is], [N₂O₃], [NO₂], [NO], [N₂O])

#mcq(9, [Which of these gases would deviate most from ideal behaviour at high pressure?], [helium], [hydrogen], [neon], [ammonia])

#mcq(10, [Which species has the same number of electrons as neon?], [Cl⁻], [Na⁺], [K⁺], [Ca²⁺])

#mcq(11, [Which element is a liquid at room temperature?], [chlorine], [iodine], [bromine], [fluorine])

#mcq(12, [Which statement about ionic compounds is correct?], [they form a lattice of ions], [they exist as molecules], [they conduct when solid], [they have low melting points])

#mcq(13, [The particles of a gas are best described as], [closely packed and vibrating about fixed positions], [held in layers that slide over one another], [fixed in a regular lattice], [far apart, moving randomly and colliding with the walls])

#mcq(14, [0.224 dm³ of a gas at s.t.p. weighs 0.32 g. Its relative molecular mass is], [32], [16], [44], [64])

#mcq(15, [If the temperature of a gas is raised from 200 K to 300 K at constant volume, the pressure], [falls by one third], [rises by one half], [doubles], [stays the same])

#mcq(16, [In shell notation, iron (Z = 26) is], [2, 8, 16], [2, 8, 8, 8], [2, 8, 14, 2], [2, 8, 12, 4])

#mcq(17, [Which element would be expected to form an ionic chloride with formula XCl₂?], [sodium], [magnesium], [aluminium], [chlorine])

#mcq(18, [Which molecule has a linear shape?], [CO₂], [H₂O], [NH₃], [CH₄])

#mcq(19, [Which of the following would be collected as the residue in a filtration?], [copper(II) sulphate], [ammonium chloride], [sand], [ethanol])

#mcq(20, [The number of moles of hydrogen atoms in 0.3 mol of ethane, C₂H₆, is], [0.3 mol], [0.6 mol], [6 mol], [1.8 mol])

#mcq(21, [Which statement about an ideal gas is not one of the kinetic theory assumptions?], [the particles attract one another strongly at all distances], [the particles are in constant random motion], [collisions are perfectly elastic], [the volume of the particles is negligible])

#mcq(22, [Which pair are isotopes of the same element?], [³⁵₁₇Cl and ³⁵₁₆S], [³⁵₁₇Cl and ³⁷₁₇Cl], [¹⁴₆C and ¹⁴₇N], [²³₁₁Na and ²⁴₁₂Mg])

#mcq(23, [The periodic table is useful mainly because], [it lists elements alphabetically], [it gives the density of every element], [it groups elements with similar chemical properties], [it shows the colour of each element])

#mcq(24, [Which statement about the particles in a metal is correct?], [the electrons are localised in bonds], [the positive ions are free to move], [it contains negative ions], [the electrons are delocalised])

#mcq(25, [A mixture of iron filings, sand and salt is stirred with water and filtered. The residue is], [salt only], [iron only], [sand and iron filings], [sand only])

#mcq(26, [The number of moles of H₂SO₄ needed to neutralise 2 mol of NaOH completely is], [2 mol], [0.5 mol], [4 mol], [1 mol])

#mcq(27, [Diffusion is faster at higher temperatures because], [the particles move faster], [the particles are larger], [the particles attract more], [the pressure falls])

#mcq(28, [An element has two isotopes of masses 63 and 65 in the ratio 3 : 1. Its relative atomic mass is], [64.0], [63.5], [63.0], [65.0])

#mcq(29, [Which element is used as a catalyst in the Haber process?], [vanadium], [nickel], [iron], [platinum])

#mcq(30, [The bond between the two hydrogen atoms in H₂ is], [covalent], [ionic], [metallic], [hydrogen])

#mcq(31, [An alloy such as brass is best described as], [an element], [a compound], [a pure substance with a sharp melting point], [a mixture of metals])

#mcq(32, [A compound contains 40 % calcium, 12 % carbon and 48 % oxygen by mass. Its empirical formula is], [CaC₂O], [CaCO₃], [Ca₂CO₃], [CaCO₂])

#mcq(33, [The diffusion of gases is best demonstrated by], [the smell of ammonia spreading across a room], [water freezing], [iron rusting], [salt dissolving])

#mcq(34, [Which configuration represents an excited atom rather than the ground state?], [1s² 2s² 2p⁶ 3s¹], [1s² 2s² 2p⁶], [1s² 2s² 2p⁵ 3s²], [1s² 2s² 2p⁶ 3s² 3p¹])

#mcq(35, [Potassium is more reactive than sodium because], [it has more protons], [it is denser], [it has fewer shells], [its outer electron is further from the nucleus and more easily lost])

#mcq(36, [In a dot-and-cross diagram of NaCl, the chloride ion is shown with], [7 electrons], [8 electrons, one of them a cross], [8 electrons, all dots], [18 electrons])

#mcq(37, [Filtration alone would not separate], [copper(II) oxide from water], [chalk powder from water], [clay from water], [a solution of glucose in water])

#mcq(38, [The mass of sodium in 0.5 mol of NaOH (A: Na = 23) is], [23 g], [11.5 g], [5.75 g], [46 g])

#mcq(39, [The partial pressure of oxygen in air at a total pressure of 760 mmHg, if oxygen forms 21 % by volume, is about], [160 mmHg], [21 mmHg], [600 mmHg], [760 mmHg])

#mcq(40, [Boron consists of 20 % ¹⁰B and 80 % ¹¹B. Its relative atomic mass is], [10.5], [11.0], [10.8], [10.2])

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
  [1], [Matter and Separation], [1, 7, 13, 19, 25, 31, 37], [7],
  [2], [The Mole and Stoichiometry], [2, 8, 14, 20, 26, 32, 38], [7],
  [3], [Gases and Kinetic Theory], [3, 9, 15, 21, 27, 33, 39], [7],
  [4], [Atomic Structure], [4, 10, 16, 22, 28, 34, 40], [7],
  [5], [The Periodic Table], [5, 11, 17, 23, 29, 35], [6],
  [6], [Chemical Bonding], [6, 12, 18, 24, 30, 36], [6],
)

The paper is level with the syllabus: Chapter 1 (7) and Chapter 2 (7) carry the most questions, so a miss there costs the most marks. Revise those first.

#block[
  #set text(size: 9.6pt)
  #set par(leading: 0.68em, spacing: 0.72em)
  #block(breakable: false)[
  == Mock Examination 1 — Complete Solutions
  #sol-item(1, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* The difference in ability to sublime allows the two solids to be separated.
  ]

  #sol-item(2, "C", dense: true, pad: 0.0pt)[
    *Chapter 2.* 14 ÷ 46 × 100 = 30.4 %.
  ]
  ]

  #sol-item(3, "B", dense: true, pad: 0.0pt)[
    *Chapter 3.* P = nRT/V = (4 × 0.0821 × 300)/20 ≈ 4.9 atm.
  ]

  #sol-item(4, "A", dense: true, pad: 0.0pt)[
    *Chapter 4.* The weighted mean accounts for the proportions of each isotope present.
  ]

  #sol-item(5, "D", dense: true, pad: 0.0pt)[
    *Chapter 5.* Reactivity increases down Group II, so strontium is more reactive than calcium or magnesium.
  ]

  #sol-item(6, "B", dense: true, pad: 0.0pt)[
    *Chapter 6.* Metallic bonding is the attraction between the ion lattice and the electron sea.
  ]

  #sol-item(7, "C", dense: true, pad: 0.0pt)[
    *Chapter 1.* The spot must start above the solvent level so it is not washed off, and the solvent is allowed to rise up the paper.
  ]

  #sol-item(8, "A", dense: true, pad: 0.0pt)[
    *Chapter 2.* N: 36.8 ÷ 14 = 2.63; O: 63.2 ÷ 16 = 3.95; dividing by 2.63 gives 1 : 1.5, so multiply by 2 to get N₂O₃.
  ]

  #sol-item(9, "D", dense: true, pad: 0.0pt)[
    *Chapter 3.* Ammonia has strong intermolecular attractions (hydrogen bonding), so it deviates most.
  ]

  #sol-item(10, "B", dense: true, pad: 0.0pt)[
    *Chapter 4.* Na⁺ has 10 electrons, like Ne; Cl⁻ has 18, K⁺ 18 and Ca²⁺ 18.
  ]

  #sol-item(11, "C", dense: true, pad: 0.0pt)[
    *Chapter 5.* Bromine is the only liquid halogen at room temperature.
  ]

  #sol-item(12, "A", dense: true, pad: 0.0pt)[
    *Chapter 6.* The ions pack into a continuous three-dimensional lattice.
  ]

  #sol-item(13, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* Gas particles are far apart and move randomly at high speed, colliding with one another and with the container walls.
  ]

  #sol-item(14, "A", dense: true, pad: 0.0pt)[
    *Chapter 2.* 0.224 ÷ 22.4 = 0.01 mol, so M = 0.32 ÷ 0.01 = 32.
  ]

  #sol-item(15, "B", dense: true, pad: 0.0pt)[
    *Chapter 3.* P ∝ T, so P₂ = P₁ × 300/200 = 1.5P₁ — a rise of one half.
  ]

  #sol-item(16, "C", dense: true, pad: 0.0pt)[
    *Chapter 4.* Eighteen in the argon core, fourteen in the third shell (3s² 3p⁶ 3d⁶), two in the fourth.
  ]

  #sol-item(17, "B", dense: true, pad: 0.0pt)[
    *Chapter 5.* A Group II metal forms X²⁺ and needs two chlorides.
  ]

  #sol-item(18, "A", dense: true, pad: 0.0pt)[
    *Chapter 6.* Two bond pairs and no lone pairs give 180°.
  ]

  #sol-item(19, "C", dense: true, pad: 0.0pt)[
    *Chapter 1.* Sand is insoluble in water, so it stays on the filter paper.
  ]

  #sol-item(20, "D", dense: true, pad: 0.0pt)[
    *Chapter 2.* Six hydrogen atoms per formula unit, so 0.3 × 6 = 1.8 mol.
  ]

  #sol-item(21, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* The model assumes no forces between particles except during collisions.
  ]

  #sol-item(22, "B", dense: true, pad: 0.0pt)[
    *Chapter 4.* Isotopes have the same atomic number and different mass numbers.
  ]

  #sol-item(23, "C", dense: true, pad: 0.0pt)[
    *Chapter 5.* Similar outer-shell configurations produce similar chemistry.
  ]

  #sol-item(24, "D", dense: true, pad: 0.0pt)[
    *Chapter 6.* The outer electrons are delocalised over the whole lattice.
  ]

  #sol-item(25, "C", dense: true, pad: 0.0pt)[
    *Chapter 1.* The salt dissolves; the insoluble sand and iron remain on the filter paper.
  ]

  #sol-item(26, "D", dense: true, pad: 0.0pt)[
    *Chapter 2.* H₂SO₄ + 2NaOH → Na₂SO₄ + 2H₂O, so 1 mol of acid neutralises 2 mol of alkali.
  ]

  #sol-item(27, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* Higher temperature means higher mean speed, so the gas spreads more quickly.
  ]

  #sol-item(28, "B", dense: true, pad: 0.0pt)[
    *Chapter 4.* (3 × 63 + 1 × 65) ÷ 4 = 63.5.
  ]

  #sol-item(29, "C", dense: true, pad: 0.0pt)[
    *Chapter 5.* Iron catalyses the production of ammonia from nitrogen and hydrogen.
  ]

  #sol-item(30, "A", dense: true, pad: 0.0pt)[
    *Chapter 6.* Two non-metals share a pair of electrons.
  ]

  #sol-item(31, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* An alloy is a mixture — brass is copper with zinc — and its melting point is a range, not a sharp value.
  ]

  #sol-item(32, "B", dense: true, pad: 0.0pt)[
    *Chapter 2.* Ca: 40 ÷ 40 = 1; C: 12 ÷ 12 = 1; O: 48 ÷ 16 = 3, so CaCO₃.
  ]

  #sol-item(33, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* A gas spreading through another without stirring is diffusion.
  ]

  #sol-item(34, "C", dense: true, pad: 0.0pt)[
    *Chapter 4.* An electron has moved up from 2p to 3s, leaving 2p short of six.
  ]

  #sol-item(35, "D", dense: true, pad: 0.0pt)[
    *Chapter 5.* Extra shielding and greater distance make the electron easier to remove.
  ]

  #sol-item(36, "B", dense: true, pad: 0.0pt)[
    *Chapter 6.* Seven of its own electrons plus the one transferred from sodium.
  ]

  #sol-item(37, "D", dense: true, pad: 0.0pt)[
    *Chapter 1.* Glucose is dissolved, so it passes through the filter paper with the water.
  ]

  #sol-item(38, "B", dense: true, pad: 0.0pt)[
    *Chapter 2.* Each mole contains 23 g of sodium, so 0.5 × 23 = 11.5 g.
  ]

  #sol-item(39, "A", dense: true, pad: 0.0pt)[
    *Chapter 3.* 21 % of 760 ≈ 160 mmHg.
  ]

  #sol-item(40, "C", dense: true, pad: 0.0pt)[
    *Chapter 4.* (20 × 10 + 80 × 11) ÷ 100 = 10.8.
  ]

]

