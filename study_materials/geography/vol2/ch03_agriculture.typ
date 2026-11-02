#import "template.typ": *

#current-chapter.update("Chapter 3: Agriculture")

#pagebreak()

#chapter-opener(
  3,
  "Agriculture",
  subtitle: "The Systems Farmers Use, the Crops They Choose, and Why the Nigerian Farm Yields So Little",
  syllabus-ref: "Part III • Economic Activity",
  utme-weight: "5 Qs a year",
  running: "Agriculture",
)

#focus-radar(
  objectives: (
    "Classify farming systems by purpose, intensity and the use of land.",
    "Describe shifting cultivation and explain why it survives where land is plentiful.",
    "State the characteristics and requirements of the major cash crops.",
    "Relate each crop to the rainfall, temperature and soil it needs.",
    "Explain the problems of Nigerian agriculture and the improvements proposed.",
  ),
  hotspots: (
    "“Shifting cultivation is described as extensive because …” — it uses a large area with little labour and capital per hectare. The trap offers *it is practised by shifting farmers*, which is a restatement, not a reason.\n",
    "“Cocoa is best grown in areas with …” — over 1 500 mm of rain, a long wet season and a temperature above 25 °C, in the forest belt. The trap offers *a long dry season*, which cocoa cannot tolerate.\n",
    "“The main problem of agriculture in Nigeria is …” — low productivity per hectare, caused by poor inputs, land tenure and rain-fed dependence. The trap offers *a shortage of land*, when the shortage is of capital, storage and extension.\n",
    "“Nomadic pastoralism is a system of …” — livestock herding that moves with pasture and water. The trap offers *hunting and gathering*, which is a different system altogether.\n",
  ),
  trap-summary: "Three slips. (1) Calling any large farm extensive: extensive means low inputs per hectare, not large size alone. (2) Mixing the crop belts: cocoa and oil palm belong to the forest, groundnut and cotton to the savanna. (3) Treating cash crops as more modern than food crops — the difference is the market, not the technique.",
)

// ============================================================================
== 3.1 Classifying a Farm

Every farming system in the syllabus is a point on three axes: *what the produce is for*
(subsistence or commercial), *how much is put in per hectare* (intensive or extensive), and
*what is raised* (arable crops, livestock or both).

#diagram-fig("diagrams/geo2_ch03_agriculture.svg",
  "Figure 3.1 The four farming systems, and the belts of Nigeria that carry them.", width: 98%)

#table(
  columns: (1.1fr, 1.45fr, 1.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nigerian example],
  ),
  [Subsistence intensive], [small plot, hand tools, food for the household], [the yam and cassava farms of the south-east],
  [Subsistence extensive], [shifting cultivation, land rested between crops], [the middle belt and the forest margins],
  [Commercial intensive], [capital, hired labour, one crop for sale], [cocoa in Ondo, oil palm in Edo, sugar in Numan],
  [Commercial extensive], [machines, large area, low labour per hectare], [the grain farms of the north-west, ranching schemes],
)

== 3.2 Shifting Cultivation and the Fallow

Shifting cultivation is the oldest system and still the safest where land is cheap and capital is
scarce. A plot is cleared, cropped for two or three seasons, then abandoned while the bush
regrows and the soil recovers; the farmer moves to a fresh plot, and the *fallow* does the work
that fertiliser would do elsewhere.

#table(
  columns: (1.5fr, 1.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Advantages],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Problems],
  ),
  [no fertiliser needed; the fallow restores fertility], [low yield per hectare],
  [little capital; the tool is the hoe and the machete], [clearing and burning destroy soil life],
  [pests and weeds are left behind with the old plot], [long fallow needs land that is no longer available],
  [mixed cropping spreads the risk of failure], [the farmer cannot produce a surplus for market],
)

#v(4pt)

The system breaks down when population pressure shortens the fallow. A ten-year rest restores the
soil; a two-year rest does not, and the plot is cropped until it yields nothing. The result is
the *bush fallow* problem the examiner likes: the same system, on too little land.

== 3.3 Plantation and Cash Crops

A plantation is a large estate growing one crop for sale, usually for export, with capital,
hired labour and processing on or near the estate.

