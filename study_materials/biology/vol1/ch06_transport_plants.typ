#import "template.typ": *

#current-chapter.update("Chapter 6: Transport in Plants")
#pagebreak()

#chapter-opener(
  6,
  "Transport in Plants",
  subtitle: "Root Hair Cells, Osmosis and Active Transport, the Xylem and Phloem, Transpiration, and the Potometer",
  syllabus-ref: "Sec. B • Topic 5",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain how root hair cells absorb water and mineral salts.",
    "Define osmosis, diffusion and active transport, and say where each is used in a plant.",
    "Compare the structure and function of xylem and phloem.",
    "Explain transpiration and the factors that affect its rate.",
    "Describe an experiment to measure the rate of transpiration.",
  ),
  hotspots: (
    "\"Water and mineral salts are transported by the …\" — xylem.",
    "\"Sugar is transported by the …\" — phloem.",
    "\"The loss of water vapour from a leaf is called …\" — transpiration.",
    "\"The movement of water from a dilute to a concentrated solution through a partially permeable membrane\" — osmosis.",
    "\"Root hair cells absorb mineral salts by …\" — active transport, using energy from respiration.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying the *xylem* carries sugar — it carries water and mineral salts only. (2) Writing that transpiration is “breathing” or “respiration” — it is evaporation of water from the leaves. (3) Describing mineral uptake as osmosis; osmosis moves *water*, while mineral salts are taken up by *active transport* against a concentration gradient.",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 Three Ways Substances Move

#table(
  columns: (1.05fr, 1.6fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it happens in a plant],
  ),

  [*Diffusion*], [Movement of particles from a region of higher concentration to a region of lower concentration, down a concentration gradient, without a membrane being needed], [Carbon dioxide into the leaf through the stomata; oxygen out],
  [*Osmosis*], [Movement of *water* from a dilute solution to a more concentrated solution through a *partially permeable membrane*], [Water from the soil into the root hair cell; water from cell to cell across the root],
  [*Active transport*], [Movement of a substance *against* its concentration gradient, using energy from respiration and carrier proteins], [Mineral salts from the soil into the root hair cell],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Why mineral salts need energy]
  #v(3pt)
  #text(size: 10pt)[
    The concentration of mineral salts inside a root hair cell is usually *higher* than in the soil water around it. Water therefore enters by osmosis, but the salts cannot — they would have to move from low concentration to high. The cell spends energy (from the many mitochondria in the root hair) to pump them inwards against the gradient. That is active transport, and it is why plants die in waterlogged, airless soil: without oxygen there is no respiration, and therefore no energy for active transport.
  ]
]

#worked-example(
  1,
  "Which process is which?",
  tier: "FOUNDATION",
  [State the process by which (a) water enters a root hair cell, (b) carbon dioxide enters a leaf, (c) nitrate ions enter a root hair cell from a dilute soil solution.]
  ,[
    (a) *Osmosis* — water moves from the soil solution (higher water potential) into the cell sap (lower water potential) through the partially permeable cell membrane.

    (b) *Diffusion* — carbon dioxide moves from the air, where its concentration is higher, through the stoma into the air spaces of the leaf.

    (c) *Active transport* — the ions are moved against their concentration gradient, using energy from respiration.

    This three-part question is worth three marks every time it appears, and the three answers are always in the same order.
  ],
)

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 The Root Hair Cell

A root hair is a long, thin extension of an epidermal cell. It is the plant's absorbing surface.

#table(
  columns: (1.2fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Advantage],
  ),

  [Long, thin extension], [Greatly increases the surface area for absorption],
  [Thin cell wall and membrane], [Short diffusion distance for water and salts],
  [Many mitochondria], [Supply the energy needed for active transport of mineral salts],
  [No chloroplasts], [The cell is underground and cannot photosynthesise; the space is used for absorption],
  [Large permanent vacuole], [Concentrated cell sap keeps a steep water potential gradient for osmosis],
  [Millions of root hairs together], [A very large total absorbing surface],
)

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 The Xylem and the Phloem

A plant has two transport tissues, and they carry different things in different directions.

