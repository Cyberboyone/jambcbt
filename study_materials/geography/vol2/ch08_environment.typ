#import "template.typ": *

#current-chapter.update("Chapter 8: Environment and Development")

#pagebreak()

#chapter-opener(
  8,
  "Environment and Development",
  subtitle: "Hazards, Degradation and the Kind of Growth That Can Be Sustained",
  syllabus-ref: "Part V • Environment and Development",
  utme-weight: "5 Qs a year",
  running: "Environment and Development",
)

#focus-radar(
  objectives: (
    "Distinguish a natural hazard from a disaster, and name Nigeria's main hazards.",
    "Explain desertification, deforestation and soil erosion, and state a remedy for each.",
    "Classify pollution by the medium it enters, with a Nigerian example.",
    "Describe conservation measures and the agencies that carry them out.",
    "Define sustainable development and relate it to the SDGs and climate change.",
  ),
  hotspots: (
    "“A natural hazard becomes a disaster when …” — people are exposed and vulnerable to it. The trap offers *the hazard is very large*, which is magnitude, not disaster.\n",
    "“Desertification is best defined as …” — the spread of desert-like conditions into formerly productive land, usually through overuse and drought. The trap offers *the expansion of an existing desert*, which is only one part of it.\n",
    "“The greatest cause of soil erosion in south-eastern Nigeria is …” — uncontrolled runoff on cleared, steep farmland. The trap offers *wind*, which dominates in the north.\n",
    "“Sustainable development is development that …” — meets present needs without compromising the ability of future generations to meet theirs (Brundtland, 1987). Learn the definition word for word.\n",
  ),
  trap-summary: "Three slips. (1) Treating every flood as a natural event, when the damage is decided by where people built. (2) Naming a cause when the question asks for a remedy. (3) Confusing conservation (using carefully) with preservation (not using at all).",
)

// ============================================================================
== 8.1 Hazard and Disaster

A *natural hazard* is a physical event that threatens people — a flood, a drought, a storm, an
earthquake. A *disaster* is what happens when that event meets a population that is exposed and
vulnerable. The physical event is only half the equation, which is why a moderate flood can
kill more people than a severe one that strikes an empty coast.

#diagram-fig("diagrams/geo2_ch08_environment.svg",
  "Figure 8.1 How a hazard becomes a disaster, and the three circles of sustainable development.", width: 98%)

#table(
  columns: (0.95fr, 1.5fr, 1.5fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Hazard],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Where and why],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What reduces the damage],
  ),
  [Flood], [river plains and coastal cities in the rains], [embankments, drainage, zoning, early warning],
  [Drought], [the Sahel margin, when the rains fail], [irrigation, drought-resistant seed, water storage],
  [Soil erosion], [the steep, cleared south-east; the dusty north], [terracing, contour ploughing, cover crops],
  [Desertification], [the far north, from overgrazing and fuelwood], [the Great Green Wall, rotational grazing],
  [Oil spill], [the Niger Delta], [pipeline inspection, mangrove replanting, compensation],
  [Coastal erosion], [the Lagos and Delta shoreline], [groynes, beach nourishment, setback lines],
)

== 8.2 Desertification and Drought

Desertification is the spread of desert-like conditions into land that was once productive. It is
not a desert advancing like a tide; it is land losing its cover, its soil and its capacity to
hold water, usually because people use it too hard in a dry year.

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE CHAIN, AND WHERE TO BREAK IT]
  #v(4pt)
  #table(
    columns: (1.15fr, 2.35fr),
    inset: (x: 4pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Cause*], [drought, overgrazing, felling for fuelwood, repeated cropping without rest],
    [*Process*], [vegetation is stripped, the soil dries and bakes, wind lifts the fines away],
    [*Effect*], [yields fall, wells fail, herders and farmers move south, and the land is abandoned],
    [*Break it*], [plant and protect trees, rotate grazing, terrace and bund, harvest rainwater, insure the crop],
  )
]

#v(4pt)

The regional response is the *Great Green Wall*, a belt of trees and restored land planned across
the Sahel from Senegal to Djibouti. Nigeria's section runs through eleven northern states, and the
exam expects you to know both the idea and its difficulty: a wall of trees needs water, and the
water is what the drought removed.

