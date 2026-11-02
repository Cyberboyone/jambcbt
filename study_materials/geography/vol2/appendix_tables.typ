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
    Eight pairs the paper sets side by side. The criterion is the first column; a comparison
    without a criterion earns nothing.
  ]
]

#v(6pt)

== I.1 Rural and Urban Settlement

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rural],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Urban],
  ),
  [Main activity], [farming, fishing, forestry], [industry, trade, services],
  [Density], [low and dispersed], [high and nucleated],
  [Land use], [fields, bush, fallow], [housing, roads, industry, offices],
  [Services], [few, low threshold], [many, high threshold],
  [Population], [under half the country in most states], [the majority, and rising],
  [Example], [a Tiv homestead in Benue], [Lagos and its conurbation],
)

== I.2 Subsistence and Commercial Farming

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Subsistence],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Commercial],
  ),
  [Purpose], [food for the family], [profit from sale],
  [Scale], [small holding], [large farm or estate],
  [Inputs], [hand tools, family labour], [machines, hired labour, fertiliser, credit],
  [Output], [little surplus], [high and marketed],
  [Risk], [weather only], [weather and price],
  [Example], [millet and guinea corn in Katsina], [cocoa in Ondo, oil palm in Cross River],
)

== I.3 Shifting Cultivation and Plantation

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Shifting],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Plantation],
  ),
  [Land], [cleared plot, abandoned after two or three years], [one permanent estate],
  [Fertility], [restored by the fallow], [maintained by fertiliser and cover],
  [Crops], [mixed food crops], [one cash crop],
  [Capital], [almost none], [heavy — plants, roads, processing],
  [Labour], [family], [hired, often resident],
  [Problem], [needs land and a long fallow], [one price, one disease, one market],
)

== I.4 Light and Heavy Industry

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Light],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Heavy],
  ),
  [Raw material], [small in bulk], [bulky — ore, limestone, coal],
  [Plant], [small, often in towns], [large, near the deposit],
  [Capital], [moderate], [very large],
  [Product], [consumer goods], [producer goods — steel, cement, machinery],
  [Example], [garments, bread, printing], [Ajaokuta steel, Obajana cement],
)

== I.5 Renewable and Non-Renewable Power

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Renewable],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Non-renewable],
  ),
  [Source], [sun, wind, water, biomass], [coal, oil, gas, uranium],
  [Exhaustion], [replenished], [finite],
  [Cost], [high capital, low running], [lower capital, fuel cost],
  [Siting], [where the resource is], [near the fuel or the load],
  [Nigeria], [Kainji, Shiroro, Zungeru; solar mini-grids], [gas turbines, the refineries, coal at Enugu],
)

== I.6 Visible and Invisible Trade

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Visible],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Invisible],
  ),
  [What is traded], [goods], [services],
  [Recorded in], [the balance of trade], [the balance of payments only],
  [Nigerian export], [crude oil, cocoa, sesame], [freight, tourism, remittances],
  [Nigerian import], [machinery, refined fuel, wheat], [insurance, shipping, licences],
  [Why it matters], [the bulk of Nigeria's earnings], [the fastest-growing share],
)

== I.7 Two Population Structures

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Young, fast-growing],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Ageing, slow-growing],
  ),
  [Base of the pyramid], [very wide], [narrow],
  [Birth rate], [high, over 35 per 1 000], [low, under 15],
  [Death rate], [falling, about 12], [low, about 10],
  [Dependency], [children], [the elderly],
  [Growth], [about 3 % a year], [under 1 %],
  [Example], [Nigeria], [Japan or Italy],
)

== I.8 Military and Civilian Government

#table(
  columns: (1.0fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Criterion],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Military],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Civilian],
  ),
  [Source of authority], [force — a coup], [election],
  [Law], [decrees, ouster clauses], [a constitution and statutes],
  [Legislature], [dissolved], [elected assembly],
  [Courts], [special tribunals], [the ordinary courts],
  [Accountability], [to the commanding officer], [to the electorate],
  [Term], [indefinite], [fixed and renewable by vote],
)
