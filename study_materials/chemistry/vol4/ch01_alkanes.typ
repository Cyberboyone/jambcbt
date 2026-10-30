#import "template.typ": *

#current-chapter.update("Chapter 1: Alkanes and Crude Oil")
#pagebreak()

#chapter-opener(
  1,
  "Alkanes and Crude Oil",
  subtitle: "Homologous Series, IUPAC Naming and Isomerism, Crude Oil and Fractional Distillation, Cracking and Reforming, the Substitution Reactions of the Alkanes, and the Fuels of a Developing Economy",
  syllabus-ref: "Sec. D • Topic 1",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Define a homologous series and apply the general formula CₙH₂ₙ₊₂ to the alkanes.",
    "Name and draw the straight-chain and branched isomers of the first six alkanes.",
    "Describe the separation of crude oil by fractional distillation and name the fraction, its carbon range and its use.",
    "Explain why cracking is carried out, and write an equation for it.",
    "Describe the substitution reaction of an alkane with a halogen, including the role of ultraviolet light.",
    "Explain why the alkanes are called saturated and why they are relatively unreactive.",
    "Relate the boiling point of an alkane to chain length and to branching.",
  ),
  hotspots: (
    "“The general formula of the alkanes is …” — CₙH₂ₙ₊₂, and the alkanes are saturated.",
    "“The number of isomers of C₄H₁₀ is …” — two, butane and 2-methylpropane.",
    "“The fraction obtained at the top of the fractionating column is …” — refinery gas, the smallest molecules, the lowest boiling point.",
    "“Cracking is carried out to …” — convert heavy fractions into petrol and to supply alkenes.",
    "“The reaction of methane with chlorine needs …” — ultraviolet light, and it is a substitution.",
    "“Which fraction has the highest boiling point?” — bitumen, the residue at the bottom.",
  ),
  trap-summary: "Three slips. (1) Writing the general formula as CₙH₂ₙ, which is the *alkene* formula — the alkanes carry two more hydrogens. (2) Calling the reaction of methane with chlorine an addition: it is a *substitution*, one hydrogen is replaced and HCl is set free, and the reaction goes on through all four chloromethanes. (3) Reading the column from the bottom up: the top is the coolest and holds the smallest molecules, the bottom is the hottest and holds the residue.",
)

// ============================================================================
== 1.1 What Organic Chemistry Is

Organic chemistry is the chemistry of the compounds of carbon. Carbon is unique among the elements for three reasons. It forms four covalent bonds, so a carbon atom can sit at the centre of a tetrahedron and join to four different things. It bonds to itself without limit, so carbon atoms can form chains, branches and rings of any length. And it forms double and triple bonds to other carbon atoms, so a formula can be *saturated* — every carbon carrying the maximum number of hydrogens — or *unsaturated* — carrying fewer.

The covalent bond in an organic compound is formed by *sharing* a pair of electrons, and the carbon skeleton is not broken by water or by dilute acid. That is why a lump of wax, which is a mixture of long-chain alkanes, will float in water for a week without dissolving. Organic reactions therefore need a reagent that can attack the electron-rich part of the molecule: a halogen, an acid, oxygen, or a hot concentrated alkali.

#concept-box("Why carbon and not silicon")[
  Carbon and silicon are in the same group and both form four bonds. Silicon joins to itself only in short chains, and the Si–Si bond is weak, so silicon chemistry is the chemistry of the silicate minerals and not of long molecules. Carbon's small size lets it form the short, strong double bond that silicon cannot, and that single fact is the difference between a planet of rocks and a planet of living things.
]

// ============================================================================
== 1.2 The Homologous Series

A *homologous series* is a family of compounds with the same general formula, the same functional group, and a regular gradation in physical properties, in which each member differs from the next by a –CH₂– unit.

#formula-box("The four marks a homologous series must earn")[
  + *The same general formula.* Every alkane answers to CₙH₂ₙ₊₂.
  + *The same functional group.* The alkanes have none beyond the C–C and C–H bonds; the alkanols all carry –OH.
  + *A regular change in physical properties.* Each extra carbon raises the boiling point by 20–30 °C.
  + *Similar chemical properties.* All the alkanes burn and all are chlorinated in ultraviolet light.
]