== 8.3 Deforestation and Soil Erosion

Deforestation is the permanent removal of forest cover. In Nigeria it runs at one of the highest
rates in the world, driven by fuelwood, farmland, logging and, in the Delta, oil.

#table(
  columns: (1.0fr, 1.4fr, 1.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Cause],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it removes],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What follows],
  ),
  [Fuelwood and charcoal], [the standing tree], [the soil is exposed and dries],
  [Farm clearance], [the canopy and the litter], [runoff and sheet erosion],
  [Logging], [the valuable species], [the forest loses its structure],
  [Oil and road building], [the whole cover along the line], [gullies, spills and silted streams],
  [Urban sprawl], [the land itself], [impervious surface, flash floods],
)

#v(4pt)

Soil erosion follows deforestation the way a shadow follows a body. *Sheet* erosion strips the top
soil in a thin layer; *rill* erosion cuts small channels; *gully* erosion cuts the deep, widening
trenches that swallow roads in Anambra and Imo. Wind erosion does the same work in the north,
lifting the fines and leaving the sand.

== 8.4 Pollution and Waste

Pollution is the introduction of a substance or energy that harms the environment. Classify it by
the medium it enters, and the examples follow.

#table(
  columns: (0.95fr, 1.45fr, 1.55fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Medium],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Source in Nigeria],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Harm],
  ),
  [Air], [gas flares, generators, traffic, refuse burning], [respiratory disease, acid rain, haze],
  [Water], [untreated sewage, industrial effluent, oil spills], [cholera, dead fish, unusable wells],
  [Land], [open dumps, e-waste, plastic], [leachate into groundwater, blocked drains, livestock deaths],
  [Noise], [generators, traffic, markets], [hearing loss, stress],
  [Thermal], [cooling water returned to a river], [oxygen falls and fish die],
)

== 8.5 Conservation

Conservation is the careful use of resources so that they renew. It is not preservation — the
syllabus marks the difference — because a forest that is never used is a museum, while a forest
that is used without renewal is a desert.

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE MEASURES, BY RESOURCE]
  #v(3pt)
  #text(size: 10.1pt)[
    *Soil* — terracing, contour ploughing, cover crops, mulching, check dams, afforestation. \
    *Forest* — protected reserves, replanting, agroforestry, fuel-efficient stoves. \
    *Water* — watershed management, boreholes, rainwater harvesting, pollution control. \
    *Wildlife* — national parks and game reserves (Yankari, Cross River, Gashaka-Gumti), anti-poaching. \
    *Minerals* — efficient extraction, recycling, and the restoration of worked-out land.
  ]
]

#v(4pt)

The agencies are examinable too: the *Federal Ministry of Environment*, the *National Emergency
Management Agency* (NEMA) for disasters, the *National Agency for the Great Green Wall*, the state
forestry and waste authorities, and the international bodies — UNEP, the IPCC and the conventions
on climate, desertification and biodiversity.

== 8.6 Sustainable Development

*Sustainable development* is development that meets the needs of the present without compromising
the ability of future generations to meet their own needs. The definition is Brundtland's (1987),
and the paper often quotes it.

#table(
  columns: (1.05fr, 2.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Circle],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it asks for],
  ),
  [Environment], [stay within the carrying capacity of the land, water and air],
  [Economy], [growth that does not consume the capital it depends on],
  [Society], [fairness now — schools, health, and a share of the benefits for the people who bear the cost],
)

#v(4pt)

*Climate change* is the environmental question that now sits behind all the others. Nigeria's
exposure is heat, erratic rain, floods and a shrinking Lake Chad; its contribution to global
emissions is small, and its adaptation needs — irrigation, early warning, coastal defence — are
large. The *SDGs* give the syllabus its vocabulary: goal 13 for climate, 15 for life on land and
6 for clean water are the three the paper most often names.

== 8.7 Four Worked Questions

