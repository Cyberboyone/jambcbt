#import "template.typ": *

#current-chapter.update("Chapter 4: Plant Nutrition — Photosynthesis")
#pagebreak()

#chapter-opener(
  4,
  "Plant Nutrition: Photosynthesis",
  subtitle: "The Leaf as a Photosynthetic Organ, Chloroplast Structure, Light and Dark Reactions, Limiting Factors, and the Experiments the Examiner Names",
  syllabus-ref: "Sec. B • Topic 3",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Write the balanced equation for photosynthesis and say where each raw material enters.",
    "Relate the structure of the leaf to its function, layer by layer.",
    "Distinguish the light-dependent from the light-independent reaction.",
    "Explain, with a graph, what a limiting factor is.",
    "Describe the food tests and the experiments that prove photosynthesis needs light and chlorophyll.",
  ),
  hotspots: (
    "\"The products of photosynthesis are …\" — glucose and oxygen, never “carbon dioxide and water”.",
    "\"Chlorophyll is found in the …\" — chloroplasts of the palisade mesophyll.",
    "\"Which factor is limiting at point X on the graph?\" — the one that, when increased, raises the rate.",
    "\"The fate of glucose\" — respiration, starch storage, cellulose, sucrose transport, amino acids.",
    "\"Why is the upper epidermis transparent?\" — to let light reach the palisade cells.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Writing the equation backwards — carbon dioxide and water are the *reactants*, not the products. (2) Saying photosynthesis makes “sugar and oxygen” without naming *glucose*; the mark is for glucose. (3) Claiming that respiration stops in daylight — it does not; photosynthesis merely outpaces it.",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 The Equation

Photosynthesis is the process by which green plants use light energy to convert carbon dioxide and water into glucose and oxygen. It is the entry point of almost all energy into the living world.

#diagram-fig("diagrams/ch04_photosynthesis.svg",
  "Photosynthesis: raw materials on the left, products on the right, and the conditions written across the arrow.")

#formula-box("The equation, in words, in symbols, and with the conditions")[
  #text(size: 10.2pt)[
    *In words:* carbon dioxide + water → glucose + oxygen, in the presence of light and chlorophyll.

    *In symbols:* carbon dioxide + water → glucose + oxygen, written

    #align(center)[#text(font: "DejaVu Sans", size: 12.4pt, weight: "bold", fill: jamb-navy)[6CO₂ + 6H₂O → C₆H₁₂O₆ + 6O₂]]

    with *light* and *chlorophyll* written above the arrow. The sixes matter if the question asks for a balanced equation; without them, the marks are usually for the names only.
  ]
]

#table(
  columns: (1fr, 1.35fr, 1.35fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Substance],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it comes from],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it enters the leaf],
  ),

  [Carbon dioxide], [The air], [Diffuses through the stomata, then through the air spaces of the spongy mesophyll],
  [Water], [The soil], [Absorbed by root hairs, carried up the xylem],
  [Light], [The sun (or a lamp)], [Reaches the palisade cells through the transparent epidermis and cuticle],
  [Chlorophyll], [Made by the plant], [Held inside the chloroplasts — it is not a raw material, it is the trap for light],
)

#trap-box("Reactants are not products")[
  The commonest error in the whole volume is reversing the equation. *Carbon dioxide and water go in; glucose and oxygen come out.* A quick check: a plant takes in what we breathe out, and gives out what we breathe in. If your equation has oxygen as a reactant, it is the equation for *respiration*, not photosynthesis.
]

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 The Leaf — Structure for Function

#diagram-fig("diagrams/ch04_leaf.svg",
  "Vertical section of a leaf. Every layer in the diagram has a job, and the examiner asks about each one.")

#table(
  columns: (1.2fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Adaptation for photosynthesis],
  ),

  [*Large, flat, thin lamina*], [A large surface area to catch light and to allow gases to reach the cells quickly.],
  [*Waxy cuticle*], [Transparent, so light passes through; waterproof, so water loss is reduced.],
  [*Upper epidermis*], [Transparent, one cell thick, no chloroplasts — light reaches the palisade layer with little loss.],
  [*Palisade mesophyll*], [Cells packed with chloroplasts and arranged in rows near the upper surface, where the light is strongest.],
  [*Spongy mesophyll*], [Loosely packed with large air spaces, so carbon dioxide can diffuse to every cell.],
  [*Vascular bundles (veins)*], [Xylem brings water up to the leaf; phloem carries sucrose away to the rest of the plant.],
  [*Guard cells and stomata*], [Open to let carbon dioxide in and oxygen out; close to reduce water loss when the plant is under stress.],
  [*Chloroplasts*], [Contain chlorophyll, which absorbs red and blue light and reflects green — the reason leaves look green.],
)

