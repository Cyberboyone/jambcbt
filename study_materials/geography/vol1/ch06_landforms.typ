#import "template.typ": *

#current-chapter.update("Chapter 6: Landforms and Soils")

#pagebreak()

#chapter-opener(
  6,
  "Landforms and Soils",
  subtitle: "Weathering, the Work of Wind, Ice and Waves, and the Thin Skin of Soil That Feeds the Country",
  syllabus-ref: "Part V • Landforms and the Soil",
  utme-weight: "6 Qs a year",
  running: "Landforms and Soils",
)

#focus-radar(
  objectives: (
    "Distinguish weathering from erosion, and name the three weathering types.",
    "Describe the landforms produced by wind, ice and waves.",
    "Explain how a soil forms and name the horizons of a profile.",
    "Relate soil type to parent rock, climate and relief.",
    "State the causes of soil erosion and the methods of conservation.",
  ),
  hotspots: (
    "“The process by which rock is broken down in situ is …” — weathering. The trap offers *erosion*, which requires transport; the phrase *in situ* is the whole question.\n",
    "“A barchan is a landform associated with …” — wind deposition in a desert. The trap offers *glacial deposition*, whose dunes are drumlins, not barchans.\n",
    "“A cirque is formed by …” — glacial erosion at the head of a valley, where the ice rotates and plucks the bedrock. The trap offers *river erosion*, which makes valleys but never armchair-shaped hollows.\n",
    "“The soil horizon richest in humus is the …” — A horizon. The trap offers the *B horizon*, which is the subsoil where clay and iron accumulate.\n",
  ),
  trap-summary: "Three slips. (1) Treating weathering and erosion as synonyms — weathering breaks rock where it lies, erosion removes it. (2) Naming a landform by its agent without checking the process: a spit is depositional, a stack is erosional, and both are coastal. (3) Saying laterite is a fertile soil — it is the leached, iron-rich crust of the tropics and is poor for farming, which is why the paper uses it as a distractor for “fertile”.",
)

// ============================================================================
== 6.1 Weathering and Mass Movement

Weathering is the breakdown of rock *in place*. It is physical, chemical or biological, and the
three usually work together: a rock cracked by frost has more surface for chemical attack.

#table(
  columns: (0.95fr, 1.35fr, 1.6fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where it is fastest],
  ),
  [Physical], [freeze–thaw], [water in cracks freezes, expands and splits the rock], [mountains above the snow line],
  [], [exfoliation], [heating expands the surface, cooling contracts it, and layers peel], [deserts with hot days and cold nights],
  [], [salt crystallisation], [salt grows in pores and flakes the surface], [coasts and arid basins],
  [Chemical], [hydrolysis], [water reacts with feldspar to make clay], [humid tropics],
  [], [oxidation], [oxygen and water rust iron minerals], [rocks rich in iron],
  [], [carbonation], [carbonic acid dissolves limestone], [karst regions],
  [Biological], [root wedging], [roots widen joints], [forested slopes],
  [], [organic acids], [lichens and humus attack the rock surface], [bare rock and wet forest floors],
)

#v(4pt)

Mass movement is the *downhill transfer of material under gravity*, and it differs from erosion
in that no transporting agent — water, wind or ice — is doing the carrying. *Soil creep* is the
slow, imperceptible movement recorded by tilted fences and bent tree trunks. A *landslide* is a
sudden slide of a whole mass along a slip plane. A *rockfall* is free fall from a cliff. A
*mudflow* is saturated soil moving as a fluid. All four are triggered by the same conditions:
a steep slope, a saturated or weak layer, and the removal of support at the foot.

#trap-box("Why a slope fails")[
  A slope is stable while friction holds the material in place. It fails when the material is
  *loaded* (heavy rain, new buildings), when it is *undercut* (road cutting, wave erosion), when
  the *vegetation is removed* (roots no longer bind it), or when the material is *shaken*
  (earthquake). The paper gives one of those conditions and asks what follows; the answer is
  always a form of mass movement, not weathering.
]

