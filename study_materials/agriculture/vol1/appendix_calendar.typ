#import "template.typ": *

#current-chapter.update("Appendix E: The Farm Calendar")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix E: The Farm Calendar]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Farm Calendar]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    A Nigerian farm year in the two great rainfall belts. Read the row for the month you are in
    and ask what the paper would say should be happening: every operational question is a
    calendar question in disguise.
  ]
]

#v(6pt)

== E.1 The Year, South and North

#table(
  columns: (0.62fr, 1.55fr, 1.55fr, 1.02fr),
  inset: (x: 5pt, y: 2.8pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Month],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[South — forest and derived savanna],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[North — Guinea and Sudan savanna],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Watch for],
  ),
  [January], [dry season; land clearing, burning of refuse heaps, tool repair, barn building, compost turning], [harmattan; threshing the last harvest, dry-season gardening in fadama, land clearing], [the dry wind splitting exposed soil and drying seed],
  [February], [clearing continues; palm wine tapping; cocoa pod-breaking ends; nursery beds prepared], [irrigation gardening, clearing, manure carted to the field], [late bush burning that destroys organic matter],
  [March], [first showers; nursery sowing of maize, tomato and pepper; yam setts sprouted], [the first rain in the south of the belt; land preparation begins], [seed sown into dry soil on the strength of one shower],
  [April], [main planting of maize and cassava; cowpea; early yam mounds; transplanting of tomato], [clearing and early ploughing; dry planting of millet on the light soils], [cutworm and grasshopper attack on the young stand],
  [May], [maize top dressing; first weeding; rice nursery; cocoa black-pod spraying begins], [main planting of sorghum, millet, groundnut and cowpea as the rains settle], [weeds overtaking a late first weeding],
  [June], [second weeding; cowpea flowering; oil palm harvesting; plantain suckering], [first weeding; groundnut pegging; cowpea spraying for thrips], [flower thrips and aphids on cowpea and groundnut],
  [July], [maize silking and tasselling; stem borer scouting; yam staking; melon harvest], [sorghum and millet tillering; top dressing; *Striga* hand-pulling], [nitrogen washed out by heavy rain],
  [August], [early maize harvest begins; cassava mosaic roguing; tomato staking; pepper harvest], [sorghum heading; cowpea podding; groundnut lifting begins], [black pod in wet cocoa; mould in damp maize],
  [September], [main maize harvest; drying on the platform; cowpea and groundnut harvest; yam lifting starts], [early millet harvest; cowpea harvest; the last top dressing not applied], [grain harvested above 20 per cent moisture],
  [October], [late maize; rice harvest; cassava harvest for gari; cocoa main crop begins], [sorghum and late millet harvest; threshing on the mat], [rain on the drying floor; aflatoxin in damp cobs],
  [November], [dry-season tomato and onion nurseries; cocoa harvest; palm oil pressing; storage cleaning], [main threshing; bagging; marketing; dry-season irrigation prepared], [weevils entering newly stored cowpea],
  [December], [harmattan; vegetable gardening in fadama; land clearing for the new year], [harmattan; threshing, bagging, market sales, compost and manure hauling], [fire in the bush and in the barn],
)

#v(4pt)

#text(size: 9.3pt)[
  No two years follow this table exactly, and no two farms in one state follow it together: a
  farm at Ijebu-Ode may plant maize in March while a farm at Sokoto waits until June. The table
  gives the *order* of the operations, which is what the paper tests.
]

#v(5pt)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE FOUR MARKERS OF THE SEASON]
  #v(4pt)
  #text(size: 9.6pt)[
    *The first steady rain.* Not the first shower — the first week in which the soil stays wet to
    the depth of a hoe blade. That week, and not the calendar, opens the planting season.
  ]
  #v(3pt)
  #text(size: 9.6pt)[
    *The last rain.* The week after which no rain of consequence falls for a fortnight. In the
    south it comes in October or November; in the north, in September or early October. It closes
    the planting window for any crop that needs more than ninety days.
  ]
  #v(3pt)
  #text(size: 9.6pt)[
    *The harmattan.* The dry north-east wind that arrives in December and leaves in February. It
    dries the surface, splits the soil, and makes December and January the months for clearing,
    carting manure, repairing tools and building stores.
  ]
  #v(3pt)
  #text(size: 9.6pt)[
    *The first harvest.* For maize in the south, August; for sorghum in the north, October. From
    that week the farm's work changes from growing to drying, threshing and selling — and the
    store, not the field, becomes the place where the season is won or lost.
  ]
]

