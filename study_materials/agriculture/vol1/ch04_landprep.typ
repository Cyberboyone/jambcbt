#import "template.typ": *

#current-chapter.update("Chapter 4: Land Preparation and Cultural Practice")

#pagebreak()

#chapter-opener(
  4,
  "Land Preparation and Cultural Practice",
  subtitle: "From Bush to Seedbed, and the Six Operations That Follow Planting",
  syllabus-ref: "Part I • Crop Production",
  utme-weight: "6 Qs a year",
  running: "Land Preparation and Cultural Practice",
)

#focus-radar(
  objectives: (
    "Describe the sequence of land clearing and tillage, with the implement used at each stage.",
    "Compute plant population and seed rate from a spacing and an area.",
    "Explain the purpose of thinning, supplying, weeding, mulching, staking and pruning.",
    "Compare the methods of irrigation and drainage and state when each is used.",
    "Name the common farm tools and machines and the job each performs.",
  ),
  hotspots: (
    "“The implement used for primary tillage is …” — the plough. The trap offers *the harrow*, which is secondary tillage and breaks clods rather than inverting the soil.\n",
    "“Plant population per hectare at 75 cm × 25 cm is …” — 53 333 plants. The trap offers *133*, which is the number of stands along one hectare's length, not the number over the area.\n",
    "“Mulching is the covering of the soil surface with …” — crop residue or other material, to conserve moisture and suppress weeds. The trap offers *the mixing of organic matter into the soil*, which is manuring, not mulching.\n",
    "“Which irrigation method wastes least water?” — drip. The trap offers *sprinkler*, which is efficient but loses water to evaporation and wind.",
  ),
  trap-summary: "Three slips. (1) Treating clearing and tillage as the same operation: clearing removes what is growing, tillage prepares what is left. (2) Forgetting that the purpose of harrowing is to break the clods that ploughing turns up, not to deepen the soil. (3) Working out plant population from the spacing alone, without converting the hectare into square metres first.",
)

// ============================================================================
== 4.1 Clearing the Land

Land preparation begins with what is already growing. Clearing removes the vegetation, and the
method chosen decides how much the operation costs and how much damage it does.

#table(
  columns: (1.15fr, 2.0fr, 2.1fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it is done],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it suits],
  ),
  [Manual], [cutlass, hoe and axe; stumps dug out by hand], [small holdings; the commonest method in Nigeria],
  [Mechanical], [bulldozer, tree pusher and root rake], [large estates and plantations; expensive and compacts the soil],
  [Biological], [trees ring-barked or killed by a cover crop that smothers the weeds], [conservation-minded farms and orchards],
  [Chemical], [herbicides applied to the standing vegetation], [no-till and plantation establishment; needs care with drift],
  [Controlled burning], [the cut trash is burnt before planting], [cheap and quick, but it destroys organic matter and soil life],
)

#v(2pt)

Burning deserves the warning. It clears the surface in an afternoon and returns some potash in the
ash, which is why farmers do it. But it also burns the humus, kills the soil organisms, leaves the
ground bare for the first rains, and loses the nitrogen to the air. A question that asks for the
*disadvantage* of burning is asking for that list.

== 4.2 Primary Tillage: Ploughing

Ploughing is the first pass over cleared land. It cuts, lifts and inverts a slice of soil, burying
the weeds and trash and opening the surface to air and water. It is the operation that defines
*primary* tillage.

#table(
  columns: (1.15fr, 1.9fr, 2.1fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Plough],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Best use],
  ),
  [Mouldboard], [a curved blade lifts and turns the furrow slice over], [clean grassland and heavy soil; the standard primary plough],
  [Disc], [a rotating steel disc cuts and turns the slice], [stony or rooty ground, where a mouldboard would break],
  [Chisel], [a heavy tine rips the soil without inverting it], [dry soil and conservation tillage; leaves the trash on the surface],
  [Subsoiler], [a single deep tine shatters a hardpan below plough depth], [land with a plough pan or compacted subsoil],
)