The alkanes are the *saturated* hydrocarbons: every carbon is joined to four other atoms by single bonds, and the molecule cannot take on any more hydrogen. Their general formula is CₙH₂ₙ₊₂, so methane is CH₄, ethane C₂H₆, propane C₃H₈, butane C₄H₁₀, pentane C₅H₁₂ and hexane C₆H₁₄.

#table(
  columns: (auto, auto, auto, auto, 1fr),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[n],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[b.p. / °C],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[State at room temperature and use],
  ),
  [1], [methane], [CH₄], [−162], [gas; natural gas, bottled fuel],
  [2], [ethane], [C₂H₆], [−89], [gas; in natural gas],
  [3], [propane], [C₃H₈], [−42], [gas; LPG, cooking],
  [4], [butane], [C₄H₁₀], [−1], [gas; LPG, cigarette lighters],
  [5], [pentane], [C₅H₁₂], [36], [liquid; solvent],
  [6], [hexane], [C₆H₁₄], [69], [liquid; extraction solvent],
  [8], [octane], [C₈H₁₈], [126], [liquid; the reference for petrol],
  [10], [decane], [C₁₀H₂₂], [174], [liquid; kerosene range],
  [20], [eicosane], [C₂₀H₄₂], [343], [wax; found in lubricating oil],
)

#diagram-fig("diagrams/ch01_bp_series.svg",
  "Boiling point against chain length for the straight-chain alkanes. The rise is not linear, but it never stops: every extra –CH₂– adds a little more surface for the molecules to hold on to each other.", width: 100%)

#concept-box("Why the boiling point rises")[
  An alkane molecule is held to its neighbours only by *van der Waals forces*, the weak attraction between the temporary dipoles of two neutral molecules. The force grows with the *surface area* of the molecule, so a longer chain has more contact with its neighbours, more energy is needed to separate them, and the boiling point is higher. Branching does the opposite: a compact molecule has less surface, so 2-methylpropane boils at −12 °C while its straight-chain isomer butane boils at −1 °C.
]

// ============================================================================
== 1.3 Naming and Isomerism

The IUPAC name of an alkane is built from the *longest continuous chain* of carbon atoms, a prefix that counts the carbons, and the suffix *-ane*.

#table(
  columns: (auto, 1fr, auto, 1fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Carbons],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prefix],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Carbons],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prefix],
  ),
  [1], [meth-], [6], [hex-],
  [2], [eth-], [7], [hept-],
  [3], [prop-], [8], [oct-],
  [4], [but-], [9], [non-],
  [5], [pent-], [10], [dec-],
)

*Isomers* are compounds with the same molecular formula but different structural formulae. The alkanes from butane onwards have more than one arrangement, because the carbon skeleton can branch. C₄H₁₀ has two isomers, C₅H₁₂ has three and C₆H₁₄ has five.

#diagram-fig("diagrams/ch01_isomers.svg",
  "The two isomers of butane. The molecular formula is the same and the number of atoms is the same; only the order in which they are joined differs, and that is enough to change the boiling point by 11 °C.", width: 96%)

#shortcut-box("Naming a branched alkane in three moves")[
  + Find the longest chain — that is the parent name, and the chain, not the branch, is what gets the suffix.
  + Number the chain from the end that gives the branch the *lowest* number.
  + Name each branch as an alkyl group with its position: 2-methylbutane, 2,2-dimethylpropane, 3-ethyl-2-methylpentane.
]

#trap-box("Same formula is not the same compound")[
  Two substances with the formula C₄H₁₀ can be told apart by their boiling points, because the branched isomer is more compact and boils lower. A question that gives you two boiling points and one formula is asking about isomerism, not about purity.
]

// ============================================================================
== 1.4 Crude Oil

Crude oil is a mixture of hydrocarbons — mainly alkanes, with some cycloalkanes and aromatic compounds — formed over millions of years from the remains of marine organisms buried in sediment and heated under pressure. It is a dark, viscous liquid that floats on water and is insoluble in it, and it is Nigeria's principal export.