== 6.2 The Work of Wind

Wind is a weak agent compared with water, but in deserts it is almost the only one, and it
leaves a distinctive set of landforms. Wind erodes by *deflation* (lifting loose material),
*abrasion* (sandblasting rock at the base) and *attrition* (grains wearing each other). It
transports fine material in suspension, sand by saltation, and gravel by creep.

#table(
  columns: (1.05fr, 1.3fr, 2.25fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Landform],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it looks like],
  ),
  [Barchan], [deposition], [a crescent dune with horns pointing downwind],
  [Seif], [deposition], [a long ridge dune parallel to the wind],
  [Yardang], [abrasion], [a ridge of hard rock between wind-scoured furrows],
  [Zeugen], [abrasion], [a mushroom-shaped block on a softer base],
  [Inselberg], [exhumation and weathering], [an isolated residual hill rising from a plain],
  [Loess], [deposition], [a blanket of fine, fertile wind-blown silt],
)

#v(3pt)

The Nigerian desert margin shows the southern edge of this system: the *Sahel* is a belt where
rainfall is too low for tree cover, and the advancing sand is held back by shelter belts and by
the root systems of grasses. A question about desertification is a question about the balance
between rainfall, vegetation and wind, not about the wind alone.

== 6.3 The Work of Ice

A glacier is a mass of ice moving slowly under its own weight. It erodes by *plucking* (freezing
onto blocks and pulling them away) and *abrasion* (grinding the bed with the rock it carries).
It transports everything it takes, and it deposits it as unsorted *till* when it melts.

#table(
  columns: (1.05fr, 1.3fr, 2.25fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Landform],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Definition],
  ),
  [Cirque (corrie)], [erosion], [an armchair-shaped hollow at the head of a glacial valley],
  [Arête], [erosion], [a sharp ridge between two cirques],
  [Pyramidal peak], [erosion], [a pointed summit where three or more cirques meet],
  [U-shaped valley], [erosion], [a valley widened and deepened by ice, with steep sides and a flat floor],
  [Hanging valley], [erosion], [a tributary valley left above the main valley floor],
  [Roche moutonnée], [erosion], [a rounded rock hump, smooth upstream and jagged downstream],
  [Moraine], [deposition], [the material the glacier carried and dropped],
  [Drumlin], [deposition], [a smooth oval hill of till, aligned with the ice flow],
  [Outwash plain], [deposition], [the flat plain of sorted sand and gravel beyond the ice],
)

#v(3pt)

Nigeria has no glaciers today, but the paper can still ask about glaciated landscapes because
the syllabus is general. The safest exam habit is to attach each landform to *where in the
glacier* it forms: cirque at the head, arete between heads, U-valley in the trunk, moraine at
the snout, outwash beyond it.

== 6.4 The Work of Waves

Waves are generated by wind over water. As they approach the shore they steepen, break, and
release energy against the coast. Whether a coast is built or destroyed depends on the balance
between wave energy and the supply of sediment.

#table(
  columns: (1.0fr, 1.3fr, 2.3fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Landform],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it is made],
  ),
  [Cliff], [erosion], [waves undercut the base and the face collapses],
  [Wave-cut platform], [erosion], [the flat rock shelf left as the cliff retreats],
  [Cave → arch → stack → stump], [erosion], [a weakness is hollowed through a headland until the roof falls],
  [Beach], [deposition], [sand and shingle built where constructive waves run up faster than they backwash],
  [Spit], [deposition], [a ridge of sediment projecting across a bay, built by longshore drift],
  [Bar], [deposition], [a spit that joins two headlands and encloses a lagoon],
  [Tombolo], [deposition], [a bar joining the mainland to an island],
)

