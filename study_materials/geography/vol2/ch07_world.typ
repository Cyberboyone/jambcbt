#import "template.typ": *

#current-chapter.update("Chapter 7: West Africa and the Wider World")

#pagebreak()

#chapter-opener(
  7,
  "West Africa and the Wider World",
  subtitle: "The Region Nigeria Belongs To, the Organisations That Run It, and the World It Trades With",
  syllabus-ref: "Part IV • Regional Geography",
  utme-weight: "4 Qs a year",
  running: "West Africa and the Wider World",
)

#focus-radar(
  objectives: (
    "Describe the physical setting of West Africa and the colonial origins of its map.",
    "Name the members and aims of ECOWAS, and assess what it has achieved.",
    "Distinguish the work of the AU, AfCFTA, OPEC, WTO, IMF and World Bank.",
    "Classify the countries of the world by development and by region.",
    "Explain Nigeria's role in West Africa and in the wider world.",
  ),
  hotspots: (
    "“ECOWAS was established in …” — 1975, by the Treaty of Lagos. The trap offers *1960*, the year of Nigerian independence, or *2002*, the year the AU replaced the OAU.\n",
    "“The organisation that lends to countries in balance-of-payments difficulty is …” — the IMF. The trap offers *the World Bank*, which lends for projects rather than for short-term balance.\n",
    "“The head of the African Union's forerunner was …” — the OAU, founded in 1963 and replaced by the AU in 2002. The trap offers *the AU in 1963*.\n",
    "“Which of these is a West African country?” — the trap includes Cameroon, which is Central African, or Chad, which is Sahelian but not a member of ECOWAS.\n",
  ),
  trap-summary: "Three slips. (1) Treating every African state as West African. (2) Mixing the IMF with the World Bank, or the AU with ECOWAS. (3) Naming an organisation's headquarters when the question asks for its function.",
)

// ============================================================================
== 7.1 The Region Itself

West Africa is the western bulge of the continent, running from Senegal and Mauritania in the
north-west to Nigeria and Cameroon's border in the east, and from the Sahara edge in the north to
the Gulf of Guinea in the south.

#table(
  columns: (1.05fr, 2.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The pattern],
  ),
  [Relief], [a coastal plain in the south, a plateau interior, and the Guinea Highlands in the west],
  [Climate], [equatorial on the coast, tropical savanna in the middle, Sahel in the north],
  [Rainfall], [over 2 000 mm on the coast, falling to under 250 mm at the Sahara edge],
  [Rivers], [the Niger, the Gambia, the Senegal and the Volta, all flowing to the Atlantic or the gulf],
  [Vegetation], [rain forest on the coast, savanna in the middle, thorn scrub in the north],
  [Resources], [oil in Nigeria, cocoa in Ghana and Côte d'Ivoire, iron in Liberia, gold in Ghana and Mali],
)

== 7.2 The Map the Colonial Period Left

The political map of West Africa was drawn in Berlin in 1884–85 and refined by conquest. The
consequence is a set of states whose borders cut through ethnic groups — the Ewe split between
Ghana and Togo, the Yoruba between Nigeria and Benin, the Hausa between Nigeria and Niger — and
whose economies were built to export one crop or one mineral to a European market.

#table(
  columns: (0.9fr, 1.4fr, 1.25fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Country],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Capital],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Known for],
  ),
  [Nigeria], [Abuja], [oil, population, the regional giant],
  [Ghana], [Accra], [cocoa, gold, the first independent colony south of the Sahara],
  [Côte d'Ivoire], [Yamoussoukro], [cocoa, coffee, the largest economy of the franc zone],
  [Senegal], [Dakar], [groundnut, fishing, the western gateway],
  [Mali], [Bamako], [cotton, gold, the Niger bend],
  [Niger], [Niamey], [uranium, cattle, the Sahel],
  [Benin], [Porto-Novo], [cotton, the port at Cotonou],
  [Togo], [Lomé], [phosphate, the deep-water port],
  [Burkina Faso], [Ouagadougou], [cotton, gold, the Sahel],
  [Guinea], [Conakry], [bauxite, the source of the Niger],
)