#diagram-fig("diagrams/ch06_transpiration.svg",
  "The transpiration pull. Water rises through the xylem while sugar moves through the phloem in both directions.")

#table(
  columns: (1fr, 1.45fr, 1.45fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Xylem],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Phloem],
  ),

  [Cells], [Dead, hollow, with no cytoplasm], [Living, with sieve plates between the cells],
  [Walls], [Thickened with *lignin*], [Cellulose],
  [Carries], [Water and dissolved mineral salts], [Sucrose and amino acids (sugars and proteins)],
  [Direction], [Upwards only — from root to leaf], [Both upwards and downwards],
  [Name of the process], [Transpiration pull], [Translocation],
  [The force that drives it], [Evaporation of water from the leaves], [Pressure from the loading and unloading of sugar],
  [Position in the vascular bundle], [Inner], [Outer],
)

#trap-box("Xylem up, phloem both ways")[
  The single most examined fact: *xylem carries water and mineral salts upwards; phloem carries sugars and amino acids up and down.* If a question says "sucrose" the answer is phloem; if it says "nitrate ions" or "water", the answer is xylem.
]

#worked-example(
  2,
  "Ring-barking a tree",
  tier: "JAMB CHALLENGE",
  [A complete ring of bark is removed from the trunk of a tree. Explain what happens to the tree and why.]
  ,
  [
    The bark contains the *phloem*. Removing a ring of it severs the living transport tissue that carries sugars made in the leaves down to the roots.

    Sugar continues to be made in the leaves, but can no longer reach the roots. It accumulates in the tissues above the ring, which swell, while the roots are starved of sugar and eventually die. When the roots die, water uptake stops, and the whole tree dies.

    The *xylem* is unaffected at first, because it lies deeper in the trunk — which is why the leaves keep making sugar while the roots starve.

    *Answer:* the phloem is destroyed, sugar cannot reach the roots, the roots die, and the tree dies.
  ],
)

// ============================================================================
// SECTION 6.4
// ============================================================================
== 6.4 Transpiration

*Transpiration* is the loss of water vapour from the aerial parts of a plant, mainly through the *stomata* of the leaves. It matters for three reasons:

+ it creates the *transpiration pull* that draws water up the xylem;
+ it carries *mineral salts* up from the roots;
+ it *cools* the leaf, because evaporation removes heat.

#table(
  columns: (1.2fr, 1.55fr, 1.55fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Effect on the rate],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Reason],
  ),

  [Bright light], [Increases it], [Stomata open wider to let carbon dioxide in for photosynthesis],
  [Higher temperature], [Increases it], [Water molecules gain kinetic energy and evaporate faster],
  [Wind], [Increases it], [Removes the layer of humid air around the leaf, keeping the gradient steep],
  [Low humidity], [Increases it], [A steep water potential gradient between the leaf and the air],
  [High humidity], [Decreases it], [The air is already damp, so the gradient is shallow],
  [Closed stomata (e.g. at night, or in drought)], [Decreases it], [There is no opening through which water can escape],
  [Larger leaf surface area], [Increases it], [More stomata in total],
  [Thick cuticle, hairy leaves, rolled leaves], [Decreases it], [These are xerophytic adaptations that trap or reflect water vapour],
)

#concept-box("Wilting is a protection, not just a symptom")[
  When a plant loses water faster than it can absorb it, the cells lose turgor and the plant *wilts*. The drooping leaves expose less surface to the sun, and the stomata close. Both reduce transpiration — wilting is the plant's last defence against drought.
]

#worked-example(
  3,
  "Explaining a real observation",
  tier: "UTME STANDARD",
  [A potted plant placed in a warm, windy, sunny position loses water much faster than an identical plant in a cool, still, shaded position. Explain each of the three differences.]
  ,
  [
    *Sunlight* causes the stomata to open wide for carbon dioxide uptake, and open stomata are the route for water loss.

    *Warmth* gives the water molecules more kinetic energy, so they evaporate from the moist surfaces inside the leaf more rapidly.

    *Wind* blows away the humid layer of air that clings to the leaf surface, maintaining a steep diffusion gradient between the saturated air spaces inside the leaf and the drier air outside.

    *Answer:* all three increase the rate of transpiration, and all three are used by examiners as one-mark explanations.
  ],
)

