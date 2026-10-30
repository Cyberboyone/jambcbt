#import "template.typ": *

#current-chapter.update("Chapter 5: Carbohydrates, Proteins and Food")
#pagebreak()

#chapter-opener(
  5,
  "Carbohydrates, Proteins and Food",
  subtitle: "The Three Sizes of Carbohydrate, the Ring Structure of Glucose, Sucrose, Starch and Cellulose, Amino Acids and the Peptide Bond, the Denaturation of Proteins, and the Food Tests the Examiner Expects",
  syllabus-ref: "Sec. D • Topic 5",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Classify carbohydrates as monosaccharides, disaccharides and polysaccharides, with an example of each.",
    "Describe the structure of glucose and explain why it is a reducing sugar.",
    "Describe the hydrolysis of sucrose, starch and cellulose, and the test for each.",
    "Describe the structure of an amino acid and the formation of a peptide bond.",
    "Explain denaturation and name four agents that cause it.",
    "Describe the food tests for reducing sugar, starch, protein, fat and water, with the observation for each.",
    "Explain the role of enzymes and of fermentation in food processing.",
  ),
  hotspots: (
    "“The molecular formula of glucose is …” — C₆H₁₂O₆.",
    "“Sucrose is hydrolysed to …” — glucose and fructose.",
    "“The test for starch is …” — iodine solution, brown to blue-black.",
    "“Biuret reagent gives … with a protein” — a violet colour.",
    "“Benedict's solution gives … with a reducing sugar” — a brick-red precipitate of copper(I) oxide.",
    "“The bond joining two amino acids is …” — a peptide bond, –CO–NH–.",
  ),
  trap-summary: "Three slips. (1) Saying that sucrose is a reducing sugar: it is not, because both of its reducing groups are locked in the glycosidic bond — it must be hydrolysed first. (2) Confusing starch and cellulose: both are polymers of glucose, but starch is α-glucose and digestible while cellulose is β-glucose and not. (3) Saying that denaturation destroys the protein: it destroys the *shape*, not the sequence, and the peptide bonds survive — which is why a boiled egg can still be digested.",
)

// ============================================================================
== 5.1 The Carbohydrates

A carbohydrate is a compound of carbon, hydrogen and oxygen in which the hydrogen and oxygen are usually present in the ratio 2 : 1, as in water. Glucose is C₆H₁₂O₆; sucrose is C₁₂H₂₂O₁₁; starch is (C₆H₁₀O₅)ₙ.

#diagram-fig("diagrams/ch05_sugar_tree.svg",
  "The carbohydrates. One sugar unit, two joined units, or thousands — the classification is by size, and hydrolysis takes every one of them back to glucose.", width: 100%)

#table(
  columns: (1.3fr, 1.35fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examples],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where you meet it],
  ),
  [monosaccharide], [glucose, fructose, galactose], [fruit, honey, the product of starch digestion],
  [disaccharide], [sucrose, maltose, lactose], [cane sugar, germinating grain, milk],
  [polysaccharide], [starch, glycogen, cellulose], [yam, rice, liver, cotton, wood],
)

#concept-box("Why the ratio matters")[
  The name *carbohydrate* means “hydrate of carbon”, and the old formula Cₙ(H₂O)ₘ explains the name rather than the chemistry. Glucose is not a hydrate of carbon — it is a polyhydroxy aldehyde, and the ratio is a coincidence of the way the molecule is built. Deoxyribose, C₅H₁₀O₄, is a sugar that does not fit the ratio at all, and it is the sugar of DNA.
]

// ============================================================================
== 5.2 Glucose — the Unit they are All Built From

Glucose is a six-carbon sugar. In the open-chain form carbon 1 is an aldehyde group, –CHO, and carbons 2 to 6 each carry an –OH; that is why glucose is called an *aldohexose*. In solution almost all of it is in a six-membered ring, formed when the –OH on carbon 5 attacks the aldehyde on carbon 1.

#diagram-fig("diagrams/ch05_glucose.svg",
  "Glucose as an open chain and as the ring it forms in solution. The anomeric carbon, C1, still carries an –OH that can open back to the aldehyde — and that open aldehyde is what reduces Benedict's solution.", width: 100%)

