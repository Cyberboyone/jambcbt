#import "template.typ": *

#current-chapter.update("Chapter 2: Alkenes and Alkynes")
#pagebreak()

#chapter-opener(
  2,
  "Alkenes and Alkynes",
  subtitle: "The Carbon–Carbon Double Bond, the Homologous Series CₙH₂ₙ, Geometric Isomerism, Preparation of Ethene, the Addition Reactions and the Tests for Unsaturation, Addition Polymerisation, and the Triple Bond",
  syllabus-ref: "Sec. D • Topic 2",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the structure of the carbon–carbon double bond and explain why it is planar.",
    "Apply the general formula CₙH₂ₙ and name the alkenes from ethene to hexene.",
    "Explain geometric (cis–trans) isomerism about a double bond.",
    "Describe two preparations of ethene and write their equations.",
    "Write the addition reactions of ethene with hydrogen, bromine, hydrogen halides, water and chlorine.",
    "Use bromine water and acidified potassium manganate(VII) to distinguish an alkene from an alkane.",
    "Describe addition polymerisation and name the polymer formed from a given monomer.",
    "Describe the preparation, properties and uses of ethyne.",
  ),
  hotspots: (
    "“The test for an unsaturated compound is …” — bromine water is decolourised, and so is acidified KMnO₄.",
    "“The general formula of the alkene series is …” — CₙH₂ₙ.",
    "“Ethene is made from ethanol by …” — dehydration over hot alumina or hot concentrated sulphuric acid.",
    "“The polymer of chloroethene is …” — PVC, poly(chloroethene).",
    "“Bromine water is decolourised by …” — any compound containing a C=C or a C≡C bond, and nothing else in the syllabus.",
    "“The isomerism shown by but-2-ene is …” — geometric (cis–trans), and it needs two different groups on each carbon of the double bond.",
  ),
  trap-summary: "Three slips. (1) Giving an alkene the alkane formula, CₙH₂ₙ₊₂ — an alkene has two hydrogens fewer because the double bond uses two of them. (2) Calling polymerisation of ethene an addition to a double bond: it is, but the product is a *chain*, and the question that asks for the repeat unit wants the bracket with the free bonds. (3) Writing an alkene as reacting by substitution with bromine — the correct mechanism is addition, which is why the bromine water loses its colour with no hydrogen bromide produced.",
)

// ============================================================================
== 2.1 The Double Bond

An alkene contains a carbon–carbon double bond, C=C. The two carbons and the four atoms attached to them all lie in one plane, and the angle between the bonds is about 120°. The double bond is not two identical bonds: it is one strong σ bond, formed by the head-on overlap of two hybrid orbitals, and one weaker π bond, formed by the sideways overlap of two p orbitals above and below the plane of the molecule.

#diagram-fig("diagrams/ch02_ethene_bond.svg",
  "Ethene. The σ bond lies along the line joining the carbons; the π bond is two clouds of electron density above and below that line. The π electrons are loosely held, which is why the double bond is where every reagent attacks.", width: 100%)

#concept-box("Why an alkene cannot rotate")[
  The σ bond alone would let the carbons spin freely. The π bond locks them, because rotating one carbon would have to break the sideways overlap of the p orbitals. That lock is what makes *geometric isomerism* possible: when each carbon of the double bond carries two different groups, there are two distinct ways to arrange them — both groups on the same side, or on opposite sides — and they cannot turn into one another at room temperature.
]

The general formula of the alkenes is CₙH₂ₙ, with $n >= 2$. Ethene is C₂H₄, propene C₃H₆, butene C₄H₈. An alkene is *unsaturated*: it can take on more hydrogen, and the double bond is the site of every reaction in this chapter.

#table(
  columns: (auto, auto, auto, 1fr),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[n],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),
  [2], [ethene], [C₂H₄], [the monomer of poly(ethene); ripens fruit],
  [3], [propene], [C₃H₆], [the monomer of poly(propene); from cracking],
  [4], [butene], [C₄H₈], [two isomers, but-1-ene and but-2-ene, the second with cis and trans forms],
  [5], [pentene], [C₅H₁₀], [no cis–trans in pent-1-ene, but yes in pent-2-ene],
  [6], [hexene], [C₆H₁₂], [used in this book as the standard liquid alkene],
)

#concept-box("Geometric isomerism in one test")[
  But-2-ene is CH₃–CH=CH–CH₃. Each double-bonded carbon carries a CH₃ and an H. When the two CH₃ groups are on the same side, the molecule is the *cis* isomer; when they are on opposite sides, it is the *trans* isomer. They have different boiling points and different melting points and cannot be converted into one another without breaking the π bond. But-1-ene, CH₂=CH–CH₂–CH₃, has two hydrogens on the end carbon, so it has no cis or trans form — the condition for geometric isomerism is two different groups on *each* carbon of the double bond.
]

