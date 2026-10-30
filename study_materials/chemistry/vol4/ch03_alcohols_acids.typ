#import "template.typ": *

#current-chapter.update("Chapter 3: Alcohols and Carboxylic Acids")
#pagebreak()

#chapter-opener(
  3,
  "Alcohols and Carboxylic Acids",
  subtitle: "The Alkanols and their Classes, Fermentation and the Industrial Hydration of Ethene, the Reactions of the Alcohols, Oxidation and the Tests that Reveal It, the Alkanoic Acids and the Weak-Acid Behaviour of Ethanoic Acid",
  syllabus-ref: "Sec. D • Topic 3",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the alkanols and classify them as primary, secondary or tertiary.",
    "Describe the fermentation of glucose and the industrial hydration of ethene as routes to ethanol.",
    "Relate the physical properties of ethanol to hydrogen bonding, and state its uses.",
    "Write equations for the reaction of an alcohol with sodium, with phosphorus(V) chloride and on dehydration.",
    "Describe the oxidation of primary, secondary and tertiary alcohols and the colour change that reveals it.",
    "Describe ethanoic acid as a weak acid and write its reactions with metals, bases, carbonates and alcohols.",
    "Explain why ethanoic acid is weaker than hydrochloric acid, and how the strength is shown experimentally.",
  ),
  hotspots: (
    "“The functional group of the alkanols is …” — –OH, the hydroxyl group.",
    "“Ethanol is produced from glucose by …” — fermentation, with yeast, at 25–35 °C, in the absence of air.",
    "“Acidified potassium dichromate(VI) turns from … to …” — orange to green, when an alcohol is oxidised.",
    "“A tertiary alcohol does not react with acidified dichromate because …” — it has no hydrogen on the carbon carrying the –OH.",
    "“Ethanoic acid is a weak acid because …” — it is only partly ionised in water.",
    "“The ester formed from ethanol and ethanoic acid is …” — ethyl ethanoate, and it smells of fruit.",
  ),
  trap-summary: "Three slips. (1) Calling fermentation an oxidation of glucose: the yeast converts glucose to ethanol and carbon dioxide, and the ethanol can then be oxidised to ethanoic acid by air — which is why the flask must be kept closed. (2) Writing that a tertiary alcohol oxidises to a ketone: it does not oxidise at all under the usual reagent, because there is no hydrogen on the carbinol carbon. (3) Treating ethanoic acid as a strong acid in an ionic equation: it must be written CH₃COOH, not H⁺ + CH₃COO⁻, because it is only about 1 % ionised.",
)

// ============================================================================
== 3.1 The Alkanols

An alkanol is a hydrocarbon in which one hydrogen has been replaced by a hydroxyl group, –OH. The general formula is CₙH₂ₙ₊₁OH, so the first members are methanol CH₃OH, ethanol C₂H₅OH, propan-1-ol C₃H₇OH and butan-1-ol C₄H₉OH.

#formula-box("The hydroxyl group is the whole of the chemistry")[
  The –OH group is *polar*: oxygen is more electronegative than carbon and hydrogen, so the O–H bond carries a partial positive charge on the hydrogen and the C–O bond carries a partial positive charge on the carbon. Two consequences follow at once — the molecules hydrogen-bond to one another, which is why ethanol boils at 78 °C and methanol at 65 °C while the alkanes of similar mass boil below 0 °C; and the group can be attacked at either end, which is why an alcohol can be oxidized (the O–H hydrogen is removed) or substituted (the whole –OH is replaced).
]

#table(
  columns: (auto, auto, auto, 1.5fr),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[b.p. / °C],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
  ),
  [CH₃OH], [methanol], [65], [feedstock for methanal and for biodiesel; highly toxic],
  [C₂H₅OH], [ethanol], [78], [solvent, fuel, alcoholic drinks, antiseptic, feedstock],
  [C₃H₇OH], [propan-1-ol], [97], [solvent],
  [C₄H₉OH], [butan-1-ol], [118], [solvent, plasticiser],
  [C₅H₁₁OH], [pentan-1-ol], [138], [flotation and extraction],
  [C₆H₅OH], [phenol], [182], [a different class — the –OH is on a benzene ring, and it is acidic],
)

