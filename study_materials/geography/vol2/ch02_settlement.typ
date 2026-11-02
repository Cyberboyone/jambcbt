#import "template.typ": *

#current-chapter.update("Chapter 2: Settlement")

#pagebreak()

#chapter-opener(
  2,
  "Settlement",
  subtitle: "Why a Village Stands Where It Does, How a Town Grows, and What Happens When It Grows Too Fast",
  syllabus-ref: "Part II • Settlement",
  utme-weight: "4 Qs a year",
  running: "Settlement",
)

#focus-radar(
  objectives: (
    "Distinguish rural from urban settlement by function, size and services.",
    "Name the site factors that decide where a settlement stands.",
    "Describe the patterns of rural settlement and explain each.",
    "Draw the zones of a town and explain why each zone sits where it does.",
    "Explain urbanisation and its problems, with Nigerian examples.",
  ),
  hotspots: (
    "“The main factor in the siting of the first settlements was …” — water supply, because every other function depends on it. The trap offers *defence*, which mattered later and only in some places.\n",
    "“A settlement pattern in which houses are scattered across farmland is …” — dispersed. The trap offers *linear*, which describes houses strung along a road or a river, not spread over fields.\n",
    "“The zone of a city with the highest land value is the …” — central business district. The trap offers *the residential zone*, because it is largest, but the question asks for value per unit of land.\n",
    "“Urbanisation is best defined as …” — the rising proportion of a population living in towns. The trap offers *the growth of a town*, which is town growth, not urbanisation.\n",
  ),
  trap-summary: "Three slips. (1) Treating site and situation as synonyms: site is the ground, situation is the position in the region. (2) Naming the largest zone when the question asks for the most valuable one. (3) Confusing a settlement's *function* (market, mining, port) with its *form* (nucleated, dispersed).",
)

// ============================================================================
== 2.1 Rural Settlement: Site, Pattern and Form

A rural settlement is one whose people work mainly on the land. It is small, its services are
few, and its position is decided by the farm rather than by the office.

#table(
  columns: (1.2fr, 2.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Site factor],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it decides the site],
  ),
  [Water], [a spring, a well, a river bend or a confluence — the first need and the first reason to stay],
  [Defence], [a hill top, an island or a marsh edge gave shelter in the slave-raiding centuries — Ibadan's hills, the island towns],
  [Building land], [dry, flat ground above the flood line; sandy soil that drains],
  [Routes], [a ford, a bridge, a pass or a crossroads, where travellers must stop],
  [Resources], [a mine, a fishing ground, a salt lick, a market — and now an oil field],
  [Aspect], [the sunny or sheltered slope, away from the prevailing wind and the mosquito swamp],
)

#v(4pt)

#table(
  columns: (1.05fr, 1.45fr, 1.65fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Pattern],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it looks like],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it forms there],
  ),
  [Nucleated], [houses clustered round a centre], [defence, a water point, a market, a church or a mosque],
  [Dispersed], [farms scattered, houses on their own land], [plenty of land, a spring per farm, no need to cluster],
  [Linear], [one row along a road, a river or a ridge], [the route is the only dry land or the only market],
  [Planned], [a grid laid out in advance], [resettlement, a new capital, an irrigation scheme],
)

== 2.2 Urban Settlement: Function and Situation

An urban settlement is one whose people work mainly at something other than farming. The
syllabus definition adds a threshold — usually 20 000 people in Nigeria, 2 500 in much of
Europe — but the *function* is the safer test: if the town's income comes from trade,
manufacture, administration or services, it is urban.

#table(
  columns: (1.1fr, 2.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The town lives by],
  ),
  [Market], [buying and selling — Onitsha, Kano's Kurmi market],
  [Administrative], [government offices — Abuja, the state capitals],
  [Industrial], [factories and processing — Aba, Ikeja],
  [Port], [shipping and customs — Lagos, Port Harcourt, Calabar],
  [Mining], [the mineral and its workforce — Jos in the tin years],
  [Religious], [pilgrimage and scholarship — Sokoto, Ile-Ife],
  [Resort], [tourism and retirement — Obudu, Yankari],
)

#v(4pt)