#table(
  columns: (0.95fr, 1.2fr, 1.15fr, 1.3fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Rainfall],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Belt],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Main areas],
  ),
  [Cocoa], [1 500–2 500 mm], [forest], [Ondo, Ogun, Cross River, Osun],
  [Oil palm], [over 2 000 mm], [forest], [Edo, Delta, Akwa Ibom],
  [Rubber], [2 000 mm], [forest], [Edo, Cross River, Delta],
  [Groundnut], [500–1 000 mm], [savanna], [Kano, Kaduna, Jigawa],
  [Cotton], [500–1 000 mm], [savanna], [Katsina, Kano, Zamfara],
  [Millet and sorghum], [400–800 mm], [Sudan savanna and Sahel], [Sokoto, Borno, Yobe],
  [Rice], [over 1 000 mm, or irrigation], [river valleys], [Kebbi, Ebonyi, Niger],
  [Yam and cassava], [1 000–1 500 mm], [forest and derived savanna], [Benue, Enugu, Oyo],
)

#v(4pt)

The four export crops — cocoa, oil palm, groundnut and rubber — were the backbone of the
colonial economy, and their decline after 1970 is a standard exam question. The reasons are
structural: the oil boom drew labour and capital away, the marketing boards kept prices below
the world price, and the trees aged without being replaced.

== 3.4 What a Crop Needs

A crop is a set of requirements. Learn the requirements and the map follows.

#table(
  columns: (1.0fr, 2.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Requirement],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it matters],
  ),
  [Rainfall], [its total and its season decide the belt — 400 mm of millet in the Sahel, 2 000 mm of oil palm in the forest],
  [Temperature], [cocoa needs a mean above 25 °C; wheat and barley need a cool season; the tropics are too hot for most temperate grains],
  [Soil], [deep, well-drained loams for roots; alluvium for rice; the laterite of the plateau for cassava and groundnut],
  [Sunshine], [the dry-season sun ripens groundnut and cotton; too much cloud reduces the harvest],
  [Slope], [flat or gently sloping land for the plough; slopes invite erosion when cleared],
  [Labour], [planting, weeding and harvesting are hand work on most Nigerian farms],
)

== 3.5 Livestock and Fishing

*Nomadic pastoralism* moves cattle, sheep or goats with the pasture and the water. It is
extensive, it makes use of land that cannot be farmed, and it is in conflict with arable farming
along the same corridor. *Ranching* fences the herd and grows its feed — more productive, but it
needs capital and land that the north does not always have.

Fishing is classified by where it happens: *inland* (rivers, lakes, fish ponds, Lake Chad and the
Niger), *coastal* (the lagoons and the creeks) and *deep sea* (trawlers off the continental
shelf). Nigeria imports fish because the local catch, though large, is caught by small boats with
simple gear.

== 3.6 Problems and Improvements

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE PROBLEMS, AND WHAT THE PAPER CREDITS AS A FIX]
  #v(4pt)
  #table(
    columns: (1.45fr, 2.1fr),
    inset: (x: 4pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Low yield per hectare*], [improved seed, fertiliser, extension advice],
    [*Rain-fed dependence*], [irrigation, especially in the north and the river valleys],
    [*Land tenure*], [consolidation and title, so a farmer can invest in land he holds],
    [*Post-harvest loss*], [storage, drying floors, rural roads, processing nearby],
    [*Labour shortage at peak*], [mechanisation, ox-plough, hired gangs],
    [*Poor prices*], [cooperatives, guaranteed prices, market access],
    [*Pests and disease*], [resistant varieties, spraying, veterinary services],
  )
]

#v(4pt)

The *Green Revolution* that the syllabus mentions is not a single policy but a package: seed,
fertiliser, water and extension delivered together. Nigeria's attempts have been partial —
the River Basin Development Authorities built irrigation, the Agricultural Development
Programmes added extension, and the Anchor Borrowers' Programme tried credit — and each failed
where one leg of the package was missing.

== 3.7 Four Worked Questions