#v(2pt)

#rule-box("How deep, and why not deeper")[
  Plough to 15–25 cm. Deeper than that, the plough brings up subsoil that has no humus and buries
  the topsoil beyond the reach of young roots — and working at the same depth season after season
  builds a *plough pan*, a compacted layer just below the blade that stops water and roots alike.
]

== 4.3 Secondary Tillage: Harrowing, Ridging and Levelling

Ploughing leaves the surface in clods. Secondary tillage breaks them down, levels the ground and
shapes it for the seed.

#table(
  columns: (1.1fr, 1.95fr, 2.1fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Operation],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Implement],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it achieves],
  ),
  [Harrowing], [disc harrow, spike-tooth harrow, spring-tine cultivator], [breaks the clods and levels the seedbed; a fine tilth for small seeds],
  [Ridging], [ridger or mouldboard ridger], [throws soil into ridges for yam, cassava and potato; improves drainage],
  [Levelling], [land plane, roller or a dragged plank], [an even surface, so that water and seed are spread evenly],
  [Marking out], [lines, pegs and a measuring rope], [the spacing that sets the plant population],
)

#v(2pt)

#diagram-fig("diagrams/agr1_ch04_tillage.svg",
  "Figure 4.1 — the sequence of land preparation, and the four reasons each pass earns its cost.", width: 98%)

== 4.4 Planting: Spacing, Seed Rate and Plant Population

Seed goes into the ground in one of four ways, and the method decides how much seed is needed.

#table(
  columns: (1.05fr, 2.1fr, 2.0fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it is done],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Used for],
  ),
  [Broadcasting], [seed scattered by hand over the surface, then covered], [rice, pasture grasses, some vegetables],
  [Drilling], [seed dropped in continuous furrows at a set depth], [maize, sorghum, cowpea on a larger farm],
  [Dibbling], [two or three seeds dropped into a hole at each stand], [maize, cowpea, groundnut on a smallholding],
  [Transplanting], [seedlings raised in a nursery and moved to the field], [rice, tomato, pepper, onion, cocoa],
)

#v(2pt)

#rule-box("The only two formulas you need")[
  *Plant population per hectare* = 10 000 ÷ (spacing between rows in m × spacing within the row in m) \
  *Seed rate* = (plants required per hectare ÷ germination percentage) × 1 000-grain weight ÷ 1 000 \
  \
  A hectare is 10 000 m². Convert every spacing into metres before dividing, and the answer is
  plants per hectare.
]

#v(2pt)

Spacing is a decision with two sides. Too close, and the plants compete for light, water and
nutrients and each yields less; too wide, and the land is wasted and the weeds have room. The
recommendations the paper expects are the ordinary ones: maize 75 cm × 25 cm, cassava 1 m × 1 m,
yam 1 m × 1 m on ridges, cowpea 60 cm × 30 cm, groundnut 60 cm × 15 cm.

