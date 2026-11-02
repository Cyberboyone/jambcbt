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
    Ninety definitions, in the wording the paper accepts. A definition is one sentence; the
    example that follows it is what earns the second mark.
  ]
]

#v(6pt)

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
  [Population], [the total number of people living in an area at a given time],
  [Census], [a country's official count of its people at one moment],
  [Population density], [the average number of people per square kilometre],
  [Population distribution], [the way people are spread over an area],
  [Population structure], [the composition of a population by age and sex],
  [Population pyramid], [a diagram showing the age and sex structure of a population],
  [Birth rate], [live births per thousand people per year],
  [Death rate], [deaths per thousand people per year],
  [Infant mortality], [deaths of children under one year per thousand live births],
  [Life expectancy], [the average number of years a person is expected to live],
  [Natural increase], [the excess of births over deaths in a population],
  [Doubling time], [years taken for a population to double],
  [Dependency ratio], [the number of dependants per hundred people of working age],
  [Migration], [the movement of people from one place to another to live],
  [Immigration], [movement into a country or area],
  [Emigration], [movement out of a country or area],
  [Net migration], [immigration minus emigration],
  [Push factor], [a condition that drives people away from a place],
  [Pull factor], [a condition that attracts people to a place],
  [Refugee], [a person forced to leave home by war, persecution or disaster],
  [Over-population], [a population too large for the resources available to it],
  [Under-population], [a population too small to use the resources available],
  [Optimum population], [the size giving the highest output per head],
  [Settlement], [a place where people live together in buildings],
  [Rural settlement], [a settlement dominated by farming and primary activity],
  [Urban settlement], [a settlement dominated by secondary and service activity],
  [Dispersed settlement], [a pattern of scattered farms and homesteads],
  [Nucleated settlement], [a pattern in which buildings cluster together],
  [Linear settlement], [buildings strung along a road, river or coast],
  [Site], [the actual ground on which a settlement stands],
  [Situation], [the position of a settlement relative to its surroundings],
  [Function], [the main activity a settlement performs],
  [Central business district], [the commercial core of a town, with the highest land values],
  [Threshold], [the minimum population needed to support a service],
  [Range], [the maximum distance people will travel for a service],
  [Sphere of influence], [the area served by a town or service],
  [Urbanisation], [the rising proportion of a population living in towns],
  [Urban growth], [the absolute increase in the number of town dwellers],
  [Conurbation], [a continuous built-up area formed by merged towns],
  [Satellite town], [a planned town built near a large city to absorb overspill],
  [Sprawl], [the uncontrolled spread of a city into the countryside],
  [Agriculture], [the cultivation of crops and the rearing of livestock],
  [Subsistence farming], [production mainly for the farmer's own family],
  [Commercial farming], [production mainly for sale],
  [Intensive farming], [high inputs of labour and capital per hectare],
  [Extensive farming], [large areas worked with low inputs per hectare],
  [Shifting cultivation], [cropping a plot, then abandoning it to the fallow],
  [Fallow], [land rested to recover its fertility],
  [Mixed farming], [crops and livestock on the same holding],
  [Plantation], [a large estate growing one crop for sale with hired labour],
  [Cash crop], [a crop grown mainly for sale],
  [Irrigation], [the artificial supply of water to farmland],
  [Mechanisation], [the replacement of human labour with machines],
  [Extension service], [the transfer of improved methods from research to farmers],
  [Cooperative], [farmers or traders who pool inputs and marketing],
  [Mining], [the extraction of minerals from the earth],
  [Open-cast mining], [surface mining that removes the overburden],
  [Mineral], [a naturally occurring inorganic substance in the crust],
  [Power], [the energy used to do work],
  [Renewable energy], [energy from a source that is replenished],
  [Industry], [the processing of raw materials into goods],
  [Heavy industry], [industry using bulky raw materials in large plants],
  [Light industry], [industry using small inputs to make consumer goods],
  [Footloose industry], [industry with no strong locational pull],
  [Industrial estate], [an area with shared roads, power and water for factories],
  [Transport], [the movement of people and goods],
  [Trade], [the exchange of goods and services],
  [Visible trade], [trade in goods],
  [Invisible trade], [trade in services],
  [Balance of trade], [visible exports minus visible imports],
  [Balance of payments], [the full external account, including invisibles and capital],
  [Tariff], [a tax on imports],
  [Quota], [a limit on the quantity of an import],
  [Embargo], [a ban on trade with a country],
  [Terms of trade], [export prices as a percentage of import prices],
  [Tourism], [travel for pleasure, and the industry that serves it],
  [Ecotourism], [low-impact tourism built on natural sites],
  [Foreign policy], [a state's principles and actions towards other states],
  [Diplomacy], [the conduct of relations by negotiation rather than force],
  [Sovereignty], [the supreme authority of a state within its territory],
  [National interest], [the security and prosperity of the state],
  [Election], [the choice of representatives by the votes of the people],
  [Electoral system], [the rules that turn votes into seats],
  [Constituency], [an area represented by one member],
  [Franchise], [the right to vote],
  [Electoral commission], [the body that organises and supervises elections],
  [Hazard], [a natural event that may cause harm],
  [Disaster], [a hazard that has caused loss to a vulnerable population],
  [Desertification], [the spread of desert conditions into farmland],
  [Deforestation], [the clearing of forest cover],
  [Erosion], [the removal of soil or rock by water, wind or ice],
  [Conservation], [the careful use of a resource so that it renews],
  [Preservation], [the protection of a resource from any use],
  [Pollution], [the contamination of the environment by harmful substances],
  [Sustainable development], [growth that does not destroy the base it depends on],
)

#v(4pt)

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE TEN PAIRS THAT ARE ALWAYS CONFUSED]
  #v(3pt)
  #text(size: 9.5pt)[
    density / size · natural increase / growth rate · urbanisation / urban growth · site /
    situation · threshold / range · subsistence / commercial · light / heavy industry ·
    visible / invisible trade · hazard / disaster · conservation / preservation. If a question
    turns on one of these pairs, the difference is the answer.
  ]
]
