#import "template.typ": *

#current-chapter.update("Appendix I: The Comparison Tables")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix I: The Comparison Tables]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Comparison Tables]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Eight tables that answer the "compare" question the paper keeps asking. Each one is read
    across the criterion, never down the column.
  ]
]

#v(6pt)

== I.1 Sand, Silt and Clay

#table(
  columns: (1.05fr, 1.05fr, 1.05fr, 1.05fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Sand],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Silt],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Clay],
  ),
  [Particle size], [2.0 – 0.05 mm], [0.05 – 0.002 mm], [below 0.002 mm],
  [Feel when dry], [gritty], [smooth, like flour], [hard, clods],
  [Feel when wet], [falls apart], [slippery], [sticky and plastic],
  [Water holding], [poor; drains fast], [moderate], [excellent; drains slowly],
  [Aeration], [good], [fair], [poor when wet, cracked when dry],
  [Nutrient holding], [very low], [moderate], [high],
  [Warmth], [warms early], [moderate], [warms late],
  [Workability], [easy at any moisture], [easy when moist], [narrow range; sticky or hard],
  [Best use], [early crops, groundnut, melon], [river flood plains], [rice, sugar cane; needs organic matter],
)

== I.2 The Horizons

#table(
  columns: (0.55fr, 1.35fr, 2.2fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Horizon],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it contains],
  ),
  [O], [organic], [litter and humus on the surface; the source of the soil's nitrogen],
  [A], [topsoil], [the darkest, most fertile layer; roots, humus, soil life],
  [E], [eluvial], [the pale layer from which clay and iron have been washed],
  [B], [illuvial], [the layer where clay, iron and aluminium accumulate],
  [C], [parent material], [weathered rock fragments; little organic matter],
  [R], [bedrock], [solid, unweathered rock],
)

#pagebreak(weak: true)

== I.3 Manure and Fertiliser

#table(
  columns: (1.05fr, 1.6fr, 1.6fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Manure and compost],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Compound fertiliser],
  ),
  [Source], [animal and plant waste], [mined or manufactured salts],
  [Nutrient content], [low, variable, under 1 per cent], [high, stated on the bag],
  [Bulk], [very bulky; tonnes per hectare], [concentrated; bags per hectare],
  [Organic matter], [adds humus and improves structure], [adds none],
  [Speed], [slow, released as it rots], [fast, soluble and immediate],
  [Residual effect], [lasts several seasons], [one season; the rest leaches],
  [Cost per nutrient unit], [low per tonne, high per kilogram of nutrient], [high per bag, low per kilogram of nutrient],
  [Risk], [weed seeds, pathogens, smell], [scorching, leaching, acidification],
)

== I.4 Seed and Vegetative Planting

#table(
  columns: (1.05fr, 1.6fr, 1.6fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Sexual — seed],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Asexual — cuttings, setts, grafts],
  ),
  [Offspring], [variable; new combinations appear], [identical to the parent, a clone],
  [Time to bearing], [slow; a seedling tree takes years], [fast; the tissue is already mature],
  [Root system], [a natural taproot, deep], [often shallow, dependent on the piece],
  [Seed supply], [cheap, small, easy to store and carry], [bulky, perishable, costly to move],
  [Disease], [can be cleaned by seed treatment], [carries the parent's viruses into every plant],
  [Use], [cereals, legumes, vegetables, tree nurseries], [cassava, yam, sugar cane, banana, cocoa clones],
)

== I.5 Monocot and Dicot

#table(
  columns: (1.05fr, 1.6fr, 1.6fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Monocotyledon],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Dicotyledon],
  ),
  [Seed leaves], [one], [two],
  [Leaf veins], [parallel], [netted],
  [Root], [fibrous], [taproot],
  [Vascular bundles], [scattered in the stem], [in a ring around the stem],
  [Flower parts], [in threes], [in fours or fives],
  [Stem], [cannot thicken; no true bark], [thickens by a cambium ring],
  [Examples], [maize, rice, sorghum, millet, sugar cane, oil palm], [cowpea, groundnut, cassava, cocoa, cotton, tomato],
)

#pagebreak(weak: true)

== I.6 Cereal and Legume

