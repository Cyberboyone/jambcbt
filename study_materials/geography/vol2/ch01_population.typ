#import "template.typ": *

#current-chapter.update("Chapter 1: Population")

#pagebreak()

#chapter-opener(
  1,
  "Population",
  subtitle: "How Many People There Are, Where They Live, What Shape They Make, and Why They Move",
  syllabus-ref: "Part II • The Human Environment",
  utme-weight: "4 Qs a year",
  running: "Population",
)

#focus-radar(
  objectives: (
    "Explain the terms used to measure population: density, growth rate, birth and death rate, dependency ratio.",
    "Describe the distribution of population in Nigeria and the world, and account for it.",
    "Read a population pyramid and state what its shape implies.",
    "Outline the four stages of the demographic transition.",
    "Classify migration by direction and cause, and state its effects on both ends.",
  ),
  hotspots: (
    "“Population density is …” — the number of people per square kilometre, people ÷ area. The trap offers *the number of people*, which is population size, not density.\n",
    "“A country with a broad base and a narrow apex on its pyramid has …” — high birth rate and high death rate, a young population. The trap offers *a high life expectancy*, which would widen the apex, not narrow it.\n",
    "“The movement of people from rural to urban areas is called …” — rural–urban migration. The trap offers *urbanisation*, which is the growth of the urban share of the population that results from it.\n",
    "“The dependency ratio is …” — the people under 15 and over 64 divided by the working-age population. The trap offers *the ratio of workers to dependants*, which is the same fraction upside down.\n",
  ),
  trap-summary: "Three slips. (1) Confusing growth with natural increase: growth = births − deaths ± net migration. (2) Calling any city growth urbanisation, when urbanisation is the *share* of people in towns rising, and a city can grow without the share changing. (3) Treating population as a problem in itself: the paper asks about the relationship between numbers and resources.",
)

// ============================================================================
== 1.1 The Numbers that Measure a Population

A population is described by four things: how many people there are, how fast the number is
changing, how they are spread over the land, and how they are made up. Each has its own
measure, and the marks are lost by using one where the other is asked for.

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE FIVE FORMULAE]
  #v(3pt)
  #text(size: 10.2pt)[
    *Density* = total population ÷ area in km² \
    *Natural increase* = birth rate − death rate \
    *Growth rate* = natural increase + net migration \
    *Dependency ratio* = (under 15 + over 64) ÷ (15–64) × 100 \
    *Doubling time* ≈ 70 ÷ annual growth rate in per cent
  ]
]

#v(4pt)

A density figure on its own hides as much as it shows. Nigeria's average density is about
239 people per km², but the average is a fiction: Lagos State carries well over a thousand
people per km² while much of Taraba and Borno carries fewer than fifty. The examiner knows
this, which is why a density question usually asks you to *explain the unevenness* rather than
to divide one number by another.

#table(
  columns: (1.15fr, 1.3fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it tells you],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it cannot tell you],
  ),
  [Total population], [the size of the market and the labour force], [whether the country can feed it],
  [Density], [how crowded the land is on average], [where the crowding actually is],
  [Birth rate], [how fast new people arrive], [how many of them survive],
  [Death rate], [how fast people are lost], [why they are lost],
  [Age structure], [how many workers support how many dependants], [how skilled the workers are],
)

== 1.2 Distribution: Why People Are Where They Are

Population clusters where land, water, climate and work allow it. Four physical factors and
three human ones account for almost every pattern the paper shows.

#v(3pt)

#table(
  columns: (1.05fr, 2.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it works, with a Nigerian example],
  ),
  [Relief], [flat land is farmed and built on; steep slopes and flood plains are avoided — the Jos Plateau and the Mambilla highlands are thinly peopled],
  [Climate], [the humid south supports more people per hectare than the arid north-east; the Sahel margin is the emptiest belt in the country],
  [Water], [rivers, lakes and wells fix settlements — the Niger–Benue confluence, the shores of Lake Chad before it shrank],
  [Soils], [fertile alluvium and volcanic soils draw farmers; the thin soils of the sandstone plateau push them away],
  [Economy], [industry, trade and oil pull people — Lagos, Port Harcourt, Kano],
  [History], [old walled cities and trade routes keep their populations — Kano, Ibadan, Sokoto],
  [Security], [insecurity empties villages and fills camps — the north-east and the farmer–herder belt],
)

#v(4pt)