*Situation* is where the town sits in the wider region; *site* is the ground it stands on. Lagos
has a difficult site — a swampy island — and an excellent situation, at the break in the coast
where the lagoon meets the Atlantic and the routes from the interior reach the sea. Kano has a
good site, on dry open ground, and an excellent situation, at the southern end of the
trans-Saharan route. A question that asks why a town grew is almost always a question about
situation.

== 2.3 The Land Use of a Town

Land in a town is allocated by rent, and rent is decided by access. The result is a pattern that
repeats from Ibadan to Ilorin.

#diagram-fig("diagrams/geo2_ch02_settlement.svg",
  "Figure 2.1 Site factors, the concentric zones of a city, and the hierarchy of settlements.", width: 98%)

#table(
  columns: (1.05fr, 1.6fr, 1.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Zone],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What is found there],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why there],
  ),
  [CBD], [banks, offices, department stores, the main market], [highest rent, highest access — everyone can reach it],
  [Transition], [warehouses, wholesalers, light industry, decay], [cheap land next to the centre, but overcrowded],
  [Inner housing], [old, dense, often poor housing], [built before the city grew; land is now too valuable to renew],
  [Suburbs], [newer housing, schools, estates], [cheap land and room to build, reached by road],
  [Commuter belt], [villages that send workers into the city], [the outer limit of the daily journey to work],
)

== 2.4 Hierarchy and Services

Settlements form a ladder. A hamlet has a shop; a village has a school and a clinic; a town has
a hospital, a bank and a secondary school; a city has a university, a specialist hospital and an
airport; a conurbation is several cities grown into one.

#table(
  columns: (1.1fr, 1.0fr, 1.3fr, 1.4fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rank],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Population],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Typical services],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Catchment],
  ),
  [Hamlet], [under 500], [a kiosk, a well, a path], [a few minutes' walk],
  [Village], [500–5 000], [a school, a clinic, a market, a mosque or church], [the village land],
  [Town], [5 000–100 000], [a hospital, a bank, a secondary school], [the surrounding district],
  [City], [over 100 000], [a university, specialist care, an airport], [the state or the region],
  [Conurbation], [several cities], [all of the above, shared], [the nation],
)

#v(4pt)

Two ideas explain the ladder. The *threshold* is the minimum number of customers a service
needs before it can be provided; a university needs more than a village can supply. The *range*
is the distance a customer will travel for it. Services with a high threshold and a long range
sit at the top of the ladder, which is why they are found only in cities.

== 2.5 Urbanisation and Its Problems

Urbanisation is the rise in the proportion of a population living in towns. Nigeria passed the
50 per cent mark in the last decade, and the growth is driven by three things: rural–urban
migration, natural increase in the towns, and the reclassification of villages as towns as they
grow.

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE PROBLEMS, IN THE ORDER THE PAPER LISTS THEM]
  #v(4pt)
  #table(
    columns: (1.0fr, 2.25fr),
    inset: (x: 4pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Housing*], [overcrowding, slums, and the growth of unplanned settlements on flood plains],
    [*Water and sanitation*], [piped supply that reaches only part of the city; refuse in the drains],
    [*Traffic*], [too many vehicles on roads built for a tenth of the traffic; the journey to work lengthens],
    [*Unemployment*], [the city attracts more labour than its industry can absorb],
    [*Services*], [schools, clinics and the grid are stretched; outages and queues],
    [*Environment*], [air and water pollution, loss of farmland, heat and flooding],
  )
]

#v(4pt)

The responses are as examinable as the problems: a planned capital (Abuja, chosen in 1976 and
built through the 1980s to relieve Lagos), satellite towns, sites-and-services schemes, slum
upgrading, traffic management and the decentralisation of industry to state capitals.

== 2.6 Rural Settlement in Change

The countryside is not static. Three processes are worth naming. *Depopulation* empties villages
as the young leave, leaving the old and the schools under-used. *Resettlement* moves whole
communities for a dam, a mine or a scheme, and succeeds only when the new site has land, water
and work. *Rurbanisation* brings city commuters into villages, raising land prices and changing
the local economy without making the place a town.

== 2.7 Four Worked Questions

