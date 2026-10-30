#import "template.typ": *

#current-chapter.update("Chapter 4: Esters, Soaps and Polymers")
#pagebreak()

#chapter-opener(
  4,
  "Esters, Soaps and Polymers",
  subtitle: "Esterification and the Naming of Esters, Fats and Oils, Saponification and the Action of Soap, Hard Water and Detergents, Condensation Polymerisation, Plastics and the Environment, and Natural Rubber",
  syllabus-ref: "Sec. D • Topic 4",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the ester formed from a given acid and alcohol, and write the equation for its formation.",
    "Distinguish a fat from an oil and relate the difference to saturation.",
    "Describe the hydrolysis of a fat by alkali and write the equation for saponification.",
    "Explain how soap removes grease, using the idea of a micelle.",
    "Explain why soap forms a scum in hard water and why a detergent does not.",
    "Describe condensation polymerisation and name the polymer formed from a given pair of monomers.",
    "Compare addition and condensation polymers, and state the environmental problem of each.",
  ),
  hotspots: (
    "“The ester formed from ethanol and ethanoic acid is …” — ethyl ethanoate, CH₃COOC₂H₅.",
    "“Soap is made by boiling a fat with …” — sodium hydroxide; the process is saponification.",
    "“Soap does not lather in hard water because …” — the calcium and magnesium ions form an insoluble scum.",
    "“Nylon is formed by …” — condensation polymerisation of a diamine and a dicarboxylic acid.",
    "“The linkage in a polyester is …” — the ester linkage, –COO–.",
    "“Oils are converted to fats by …” — hydrogenation, adding hydrogen across the double bonds.",
  ),
  trap-summary: "Three slips. (1) Writing that soap is a *fat*: soap is the sodium salt of a fatty acid, and the fat is the raw material. (2) Saying that a detergent works because it is a stronger alkali: it works for the same reason soap does — a hydrocarbon tail and an ionic head — but its calcium salt is soluble, so it does not form a scum. (3) Confusing the two polymerisations: addition loses nothing and needs one unsaturated monomer, condensation loses a small molecule at every link and needs two monomers, each with two functional groups.",
)

// ============================================================================
== 4.1 The Ester Group

An ester is formed when a carboxylic acid reacts with an alcohol. The –OH of the acid and the –H of the alcohol are lost together as a molecule of water, and the two fragments join through the ester linkage, –COO–.

$op("CH")_3 op("COOH") + op("C")_2 op("H")_5 op("OH") ⇌ op("CH")_3 op("COOC")_2 op("H")_5 + op("H")_2 op("O")$

#diagram-fig("diagrams/ch04_esterification.svg",
  "Esterification. The acid supplies the –COO– half and the alcohol supplies the alkyl group; the water that is lost is assembled from the acid's –OH and the alcohol's –H.", width: 96%)

The ester is named from the alcohol first and the acid second: ethanol + ethanoic acid gives *ethyl ethanoate*; methanol + ethanoic acid gives *methyl ethanoate*; ethanol + methanoic acid gives *ethyl methanoate*.

#concept-box("Why the reaction needs concentrated sulphuric acid")[
  Esterification is *reversible*, so the yield at equilibrium is limited by the water that is present. Concentrated sulphuric acid does two jobs at once: it protonates the carbonyl oxygen of the acid, which makes the carbonyl carbon more attractive to the alcohol, and it absorbs the water as it is formed, which pulls the equilibrium to the right. Remove the product and the reaction keeps going — the same Le Chatelier argument as in Volume 2, applied to an organic flask.
]

Esters are volatile, and most have a pleasant, fruity smell. That is why they are used as flavourings and perfumes, as solvents for varnish and nail polish, and as plasticisers that keep PVC flexible.

#table(
  columns: (1.5fr, 1.1fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ester],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Smell],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Found in],
  ),
  [ethyl ethanoate], [fruity, solvent-like], [nail-polish remover, glues, fruit flavours],
  [pentyl ethanoate], [banana], [banana flavouring],
  [octyl ethanoate], [orange], [orange flavouring],
  [methyl butanoate], [pineapple], [pineapple flavouring],
  [methyl salicylate], [wintergreen], [liniments and sweets],
  [benzyl ethanoate], [jasmine], [perfume],
)