#formula-box("The three reactions of glucose")[
  fermentation: $op("C")_6 op("H")_12 op("O")_6 -> 2op("C")_2 op("H")_5 op("OH") + 2op("CO")_2$

  complete oxidation: $op("C")_6 op("H")_12 op("O")_6 + 6op("O")_2 -> 6op("CO")_2 + 6op("H")_2 op("O")$

  reduction by Benedict's reagent: the aldehyde group is oxidised to a carboxylate, and Cu²⁺ is reduced to Cu₂O, a brick-red precipitate.
]

#concept-box("Reducing and non-reducing sugars")[
  A *reducing sugar* is one that can reduce Benedict's or Fehling's solution, and it does so because it has a free aldehyde or ketone group. Glucose, fructose, maltose and lactose are reducing. Sucrose is not: its two units are joined through both anomeric carbons, so neither one can open to an aldehyde. Boil sucrose with dilute acid first, cool, then add Benedict's — the colour appears, because the acid has hydrolysed the sucrose to glucose and fructose.
]

// ============================================================================
== 5.3 Sucrose, Maltose and Lactose

#table(
  columns: (1fr, 1.4fr, 1.2fr, 1.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Disaccharide],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Made of],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Source],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reducing?],
  ),
  [sucrose], [glucose + fructose], [sugar cane, sugar beet], [no],
  [maltose], [glucose + glucose], [germinating barley, starch digestion], [yes],
  [lactose], [glucose + galactose], [milk], [yes],
)

#formula-box("Hydrolysis — the reaction that links the three sizes")[
  $op("C")_12 op("H")_22 op("O")_11 + op("H")_2 op("O") -> op("C")_6 op("H")_12 op("O")_6 + op("C")_6 op("H")_12 op("O")_6$

  sucrose + water → glucose + fructose

  The hydrolysis is catalysed by dilute acid and heat, or by the enzyme *sucrase* in the small intestine. The same reaction in reverse — condensation — is how a plant builds sucrose from two glucose units.
]

#trap-box("Invert sugar is not a different sugar")[
  When sucrose is hydrolysed, the solution changes from dextrorotatory to laevorotatory and is called *invert sugar*. It contains no new substance: it is simply a mixture of glucose and fructose. A question that asks what the acid hydrolysis of sucrose produces wants glucose and fructose, not “invert sugar”.
]

// ============================================================================
== 5.4 Starch, Glycogen and Cellulose

Starch is a polymer of α-glucose. It exists as two fractions: *amylose*, an unbranched coil of several hundred units joined by α-1,4 links, and *amylopectin*, a branched molecule with α-1,6 links every twenty or so units. The coil is what traps iodine and gives the blue-black colour of the test.

Glycogen is the animal equivalent, more heavily branched and stored in the liver and muscle. Cellulose is a polymer of β-glucose; the β link turns every second unit over, so the chain is straight and can pack into fibres held together by hydrogen bonds. That packing is why cotton is strong and why paper tears along a line.

#diagram-fig("diagrams/ch05_starch_cellulose.svg",
  "Starch and cellulose. The same monomer, a different link: α-glucose gives a coil we can digest, β-glucose gives a straight fibre we cannot.", width: 100%)

#concept-box("Why a cow can live on grass and you cannot")[
  The β-1,4 bond of cellulose is not attacked by any enzyme that a human gut produces, so cellulose passes through as *dietary fibre*. A ruminant carries bacteria in its rumen that make cellulase, and a termite carries them in its gut. The chemistry of the bond is the whole difference; the energy is there, but the key to it is not.
]

#formula-box("Hydrolysis of a polysaccharide")[
  $(op("C")_6 op("H")_10 op("O")_5)_n + n op("H")_2 op("O") -> n op("C")_6 op("H")_12 op("O")_6$

  starch + water → glucose

  The hydrolysis needs hot dilute acid, or the enzyme amylase. In the mouth, salivary amylase begins it; in the small intestine, pancreatic amylase finishes it.
]

// ============================================================================
== 5.5 Proteins

A protein is a condensation polymer of amino acids. Every amino acid has the same core: an amino group, –NH₂, and a carboxyl group, –COOH, attached to the same carbon, with a side chain R that makes each one different.

