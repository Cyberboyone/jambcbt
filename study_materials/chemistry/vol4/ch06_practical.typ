#import "template.typ": *

#current-chapter.update("Chapter 6: Practical Chemistry")
#pagebreak()

#chapter-opener(
  6,
  "Practical Chemistry",
  subtitle: "Apparatus and its Uses, Measurement and Significant Figures, the Separation Techniques, Qualitative Analysis of Gases, Cations and Anions, Volumetric Analysis, the Preparation of Salts, Purity and Yield, and Laboratory Safety",
  syllabus-ref: "Sec. E • Practical",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the apparatus used in the school laboratory and state what each is for.",
    "Choose a separation technique from the property that differs between the components.",
    "Carry out and describe the tests for the common gases, cations and anions.",
    "Describe a titration and calculate a concentration from a titre.",
    "Describe the preparation of a soluble salt by neutralisation and of an insoluble salt by precipitation.",
    "Explain how purity is checked by melting point, and how a yield is calculated.",
    "State the safety rules that apply to heating, smelling a gas and diluting an acid.",
  ),
  hotspots: (
    "“The apparatus used to measure 25.0 cm³ accurately is …” — a pipette, not a measuring cylinder.",
    "“The gas that turns limewater milky is …” — carbon dioxide.",
    "“A white precipitate soluble in excess sodium hydroxide is …” — Zn²⁺, Al³⁺ or Pb²⁺.",
    "“The test for a sulphate is …” — barium chloride solution, acidified with dilute HCl, giving a white precipitate.",
    "“The flame colour of potassium is …” — lilac; sodium is golden yellow; calcium is brick-red.",
    "“Rf = …” — distance moved by the spot divided by the distance moved by the solvent front.",
  ),
  trap-summary: "Three slips. (1) Using a measuring cylinder where a pipette or burette is needed: a cylinder is accurate to about 1 cm³, a pipette to 0.05 cm³, and the question turns on that difference. (2) Adding barium chloride without acidifying: a white precipitate might be a carbonate or a sulphite, and acid dissolves both. (3) Writing “the solution turned cloudy” when the mark is for *what* the cloudiness was — a white precipitate of silver chloride, and the formula.",
)

// ============================================================================
== 6.1 The Apparatus and What it is For

#table(
  columns: (1.25fr, 1.6fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Apparatus],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Accuracy or caution],
  ),
  [burette], [delivers a variable volume, read to 0.05 cm³], [rinse with the solution it will hold; read at the bottom of the meniscus],
  [pipette], [delivers one fixed volume, usually 25.0 cm³], [rinse with the solution; do not blow out the last drop],
  [volumetric flask], [makes up a solution to a fixed volume, usually 250 cm³], [add the solid, dissolve, then make up to the mark],
  [conical flask], [holds the solution being titrated], [swirl, do not stopper],
  [measuring cylinder], [measures an approximate volume], [accurate to about 1 cm³ — never use it for a titre],
  [thermometer], [measures temperature], [bulb fully immersed, not touching the vessel],
  [evaporating dish], [evaporates a solution to crystallisation], [heat gently, stop before dryness],
  [filter funnel and paper], [separates an insoluble solid from a liquid], [fold the paper, wet it, run the liquid down a rod],
  [separating funnel], [separates two immiscible liquids], [vent it, and run off the lower layer first],
  [liebig condenser], [cools a vapour back to a liquid], [water enters at the bottom and leaves at the top],
  [desiccator], [keeps a solid dry while it cools], [never put a hot crucible straight into it],
)

#concept-box("Read the meniscus at eye level")[
  Water wets glass, so its surface curves down at the edges and the lowest point of the curve is the volume. Reading from above the meniscus gives too small a volume; reading from below gives too large a one. The examiner's mark is for the phrase *at eye level, at the bottom of the meniscus*, and for the correct number of decimal places — a burette is read to 0.05 cm³, so 21.50, not 21.5.
]

// ============================================================================
== 6.2 Measurement, Significant Figures and Error

Every measurement carries an uncertainty, and the number of figures you write should reflect it.

#formula-box("The three numbers of a practical calculation")[
  *Percentage error* = (uncertainty ÷ reading) × 100

  *Percentage yield* = (mass obtained ÷ mass expected) × 100

  *Rf* = distance moved by the spot ÷ distance moved by the solvent front
]

#table(
  columns: (1.3fr, 1.4fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Source of error],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it is reduced],
  ),
  [reading the burette from above], [systematic], [read at eye level, against a white card],
  [a dirty burette that does not drain cleanly], [systematic], [rinse with the solution, then discard the rinse],
  [the indicator changing slightly past the end point], [systematic], [use a pale indicator colour and add dropwise],
  [a drop of titrant clinging to the jet], [random], [touch the drop to the flask wall and wash it down],
  [temperature different from the calibration temperature], [systematic], [record the temperature; correct if required],
)