== 7.3 ECOWAS

The Economic Community of West African States was founded on 28 May 1975 by the Treaty of Lagos,
with fifteen members, to integrate the economies of the region.

#diagram-fig("diagrams/geo2_ch07_world.svg",
  "Figure 7.1 The organisations a question can name, and what each one does.", width: 98%)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[WHAT ECOWAS SET OUT TO DO]
  #v(3pt)
  #text(size: 10.1pt)[
    + Remove tariffs and quotas on trade inside the region, and adopt a common external tariff. \
    + Allow people, goods and capital to move freely across members' borders. \
    + Harmonise transport, energy and communications, and build the Lagos–Dakar highway. \
    + Coordinate monetary policy, with the single currency (the *eco*) still unachieved. \
    + Keep the peace, through ECOMOG in Liberia and Sierra Leone. \
    + Speak with one voice in world trade negotiations.
  ]
]

#v(4pt)

The achievements are real but partial: the free-movement protocol works, ECOMOG intervened in two
civil wars, and the common external tariff took effect in 2015. The failures are equally
examinable: the single currency remains a plan, informal cross-border trade still escapes the
tariff, and the region's economies all export the same primary commodities, so they compete for
the same buyers rather than trading with one another. In 2024 Burkina Faso, Mali and Niger
announced their withdrawal, a reminder that a regional body is only as strong as its members'
politics.

== 7.4 The Wider Organisations

Each organisation does one job, and the exam asks for the job rather than the acronym.

#table(
  columns: (0.9fr, 0.95fr, 1.9fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Founded],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it does],
  ),
  [AU], [2002], [the continent's political union, replacing the OAU of 1963; peace and integration],
  [AfCFTA], [2021], [a single African market for goods and services, with tariff cuts],
  [OPEC], [1960], [coordinates oil output to steady the price; Nigeria joined in 1971],
  [WTO], [1995], [the rules of world trade and the panel that settles disputes],
  [IMF], [1944], [short-term lending to countries in balance-of-payments trouble],
  [World Bank], [1944], [long-term loans for projects — roads, dams, schools],
  [UN], [1945], [peace and security, and the agencies — FAO, WHO, UNESCO, UNDP],
)

== 7.5 The World's Regions

Beyond the continent, the syllabus asks you to place countries in two schemes: by *development*
(developed, developing, and the least developed) and by *region* (the continents and their
sub-regions).

#table(
  columns: (1.1fr, 1.4fr, 1.15fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Region],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example],
  ),
  [Anglo-America], [industrial, high income, temperate], [the United States, Canada],
  [Western Europe], [industrial, dense, high income], [Germany, France, the United Kingdom],
  [Latin America], [middle income, urban, primary exports], [Brazil, Mexico, Argentina],
  [South Asia], [very dense, agrarian, low income], [India, Bangladesh, Pakistan],
  [East Asia], [industrial, export-led], [China, Japan, South Korea],
  [Africa], [young, urbanising, primary exports], [Nigeria, Kenya, South Africa],
)

== 7.6 Nigeria in the Region and the World

Nigeria is the region's largest economy, its largest population and its largest army, which gives
it a weight in West Africa that no other state can match. It supplies most of ECOWAS's budget,
leads ECOMOG, and mediates in its neighbours' disputes. In the wider world it is a member of
OPEC, the Commonwealth, the OIC and the UN, and it has contributed troops to peacekeeping from
the Congo in 1960 to Mali in the 2010s.

The exam answer is a list of *roles* rather than a list of memberships: Nigeria is a
*peacekeeper*, a *market* for its neighbours, a *supplier of oil and gas*, a *mediator* and a
*voice for Africa* in the multilateral bodies.

== 7.7 Four Worked Questions

