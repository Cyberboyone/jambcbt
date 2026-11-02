#import "template.typ": *

#current-chapter.update("Chapter 4: Mining, Power and Industry")

#pagebreak()

#chapter-opener(
  4,
  "Mining, Power and Industry",
  subtitle: "What Nigeria Digs, What It Burns to Make Electricity, and Where It Puts the Factory",
  syllabus-ref: "Part III • Economic Activity",
  utme-weight: "5 Qs a year",
  running: "Mining, Power and Industry",
)

#focus-radar(
  objectives: (
    "Classify minerals and name the main minerals of Nigeria with their locations.",
    "Describe the effects of mining on the landscape and the community.",
    "Compare the sources of power and explain Nigeria's dependence on gas and hydro.",
    "State the factors that decide the location of an industry.",
    "Explain the problems of industrial development in Nigeria.",
  ),
  hotspots: (
    "“Petroleum was first found in commercial quantity at …” — Oloibiri, in what is now Bayelsa State, in 1956. The trap offers *Port Harcourt*, which is the port and refinery town, not the discovery site.\n",
    "“The Jos Plateau is noted for the mining of …” — tin and columbite. The trap offers *coal*, which belongs to Enugu, or *iron ore*, which belongs to Itakpe.\n",
    "“An industry that can locate almost anywhere is described as …” — footloose. The trap offers *light*, which describes the weight of its inputs, not its freedom of location.\n",
    "“The main source of Nigeria's electricity is …” — thermal (gas-fired) stations, with hydro as the second source. The trap offers *hydro*, because Kainji is famous, not because it supplies most of the power.\n",
  ),
  trap-summary: "Three slips. (1) Swapping the mineral with its town: tin is Jos, coal is Enugu, iron ore is Itakpe, oil is Oloibiri. (2) Calling all manufacturing heavy industry: heavy uses bulky raw material, light serves the market with small inputs. (3) Blaming low output on the workforce when the binding constraint is power and infrastructure.",
)

// ============================================================================
== 4.1 Minerals and Where They Lie

A mineral is a naturally occurring substance that can be worked for profit. The syllabus gives
three classes, and every named mineral belongs to one of them.

#table(
  columns: (1.0fr, 1.35fr, 1.65fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Examples in Nigeria],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where],
  ),
  [Metallic], [tin, columbite, iron ore, lead, zinc, gold, manganese], [Jos Plateau; Itakpe; Abakaliki; Ilesha; Niger State],
  [Non-metallic], [limestone, gypsum, kaolin, barite, salt], [Sokoto, Ogun, Kogi, Benue, Ebonyi],
  [Energy], [petroleum, natural gas, coal, lignite], [Niger Delta; Enugu; Okaba, Delta State],
)

#v(4pt)

#table(
  columns: (1.05fr, 1.15fr, 1.8fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Mineral],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Town or state],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is used for],
  ),
  [Petroleum], [Oloibiri, Niger Delta], [fuel, plastics, fertiliser, foreign exchange],
  [Natural gas], [Bonny, Escravos, Utorogu], [electricity, cooking, liquefied export],
  [Coal], [Enugu, Okaba], [power, cement, steel — mostly abandoned],
  [Tin and columbite], [Jos Plateau], [cans, alloys, electronics],
  [Iron ore], [Itakpe, Kogi State], [the Ajaokuta and Delta steel plants],
  [Limestone], [Ewekoro, Obajana, Nkalagu], [cement and lime],
  [Gold], [Ilesha, Zamfara], [jewellery, small-scale mining],
)

== 4.2 Mining and Its Effects

Mining is an extractive industry: it takes a finite resource and leaves a hole. The effects are
both economic and environmental, and the paper expects both.

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE LEDGER]
  #v(4pt)
  #table(
    columns: (1.45fr, 2.1fr),
    inset: (x: 4pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Gains*], [revenue, foreign exchange, jobs, raw material for local industry, infrastructure],
    [*Land*], [open pits, spoil heaps, subsidence, and land that cannot be farmed again],
    [*Water*], [acid drainage, silt in the rivers, oil spills in the Delta],
    [*Air and health*], [dust, gas flaring, silicosis in the tin mines],
    [*Community*], [displacement, compensation disputes, and the enclave economy that leaves the region poor],
  )
]