#trap-box("Esters are not acids and not alcohols")[
  An ester contains no –COOH and no –OH, so it does not react with sodium carbonate, does not turn litmus red and does not react with sodium. A question that gives you a sweet-smelling neutral liquid and asks what it is has given you an ester; a question that gives you a sour liquid that fizzes with carbonate has given you a carboxylic acid.
]

// ============================================================================
== 4.2 Fats and Oils

A fat or an oil is a *triglyceride*: an ester of glycerol with three long-chain carboxylic acids, called fatty acids. Glycerol is propane-1,2,3-triol, and each of its three –OH groups is esterified with a fatty acid.

#formula-box("The shape of a fat")[
  glycerol + 3 fatty acids → triglyceride + 3 water

  $op("C")_3 op("H")_5 (op("OH"))_3 + 3op("RCOOH") -> op("C")_3 op("H")_5 (op("OOCR"))_3 + 3op("H")_2 op("O")$
]

The fatty acids are mostly C₁₂ to C₁₈ chains. Stearic acid, C₁₇H₃₅COOH, is saturated and gives a solid fat; oleic acid, C₁₇H₃₃COOH, has one double bond and gives a liquid oil; linoleic acid has two.

#table(
  columns: (1.1fr, 1.35fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fat],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Oil],
  ),
  [state at room temperature], [solid], [liquid],
  [fatty acid chains], [mainly saturated], [mainly unsaturated],
  [melting point], [higher], [lower],
  [source], [animal — butter, lard, suet], [plant — palm, groundnut, soya, olive],
  [behaviour with bromine water], [no decolourisation], [decolourisation — the C=C bonds add bromine],
  [converted by hydrogenation], [not needed], [into margarine and shortening],
)

#concept-box("Why unsaturation lowers the melting point")[
  A saturated chain is a straight rod, and straight rods pack closely, so the van der Waals forces between them are strong and the solid melts at a high temperature. One *cis* double bond puts a bend in the chain, and a bent chain cannot pack: the molecules sit further apart, the forces are weaker, and the substance is a liquid at room temperature. Hydrogenating the double bonds straightens the chains again, which is exactly how a liquid vegetable oil is turned into a spreadable margarine.
]

*Hydrogenation.* The oil is heated with hydrogen at about 200 °C under pressure over a nickel catalyst. Each double bond adds one molecule of hydrogen and becomes a single bond.

$op("C")_17 op("H")_33 op("COOH") + op("H")_2 -> op("C")_17 op("H")_35 op("COOH")$

The product is harder, keeps longer and spreads at refrigerator temperature. The cost is that the *trans* isomers formed in partial hydrogenation are now regarded as worse for the heart than the saturated fat they replaced.

// ============================================================================
== 4.3 Soap and Saponification

Soap is made by boiling a fat or an oil with concentrated sodium hydroxide. The ester bonds are hydrolysed, glycerol is set free, and the sodium salts of the fatty acids are the soap. The reaction is called *saponification*.

#diagram-fig("diagrams/ch04_saponification.svg",
  "Saponification. The alkali hydrolyses each of the three ester links, so one molecule of fat gives three molecules of soap and one of glycerol.", width: 100%)

#formula-box("The equation, in the form the examiner wants")[
  $op("C")_3 op("H")_5 (op("OOCR"))_3 + 3op("NaOH") -> 3op("RCOONa") + op("C")_3 op("H")_5 (op("OH"))_3$

  fat + alkali → soap + glycerol
]

#concept-box("Salting out — why brine is added at the end")[
  Soap is soluble in water but *insoluble* in concentrated salt solution. Adding sodium chloride at the end of the boil therefore precipitates the soap as a curd that floats and can be skimmed off, leaving the glycerol and the excess alkali in the brine. This is the same “salting out” that purifies a protein in a biochemistry laboratory, and the same solubility rule.
]

