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
    Nine tables that answer the "compare" question the paper keeps asking. Each one is read
    across the criterion, never down the column.
  ]
]

#v(6pt)

== I.1 Ruminant and Monogastric

#table(
  columns: (1.05fr, 1.05fr, 1.05fr, 1.05fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The ruminant],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The monogastric],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The trap],
  ),
  [Stomach], [four chambers], [one simple stomach], [the bird's crop is not a rumen],
  [Cellulose], [digested by rumen microbes], [passes through undigested], [a pig on grass loses weight],
  [Feed], [grass, hay, silage, residue], [grain, tubers, cakes], [the pig competes with the household],
  [Protein source], [microbial protein from NPN], [pre-formed amino acids only], [urea kills a pig],
  [Chewing], [ruminates, about eight hours], [chews once], [a cow that has stopped is sick],
  [Examples], [cattle, sheep, goat, camel], [pig, rabbit, fowl, horse], [the rabbit ferments in the caecum, not the rumen],
)

== I.2 The Four Stomach Chambers

#table(
  columns: (0.95fr, 1.35fr, 2.35fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Chamber],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The work it does],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What a question looks like],
  ),
  [Rumen], [the fermentation vat; microbes digest fibre and build protein], ["Where is cellulose digested?"],
  [Reticulum], [traps heavy objects, works with the rumen as one unit], ["Why does a cow swallow wire?"],
  [Omasum], [absorbs water and grinds the feed finer], ["Which chamber dries the feed?"],
  [Abomasum], [the true stomach; acid and enzymes digest the microbes], ["Which chamber is like a man's stomach?"],
)

== I.3 Roughage and Concentrate

#table(
  columns: (1.05fr, 1.15fr, 1.15fr, 0.95fr),
  inset: (x: 5.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Roughage],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Concentrate],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Examples],
  ),
  [Crude fibre], [more than 18 %], [less than 18 %], [hay against maize],
  [Bulk], [bulky, low density], [dense, high density], [grass against cake],
  [Energy], [low per kilogram], [high per kilogram], [straw against grain],
  [Cost], [cheap, often on the farm], [dear, must be bought], [haulm against soya meal],
  [Use], [the base of the ruminant ration], [the top-up and the whole monogastric ration], [silage against fish meal],
)

== I.4 The Four Production Systems

#table(
  columns: (1.0fr, 1.15fr, 1.15fr, 1.15fr),
  inset: (x: 5.5pt, y: 2.9pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The animals],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Feed and water],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The weakness],
  ),
  [Nomadic], [the whole herd moves with the family], [whatever the range offers, water at a hole], [no control, no records, no improvement],
  [Transhumant], [part of the family moves with the herd], [seasonal pasture, fixed dry-season camp], [conflict with the farmer on the route],
  [Ranching], [fenced range, planned grazing], [improved pasture and water points], [capital cost of the fence and the water],
  [Intensive], [housed, zero-grazed, fed at the trough], [cut forage and a measured ration], [feed cost and disease in a crowd],
)

== I.5 Breed Types

#table(
  columns: (1.05fr, 1.15fr, 1.15fr, 1.05fr),
  inset: (x: 5.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Local breed],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Exotic breed],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The first cross],
  ),
  [Yield], [low], [high], [high, but below the exotic],
  [Hardiness], [high], [low], [between the two],
  [Feed], [survives on the range], [needs a built ration], [needs some supplement],
  [Disease], [tolerant], [susceptible], [tolerant of the local diseases],
  [Example], [White Fulani, Muturu, Ndama], [Holstein, Jersey, Hampshire], [the F1 the farmer keeps],
)

== I.6 Disease, Vector and Control

#table(
  columns: (1.25fr, 1.15fr, 0.95fr, 1.55fr),
  inset: (x: 5.5pt, y: 2.9pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Disease],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Agent],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Vector],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Control],
  ),
  [Trypanosomiasis], [protozoan], [tsetse, *Glossina*], [traps, pour-on, tolerant breed],
  [Babesiosis], [protozoan], [tick], [dipping, acaricide, tick-free pasture],
  [Anaplasmosis], [rickettsia], [tick], [dipping],
  [Fowl pox], [virus], [mosquito], [vaccine, screens, drain the water],
  [Newcastle disease], [virus], [contact, air, droppings], [vaccine, closed flock, cull],
  [Marek's disease], [herpes virus], [feather dust], [hatchery vaccine],
  [Coccidiosis], [protozoan], [oocyst in wet litter], [coccidiostat, dry litter],
  [Anthrax], [bacterium], [soil, carcass], [vaccine; never open the carcass],
  [Brucellosis], [bacterium], [milk, abortion fluid], [test and cull, pasteurise],
  [Liver fluke], [trematode], [snail in wet pasture], [drain, molluscicide, drench],
)

