#import "template.typ": *

#current-chapter.update("Chapter 1: The Subject and its Tools")

#pagebreak()

#chapter-opener(
  1,
  "The Subject and its Tools",
  subtitle: "What Geography Studies, How It Is Divided, and the Instruments That Turn a Landscape into an Answer",
  syllabus-ref: "Part I • The Scope of Geography",
  utme-weight: "3 Qs a year",
  running: "The Subject and its Tools",
)

#focus-radar(
  objectives: (
    "Define geography and state its two central questions.",
    "Distinguish physical geography from human geography, with an example of each.",
    "Name the four spheres of the earth and the flow that links them.",
    "Describe the five tools of the geographer and what each one measures.",
    "Explain why geography is examined as both a science and a social science.",
  ),
  hotspots: (
    "“Geography is best defined as the study of …” — the earth as the home of people, and the spatial relationships between physical and human phenomena. The trap offers *the study of the earth's surface*, which is the description of a map, not the subject that explains it.\n",
    "“Which of the following is a branch of physical geography?” — geomorphology, climatology, hydrology, soil geography, biogeography. Any option naming population, settlement or industry belongs to human geography.\n",
    "“The layer of the earth where all life exists is the …” — biosphere, and it is the *zone* where the other three spheres meet, not a fourth solid layer. The trap offers *lithosphere*, which is the rock.\n",
    "“A GIS is best described as …” — a computer system that stores, combines and analyses layers of spatial data. The trap offers *a satellite*, which is the sensor that supplies one layer; the system that reasons with it is different.\n",
  ),
  trap-summary: "Three slips. (1) Treating geography as the memorising of capitals and products — the paper asks why a pattern exists, not only where it is. (2) Placing oceanography inside human geography because ships carry trade: the study of the sea itself is physical. (3) Calling remote sensing and GIS the same thing: one collects the data, the other analyses it.",
)

// ============================================================================
== 1.1 What Geography Is

Geography takes its name from two Greek words: *geo*, the earth, and *graphein*, to write.
The name is accurate but not sufficient, because every subject that describes the earth could
claim it. What makes geography a separate discipline is the question it insists on asking:
*why is this phenomenon here and not somewhere else, and what follows from its being here?*

That question is spatial. A geologist may study a rock because of what it is made of; a
geographer studies the same rock because of where it lies, what surrounds it, and what its
position allows people to do. The geographer's unit of analysis is not the object alone but
the *distribution* of objects — the pattern — and the relationships between one pattern and
another.

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE DEFINITION THE EXAMINER ACCEPTS]
  #v(3pt)
  #text(size: 10.3pt)[
    *Geography is the study of the earth as the home of man: the spatial distribution of
    physical and human phenomena, the processes that produce those distributions, and the
    relationships between people and their environment.*
  ]
  #v(3pt)
  #text(size: 9.4pt, fill: jamb-slate)[
    Three parts, and a question may test any of them: *distribution* (where), *process* (why
    there), *relationship* (what it does to people, and people to it).
  ]
]

#v(4pt)

The definition carries a consequence that candidates often miss. If geography studies the
*relationship* between people and environment, then it cannot be only a natural science and
cannot be only a social science. It is both, and the examiner tests the bridge: a question
about soil erosion is physical until it asks what the erosion does to a farming community,
at which point the same process has become a human problem.

#table(
  columns: (1.05fr, 1.55fr, 1.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it asks for],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example],
  ),
  [Where is it?], [distribution and pattern], [the concentration of industry around Lagos],
  [Why there?], [process and cause], [flat land, deep water, a railway head and a market],
  [What follows?], [relationship and consequence], [migration into the city, pressure on housing and water],
  [How does it change?], [change over time], [the growth of the city outward along the expressway],
)

== 1.2 The Two Families, and the Tools Between Them

Every topic in the syllabus can be placed in one of two families. *Physical geography* studies
the natural environment — the land, the air, the water, the soil and the living cover. *Human
geography* studies people: their numbers, their settlements, their work, their movement and
their organisation in space.

#diagram-fig("diagrams/geo1_ch01_scope.svg",
  "Figure 1.1 The subject in one frame: two families of content and the techniques that serve both.", width: 98%)

The division is convenient, but the examiner tests the boundary. A question that asks why a
town grew at the foot of a hill is human geography using a physical fact. A question that asks
why a hillside has been stripped of its trees may be physical geography caused by human
activity. The safe rule is to classify by *what is being explained*: if the answer is a natural
feature, the branch is physical; if the answer is a human arrangement, the branch is human.

#table(
  columns: (1.1fr, 1.75fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Branch],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it studies],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[A syllabus topic in the branch],
  ),
  [Geomorphology], [landforms and the processes that shape them], [rivers, slopes, coastal landforms],
  [Climatology], [weather, climate and the atmosphere], [the three rainfall types, the climate zones],
  [Hydrology], [water on the land and under it], [drainage basins, groundwater, floods],
  [Soil geography], [the formation and distribution of soils], [the soil profile, laterite, loess],
  [Biogeography], [plants and animals in their habitats], [the vegetation zones of Nigeria],
  [Population geography], [numbers, growth, distribution and migration], [density, rural–urban drift],
  [Settlement geography], [where and how people live], [nucleated and dispersed settlements],
  [Economic geography], [production, trade and their location], [farming systems, industry, transport],
)