An alcohol is classified by the number of carbon atoms attached to the carbon that carries the –OH.

#table(
  columns: (auto, 1.5fr, 1.2fr, 1.1fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Carbinol carbon carries],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Oxidises to],
  ),
  [primary], [one other carbon, and two hydrogens], [ethanol, propan-1-ol], [an aldehyde, then an acid],
  [secondary], [two other carbons, and one hydrogen], [propan-2-ol], [a ketone],
  [tertiary], [three other carbons, and no hydrogen], [2-methylpropan-2-ol], [nothing — it resists],
)

// ============================================================================
== 3.2 Making Ethanol

There are two routes, and the examiner expects both.

*Fermentation.* Glucose in solution is mixed with yeast and kept at 25–35 °C in a closed vessel. The enzymes in the yeast catalyse the breakdown of glucose to ethanol and carbon dioxide.

$op("C")_6 op("H")_12 op("O")_6 -> 2op("C")_2 op("H")_5 op("OH") + 2op("CO")_2$

The fermentation stops when the alcohol concentration reaches about 14 %, because the ethanol kills the yeast. A more concentrated product needs fractional distillation.

#diagram-fig("diagrams/ch03_fermentation.svg",
  "Fermentation. The limewater proves that carbon dioxide is leaving; the bung keeps the air out so that the ethanol is not oxidised to ethanoic acid and does not escape as vapour.", width: 100%)

#diagram-fig("diagrams/ch03_distillation.svg",
  "Fractional distillation of the fermented liquor. The thermometer bulb sits at the side arm so that it reads the temperature of the vapour that is actually distilling over.", width: 100%)

*Hydration of ethene.* Ethene and steam are passed over a phosphoric(V) acid catalyst at about 300 °C and 60–70 atm. The double bond opens and water adds across it.

$op("C")_2 op("H")_4 + op("H")_2 op("O") -> op("C")_2 op("H")_5 op("OH")$

#concept-box("Which route is used, and why both exist")[
  Hydration of ethene is fast, gives a very pure product and needs no land, but it depends on a supply of ethene from cracking, and therefore on the price of crude oil. Fermentation is slow, gives a dilute product that must be distilled, and needs sugar — but it works anywhere with a crop. The same ethanol can be made either way, which is why a country with natural gas builds a hydration plant and a country with cassava builds a distillery.
]

#trap-box("Fermentation is not distillation")[
  Fermentation makes the alcohol; distillation concentrates it. A question that asks for the *process* that produces ethanol from glucose wants fermentation; a question that asks how the dilute solution is *concentrated* wants fractional distillation. Reading the verb decides the mark.
]

// ============================================================================
== 3.3 The Properties and Uses of Ethanol

Ethanol is a colourless, volatile liquid with a characteristic smell, miscible with water in every proportion. The miscibility is the hydrogen bond again: ethanol can hydrogen-bond to water as well as to itself, so the two liquids mix without any energy penalty.

#table(
  columns: (1.1fr, 1.8fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Explanation or consequence],
  ),
  [volatile, low boiling point], [evaporates quickly, carrying heat with it — the basis of a spirit thermometer and of a cooling rub],
  [miscible with water], [hydrogen-bonds to water, so it dissolves in any proportion],
  [a good solvent], [dissolves both polar and non-polar substances, so it is used in tinctures, perfumes and varnishes],
  [burns with a clean flame], [2C₂H₅OH + 6O₂ → 4CO₂ + 6H₂O; used as a fuel and blended into petrol],
  [a depressant, not a stimulant], [it slows the central nervous system; it is the active ingredient of alcoholic drinks],
  [denatured with methanol], [industrial ethanol is made undrinkable and untaxed by adding methanol and a bittering agent],
)

#concept-box("Why ethanol is a better solvent than water for some jobs")[
  Water dissolves salts and sugars, because it is polar and can surround an ion. Ethanol does both — it is polar enough to hydrogen-bond — and it also dissolves the oils and resins that water cannot, because its hydrocarbon end can mix with them. A medicine that must carry an organic active ingredient is a *tincture*, which is simply that ingredient dissolved in ethanol.
]