#v(5pt)

#pagebreak(weak: true)

== E.2 The Calendar of One Crop

#table(
  columns: (0.95fr, 1.05fr, 1.05fr, 1.15fr, 1.20fr),
  inset: (x: 5pt, y: 2.9pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Plant],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Harvest],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Between],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[After],
  ),
  [Maize], [March–May, south; May–June, north], [August–October], [thin at two leaves; top dress at four to six leaves; weed twice], [dry to 13 per cent; shell; store with insecticide or in a crib],
  [Rice], [May–June, nursery; June–July, transplant], [October–November], [keep the field flooded; weed twice; bird-scaring], [dry, thresh, mill; store as milled rice or paddy],
  [Cassava], [April–June, at the first steady rain], [9–12 months later, any time], [weed twice; no fertiliser needed on a fresh forest soil], [process within 48 hours — gari, flour or starch; the root rots],
  [Yam], [November–January, setts in mounds], [August–October, when the vine yellows], [stake; weed; earth up; watch nematodes], [store in a yam barn, on a rack, in the dark and dry],
  [Cowpea], [April–May, south; June–July, north], [August–September], [spray at flowering for thrips; harvest in two pickings], [dry; treat with insecticide; store sealed],
  [Groundnut], [May–June], [September–October], [weed; do not disturb the pegs; lift with a hoe], [dry the pods; sort out mouldy ones; press for oil],
  [Cocoa], [May–June, seedlings under shade], [October–March, main crop], [shade in the first years; black-pod spraying; prune], [ferment five to seven days; dry to 7 per cent; bag],
  [Oil palm], [April–June, nursery seedlings], [all year after year three or four], [clear the circle; harvest the ripe bunches before they fall], [sterilise, thresh, press; clarify the oil],
)

== E.3 The Ten Things That Must Happen on Time

#table(
  columns: (0.42fr, 1.35fr, 2.95fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Operation],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why the date is the whole mark],
  ),
  [1], [Land clearing before the first rain], [the soil must be bare and the trash rotted before the rains arrive],
  [2], [Ploughing at the right moisture], [too wet smears the soil into clods; too dry breaks the plough],
  [3], [Planting within the first two weeks of steady rain], [every week of delay costs yield, and late crops meet the pests of the next generation],
  [4], [First weeding within three to four weeks], [the crop must be free of competition before it canopies],
  [5], [Top dressing at four to six leaves], [nitrogen is needed at the point of fastest growth],
  [6], [Spraying cowpea at flowering], [the thrips and pod borers arrive with the flower],
  [7], [Harvesting at maturity, not after], [shattering, rotting and bird damage all begin at once],
  [8], [Drying to 12–13 per cent before storage], [above that figure the mould and the weevil take the store],
  [9], [Cleaning and sealing the store before loading], [an old infestation in the empty store becomes tonight's outbreak],
  [10], [Processing cassava within two days], [the root begins to rot and to lose its starch the moment it is lifted],
)

#v(6pt)

== E.4 Four Calendar Questions the Paper Asks

#table(
  columns: (1.55fr, 2.2fr, 1.35fr),
  inset: (x: 6pt, y: 3.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The answer the examiner wants],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where it is taught],
  ),
  ["When should the land be cleared?"],
    [before the first steady rain, so that the trash has rotted and the soil is bare when the rain comes],
    [Chapter 4, section 4.2],
  ["When is a crop ready to harvest?"],
    [when its own maturity index is met — a black layer at the base of the maize grain, a yellowing vine on the yam, a brown pod on the cowpea — never by the calendar alone],
    [Chapter 8, section 8.1],
  ["Why is the dry season a busy season?"],
    [because clearing, compost, tool repair, store building and irrigation gardening all fall in it, and because the harvest must be dried and marketed],
    [Chapter 4 and Chapter 8],
  ["Why does the north plant later than the south?"],
    [because the rains arrive later in the north: the ITD reaches the coast in March and the Sahel in June or July],
    [Chapter 2 and Chapter 7],
)

#pagebreak(weak: true)