Crude oil is useless as it comes out of the ground because it is a mixture: a mixture has no fixed boiling point and no single set of properties. It is separated by *fractional distillation* into fractions, each of which is still a mixture but a much narrower one.

#diagram-fig("diagrams/ch01_crude_column.svg",
  "The fractionating column. The vapour rises, cools, and condenses on the tray whose temperature matches its boiling range; the smallest molecules never condense and leave at the top as gas, and the largest never vaporise and leave at the bottom as bitumen.", width: 100%)

#table(
  columns: (1.15fr, auto, 1.75fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fraction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Carbon range],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
  ),
  [refinery gas], [C₁–C₄], [bottled gas and LPG; feedstock for hydrogen and plastics],
  [petrol (gasoline)], [C₅–C₁₀], [motor spirit, blended and reformed for a higher octane number],
  [naphtha], [C₇–C₉], [feedstock for the petrochemical industry],
  [kerosene], [C₁₀–C₁₄], [household stoves, jet fuel, paraffin lamps],
  [diesel (gas oil)], [C₁₄–C₂₀], [lorries, generators, railway engines],
  [lubricating oil], [C₂₀–C₅₀], [engine oil, grease, waxes],
  [fuel oil], [C₂₀–C₇₀], [ships, power stations],
  [bitumen], [C₅₀ and above], [road surfacing and roofing],
)

#concept-box("Why the column works")[
  Fractional distillation separates by *boiling point*, and boiling point depends on chain length. The column is hotter at the bottom than at the top, so a molecule condenses at the height where the temperature falls to its own boiling point. A short molecule has a low boiling point, so it travels far up the column before it condenses — and propane leaves at the very top. The residue never becomes a vapour at all and is drawn off at the bottom.
]

#trap-box("“Petrol” is not “petroleum”")[
  *Petroleum* is another name for crude oil itself. *Petrol* is one fraction of it, the C₅–C₁₀ cut that a car burns. A question that asks what comes off the top of the column wants *refinery gas*, not petrol; petrol is the second fraction from the top.
]

// ============================================================================
== 1.5 Cracking and Reforming

The demand for petrol is far greater than the fraction the column produces. The heavy fractions — fuel oil and bitumen — are worth little, and the lighter fractions are worth a great deal. *Cracking* converts the heavy into the light: a long-chain alkane is heated to about 500 °C, sometimes over a catalyst, and breaks into a shorter alkane and an alkene.

#diagram-fig("diagrams/ch01_cracking.svg",
  "Catalytic cracking of hexadecane. The chain breaks where the bond is weakest, giving a short saturated alkane for petrol and an alkene for the polymer industry — one process, two products, both saleable.", width: 100%)

#formula-box("Two cracking equations, one idea")[
  $op("C")_16 op("H")_34 -> op("C")_8 op("H")_18 + op("C")_8 op("H")_16$

  $op("C")_10 op("H")_22 -> op("C")_5 op("H")_12 + op("C")_5 op("H")_10$

  In each case the two products together contain exactly the atoms of the starting alkane: cracking rearranges, it never adds or loses an atom.
]

#concept-box("Cracking, reforming and isomerisation — three different jobs")[
  *Cracking* makes *smaller* molecules. *Reforming* rearranges a straight chain into a branched one, or a ring, without changing the number of carbons, and it raises the octane number. *Isomerisation* is the mildest version of the same idea. All three exist for one reason: the market wants petrol that burns smoothly, and straight-chain alkanes knock in an engine.
]

The *octane number* of a fuel measures its resistance to knocking — the premature explosion of the charge in the cylinder. Heptane is defined as 0 and 2,2,4-trimethylpentane (iso-octane) as 100. Branched alkanes and aromatic compounds have high octane numbers; straight-chain alkanes have low ones.

// ============================================================================
== 1.6 The Reactions of the Alkanes

Alkanes are called *paraffins* — Latin for “little affinity” — because they are unreactive. The C–C and C–H bonds are strong and non-polar, so water, dilute acid, dilute alkali and potassium manganate(VII) leave an alkane untouched. There are only two reactions the syllabus expects: burning, and substitution by a halogen.