// ============================================================================
== 2.2 Where the Alkenes Come From

The alkenes do not occur in crude oil in useful amounts, so industry makes them. There are three routes, and the exam expects the first two.

*Cracking.* A heavy alkane is cracked at about 500 °C over a catalyst, giving a shorter alkane and an alkene:

$op("C")_16 op("H")_34 -> op("C")_8 op("H")_18 + op("C")_8 op("H")_16$

*Dehydration of ethanol.* Ethanol vapour is passed over heated aluminium oxide at about 300 °C, or heated with concentrated sulphuric acid at 170 °C. The acid removes the elements of water from the alcohol:

$op("C")_2 op("H")_5 op("OH") -> op("C")_2 op("H")_4 + op("H")_2 op("O")$

*From calcium carbide.* This gives ethyne rather than ethene, and it is the standard preparation of the triple bond:

$op("CaC")_2 + 2op("H")_2 op("O") -> op("C")_2 op("H")_2 + op("Ca")(op("OH"))_2$

#concept-box("Why dehydration needs a hot acid")[
  Removing –OH from one carbon and –H from the next is not something that happens on its own. The acid protonates the –OH group, so that it leaves as a molecule of water rather than as a hydroxide ion — a group that would never leave by itself. What remains is a carbon with a positive charge next to a C–H bond, and the hydrogen is lost to give the double bond. Every dehydration in organic chemistry is really a protonation followed by a loss.
]

// ============================================================================
== 2.3 The Addition Reactions

The π electrons of the double bond are offered to any species short of electrons, so the alkenes react by *addition*: the double bond opens and two new single bonds are formed, one to each atom of the reagent. One molecule gives one product, and nothing is eliminated.

#diagram-fig("diagrams/ch02_addition_map.svg",
  "Six reagents add across the double bond of ethene. Learn the reagent pair with its product and the mark is secure; learn the reagents as a list without the products and the question will be set the other way round.", width: 100%)

#table(
  columns: (1.28fr, 1.55fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent and condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Product],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation or use],
  ),
  [hydrogen, nickel catalyst, 150 °C], [ethane, C₂H₆], [the margarine and vegetable-oil industry],
  [bromine in tetrachloromethane], [1,2-dibromoethane, C₂H₄Br₂], [the orange colour disappears — the test for unsaturation],
  [hydrogen chloride gas], [chloroethane, C₂H₅Cl], [a route to the ethyl group],
  [steam, phosphoric(V) acid catalyst, 300 °C], [ethanol, C₂H₅OH], [the industrial hydration of ethene],
  [chlorine], [1,2-dichloroethane, C₂H₄Cl₂], [feedstock for PVC],
  [acidified potassium manganate(VII)], [ethane-1,2-diol], [purple → colourless; the second test for unsaturation],
  [oxygen, with a silver catalyst], [oxirane, C₂H₄O], [the epoxide industry — usually excluded at this level],
)

#formula-box("The four equations to know by heart")[
  $op("C")_2 op("H")_4 + op("H")_2 -> op("C")_2 op("H")_6$    (nickel, 150 °C)

  $op("C")_2 op("H")_4 + op("Br")_2 -> op("C")_2 op("H")_4 op("Br")_2$    (in the dark, at once)

  $op("C")_2 op("H")_4 + op("HCl") -> op("C")_2 op("H")_5 op("Cl")$

  $op("C")_2 op("H")_4 + op("H")_2 op("O") -> op("C")_2 op("H")_5 op("OH")$    (H₃PO₄, 300 °C)
]

#concept-box("The bromine water test, and why it works")[
  Bromine water is an orange solution of Br₂ in water. Shake it with an alkane and the orange colour stays in the layer — the alkane extracts the bromine but does not react with it. Shake it with an alkene and the colour disappears, because the bromine has added across the double bond to give a colourless dibromo compound. The same logic makes acidified potassium manganate(VII) a second test: purple permanganate oxidises the double bond to a diol, and the purple turns colourless as the manganese is reduced to Mn²⁺.
]

#diagram-fig("diagrams/ch02_unsaturation_test.svg",
  "The bromine water test. The alkane gives no reaction and the colour remains; the alkene decolourises the reagent before the tube has stopped shaking.", width: 96%)

#trap-box("Bromine water is the test — bromine in the dark is not")[
  A question that says “bromine water” wants the decolourisation of an *aqueous* reagent. A question that says “bromine in tetrachloromethane” wants the same addition, but the observation is the loss of the orange colour of the organic layer. A question that says “bromine in sunlight” with methane is a *substitution*, and the observation is fumes of hydrogen bromide. Read the reagent before you answer.
]

