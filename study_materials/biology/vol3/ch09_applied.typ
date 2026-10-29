#import "template.typ": *

#current-chapter.update("Chapter 9: Applied Biology — Crops, Pests and Livestock")
#pagebreak()

#chapter-opener(
  9,
  "Applied Biology: Crops, Pests and Livestock",
  subtitle: "What a Crop Needs, Fertiliser against Manure, Crop Rotation and Mixed Farming, Crop Improvement, Pests and Diseases and Their Control, Ruminant and Non-Ruminant Livestock, and the Storage of Food",
  syllabus-ref: "Sec. C • Topic 9",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "State the role of nitrogen, phosphorus and potassium in a crop, and read an NPK fertiliser ratio.",
    "Compare fertiliser with manure on four points, and state one disadvantage of each.",
    "Explain why crop rotation and mixed cropping are better than monoculture.",
    "Describe three methods of crop improvement and one aim of each.",
    "Classify a named pest and describe two methods of controlling it.",
    "Distinguish a ruminant from a non-ruminant, and name two diseases of Nigerian livestock with their control.",
    "Name five methods of food preservation and say what each one does to micro-organisms.",
  ),
  hotspots: (
    "\\\"Nitrogen is needed for …\\\" — leaves and vegetative growth. \\\"Phosphorus for …\\\" — roots, flowering and fruiting. \\\"Potassium for …\\\" — disease resistance and fruit quality.",
    "\\\"A fertiliser labelled NPK 20:10:10 contains …\\\" — 20 % nitrogen, 10 % phosphorus, 10 % potassium.",
    "\\\"The main advantage of manure over fertiliser is …\\\" — it improves soil structure and adds humus.",
    "\\\"Ruminants can digest cellulose because …\\\" — bacteria and protozoa in the rumen break it down.",
    "\\\"Repeated use of one pesticide leads to …\\\" — resistance in the pest population, and resurgence because its natural enemies are killed.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Confusing the roles of the three N-P-K elements: nitrogen builds leaves and stems, phosphorus builds roots and fruit, potassium hardens the plant against disease. (2) Calling manure \\\"better than fertiliser\\\" without a reason: manure is bulkier and slower, but it adds humus and improves structure — say *what* it does, not that it is simply better. (3) Forgetting that chemical control has costs: resistance, resurgence, pollution and the death of pollinators and natural enemies. Every question that asks for a disadvantage is testing this.",
)

// ============================================================================
// SECTION 9.1
// ============================================================================
== 9.1 What a Crop Needs

A crop needs *light* for photosynthesis, *water* for transport and turgor, *air* in the soil for the roots, a suitable *temperature*, a suitable *soil pH*, and *mineral salts* — the last of which the farmer controls most directly.

The three elements that limit yield are nitrogen, phosphorus and potassium, always quoted in that order as *N : P : K*. A fertiliser labelled *NPK 20:10:10* contains 20 % nitrogen, 10 % phosphorus (as P₂O₅) and 10 % potassium (as K₂O); the remaining 60 % is filler and carrier.

#table(
  columns: (1.0fr, 1.5fr, 2.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Builds],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Deficiency symptom],
  ),

  [*Nitrogen (N)*], [leaves, stems and all vegetative growth; it is part of chlorophyll and of every protein], [pale green to yellow leaves, starting with the oldest; stunted growth; few branches],
  [*Phosphorus (P)*], [roots, flowering, fruiting and seed formation; it is part of ATP and of nucleic acids], [purple or reddish leaves; poor root growth; late flowering; small, empty fruit],
  [*Potassium (K)*], [disease resistance, water regulation, fruit quality and the filling of grain], [scorched leaf margins, weak stems that lodge, poor fruit colour and keeping quality],
)

The minor elements — calcium, magnesium, sulphur, iron, zinc, boron and manganese — are needed in tiny amounts, but a shortage of any of them shows up just as clearly: magnesium deficiency gives *interveinal chlorosis*, yellowing between green veins.

