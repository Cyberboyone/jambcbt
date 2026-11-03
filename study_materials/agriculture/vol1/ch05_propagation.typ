#import "template.typ": *

#current-chapter.update("Chapter 5: Crop Propagation and Nursery Practice")

#pagebreak()

#chapter-opener(
  5,
  "Crop Propagation and Nursery Practice",
  subtitle: "Two Ways to Make a New Plant, and the Nursery in Which Both Are Raised",
  syllabus-ref: "Part I • Crop Production",
  utme-weight: "6 Qs a year",
  running: "Propagation and Nursery Practice",
)

#focus-radar(
  objectives: (
    "Label the parts of a seed and state the function of each.",
    "State the conditions necessary for germination and the difference between epigeal and hypogeal germination.",
    "Describe the tests used to judge seed quality and compute a germination percentage.",
    "Describe the methods of vegetative propagation and give a crop for each.",
    "Explain the siting, preparation and management of a nursery, and the care of transplants.",
  ),
  hotspots: (
    "“The part of the seed that develops into the root is the …” — radicle. The trap offers *the plumule*, which becomes the shoot.\n",
    "“Which of these is NOT required for germination?” — light. The trap offers *oxygen*, which is required even though the seed is buried; a waterlogged seed drowns.\n",
    "“Cassava is propagated by …” — stem cuttings. The trap offers *seeds*, which cassava produces rarely and which do not breed true.\n",
    "“A nursery is sited near a water supply because …” — seedlings need regular, gentle watering. The trap offers *because seedlings need full sun*, which is the opposite of the shade they are raised under.",
  ),
  trap-summary: "Three slips. (1) Confusing germination percentage with viability: a seed can be alive and still fail to germinate in the test conditions. (2) Treating all vegetative propagation as cuttings — budding, grafting and layering are different operations with different tools. (3) Forgetting that a nursery is a *protected* place: shade, fine tilth, sterile medium and water are the four things that make it work.",
)

// ============================================================================
== 5.1 The Seed and Germination

A seed is a miniature plant with its own food supply and a protective coat. Everything the paper asks
about germination follows from those three parts.

#table(
  columns: (1.15fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it becomes or does],
  ),
  [Testa / seed coat], [the tough outer covering], [protects the embryo until germination; scarification breaks it],
  [Cotyledon], [the seed leaf, one in monocots and two in dicots], [stores or absorbs food for the seedling],
  [Endosperm], [the food store, outside the embryo in many monocots], [feeds the seedling until the first leaves photosynthesise],
  [Radicle], [the embryonic root], [emerges first and becomes the root system],
  [Plumule], [the embryonic shoot], [becomes the stem and the first true leaves],
  [Hilum], [the scar where the seed was attached to the fruit], [the point where water enters most easily],
)

#v(2pt)

#rule-box("The four conditions of germination")[
  *1. A viable seed* — alive, and not dormant. *2. Moisture* — to soften the coat and activate the
  enzymes. *3. Oxygen* — for respiration, which is why a drowned seed rots instead of sprouting.
  *4. A suitable temperature* — warmth, ordinarily between 20 °C and 35 °C for tropical crops. Light
  is required by a few small seeds, but it is not one of the four.
]

#v(2pt)

Germination is either *epigeal* or *hypogeal*, and the difference is where the cotyledons end up.
In epigeal germination the cotyledons are carried above the soil and turn green — cowpea, groundnut
and most dicots. In hypogeal germination they stay below the surface and the food is used where it
lies — maize, rice and most monocots.

== 5.2 Seed Quality and the Tests That Judge It

Not every seed in a bag will grow, and the farmer needs to know the fraction that will before he
sets his seed rate.

#table(
  columns: (1.15fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it is done],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it measures],
  ),
  [Float test], [seed is dropped into water; the sinkers are kept], [a rough test of fullness, not of life],
  [Germination test], [100 seeds are sown in sand or on moist paper and the seedlings counted], [the percentage that germinates under good conditions],
  [Tetrazolium test], [seed is soaked in a colourless solution that turns red in living tissue], [viability, without waiting for germination],
  [Purity test], [the sample is separated into pure seed and inert matter and weighed], [the percentage of pure seed in the lot],
  [Moisture test], [the sample is dried and weighed before and after], [the water content, which decides how long it keeps],
)

#v(2pt)

#rule-box("Germination percentage")[
  Germination percentage = (number of seeds that germinated ÷ number of seeds sown) × 100 \
  \
  If 180 of 200 seeds germinate, the germination percentage is 90 per cent — and the seed rate must
  be raised by about a ninth to allow for the tenth that will not come up.
]

#v(2pt)

