#import "template.typ": *

#current-chapter.update("Appendix E: The World File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix E: The World File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The World File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    West Africa, the continent and the organisations Nigeria belongs to — the regional half of
    the paper, reduced to the lists it examines.
  ]
]

#v(6pt)

== E.1 The Fifteen Members of ECOWAS

#table(
  columns: (1.1fr, 1.1fr, 2.5fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Country],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Capital],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it is known for],
  ),
  [Benin], [Porto-Novo], [the slave-trade coast and cotton; Cotonou is the port],
  [Burkina Faso], [Ouagadougou], [landlocked Sahel state, cotton and gold],
  [Cape Verde], [Praia], [Atlantic islands; tourism and remittances],
  [Côte d'Ivoire], [Yamoussoukro], [cocoa and coffee; Abidjan is the economic capital],
  [The Gambia], [Banjul], [the river state enclosed by Senegal],
  [Ghana], [Accra], [gold, cocoa and the Volta dam],
  [Guinea], [Conakry], [the Fouta Djallon — the water tower of West Africa],
  [Guinea-Bissau], [Bissau], [cashew and the mangrove coast],
  [Liberia], [Monrovia], [rubber and iron ore; founded by freed slaves],
  [Mali], [Bamako], [the inland delta of the Niger and the Timbuktu trade],
  [Niger], [Niamey], [the Sahel and uranium at Arlit],
  [Nigeria], [Abuja], [oil, population and the regional giant],
  [Senegal], [Dakar], [the westernmost point and groundnut],
  [Sierra Leone], [Freetown], [rutile and diamonds; the wettest coast],
  [Togo], [Lomé], [phosphate and the deep-water port],
)

== E.2 The Organisations

#table(
  columns: (1.25fr, 0.8fr, 1.15fr, 1.85fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Founded],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Seat],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Nigeria's part],
  ),
  [ECOWAS], [1975], [Abuja], [a founder, the largest contributor and the seat of the Commission],
  [ECOMOG], [1990], [—], [supplied most troops in Liberia and Sierra Leone],
  [OAU], [1963], [Addis Ababa], [a founder; mediated in Congo, Angola and Chad],
  [African Union], [2002], [Addis Ababa], [a founder; chairs the Peace and Security Council in rotation],
  [AfCFTA], [2019], [Accra], [signed and ratified; the largest African market],
  [OPEC], [1960], [Vienna], [joined 1971; a price-setting member],
  [Commonwealth], [1949], [London], [member 1960–95 and again from 1999],
  [United Nations], [1945], [New York], [joined 1960; peacekeeping since the Congo],
  [WTO], [1995], [Geneva], [a founding member, replacing GATT],
  [IMF and World Bank], [1944], [Washington], [borrower and shareholder],
)

== E.3 Nigeria's Foreign-Policy Timeline

#table(
  columns: (0.8fr, 2.2fr, 2.2fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Event],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it matters],
  ),
  [1960], [independence and UN membership], [the Afrocentric policy begins],
  [1960–64], [troops to the Congo], [the first peacekeeping operation],
  [1963], [founding member of the OAU], [the continental pillar],
  [1971], [joins OPEC], [oil becomes a diplomatic instrument],
  [1975], [founds ECOWAS with Togo], [the regional pillar],
  [1976], [Angola and the liberation committees], [support for majority rule],
  [1990], [ECOMOG enters Liberia], [regional peace enforcement],
  [1993], [interim government; Commonwealth suspension], [isolation under Abacha],
  [1999], [return to civilian rule and the Commonwealth], [rehabilitation],
  [2002], [AU replaces the OAU], [the continental frame],
  [2019], [AfCFTA signed], [trade policy turns continental],
)

== E.4 The World's Continents

#table(
  columns: (1.1fr, 1.0fr, 1.1fr, 2.1fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Continent],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Area, million km²],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Population, billion],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The fact examined],
  ),
  [Asia], [44.6], [4.7], [the largest in both area and population],
  [Africa], [30.3], [1.4], [the youngest population; the fastest growth],
  [North America], [24.7], [0.6], [the wealthiest on average],
  [South America], [17.8], [0.4], [the Amazon — the largest rain forest],
  [Antarctica], [14.0], [—], [ice, no permanent residents],
  [Europe], [10.2], [0.75], [the densest and the most urban],
  [Oceania], [8.5], [0.04], [the smallest population],
)