#worked-example(
  1,
  "Why is a leaf thin?",
  tier: "FOUNDATION",
  [Explain two ways in which the thinness of a leaf is an advantage for photosynthesis.],
  [
    First, a thin leaf means a *short diffusion distance* for carbon dioxide from the stomata to the chloroplasts, so the gas reaches the cells quickly and the rate of photosynthesis stays high.

    Second, a thin leaf allows light to pass through the whole depth of the leaf, so the cells in the lower layers still receive some light and the total light absorbed is greater.

    *Answer:* shorter diffusion pathway for gases and deeper light penetration — both raise the rate of photosynthesis.
  ],
)

#worked-example(
  2,
  "The transparent epidermis",
  tier: "UTME STANDARD",
  [The upper epidermis of a leaf contains no chloroplasts. Explain why this is an advantage.],
  [
    Chloroplasts are green because chlorophyll absorbs red and blue light and reflects green. If the upper epidermal cells were packed with chloroplasts, they would absorb much of the incoming light before it reached the palisade mesophyll.

    By being transparent and colourless, the epidermis lets almost all the light through to the layer that is best placed to use it.

    *Answer:* a transparent, chloroplast-free epidermis transmits the maximum light to the palisade cells, where photosynthesis is concentrated.
  ],
)

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 The Chloroplast and the Two Reactions

A chloroplast has three parts worth naming: the *grana* (stacks of flattened discs called thylakoids, holding the chlorophyll), the *stroma* (the fluid around them, holding the enzymes), and the *double membrane* enclosing the whole organelle.

#table(
  columns: (1.1fr, 1.5fr, 1.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Light-dependent reaction],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Light-independent reaction],
  ),

  [Where], [In the grana (thylakoid membranes)], [In the stroma],
  [Needs light?], [Yes — directly], [No — it can continue in darkness if the products of the first stage are available],
  [Inputs], [Water, light energy, chlorophyll], [Carbon dioxide, hydrogen from stage one, energy from ATP],
  [Outputs], [Oxygen (from splitting water), ATP and hydrogen], [Glucose],
  [Name], [Photolysis of water / light reaction], [Calvin cycle / dark reaction],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[What happens to the glucose]
  #v(4pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    [
      • *Respiration* — burnt for energy;
      • converted to *starch* and stored in leaves, roots or tubers;
      • made into *cellulose* for cell walls;
    ],
    [
      • converted to *sucrose* and carried in the phloem;
      • combined with nitrates to make *amino acids* and proteins;
      • converted to *fats and oils* for storage in seeds.
    ],
  )
]

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 Limiting Factors

Anything that slows photosynthesis when it is in short supply is a *limiting factor*. The three the syllabus names are *light intensity*, *carbon dioxide concentration* and *temperature*.

#diagram-fig("diagrams/ch04_limiting_factors.svg",
  "The rate of photosynthesis rises with each factor and then levels off — the levelling off is the signature of a limiting factor.")

#concept-box("How to read a limiting-factor graph")[
  On a rate-against-factor graph, the *rising* part shows the factor in question is limiting. Where the line *levels off*, something else has become limiting. If raising the light no longer raises the rate, the limiting factor is carbon dioxide or temperature — and the way to find out which is to change one of them.
]

#worked-example(
  3,
  "Reading the graph",
  tier: "UTME STANDARD",
  [A graph of the rate of photosynthesis against light intensity rises steeply, then becomes flat above a certain light intensity. Explain why the graph flattens.]
  ,
  [
    While the light is the limiting factor, each increase in intensity supplies more energy to the chlorophyll, so more glucose is made and the rate rises.

    Once the light is bright enough, something else — usually the *carbon dioxide concentration* or the *temperature* — becomes limiting. The enzymes and the supply of carbon dioxide cannot work any faster, so extra light makes no difference and the line levels off.

    *Answer:* another factor has become limiting; raising the light beyond that point cannot raise the rate.
  ],
)

#worked-example(
  4,
  "Percentage composition of the air",
  tier: "JAMB CHALLENGE",
  [A leaf is enclosed in a sealed transparent chamber in bright sunlight. Explain what happens to the carbon dioxide concentration inside the chamber over the next hour.]
  ,
  [
    In bright sunlight the leaf photosynthesises faster than it respires, so it takes in carbon dioxide faster than it releases it. The carbon dioxide concentration in the chamber therefore *falls*.

    As the concentration falls, carbon dioxide itself becomes the limiting factor: the rate of photosynthesis slows until it equals the rate of respiration. At that point the concentration stops falling — a compensation point.

    At the same time the *oxygen* concentration rises, because photosynthesis releases oxygen faster than respiration uses it.

    *Answer:* carbon dioxide falls and oxygen rises, until photosynthesis is limited by the carbon dioxide that remains.
  ],
)

