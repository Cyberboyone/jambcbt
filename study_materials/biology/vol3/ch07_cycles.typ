#import "template.typ": *

#current-chapter.update("Chapter 7: Nutrient Cycles, Succession and Biomes")
#pagebreak()

#chapter-opener(
  7,
  "Nutrient Cycles, Succession and Biomes",
  subtitle: "Why Matter Cycles and Energy Does Not, the Carbon Cycle, the Nitrogen Cycle, Decomposition and Humus, Primary and Secondary Succession, and the Biomes of Nigeria",
  syllabus-ref: "Sec. C • Topic 7",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain why matter is recycled in an ecosystem while energy is not.",
    "Describe the carbon cycle, naming photosynthesis, respiration, decay and combustion.",
    "Describe the nitrogen cycle, naming fixation, nitrification, assimilation, ammonification and denitrification.",
    "Name the organisms that carry out each stage of the nitrogen cycle.",
    "Distinguish primary from secondary succession and name the stages of each.",
    "Name the major biomes of Nigeria and give one adaptation of the plants in each.",
  ),
  hotspots: (
    "\\\"Nitrogen fixation is carried out by …\\\" — *Rhizobium* in root nodules, plus lightning and the Haber process.",
    "\\\"Nitrifying bacteria need …\\\" — oxygen. \\\"Denitrifying bacteria work …\\\" — without oxygen, which is why waterlogged soil loses nitrogen.",
    "\\\"The first colonisers of bare rock are …\\\" — lichens, the pioneer species.",
    "\\\"A climax community is one in which …\\\" — the species composition is stable and self-replacing.",
    "\\\"The biome with the highest rainfall in Nigeria is …\\\" — the tropical rainforest, in the south.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying that energy is recycled: it is not. Only *matter* cycles; energy flows through once and leaves as heat. (2) Mixing up nitrification and denitrification: nitrification is ammonia → nitrite → nitrate, carried out by bacteria that need oxygen; denitrification is nitrate → nitrogen gas, carried out by bacteria that work without it. (3) Starting succession with mosses or grasses: the pioneers on bare rock are lichens, because only they can dissolve rock and begin to make soil.",
)

// ============================================================================
// SECTION 7.1
// ============================================================================
== 7.1 Matter Cycles, Energy Flows

An ecosystem needs two things: a constant supply of energy and a constant supply of the elements of life — carbon, nitrogen, oxygen, phosphorus and the mineral salts. The two are handled in opposite ways, and the sentence that earns the mark is short:

#concept-box("The one sentence")[
  *Energy flows through an ecosystem once and is lost as heat; matter is recycled through it again and again.* \
  Energy has to be replaced continually by the sun. Matter does not: the same carbon atom that was in a dinosaur is in the air you are breathing, and the same nitrogen atom may have passed through a hundred plants.
]

Recycling is carried out by two groups of organisms, and both are easy to forget under exam pressure: *decomposers* (bacteria and fungi), which break down dead matter, and the *root systems* of plants, which take the released minerals back up.

// ============================================================================
// SECTION 7.2
// ============================================================================
== 7.2 The Carbon Cycle

Carbon is the backbone of every organic molecule, and it moves between four stores: the air as carbon dioxide, living organisms, dead matter in the soil, and fossil fuels.

#diagram-fig("diagrams/ch07_carbon.svg",
  "The carbon cycle. Photosynthesis removes carbon dioxide from the air; respiration, decay and the burning of fossil fuels return it. Carbon is recycled; the energy that came with it is not.")

The processes, in the order the examiner lists them:

+ *Photosynthesis* — green plants take carbon dioxide from the air and combine it with water to make glucose, using light energy trapped by chlorophyll: \
  #text(size: 10.2pt)[6CO₂ + 6H₂O → C₆H₁₂O₆ + 6O₂]
