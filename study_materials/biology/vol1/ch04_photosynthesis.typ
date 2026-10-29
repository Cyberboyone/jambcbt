#import "template.typ": *

#current-chapter.update("Chapter 4: Plant Nutrition")
#pagebreak()

#chapter-opener(
  4,
  "Plant Nutrition: Photosynthesis",
  subtitle: "The Equation, the Chloroplast, the Leaf in Section, Limiting Factors, and the Mineral Salts a Plant Cannot Do Without",
  syllabus-ref: "Sec. B • Topic 3",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Write the balanced equation for photosynthesis and name the conditions.",
    "Relate the structure of the leaf to its function, layer by layer.",
    "Explain how light, carbon dioxide and temperature limit the rate, and draw the graphs.",
    "State the fate of the glucose made and the source of each raw material.",
    "Name the minerals a plant needs and the deficiency each produces.",
  ),
  hotspots: (
    "\"The products of photosynthesis are …\" — glucose and oxygen (never carbon dioxide).",
    "\"The site of photosynthesis is …\" — the chloroplast, specifically the palisade mesophyll.",
    "\"Which factor limits the rate at a given point?\" — the one that is *not* in excess.",
    "\"The mineral needed for chlorophyll is …\" — magnesium.",
    "\"The gas that enters the leaf through the stomata during the day is …\" — carbon dioxide.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Writing carbon dioxide and water as *products* — they are the *raw materials*. (2) Forgetting that the *oxygen* comes from water, not from carbon dioxide. (3) Naming the *palisade* layer as the site of gas exchange — gases diffuse through the *spongy mesophyll* and out of the stomata.",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 The Equation and the Conditions

Photosynthesis is the process by which green plants use light energy to build glucose from carbon dioxide and water, releasing oxygen.

#formula-box("The equation the examiner wants")[
  #align(center)[
    #text(size: 11.5pt)[carbon dioxide + water → glucose + oxygen]
  ]
  #align(center)[
    #text(size: 9.6pt, fill: jamb-slate)[$6 "CO"_2 + 6 "H"_2 "O" -> "C"_6 "H"_12 "O"_6 + 6 "O"_2$]
  ]
  #v(3pt)
  #text(size: 9.6pt)[Conditions: *light*, *chlorophyll*, and the enzymes in the chloroplast. Energy is stored in the glucose; light energy becomes chemical energy.]
]

#table(
  columns: (1fr, 1.6fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Raw materials],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Products],
  ),

  [*Gas*], [Carbon dioxide, through the stomata], [Oxygen, out through the stomata],
  [*Liquid*], [Water, absorbed by the root hairs], [—],
  [*Energy*], [Light, absorbed by chlorophyll], [Chemical energy in glucose],
)

#v(4pt)

#concept-box("What happens to the glucose")[
  It is used in four ways: *respiration* (for energy), converted to *starch* for storage, converted to *sucrose* and carried in the phloem to growing parts, and combined with nitrogen to make *proteins* and with other substances to make *cellulose*, *lipids* and *vitamins*. The oxygen is either used in the plant's own respiration or released through the stomata.
]

#worked-example(
  1,
  "Tracing the atoms",
  tier: "UTME STANDARD",
  [State the source of (a) the carbon in glucose, (b) the oxygen released, and (c) the hydrogen in glucose.],
  [
    (a) The carbon comes from *carbon dioxide* absorbed through the stomata.

    (b) The oxygen released comes from *water*, split by light energy — not from carbon dioxide.

    (c) The hydrogen comes from *water*, absorbed by the roots and carried up in the xylem.

    *Answer:* carbon from carbon dioxide; oxygen and hydrogen from water.
  ],
)

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 The Chloroplast and the Leaf

#concept-box("The chloroplast")[
  A chloroplast is an organelle bounded by a double membrane, containing stacks of membranes called *grana* (singular: granum) and a fluid called the *stroma*. The pigment *chlorophyll*, held in the grana, absorbs mainly red and blue light and reflects green — which is why leaves look green.
]

#diagram-fig("diagrams/ch04_leaf.svg",
  "A leaf in vertical section. Each layer has one job: wax for protection, palisade for light, spongy for gas, and the stomata for exchange.")

#table(
  columns: (1.05fr, 2.2fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Adaptation and function],
  ),

  [*Waxy cuticle*], [Transparent and waterproof: lets light through and reduces water loss.],
  [*Upper epidermis*], [A single layer of transparent cells with no chloroplasts — it does not block the light.],
  [*Palisade mesophyll*], [Tall, closely packed cells with *many chloroplasts*, near the upper surface — the main site of photosynthesis.],
  [*Spongy mesophyll*], [Loosely packed cells with large air spaces, so that carbon dioxide and oxygen can diffuse quickly.],
  [*Veins (xylem and phloem)*], [Deliver water and mineral salts and remove the products of photosynthesis.],
  [*Lower epidermis with stomata*], [Pores that let gases in and out; the *guard cells* open and close them.],
)