#rule-box("Constructive and destructive waves")[
  A *constructive* wave has a low height and a long wavelength; it breaks gently, swashes
  further than it backwashes, and builds a beach. A *destructive* wave is tall and steep; it
  plunges, backwashes harder than it swashes, and removes material. Beaches grow in calm
  weather and shrink in storms, which is why the same coast can be building and eroding in the
  same year.
]

== 6.5 Soils: Formation and Profile

Soil is the product of the breakdown of rock and the decay of organic matter. Five factors
control it: *parent rock*, which supplies the minerals; *climate*, which decides the rate of
weathering and the amount of leaching; *relief*, which decides drainage and depth; *organisms*,
which supply humus; and *time*, which allows the profile to develop.

#diagram-fig("diagrams/geo1_ch06_soil.svg",
  "Figure 6.1 Weathering, the three soil-forming processes and the horizons of a soil profile.", width: 98%)

#table(
  columns: (1.05fr, 1.55fr, 2.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Horizon],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it means for farming],
  ),
  [O], [litter and undecomposed organic matter], [protects the surface and returns nutrients],
  [A], [topsoil, dark with humus, roots and organisms], [the layer that holds the fertility],
  [B], [subsoil, where clay, iron and aluminium accumulate], [drains slowly and stores moisture],
  [C], [weathered rock fragments], [the parent material in transition],
  [R], [solid bedrock], [the floor of the profile],
)

#v(3pt)

Soil *texture* names the mineral mix — sand, silt and clay — and it decides drainage and
fertility. Sandy soils drain fast and hold few nutrients; clay soils hold water but may
waterlog; loams, which mix the three, are the soils farmers prefer. *Structure*, the way the
particles clump into crumbs, decides how easily roots and air move.

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[THE SOILS THE PAPER NAMES]
  #v(4pt)
  #text(size: 9.7pt)[
    *Laterite* — leached, iron-rich, hard when dry; the tropical soil that is poor when cleared. \
    *Alluvial* — deposited by rivers on flood plains; deep and fertile, which is why delta farmers
    plant on it. *Loess* — wind-blown silt; fertile and easily worked. *Sandy* — coarse, well
    drained, low in nutrients. *Clay* — fine, water-retaining, heavy to work. *Peat* — organic
    and waterlogged, needing drainage before use.
  ]
]

#v(3pt)

Soil erosion is the removal of topsoil faster than it can form. The causes are the familiar
ones: clearance of vegetation, overgrazing, cultivation up and down the slope, and the
concentration of runoff. The remedies follow directly — contour ploughing, terracing,
strip cropping, shelter belts, cover crops, and the return of organic matter to the soil.

#shortcut-box("Naming a soil problem from a photograph")[
  A *red, hard, bare surface* is laterite exposed by erosion. A *pale, sandy, dry* surface is
  a leached sandy soil. A *dark, crumbly, root-filled* surface is a fertile topsoil. In a
  question, the colour and the vegetation tell you the soil before the text does.
]

== 6.6 Four Worked Questions