// ============================================================================
== 6.3 Separation Techniques

#diagram-fig("diagrams/ch06_separation.svg",
  "Choosing a separation. The question to ask is always the same one: what property differs between the two components, and which technique exploits it?", width: 100%)

#table(
  columns: (1.15fr, 1.5fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Technique],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Separates],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked example],
  ),
  [filtration], [an insoluble solid from a liquid], [sand from water; a precipitate from the solution it formed in],
  [evaporation], [a dissolved solid from its solvent], [salt from brine — but only if the salt does not decompose],
  [crystallisation], [a dissolved solid, in a purer form], [copper(II) sulphate crystals from its solution],
  [simple distillation], [a solvent from a non-volatile solute], [pure water from sea water],
  [fractional distillation], [two miscible liquids with different boiling points], [petrol from crude oil; ethanol from water],
  [separating funnel], [two immiscible liquids], [kerosene from water],
  [sublimation], [a solid that sublimes from one that does not], [iodine from sand; ammonium chloride from sodium chloride],
  [chromatography], [substances with different solubilities in a solvent], [the pigments of a leaf; the dyes of an ink],
  [magnetic separation], [a magnetic solid from a non-magnetic one], [iron filings from sulphur],
)

#diagram-fig("diagrams/ch06_recrystallisation.svg",
  "Recrystallisation. The impurity is either insoluble, and filtered off while hot, or soluble, and left behind in the cold mother liquor.", width: 100%)

#concept-box("Why hot filtration purifies")[
  A solid is more soluble in a hot solvent than in a cold one. Dissolving the impure solid in the *minimum* of hot solvent therefore gives a saturated solution; filtering while hot removes any insoluble impurity; cooling slowly makes the pure substance crystallise, because it can no longer stay dissolved. The soluble impurity remains in the cold mother liquor because there is too little of it to saturate the solution. Wash the crystals with a little cold solvent, not with water, and dry them between filter papers.
]

// ============================================================================
== 6.4 Qualitative Analysis

== 6.4.1 The Gases

#diagram-fig("diagrams/ch06_gas_tests.svg",
  "The gas tests. A test is always stated as what you did, what you saw and what it proves.", width: 100%)

== 6.4.2 The Cations

#diagram-fig("diagrams/ch06_cation_flow.svg",
  "The cation flow. Add sodium hydroxide drop by drop, then in excess, then repeat with ammonia — three observations identify most of the ions the syllabus lists.", width: 100%)

#table(
  columns: (auto, 1.2fr, 1.35fr, 1.1fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[With NaOH],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[With excess NH₃],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Flame],
  ),
  [Na⁺], [no precipitate], [no precipitate], [golden yellow],
  [K⁺], [no precipitate], [no precipitate], [lilac],
  [Ca²⁺], [white precipitate, insoluble in excess], [no precipitate], [brick-red],
  [Mg²⁺], [white precipitate, insoluble in excess], [no precipitate], [no colour],
  [Al³⁺], [white precipitate, soluble in excess], [white precipitate, insoluble in excess], [no colour],
  [Zn²⁺], [white precipitate, soluble in excess], [soluble in excess], [no colour],
  [Pb²⁺], [white precipitate, soluble in excess], [insoluble in excess], [no colour],
  [Cu²⁺], [pale blue precipitate, insoluble in excess], [dissolves to a deep blue solution], [blue-green],
  [Fe²⁺], [green precipitate, insoluble in excess], [green precipitate], [no colour],
  [Fe³⁺], [red-brown precipitate, insoluble in excess], [red-brown precipitate], [no colour],
  [NH₄⁺], [no precipitate; ammonia on warming], [—], [no colour],
)

== 6.4.3 The Anions

#table(
  columns: (1fr, 1.6fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Anion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation],
  ),
  [CO₃²⁻], [add dilute HCl], [effervescence; the gas turns limewater milky],
  [SO₃²⁻], [add dilute HCl, warm], [choking SO₂; the gas turns acidified dichromate green],
  [SO₄²⁻], [add barium chloride solution, acidified with dilute HCl], [white precipitate, insoluble in the acid],
  [Cl⁻], [add dilute HNO₃, then silver nitrate solution], [white precipitate, soluble in dilute ammonia],
  [Br⁻], [add dilute HNO₃, then silver nitrate solution], [cream precipitate, soluble in concentrated ammonia],
  [I⁻], [add dilute HNO₃, then silver nitrate solution], [yellow precipitate, insoluble in ammonia],
  [NO₃⁻], [add NaOH, then Devarda's alloy or aluminium foil, warm], [ammonia gas evolved],
  [S²⁻], [add dilute HCl, or lead(II) ethanoate paper], [rotten-egg gas; the paper turns black],
)