#v(4pt)

#trap-box("Stomata are not always open")[
  During the day the stomata are open for carbon dioxide, and water is lost by transpiration. At night they close, which is why most transpiration happens during the day. A plant wilting at noon has closed some stomata to conserve water — and by doing so has *reduced* its own photosynthesis.
]

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 Limiting Factors

Three factors control the rate of photosynthesis: *light intensity*, *carbon dioxide concentration* and *temperature*. At any moment one of them is in shortest supply and sets the ceiling on the rate — that factor is said to *limit* the process.

#diagram-fig("diagrams/ch04_limiting.svg",
  "The classic limiting-factor graph. Raising light intensity increases the rate only up to the point where something else — here carbon dioxide — becomes the limit.")

#table(
  columns: (1.1fr, 1.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[As it increases],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it stops],
  ),

  [Light intensity], [Rate rises, then levels off], [Another factor (often CO₂) becomes limiting],
  [Carbon dioxide], [Rate rises, then levels off], [Light or temperature becomes limiting],
  [Temperature], [Rate rises to an optimum, then falls sharply], [The enzymes are denatured above about 40 °C],
)

#v(4pt)

#worked-example(
  2,
  "Reading the graph",
  tier: "UTME STANDARD",
  [In an experiment, increasing light intensity above a certain level no longer increased the rate of photosynthesis. Suggest two reasons, and state what could be done to confirm each.],
  [
    Either *carbon dioxide concentration* is now too low, or the *temperature* is below the optimum — in either case that factor, not light, limits the rate.

    To test: raise the carbon dioxide concentration (for example by adding hydrogencarbonate to the water) and see whether the rate increases; separately, raise the temperature in steps and record the rate at each.

    If the rate rises when CO₂ is raised, CO₂ was the limiting factor; if it rises with temperature, temperature was.
  ],
)

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 Mineral Salts

Photosynthesis makes carbohydrate, but a plant also needs mineral salts from the soil, absorbed as ions in solution by the root hairs.

#table(
  columns: (1.1fr, 1.5fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Used for],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Deficiency symptom],
  ),

  [*Nitrogen*], [Proteins, chlorophyll, nucleic acids], [Stunted growth; older leaves turn yellow],
  [*Magnesium*], [The chlorophyll molecule itself], [Yellowing between the veins of older leaves],
  [*Iron*], [Formation of chlorophyll], [Young leaves yellow],
  [*Phosphorus*], [Root growth, energy transfer, DNA], [Poor roots; purplish leaves],
  [*Potassium*], [Water regulation, enzyme action], [Brown leaf margins; weak stems],
  [*Calcium*], [Cell walls, growth of shoot tips], [Curled, dying shoot tips],
)

#v(4pt)

#worked-example(
  3,
  "Diagnosing a deficiency",
  tier: "JAMB CHALLENGE",
  [A farmer's tomato plants have pale yellow leaves with green veins, and growth has slowed. Name the most likely deficiency, state the element involved and explain why photosynthesis is affected.],
  [
    Yellowing *between* the veins while the veins stay green is the classic sign of *magnesium* deficiency.

    Magnesium sits at the centre of every chlorophyll molecule, so without it the plant cannot make chlorophyll; with less chlorophyll it absorbs less light and photosynthesises more slowly, which shows up as slow growth.

    *Answer:* magnesium; without it chlorophyll cannot be formed, so light absorption and photosynthesis fall.
  ],
)

// ============================================================================
// SECTION 4.5 — CHECKLIST
// ============================================================================
== 4.5 Chapter 4 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + write the equation for photosynthesis, word and symbol, with the conditions;
  + name the raw materials and the products, and say where each comes from;
  + label the layers of a leaf in section and give the job of each;
  + explain what a limiting factor is and read a limiting-factor graph;
  + name four uses of the glucose made in photosynthesis;
  + name six mineral elements and the deficiency symptom of each.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Light, chlorophyll, carbon dioxide and water go in; glucose and oxygen come out. The leaf is built to gather light at the top, to let gases move in the middle, and to open and close its pores at the bottom. Whatever is in shortest supply sets the rate.
  ]
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the equation, the leaf, the limiting factors and the minerals.", width: 62%)

// ============================================================================
// SECTION 4.6 — TWO-MINUTE SET
// ============================================================================
== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The raw materials of photosynthesis are], [glucose and oxygen], [carbon dioxide and water], [oxygen and water], [carbon dioxide and glucose])
#mcq(2, [The layer of the leaf with the most chloroplasts is the], [upper epidermis], [spongy mesophyll], [palisade mesophyll], [lower epidermis])
#mcq(3, [The element present in the chlorophyll molecule is], [nitrogen], [iron], [magnesium], [phosphorus])
#mcq(4, [The oxygen released in photosynthesis comes from], [carbon dioxide], [water], [glucose], [the air])

#answer-key-grid(("B", "C", "C", "B"))