#worked-example(
  1,
  "Hazard or disaster",
  [A natural hazard becomes a disaster when it

    A. reaches a high magnitude \
    B. affects a vulnerable population \
    C. occurs in the dry season \
    D. is recorded by scientists],
  [
    *Step 1 — define the two terms.* A hazard is the event; a disaster is the damage it does.

    *Step 2 — locate the difference.* Damage depends on exposure and vulnerability, not on magnitude alone.

    *Step 3 — reject the others.* Season and recording have nothing to do with loss.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The definition, word for word",
  [Sustainable development is best defined as development that

    A. raises national income as fast as possible \
    B. meets present needs without compromising future generations \
    C. protects the environment by stopping all industry \
    D. depends on foreign aid],
  [
    *Step 1 — recall Brundtland.* The definition balances present needs against the ability of future generations to meet theirs.

    *Step 2 — test the caricatures.* A ignores the future; C is preservation, not sustainability; D is a financing method, not a definition.

    *Step 3 — choose the balanced wording.* B is the definition the syllabus quotes.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The cause and the cure",
  [The most effective measure against gully erosion in south-eastern Nigeria is

    A. planting trees on the slopes and checking runoff \
    B. building more roads \
    C. burning the bush each dry season \
    D. increasing the cattle herd],
  [
    *Step 1 — identify the process.* Gullies grow where runoff is concentrated on cleared, steep land.

    *Step 2 — attack the process.* Trees and check dams slow the water; contour drains lead it away.

    *Step 3 — reject the accelerants.* Roads, burning and grazing all expose more soil.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Conservation against preservation",
  [Which statement describes conservation rather than preservation?

    A. The forest is left entirely untouched. \
    B. The forest is logged selectively and replanted. \
    C. The forest is cleared for farmland. \
    D. The forest is converted to a car park.],
  [
    *Step 1 — separate the terms.* Conservation is careful use with renewal; preservation is non-use.

    *Step 2 — test each option.* A is preservation; C and D are destruction; B is use with renewal.

    *Step 3 — confirm the phrase.* Selective logging plus replanting is the textbook case of conservation.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 8.8 Chapter 8 in the Exam Hall — a Two-Minute Set

#mcq(1, [A natural hazard becomes a disaster when it], [is very large], [strikes a vulnerable population], [occurs at night], [lasts a long time])

#mcq(2, [Desertification is the], [advance of a desert dune], [spread of desert-like conditions into productive land], [cooling of the Sahel], [growth of irrigated farms])

#mcq(3, [The greatest cause of soil erosion in south-eastern Nigeria is], [wind], [runoff on cleared slopes], [earthquakes], [frost])

#mcq(4, [Sustainable development was defined by the], [Brundtland Report], [Kyoto Protocol], [Lagos Treaty], [Berlin Conference])

#answer-key-grid(("B", "B", "B", "A"))

#answer-notes((
  ("B", [Vulnerability and exposure turn an event into a disaster; magnitude alone does not.]),
  ("B", [The definition is about land losing its productivity, not about dunes moving.]),
  ("B", [Steep slopes, heavy rain and cleared cover concentrate runoff into gullies in the south-east.]),
  ("A", [The 1987 Brundtland Report gave the definition the syllabus quotes.]),
))

#diagram-fig("diagrams/recap_geo2_ch08.svg",
  "Chapter 8 recap card: hazards, degradation, conservation and sustainability.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A hazard is an event; a disaster is what a vulnerable population suffers from it. Desertification,
    deforestation, erosion and pollution are the four ways the land loses its capacity, and each has
    a chain of cause, process and effect that can be broken at a named point. Conservation is use
    with renewal, and sustainable development holds the environment, the economy and society in the
    same frame — which is the frame the last question of the paper usually asks you to use.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [Distinguish hazard from disaster, with a Nigerian example of each.],
  [Explain the desertification chain and name two ways to break it.],
  [Name three types of soil erosion and the landform each leaves.],
  [Classify pollution by medium, with one Nigerian example per medium.],
  [Define sustainable development and name three SDGs that bear on Nigeria's environment.],
))

#concept-box("The end of the volume")[
  Eight chapters have taken the same question round the human world: where people are, why there,
  what they make of the place, and what the place makes of them. The examination will ask it in
  forty small pieces. If you can classify a town, a farm, an industry, a trade and a hazard, and
  give each a Nigerian example, you can answer almost all of them.
]

#include "drill_ch08.typ"