// ============================================================================
== 3.4 The Reactions of the Alcohols

#diagram-fig("diagrams/ch03_alcohol_reactions.svg",
  "The five reactions of ethanol that the syllabus expects. Three break the O–H bond, three involve the whole molecule, and esterification involves both an alcohol and an acid.", width: 100%)

== 3.4.1 With Sodium — the O–H Bond Breaks

$2op("C")_2 op("H")_5 op("OH") + 2op("Na") -> 2op("C")_2 op("H")_5 op("ONa") + op("H")_2$

Sodium sinks and fizzes in ethanol, but far less vigorously than in water, and the solution that remains is sodium ethoxide. The reaction is the test that proves the hydrogen is attached to oxygen and not to carbon: only an O–H hydrogen is released by a metal in this way.

== 3.4.2 With Phosphorus(V) Chloride — the –OH Leaves

$op("C")_2 op("H")_5 op("OH") + op("PCl")_5 -> op("C")_2 op("H")_5 op("Cl") + op("POCl")_3 + op("HCl")$

White fumes of hydrogen chloride are produced. The same reaction with an acid gives the acid chloride, and with a carboxylic acid it is the standard test that a compound contains an –OH group.

== 3.4.3 Dehydration — an Alkene is Formed

$op("C")_2 op("H")_5 op("OH") -> op("C")_2 op("H")_4 + op("H")_2 op("O")$

The ethanol vapour is passed over heated aluminium oxide at 300 °C, or heated with concentrated sulphuric acid at 170 °C. The product is ethene — the reaction that links this chapter back to the last one.

== 3.4.4 Combustion

$op("C")_2 op("H")_5 op("OH") + 3op("O")_2 -> 2op("CO")_2 + 3op("H")_2 op("O")$

Ethanol burns with a clean blue flame and is blended into petrol as E10, a 10 % mixture, because it is a renewable fuel that burns without sulphur.

== 3.4.5 Esterification — with a Carboxylic Acid

$op("CH")_3 op("COOH") + op("C")_2 op("H")_5 op("OH") ⇌ op("CH")_3 op("COOC")_2 op("H")_5 + op("H")_2 op("O")$

The reaction needs a few drops of concentrated sulphuric acid and gentle warming, and it produces a sweet-smelling ester. Chapter 4 returns to it.

// ============================================================================
== 3.5 Oxidation — the Reaction that Sorts the Alcohols

Acidified potassium dichromate(VI) is the standard oxidising agent: it is orange when the chromium is Cr(VI) and green when it has been reduced to Cr(III). Acidified potassium manganate(VII) does the same job and turns from purple to colourless.

#diagram-fig("diagrams/ch03_oxidation_ladder.svg",
  "The oxidation ladder. What the alcohol becomes depends on how many hydrogens the carbinol carbon still has; when it has none, the reagent has nothing to take and the orange colour stays.", width: 100%)

#formula-box("The three oxidations, written out")[
  primary to aldehyde: $op("C")_2 op("H")_5 op("OH") + op("[O]") -> op("CH")_3 op("CHO") + op("H")_2 op("O")$

  aldehyde to acid: $op("CH")_3 op("CHO") + op("[O]") -> op("CH")_3 op("COOH")$

  secondary to ketone: $op("CH")_3 op("CH")(op("OH")) op("CH")_3 + op("[O]") -> op("CH")_3 op("CO") op("CH")_3 + op("H")_2 op("O")$

  tertiary: no reaction — there is no hydrogen on the carbinol carbon to remove.
]

#concept-box("Distilling an aldehyde out of reach")[
  A primary alcohol oxidised in a flask goes all the way to the carboxylic acid, because the aldehyde is itself oxidised as soon as it is formed. To stop at the aldehyde the product must be *distilled off* as it forms, since the aldehyde boils lower than the alcohol it came from. This is the classical preparation of ethanal, and the detail — warm gently and distil — is worth a mark in a structured question.
]