#v(4pt)

The last point is the examinable irony: a region can produce most of the country's foreign
exchange and still have the worst roads. The Delta is the standard case, and the phrase the
paper wants is *resource curse*.

== 4.3 Power

Electricity is the input every other industry needs. Nigeria's installed capacity is over
12 000 MW, but the power actually delivered is far lower because of gas shortages, ageing
turbines and transmission losses.

#table(
  columns: (1.0fr, 1.35fr, 1.65fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Source],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nigeria],
  ),
  [Hydro], [falling water turns a turbine], [Kainji, Jebba and Shiroro on the Niger and Kaduna],
  [Thermal], [gas or oil is burned to raise steam], [Egbin, Afam, Sapele, Olorunsogo — the largest share],
  [Coal], [steam from burning coal], [Oji River, historically; now negligible],
  [Solar], [photovoltaic panels], [rural mini-grids and street lighting],
  [Wind], [turbines on a windy ridge], [small pilot schemes, chiefly in the north],
  [Biomass], [wood, waste and dung], [the real fuel of most rural households],
)

#v(4pt)

The *national grid* is a single transmission network, and its weakness is a syllabus point:
because the grid is centralised, a fault in one line can black out a region, and
line losses and vandalism cut the power that reaches the end of the line.

== 4.4 Where an Industry Locates

An industry chooses a site by weighing costs. Five factors decide most of the choices, and the
heaviest one usually settles the question.

#diagram-fig("diagrams/geo2_ch04_industry.svg",
  "Figure 4.1 The five location factors, and the four sectors of work.", width: 98%)

#table(
  columns: (1.05fr, 2.5fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it pulls],
  ),
  [Raw material], [heavy or bulky inputs pull the plant to the source — cement at the limestone, oil refining in the Delta],
  [Power], [smelting and aluminium need cheap, continuous electricity — hence near a hydro station],
  [Market], [perishable or bulky finished goods pull the plant to the buyer — bread, bottled drinks, newspapers],
  [Labour], [skill-intensive work seeks the city; cheap labour seeks the small town],
  [Transport], [a port, a rail head or a junction decides for the exporter and the importer],
)

#v(4pt)

*Heavy industry* uses large quantities of bulky raw material and produces bulky goods — cement,
steel, fertiliser. *Light industry* uses small inputs and serves the consumer — shoes, soap,
furniture. A *footloose* industry is tied to none of the factors and can sit anywhere; a
software firm or a garment workshop is the standard example.

== 4.5 Industry in Nigeria

Nigeria's industrial history runs in three phases. Before 1960 it processed exports — groundnut
oil, palm oil, cocoa — and imported manufactures. From 1960 to 1980 the policy was *import
substitution*: a tariff wall round a local factory making what had been imported. After 1986 the
policy turned outward, with export processing zones, privatisation and, more recently, the
backward integration of cement, sugar and fertiliser.

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE FIVE PROBLEMS THE PAPER EXPECTS]
  #v(3pt)
  #text(size: 10.1pt)[
    *Power* — an unreliable grid raises every firm's cost. \
    *Capital* — long-term credit is scarce and expensive. \
    *Infrastructure* — roads, rail and ports add to the cost of every input. \
    *Technology and skills* — imported machinery without the technicians to maintain it. \
    *Policy* — tariffs, multiple taxes and the uncertainty that follows a change of government.
  ]
]

== 4.6 Industry and the Environment

Every stage of industry has an environmental cost, and the paper expects the sequence: extraction
scarring the land, combustion polluting the air, effluent entering the water, and waste
accumulating at the end. The remedies are the same list every time — cleaner technology,
treatment before discharge, recycling, regulation and siting away from homes — and the exam
often asks which remedy suits which pollutant.

== 4.7 Four Worked Questions