#rule-box("The third family: techniques")[
  *Cartography* is the making and reading of maps. *Surveying and fieldwork* collect data on the
  ground. *Statistics* summarise it. *Remote sensing* observes it from above, and *GIS* combines
  the observations in layers. These are not a third branch of knowledge; they are the methods
  by which both families are studied, which is why a map question and a climate question can
  appear side by side in the same paper.
]

== 1.3 The Earth as a System of Four Spheres

Geography treats the earth as a single system made of four overlapping parts. The
*lithosphere* is the solid crust and the upper mantle beneath it. The *atmosphere* is the
envelope of gases. The *hydrosphere* is all the water — oceans, rivers, lakes, ice and the
water held in the ground. The *biosphere* is the zone in which life exists, and it exists
precisely because the other three meet there.

#v(4pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #set text(size: 9.6pt)
  #table(
    columns: (0.9fr, 2.1fr, 1.9fr),
    inset: (x: 4pt, y: 3pt),
    align: (left + horizon, left + horizon, left + horizon),
    stroke: none,
    [*Lithosphere*], [rock, soil and landforms], [the crust, the plates, volcanoes and earthquakes],
    [*Atmosphere*], [the gases and the weather in them], [winds, clouds, rain and the climate zones],
    [*Hydrosphere*], [all the water on and under the surface], [oceans, rivers, lakes, groundwater and ice],
    [*Biosphere*], [the living zone where the other three meet], [vegetation belts, wildlife, and people],
  )
]

#v(4pt)

The value of the system idea is that it explains change. A forest is cleared (biosphere changes),
the soil is exposed to rain (lithosphere changes), runoff increases and the stream carries more
sediment (hydrosphere changes), and the local air becomes hotter and drier (atmosphere changes).
No school of geography owns that chain; the subject is the chain.

#concept-box("Energy and matter: the two currencies of the system")[
  The earth receives energy from the sun and matter from itself. Energy arrives, does work —
  evaporating water, heating air, lifting it, driving winds — and leaves as radiation. Matter
  is recycled: water through the water cycle, rock through the rock cycle, carbon through the
  living and non-living world. A process question is usually asking which currency is moving
  and through which sphere.
]

== 1.4 The Tools: Maps, Fieldwork, Statistics and the View from Above

Geography is examined as a practical subject, and the practical questions are about
instruments: what each one measures and which one answers a given question.

#table(
  columns: (0.95fr, 1.45fr, 2.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Tool],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The question it answers],
  ),
  [Map], [shows position, distance, relief and land use to scale], [where is it, how far, how steep, what is it used for],
  [Fieldwork], [observes and measures on the ground], [what is it like there, and why],
  [Statistics], [summarises numbers and shows their shape], [how many, how spread, how changing],
  [Photograph], [records what the eye sees at one moment], [what does it look like, what is beside what],
  [Remote sensing], [detects the surface from aircraft or satellite], [what is the cover, and how has it changed],
  [GIS], [stores and combines layers of spatial data], [what overlaps what, and what follows from the overlap],
)

#shortcut-box("Reading the instruments in a question")[
  If the question mentions *scale, bearing, contour or grid reference*, it is asking about a map.
  If it mentions *satellite, imagery, sensor or land cover*, it is asking about remote sensing.
  If it mentions *layers, overlay or spatial database*, it is GIS. If it mentions *mean, median,
  range or graph*, it is statistics. Name the instrument before you answer, and the distractors
  lose most of their power.
]

Fieldwork deserves its own paragraph because it is the only tool that produces original data.
The geographer observes, measures (temperature, discharge, slope angle, pebble size), samples
(quadrats, soil auger, questionnaire) and records. The weakness of fieldwork is that a single
visit describes one moment; the strength is that it can measure what a map can only show.

#trap-box("Two errors the examiner builds options from")[
  *First*: confusing *weather* with *climate*. Weather is the state of the atmosphere at a place
  at a moment; climate is the average of that state over thirty years or more. A question that
  says "the atmospheric condition of a place over a long period" is asking for climate, and the
  option that says weather is the trap. *Second*: treating a *sketch map* as if it were drawn to
  scale. A sketch shows relationships, not measurements; a question that asks for a distance
  from a sketch is testing whether you know that no distance can be read from it.
]

== 1.5 Why the Subject Is Worth the Paper

Geography is the subject that connects the science of the ground to the decisions taken on it.
A country that knows its soils, rainfall, slopes and flood plains can site a dam, a road or a
housing estate before the damage is done; a country that does not, learns the same facts from
a disaster. The Nigerian examples are everywhere: the flood plain of the Niger and Benue, the
laterite of the Jos Plateau, the coastal erosion of the Niger Delta, the desert encroachment of
the far north.

#v(3pt)