== I.7 Poultry Enterprise Compared

#table(
  columns: (1.0fr, 1.2fr, 1.2fr, 1.0fr),
  inset: (x: 5.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Broiler],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Layer],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The trap],
  ),
  [Purpose], [meat], [eggs], [a dual-purpose bird does neither well],
  [Life], [6 – 8 weeks to market], [18 months of laying], [the spent layer is not a broiler],
  [Feed protein], [starter 22 %, finisher 18 %], [chick 20 %, layer 16 %], [layer ration to a broiler wastes protein],
  [Space], [10 birds per m²], [6 – 8 birds per m²], [the cage is not the deep litter],
  [Light], [near-continuous light for feeding, then rest], [15 – 16 hours of light], [light drives the layer, not the broiler],
  [Market], [sold at 1.8 – 2.2 kg], [eggs daily, culled at the end], [egg size falls before yield does],
)

== I.8 Records and Accounts

#table(
  columns: (1.15fr, 1.15fr, 1.15fr, 1.05fr),
  inset: (x: 5.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Where it lives],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The trap],
  ),
  [Cash book], [every receipt and payment, dated], [the day's business], [it shows cash, not profit],
  [Inventory], [stock and stores, valued], [the balance sheet date], [a cow is a fixed asset, maize is not],
  [Depreciation], [(cost − salvage) ÷ life], [the profit statement], [land is not depreciated],
  [Gross margin], [output − variable cost], [the enterprise account], [fixed cost is not deducted],
  [Net profit], [gross margin − fixed cost], [the whole farm], [do not stop at the gross margin],
  [Break-even], [fixed cost ÷ margin per unit], [the plan], [the unit must be the same on both sides],
)

#pagebreak(weak: true)

== I.9 Cooperative and Company

#table(
  columns: (0.95fr, 1.30fr, 1.15fr, 1.45fr),
  inset: (x: 5.5pt, y: 2.9pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Cooperative],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Company],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Note],
  ),
  [Control], [one member, one vote], [one share, one vote], [the defining difference],
  [Surplus], [shared by patronage], [shared by shares], [the patronage dividend],
  [Membership], [open and voluntary], [whoever buys shares], [open to any farmer],
  [Purpose], [service to members], [profit to shareholders], [service, not profit],
)

== I.10 The Two Papers at a Glance

#table(
  columns: (0.95fr, 1.55fr, 1.55fr),
  inset: (x: 5.5pt, y: 2.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Paper 1 — The Animal and Its Body],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Paper 2 — The Farm Business],
  ),
  [Ground covered], [chapters 1 to 6, the animal and its husbandry], [chapters 5 to 8, the management and the money],
  [Animal and body], [12 questions], [—],
  [Nutrition], [9 questions], [—],
  [Health], [9 questions], [—],
  [Management and breeding], [6 questions], [10 questions],
  [Fisheries and forestry], [4 questions], [—],
  [Records and accounts], [—], [10 questions],
  [Extension and cooperatives], [—], [9 questions],
  [Policy, credit, insurance], [—], [7 questions],
  [Calculations], [animal units, stocking, Pearson square], [depreciation, gross margin, break-even],
  [The habit tested], [naming the organ, the vector and the figure], [reading a record, a date and a column],
  [The commonest error], [exchanging the stomach chambers], [calling a gross margin a profit],
  [Where the marks leak], [the gestation and incubation figures], [the policy years and the board dates],
)

#v(5pt)

#text(size: 9.4pt)[
  The two papers are one paper in two moods. Paper 1 asks what the animal is and how it is kept;
  Paper 2 asks what the farm earns and who helps it earn. A candidate who can move from the rumen
  to the balance sheet without changing gear has already passed.
]

#pagebreak(weak: true)
