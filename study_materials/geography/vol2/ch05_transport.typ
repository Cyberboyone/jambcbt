#import "template.typ": *

#current-chapter.update("Chapter 5: Transport, Trade and Tourism")

#pagebreak()

#chapter-opener(
  5,
  "Transport, Trade and Tourism",
  subtitle: "Moving Goods, Paying for Them Across a Border, and Selling the Country to a Visitor",
  syllabus-ref: "Part III • Economic Activity",
  utme-weight: "4 Qs a year",
  running: "Transport, Trade and Tourism",
)

#focus-radar(
  objectives: (
    "Compare the five modes of transport and the factors that decide the choice.",
    "Describe Nigeria's transport network and its problems.",
    "Distinguish home trade from foreign trade, and visible from invisible trade.",
    "Calculate and interpret the balance of trade, the balance of payments and the terms of trade.",
    "Explain the benefits and problems of tourism.",
  ),
  hotspots: (
    "“The cheapest mode of transport for bulky goods over long distances is …” — water. The trap offers *rail*, which is cheap but not the cheapest per tonne-kilometre.\n",
    "“A country's balance of trade is …” — the difference between the value of visible exports and visible imports. The trap offers *the balance of payments*, which adds invisibles and capital flows.\n",
    "“An import quota is …” — a physical limit on the quantity imported. The trap offers *a tariff*, which is a tax on the value, not a limit on the amount.\n",
    "“Tourism earns foreign exchange, but the biggest problem it brings is …” — the leakage and the pressure on the site. The trap offers *unemployment*, which is what tourism relieves.\n",
  ),
  trap-summary: "Three slips. (1) Treating trade balance and payments balance as one account. (2) Confusing a quota with a tariff, or an embargo with either. (3) Reading a fall in exports as a rise in imports — the two are separate entries, and the terms of trade depends on both prices.",
)

// ============================================================================
== 5.1 The Five Modes, and How to Choose

Transport moves people and goods over space, and the mode is chosen by weighing five costs
against the cargo.

#diagram-fig("diagrams/geo2_ch05_transport.svg",
  "Figure 5.1 The five modes compared, and the two sides of a trade account.", width: 98%)

#table(
  columns: (0.9fr, 1.35fr, 1.35fr, 1.35fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Mode],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Best for],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Limits],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Nigeria],
  ),
  [Road], [short and medium haul, door to door], [cost per tonne, traffic, road condition], [the dominant mode; over 90 per cent of freight],
  [Rail], [bulk over long distance], [fixed route, slow, poor maintenance], [Lagos–Kano and the new standard gauge],
  [Water], [bulk, heavy, non-perishable], [slow, needs a port at both ends], [Niger and Benue; Lagos and Onitsha ports],
  [Air], [fast, light, valuable, perishable], [very high cost], [Lagos, Abuja, Kano, Port Harcourt],
  [Pipeline], [liquids and gas, continuous flow], [one product, sabotage, leaks], [the Delta to Kaduna and Warri],
)

#v(4pt)

Five factors decide the choice: *cost* per tonne-kilometre, *speed* (and therefore the
perishability of the cargo), *distance*, *bulk* and *route*. A question that gives a cargo and a
distance is testing these five, not your knowledge of the network.

== 5.2 The Nigerian Network

Four facts carry most of the marks. Roads dominate, carrying the overwhelming share of freight and
passengers. The railway, built as a colonial line from Lagos to Kano and Port Harcourt to Maiduguri,
ran down and is being rebuilt as standard gauge. The inland waterways — the Niger from Onitsha to
Lokoja and the Benue — are under-used. And the ports at Lagos, Tin Can Island, Port Harcourt,
Calabar and Onne handle the country's trade.

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE PROBLEMS OF THE NETWORK]
  #v(4pt)
  #table(
    columns: (1.3fr, 2.2fr),
    inset: (x: 4pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Maintenance*], [roads fail in the rains and are patched late; potholes cost more than the repair],
    [*Congestion*], [the Lagos port and its access roads are the standard example],
    [*Intermodal gap*], [rail and road do not meet at a working terminal, so goods are trans-loaded by hand],
    [*Spread*], [routes radiate from Lagos, so the west is served better than the east],
    [*Safety*], [overloading, night driving and poor vehicles],
  )
]

== 5.3 Home Trade and Foreign Trade

*Home trade* is buying and selling inside the country: wholesale and retail. *Foreign trade* crosses
a border and splits into *import* (goods in), *export* (goods out) and *entrepot* (goods imported
and re-exported).

#table(
  columns: (1.05fr, 1.35fr, 1.65fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nigerian example],
  ),
  [Visible trade], [goods you can touch], [crude oil out; machinery and rice in],
  [Invisible trade], [services], [freight, insurance, tourism, remittances],
  [Balance of trade], [visible exports − visible imports], [a surplus when oil prices are high],
  [Balance of payments], [all visible and invisible flows, plus capital], [usually in deficit despite the oil],
  [Terms of trade], [export price index ÷ import price index × 100], [below 100 means the country is losing],
)

== 5.4 The Accounts, Worked

Three numbers are examinable and each is a small calculation.

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE THREE CALCULATIONS]
  #v(3pt)
  #text(size: 10.2pt)[
    *Balance of trade* = value of visible exports − value of visible imports. \
    *Balance of payments* = balance of trade + balance on invisibles + capital account. \
    *Terms of trade* = (index of export prices ÷ index of import prices) × 100.
  ]
  #v(2pt)
  #text(size: 9.4pt, fill: jamb-slate)[
    A positive balance is a surplus; a negative one is a deficit. Terms of trade above 100 mean
    a unit of exports buys more than a unit of imports did in the base year.
  ]
]

#v(4pt)

