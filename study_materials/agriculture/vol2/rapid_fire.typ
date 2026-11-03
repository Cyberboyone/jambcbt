#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Cover the right-hand column with a card. Say the answer aloud before you look, and mark every
    miss with a dot in the margin; on the second pass, read only the dotted rows. Three passes in
    the last week are worth more than a fourth reading of the chapters.
  ]
]

#v(6pt)

== A.1 Twenty Definitions

#table(
  columns: (1.35fr, 2.6fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Answer],
  ),
  [Ruminant], [an animal with a four-chambered stomach that ferments fibre before digesting it],
  [Monogastric], [an animal with a single simple stomach],
  [Rumen], [the first and largest chamber, where bacteria digest cellulose],
  [Cud], [regurgitated feed chewed a second time as part of rumination],
  [Roughage], [feed with more than about 18 per cent crude fibre — grass, hay, silage],
  [Concentrate], [feed low in fibre and rich in energy or protein — maize, cake, meal],
  [Total mixed ration], [a single mix of roughage and concentrate fed as one meal],
  [Pearson square], [a diagram that finds the ratio in which two feeds are mixed to hit a target],
  [Palatability], [how readily an animal accepts a feed],
  [Animal unit], [a 450 kg mature cow used as the standard for stocking],
  [Carrying capacity], [the number of animals a pasture supports without damage],
  [Stocking rate], [the number of animals actually kept on a unit area],
  [Zero-grazing], [a system in which forage is cut and carried to housed animals],
  [Breed], [a group of animals of one species that breed true for chosen characters],
  [Hybrid vigour], [the superior performance of a first cross over either parent],
  [Oestrus], [the period of sexual receptivity in the female],
  [Gestation], [the period from conception to birth],
  [Service], [the act of mating, natural or artificial],
  [Culling], [the removal of an unproductive or diseased animal from the herd],
  [Zoonosis], [a disease that passes from animal to man],
)

== A.2 Twenty Numbers

#table(
  columns: (1.5fr, 2.45fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
  ),
  [One animal unit], [450 kg live weight of mature cattle],
  [Sheep or goat in animal units], [0.2 AU],
  [Pig in animal units], [0.3 AU],
  [Fowl in animal units], [0.01 AU],
  [Improved pasture carrying capacity], [2.5 AU per hectare],
  [Normal body temperature of cattle], [38 – 39 °C],
  [Fever in cattle], [above 40 °C],
  [Gestation, cow], [283 days],
  [Gestation, ewe], [148 days],
  [Gestation, doe], [150 days],
  [Gestation, sow], [114 days],
  [Gestation, rabbit], [31 days],
  [Incubation, fowl], [21 days],
  [Incubation, guinea fowl], [26 – 28 days],
  [Incubation, duck], [28 days],
  [Oestrus cycle, cow], [21 days],
  [Lactation length], [about 305 days, then 60 days dry],
  [Roughage and concentrate divide], [18 per cent crude fibre],
  [Crude protein, maize], [9 per cent],
  [Crude protein, groundnut cake], [40 per cent],
)

== A.3 Twenty Pairings

#table(
  columns: (1.5fr, 2.45fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Belongs to],
  ),
  [*Glossina*], [the tsetse fly, vector of trypanosomiasis],
  [*Babesia*], [the protozoan of redwater fever, carried by the tick],
  [*Fasciola*], [the liver fluke, whose snail host lives in wet pasture],
  [*Eimeria*], [the protozoan of coccidiosis in poultry],
  [Newcastle disease], [a virus of poultry, vaccinated at day 1 and week 3],
  [Marek's disease], [a herpes virus of poultry, vaccinated in the hatchery],
  [Fowl pox], [a virus of poultry spread by mosquitoes],
  [Anthrax], [a bacterial disease with spores that survive in soil],
  [Brucellosis], [a bacterial disease of cattle that causes abortion],
  [Mastitis], [inflammation of the udder, usually bacterial],
  [Debeaking], [trimming the beak to stop cannibalism],
  [Dubbing], [trimming the comb to prevent injury and frostbite],
  [Castration], [removal of the testicles to quieten and fatten the male],
  [Barrow], [a castrated male pig],
  [Gilt], [a young female pig before her first litter],
  [Brooding], [heating and caring for day-old chicks],
  [Farrowing], [the act of a sow giving birth],
  [Catfish], [the hardy pond fish, *Clarias* species],
  [Tilapia], [the cichlid grown with catfish in polyculture],
  [Silage], [fodder preserved by fermentation in a silo],
)

#pagebreak(weak: true)