#trap-box("The colour change belongs to the reagent")[
  In the dichromate test the *orange* solution turns *green*. It is not the alcohol that changes colour, and it is not the aldehyde. A question that asks what is observed wants both halves: orange to green, and a change in smell from alcohol to a fruity aldehyde. A negative result is also information: a tertiary alcohol leaves the orange colour unchanged, which is how you identify it.
]

// ============================================================================
== 3.6 The Alkanoic Acids

A carboxylic acid contains the carboxyl group, –COOH. The alkanoic acids have the general formula CₙH₂ₙ₊₁COOH: methanoic acid HCOOH, ethanoic acid CH₃COOH, propanoic acid C₂H₅COOH, and so on.

Ethanoic acid is the one the syllabus examines. It is the acid of vinegar, produced when ethanol is oxidised by the *Acetobacter* bacteria in air, and it is manufactured industrially by the catalytic oxidation of ethanal or by the carbonylation of methanol.

#diagram-fig("diagrams/ch03_ethanoic_acid.svg",
  "The five reactions of ethanoic acid. Every one of them is the reaction of an acid; the difference from hydrochloric acid is the rate, not the kind.", width: 100%)

#formula-box("Ethanoic acid is weak — and that has consequences")[
  $op("CH")_3 op("COOH") ⇌ op("CH")_3 op("COO")^- + op("H")^+$

  In 0.1 mol dm⁻³ solution only about 1 % of the molecules are ionised, so the pH is about 3 rather than 1.

  With a carbonate: $2op("CH")_3 op("COOH") + op("Na")_2 op("CO")_3 -> 2op("CH")_3 op("COONa") + op("H")_2 op("O") + op("CO")_2$

  With a metal: $2op("CH")_3 op("COOH") + op("Mg") -> (op("CH")_3 op("COO"))_2 op("Mg") + op("H")_2$

  With a base: $op("CH")_3 op("COOH") + op("NaOH") -> op("CH")_3 op("COONa") + op("H")_2 op("O")$
]

#concept-box("Weak acid, strong acid — what the word means")[
  A *strong* acid is completely ionised in water; a *weak* acid is only partly ionised. Concentration is a different idea: a dilute hydrochloric acid can be less acidic than a concentrated ethanoic acid. The test that separates them is not the pH paper alone but the *rate* of reaction with a carbonate and the *conductivity* of the solution at the same concentration — the strong acid fizzes faster and lights the bulb more brightly, because it supplies far more ions.
]

#table(
  columns: (1.35fr, 1.3fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ethanoic acid],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it proves],
  ),
  [pH of 0.1 M solution], [about 3], [partial ionisation — a weak acid],
  [with sodium carbonate], [steady effervescence], [an acid, and carbon dioxide is released],
  [with magnesium ribbon], [slow bubbling; the metal dissolves], [an acid, but a weak one],
  [with ethanol and concentrated H₂SO₄], [a sweet smell], [the carboxyl group — an ester is formed],
  [with universal indicator], [orange-yellow], [pH between 3 and 5],
)

// ============================================================================
== 3.7 Working with Alcohols and Acids