#table(
  columns: (1.1fr, 1.55fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Point],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fertiliser],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Manure],
  ),

  [Nature], [inorganic salts, concentrated and soluble], [organic — dung, compost, poultry litter, plant residue],
  [Speed of action], [fast: the ions dissolve and are taken up at once], [slow: it must be broken down by decomposers first],
  [Effect on the soil], [adds no humus; repeated use can acidify the soil and the excess is leached or washes into streams], [adds humus, holds water and minerals, improves structure and feeds soil life],
  [Cost and supply], [expensive; needs foreign exchange and transport], [cheap and local, but bulky and unpleasant to handle],
)

#trap-box("Say what manure does, not that it is \\\"better\\\"")[
  Manure and fertiliser are complementary, not rivals. The examiner's mark is for the *mechanism*: manure improves *soil structure* and adds *humus*, which holds water and mineral ions, while fertiliser supplies *concentrated soluble ions* immediately. A good answer gives one advantage and one limitation of each — and never writes that manure has no nutrients, because it has all three, just in low concentration.
]

#concept-box("Soil pH and liming")[
  Most crops grow best between pH 6.0 and pH 7.0. Below pH 5.5 aluminium becomes soluble and toxic and phosphorus is locked up; above pH 7.5 iron and zinc become unavailable. Acid soil is corrected by *liming* — spreading calcium carbonate or dolomite, which neutralises the acid — and alkaline soil by adding organic matter or gypsum. In southern Nigeria, where heavy rainfall leaches bases out of the soil, acidity is the usual problem.
]

// ============================================================================
// SECTION 9.2
// ============================================================================
== 9.2 Systems of Crop Production

*Monoculture* is the same crop on the same land year after year. It is easy to mechanise and to sell, but it mines one set of nutrients, builds up one set of soil pests, and gives a pest or a disease an uninterrupted supply of its host.

*Mixed cropping* (intercropping) grows two or more crops together in the same field — maize with cowpea, cassava with maize and melon, as in most Nigerian smallholder farms. One crop shades or supports another, the ground is covered for more of the year, and a failure in one crop does not mean an empty store. The competitive disadvantage is that the crops compete for light, water and nutrients, and harvesting is harder to mechanise.

*Crop rotation* moves the crops round a set of plots in a planned order.

#diagram-fig("diagrams/ch09_croprotation.svg",
  "A four-year rotation: a heavy feeder, then a legume that puts nitrogen back, then a deep feeder, then a fallow year — and the cycle repeats, so no pest meets its host in the same place twice.")

#concept-box("Why rotation works, in four words")[
  *Nutrients* — a legume in the cycle adds nitrogen through *Rhizobium*. \
  *Pests and diseases* — a soil pest specific to one crop starves in the years when that crop is absent. \
  *Weeds* — different crops are weeded at different times, so one weed is never favoured for ever. \
  *Structure* — deep and shallow roots, and a fallow year, improve the soil.
]

// ============================================================================
// SECTION 9.3
// ============================================================================
== 9.3 Crop Improvement

A *variety* is a group of plants within a species with a set of characteristics that are passed on to their offspring. Plant breeders change those characteristics deliberately, and there are four methods the syllabus names.

#table(
  columns: (1.2fr, 2.0fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the breeder does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it can achieve],
  ),

  [*Selection*], [chooses plants with the desired character, self-pollinates them and repeats over many generations], [a pure line with higher yield or better fruit — but only from variation already present],
  [*Hybridisation* (crossing)], [crosses two varieties with different desirable characters and selects among the offspring], [combines two strengths — high yield with disease resistance],
  [*Mutation breeding*], [treats seed with radiation or a chemical mutagen, then selects useful mutants], [a genuinely new character, but most mutations are harmful, so the search is slow],
  [*Genetic engineering*], [inserts a gene from another organism directly into the crop], [a character the species never had, such as built-in pest resistance — and a public argument about safety],
)