#table(
  columns: (1.05fr, 1.6fr, 1.6fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Cereal],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Legume],
  ),
  [Family], [Gramineae — the grasses], [Leguminosae — the pulses],
  [Part harvested], [the grain, a caryopsis], [the seed in a pod],
  [Nitrogen need], [high; responds to top dressing], [low; fixes its own through *Rhizobium*],
  [Root], [fibrous, shallow], [taproot, with nodules],
  [Protein], [8–12 per cent], [20–40 per cent],
  [Rotation role], [the heavy feeder], [the fertility builder],
  [Storage], [dry grain, 12–13 per cent], [dry grain or pods; oil crops go rancid],
  [Examples], [maize, rice, sorghum, millet, wheat], [cowpea, groundnut, soya bean, pigeon pea],
)

== I.7 Pest, Disease and Weed

#table(
  columns: (0.8fr, 1.35fr, 1.35fr, 1.35fr),
  inset: (x: 5pt, y: 2.9pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Pest],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Disease],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Weed],
  ),
  [What it is], [an animal that damages the crop], [a disorder caused by a pathogen], [a plant in the wrong place],
  [Sign], [holes, tunnels, chewed edges], [lesions, moulds, mosaic, wilt], [competition for light, water, nutrients],
  [Agent], [insect, nematode, rodent, bird], [fungus, bacterium, virus, nematode], [the weed itself],
  [Spread], [flight, crawling, wind, seed], [wind, rain splash, vector, seed], [seed, rhizome, wind, water],
  [Control], [cultural, biological, resistant varieties, insecticide], [resistant varieties, clean seed, fungicide, sanitation], [cultivation, hoeing, mulching, herbicide],
  [Example], [stem borer on maize], [black pod on cocoa], [spear grass in the savanna],
)

== I.8 The Store for the Crop

#table(
  columns: (1.15fr, 1.35fr, 1.30fr, 1.25fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Holds],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Keeps it by],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Watch for],
  ),
  [Crib], [maize on the cob], [ventilation under a roof], [rain blowing in at the sides],
  [Silo], [bulk grain], [airtight bulk with aeration], [moisture migration and caking],
  [Yam barn], [yam tubers], [shade, air and a rack], [heat and rot in a closed barn],
  [Rhombus or platform], [cassava chips and grain], [raised, open drying floor], [rain and dew at night],
  [Jute or polypropylene bag], [threshed grain and cowpea], [a sealed, stacked bag], [weevils entering through the seams],
  [Cold room], [vegetables and fruit], [low temperature], [the cost of the power],
)

#pagebreak(weak: true)

== I.9 The Tools and What They Do

#table(
  columns: (1.05fr, 1.30fr, 1.55fr, 1.10fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Tool],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Operation],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Power],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Its limit],
  ),
  [Cutlass], [clearing, harvesting, cutting], [human], [no depth; no precision],
  [Hoe], [weeding, ridging, earthing up], [human], [slow; back-breaking over a hectare],
  [Axe and matchet], [felling and splitting], [human], [only for trees and stumps],
  [Dibber], [making planting holes], [human], [one hole at a time],
  [Spade and shovel], [digging and moving soil], [human], [small areas only],
  [Mouldboard plough], [inverting the topsoil], [animal or tractor], [stones and stumps break it],
  [Disc plough], [cutting through trash and roots], [tractor], [leaves the trash partly buried],
  [Harrow], [breaking clods and levelling], [animal or tractor], [needs a ploughed field first],
  [Ridger], [making ridges], [animal or tractor], [only on prepared soil],
  [Planter], [sowing at a set spacing and depth], [tractor], [needs graded, clean seed],
  [Sprayer], [applying chemical at a measured rate], [human or tractor], [wind drift and nozzle wear],
)

== I.10 The Six Measurements

#table(
  columns: (1.20fr, 1.35fr, 1.85fr),
  inset: (x: 6pt, y: 3.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Typical question],
  ),
  [Plant population], [10 000 ÷ (row × within-row)], ["how many stands per hectare?"],
  [Seed rate], [recommendation ÷ germination fraction], ["how much seed for 2 ha?"],
  [Fertiliser product], [nutrient ÷ per cent in the bag], ["how many bags of urea?"],
  [Germination], [germinated ÷ sown × 100], ["is this lot worth sowing?"],
  [Profit], [revenue − cost], ["what did the season earn?"],
  [Yield per hectare], [total ÷ area], ["what is the yield?"],
)

#pagebreak(weak: true)