#trap-box("Acidify before you precipitate")[
  Barium chloride gives a white precipitate with sulphate, but also with carbonate and with sulphite. Acidifying with dilute hydrochloric acid dissolves the carbonate and the sulphite and leaves the barium sulphate untouched, so the white precipitate that *survives* the acid is the proof. The same logic applies to silver nitrate: acidify with dilute nitric acid first, or a silver carbonate precipitate will be mistaken for silver chloride.
]

// ============================================================================
== 6.5 Volumetric Analysis

#diagram-fig("diagrams/ch06_titration.svg",
  "The titration set. The acid goes in the burette because the burette can deliver a variable volume drop by drop; the alkali goes in the pipette because its volume must be exact.", width: 100%)

#formula-box("The titration calculation, in four lines")[
  + $n(op("acid")) = c(op("acid")) times V(op("acid")) / 1000$
  + Use the equation to get the mole ratio.
  + $n(op("alkali")) = n(op("acid")) times$ (ratio from the equation)
  + $c(op("alkali")) = n(op("alkali")) times 1000 / V(op("alkali"))$
]

#concept-box("Concordant titres")[
  The first titration is a *rough* one: it is run quickly to find the end point and is not used in the average. The next two or three are run dropwise near the end point. Titres that agree within 0.10 cm³ are *concordant*, and only those are averaged. A titre that differs by more than that is discarded, not averaged in — averaging a bad titre is the commonest arithmetic error in the practical paper.
]

// ============================================================================
== 6.6 Preparing Salts

A salt is prepared by one of four routes, and the route is decided by whether the salt is soluble and whether the base is soluble.

#table(
  columns: (1.25fr, 1.7fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Route],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Used when],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),
  [acid + excess insoluble base, filter, crystallise], [the salt is soluble and the base is not], [CuO + H₂SO₄ → CuSO₄ + H₂O],
  [acid + carbonate], [the salt is soluble and the carbonate is insoluble], [CaCO₃ + 2HCl → CaCl₂ + H₂O + CO₂],
  [acid + alkali, by titration], [both are soluble, so the end point must be found], [NaOH + HCl → NaCl + H₂O],
  [two solutions mixed, precipitate filtered], [the salt is insoluble], [AgNO₃ + NaCl → AgCl↓ + NaNO₃],
)

#concept-box("Why the excess base is filtered off")[
  You cannot weigh out exactly the right amount of a solid base for an acid, because the solid is not pure and the reaction is not visible. So the base is added *in excess*, the acid is used up completely, and the unreacted solid is filtered off. What passes through the paper is a solution containing only the salt — and evaporating it slowly gives pure crystals. The alternative, acid plus soluble alkali, gives no visible end point, so it must be done by titration with an indicator.
]

#formula-box("Crystals, and how to get them")[
  Evaporate the filtrate to about half its volume, then leave it to cool slowly. Slow cooling gives large crystals; fast cooling gives a powder. Filter the crystals, press them between filter papers, and dry them in a desiccator or in air — not over a flame, which drives off the water of crystallisation and gives the anhydrous salt.
]

// ============================================================================
== 6.7 Purity, Yield and Safety

#table(
  columns: (1.15fr, 1.55fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pure substance],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Impure substance],
  ),
  [melting point], [sharp, at one temperature, close to the data book value], [lower, and over a range of several degrees],
  [boiling point], [constant, at one temperature], [rises during the distillation],
  [chromatography], [one spot], [two or more spots],
  [density], [matches the data book value], [differs from it],
)

#table(
  columns: (1fr, 2.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Hazard],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
  ),
  [concentrated acid], [add the acid to the water, slowly and with stirring — never water to acid],
  [heating a flammable liquid], [use a water bath, never a naked flame],
  [smelling a gas], [waft the vapour towards your nose with your hand; never put your nose to the mouth of the tube],
  [heating a test tube], [point the mouth away from everyone, and move the tube through the flame],
  [broken glass], [sweep up with a brush and pan, never with the fingers],
  [waste chemicals], [never return the excess to the stock bottle; dispose of it as instructed],
)

