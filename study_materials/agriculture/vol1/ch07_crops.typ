#import "template.typ": *

#current-chapter.update("Chapter 7: The Crops of Nigeria")

#pagebreak()

#chapter-opener(
  7,
  "The Crops of Nigeria",
  subtitle: "Cereals, Legumes, Roots and Tubers, and the Cash Crops That Earn Foreign Exchange",
  syllabus-ref: "Part I • Crop Production",
  utme-weight: "8 Qs a year",
  running: "The Crops of Nigeria",
)

#focus-radar(
  objectives: (
    "Classify crops by life cycle, by use and by morphology.",
    "Name the major cereals, legumes, roots and tubers of Nigeria with their requirements and products.",
    "Name the principal cash and industrial crops and the state or belt in which each is grown.",
    "State the ecological zone a given crop requires and why.",
    "Explain the common cropping patterns of Nigerian farms.",
  ),
  hotspots: (
    "“Which of these is a legume?” — cowpea, groundnut or soya bean. The trap offers *maize*, which is a cereal and a grass.\n",
    "“A crop that lives for more than two years is …” — a perennial. The trap offers *an annual*, which completes its life in one season.\n",
    "“The main products of the oil palm are …” — palm oil from the mesocarp and palm kernel from the nut. The trap offers *palm wine only*, which is a by-product of the inflorescence.\n",
    "“Cocoa is grown mainly in …” — the forest belt of the south-west, with Ondo the leading state. The trap offers *the north*, where the rainfall is far too low.",
  ),
  trap-summary: "Three slips. (1) Naming a crop without its zone: the paper nearly always asks where and why, not only what. (2) Confusing the *use* classification with the *botanical* one: maize is a cereal by morphology and a food crop by use, and both are correct answers to different questions. (3) Forgetting the by-products — bran, oil, cake, wine, fibre — which are often the point of a question about value.",
)

// ============================================================================
== 7.1 Classifying a Crop

Three classifications are examined, and a crop must be placed in all three.

#table(
  columns: (1.05fr, 1.6fr, 2.5fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Basis],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Classes],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Examples],
  ),
  [Life cycle], [annual, biennial, perennial], [maize and cowpea are annual; onion is biennial; cocoa, oil palm and rubber are perennial],
  [Use], [food, cash or industrial, forage, cover], [maize for food; cocoa for cash; elephant grass for forage; mucuna for cover],
  [Morphology], [cereal, legume, root, tuber, fibre, oil, beverage], [maize (cereal), cowpea (legume), cassava (root), yam (tuber), cotton (fibre), oil palm (oil), cocoa (beverage)],
  [Climate], [tropical, sub-tropical, temperate], [cocoa (tropical), Irish potato (temperate, on the plateau)],
)

#v(2pt)

One more basis matters for the examination: *photoperiod*. Some crops flower only when the day is
short — maize and rice in the tropics — and some only when it is long. It explains why a variety
bred for one latitude may fail in another even when the soil and the rain are right.

== 7.2 The Cereals

The cereals are grasses grown for their grain. They are the carbohydrate base of the Nigerian diet,
and four of them carry the country.

#table(
  columns: (0.85fr, 1.15fr, 1.15fr, 1.15fr, 1.5fr),
  inset: (x: 4pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Rainfall and soil],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Spacing],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Maturity],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Products and notes],
  ),
  [Maize (*Zea mays*)], [600–1 500 mm; deep, well-drained loam], [75 × 25 cm], [90–120 days], [grain, green maize, stover; the leading cereal in yield per hectare],
  [Rice (*Oryza sativa*)], [over 1 000 mm, or irrigation; heavy soil that holds water], [20 × 20 cm transplanted], [110–150 days], [paddy, milled rice, bran; grown in the floodplains and the fadama],
  [Sorghum (*Sorghum bicolor*)], [500–800 mm; tolerates dry spells], [75 × 25 cm], [100–120 days], [grain, stalks for fodder and fencing; the great cereal of the north],
  [Millet (*Pennisetum glaucum*)], [400–600 mm; light sandy soil], [75 × 30 cm], [75–90 days], [grain; the most drought-tolerant of the four],
)

#v(2pt)