// ============================================================================
== 2.4 Addition Polymerisation

An alkene can be made to join to itself. Under heat, pressure and a catalyst, the double bond of one molecule opens and links to the next, and the process repeats thousands of times. Nothing is eliminated, so the empirical formula of the polymer is the same as that of the monomer.

#diagram-fig("diagrams/ch02_polyethene.svg",
  "Addition polymerisation of ethene. The double bond becomes a single bond and each carbon forms a new bond to its neighbour in the chain; the n in the bracket is the degree of polymerisation.", width: 100%)

#table(
  columns: (1.3fr, 1.1fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Monomer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Polymer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Repeat unit],
  ),
  [ethene, CH₂=CH₂], [poly(ethene)], [—[CH₂—CH₂]—],
  [chloroethene, CH₂=CHCl], [poly(chloroethene), PVC], [—[CH₂—CHCl]—],
  [propene, CH₂=CHCH₃], [poly(propene)], [—[CH₂—CH(CH₃)]—],
  [styrene, CH₂=CHC₆H₅], [poly(styrene)], [—[CH₂—CH(C₆H₅)]—],
  [tetrafluoroethene, CF₂=CF₂], [PTFE], [—[CF₂—CF₂]—],
)

#table(
  columns: (1.1fr, 1.4fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Polymer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
  ),
  [poly(ethene), high density], [stiff, strong, translucent], [buckets, pipes, crates, jerry cans],
  [poly(ethene), low density], [flexible, transparent], [carrier bags, film, squeeze bottles],
  [poly(chloroethene), PVC], [rigid when unpasticised, flexible when plasticised], [drain pipes, cable insulation, floor tiles],
  [poly(propene)], [resists fatigue and heat], [hinges, ropes, food containers],
  [poly(styrene)], [rigid, brittle, transparent], [packaging, disposable cups, insulation foam],
  [PTFE], [inert, heat-resistant, non-stick], [frying pans, seals, chemical plant],
)

#concept-box("Why plastics do not rot")[
  A polymer chain is held together by strong C–C bonds that no soil organism has an enzyme to break, so a discarded bag lies in a ditch for centuries. That is the same inertness that makes the material useful. The three answers the examiner wants are *recycling*, *incineration with energy recovery* and *the development of biodegradable polymers* such as poly(lactic acid), which is made from starch and is broken down by bacteria.
]

// ============================================================================
== 2.5 The Alkynes — One More Bond

An alkyne contains a carbon–carbon triple bond, C≡C. The general formula is CₙH₂ₙ₋₂, and the first member, ethyne (acetylene), is C₂H₂. The two carbons and the two hydrogens are in a straight line, the bond angle is 180°, and the bond is shorter and stronger than a double bond.

#diagram-fig("diagrams/ch02_alkyne.svg",
  "Ethyne: one σ bond and two π bonds, a linear molecule, made from calcium carbide and burnt in oxygen for the hottest flame a workshop can strike.", width: 100%)

Ethyne is prepared in the laboratory by dropping water onto calcium carbide. The gas is collected over water, because it is only slightly soluble in it, and it burns in air with a smoky flame because it is 92 % carbon by mass. In a stream of oxygen the flame reaches about 3000 °C, which is why the oxy-acetylene torch can cut steel.

#formula-box("The equations of ethyne")[
  preparation: $op("CaC")_2 + 2op("H")_2 op("O") -> op("C")_2 op("H")_2 + op("Ca")(op("OH"))_2$

  complete combustion: $2op("C")_2 op("H")_2 + 5op("O")_2 -> 4op("CO")_2 + 2op("H")_2 op("O")$

  with bromine: $op("C")_2 op("H")_2 + 2op("Br")_2 -> op("C")_2 op("H")_2 op("Br")_4$
]

#trap-box("Ethyne, ethene, ethane — three names, three formulae")[
  Ethane C₂H₆ is saturated and does not decolourise bromine water. Ethene C₂H₄ is one double bond and decolourises it. Ethyne C₂H₂ is a triple bond and decolourises *two* molecules of bromine per molecule. If a question gives you a hydrocarbon and asks which it is, the test result and the formula both have to agree.
]

// ============================================================================
== 2.6 Alkenes in Industry and in the Exam

Ethene is the most manufactured organic chemical in the world, and almost everything made of plastic begins with it. Ethanol made by hydrating ethene competes with ethanol made by fermenting sugar, and the choice between them is a question of cost and of the price of crude oil rather than of chemistry.