#diagram-fig("diagrams/ch05_peptide.svg",
  "Two amino acids joined by a peptide bond. The –OH of one carboxyl group and one –H of the other amino group leave as water, and the –CO–NH– that remains is the link that holds every protein together.", width: 100%)

#table(
  columns: (1.2fr, 1.5fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What holds it],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means],
  ),
  [primary], [the sequence of amino acids], [decided by the gene; written from the N-terminus],
  [secondary], [hydrogen bonds between C=O and N–H of the backbone], [an α-helix or a β-pleated sheet],
  [tertiary], [hydrophobic, ionic, hydrogen and disulphide bonds between side chains], [the folded three-dimensional shape],
  [quaternary], [the same forces, between separate chains], [haemoglobin, with four chains and four haem groups],
)

#concept-box("Denaturation in one sentence")[
  *Denaturation* is the loss of the secondary and tertiary structure of a protein without the breakage of its peptide bonds. The agent — heat, acid, alkali, alcohol, a heavy-metal ion, or mechanical agitation — breaks the hydrogen bonds and the hydrophobic interactions that hold the fold, and the chain uncoils. The protein becomes insoluble and loses its biological function, but it is still a protein: trypsin can still digest a boiled egg.
]

#diagram-fig("diagrams/ch05_denature.svg",
  "Denaturation. The sequence survives; the fold does not. That distinction is the difference between a hard-boiled egg and a rotten one.", width: 100%)

// ============================================================================
== 5.6 The Food Tests

#diagram-fig("diagrams/ch05_food_tests.svg",
  "The five food tests. Each one is a reagent and a colour: learn the pair, and the conclusion follows.", width: 100%)

#table(
  columns: (1.15fr, 1.5fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent and condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Positive result],
  ),
  [reducing sugar], [Benedict's solution, boiled 3–5 minutes], [blue → green → yellow → orange → brick-red precipitate],
  [non-reducing sugar], [boil with dilute HCl, cool, neutralise, then Benedict's], [the brick-red precipitate appears only after hydrolysis],
  [starch], [a drop of iodine in potassium iodide], [brown → blue-black],
  [protein], [Biuret reagent: NaOH then a few drops of CuSO₄], [blue → violet or purple],
  [fat], [rub on filter paper; or shake with water], [a translucent stain that does not dry; a milky emulsion],
  [water], [anhydrous copper(II) sulphate; or cobalt(II) chloride paper], [white → blue; blue → pink],
  [vitamin C], [DCPIP solution, blue], [decolourised by a reducing agent],
)

#trap-box("The tests detect a *class*, not a substance")[
  A positive Benedict's test proves that *a reducing sugar* is present; it does not prove that the sugar is glucose. To go further you would have to hydrolyse, separate and identify — which is chromatography, not a test-tube colour. The examiner accepts “a reducing sugar” and rejects “glucose” when the question only asked what the test showed.
]

// ============================================================================
== 5.7 Enzymes and Fermentation in Food

An *enzyme* is a protein that catalyses a reaction in a living cell. Enzymes are specific — one enzyme, one reaction, or one small family of them — and they work best at an optimum temperature and pH. Heat above about 45 °C denatures them, which is why a fever is dangerous and why pasteurisation works.

#table(
  columns: (1.2fr, 1.35fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Enzyme],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction catalysed],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where],
  ),
  [amylase], [starch → maltose], [saliva, pancreas, germinating grain],
  [maltase], [maltose → glucose], [small intestine],
  [sucrase], [sucrose → glucose + fructose], [small intestine],
  [lactase], [lactose → glucose + galactose], [small intestine],
  [lipase], [fat → fatty acids + glycerol], [pancreas, and in soap-making],
  [protease], [protein → peptides → amino acids], [stomach and pancreas],
  [zymase], [glucose → ethanol + carbon dioxide], [yeast],
)

*Fermentation* is the anaerobic conversion of sugar to alcohol by yeast. It is the oldest biotechnology and still the basis of bread, palm wine, beer and industrial ethanol. In bread-making the carbon dioxide is the leavening agent and the ethanol evaporates in the oven. In palm wine the sap of the palm is fermented by wild yeasts, and the drink sours within a day as bacteria oxidise the ethanol to ethanoic acid.