== 4.3.1 How Soap Removes Grease

A soap ion has two ends that behave in opposite ways. The long hydrocarbon tail, C₁₇H₃₅–, is *hydrophobic*: it dissolves in oil and grease and not in water. The carboxylate head, –COO⁻Na⁺, is *hydrophilic*: it is ionic and dissolves readily in water.

#diagram-fig("diagrams/ch04_soap_micelle.svg",
  "A soap micelle. The tails bury themselves in the grease, the charged heads face the water, and the drop is lifted away as a negatively charged particle that other drops repel.", width: 100%)

When soap is agitated with a greasy surface, the tails burrow into the grease and the heads remain in the water. The grease is surrounded by a *micelle* — a ball of soap ions with their tails inward — and the micelle carries a net negative charge on its surface, so two micelles repel each other and cannot coalesce back into a greasy film. The rinse carries them away.

#trap-box("Soap does not “dissolve” grease")[
  The grease is not dissolved; it is *emulsified*. The difference matters in a structured question: dissolving means forming a solution at the molecular level, while emulsifying means breaking a liquid into tiny droplets suspended in another liquid. Soap is an emulsifying agent, and that is why it works in cold water as well as hot — though hot water softens the grease and helps.
]

== 4.3.2 Hard Water, Scum and Detergents

Hard water contains calcium and magnesium ions. The calcium salt of a fatty acid is insoluble, so the soap is used up forming a grey *scum* before any lather appears:

$2op("RCOONa") + op("Ca")^(2+) -> (op("RCOO"))_2 op("Ca") + 2op("Na")^+$

The consequences are practical: more soap is needed, the water feels flat, and the scum leaves a ring on the bath and a deposit on the fabric. *Detergents* — the sodium salts of long-chain alkylbenzenesulphonates — solve the problem because their calcium salts are *soluble*, so they lather in hard water and produce no scum.

#table(
  columns: (1.25fr, 1.6fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Point],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Soap],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Detergent],
  ),
  [made from], [a fat or oil and sodium hydroxide], [petroleum products — an alkylbenzene, sulphonated and neutralised],
  [the active ion], [R–COO⁻], [R–C₆H₄–SO₃⁻],
  [in hard water], [forms a scum; wasteful], [lathers; no scum, because the calcium salt is soluble],
  [in acidic water], [the soap is converted to the free fatty acid], [the sulphonate remains soluble],
  [biodegradability], [readily broken down by bacteria], [the branched chain is not — hence the switch to straight-chain detergents],
  [environmental problem], [harmless, but uses food-grade fat], [foam in rivers; phosphates in the builder cause eutrophication],
)

// ============================================================================
== 4.4 Condensation Polymerisation

In *condensation polymerisation*, two different monomers, each carrying two functional groups, join head to tail and lose a small molecule — usually water — at every link. The result is a polymer whose backbone contains the functional group of the monomers.

#diagram-fig("diagrams/ch04_polymer_types.svg",
  "Addition and condensation polymerisation side by side. Addition opens a double bond and loses nothing; condensation joins two ends and loses water at every joint.", width: 100%)

#formula-box("Two condensation polymers, two linkages")[
  *Nylon-6,6* — a diamine and a dicarboxylic acid, joined by an amide linkage:

  $n op("H")_2 op("N")(op("CH")_2)_6 op("NH")_2 + n op("HOOC")(op("CH")_2)_4 op("COOH") -> [-op("NH")(op("CH")_2)_6 op("NHCO")(op("CH")_2)_4 op("CO")-]_n + 2n op("H")_2 op("O")$

  *Terylene (PET)* — a diol and a dicarboxylic acid, joined by an ester linkage:

  $n op("HO")(op("CH")_2)_2 op("OH") + n op("HOOC")-op("C")_6 op("H")_4-op("COOH") -> [-op("O")(op("CH")_2)_2 op("OCO")-op("C")_6 op("H")_4-op("CO")-]_n + 2n op("H")_2 op("O")$
]