*Restrictions on trade* are the other half of the topic. A *tariff* taxes imports by value; a
*quota* limits their quantity; an *embargo* forbids trade with a country altogether; *subsidies*
help domestic producers; *exchange control* limits the foreign currency available. Each is
justified by protecting infant industry, the balance of payments or national security, and each is
criticised for raising prices and inviting retaliation.

== 5.5 Tourism

Tourism is travel for pleasure, and it is an invisible export: the visitor brings foreign exchange
and spends it on hotels, transport, food and guides.

#table(
  columns: (1.4fr, 1.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Gains],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Costs],
  ),
  [foreign exchange and tax revenue], [leakage: imports, foreign-owned hotels, repatriated profit],
  [jobs in hotels, transport and guiding], [seasonal and often low-paid work],
  [roads, water and airports built for the visitor], [pressure on water, waste and the site itself],
  [conservation, when the wildlife is the attraction], [damage to wildlife, reefs and local culture],
)

#v(4pt)

Nigeria's tourist assets are the *cultural* ones — festivals such as Osun-Osogbo and Argungu,
the Sukur landscape, the Nok and Ife bronzes — and the *natural* ones: Yankari, Cross River,
Obudu and the Lekki conservation centre. The syllabus expects the names and the reason each is
attractive.

== 5.6 Four Worked Questions

#worked-example(
  1,
  "The balance of trade",
  [A country exports goods worth ₦4.5 billion and imports goods worth ₦3.0 billion. Its balance of trade is

    A. a surplus of ₦1.5 billion \
    B. a deficit of ₦1.5 billion \
    C. a surplus of ₦7.5 billion \
    D. a deficit of ₦7.5 billion],
  [
    *Step 1 — recall the definition.* Balance of trade = visible exports − visible imports.

    *Step 2 — subtract.* 4.5 − 3.0 = 1.5 billion.

    *Step 3 — name the sign.* Exports exceed imports, so the balance is a surplus.

    *Answer: A.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Terms of trade",
  [If the index of export prices is 110 and the index of import prices is 125, the terms of trade are

    A. 88, and they have worsened \
    B. 113.6, and they have improved \
    C. 88, and they have improved \
    D. 125, and they have worsened],
  [
    *Step 1 — apply the formula.* (110 ÷ 125) × 100 = 88.

    *Step 2 — read below 100.* A value under 100 means a unit of exports now buys fewer imports than in the base year.

    *Step 3 — name the movement.* That is a worsening of the terms of trade, which is the usual Nigerian story when oil prices fall.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Choosing the mode",
  [A firm must move 40 000 tonnes of iron ore 900 km to a steel plant. The most suitable mode is

    A. air \
    B. road \
    C. rail \
    D. pipeline],
  [
    *Step 1 — weigh the cargo.* Ore is heavy, low-value and not perishable, so speed is irrelevant and cost per tonne decides.

    *Step 2 — test the modes.* Air is the dearest; road is flexible but expensive at 40 000 tonnes over 900 km; a pipeline cannot carry solids.

    *Step 3 — choose.* Rail is built for bulk over long distance, which is why the Itakpe–Ajaokuta line exists.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The restriction, named by its effect",
  [A government allows only 50 000 tonnes of rice to be imported in a year. The measure is

    A. a tariff \
    B. a quota \
    C. an embargo \
    D. a subsidy],
  [
    *Step 1 — read the instrument.* The limit is on quantity, not on value.

    *Step 2 — match the term.* A quantity limit is a quota; a tariff taxes value; an embargo forbids trade altogether.

    *Step 3 — check the effect.* Both a quota and a tariff raise the domestic price, but only the quota fixes the amount.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [The cheapest mode of transport for bulky goods over long distances is], [road], [rail], [water], [air])

#mcq(2, [The difference between visible exports and visible imports is the], [balance of payments], [balance of trade], [terms of trade], [national income])

#mcq(3, [A tax imposed on imported goods is called], [a quota], [a subsidy], [a tariff], [an embargo])

#mcq(4, [Tourism is classified as part of], [visible trade], [invisible trade], [home trade], [entrepot trade])

#answer-key-grid(("C", "B", "C", "B"))

#answer-notes((
  ("C", [Water is the cheapest per tonne-kilometre for bulk; rail is second, and road is flexible but dearer.]),
  ("B", [Visible goods only is the trade balance; adding invisibles gives the payments balance.]),
  ("C", [A tariff taxes value, a quota limits quantity, a subsidy helps the domestic producer, an embargo stops trade.]),
  ("B", [Tourism is a service sold to a foreign visitor, so it belongs to invisible trade.]),
))

#diagram-fig("diagrams/recap_geo2_ch05.svg",
  "Chapter 5 recap card: choosing a mode, the two balances, the terms of trade and tourism.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The mode is chosen by cost, speed, distance, bulk and route, and the exception is always the
    cargo that must arrive fresh or the cargo that cannot be moved twice. Trade is home or
    foreign, visible or invisible; the trade balance counts goods only, the payments balance adds
    the services and the capital, and the terms of trade compare the prices of the two baskets.
    Tourism is an invisible export with a leakage problem, and its assets in Nigeria are as much
    cultural as natural.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Compare the five modes on cost, speed and cargo, with one example each.],
  [Name four problems of the Nigerian transport network.],
  [Compute a balance of trade and a balance of payments from a small table.],
  [Distinguish a tariff, a quota and an embargo, in one sentence each.],
  [Give three gains and three costs of tourism, with a Nigerian example.],
))

#concept-box("Carry this into Chapter 6")[
  Everything so far has been about people in general — where they live, what they grow, make and
  move. The next chapter puts them on one map: Nigeria, region by region, with its relief, its
  rivers, its climate belts, its minerals and its six geopolitical zones.
]

#include "drill_ch05.typ"
