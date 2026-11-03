#import "template.typ": *

#current-chapter.update("Appendix F: The Definitions File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix F: The Definitions File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Definitions File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    The definitions the paper uses, in the wording it accepts. A definition is one sentence; the
    example that follows it is what earns the second mark.
  ]
]

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[EIGHT PAIRS THE PAPER CONFUSES]
  #v(5pt)
  #text(size: 9.7pt)[
    *Roughage and concentrate.* Roughage is bulky and fibrous, over about 18 per cent crude fibre;
    concentrate is dense and low in fibre. Grass is roughage however much of it the animal eats.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *Digestion and absorption.* Digestion breaks the feed down; absorption takes the products
    through the gut wall. A question about the rumen is a digestion question.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *A disease and a deficiency.* The disease has a pathogen and can spread; the deficiency is a
    shortage of a nutrient and cannot. Rickets is a deficiency; Newcastle disease is not.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *A vector and a host.* The vector carries the pathogen — the tsetse fly; the host harbours it
    and suffers — the cow. The mosquito is the vector of fowl pox, not its host.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *A breed and a species.* A breed is a group within one species that breeds true — Ndama,
    White Fulani; a species is the larger group — *Bos indicus*. All breeds of cattle are one
    species.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *Inbreeding and cross-breeding.* Inbreeding mates close relatives to fix a character;
    cross-breeding mates two different breeds to gain hybrid vigour. The first concentrates genes,
    the second mixes them.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *A fixed cost and a variable cost.* The fixed cost is paid whether or not the flock exists —
    rent, depreciation; the variable cost moves with the flock — feed, drugs, casual labour.
  ]
  #v(4pt)
  #text(size: 9.7pt)[
    *Gross margin and profit.* Gross margin is output minus variable cost; profit is what is left
    after fixed cost too. A farm can have a positive gross margin and still make a loss, and that
    is the trap.
  ]
]

#v(5pt)