Seed treatment is the last step before sowing. *Fungicide dressing* protects the seed against
damping-off; *scarification* — nicking, rubbing with sand, or soaking in acid — breaks a hard coat;
*stratification* — chilling in damp sand — breaks dormancy in temperate species; and *inoculation*
with rhizobium gives a legume the bacteria it needs to nodulate in a field where they are absent.

== 5.3 Vegetative Propagation

A new plant can also be made from a piece of the old one, and every method is a way of persuading
that piece to make roots and shoots of its own.

#table(
  columns: (1.2fr, 2.0fr, 1.95fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What is done],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Crops],
  ),
  [Stem cutting], [a length of mature stem is planted, with two or three buds], [cassava, sugar cane, sweet potato, TMS varieties],
  [Leaf cutting], [a leaf with its vein is laid on moist sand], [bryophyllum, some ornamentals],
  [Root cutting], [a piece of root is buried and sends up shoots], [breadfruit, some ornamentals],
  [Layering / marcotting], [a branch is wounded and rooted while still attached to the parent], [guava, citrus, mango, rubber],
  [Budding], [a single bud is slipped under the bark of a rootstock], [citrus, mango, rubber],
  [Grafting], [a shoot (scion) is joined to a rootstock so that they grow as one], [mango, citrus, cashew, rubber, cocoa],
  [Suckers], [a side shoot from the base is detached with its own roots], [banana, plantain, oil palm, pineapple],
  [Setts, tubers and rhizomes], [a piece of the underground stem is planted], [yam, cocoyam, ginger, Irish potato],
  [Tissue culture], [a sterile fragment is grown on a nutrient medium into many plantlets], [banana, cassava, oil palm, and the seed yam programme],
)

#v(2pt)

#diagram-fig("diagrams/agr1_ch05_propagation.svg",
  "Figure 5.1 — sexual and asexual propagation, with the crops each one serves.", width: 98%)

#table(
  columns: (1.5fr, 1.6fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Sexual propagation (seed)],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Asexual propagation (vegetative)],
  ),
  [cheap and easy to store and transport], [the new plant is identical to the parent — true to type],
  [gives a tap root, so the plant survives drought better], [bears earlier: a grafted mango fruits in three years, a seedling in seven],
  [the source of new varieties and of disease-free seed], [the only way to keep a sterile or seedless variety],
  [slow to bear, and the offspring may differ from the parent], [carries viruses from parent to offspring],
  [seed must be viable, and some crops set little of it], [needs skill, tools and clean stock],
  [hybrid seed must be bought afresh each season], [the planting material is bulky and perishable],
)

== 5.4 The Nursery

A nursery is a protected plot in which seedlings are raised until they are strong enough for the
field. It exists because a seedbed can be kept fine, shaded, watered and watched in a way that a
whole field cannot.

#table(
  columns: (1.15fr, 2.1fr, 1.9fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What is done],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why],
  ),
  [Site], [near the field, near water, on level ground, sheltered but not dark], [short carrying distance and easy watering],
  [Beds], [raised beds 1 m wide and 15–20 cm high, with paths between], [raised beds drain and are easy to reach across],
  [Medium], [a mixture of topsoil, sand and well-rotted manure, sterilised by heat or solarisation], [fine, fertile, and free of weed seed and damping-off fungi],
  [Sowing], [in drills 10–15 cm apart, covered lightly and watered with a fine rose], [even depth and even moisture give an even stand],
  [Shade], [a palm-frond or shade-net canopy about 1 m above the bed], [protects the seedlings from scorching sun and heavy rain],
  [Pricking out], [seedlings are lifted and spaced out when the first true leaves appear], [gives each seedling room before it competes],
  [Hardening off], [shade and water are reduced for a week before transplanting], [thickens the cuticle so the seedling survives the field],
  [Protection], [weeding, watering, and a spray against damping-off and insects], [a nursery loss is a field loss before it happens],
)

#v(2pt)

Transplanting is done in the cool of the evening or on a cloudy day, with the seedling lifted with a
ball of soil, the taproot undamaged, and the collar at ground level. Watering follows immediately:
the first night decides whether the transplant lives.

#trap-box("Four words that are always exchanged")[
  *Viability* is whether the seed is alive; *germination percentage* is how many of a hundred actually
  sprout in a test. *Scarification* breaks a hard seed coat; *stratification* breaks a cold dormancy.
  *Budding* inserts a bud under the bark; *grafting* joins a shoot to a rootstock. *Thinning* removes
  excess seedlings in the field; *pricking out* spaces them in the nursery.
]

== 5.5 Four Worked Questions