#rule-box("Why sorghum and millet hold the north")[
  Both are short-season, drought-tolerant grasses that can wait out a dry spell that would kill maize.
  Their stomata close and their leaves roll, and they still fill a grain head. Maize yields more where
  the rain is reliable; sorghum and millet yield *something* where it is not, and in the Sahel
  something is the difference between a harvest and a famine.
]

== 7.3 The Legumes

A legume is a pod-bearing plant that forms nodules on its roots with rhizobium bacteria and fixes
atmospheric nitrogen. That single fact runs through the whole syllabus: the legume feeds itself and
leaves nitrogen for the crop that follows.

#table(
  columns: (1.0fr, 1.35fr, 1.2fr, 1.3fr, 1.4fr),
  inset: (x: 4pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Zone],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Spacing],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Maturity],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Products],
  ),
  [Cowpea (*Vigna unguiculata*)], [savanna, 500–1 200 mm], [60 × 30 cm], [70–90 days], [beans for food; fodder; the "poor man's meat"],
  [Groundnut (*Arachis hypogaea*)], [north-west savanna, 500–1 000 mm], [60 × 15 cm], [90–120 days], [kernels, groundnut oil, cake, haulms],
  [Soya bean (*Glycine max*)], [Guinea savanna, 700–1 200 mm], [50 × 10 cm], [90–120 days], [oil, soya meal, milk and flour],
)

#v(2pt)

Legumes also earn their place in a rotation for a second reason: they break the cycle of the
cereal's pests and diseases, and their canopy covers the soil before the rains can carry it away.

== 7.4 Roots and Tubers

Roots and tubers are grown for the swollen underground organ in which the plant stores its starch.
They are bulky, perishable and the backbone of the Nigerian food economy.

#table(
  columns: (0.95fr, 1.3fr, 1.15fr, 1.3fr, 1.55fr),
  inset: (x: 4pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Zone],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Planting material],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Maturity],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Products],
  ),
  [Cassava (*Manihot esculenta*)], [all zones, 600–1 500 mm], [stem cuttings, 1 m × 1 m], [9–18 months], [gari, fufu, starch, flour; the most tolerant of poor soil],
  [Yam (*Dioscorea* spp.)], [forest and derived savanna], [setts on ridges, 1 m × 1 m], [8–10 months], [pounded yam, yam flour, chips; the prestige food],
  [Cocoyam (*Colocasia*, *Xanthosoma*)], [moist forest and swamp edges], [corms and cormels], [6–9 months], [boiled food, flour; tolerates shade and wet],
  [Sweet potato (*Ipomoea batatas*)], [savanna, 500–1 000 mm], [vine cuttings on ridges], [3–4 months], [boiled food, flour; the fastest of the four],
)

#v(2pt)

Cassava is the crop that carries the most examination weight, because it is the most Nigerian: it
yields on poor soil, it survives a drought by shedding its leaves, and it can be left in the ground
as a living store until the price is right. Its weakness is equally examinable — it is bulky, it
spoils within days of lifting, and the raw root contains cyanogenic compounds that must be removed
by processing.

#diagram-fig("diagrams/agr1_ch07_crops.svg",
  "Figure 7.1 — Nigeria's belts, from the mangrove to the Sahel, and what each one grows.", width: 98%)

== 7.5 The Cash and Industrial Crops

A cash crop is grown for sale rather than for the family's food, and most of Nigeria's cash crops are
perennial tree crops concentrated in the forest belt.