#worked-example(
  1,
  "The axis that defines a system",
  [Farming in which a large area is cultivated with little labour or capital per hectare is called

    A. intensive farming \
    B. extensive farming \
    C. plantation farming \
    D. mixed farming],
  [
    *Step 1 — read the definition in the stem.* Little labour or capital per hectare is the defining phrase.

    *Step 2 — match the term.* That is extensive. Intensive is the opposite; plantation and mixed describe purpose or mix, not intensity.

    *Step 3 — note the trap.* A plantation can be extensive or intensive; the size of the farm alone does not decide it.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Why the fallow fails",
  [Shifting cultivation becomes a problem when

    A. the farmer uses fertiliser \
    B. the fallow period is shortened by population pressure \
    C. the crop is sold instead of eaten \
    D. the land is irrigated],
  [
    *Step 1 — understand the system.* The fallow restores fertility, so its length is the system's engine.

    *Step 2 — find the failure mode.* When land is scarce, the rest is cut from ten years to two and the soil never recovers.

    *Step 3 — reject the others.* Fertiliser, sale and irrigation change the system but do not break it.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Crop and belt",
  [Which crop is best matched to its belt?

    A. Cocoa in the Sudan savanna \
    B. Millet in the rainforest \
    C. Groundnut in the savanna \
    D. Oil palm in the Sahel],
  [
    *Step 1 — recall the requirements.* Cocoa and oil palm need over 1 500 mm of rain; millet and groundnut tolerate 400–1 000 mm.

    *Step 2 — test each pairing.* Cocoa in the savanna and oil palm in the Sahel are too dry; millet in the rainforest is too wet.

    *Step 3 — confirm.* Groundnut belongs to the savanna, and the groundnut pyramids of Kano are the proof.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The structural cause",
  [The decline of Nigeria's export crops after 1970 is best explained by

    A. a fall in world demand alone \
    B. the oil boom, low producer prices and ageing trees \
    C. the absence of suitable land \
    D. a change in the climate],
  [
    *Step 1 — separate one cause from a set.* A single cause cannot explain a national decline.

    *Step 2 — test the economic story.* Oil drew labour and capital away, marketing boards held prices down, and the plantations aged.

    *Step 3 — dismiss the physical explanations.* Land and climate did not change enough to account for the fall.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 3.8 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [The system in which land is rested between periods of cultivation is], [mixed farming], [shifting cultivation], [plantation agriculture], [irrigation farming])

#mcq(2, [Cocoa is best grown in the], [Sudan savanna], [Sahel], [forest belt], [derived savanna])

#mcq(3, [Nomadic pastoralism is chiefly practised in the], [rainforest], [savanna and Sahel], [coastal creeks], [river valleys])

#mcq(4, [Which is a post-harvest problem of Nigerian agriculture?], [poor seed], [low rainfall], [inadequate storage], [land tenure])

#answer-key-grid(("B", "C", "B", "C"))

#answer-notes((
  ("B", [Resting land is the defining act of shifting cultivation; the fallow restores the fertility the crop removed.]),
  ("C", [Cocoa needs over 1 500 mm of rain and a long wet season, which only the forest belt provides.]),
  ("B", [Cattle move with pasture and water across the savanna and into the Sahel in the wet season.]),
  ("C", [Storage is lost after the harvest. Seed and rainfall are production problems; tenure is a structural one.]),
))

#diagram-fig("diagrams/recap_geo2_ch03.svg",
  "Chapter 3 recap card: the axes, the fallow, the plantation and the belts.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A farm is placed on three axes — subsistence or commercial, intensive or extensive, crop or
    livestock — and the four systems the paper names are the corners of those axes. Shifting
    cultivation works while the fallow is long and fails when land runs short. The cash crops
    belong to the forest and the savanna by their rainfall, and their decline is economic, not
    physical. The Nigerian farm yields little because seed, water, storage and advice arrive one
    at a time instead of together.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Place four named systems on the subsistence/commercial and intensive/extensive axes.],
  [Explain why a shortened fallow destroys the soil.],
  [Match six crops to their rainfall and belt.],
  [Name five problems of Nigerian agriculture and one improvement for each.],
  [Distinguish nomadic pastoralism from ranching in two sentences.],
))

#concept-box("Carry this into Chapter 4")[
  A farm sells a surplus, and a surplus needs somewhere to go: a road, a market and, increasingly,
  a factory that turns the crop into a product worth more than the crop. The next chapter follows
  the harvest out of the village — into the mine, the power station and the factory floor.
]

#include "drill_ch03.typ"