// ============================================================================
// SECTION 6.5
// ============================================================================
== 6.5 Measuring Transpiration — the Potometer

#diagram-fig("diagrams/ch06_potometer.svg",
  "A potometer. The rate at which the air bubble moves along the graduated tube is taken as the rate of transpiration.")

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Using the potometer]
  #v(4pt)
  + Cut the shoot *under water* — this prevents an air bubble from entering the xylem and blocking it.
  + Assemble the apparatus with the shoot sealed into the tube, and introduce a single air bubble.
  + Record the position of the bubble and start the clock.
  + Record the new position after a fixed time (say five minutes).
  + Rate = distance moved ÷ time taken.
  + Change one factor at a time — light, wind, humidity, temperature — and repeat.
]

#trap-box("A potometer measures uptake, not loss")[
  Strictly, a potometer measures *water uptake*, which is only an *estimate* of transpiration. Some of the water taken up is used in photosynthesis and in keeping the cells turgid. Examiners accept "the rate of transpiration" but a precise answer says "water uptake, used as an estimate of transpiration".

  Also note the shoot is cut *under water* — a question that asks why is worth a mark, and the answer is "to prevent air entering the xylem".
]

// ============================================================================
// SECTION 6.6
// ============================================================================
== 6.6 Support in Plants

Plants have no skeleton. They are held up by three things:

- *Turgor pressure* — water-filled cells press against their cellulose walls and keep the tissue firm. This is why a wilted plant recovers after watering.
- *Xylem* — the lignified walls of xylem vessels form a rigid internal framework, which is why woody stems stand upright even when dead.
- *Collenchyma and sclerenchyma* — thickened supporting cells, especially in stems and leaf stalks.

#worked-example(
  4,
  "Why cut flowers droop",
  tier: "UTME STANDARD",
  [A bunch of cut flowers placed in a vase of water still droops after a few days. Explain why.]
  ,
  [
    The flowers have no roots, so they cannot replace the water they lose by transpiration from the leaves and petals. Even standing in water, the stem may take up less than is lost.

    As water is lost, the cells lose *turgor*, the tissue becomes flaccid and the stem can no longer hold itself upright.

    *Answer:* transpiration continues but water uptake through the cut stem cannot keep pace, so turgor is lost and the stem droops.
  ],
)

// ============================================================================
// SECTION 6.7 — CHECKLIST
// ============================================================================
== 6.7 Chapter 6 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define diffusion, osmosis and active transport, and say where each occurs in a plant;
  + list five adaptations of a root hair cell;
  + compare xylem and phloem in a table of at least six rows;
  + define transpiration and state its three benefits to the plant;
  + name four factors that increase transpiration and explain each;
  + describe how a potometer is used and state its limitation;
  + explain how plants are supported.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Water enters the root hair by osmosis, salts by active transport, and both climb the dead, lignified xylem pulled by transpiration from the stomata. Sugar travels in the living phloem, in whichever direction it is needed. Nothing in the chapter escapes those two sentences.
  ]
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: xylem, phloem, transpiration and the root hair.", width: 100%)

// ============================================================================
// SECTION 6.8 — TWO-MINUTE SET
// ============================================================================
== 6.8 Chapter 6 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [Water and mineral salts are transported in a plant by the], [phloem], [xylem], [cortex], [pith])
#mcq(2, [The process by which water moves from the soil into a root hair cell is], [active transport], [diffusion], [osmosis], [translocation])
#mcq(3, [Transpiration is faster when the air is], [humid and still], [dry and windy], [cold and dry], [warm and humid])
#mcq(4, [Mineral salts enter a root hair cell by active transport because], [they are dissolved in water], [their concentration is higher inside the cell], [the cell has no nucleus], [osmosis carries them])

#answer-key-grid(("B", "C", "B", "B"))
]


#include "drill_ch06.typ"