#worked-example(
  1,
  "The parts of the seed",
  [The part of a germinating seed that emerges first and becomes the root is the

    A. plumule \
    B. radicle \
    C. cotyledon \
    D. testa],
  [
    *Step 1 — recall the anatomy.* The embryo has two ends: the radicle for the root and the plumule for the shoot.

    *Step 2 — recall the order.* The radicle emerges first, because the seedling must anchor and take up water before the shoot unfolds.

    *Step 3 — dismiss the rest.* The cotyledon stores food and the testa is the coat.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The conditions of germination",
  [Which of the following is NOT necessary for the germination of a maize seed?

    A. Moisture \
    B. Oxygen \
    C. Light \
    D. A suitable temperature],
  [
    *Step 1 — list the four.* Viable seed, moisture, oxygen and warmth.

    *Step 2 — test light.* Most seeds germinate in the dark, which is exactly why they are buried. Light is required only by a small group of seeds that need it to break dormancy.

    *Step 3 — confirm the others.* A maize seed in waterlogged soil fails for want of oxygen, which proves B is necessary.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The germination test, used",
  [Of 200 seeds sown in a germination test, 170 germinated. What seed rate should the farmer use if the
  recommendation is 20 kg of viable seed per hectare?

    A. 17 kg \
    B. 20 kg \
    C. 23.5 kg \
    D. 30 kg],
  [
    *Step 1 — find the germination percentage.* 170 ÷ 200 × 100 = 85 per cent.

    *Step 2 — work out the allowance.* Only 85 of every 100 seeds will grow, so the farmer must sow 100 ÷ 0.85 = 117.6 per cent of the recommended rate.

    *Step 3 — apply it.* 20 × 1.176 = 23.5 kg.

    *Step 4 — check the direction.* A poor germination rate means *more* seed, never less — which rules out A immediately.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Why a grafted tree, and not a seedling",
  [A farmer wants a mango orchard that fruits in the third year and bears the same fruit as the parent
  tree. He should plant

    A. seedlings raised from the fruit of the parent \
    B. grafted or budded plants of the parent variety \
    C. cuttings of the root of the parent \
    D. seeds treated with fungicide],
  [
    *Step 1 — identify the two requirements.* Early fruiting and identity with the parent.

    *Step 2 — test seed.* Seedlings vary, because mango is cross-pollinated, and they take seven years or more to bear.

    *Step 3 — test grafting.* A scion of the parent on a rootstock is genetically the parent, and it flowers as soon as the scion is mature — three years is the standard figure.

    *Step 4 — dismiss root cuttings.* Mango is not propagated commercially from root cuttings, and a root cutting would not give the same plant.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [The part of the seed that becomes the shoot is the], [radicle], [plumule], [testa], [endosperm])

#mcq(2, [Cassava is normally propagated by], [seed], [stem cuttings], [budding], [layering])

#mcq(3, [A seed lot in which 90 out of 100 seeds germinate has a germination percentage of], [9 per cent], [19 per cent], [90 per cent], [100 per cent])

#mcq(4, [Seedlings in a nursery are hardened off in order to], [make them grow faster], [protect them from insects], [increase the germination percentage], [prepare them for the field])

#answer-key-grid(("B", "B", "C", "D"))

#answer-notes((
  ("B", [The plumule is the embryonic shoot; the radicle is the embryonic root.]),
  ("B", [Cassava is grown from stem cuttings, which is why its planting material is bulky.]),
  ("C", [Ninety out of a hundred is 90 per cent.]),
  ("D", [Hardening off reduces shade and water so that the cuticle thickens before transplanting.]),
))

#diagram-fig("diagrams/recap_agr1_ch05.svg",
  "Chapter 5 recap card: seed, vegetative propagation, the nursery and transplanting.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A seed is an embryo, a food store and a coat, and it germinates when it is viable, moist, warm
    and supplied with air. Quality is measured by germination percentage, viability and purity, and
    the seed rate rises as the germination falls. Vegetative propagation — cuttings, layering,
    budding, grafting, suckers and setts — gives a plant identical to its parent and earlier to
    bear, at the cost of carrying disease forward. The nursery is where both kinds of planting
    material are raised: fine tilth, shade, water, and hardening off before the field.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Label a seed: testa, cotyledon, endosperm, radicle, plumule.],
  [State the four conditions of germination and one crop example of epigeal and one of hypogeal.],
  [Compute a germination percentage and adjust a seed rate for it.],
  [Name four vegetative methods and a crop for each.],
  [List the six steps in managing a nursery bed.]),
)

#concept-box("Carry this into Chapter 6")[
  A healthy seedling in a well-prepared field is still food for something else. The next chapter
  deals with the three enemies that arrive after planting — the insect that bores, the fungus that
  rots and the weed that competes — and with the four families of control that hold them back.
]

#include "drill_ch05.typ"