== 1.6.1 Combustion

#formula-box("Complete and incomplete combustion")[
  Complete: $op("CH")_4 + 2op("O")_2 -> op("CO")_2 + 2op("H")_2 op("O")$ — a blue flame, carbon dioxide and water.

  Incomplete: $2op("CH")_4 + 3op("O")_2 -> 2op("CO") + 4op("H")_2 op("O")$ — a yellow, smoky flame and carbon monoxide.

  The general alkane: $op("C")_n op("H")_(2n+2) + ((3n+1))/2 op("O")_2 -> n op("CO")_2 + (n+1) op("H")_2 op("O")$
]

A blue flame means enough air and complete combustion. A yellow, smoky flame means too little air: carbon particles glow, and carbon monoxide — colourless, odourless and poisonous — is formed instead of carbon dioxide. That is why a blocked stove flue kills, and why a generator must never be run in a closed room.

== 1.6.2 Substitution by a Halogen

An alkane reacts with chlorine or bromine in *ultraviolet light* (or at about 300 °C) in a *substitution*: a hydrogen atom is replaced by a halogen atom and the hydrogen leaves as hydrogen halide.

#diagram-fig("diagrams/ch01_substitution.svg",
  "Chlorination of methane. Each collision can replace one hydrogen, so the flask ends up holding a mixture of all four chloromethanes; the product named in the equation is the one that dominates under the conditions given.", width: 100%)

#formula-box("Substitution, step by step")[
  $op("CH")_4 + op("Cl")_2 -> op("CH")_3 op("Cl") + op("HCl")$

  $op("CH")_3 op("Cl") + op("Cl")_2 -> op("CH")_2 op("Cl")_2 + op("HCl")$

  $op("CH")_2 op("Cl")_2 + op("Cl")_2 -> op("CH") op("Cl")_3 + op("HCl")$

  $op("CH") op("Cl")_3 + op("Cl")_2 -> op("C") op("Cl")_4 + op("HCl")$
]

#concept-box("Why light is needed")[
  Ultraviolet light supplies the energy to break the Cl–Cl bond homolytically, giving two chlorine atoms each with an unpaired electron. That chlorine *radical* is the species that attacks the alkane and takes a hydrogen. Light is not a catalyst in the ordinary sense — it is consumed in starting the chain, and the reaction stops in the dark even if all the reagents are present.
]

#trap-box("Substitution is not addition")[
  An alkane has no double bond, so a halogen cannot *add*. It substitutes. The distinction is worth a mark in every paper: addition gives one product and no by-product, substitution gives two products and the hydrogen halide is one of them — the fumes that turn damp blue litmus red at the mouth of the tube.
]

// ============================================================================
== 1.7 Alkanes in Use — and in the Air

Methane is the main constituent of natural gas and of biogas from a digester. Propane and butane are liquefied under pressure and sold as LPG. Petrol is a blend of C₅–C₁₀ alkanes with additives. Kerosene lights the homes that have no grid supply, and diesel drives the generators that stand in for one.

Every one of those uses ends in the same place: carbon dioxide and water. An alkane that burns cleanly is a fuel; an alkane that escapes unburnt is a greenhouse gas far more powerful than the carbon dioxide it would have become. Methane leaks from gas pipelines and from refuse dumps, and it traps about 25 times as much heat per molecule as carbon dioxide.