The aims are always the same short list: higher *yield*, *resistance* to a named disease or pest, *early maturity* (which allows two crops a year or an escape from drought), *drought tolerance*, better *food quality* — protein content, cooking quality, storability — and *adaptation* to local soil and climate.

#shortcut-box("Improvement is not the same as fertiliser")[
  Fertiliser removes a *limit* on growth that is already there. Crop improvement changes the *plant's own capacity* to grow. A question that says \\\"yield rose after a new variety was planted on the same field, with the same fertiliser\\\" is asking about *genetic* improvement — selection, hybridisation or mutation breeding.
]

// ============================================================================
// SECTION 9.4
// ============================================================================
== 9.4 Pests, Diseases and Their Control

A *pest* is any organism that damages a crop or a stored product, or that competes with it. The syllabus expects you to classify a pest and then choose a control.

#concept-box("The classes of pest")[
  *Insects* — stem borers in maize, weevils in stored grain, aphids and whiteflies that also carry viruses, grasshoppers and locusts. \
  *Nematodes* — microscopic worms in the soil that attack roots, causing galls and stunting. \
  *Molluscs* — snails and slugs in wet, lowland fields. \
  *Vertebrates* — rodents in the store and the field, *Quelea* birds in the Sahel, monkeys on the farm edge. \
  *Weeds* — spear grass, *Striga* on cereals, water hyacinth in waterways. \
  *Diseases* — caused by fungi (blast, rust, blight), bacteria (wilt), viruses (cassava mosaic, maize streak) and their vectors.
]

#diagram-fig("diagrams/ch09_pests.svg",
  "Five families of control method. Each works, and each has a cost — integrated pest management combines them and keeps chemicals as the last resort.")

#table(
  columns: (1.2fr, 2.0fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examples],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cost or limitation],
  ),

  [*Cultural*], [rotate crops, plant early, destroy crop remains, hand-pick and burn, weed regularly], [demands labour and planning; a neighbour's unweeded field undoes it],
  [*Biological*], [release a predator, a parasite or a pathogen — *Bacillus thuringiensis*, ladybirds against aphids], [the agent may attack a non-target species, or leave when the pest becomes scarce],
  [*Chemical*], [spray an insecticide, fungicide or herbicide], [pollutes water and soil, kills pollinators and natural enemies, selects for resistance],
  [*Genetic*], [grow a resistant variety bred by selection or hybridisation], [slow to produce; the pest may overcome the resistance],
  [*Physical*], [netting, traps, barriers, sound scarers, heat treatment of stored grain], [labour-heavy and expensive at large scale],
)

#worked-example(
  1,
  "The pesticide that made the pest worse",
  tier: "UTME STANDARD",
  [A farmer sprays the same insecticide on his cowpea every two weeks for three seasons. In the third season the aphids are more numerous than ever and a new pest, the whitefly, has appeared. Explain what has happened, using natural selection and the effect of the spray on the community],
  [
    *Step 1 — selection for resistance.* A few aphids in the population already carried alleles that let them survive the spray. The insecticide killed the susceptible majority and left the resistant few, which bred and passed the alleles on. After three seasons the population is largely resistant — the same five steps as antibiotic resistance in chapter 4.

    *Step 2 — resurgence.* The spray also killed the aphids' natural enemies — ladybirds, hoverflies, parasitic wasps and spiders. With the predators gone, the surviving aphids multiply faster than before, and the *pest* returns at a higher level than it started.

    *Step 3 — a secondary pest.* The whitefly was previously kept in check by the same natural enemies; with them removed, it can now build up a population. A pest that appears because its enemies were destroyed is called a *secondary pest*.

    *Step 4 — the remedy.* Integrated pest management: rotate and destroy crop remains, conserve or release natural enemies, spray only when the pest has passed an economic threshold, and alternate the active ingredient so that no single resistance allele is favoured for long.
  ],
)