There is also a civic reason. A candidate who can read a map can read a plan, a title deed, a
catchment boundary or a rainfall chart — and a citizen who can read those documents is harder
to mislead. That is the sense in which geography is a subject for living, not only for passing.

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[CAREERS THAT BEGIN HERE]
  #v(3pt)
  #text(size: 9.5pt)[
    Surveying and cartography · meteorology and climatology · hydrology and water resources ·
    environmental management and impact assessment · town and regional planning · agriculture
    and soil science · teaching and research · logistics, transport planning and GIS analysis.
  ]
]

== 1.6 Four Worked Questions

#worked-example(
  1,
  "The definition, and what makes it correct",
  [Geography is best defined as the study of

    A. the earth's surface features \\
    B. the relationship between the earth and its people \\
    C. the capitals and products of countries \\
    D. the rocks that make up the crust],
  [
    *Step 1 — test the word "best".* Three options describe something geography studies; one describes what the subject is.

    *Step 2 — eliminate the parts.* Rocks are geology's object; capitals and products are facts without explanation; surface features are what a map shows, not what geography explains.

    *Step 3 — choose the relationship.* The definition the examiner accepts joins the physical earth to the people who live on it, which is why the subject spans both sciences.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Placing a topic in a branch",
  [Which of the following topics belongs to human geography?

    A. the formation of a delta \\
    B. the classification of clouds \\
    C. the site and growth of a market town \\
    D. the weathering of granite],
  [
    *Step 1 — ask what is being explained.* A delta is a depositional landform; clouds are atmospheric; granite weathering is a rock process. Each is natural.

    *Step 2 — ask what remains.* A market town is a human arrangement, and its site is a physical fact used by people.

    *Step 3 — confirm the boundary.* The question tests whether you classify by the phenomenon explained, not by the words in the stem.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The branch names",
  [The branch of geography that deals with the study of landforms and the processes that shape them is called

    A. climatology \\
    B. geomorphology \\
    C. hydrology \\
    D. biogeography],
  [
    *Step 1 — split the word.* *Geo* is earth, *morph* is form, *logy* is study.

    *Step 2 — check the rivals.* Climatology studies the atmosphere; hydrology studies water; biogeography studies the distribution of living things.

    *Step 3 — match the definition.* Landforms and the processes that produce them is precisely geomorphology.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The instrument, not the sensor",
  [A computer system used to capture, store, combine and analyse layers of spatial data is called

    A. remote sensing \\
    B. a geographic information system \\
    C. a global positioning system \\
    D. cartography],
  [
    *Step 1 — isolate the verb.* The stem says *capture, store, combine and analyse* — the system is doing the reasoning.

    *Step 2 — place the rivals.* Remote sensing is the sensor that captures one layer; GPS fixes a position; cartography draws the map.

    *Step 3 — choose the system that overlays.* Combining layers is the defining operation of a GIS, and the word *layers* in a stem is its signature.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 1.7 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [The two main branches of geography are], [physical and human], [regional and national], [cartography and surveying], [geology and meteorology])

#mcq(2, [The zone in which all life exists on the earth is the], [lithosphere], [atmosphere], [biosphere], [hydrosphere])

#mcq(3, [Which of the following is a method rather than a branch of geography?], [climatology], [remote sensing], [population geography], [biogeography])

#mcq(4, [The average atmospheric condition of a place over a long period is called its], [weather], [season], [climate], [pressure])

#answer-key-grid(("A", "C", "B", "C"))

#answer-notes((
  ("A", [Physical geography studies the natural environment; human geography studies people and their use of it. Regional geography is a way of organising the two, not a third family.]),
  ("C", [The biosphere is the living zone where the lithosphere, atmosphere and hydrosphere meet. It is not a solid layer, which is why the lithosphere option is the trap.]),
  ("B", [Remote sensing is an instrument that supplies data to both branches. Climatology, population geography and biogeography are content areas.]),
  ("C", [Climate is the long-run average; weather is the state at one moment. The phrase “over a long period” is the whole question.]),
))

#diagram-fig("diagrams/recap_geo1_ch01.svg",
  "Chapter 1 recap card: the definition, the two families, the tools and the exam habit.", width: 62%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Geography studies the earth as the home of people, and its question is always spatial:
    why a phenomenon is distributed as it is, and what follows from that distribution. The
    subject divides into physical geography — landforms, climate, water,
    soils, vegetation — and human geography — population, settlement, economy, movement — with
    maps, fieldwork, statistics, remote sensing and GIS serving both. The earth is a system of
    four spheres, and the biosphere is the zone where the other three meet.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Define geography in one sentence that names distribution, process and relationship.],
  [Name four branches of physical geography and four of human geography.],
  [Explain what makes the biosphere different from the other three spheres.],
  [Match five tools to the questions they answer.],
  [Distinguish weather from climate, and a sketch map from a scale map.],
))

#concept-box("Carry this into Chapter 2")[
  The next chapter applies the same questions to the earth itself: its size, shape, rotation
  and revolution are the facts from which latitude, longitude, time and the seasons are derived.
]