#table(
  columns: (0.95fr, 1.15fr, 1.5fr, 1.75fr),
  inset: (x: 4pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Main belt],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Products],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Notes for the paper],
  ),
  [Cocoa (*Theobroma cacao*)], [Ondo, Ogun, Osun, Cross River], [beans, butter, powder, cake], [shade-loving; black pod is its great disease; pods are broken, beans fermented and dried],
  [Oil palm (*Elaeis guineensis*)], [Cross River, Edo, Akwa Ibom, Imo], [palm oil, kernel, kernel oil, wine, broom], [the mesocarp gives oil; the nut gives kernel; the trunk gives wine when tapped],
  [Rubber (*Hevea brasiliensis*)], [Edo, Delta, Cross River], [latex, crumb rubber], [tapped by cutting the bark on a spiral; the latex is coagulated and pressed],
  [Cotton (*Gossypium* spp.)], [Kano, Katsina, Zamfara, Kaduna], [lint, seed, oil, cake], [a savanna crop with a marked dry season; the lint goes to the textile mills],
  [Kola (*Cola nitida*)], [Ondo, Ogun, Osun, Kwara], [nuts for chewing], [the kola trade is old and ceremonial as well as commercial],
  [Sugar cane (*Saccharum officinarum*)], [Niger, Kwara, Kaduna, Adamawa], [sugar, molasses, bagasse], [needs irrigation or a high water table; the estates are at Bacita, Numan and Savannah],
  [Cashew (*Anacardium occidentale*)], [Kogi, Kwara, Oyo, Enugu], [nuts, juice], [a drought-tolerant tree of the derived savanna; Nigeria is a leading producer],
)

== 7.6 Fruits and Vegetables

Horticultural crops are the most intensive and the most perishable. They are grown near cities and
along the floodplains, where water and a market are both close.

#table(
  columns: (1.1fr, 1.3fr, 2.9fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Zone and season],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What the paper asks],
  ),
  [Tomato], [derived savanna, irrigated in the dry season], [transplanted; blossom-end rot is a calcium problem; staked in some systems],
  [Pepper], [all zones, nursery then field], [transplanted; harvested green or red; drying and grinding add value],
  [Onion], [the north, dry season under irrigation], [a biennial grown as an annual; curing and storage are the weak link],
  [Okra], [all zones], [direct sown; picked young; a mucilaginous thickening agent in soup],
  [Plantain and banana], [forest and derived savanna], [propagated by suckers; the bunch is harvested green],
  [Citrus], [forest belt], [budded; the fruit is harvested by clipping, not pulling],
  [Mango], [savanna and forest], [grafted; fruit flies are the storage problem],
  [Pineapple], [forest and coastal plain], [propagated by suckers; harvested at colour break],
)

== 7.7 Cropping Patterns

A Nigerian field is rarely one crop. The pattern is a decision about light, water, labour and risk.

#table(
  columns: (1.15fr, 2.0fr, 2.0fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Pattern],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why a farmer does it],
  ),
  [Sole cropping], [one crop on the plot for the season], [a contract, a machine or a market demands uniformity],
  [Mixed / intercropping], [two or more crops on the same plot at the same time], [spreads risk, uses light and ground space, and the legume feeds the cereal],
  [Relay cropping], [a second crop is sown into the first before it is harvested], [gains a season without losing the first crop],
  [Sequence / double cropping], [a second crop follows the first on the same land within the year], [more output from scarce land where water allows],
  [Strip cropping], [alternate strips of two crops, usually across the slope], [checks erosion and spreads labour],
  [Shifting and rotation], [the land moves, or the crops do], [restores fertility and breaks pest cycles],
)

#trap-box("The name of the crop is only half the answer")[
  A question that names a crop usually also asks for its *zone*, its *product* or its *limiting factor*.
  Cocoa in the north is wrong on rainfall; cassava on a waterlogged plot is wrong on drainage; maize in
  the Sahel is wrong on drought. Learn each crop as a sentence: what it needs, where it grows, what it
  gives.
]

== 7.8 Four Worked Questions