// ============================================================================
// SECTION 9.5
// ============================================================================
== 9.5 Livestock

Farm animals are divided by their stomachs, and the division decides what they can eat.

*Ruminants* — cattle, sheep and goats — have a four-chambered stomach: *rumen*, *reticulum*, *omasum* and *abomasum*. The rumen holds bacteria and protozoa that digest cellulose, so a ruminant can live on grass and straw that a non-ruminant cannot use at all.

#diagram-fig("diagrams/ch09_livestock.svg",
  "The ruminant stomach. Microbes in the rumen digest the cellulose, the animal absorbs the products, and both gain — a mutualism inside the gut.")

*Non-ruminants* — pigs, poultry, rabbits and fish — have a single simple stomach and cannot digest cellulose. They need concentrates: grain, oil seed cake, fish meal, vitamins and minerals. Poultry is the fastest-growing livestock enterprise in Nigeria because the feed conversion is efficient, the cycle is short and the market is close.

#table(
  columns: (1.45fr, 1.35fr, 2.05fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Disease],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Animal],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cause, vector and control],
  ),

  [*Trypanosomiasis* (nagana)], [cattle, horses], [a protozoan carried by the *tsetse fly*; causes anaemia and wasting; controlled by fly traps, insecticide spraying and trypanotolerant breeds],
  [*Newcastle disease*], [poultry], [a virus; causes gasping, a twisted neck and sudden death; controlled by vaccination, and by culling and burning infected birds],
  [*Foot and mouth disease*], [cattle, sheep, goats, pigs], [a highly infectious virus; causes blisters and lameness; controlled by vaccination, quarantine and movement control],
  [*Anthrax*], [cattle, sheep, goats], [a bacterium that survives in the soil for years; sudden death with dark blood from the openings; controlled by annual vaccination, and carcasses must be burned, never opened],
)

#concept-box("Five principles of livestock health")[
  *Vaccination* — protect before exposure. \
  *Hygiene* — clean water, dry bedding, and a footbath at the gate. \
  *Quarantine* — new animals are kept apart for a fortnight before joining the herd. \
  *Vector control* — dip or spray against ticks and tsetse flies, and drain standing water. \
  *Culling* — remove an infected animal at once, but *never* open an anthrax carcass.
]

// ============================================================================
// SECTION 9.6
// ============================================================================
== 9.6 Food Storage and Preservation

A harvested crop is still alive, and it is food for something else. Post-harvest loss in Nigeria is large, and it is caused by the same three things that drive decay in chapter 7: *water*, *warmth* and *oxygen* — plus pests and moulds.

The methods of preservation are simply ways of removing one of those conditions.

#table(
  columns: (1.25fr, 1.85fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [*Drying and sun-drying*], [removes the water that bacteria and fungi need, so they cannot grow], [maize dried on mats; stockfish; pepper; melon seeds],
  [*Smoking*], [dries the food and deposits antimicrobial compounds from the smoke], [smoked catfish; smoked meat],
  [*Salting and brining*], [the salt draws water out of microbial cells by osmosis, killing or inhibiting them], [salted fish; two weeks of curing meat],
  [*Canning and bottling*], [heat sterilises the food and the sealed container keeps air and microbes out], [tomato paste; fruit juice; bottled palm oil],
  [*Refrigeration and freezing*], [cold slows or stops enzyme action and microbial growth without killing the microbes], [meat and milk kept at 4 °C or below],
  [*Chemical preservatives*], [acid (vinegar), sugar in syrup, or permitted preservatives change the food so microbes cannot grow], [pickled vegetables; jam; soft drinks],
)