+ *Feeding* — carbon passes from producers to consumers as carbohydrates, fats and proteins.
+ *Respiration* — every living organism, plant or animal, breaks down glucose to release energy and returns carbon dioxide to the air.
+ *Decay* — decomposers respire the carbon in dead bodies, fallen leaves and dung, returning carbon dioxide to the air and minerals to the soil.
+ *Combustion* — burning wood, coal, oil or gas returns carbon that was locked away for millions of years.
+ *Fossilisation* — a small fraction of dead organisms is buried, compressed and, over millions of years, becomes coal, oil or gas.

#trap-box("Plants respire too")[
  A very common error is to write that only animals return carbon dioxide to the air. Plants respire day and night, exactly as animals do; photosynthesis merely *outpaces* respiration in daylight. A question asking for \\\"two processes that remove carbon dioxide from the air\\\" has only one answer — photosynthesis — but a question asking for processes that *add* it has at least three: respiration, decay and combustion.
]

// ============================================================================
// SECTION 7.3
// ============================================================================
== 7.3 The Nitrogen Cycle

Nitrogen is needed for amino acids, and amino acids are needed for proteins. The air is 78 % nitrogen gas, but plants cannot use nitrogen gas: the two atoms are held by a triple bond that no plant enzyme can break. The nitrogen cycle is the set of processes that turn that inert gas into nitrate, and eventually turn it back again.

#diagram-fig("diagrams/ch07_nitrogen.svg",
  "The nitrogen cycle. Fixation turns nitrogen gas into nitrate; plants absorb nitrate and build proteins; decomposers release ammonia from dead matter; nitrifying bacteria turn the ammonia back into nitrate; denitrifying bacteria return nitrogen gas to the air.")

The five processes, with the organism that does each one:

#table(
  columns: (1.35fr, 1.6fr, 2.05fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Change],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Carried out by],
  ),

  [*Nitrogen fixation*], [N₂ gas → ammonia, then to nitrate in the soil], [*Rhizobium* in the root nodules of legumes; *Azotobacter* free in the soil; lightning; the Haber process],
  [*Assimilation*], [nitrate from the soil → amino acids → proteins in the plant], [the plant itself, through its roots],
  [*Ammonification*], [proteins in dead matter and dung → ammonia in the soil], [decomposers — bacteria and fungi],
  [*Nitrification*], [ammonia → nitrite → nitrate], [nitrifying bacteria, which need oxygen],
  [*Denitrification*], [nitrate → nitrogen gas, back to the air], [denitrifying bacteria, which work without oxygen],
)

#concept-box("Root nodules, in one paragraph")[
  Legumes — cowpea, groundnut, soya bean, and the garden pea — form *root nodules* in which *Rhizobium* bacteria live. The bacterium fixes nitrogen from the air into ammonia, which the plant uses to make protein; the plant supplies the bacterium with sugars from photosynthesis and with shelter. Both benefit, so the relationship is *mutualism*, and it is why a legume can grow on nitrogen-poor soil and why farmers rotate legumes with cereals.
]

#worked-example(
  1,
  "Why a waterlogged field loses its fertiliser",
  tier: "UTME STANDARD",
  [A farmer applies ammonium fertiliser to a field that floods in the rainy season. The next crop is pale and short. Explain, using the nitrogen cycle, why the fertiliser has not reached the crop],
  [
    *Step 1 — the ammonium is converted.* In the soil water ammonium is oxidised to nitrite and then to nitrate by nitrifying bacteria — but that conversion needs *oxygen*, and waterlogged soil has none. So little nitrate is formed.

    *Step 2 — the nitrate that does form is removed.* Waterlogged soil is anaerobic, which suits the *denitrifying* bacteria. They use nitrate instead of oxygen in respiration and release nitrogen gas, which escapes to the air.

    *Step 3 — the nitrate is also washed away.* Drainage water carries soluble nitrate below the root zone — *leaching* — so the roots never meet it.

    *Conclusion.* The nitrogen leaves the field as gas and as drainage water before the crop can absorb it, and the plant becomes *nitrogen-deficient*: pale leaves, stunted growth, because it cannot make enough protein or chlorophyll. *Remedy:* drain the field, or apply the fertiliser in split doses when the soil is not waterlogged.
  ],
)