#worked-example(
  1,
  "Placing a crop in its family",
  [Which of the following is a legume?

    A. Maize \
    B. Cowpea \
    C. Cassava \
    D. Millet],
  [
    *Step 1 — recall the family.* Legumes bear pods and nodulate.

    *Step 2 — test each.* Cowpea is a pod-bearing plant with root nodules. Maize and millet are grasses; cassava is a root crop of the spurge family.

    *Step 3 — state the consequence.* As a legume, cowpea fixes nitrogen and leaves it for the next crop.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Why cassava is everywhere",
  [Cassava is grown in almost every part of Nigeria mainly because it

    A. needs a very fertile soil \
    B. tolerates poor soil and drought and can be left in the ground \
    C. matures in three months \
    D. is grown only for export],
  [
    *Step 1 — list what cassava actually does.* It yields on poor, sandy soil, sheds its leaves in drought, and stores its roots in the ground until they are needed.

    *Step 2 — match the option.* B names exactly those three qualities.

    *Step 3 — dismiss the rest.* Cassava is not demanding of fertility, takes nine months or more rather than three, and is grown mainly for the home market.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Reading the belt",
  [A crop that requires over 1 500 mm of rainfall, shade in its early years and a deep, well-drained
  soil is most likely to be

    A. millet \
    B. cotton \
    C. cocoa \
    D. sorghum],
  [
    *Step 1 — use the rainfall.* Over 1 500 mm puts the crop in the forest belt, which excludes millet and cotton (savanna) and sorghum (dry savanna).

    *Step 2 — use the shade requirement.* Cocoa is the classic shade-demanding establishment crop, grown under plantain or forest trees.

    *Step 3 — confirm with the soil.* Deep, well-drained forest soil is the cocoa description used in every textbook.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The reason behind the intercrop",
  [A farmer plants maize and cowpea together. The agronomic advantage of the mixture is that

    A. the cowpea fixes nitrogen that the maize can use and covers the soil against erosion \
    B. the maize shades out the cowpea \
    C. the two crops compete for the same nutrients \
    D. the cowpea prevents the maize from lodging],
  [
    *Step 1 — identify the relationship.* Cereal plus legume is the classic intercrop: the legume nodulates and fixes nitrogen, some of which becomes available to the companion.

    *Step 2 — add the second benefit.* The legume's low canopy covers the ground, reducing splash erosion and evaporation.

    *Step 3 — reject the negatives.* Competition is a cost to be managed, not an advantage; shading the cowpea would reduce its nitrogen fixation; and lodging is a function of stem strength and wind, not of a neighbouring crop.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

== 7.9 Chapter 7 in the Exam Hall — a Two-Minute Set

#mcq(1, [Which of these is a cereal?], [cowpea], [groundnut], [sorghum], [soya bean])

#mcq(2, [A crop that completes its life cycle within one year is described as], [perennial], [annual], [biennial], [ephemeral])

#mcq(3, [Palm kernel oil is obtained from the], [mesocarp], [trunk], [leaves], [kernel of the nut])

#mcq(4, [Cocoa is best grown in the], [Sahel], [Sudan savanna], [Guinea savanna], [forest belt])

#answer-key-grid(("C", "B", "D", "D"))

#answer-notes((
  ("C", [Sorghum is a grass grown for grain; the others are legumes.]),
  ("B", [One season, seed to seed, is an annual; two years is a biennial and many is a perennial.]),
  ("D", [Palm oil comes from the mesocarp; palm kernel oil comes from the kernel inside the nut.]),
  ("D", [Cocoa needs forest rainfall and shade, which is why Ondo leads the belt.]),
))

#diagram-fig("diagrams/recap_agr1_ch07.svg",
  "Chapter 7 recap card: cereals, legumes, roots and tubers, and the cash crops.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Crops are classified by life cycle, use, morphology and climate, and Nigeria's crops follow the
    rainfall belts: maize and rice where water is reliable, sorghum and millet where it is not. The
    legumes — cowpea, groundnut, soya bean — fix their own nitrogen and feed the crop that follows.
    Cassava, yam, cocoyam and sweet potato store starch underground and carry the food economy. The
    cash crops — cocoa, oil palm, rubber, cotton, kola, sugar cane and cashew — sit in the forest belt
    and the derived savanna and earn the foreign exchange. The field is rarely one crop: the pattern
    is a decision about light, risk and the next season.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [Classify any crop by life cycle, use and morphology.],
  [Name the four cereals and the rainfall each needs.],
  [Name the three legumes and the product each gives.],
  [Match six cash crops to their belts.],
  [Explain two advantages of intercropping a cereal with a legume.]),
)

#concept-box("Carry this into Chapter 8")[
  The crop is grown, and the marks are not yet earned. Half of what a Nigerian farmer produces is
  lost after harvesting — in threshing, in drying, in the store, on the road — and the last chapter
  follows the harvest from the field to the market: when to reap, how to process, where to store, and
  who takes the margin.
]

#include "drill_ch07.typ"