#worked-example(
  1,
  "The mass of polymer from a mass of monomer",
  [What mass of poly(ethene) can be made from 28.0 g of ethene, assuming a 100 % conversion? [$A_r$: C = 12, H = 1]],
  [
    $M(op("C")_2 op("H")_4) = 28.0$ g mol⁻¹, so $n = 28.0 / 28.0 = 1.00$ mol of monomer.

    Polymerisation adds the monomers without losing an atom, so 1.00 mol of monomer gives 1.00 mol of repeat units, and the mass is the same: 28.0 g.

    *Check.* The mass must be conserved exactly, since nothing escapes. If the question asked for a 90 % yield, the mass would be $0.900 times 28.0 = 25.2$ g, and that is the only way the answer can differ from the mass you started with.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The volume of hydrogen needed to harden an oil",
  source: "UTME-style",
  [A sample of vegetable oil contains 0.500 mol of C=C double bonds. What volume of hydrogen at s.t.p. is needed to saturate it completely?],
  [
    Each double bond takes one molecule of hydrogen, so 0.500 mol of double bonds needs 0.500 mol of H₂.

    At s.t.p. one mole of any gas occupies 22.4 dm³, so $V = 0.500 times 22.4 = 11.2$ dm³.

    *Check.* The hydrogen is the limiting reagent by assumption; if the oil had fewer double bonds than stated, the volume would fall in proportion. This is the reaction that turns a liquid oil into margarine.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Distinguishing three hydrocarbons with one reagent",
  source: "practical-style",
  [Three colourless liquids are hexane, hex-1-ene and ethyne. Describe how bromine water would distinguish them, and state what you would see.],
  [
    Add bromine water to a small sample of each and shake.

    *Hexane:* the orange colour remains in the water layer — no reaction, because the molecule is saturated.

    *Hex-1-ene:* the colour disappears and two moles of bromine add across the double bond of each mole of the alkene; a colourless dibromo compound is formed.

    *Ethyne:* the colour also disappears, but ethyne is a gas at room temperature, so the observation includes the escape of unreacted gas and a much greater volume of bromine consumed per mole.

    *Check.* Bromine water separates saturated from unsaturated but does not by itself separate an alkene from an alkyne. To do that you need the physical state, or the number of moles of bromine consumed, or a flame test — ethyne burns with a much smokier flame.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the series, the tests, addition and polymerisation.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The alkenes are the unsaturated hydrocarbons, CₙH₂ₙ, built about a planar C=C double bond made of one σ bond and one π bond, and the π electrons are the whole of their chemistry. Everything that happens to an alkene is addition: hydrogen over nickel gives an alkane, bromine gives a dibromo compound and decolourises bromine water, hydrogen chloride gives a chloroalkane, steam over phosphoric acid gives an alcohol, and acidified permanganate gives a diol. Open the double bond of many molecules at once and you have addition polymerisation, which is where polythene, PVC, polypropene, polystyrene and PTFE come from. Go one bond further and you have the alkynes, CₙH₂ₙ₋₂, of which ethyne is made from calcium carbide and burns at 3000 °C in oxygen.
  ]
]

== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The general formula of the alkene series is], [CₙH₂ₙ₊₂], [CₙH₂ₙ], [CₙH₂ₙ₋₂], [CₙH₂ₙ₊₁OH])
#mcq(2, [Which reagent will distinguish hexane from hex-1-ene?], [sodium hydroxide solution], [bromine water], [dilute hydrochloric acid], [sodium chloride solution])
#mcq(3, [Ethene is converted to ethanol industrially by], [hydration with steam over phosphoric acid], [oxidation with acidified dichromate], [reduction with hydrogen and nickel], [reaction with sodium hydroxide])
#mcq(4, [The polymer formed from chloroethene is], [poly(ethene)], [poly(propene)], [PVC], [poly(styrene)])

#answer-key-grid(("B", "B", "A", "C"))

#answer-notes((
  ("B", [an alkene has one double bond, so it carries two hydrogens fewer than the alkane with the same number of carbons.]),
  ("B", [bromine water is decolourised by the double bond of hex-1-ene and left orange by the saturated hexane.]),
  ("A", [ethene + steam, over phosphoric(V) acid at about 300 °C and high pressure, gives ethanol.]),
  ("C", [chloroethene, CH₂=CHCl, polymerises to poly(chloroethene), which is PVC.]),
))

#concept-box("Carry this into Chapter 3")[
  The hydration of ethene in section 2.4 is one of the two industrial routes to ethanol, and the other — fermentation of glucose — is the link between this chapter and the next. Chapter 3 takes the alcohol that the double bond can become and asks what else it can become: an aldehyde, a ketone, a carboxylic acid, an ester. Every one of those conversions is an oxidation or a substitution at the same oxygen atom, and the double bond you have just learned to open is the product of the first of them.
]

#include "drill_ch02.typ"