// ============================================================================
// SECTION 7.4
// ============================================================================
== 7.4 Decomposition and Humus

*Decomposition* is the breakdown of dead organic matter by bacteria and fungi (and, in the first stages, by soil animals such as earthworms and termites). The end products are simple: carbon dioxide, water, ammonia and mineral salts such as nitrates, phosphates and sulphates.

The dark, jelly-like residue that remains is *humus*. It matters for three reasons: it *holds water*, it *holds mineral ions* that would otherwise be leached away, and it *improves soil structure* so that roots and air can move through it. A soil rich in humus is a soil that stays moist and keeps its nutrients, which is the practical reason compost and farmyard manure are added to Nigerian soils.

#concept-box("Three conditions that speed up decay")[
  *Moisture* — bacteria and fungi need water. \
  *Warmth* — decay is enzyme-catalysed, so it is faster in the warm, humid south than in the cool highlands. \
  *Oxygen* — most decomposers are aerobic. \
  This is why food is preserved by drying, salting, canning and refrigeration: each removes one of the three.
]

// ============================================================================
// SECTION 7.5
// ============================================================================
== 7.5 Ecological Succession

*Succession* is the gradual change in the species composition of a community over time, until a stable *climax community* is reached. Each stage alters the habitat — makes soil deeper, holds more water, gives more shade — so that the next set of species can establish itself, and finally excludes the pioneers that made it possible.

#diagram-fig("diagrams/ch07_succession.svg",
  "Primary succession on bare rock: lichens dissolve the rock, mosses hold the first thin soil, grasses deepen it, shrubs shade out the grasses and a climax forest closes over the site.")

#table(
  columns: (1.25fr, 2.0fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [*Pioneer*], [colonises bare rock or bare ground; tolerates drought and full sun; its acids begin to break the rock down], [lichens, then mosses],
  [*Intermediate*], [roots deepen the soil, humus builds up, taller plants shade out the pioneers], [grasses and herbs, then shrubs],
  [*Climax*], [stable, self-replacing community that no further invasion changes], [tropical rainforest; Sudan savanna woodland],
)

Two kinds of succession are examined:

+ *Primary succession* starts where there is *no soil and no previous community* — bare rock from a lava flow or a newly exposed cliff, a sand dune, a quarry floor.
+ *Secondary succession* starts where *soil survives* but the community has been destroyed — after a fire, a clearing, a flood or an abandoned farm. It begins with grasses and weeds rather than lichens, and reaches the climax far more quickly, because the soil and its seed bank are already there.

#trap-box("Waterlogged land can stop at the swamp stage")[
  A climax community is the *stable* end point for *that* habitat, not necessarily a forest. Where the ground is waterlogged, water excludes tree roots and the climax is a freshwater swamp community; in a mangrove delta, salt does the same and the climax is mangrove. Answer \\\"the climax is the stable community that the climate and soil of the area can support\\\" — not \\\"the climax is always forest\\\".
]

// ============================================================================
// SECTION 7.6
// ============================================================================
== 7.6 The Biomes of Nigeria

A *biome* is a large region with a characteristic climate and a characteristic community of plants and animals. Nigeria runs from the coast of the Atlantic northwards to the edge of the Sahara, and its biomes follow the rainfall: over 2000 mm at the coast, under 600 mm in the far north.

#table(
  columns: (1.25fr, 1.15fr, 2.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Biome],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rainfall a year],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Plants and their adaptations],
  ),

  [*Mangrove and freshwater swamp*], [over 2500 mm], [mangrove trees with *stilt roots* and *breathing roots* above the mud; salt is excreted from the leaves; the whole forest tolerates waterlogging],
  [*Tropical rainforest*], [1500–2500 mm], [tall trees with *buttress roots*, a dense three-storey canopy, *drip tips* on the leaves, climbing lianas and shade-tolerant young trees],
  [*Guinea savanna*], [1000–1500 mm], [tall grasses that burn in the dry season and grow back from underground stems; fire-resistant trees with *thick bark* — shea, locust bean, parkia],
  [*Sudan savanna*], [600–1000 mm], [shorter grasses, scattered *thorny* trees that lose their leaves in the dry season; Acacia, baobab with water-storing trunk],
  [*Sahel*], [under 600 mm], [annual grasses that complete their life cycle in one rainy season; deep-rooted shrubs; plants with hairs or spines that reduce water loss],
  [*Montane (highland)*], [varies with height], [shorter, stiffer trees and shrubs on the Jos Plateau and the Mambilla Plateau; the cool air slows decay, so humus accumulates],
)