#worked-example(
  1,
  "The volume of carbon dioxide from a fermentation",
  [What volume of carbon dioxide at s.t.p. is produced when 90.0 g of glucose is fermented completely? [$A_r$: C = 12, H = 1, O = 16; $V_m$ = 22.4 dm³ at s.t.p.]],
  [
    $M(op("C")_6 op("H")_12 op("O")_6) = 6(12) + 12(1) + 6(16) = 180$ g mol⁻¹, so $n = 90.0 / 180 = 0.500$ mol.

    One mole of glucose gives two moles of carbon dioxide, so $n(op("CO")_2) = 1.00$ mol.

    $V = 1.00 times 22.4 = 22.4$ dm³.

    *Check.* The same fermentation also gives 1.00 mol of ethanol, which has a mass of 46.0 g. The mass balance is 90.0 g of glucose giving 46.0 g of ethanol plus 44.0 g of carbon dioxide — exactly 90.0 g, as it must be.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  2,
  "The mass of ethanol obtainable from ethene",
  source: "UTME-style",
  [Ethene is hydrated to ethanol with a 90 % yield. What mass of ethanol is obtained from 56.0 g of ethene? [$A_r$: C = 12, H = 1, O = 16]],
  [
    $M(op("C")_2 op("H")_4) = 28.0$ and $M(op("C")_2 op("H")_5 op("OH")) = 46.0$ g mol⁻¹.

    $n(op("C")_2 op("H")_4) = 56.0 / 28.0 = 2.00$ mol, and the reaction is one to one, so the theoretical yield is 2.00 mol of ethanol $= 2.00 times 46.0 = 92.0$ g.

    At 90 % yield the actual mass is $0.900 times 92.0 = 82.8$ g.

    *Check.* The yield cannot exceed the theoretical value, and the mass ratio 46 : 28 shows that the product is heavier than the ethene it came from, because water has been added.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Titrating vinegar",
  source: "practical-style",
  [25.0 cm³ of a vinegar solution is titrated with 0.100 mol dm⁻³ sodium hydroxide and needs 20.0 cm³ to reach the end point. Calculate the concentration of ethanoic acid in the vinegar in mol dm⁻³ and in g dm⁻³. [$M$(CH₃COOH) = 60.0]],
  [
    $n(op("NaOH")) = c V / 1000 = 0.100 times 20.0 / 1000 = 2.00 times 10^(-3)$ mol.

    $op("CH")_3 op("COOH") + op("NaOH") -> op("CH")_3 op("COONa") + op("H")_2 op("O")$, so the acid and the alkali react one to one and $n$(acid) $= 2.00 times 10^(-3)$ mol in 25.0 cm³.

    $c = n/V = 2.00 times 10^(-3) / 0.0250 = 0.0800$ mol dm⁻³.

    In grams per dm³: $0.0800 times 60.0 = 4.80$ g dm⁻³, which is 4.80 % — a typical table vinegar.

    *Check.* The answer is smaller than the titrant concentration because a larger volume of acid was used, and the ratio of concentrations is the inverse ratio of the volumes: 20.0/25.0 × 0.100 = 0.0800.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the alcohols, their oxidation and the acids.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    An alkanol carries an –OH group on a saturated carbon, and it is classified by how many carbons that carbon carries. Ethanol comes from fermentation of glucose or from the hydration of ethene, and it boils at 78 °C because its molecules hydrogen-bond. The –OH group gives three reactions — with sodium, with phosphorus(V) chloride, and dehydration to an alkene — and oxidation gives an aldehyde then a carboxylic acid from a primary alcohol, a ketone from a secondary alcohol, and nothing from a tertiary one, with acidified dichromate turning orange to green. Ethanoic acid is a weak acid, about 1 % ionised, which reacts with metals, bases, carbonates and alcohols to give salts, water, carbon dioxide and esters.
  ]
]

== 3.8 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [The functional group present in ethanol is], [–COOH], [–OH], [–CHO], [C=C])
#mcq(2, [Ethanol is produced from glucose by], [fermentation], [distillation], [oxidation], [polymerisation])
#mcq(3, [When acidified potassium dichromate(VI) oxidises a primary alcohol, the colour change is], [green to orange], [orange to green], [purple to colourless], [colourless to purple])
#mcq(4, [Ethanoic acid is described as a weak acid because], [it is dilute], [it is only partly ionised in water], [it does not react with carbonates], [it contains no hydrogen])

#answer-key-grid(("B", "A", "B", "B"))

#answer-notes((
  ("B", [the hydroxyl group, –OH, on a saturated carbon is what makes a compound an alkanol.]),
  ("A", [yeast enzymes convert glucose to ethanol and carbon dioxide in the absence of air.]),
  ("B", [the dichromate is reduced from Cr(VI), orange, to Cr(III), green, as the alcohol is oxidised.]),
  ("B", [weak refers to the extent of ionisation, not to the concentration: only about 1 % of the molecules ionise.]),
))

#concept-box("Carry this into Chapter 4")[
  The ester formed at the end of section 3.6 is the first member of the next family. Chapter 4 takes the acid and the alcohol you have just met, joins them with the loss of water, and follows that idea into the fats and oils of the kitchen, the soap made from them, and the polymers made by joining thousands of small molecules in the same way.
]

#include "drill_ch03.typ"
