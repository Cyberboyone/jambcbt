#import "template.typ": *

#current-chapter.update("Appendix G: Model Answers")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix G: Model Answers]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Model Answers]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Six structured questions, answered in the length the paper expects, with the marks marked
    where they are earned. The UTME is multiple choice; the same content is examined in school
    tests and in the post-UTME, which is why the volume keeps the written form.
  ]
]

#v(6pt)

== G.1 How a Written Answer Is Marked

#table(
  columns: (1.1fr, 2.5fr, 1.0fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it looks like],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Marks],
  ),
  [Define], [one sentence with the genus and the difference], [1],
  [Name], [the correct term, spelled correctly], [1],
  [Explain], [a "because" clause that names the process], [2],
  [Give examples], [a named place, not "some countries"], [1 each],
  [Compare], [the criterion, then both sides of it], [2],
)

== G.2 Answer One — Population Distribution

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Explain four factors that affect the distribution of population in Nigeria.]
]

#v(3pt)

#text(size: 10pt)[
  *Relief.* People concentrate on the lowlands and the river plains, where the land is easy to
  farm and to build on, while the steep escarpments and the high plateau tops carry few
  settlements. The coastal plain and the Niger–Benue trough are the clearest examples.
]

#text(size: 10pt)[
  *Climate.* The forest belt with over 1 500 mm of rain supports two crops a year and a dense
  rural population, while the Sahel margin with under 600 mm supports one precarious harvest and
  a sparse one. Rainfall, not area, sets the carrying capacity.
]

#text(size: 10pt)[
  *Soils.* Deep, well-drained loams of volcanic origin, as round Jos and Biu, attract farmers
  even where relief is high, while the thin laterite and the saline soils of the mangrove are
  avoided. Soil quality is the reason the map of density and the map of fertility resemble each
  other.
]

#text(size: 10pt)[
  *Economic activity and history.* The oil towns of the delta, the industrial belt round Lagos
  and the old caravan cities of Kano and Sokoto draw migrants by employment, while the
  tsetse-infested middle belt and the insecure north-east repel them. Mining, industry and
  security all move people, and none of them is natural.
]

#text(size: 9.2pt, fill: jamb-muted)[#emph[Marks: four factors named (4), each explained with a Nigerian example (8). The examiner accepts any four factors that are distinct.]]

== G.3 Answer Two — Urban Problems

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Describe three problems caused by rapid urbanisation in Nigeria and suggest one solution to each.]
]

#v(3pt)

#text(size: 10pt)[
  *Housing.* The inflow outruns the building of houses, so families share rooms and informal
  settlements grow on marginal land. In Lagos the shortage is measured in millions of units.
  *Solution:* site-and-service schemes and low-cost housing finance, with secure titles so that
  households invest in their own improvements.
]

#text(size: 10pt)[
  *Traffic and services.* Roads, drains and buses were laid out for a smaller city, so journeys
  lengthen and waste disposal fails. *Solution:* a funded public transport system — bus rapid
  transit and rail — with land-use planning that puts new housing near the transport corridors.
]

#text(size: 10pt)[
  *Unemployment and the informal sector.* New arrivals without skills crowd into petty trading
  and artisanal work with low and irregular pay. *Solution:* vocational training tied to the
  industries that are actually hiring, and credit for small enterprises, so that the informal
  sector can graduate into firms.
]

#text(size: 9.2pt, fill: jamb-muted)[#emph[Marks: three problems (3), three explanations (3), three solutions (3), any Nigerian detail (3).]]

== G.4 Answer Three — Two Farming Systems

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Compare subsistence and commercial farming under four headings.]
]

#v(3pt)

#table(
  columns: (0.9fr, 1.6fr, 1.6fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Heading],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Subsistence],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Commercial],
  ),
  [Purpose], [food for the family], [profit from sale],
  [Size and inputs], [small, hand tools, family labour], [large, machines, hired labour and capital],
  [Output], [just enough, little surplus], [high yield per worker, sold off the farm],
  [Example], [a guinea-corn plot in Katsina], [a cocoa estate in Ondo],
)

#text(size: 10pt)[
  The comparison earns its marks from the *headings*, not from the length. Each row must name
  the criterion, then give both sides of it in the same sentence.
]

== G.5 Answer Four — Industrial Location

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Explain why a cement factory is sited near its raw material while a bakery is sited near its market.]
]

#v(3pt)

#text(size: 10pt)[
  A cement works consumes limestone in bulk and loses weight in the process: the raw material is
  heavy, the finished product is heavy, and the plant therefore sits on the deposit to avoid
  carrying waste. Obajana and Ewekoro are built on their quarries.
]

#text(size: 10pt)[
  A bakery adds value to flour and sells a perishable product within a day. Its output is
  bulkier and more perishable than its input, so it locates where the customers are; the whole
  city is its market and its delivery radius.
]

#text(size: 10pt)[
  The principle is the *material index*: when the weight of the raw material is far greater than
  the weight of the product, the industry is material-oriented; when the product is heavier,
  bulkier or more perishable than the input, it is market-oriented.
]

== G.6 Answer Five — Foreign Policy

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[State three objectives of Nigeria's foreign policy and explain the instruments used to pursue them.]
]

#v(3pt)

#text(size: 10pt)[
  *Afrocentrism.* Nigeria's first objective is the independence and unity of Africa, pursued
  through the OAU and now the AU, through the liberation committees of the 1970s and through
  mediation in Angola, Chad and Liberia. The instrument is diplomacy, backed by the size of the
  country and its army.
]

#text(size: 10pt)[
  *Regional security and integration.* ECOWAS and ECOMOG are the regional instruments: Nigeria
  funds the Commission, hosts its seat in Abuja and supplied the bulk of the troops that ended
  the Liberian and Sierra Leonean wars. The instrument here is military and financial.
]

#text(size: 10pt)[
  *Economic development.* Oil gives Nigeria a seat in OPEC and a voice in price-setting; trade
  agreements, aid and the AfCFTA pursue markets. The instruments are economic — export revenue,
  tariffs and investment.
]

== G.7 Answer Six — Flooding

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Explain the causes of flooding in Nigeria and describe two of its effects on a riverside town.]
]

#v(3pt)

#text(size: 10pt)[
  *Causes.* Heavy and prolonged rain saturates the soil and fills the channels; the flat lower
  Niger and Benue plains flood when the discharge exceeds the bankfull capacity; dam releases
  from Kainji and Jebba add a surge; and urban growth seals the surface and blocks the drains,
  so a moderate storm floods a street that once drained. Sea-level rise and tidal backup worsen
  the delta.
]

#text(size: 10pt)[
  *Effects.* In a riverside town the first effect is displacement: families move to higher
  ground or to camps, and schools close. The second is loss of livelihood — farm plots and
  market stalls are submerged, stored grain spoils, and the wells are contaminated, so cholera
  follows the water.
]

#text(size: 9.2pt, fill: jamb-muted)[#emph[Marks: four causes (4), two effects explained (4), named places (2).]]