#worked-example(
  1,
  "A titration calculation",
  [25.0 cm³ of sodium hydroxide solution is titrated with hydrochloric acid of concentration 0.100 mol dm⁻³. The mean of the concordant titres is 22.50 cm³. Calculate the concentration of the sodium hydroxide.],
  [
    $n(op("HCl")) = 0.100 times 22.50 / 1000 = 2.25 times 10^(-3)$ mol.

    $op("NaOH") + op("HCl") -> op("NaCl") + op("H")_2 op("O")$, so the ratio is one to one and $n(op("NaOH")) = 2.25 times 10^(-3)$ mol in 25.0 cm³.

    $c(op("NaOH")) = 2.25 times 10^(-3) times 1000 / 25.0 = 0.0900$ mol dm⁻³.

    *Check.* The acid is the more concentrated solution, so it should need the smaller volume — and it does, 22.50 cm³ against 25.0 cm³. The ratio of the concentrations must be the inverse of the ratio of the volumes.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  2,
  "Percentage yield of a preparation",
  source: "practical-style",
  [16.0 g of copper(II) oxide is added to excess dilute sulphuric acid and the solution is crystallised. 45.0 g of hydrated copper(II) sulphate, CuSO₄·5H₂O, is obtained. Calculate the percentage yield. [$A_r$: Cu = 64, S = 32, O = 16, H = 1]],
  [
    $M(op("CuO")) = 80.0$ and $M(op("CuSO")_4 dot 5op("H")_2 op("O")) = 250$ g mol⁻¹.

    $n(op("CuO")) = 16.0 / 80.0 = 0.200$ mol, and the reaction is one to one, so the theoretical yield is 0.200 mol of the hydrated salt $= 0.200 times 250 = 50.0$ g.

    The percentage yield is $45.0 / 50.0 times 100 = 90.0 %$.

    *Check.* The loss is 5.0 g — crystals left in the mother liquor and on the filter paper, and a little solution spilt. A yield above 100 % would mean the product was still wet or still contained impurity.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  3,
  "An Rf value",
  source: "practical-style",
  [In a chromatogram the solvent front moved 8.0 cm from the origin and a spot of dye moved 6.0 cm. Calculate the Rf, and state what it would mean if the same dye gave a second spot at 3.0 cm in the same solvent.],
  [
    $R_f = 6.0 / 8.0 = 0.75$.

    A second spot at $R_f = 3.0 / 8.0 = 0.38$ would mean that the sample contained *two* substances, not one: a pure compound gives a single spot in a given solvent.

    *Check.* An Rf cannot be greater than 1, because nothing can travel further than the solvent front. A value of exactly 1 would mean the substance was carried with the solvent and did not interact with the paper at all.
  ],
  tier: "UTME STANDARD",
)

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: apparatus, titration, separation and tests.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Practical chemistry is one method repeated: choose the apparatus that measures to the accuracy the question needs, separate by the property that differs, test by adding a reagent and recording what you see, and calculate from the moles. A pipette delivers a fixed volume to 0.05 cm³ and a burette a variable one; a measuring cylinder is for approximate work only. Filtration, crystallisation, distillation and chromatography each exploit a different property. Qualitative analysis is the gas tests, the flame tests and the sodium hydroxide and ammonia observations, with the anion confirmed by an acidified barium or silver salt. The titration gives $n = c V / 1000$ and a concentration; a preparation gives a yield; a melting point and a chromatogram give a purity.
  ]
]

== 6.8 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [The apparatus most suitable for measuring 25.0 cm³ of a solution accurately is a], [measuring cylinder], [pipette], [beaker], [conical flask])
#mcq(2, [A white precipitate is formed when dilute hydrochloric acid is added to a solution, and the gas evolved turns limewater milky. The ion present is], [sulphate], [carbonate], [chloride], [nitrate])
#mcq(3, [A flame test gives a lilac colour. The metal ion present is], [sodium], [potassium], [calcium], [copper])
#mcq(4, [The Rf value of a spot is calculated as], [distance moved by the solvent front ÷ distance moved by the spot], [distance moved by the spot ÷ distance moved by the solvent front], [distance moved by the spot × distance moved by the solvent front], [distance from the origin ÷ the length of the paper])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [a pipette is calibrated to deliver one fixed volume, and 25.0 cm³ to two decimal places is its standard size.]),
  ("B", [effervescence with acid and a gas that turns limewater milky is the carbonate test; a sulphate would give no gas.]),
  ("B", [potassium gives a lilac flame; sodium is golden yellow and calcium brick-red.]),
  ("B", [Rf is the distance the substance travelled divided by the distance the solvent travelled, so it always lies between 0 and 1.]),
))

#concept-box("And now the paper")[
  Six chapters have given you the facts; this chapter has given you the way they are tested at the bench. In the examination hall the practical questions are not a memory test — they are a test of whether you can describe a method in the order it is carried out, and whether you know what you would *see*. Practise writing observations in the form “a white precipitate formed, soluble in excess”, and the marks follow.
]

#include "drill_ch06.typ"