#concept-box("The word *n* in the two polymerisations")[
  In addition polymerisation the monomer *is* the repeat unit, so the mass of the polymer is n times the mass of the monomer. In condensation polymerisation the repeat unit is smaller than the two monomers together, because a molecule of water leaves at every link. That is the arithmetic behind every “relative molecular mass of the polymer” question: multiply the repeat unit by n, and add back nothing unless the question asks for the end groups.
]

#table(
  columns: (1.3fr, 1.5fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Polymer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Monomers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
  ),
  [nylon-6,6], [hexane-1,6-diamine and adipic acid], [ropes, clothing, carpets, gears],
  [terylene (PET)], [ethane-1,2-diol and benzene-1,4-dicarboxylic acid], [drink bottles, polyester fibre, film],
  [bakelite], [phenol and methanal], [electrical fittings, pan handles — thermosetting],
  [urea–methanal resin], [urea and methanal], [adhesives, plywood],
  [starch], [glucose], [energy store in plants],
  [cellulose], [glucose], [plant cell walls — cotton, paper, wood],
  [protein], [amino acids], [structure, enzymes, muscle],
)

== 4.4.1 Natural Rubber

Natural rubber is *poly(isoprene)* — a chain of about 5 000 isoprene units, 2-methylbuta-1,3-diene, joined head to tail. It is soft and sticky when warm and brittle when cold, because the chains slide over one another. *Vulcanisation* — heating the rubber with sulphur — forms sulphur bridges between neighbouring chains, so the rubber becomes strong, elastic and able to recover its shape.

#trap-box("Vulcanisation is not polymerisation")[
  The polymer already exists in the latex. Sulphur does not join the monomer units together; it *cross-links* chains that are already long. That is why vulcanised rubber cannot be melted and reshaped: the cross-links are covalent bonds, so the material is thermosetting rather than thermoplastic.
]

// ============================================================================
== 4.5 Plastics and the Environment

Every polymer in this chapter is a material with a useful life measured in years and a persistence measured in centuries. The exam expects three remedies and one distinction.

*Recycling.* Thermoplastics — poly(ethene), PVC, PET — can be melted and remoulded, so they are collected, sorted by resin code, washed and pelletised. Thermosetting plastics cannot be remelted and are usually granulated and used as filler.

*Incineration with energy recovery.* Burning plastics releases the energy stored in the hydrocarbon chain, but PVC releases hydrogen chloride, which must be scrubbed from the flue gas.

*Biodegradable and bio-based polymers.* Poly(lactic acid) is made from maize starch and is broken down by soil bacteria; starch blends are used for bags and food trays.

#table(
  columns: (1.2fr, 1.5fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Problem],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cause],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Control],
  ),
  [litter and marine debris], [single-use packaging, poor collection], [reuse, deposit schemes, clean-up, bans on thin bags],
  [landfill volume], [plastics do not rot], [recycling and energy recovery — never open burning],
  [air pollution from burning], [PVC gives HCl; all plastics give CO and soot if starved of air], [controlled incineration with scrubbing],
  [microplastics], [fragmentation of waste in the sea and soil], [filters on drains, better waste management, biodegradable alternatives],
)

// ============================================================================
== 4.6 Working with Esters, Fats and Polymers