#worked-example(
  1,
  "Plant population from a spacing",
  [Maize is planted at 75 cm between rows and 25 cm within the row. The plant population per hectare
  is approximately

    A. 13 333 \
    B. 53 333 \
    C. 133 333 \
    D. 5 333],
  [
    *Step 1 — convert the spacings to metres.* 0.75 m and 0.25 m.

    *Step 2 — find the area per plant.* 0.75 × 0.25 = 0.1875 m².

    *Step 3 — divide the hectare by it.* 10 000 ÷ 0.1875 = 53 333 plants.

    *Step 4 — check.* A plant every quarter metre in rows three-quarters of a metre apart is a dense
    stand; 53 000 per hectare is the figure the agronomists quote, so the answer is of the right order.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

== 4.5 The Cultural Practices After Planting

Planting is not the end of the work; it is the middle. The operations that follow decide whether the
stand that emerged is the stand that yields.

#table(
  columns: (1.05fr, 2.05fr, 2.05fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Practice],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What is done],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it matters],
  ),
  [Thinning], [extra seedlings are removed, leaving one strong plant per stand], [removes competition; the survivor yields more than the three together],
  [Supplying], [gaps are replanted from a nursery or a reserve plot], [keeps the plant population at the planned figure],
  [Weeding], [removing weeds by hand, hoe or herbicide], [weeds take the water and nutrients first; the first six weeks decide the yield],
  [Mulching], [covering the surface with dry grass, straw or plastic], [conserves moisture, cools the soil, suppresses weeds, prevents splash erosion],
  [Staking], [tying tall or vining crops to a support], [keeps fruit off the ground; improves light and reduces rot],
  [Pruning and training], [removing unwanted branches and shaping the plant], [directs growth, improves air and light, controls disease],
  [Earthing up], [drawing soil up around the base of the stem], [supports the plant and covers shallow roots; gives more room for tubers],
)

#v(2pt)

#trap-box("Mulch is not manure")[
  Mulch lies *on* the soil and manuring puts organic matter *into* it. Mulch is there to protect
  the surface — moisture, temperature, weeds, erosion — and it rots into the soil eventually. If a
  question asks which practice conserves moisture, the answer is mulching; if it asks which improves
  structure, the answer is manure or compost.
]

== 4.6 Water: Irrigation and Drainage

A rain-fed crop takes what the sky gives it in the weeks that matter. Irrigation removes that
gamble; drainage removes the opposite problem.

#table(
  columns: (1.15fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Best and worst],
  ),
  [Furrow / surface], [water runs down channels between the rows], [cheap; but it erodes and wastes water at the top of the field],
  [Basin / flood], [the plot is surrounded by a bund and flooded], [rice; but it waterlogs everything else],
  [Sprinkler], [water is sprayed over the crop like rain], [good for close-planted crops; loses water to wind and evaporation],
  [Drip / trickle], [water drips from a pipe at the plant's base], [the most efficient; expensive to install and to maintain],
  [Sub-surface], [pipes below the surface wet the root zone], [orchards and high-value crops; no evaporation, hard to inspect],
)

#v(2pt)

Drainage is the other half. *Surface drains* — open channels and raised beds — take the water off
the field; *sub-surface drains* — tile or mole drains — lower the water table under it. Rice wants
the first kind of water and no drainage at all; cassava and cocoyam rot in the second.

== 4.7 Tools and Machines

#table(
  columns: (1.3fr, 2.0fr, 1.9fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Tool or machine],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Job],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Note],
  ),
  [Cutlass / machete], [clearing bush, harvesting, cutting planting material], [the commonest tool on a Nigerian farm],
  [Hoe (West African hoe)], [clearing, weeding, ridging, making beds], [the blade shape varies by region],
  [Dibber / planting stick], [making the hole for seed or seedling], [sets the depth and the spacing],
  [Rake], [levelling and gathering trash], [also used to cover broadcast seed],
  [Watering can], [watering nursery beds and transplanted seedlings], [a fine rose prevents washing out the seed],
  [Knapsack sprayer], [applying herbicide, insecticide or foliar fertiliser], [calibrate it, and wear protection],
  [Wheelbarrow], [carrying manure, harvested produce and tools], [saves labour over long distances],
  [Animal-drawn plough], [primary tillage with oxen or donkeys], [cheaper than a tractor, and suited to small fields],
  [Tractor and implements], [ploughing, harrowing, ridging, planting, spraying, hauling], [needs 1 hp per acre as a rule of thumb, and a trained operator],
  [Combine harvester], [cutting, threshing and cleaning grain in one pass], [large estates only],
)

== 4.8 Four Worked Questions