#worked-example(
  1,
  "Weathering, not erosion",
  [The disintegration of rock in its original position is called

    A. erosion \\
    B. weathering \\
    C. deposition \\
    D. transportation],
  [
    *Step 1 — note the phrase.* “In its original position” is the definition of weathering.

    *Step 2 — separate the rivals.* Erosion and transportation move material; deposition drops it.

    *Step 3 — confirm.* Weathering prepares material; erosion removes it. The stem describes preparation only.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The glacial hollow",
  [An armchair-shaped hollow at the head of a glacial valley is called a

    A. drumlin \\
    B. cirque \\
    C. moraine \\
    D. hanging valley],
  [
    *Step 1 — picture the shape.* Armchair-shaped and at the head of the valley: that is a cirque (corrie).

    *Step 2 — place the rivals.* A drumlin is a depositional hill, a moraine is debris, and a hanging valley is a tributary left above the main floor.

    *Step 3 — confirm.* Erosion at the head of the glacier, where the ice rotates, hollows the cirque.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Coastal erosion sequence",
  [The correct order in the development of coastal features is

    A. stack → cave → arch → stump \\
    B. cave → arch → stack → stump \\
    C. arch → cave → stump → stack \\
    D. stump → stack → arch → cave],
  [
    *Step 1 — start with the weakness.* Waves attack a joint in a headland and hollow a cave.

    *Step 2 — continue through the headland.* The cave cuts through to make an arch; the roof collapses to leave a stack; the stack erodes to a stump.

    *Step 3 — check the order.* Cave, arch, stack, stump — erosion from the inside out.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The soil horizon",
  [The layer of a soil profile in which humus is most concentrated is the

    A. O horizon \\
    B. A horizon \\
    C. B horizon \\
    D. C horizon],
  [
    *Step 1 — separate litter from soil.* The O horizon is undecomposed litter on the surface; the A horizon is the mineral topsoil where humus is mixed with the soil.

    *Step 2 — read the stem.* It asks where humus is *most concentrated in the soil*, which is the dark A horizon.

    *Step 3 — eliminate.* The B horizon is the subsoil of clay and iron, and the C horizon is weathered rock.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 6.7 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [A barchan is a landform associated with], [glacial erosion], [wind deposition], [river erosion], [wave action])

#mcq(2, [A U-shaped valley is produced by], [river erosion], [glacial erosion], [wind erosion], [mass movement])

#mcq(3, [A spit is formed mainly by], [longshore drift and deposition], [wave erosion of a cliff], [river deposition at a mouth], [wind deflation])

#mcq(4, [The soil horizon that consists mainly of weathered rock fragments is the], [A horizon], [B horizon], [C horizon], [O horizon])

#answer-key-grid(("B", "B", "A", "C"))

#answer-notes((
  ("B", [A barchan is a crescent-shaped dune built by wind deposition. Drumlins are the glacial equivalent, which is why they are the usual distractor.]),
  ("B", [Ice widens and deepens a valley into a U-shape with steep sides and a flat floor. A river cuts a V; the letters are the simplest memory aid in the chapter.]),
  ("A", [A spit is built by longshore drift carrying sediment across a bay. Erosion makes cliffs and stacks, not spits.]),
  ("C", [The C horizon is weathered rock; the A horizon is humus-rich topsoil and the B horizon is subsoil.]),
))

#diagram-fig("diagrams/recap_geo1_ch06.svg",
  "Chapter 6 recap card: weathering, the three agents, the soil and its profile.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Weathering breaks rock where it lies — physically by frost and heat, chemically by water
    and oxygen, biologically by roots and acids — and mass movement carries the debris downhill
    without an agent. Wind erodes and deposits in deserts, making barchans, yardangs and loess;
    ice plucks and abrades, making cirques, arêtes, U-shaped valleys and moraines; waves cut
    cliffs, caves, arches and stacks, and build beaches, spits and bars. On the debris, climate
    and time produce soil: an O horizon of litter, an A horizon of humus-rich topsoil, a B
    horizon of clay and iron, a C horizon of weathered rock and solid bedrock beneath. The soil
    is the thinnest and most valuable layer in the whole chapter — and the one that erosion
    removes fastest.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Distinguish weathering from erosion in one sentence.],
  [Name two landforms made by each of wind, ice and waves, and the process behind each.],
  [State the five factors of soil formation.],
  [Draw and label a soil profile from O to R.],
  [Name four methods of soil conservation and the process each arrests.],
))

#concept-box("Carry this into Chapter 7")[
  Everything in the last six chapters is described in space, and the instrument that describes
  it is the map. Chapter 7 turns the physical geography into measurements: scale, distance,
  bearing, grid references and contours — the five operations that the paper tests every year,
  and the five where a candidate who knows the arithmetic can gain marks without memorising
  another fact.
]