#worked-example(
  1,
  "The founding date",
  [The Economic Community of West African States was established in

    A. 1960 \
    B. 1963 \
    C. 1975 \
    D. 2002],
  [
    *Step 1 — recall the treaty.* ECOWAS was founded by the Treaty of Lagos on 28 May 1975.

    *Step 2 — place the distractors.* 1960 is Nigerian independence, 1963 is the OAU, 2002 is the AU.

    *Step 3 — fix the number.* Fifteen members signed in Lagos, with Nigeria and Togo among the drivers.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "IMF or World Bank?",
  [A country cannot pay for its imports and needs a short-term loan to stabilise its currency.
  It should approach the

    A. World Bank \
    B. International Monetary Fund \
    C. World Trade Organisation \
    D. African Union],
  [
    *Step 1 — read the need.* The problem is a short-term balance-of-payments gap, not a project.

    *Step 2 — match the institution.* The IMF lends for balance-of-payments support; the World Bank lends for projects.

    *Step 3 — rule out the others.* The WTO writes trade rules; the AU is political.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "A West African state",
  [Which of the following is a member of ECOWAS?

    A. Cameroon \
    B. Chad \
    C. Ghana \
    D. Sudan],
  [
    *Step 1 — locate each on the map.* Cameroon is Central African; Chad is Sahelian and central; Sudan is in the Nile valley; Ghana is on the Gulf of Guinea.

    *Step 2 — recall the membership.* ECOWAS runs from Senegal to Nigeria; Ghana is a founding member.

    *Step 3 — note the traps.* Cameroon and Chad share borders with Nigeria but not the community.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Why the region trades so little with itself",
  [The main obstacle to intra-regional trade in West Africa is that member states

    A. produce the same primary commodities \
    B. have no common borders \
    C. use different languages \
    D. belong to different continents],
  [
    *Step 1 — think about what trade needs.* Trade needs complementarity: one country's output must be the other's input.

    *Step 2 — test the region.* Most members export cocoa, oil, gold or cotton and import manufactures, so they compete for the same buyers.

    *Step 3 — dismiss the weaker options.* Borders are shared and languages differ everywhere; the economic explanation is the strong one.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

== 7.8 Chapter 7 in the Exam Hall — a Two-Minute Set

#mcq(1, [ECOWAS was founded in], [1960], [1963], [1975], [2002])

#mcq(2, [The organisation that replaced the OAU is the], [ECOWAS], [African Union], [Commonwealth], [United Nations])

#mcq(3, [Short-term loans to correct a balance-of-payments deficit are provided by the], [World Bank], [IMF], [WTO], [OPEC])

#mcq(4, [Which country is NOT in West Africa?], [Senegal], [Ghana], [Cameroon], [Benin])

#answer-key-grid(("C", "B", "B", "C"))

#answer-notes((
  ("C", [1975, Treaty of Lagos. 1963 is the OAU and 2002 the AU.]),
  ("B", [The AU replaced the OAU in 2002; ECOWAS is regional, the Commonwealth is post-colonial, the UN is global.]),
  ("B", [The IMF handles balance-of-payments support; the World Bank finances projects.]),
  ("C", [Cameroon lies east of Nigeria and belongs to Central Africa, not to ECOWAS.]),
))

#diagram-fig("diagrams/recap_geo2_ch07.svg",
  "Chapter 7 recap card: the region, ECOWAS, the wider bodies and the world's regions.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    West Africa is a bulge of plateau and coastal plain, wet on the coast and dry at the Sahara
    edge, with a map drawn in Berlin and economies built to export one commodity each. ECOWAS
    (1975) is the region's own body; the AU (2002) is the continent's; AfCFTA is the market;
    OPEC, the WTO, the IMF and the World Bank each do one job in the world economy. Nigeria's
    weight in the region comes from its size, its oil and its army, and the exam wants the roles
    rather than the memberships.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [Describe West Africa's relief, climate and rainfall gradient in three sentences.],
  [State ECOWAS's founding date, membership and four aims.],
  [Match the AU, AfCFTA, OPEC, WTO, IMF and World Bank to their functions.],
  [Place six countries in their world regions.],
  [Name four roles Nigeria plays in the region and the world.],
))

#concept-box("Carry this into Chapter 8")[
  Every one of these arrangements depends on a resource base that is being spent faster than it is
  replaced: soil, forest, water and climate. The last chapter takes the environmental question
  seriously — the hazards, the degradation and the development that can be sustained.
]

#include "drill_ch07.typ"