#worked-example(
  2,
  "Naming the operation",
  [The farm operation carried out to break the clods left by ploughing is

    A. harrowing \
    B. ridging \
    C. clearing \
    D. subsoiling],
  [
    *Step 1 — place the operation in the sequence.* Clearing comes before ploughing; harrowing comes after it.

    *Step 2 — match the job.* Harrowing breaks clods and levels the seedbed, which is exactly the description in the stem.

    *Step 3 — rule out the rest.* Ridging shapes the surface, subsoiling shatters a pan below plough depth, and clearing removes vegetation.

    *Answer: A.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "Why the first weeding matters most",
  [The first weeding of a maize crop is the most important because

    A. weeds are easiest to kill when they are young \
    B. the young crop is least able to compete for light, water and nutrients \
    C. weeding improves the soil structure \
    D. weeds are a source of organic matter],
  [
    *Step 1 — think about competition.* A seedling has a small root system and a small leaf area; a weed that emerges with it has the same space and often grows faster.

    *Step 2 — connect to yield.* Competition in the first weeks removes the yield potential that cannot be recovered later.

    *Step 3 — dismiss A as the main reason.* Young weeds are easier to kill, but the mark is for the *competition*, which is the reason the timing matters.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Irrigation and the crop",
  [Which irrigation method would you recommend for a vegetable farmer with a small plot, a limited
  water supply and a high-value crop?

    A. Flood irrigation \
    B. Furrow irrigation \
    C. Drip irrigation \
    D. Basin irrigation],
  [
    *Step 1 — list the constraints.* Little water, high value, small area.

    *Step 2 — match the method to the constraints.* Drip puts water at the root with almost no loss to evaporation, wind or runoff, which is what a limited supply demands.

    *Step 3 — reject the surface methods.* Flood, furrow and basin all use much more water and risk erosion and waterlogging.

    *Step 4 — accept the cost.* Drip costs more to install, which is why it is used on high-value crops.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

== 4.9 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [Primary tillage is carried out with a], [harrow], [plough], [ridger], [roller])

#mcq(2, [Cassava planted at 1 m × 1 m has a plant population per hectare of], [1 000], [5 000], [10 000], [100 000])

#mcq(3, [The practice of covering the soil surface with dry grass is called], [mulching], [manuring], [composting], [earthing up])

#mcq(4, [The irrigation method that delivers water directly to the root zone with least loss is], [furrow], [basin], [sprinkler], [drip])

#answer-key-grid(("B", "C", "A", "D"))

#answer-notes((
  ("B", [The plough is the primary implement; the harrow and ridger work after it.]),
  ("C", [One plant per square metre, and 10 000 m² in a hectare.]),
  ("A", [Mulch lies on the surface. Manure and compost are worked into the soil.]),
  ("D", [Drip irrigation wets only the root zone, so evaporation and runoff are minimal.]),
))

#diagram-fig("diagrams/recap_agr1_ch04.svg",
  "Chapter 4 recap card: tillage, planting, the cultural practices and water.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Land preparation runs in order: clear, plough, harrow, level, plant. The plough is primary
    tillage and turns the slice; the harrow is secondary and breaks the clods. Spacing sets the plant
    population — 10 000 divided by the area per plant — and the seed rate follows from the population
    and the germination. After planting come thinning, supplying, weeding, mulching, staking,
    pruning and earthing up, and each one is an answer to competition, moisture or support.
    Irrigation supplies what the rain does not; drainage removes what it leaves behind.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [List the five land-preparation operations in order, with the implement for each.],
  [Compute the plant population for a crop spaced 60 cm × 30 cm.],
  [Distinguish mulching from manuring in one sentence.],
  [Name four cultural practices and the problem each one solves.],
  [Compare furrow, sprinkler and drip irrigation for water use and cost.]),
)

#concept-box("Carry this into Chapter 5")[
  Every one of those operations assumes you have something to plant. The next chapter is about
  where that something comes from: the seed and what makes it germinate, the vegetative pieces that
  give a true-to-type plant, and the nursery in which both are raised before they go to the field.
]

#include "drill_ch04.typ"