The world pattern is sharper still. About 60 per cent of humanity lives in Asia, and the four
clusters the syllabus expects you to name are East Asia (China, Japan, Korea), South Asia
(India, Pakistan, Bangladesh), Europe, and the eastern United States. Each sits on a fertile
plain, a river system or a coast with a temperate climate.

== 1.3 Structure: Reading a Population Pyramid

A population pyramid is a bar chart turned on its side: age bands run up the page, and each
band is split into males on one side and females on the other. Its shape tells you the
history of the population without a single number being read.

#diagram-fig("diagrams/geo2_ch01_population.svg",
  "Figure 1.1 The demographic transition and the two pyramid shapes it produces.", width: 98%)

#table(
  columns: (1.1fr, 1.4fr, 1.75fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where it is found],
  ),
  [Broad base, narrow apex], [high birth rate, high death rate, young population], [Nigeria, Niger, most of West Africa],
  [Straight sides, rounded top], [low birth and death rates, slow growth, ageing], [Japan, Germany, Italy],
  [Pinched base, wide middle], [birth rate falling below replacement], [China, Brazil, Thailand],
  [Wide middle, narrow top], [a baby boom moving through middle age], [the United States, post-war Europe],
)

#v(4pt)

Two ratios come out of the pyramid and both are examinable. The *dependency ratio* compares the
people who do not work (under 15 and over 64) with those who do. Nigeria's is high — roughly
85 dependants per 100 workers — because the base is broad. The *sex ratio* compares males with
females; it is about 102 boys to 100 girls at birth and evens out by adulthood.

== 1.4 The Demographic Transition

The transition is the story of every country that has industrialised: death rates fall first,
birth rates follow later, and the gap between them is a surge of population that lasts about
two generations.

#table(
  columns: (0.75fr, 1.25fr, 1.25fr, 1.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Birth rate],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Death rate],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What is happening],
  ),
  [1], [high], [high], [famine, disease and no medicine; population steady and small],
  [2], [high], [falling fast], [medicine, clean water and food arrive; population grows fastest],
  [3], [falling], [low], [education, contraception and city life cut family size],
  [4], [low], [low], [population steady and large; the pyramid straightens],
)

#v(4pt)

Nigeria sits at the end of stage 2 and the start of stage 3: deaths have fallen, births have
not yet followed, and the result is a growth rate near 2.4 per cent a year, which doubles the
population in about thirty years. The policy question — and the exam question — is how to
reach stage 3 faster without waiting for incomes to rise.

== 1.5 Migration

Migration is a move that changes where a person usually lives. It is classified by direction
(internal or international), by duration (temporary or permanent) and by cause (voluntary or
forced).

#table(
  columns: (1.15fr, 2.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example and effect],
  ),
  [Rural–urban], [the farm to the city; the city gains labour and loses housing and water; the village loses its young],
  [Urban–rural], [return migration in a recession, or retirement to the village],
  [Rural–rural], [farmers moving to new land, or herders following pasture],
  [International], [Nigerians to the United Kingdom, the United States and South Africa; remittances flow back],
  [Forced], [conflict and disaster displace people inside the country — the north-east is the clearest case],
  [Seasonal], [herders and traders moving with the rains and the harvest],
)

#v(4pt)

Migration is explained by *push* and *pull*. Push factors drive people out: poverty, land
shortage, unemployment, insecurity, drought. Pull factors draw them in: jobs, schools,
hospitals, electricity, safety. The exam expects both lists and, in a longer answer, the
*intervening obstacles* — distance, cost, border controls and language — which decide whether
the intention becomes a move.

== 1.6 Population and Resources

Whether a population is too large depends on what it can do with what it has. Three terms
organise the argument.

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE THREE CAPACITIES]
  #v(4pt)
  #table(
    columns: (0.95fr, 2.3fr),
    inset: (x: 4pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Optimum*], [the number that produces the highest income per head with the resources available],
    [*Under-population*], [too few people to use the land, the capital and the market — labour is short],
    [*Over-population*], [too many people for the resource base — the extra hands add less than they eat],
  )
]

#v(4pt)

Two names carry the debate. *Malthus* (1798) argued that population grows geometrically while
food grows arithmetically, so checks — famine, disease, war — must restore the balance.
*Boserup* (1965) argued the reverse: pressure on land forces intensification, so more people
can mean more innovation. The examiner does not ask you to choose; he asks you to state both
positions and the evidence for each.

== 1.7 Four Worked Questions