// ============================================================================
// SECTION 4.5
// ============================================================================
== 4.5 The Experiments

The examiner frequently asks for the *evidence* that a plant has photosynthesised. The standard test is the *starch test*.

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Testing a leaf for starch — the six steps]
  #v(4pt)
  + *Boil* the leaf in water for one minute — this kills it and breaks down the cell membranes.
  + *Turn off the Bunsen* and place the leaf in *boiling ethanol* — this removes the chlorophyll so that any colour change can be seen.
  + *Wash* the leaf in warm water — to soften it and remove the ethanol.
  + *Add iodine solution*.
  + A *blue-black* colour means starch is present, so photosynthesis has taken place.
  + *Brown* (the colour of iodine) means no starch — photosynthesis has not occurred.
]

#table(
  columns: (1.5fr, 2.2fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Investigation],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it proves],
  ),

  [Destarch a plant by leaving it in the dark for 48 hours, then expose one leaf to light and test both], [Only the illuminated leaf turns blue-black — *light is needed*],
  [Use a variegated leaf (green edges, white centre)], [Only the green parts stain — *chlorophyll is needed*],
  [Enclose a leaf in a flask with potassium hydroxide to absorb carbon dioxide], [The leaf does not stain — *carbon dioxide is needed*],
  [Place a destarched leaf in a bell jar with no carbon dioxide but with light], [No starch — confirming carbon dioxide as a raw material],
  [Use a leaf partly covered with black paper], [Only the exposed part stains — the covered part received no light],
)

#trap-box("Two details the examiner rewards")[
  *Ethanol must be boiled in a water bath, never over a naked flame* — ethanol is highly flammable. And the chlorophyll is removed *before* the iodine is added, otherwise the green colour would hide the blue-black result.

  If a question asks why the plant is destarched first, the answer is: so that any starch found afterwards must have been made *during the experiment*.
]

// ============================================================================
// SECTION 4.6
// ============================================================================
== 4.6 Mineral Requirements

Photosynthesis needs more than carbon dioxide and water. A plant grown in *water culture* (a solution of mineral salts) shows deficiency symptoms if one salt is left out.

#table(
  columns: (0.9fr, 2.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Use in the plant],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Deficiency symptom],
  ),

  [Nitrogen], [Making amino acids, proteins and chlorophyll], [Stunted growth; leaves turn yellow (chlorosis)],
  [Magnesium], [A component of chlorophyll], [Yellow leaves between the veins],
  [Phosphorus], [Cell membranes, DNA, ATP], [Poor root growth; dark, purplish leaves],
  [Potassium], [Enzyme action; water balance], [Yellow edges to the leaves; weak stems],
  [Iron], [Needed to make chlorophyll], [Young leaves yellow],
  [Calcium], [Cell walls; growth of root tips], [Curled, dying shoot tips],
)

// ============================================================================
// SECTION 4.7 — CHECKLIST
// ============================================================================
== 4.7 Chapter 4 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + write the word and the balanced symbol equation for photosynthesis;
  + name five ways in which a leaf is adapted and explain each one;
  + label a section of a leaf, including the cuticle, epidermis, palisade, spongy mesophyll, vein and stoma;
  + state the products of the light-dependent and light-independent reactions and where each occurs;
  + list five fates of the glucose made;
  + explain what a limiting factor is and read a rate graph;
  + describe the starch test in order and explain what each step is for;
  + name the minerals a plant needs and one deficiency symptom of each.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A leaf is a flat, thin, transparent-topped, gas-filled, veined solar panel filled with chloroplasts. Light splits water in the grana, releasing oxygen; the hydrogen and energy then fix carbon dioxide into glucose in the stroma. Whichever of light, carbon dioxide or temperature is shortest sets the pace.
  ]
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the equation, the site, the leaf's adaptations and the limiting factors.", width: 100%)

// ============================================================================
// SECTION 4.8 — TWO-MINUTE SET
// ============================================================================
== 4.8 Chapter 4 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [The products of photosynthesis are], [carbon dioxide and water], [glucose and oxygen], [starch and carbon dioxide], [oxygen and water])
#mcq(2, [The layer of the leaf that contains most chloroplasts is the], [upper epidermis], [spongy mesophyll], [palisade mesophyll], [lower epidermis])
#mcq(3, [In the starch test, the leaf is boiled in ethanol in order to], [kill the cells], [remove the chlorophyll], [soften the leaf], [dissolve the starch])
#mcq(4, [If the rate of photosynthesis stops rising as light intensity increases, the limiting factor could be], [chlorophyll], [carbon dioxide concentration], [leaf area], [water])

#answer-key-grid(("B", "C", "B", "B"))
]


#include "drill_ch04.typ"