#worked-example(
  1,
  "The mineral and its town",
  [Tin and columbite are mined chiefly on the

    A. Jos Plateau \
    B. Niger Delta \
    C. Udi plateau \
    D. Mambilla Plateau],
  [
    *Step 1 — recall the pairing.* Tin and columbite are the minerals of the Jos Plateau, mined since the colonial period.

    *Step 2 — eliminate the others.* The Niger Delta is oil and gas; the Udi plateau is coal at Enugu; Mambilla is hydro and highland.

    *Step 3 — note the landscape.* The tin workings left the open pits and spoil heaps of the plateau.

    *Answer: A.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Footloose",
  [An industry that can be located in almost any town because it is tied to no single raw
  material, source of power or market is described as

    A. heavy \
    B. extractive \
    C. footloose \
    D. cottage],
  [
    *Step 1 — read the definition.* Freedom from location factors is the defining property.

    *Step 2 — match the term.* That freedom is called footloose.

    *Step 3 — check the others.* Heavy is about inputs by weight; extractive is mining; cottage is about scale.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The heaviest factor",
  [Cement is usually manufactured close to the limestone because

    A. the market is there \
    B. limestone is bulky and loses weight in processing \
    C. the labour is cheaper \
    D. the climate is suitable],
  [
    *Step 1 — identify the input.* Limestone is the bulky raw material, and the finished cement is lighter.

    *Step 2 — apply the rule.* When the raw material is heavier than the product, the plant moves to the material.

    *Step 3 — reject the alternatives.* Labour and climate do not decide cement; the market pulls the depot, not the kiln.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Why manufacturing stays small",
  [The strongest explanation for the slow growth of manufacturing in Nigeria is

    A. a shortage of unskilled labour \
    B. an unreliable power supply and poor infrastructure \
    C. the absence of any market \
    D. a shortage of raw materials],
  [
    *Step 1 — eliminate the false scarcity.* Nigeria has labour, a large market and raw materials; A, C and D are not binding.

    *Step 2 — identify the binding constraint.* Firms cite power, transport and credit, and power comes first.

    *Step 3 — connect to the syllabus.* The paper's phrase is *infrastructural deficit*, and it explains why firms run generators.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 4.8 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [Petroleum was first discovered in commercial quantity in Nigeria at], [Warri], [Oloibiri], [Port Harcourt], [Bonny])

#mcq(2, [Coal mining in Nigeria is associated with], [Jos], [Enugu], [Itakpe], [Ilesha])

#mcq(3, [An industry that is not tied to any particular location is said to be], [heavy], [extractive], [footloose], [cottage])

#mcq(4, [The largest source of Nigeria's electricity is], [hydro], [thermal], [solar], [wind])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [Oloibiri, Bayelsa State, 1956. Warri and Port Harcourt are refining and port towns, not the discovery site.]),
  ("B", [Enugu sits on the Udi coal measures; Jos is tin, Itakpe iron ore, Ilesha gold.]),
  ("C", [Footloose means free to locate anywhere. Heavy refers to input weight, cottage to scale.]),
  ("B", [Gas-fired thermal stations carry the largest share; hydro is second, and solar and wind are marginal.]),
))

#diagram-fig("diagrams/recap_geo2_ch04.svg",
  "Chapter 4 recap card: the sectors, the location factors, heavy and light, and power.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Minerals are metallic, non-metallic or energy, and each Nigerian one has a town attached to
    it. Mining pays in revenue and costs in land, water and health. Power comes mostly from gas,
    with hydro second, and the grid's weakness is the economy's weakness. An industry locates by
    raw material, power, market, labour and transport, with the heaviest factor deciding; heavy,
    light and footloose name where that leaves it. Nigeria's manufacturing is held back less by
    labour or markets than by the cost of keeping the lights on.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Name the three mineral classes with two Nigerian examples of each.],
  [Match oil, coal, tin, iron ore and limestone to their locations.],
  [Compare hydro and thermal power in three sentences.],
  [Explain heavy, light and footloose industry with an example of each.],
  [State five problems of Nigerian manufacturing and one policy response to each.],
))

#concept-box("Carry this into Chapter 5")[
  A factory and a farm both need to move what they make. The next chapter follows the goods out of
  the gate — by road, rail, water and air — and then across a border, where the trade account
  decides whether the country is richer or poorer for the journey.
]

#include "drill_ch04.typ"