#worked-example(
  1,
  "The volume of oxygen needed to burn a fuel",
  [What volume of oxygen, measured at s.t.p., is needed for the complete combustion of 5.60 dm³ of methane at s.t.p.?],
  [
    Write the equation and read the ratio:
    $op("CH")_4 + 2op("O")_2 -> op("CO")_2 + 2op("H")_2 op("O")$

    1 mol of methane needs 2 mol of oxygen; at the same temperature and pressure the ratio of moles is the ratio of volumes, so 5.60 dm³ of methane needs $2 times 5.60 = 11.2$ dm³ of oxygen.

    *Check.* The ratio 1 : 2 is the only figure that matters here, because both gases are measured at s.t.p. If the water were collected as a liquid, its volume would be ignored; if it were collected as a gas, its volume would be twice the methane's.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The mass of carbon dioxide from a known mass of fuel",
  source: "UTME-style",
  [Calculate the mass of carbon dioxide produced when 4.40 g of propane burns completely in excess oxygen. [$A_r$: C = 12, H = 1, O = 16]],
  [
    $M(op("C")_3 op("H")_8) = 3(12) + 8(1) = 44$, so $n = 4.40 / 44 = 0.100$ mol.

    $op("C")_3 op("H")_8 + 5op("O")_2 -> 3op("CO")_2 + 4op("H")_2 op("O")$, so 1 mol of propane gives 3 mol of carbon dioxide.

    $n(op("CO")_2) = 0.300$ mol and $m = 0.300 times 44 = 13.2$ g.

    *Check.* Carbon dioxide is heavier than the fuel per mole of carbon, so the mass must rise: 4.40 g of propane contains 3.60 g of carbon, and 13.2 g of carbon dioxide contains the same 3.60 g. The carbon balance is the check.
  ],
  tier: "UTME STANDARD",
)

#table(
  columns: (1.25fr, 1.35fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pollutant],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it comes from],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
  ),
  [carbon monoxide], [incomplete combustion, especially in a closed space], [binds to haemoglobin far more strongly than oxygen does; it is colourless, odourless and fatal],
  [carbon (soot)], [incomplete combustion of a long-chain fuel], [a respiratory irritant; it soils buildings and forms smog],
  [unburnt methane], [leaks from pipelines, dumps and digesters], [a greenhouse gas about 25 times as potent as carbon dioxide],
  [sulphur(IV) oxide], [traces of sulphur compounds in the fuel], [acid rain, which attacks roofs, soils and lungs],
  [nitrogen oxides], [the nitrogen of the air oxidised in a hot engine], [photochemical smog and acid rain],
)

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the series, the column, cracking and chlorination.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Organic chemistry is the chemistry of carbon, and carbon's four bonds and its ability to bond to itself give an unlimited family of compounds. The alkanes are the saturated hydrocarbons, CₙH₂ₙ₊₂, with single bonds, no functional group and almost no reactivity: they burn, and they are chlorinated in ultraviolet light by substitution. Their boiling points rise with chain length because the molecules have more surface to grip each other, and fall when the chain is branched because the molecule becomes compact. Crude oil is a mixture of them, separated in a fractionating column by boiling range into gas, petrol, naphtha, kerosene, diesel, lubricating oil, fuel oil and bitumen, and the heavy fractions are cracked at about 500 °C into petrol and the alkenes the next chapter is about.
  ]
]

== 1.8 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [The general formula of the alkanes is], [CₙH₂ₙ], [CₙH₂ₙ₊₂], [CₙH₂ₙ₋₂], [CₙH₂ₙ₊₁OH])
#mcq(2, [The number of structural isomers of pentane is], [two], [three], [four], [five])
#mcq(3, [The fraction obtained at the top of a fractionating column is], [kerosene], [diesel], [refinery gas], [bitumen])
#mcq(4, [The reaction between methane and chlorine in sunlight is best described as], [addition], [substitution], [polymerisation], [neutralisation])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [the alkanes are saturated, so every carbon carries the maximum number of hydrogens: CₙH₂ₙ₊₂.]),
  ("B", [pentane has a straight chain, one branch at carbon 2 and two branches at carbon 2 — three in all.]),
  ("C", [the top of the column is the coolest, so the smallest molecules, the refinery gas, leave there.]),
  ("B", [one hydrogen is replaced by chlorine and HCl is released: a substitution, needing ultraviolet light.]),
))

#concept-box("Carry this into Chapter 2")[
  Every cracking equation in this chapter produced an alkene as well as an alkane, and that is not an accident of the chemistry — it is the point of running the plant. The alkene is the molecule with the double bond, and a double bond is a place where a reagent can *add*. Chapter 2 is the chemistry of that double bond: the test that finds it, the five reagents that add across it, and the polymer that is made by opening it.
]

#include "drill_ch01.typ"