#shortcut-box("Reading a biome question")[
  Question asks for the *rainfall*: quote a figure and match the biome. \
  Question asks for an *adaptation*: name the feature and state what it does — \\\"drip tips carry water away quickly, so that algae and fungi do not grow on the leaf\\\". \
  Question asks for a *Nigerian example*: rainforest → Cross River and Oban; savanna → Yankari and the Jos Plateau; mangrove → the Niger Delta.
]

// ============================================================================
// SECTION 7.7 — CHECKLIST
// ============================================================================
== 7.7 Chapter 7 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + state the difference between the flow of energy and the cycling of matter;
  + describe the carbon cycle and name the processes that add and remove carbon dioxide;
  + write the equation for photosynthesis and for aerobic respiration;
  + name the five processes of the nitrogen cycle and the organism that carries out each;
  + explain why legumes can grow on nitrogen-poor soil, and define mutualism using *Rhizobium*;
  + explain why a waterlogged field loses its nitrogen fertiliser;
  + define decomposition, humus and the three conditions that speed up decay;
  + distinguish primary from secondary succession, and name the stages of each;
  + define a climax community, and give an example of a climax that is not forest;
  + name the six biomes of Nigeria and give one plant adaptation for each.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Matter cycles; energy flows. In the carbon cycle photosynthesis takes carbon dioxide out of the air while respiration, decay and combustion put it back. In the nitrogen cycle fixation turns nitrogen gas into nitrate, plants assimilate nitrate into protein, decomposers ammonify dead matter, nitrifying bacteria make nitrate again and denitrifying bacteria return nitrogen gas to the air. Decomposers make humus, which holds water and minerals. Succession runs from pioneers to a climax community, and Nigeria's biomes — mangrove, rainforest, Guinea savanna, Sudan savanna, Sahel and montane — are a ladder of rainfall from the coast to the north.
  ]
]

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: carbon cycle, nitrogen cycle, succession and biomes.", width: 100%)

// ============================================================================
// SECTION 7.8 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 7.8 Chapter 7 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The conversion of nitrogen gas into a form that plants can absorb is called], [nitrogen fixation], [nitrification], [ammonification], [denitrification])
#mcq(2, [Carbon is returned to the atmosphere by], [photosynthesis only], [photosynthesis and transpiration], [respiration, decay and the burning of fossil fuels], [nitrogen fixation])
#mcq(3, [The first organisms to colonise bare rock in primary succession are], [mosses], [lichens], [grasses], [shrubs])
#mcq(4, [Denitrifying bacteria], [convert nitrate to ammonia], [convert ammonia to nitrite], [fix nitrogen gas into nitrate], [convert nitrate to nitrogen gas])

#answer-key-grid(("A", "C", "B", "D"))

#answer-notes((
  ("A", [fixation is N₂ → ammonia → nitrate, carried out by *Rhizobium*, *Azotobacter*, lightning and the Haber process.]),
  ("C", [respiration returns carbon dioxide from every living organism, decay returns it from dead matter, and combustion returns carbon that was buried as fossil fuel. Photosynthesis removes it.]),
  ("B", [lichens tolerate drought and full sun and their acids break rock down; mosses can only follow once a thin soil exists.]),
  ("D", [denitrification is nitrate → nitrogen gas, carried out by bacteria that work without oxygen, which is why waterlogged soil loses nitrogen.]),
))

#include "drill_ch07.typ"