#table(
  columns: (1.2fr, 2.9fr),
  inset: (x: 6pt, y: 1.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Definition],
  ),
  [Agriculture], [the production of crops and animals, and the processing and marketing of what they yield],
  [Livestock], [domesticated animals kept for food, work, fibre or manure],
  [Animal husbandry], [the science and practice of breeding and managing farm animals],
  [Ruminant], [an animal with a four-chambered stomach that ferments fibre before digesting it],
  [Monogastric], [an animal with a single simple stomach],
  [Rumen], [the first and largest stomach chamber, where microbes digest cellulose],
  [Rumination], [the regurgitation and rechewing of the cud],
  [Cud], [a bolus of feed returned from the rumen for a second chewing],
  [Reticulum], [the second chamber, which traps foreign bodies and moves the cud],
  [Omasum], [the third chamber, which absorbs water and grinds the feed],
  [Abomasum], [the fourth chamber, the true stomach that secretes acid and enzymes],
  [Crop], [the pouch in a bird's oesophagus where feed is stored and softened],
  [Gizzard], [the muscular organ of a bird that grinds feed against grit],
  [Proventriculus], [the glandular stomach of a bird],
  [Caecum], [a blind pouch where fibre is fermented in the pig, rabbit and bird],
  [Roughage], [feed with more than about 18 per cent crude fibre],
  [Concentrate], [feed low in fibre and rich in energy or protein],
  [Silage], [fodder preserved by controlled fermentation in a silo],
  [Hay], [grass cut and dried for storage],
  [Ration], [the quantity of feed given to one animal in a day],
  [Balanced ration], [a ration supplying every nutrient in the proportion the animal needs],
  [Total mixed ration], [a mix of roughage and concentrate fed as one meal],
  [Pearson square], [a diagram that finds the ratio in which two feeds are mixed to hit a target],
  [Palatability], [how readily an animal accepts a feed],
  [Aflatoxin], [a poison produced by moulds on damp groundnut and maize],
  [Animal unit], [a 450 kg mature cow used as the standard for stocking],
  [Carrying capacity], [the number of animals a pasture supports without damage],
  [Stocking rate], [the number of animals actually kept on a unit area],
  [Zero-grazing], [a system in which forage is cut and carried to housed animals],
  [Ranching], [the management of stock on a fenced range under a grazing plan],
  [Nomadism], [the movement of a herd with its owner in search of water and pasture],
  [Transhumance], [the seasonal movement of stock between wet and dry season grazing],
  [Breed], [a group of animals of one species that breeds true for chosen characters],
  [Pure breeding], [the mating of animals of the same breed],
  [Cross-breeding], [the mating of animals of two different breeds],
  [Inbreeding], [the mating of closely related animals],
  [Up-grading], [the repeated use of a purebred sire on the local dams],
  [Hybrid vigour], [the superior performance of a first cross over either parent],
  [Oestrus], [the period of sexual receptivity in the female],
  [Oestrus cycle], [the interval from one heat to the next],
  [Gestation], [the period from conception to birth],
  [Service], [the act of mating, natural or artificial],
  [Artificial insemination], [the placing of semen in the female by instrument],
  [Parturition], [the act of giving birth],
  [Farrowing], [the act of a sow giving birth],
  [Lambing], [the act of a ewe giving birth],
  [Calving], [the act of a cow giving birth],
  [Colostrum], [the first milk, rich in antibody and laxative],
  [Weaning], [the removal of the young from the mother's milk],
  [Culling], [the removal of an unproductive or diseased animal from the herd],
  [Brooding], [the heating and care of day-old chicks],
  [Debeaking], [the trimming of a bird's beak to stop cannibalism],
  [Dubbing], [the trimming of a bird's comb],
  [Castration], [the removal of the testicles of a male animal],
  [Barrow], [a castrated male pig],
  [Gilt], [a young female pig before her first litter],
  [Sow], [a mature female pig that has farrowed],
  [Boar], [a mature uncastrated male pig],
  [Point of lay], [the age at which a pullet lays her first egg],
  [Spent layer], [a hen that has finished her laying cycle],
  [Pathogen], [an organism that causes disease],
  [Vector], [an organism that carries a pathogen from one host to another],
  [Host], [an animal in or on which a parasite lives],
  [Zoonosis], [a disease that passes from animal to man],
  [Vaccine], [a preparation that gives immunity without causing the disease],
  [Antibiotic], [a substance that kills or stops bacteria],
  [Anthelmintic], [a drug that kills internal worms],
  [Acaricide], [a chemical that kills ticks and mites],
  [Disinfectant], [a chemical that destroys pathogens on surfaces],
  [Quarantine], [the isolation of new or sick animals to prevent spread],
  [Incidence], [the number of new cases in a period],
  [Prevalence], [the number of cases existing at one time],
  [Aquaculture], [the farming of fish and other water organisms],
  [Pond], [an enclosed body of water used for fish culture],
  [Fingerling], [a young fish about the size of a finger, ready for stocking],
  [Monoculture], [the culture of one species alone],
  [Polyculture], [the culture of two or more species together],
  [Pond fertilization], [the addition of manure or lime to feed the plankton],
  [Silviculture], [the science of raising forest trees],
  [Afforestation], [the planting of trees where none grew before],
  [Reforestation], [the replanting of a forest after felling],
  [Taungya], [the raising of food crops between young forest trees],
  [Forest reserve], [gazetted land protected for timber, water and wildlife],
  [Agroforestry], [the growing of trees with crops or livestock on the same land],
  [Farm record], [a written account of the activities, inputs and money of a farm],
  [Inventory], [a list and valuation of the stock and stores on a date],
  [Cash book], [the book in which every receipt and payment is entered],
  [Ledger], [the book in which entries are sorted by account],
  [Trial balance], [a list of ledger balances that should agree],
  [Balance sheet], [a statement of what a farm owns and owes on a date],
  [Depreciation], [the fall in value of an asset through use and time],
  [Fixed cost], [a cost that does not change with the level of output],
  [Variable cost], [a cost that rises and falls with the level of output],
  [Gross margin], [output minus variable cost],
  [Break-even], [the output at which total revenue equals total cost],
  [Return on capital], [profit expressed as a percentage of the capital invested],
  [Extension], [the two-way service that carries research to the farmer and his problem back to research],
  [Extension agent], [the field officer who teaches and advises farmers],
  [Demonstration], [a plot or meeting at which a practice is shown to work],
  [Teaching aid], [any material that makes an extension message clearer],
  [Adoption], [the farmer's decision to use a recommended practice],
  [Cooperative], [a voluntary association of farmers who pool resources for a common benefit],
  [Patronage dividend], [the share of a cooperative surplus paid according to use],
  [Marketing board], [a statutory body that bought export crops at a fixed price],
  [Agricultural policy], [the set of government decisions that direct the farm sector],
  [Credit], [the use of money now in return for repayment later],
  [Collateral], [an asset pledged against a loan],
  [Insurance], [the transfer of a risk to a company for a premium],
  [Premium], [the amount paid for an insurance cover],
)

#pagebreak(weak: true)