#worked-example(
  1,
  "The pattern, defined by its shape",
  [A settlement pattern in which houses are strung out along a single road is described as

    A. nucleated \
    B. dispersed \
    C. linear \
    D. planned],
  [
    *Step 1 — read the shape.* The houses follow one line, which is what "strung out along a single road" describes.

    *Step 2 — match the name.* A line is linear. Nucleated is a cluster; dispersed is scattered over fields; planned is a grid laid out in advance.

    *Step 3 — check the cause.* Linear patterns form where the route is the only dry land or the only market — a road, a levee, a ridge.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Site or situation?",
  [The growth of Lagos is best explained by its

    A. dry, flat site \
    B. position at the break in the coast where the lagoon meets the sea \
    C. high ground above the flood plain \
    D. distance from the interior],
  [
    *Step 1 — separate the two ideas.* Site is the ground the town stands on; situation is its position in the region.

    *Step 2 — test each option.* A and C describe site, and Lagos's site is poor — swampy and low. D is false: Lagos is close to the interior routes.

    *Step 3 — choose the situation.* The break in the coast, the lagoon and the routes inland explain the port and the city.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The zone with the highest land value",
  [The zone of a Nigerian city in which land values are highest is the

    A. residential suburb \
    B. central business district \
    C. industrial estate \
    D. commuter village],
  [
    *Step 1 — value per unit of land, not total area.* The question asks for the highest value, not the largest zone.

    *Step 2 — connect value to access.* Rent peaks where access is greatest, and access peaks at the centre where all routes meet.

    *Step 3 — name the zone.* That centre is the CBD, occupied by banks, offices and the main market.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Urbanisation, defined against town growth",
  [Which statement best describes urbanisation in Nigeria?

    A. The population of Lagos has risen to over fifteen million.
    B. The proportion of Nigerians living in towns has risen above one half.
    C. More villages have been connected by road.
    D. The number of markets in rural areas has increased.],
  [
    *Step 1 — recall the definition.* Urbanisation is a change in the *share* of people in towns, not in the size of one town.

    *Step 2 — test the options.* A is town growth; C and D are rural change; B states a rising proportion.

    *Step 3 — confirm the distinction.* A city can grow while the share stays flat, if the countryside grows just as fast — which is why B is the correct kind of statement.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 2.8 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The most important factor in the siting of early settlements was], [defence], [water supply], [the market], [the railway])

#mcq(2, [Houses scattered across farmland form a], [nucleated pattern], [linear pattern], [dispersed pattern], [grid pattern])

#mcq(3, [The zone of a city with the highest land value per unit area is the], [suburb], [central business district], [industrial estate], [commuter belt])

#mcq(4, [Urbanisation is best defined as], [the growth of a city in area], [the rise in the proportion of people living in towns], [the movement of people to farms], [the building of new roads])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [Water came first because every other function depends on it; defence mattered later and only in some regions.]),
  ("C", [Scattered over fields is dispersed. Linear follows a route; nucleated clusters round a point.]),
  ("B", [Rent peaks where access peaks, and access peaks at the centre — the CBD.]),
  ("B", [The definition is about the share of the population, not the size or area of one town.]),
))

#diagram-fig("diagrams/recap_geo2_ch02.svg",
  "Chapter 2 recap card: site and situation, pattern, land use and hierarchy.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A settlement is sited by water, defence, dry land, routes and resources, and its form follows
    the site: clustered where the point is shared, scattered where the land is plentiful. Towns
    arrange themselves by rent, with the CBD at the centre and the commuter belt at the edge, and
    they rank themselves by the services they can support. Urbanisation is the rise in the share
    of people in towns, and its problems — housing, water, traffic, jobs, pollution — are the
    problems of growth outrunning the pipes.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Distinguish site from situation, with one Nigerian example of each.],
  [Name four rural settlement patterns and the cause of each.],
  [Draw the five zones of a city and give the reason each sits where it does.],
  [Explain threshold and range, and use them to rank two services.],
  [Name four problems of rapid urbanisation and one response to each.],
))

#concept-box("Carry this into Chapter 3")[
  Every town in the last chapter eats, and most of what it eats is grown by the countryside around
  it. The next chapter turns to that countryside: the systems farmers use, the crops they choose,
  and the reasons a Nigerian farm yields less per hectare than a farm in Asia with the same rain.
]

#include "drill_ch02.typ"