#worked-example(
  1,
  "The mass of ester from a given mass of acid",
  [What mass of ethyl ethanoate can be obtained from 30.0 g of ethanoic acid and excess ethanol, if the reaction goes to completion? [$A_r$: C = 12, H = 1, O = 16]],
  [
    $M(op("CH")_3 op("COOH")) = 60.0$ g mol⁻¹, so $n = 30.0 / 60.0 = 0.500$ mol.

    The acid and the alcohol react one to one, so 0.500 mol of ester is formed. $M(op("CH")_3 op("COOC")_2 op("H")_5) = 88.0$ g mol⁻¹, so $m = 0.500 times 88.0 = 44.0$ g.

    *Check.* The ester is heavier than the acid by 28 g mol⁻¹ — the C₂H₄ group of the ethanol less the water that was lost — so 0.500 mol heavier by 14.0 g: 30.0 + 14.0 = 44.0 g. The atom count is the check.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  2,
  "The mass of soap from a mass of fat",
  source: "UTME-style",
  [A fat may be represented as glyceryl tristearate, C₅₇H₁₁₀O₆. What mass of sodium stearate, C₁₇H₃₅COONa, can be obtained from 89.0 g of the fat? [$M$(fat) = 890, $M$(soap) = 306]],
  [
    $n$(fat) $= 89.0 / 890 = 0.100$ mol.

    One molecule of the fat contains three stearate chains, so one mole gives three moles of soap: $n$(soap) $= 0.300$ mol.

    $m = 0.300 times 306 = 91.8$ g.

    *Check.* The soap is heavier than the fat it came from, even though part of the fat became glycerol — because three sodium atoms (23 each) have replaced three hydrogens (1 each). The mass rises by about 66 g per mole of fat.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  3,
  "The degree of polymerisation",
  source: "UTME-style",
  [A sample of poly(ethene) has a relative molecular mass of 28 000. Calculate the number of repeat units in the chain. [$A_r$: C = 12, H = 1]],
  [
    The repeat unit is –CH₂–CH₂–, of formula C₂H₄, so its relative mass is 28.

    $n = 28 000 / 28 = 1 000$ repeat units.

    *Check.* The relative molecular mass must be a whole-number multiple of the repeat unit for an addition polymer, because nothing is lost when the monomers join. If the value were not a multiple of 28 it would suggest either a substituted monomer or a condensation polymer, where a molecule is eliminated at every link.
  ],
  tier: "UTME STANDARD",
)

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: esters, fats, soap and polymers.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    An acid and an alcohol join with the loss of water to give an ester, and that one reaction explains fats, oils, soap, polyester and the smell of fruit. A fat is a triglyceride — glycerol esterified with three fatty acids — solid when the chains are saturated and liquid when they are not, and hydrogenation turns the second into the first. Boiling the fat with sodium hydroxide hydrolyses the ester links to give soap and glycerol: saponification. Soap works because its ion has a hydrocarbon tail that dissolves in grease and an ionic head that dissolves in water, and it fails in hard water because calcium stearate is insoluble. Detergents are the same design with a sulphonate head whose calcium salt is soluble. Join monomers with a small molecule lost at every link and you have condensation polymerisation — nylon, terylene, starch, protein — as distinct from the addition polymerisation of Chapter 2.
  ]
]

== 4.7 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The ester formed when ethanol reacts with ethanoic acid is], [methyl ethanoate], [ethyl ethanoate], [ethyl methanoate], [ethanoic anhydride])
#mcq(2, [Soap is prepared by boiling a fat with], [dilute sulphuric acid], [concentrated sodium hydroxide], [sodium chloride solution], [ethanol])
#mcq(3, [Soap does not lather readily in hard water because], [it is insoluble in water], [calcium and magnesium ions form an insoluble scum], [hard water is acidic], [soap is a weak acid])
#mcq(4, [Nylon is formed by], [addition polymerisation], [condensation polymerisation], [substitution], [cracking])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [the alkyl group comes from the alcohol and the acyl group from the acid: ethyl ethanoate, CH₃COOC₂H₅.]),
  ("B", [saponification uses concentrated sodium hydroxide, which hydrolyses the ester bonds of the fat.]),
  ("B", [the calcium and magnesium ions of hard water precipitate the soap as an insoluble scum before it can lather.]),
  ("B", [a diamine and a dicarboxylic acid join with the loss of water — condensation polymerisation.]),
))

#concept-box("Carry this into Chapter 5")[
  Starch and cellulose in the next chapter are condensation polymers of glucose, and a protein is a condensation polymer of amino acids — the same amide linkage you have just met in nylon, written –CO–NH– instead of –CO–NH– between long chains. Once you see food chemistry as polymer chemistry with a biological name, most of Chapter 5 is already familiar.
]

#include "drill_ch04.typ"
