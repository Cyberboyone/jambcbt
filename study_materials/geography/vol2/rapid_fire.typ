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
  [Population density], [the number of people per square kilometre of land],
  [Natural increase], [birth rate minus death rate, ignoring migration],
  [Dependency ratio], [the number of people under 15 and over 64 for every 100 of working age],
  [Population structure], [the make-up of a population by age and sex],
  [Net migration], [immigration minus emigration],
  [Urbanisation], [the rising share of a population living in towns],
  [Settlement], [a group of buildings where people live and work],
  [Threshold], [the minimum demand needed to support a service],
  [Range], [the greatest distance people will travel for a service],
  [Conurbation], [a continuous built-up area formed by merged towns],
  [Subsistence farming], [production mainly for the farmer's own family],
  [Plantation], [large estate growing one cash crop with hired labour and capital],
  [Mixed farming], [crops and livestock on the same holding],
  [Irrigation], [the artificial supply of water to farmland],
  [Balance of trade], [visible exports minus visible imports],
  [Balance of payments], [all external receipts minus all external payments],
  [Terms of trade], [the ratio of export prices to import prices, as a percentage],
  [Tariff], [a tax on imported goods],
  [Ecotourism], [low-impact tourism built on natural sites],
  [Sustainable development], [growth that meets present needs without destroying the resource base for the future],
)

== A.2 Twenty Numbers and Dates

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
  [Area of Nigeria], [923 768 km²],
  [Independence], [1 October 1960],
  [Republican constitution], [1963],
  [Number of states], [36, plus the Federal Capital Territory],
  [FCT created], [1976; capital moved to Abuja in 1991],
  [2006 census], [140 million people],
  [ECOWAS founded], [28 May 1975, in Lagos],
  [ECOWAS members], [15 states],
  [OAU founded], [25 May 1963, in Addis Ababa],
  [African Union launched], [2002],
  [OPEC founded / Nigeria joined], [1960 / 1971],
  [Nigeria joined the UN], [1960],
  [Length of the Niger], [about 4 180 km],
  [Nigeria's coastline], [about 853 km],
  [Highest point], [Chappal Waddi, about 2 419 m],
  [Niger–Benue confluence], [Lokoja],
  [Nigeria's time meridian], [GMT + 1, on 15°E],
  [First commercial oil], [Oloibiri, 1958],
  [SDGs adopted], [2015 — seventeen goals],
  [Brundtland definition], [1987],
)

== A.3 Twenty Pairings

#table(
  columns: (1.45fr, 2.5fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Belongs to],
  ),
  [cocoa], [the forest belt — Ondo, Ogun, Osun],
  [groundnut], [the north-west savanna — Kano, Kaduna],
  [oil palm], [the forest belt of the south],
  [cotton], [the Guinea savanna],
  [millet and sorghum], [the Sudan savanna and Sahel],
  [tin and columbite], [the Jos Plateau],
  [coal], [Enugu and the Udi escarpment],
  [iron ore], [Itakpe],
  [limestone], [Ewekoro, Obajana, Nkalagu],
  [crude oil], [the Niger Delta],
  [Ajaokuta], [steel],
  [Ikot Abasi], [aluminium smelting],
  [Apapa and Tin Can Island], [Lagos port complex],
  [Onne], [deep-water port near Port Harcourt],
  [Lagos–Kano line], [the colonial railway],
  [ECOWAS], [Abuja secretariat],
  [OPEC], [Vienna secretariat],
  [AfCFTA], [one African market],
  [Brundtland Report], [sustainable development],
  [harmattan], [the dry north-east trade wind],
)

#pagebreak(weak: true)