#worked-example(
  1,
  "Density, and the difference from population",
  [A country has a population of 60 million and an area of 300 000 km². Its population density is

    A. 20 people per km² \
    B. 200 people per km² \
    C. 2 000 people per km² \
    D. 5 people per km²],
  [
    *Step 1 — recall the definition.* Density is people ÷ area, not the number of people.

    *Step 2 — divide.* 60 000 000 ÷ 300 000 = 200.

    *Step 3 — check the units.* People per square kilometre; the answer is 200, not 200 000.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Reading a pyramid",
  [A population pyramid with a very broad base and a narrow apex indicates

    A. a low birth rate and a high life expectancy \
    B. a high birth rate and a high death rate \
    C. a stationary population \
    D. an ageing population],
  [
    *Step 1 — read the base.* A broad base means many babies were born, so the birth rate is high.

    *Step 2 — read the apex.* A narrow apex means few people survive to old age, so the death rate is high.

    *Step 3 — eliminate the opposites.* Low birth rate, stationary and ageing all describe the inverse shape.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The transition, and the trap in the timing",
  [The stage of the demographic transition in which population grows fastest is the one where

    A. birth and death rates are both high \
    B. birth and death rates are both low \
    C. the death rate has fallen and the birth rate is still high \
    D. the birth rate has fallen and the death rate is high],
  [
    *Step 1 — growth is the gap.* The rate of increase is the difference between births and deaths, so growth peaks where the gap is widest.

    *Step 2 — locate the gap.* Deaths fall first (stage 2) and births follow (stage 3); the widest gap is therefore at the end of stage 2.

    *Step 3 — dismiss D.* A falling birth rate with a high death rate describes a shrinking population, not a growing one.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Migration, and the difference from urbanisation",
  [The movement of people from villages to cities, and the growth of the urban share of the
  population that follows, is best described as

    A. urbanisation caused by rural–urban migration \
    B. rural–urban migration caused by urbanisation \
    C. international migration \
    D. natural increase in the towns],
  [
    *Step 1 — separate the two terms.* Migration is the movement; urbanisation is the rise in the proportion living in towns.

    *Step 2 — fix the direction of cause.* The movement comes first and produces the change in proportion, so A states the order correctly.

    *Step 3 — reject B.* B reverses cause and effect, which is the commonest distractor in this topic.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

== 1.8 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [Population density is calculated as], [population × area], [population ÷ area], [area ÷ population], [births − deaths])

#mcq(2, [A population pyramid with straight sides and a rounded top indicates], [a very young population], [a stationary population], [a population in rapid growth], [a population with high mortality])

#mcq(3, [The main cause of rapid population growth in stage 2 of the demographic transition is], [a rise in the birth rate], [a fall in the death rate], [an increase in migration], [a fall in the birth rate])

#mcq(4, [Which of these is a push factor in rural–urban migration?], [employment in the city], [better schools in the city], [land shortage in the village], [electricity in the city])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [People divided by area. Multiplying gives a meaningless large number; dividing the other way gives area per person.]),
  ("B", [Straight sides mean birth and death rates have both settled at low levels; the rounded top is the survivors.]),
  ("B", [Deaths fall first because of medicine, water and food; the birth rate follows a generation later, and the gap is the growth.]),
  ("C", [Land shortage pushes people out. Jobs, schools and electricity are pull factors — they draw people in.]),
))

#diagram-fig("diagrams/recap_geo2_ch01.svg",
  "Chapter 1 recap card: the measures, the structure, the transition and the movement.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A population is measured by size, growth, density and structure, and each measure answers a
    different question. Distribution follows land, water, climate and work. The pyramid is the
    structure drawn, and its shape names the stage of the demographic transition the country is
    passing through. Migration moves people between the patterns, pushed by what they lack and
    pulled by what they hope for — and whether the numbers are a problem depends on the resources
    they have to work with.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Define density, growth rate and dependency ratio, and compute each from figures.],
  [Name four factors that explain the distribution of population in Nigeria.],
  [Sketch an expansive and a stationary pyramid, and say what each implies.],
  [Place Nigeria in the demographic transition and justify the placement.],
  [Distinguish rural–urban migration from urbanisation, in one sentence.],
))

#concept-box("Carry this into Chapter 2")[
  People do not spread evenly over the land; they cluster, and the cluster becomes a settlement.
  The next chapter takes the density map and asks what those clusters look like on the ground:
  why a village stands where it does, how a town grows rings, and what happens when the rings
  grow faster than the pipes.
]

#include "drill_ch01.typ"