#trap-box("Preservation stops growth; sterilisation kills")[
  Refrigeration *stops* micro-organisms growing; it does not kill them, which is why frozen meat spoils when it thaws. Canning *kills* them by heat and then excludes them. Drying and salting *deprive* them of water. If a question asks \\\"why does this method work\\\", name the mechanism — \\\"it removes water\\\", \\\"it excludes air\\\", \\\"it lowers the temperature so enzymes and bacteria are inactive\\\" — not simply \\\"it preserves the food\\\".
]

#concept-box("Storage pests and aflatoxin")[
  *Sitophilus* weevils, the larger grain borer *Prostephanus*, and rats take a share of any store. Dry the grain below 12 % moisture, use hermetic (airtight) bags, dust with a permitted protectant, and keep the store clean. Damp grain also grows *Aspergillus flavus*, whose *aflatoxin* is a poison and a liver carcinogen — which is why mouldy groundnuts must not be eaten or fed to animals.
]

// ============================================================================
// SECTION 9.7 — CHECKLIST
// ============================================================================
== 9.7 Chapter 9 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + state the role of N, P and K and the deficiency symptom of each;
  + read an NPK ratio and say what a 20:10:10 fertiliser contains;
  + compare fertiliser with manure on four points, with one limitation of each;
  + explain soil pH and what liming does;
  + compare monoculture, mixed cropping and crop rotation, and give four reasons rotation works;
  + name four methods of crop improvement and one aim of each;
  + classify a named pest and describe two methods of controlling it;
  + explain pesticide resistance and pest resurgence;
  + distinguish a ruminant from a non-ruminant, and explain cellulose digestion in the rumen;
  + name three livestock diseases with their cause and control;
  + name five methods of food preservation and the mechanism of each;
  + explain what aflatoxin is and how it is prevented.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 9 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A crop needs light, water, air, a suitable pH and N-P-K: nitrogen for leaves, phosphorus for roots and fruit, potassium for strength and quality. Manure feeds the soil, fertiliser feeds the plant. Rotation, mixed cropping and legumes beat monoculture because they restore nutrients and starve soil pests. Breeders use selection, hybridisation, mutation and genetic engineering. Pests are controlled culturally, biologically, chemically, genetically and physically, and chemicals come last because they select resistance and kill natural enemies. Ruminants digest cellulose through rumen microbes; non-ruminants need concentrates. Preservation works by removing water, warmth, air or microbes.
  ]
]

#diagram-fig("diagrams/recap_ch09.svg",
  "Chapter 9 recap card: rotation, fertiliser, pests and livestock.", width: 100%)

// ============================================================================
// SECTION 9.8 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 9.8 Chapter 9 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Ruminants can digest cellulose because], [they secrete cellulase in the saliva], [they have a very large caecum], [bacteria and protozoa in the rumen break it down], [their stomach contains strong acid only])
#mcq(2, [Crop rotation improves soil fertility mainly by], [including legumes that add nitrogen], [removing every pest from the field], [increasing the rainfall of the area], [adding pesticide to the soil])
#mcq(3, [The main danger of using the same pesticide repeatedly is that], [the pest becomes larger], [the pest population becomes resistant], [the crop absorbs the pesticide], [the soil becomes alkaline])
#mcq(4, [Drying preserves food because it], [kills every bacterium in the food], [adds salt to the food], [increases the acidity of the food], [removes the water that micro-organisms need])

#answer-key-grid(("C", "A", "B", "D"))

#answer-notes((
  ("C", [the rumen is a fermentation chamber; its bacteria and protozoa digest cellulose, and the animal absorbs the products — a mutualism.]),
  ("A", [the legume in the cycle carries *Rhizobium* in its root nodules, so nitrogen is returned to the soil instead of being mined out.]),
  ("B", [the spray kills the susceptible insects and leaves the resistant few, which breed — the same five steps as antibiotic resistance.]),
  ("D", [bacteria and fungi need water; removing it stops their growth, although it does not necessarily kill them.]),
))

#include "drill_ch09.typ"