#worked-example(
  1,
  "The mass of glucose needed for a fermentation",
  [What mass of glucose is needed to produce 92.0 g of ethanol by fermentation, assuming a 100 % conversion? [$A_r$: C = 12, H = 1, O = 16]],
  [
    $M(op("C")_2 op("H")_5 op("OH")) = 46.0$ g mol⁻¹, so $n = 92.0 / 46.0 = 2.00$ mol of ethanol.

    One mole of glucose gives two moles of ethanol, so 1.00 mol of glucose is needed, and $M(op("C")_6 op("H")_12 op("O")_6) = 180$ g mol⁻¹: the mass is 180 g.

    *Check.* The mass of glucose is about twice the mass of the ethanol, because the other half of the glucose leaves as carbon dioxide: 180 g of glucose gives 92 g of ethanol plus 88 g of carbon dioxide.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  2,
  "The mass of protein from a known nitrogen content",
  source: "UTME-style",
  [A 5.00 g sample of a foodstuff is found to contain 0.160 g of nitrogen. Assuming the protein contains 16.0 % nitrogen by mass, calculate the protein content of the foodstuff as a percentage.],
  [
    If the protein is 16.0 % nitrogen, the mass of protein containing 0.160 g of nitrogen is $0.160 / 0.160 = 1.00$ g.

    The percentage of protein in the foodstuff is $1.00 / 5.00 times 100 = 20.0 %$.

    *Check.* The factor of 6.25 used in food analysis is exactly 100/16, so the calculation is the same one: nitrogen × 6.25 = protein. A result above 100 % would mean either the factor or the balance is wrong.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: sugars, starch, proteins and fats.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Carbohydrates are sugars and their polymers: one unit (glucose, fructose), two units (sucrose, maltose, lactose) or thousands (starch, glycogen, cellulose), every one of them hydrolysed back to glucose by acid or by an enzyme. Glucose is an aldohexose that rings in solution, and the free aldehyde is why it reduces Benedict's solution to brick-red copper(I) oxide. Starch is α-glucose and we digest it; cellulose is β-glucose and we cannot. Proteins are condensation polymers of amino acids joined by peptide bonds, folded into a shape held by hydrogen bonds and other weak forces — and denaturation, by heat, acid, alcohol or heavy-metal ions, destroys the shape but not the sequence. The five food tests — Benedict's, iodine, Biuret, the emulsion test and anhydrous copper(II) sulphate — are the practical face of all of it.
  ]
]

== 5.8 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [The molecular formula of glucose is], [C₆H₁₂O₆], [C₁₂H₂₂O₁₁], [C₆H₁₀O₅], [C₅H₁₀O₅])
#mcq(2, [Sucrose on hydrolysis gives], [two molecules of glucose], [glucose and fructose], [glucose and galactose], [fructose only])
#mcq(3, [Iodine solution is used to test for], [a reducing sugar], [starch], [a protein], [a fat])
#mcq(4, [Boiling an egg denatures the protein by], [breaking the peptide bonds], [breaking the hydrogen bonds that hold the fold], [hydrolysing the amino acids], [removing the nitrogen])

#answer-key-grid(("A", "B", "B", "B"))

#answer-notes((
  ("A", [glucose is a six-carbon sugar with the formula C₆H₁₂O₆.]),
  ("B", [sucrose is glucose joined to fructose, so hydrolysis gives one of each.]),
  ("B", [iodine gives a blue-black colour with the amylose coil of starch, and no colour with anything else in the syllabus.]),
  ("B", [heat breaks the weak forces that hold the folded shape; the peptide bonds survive, which is why the egg is still digestible.]),
))

#concept-box("Carry this into Chapter 6")[
  Everything in this chapter was proved by a test tube: Benedict's for a reducing sugar, iodine for starch, Biuret for protein, bromine water for unsaturation, acidified dichromate for an alcohol. The last chapter collects those tests into one method — the apparatus, the technique, the observation and the calculation — because the practical paper marks the *method* as heavily as the answer.
]

#include "drill_ch05.typ"
