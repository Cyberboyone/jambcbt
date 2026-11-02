#import "template.typ": *

#current-chapter.update("Appendix I: The Comparison Tables")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix I: The Comparison Tables]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Comparison Tables]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Six tables that put the confusable pairs side by side. A candidate who can reproduce them
    from memory can answer any "which of the following distinguishes" question in the paper.
  ]
]

#v(6pt)

== I.1 The Three Rock Families

#table(
  columns: (0.95fr, 1.35fr, 1.4fr, 1.9fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Family],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Formed by],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Texture / structure],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Examples],
  ),
  [Igneous], [cooling of magma or lava], [crystalline; coarse if intrusive, fine if extrusive], [granite, basalt, gabbro],
  [Sedimentary], [deposition, compaction and cementation], [layers; may contain fossils], [sandstone, shale, limestone, coal],
  [Metamorphic], [heat and pressure on an existing rock], [foliated or recrystallised; harder than the parent], [marble, slate, quartzite, gneiss],
)

== I.2 The Three Rainfall Types

#table(
  columns: (0.9fr, 1.4fr, 1.5fr, 1.8fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Trigger],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Typical place],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Signature in a question],
  ),
  [Relief], [air forced over high ground], [windward slopes of mountains], ["windward", "rain shadow", "slope"],
  [Convectional], [strong heating of the surface], [equatorial belt, hot interiors], ["afternoon", "thunder", "heating"],
  [Frontal], [warm air rising over cold air], [temperate latitudes], ["front", "depression", "steady rain"],
)

== I.3 Shield and Composite Volcanoes

#table(
  columns: (0.95fr, 1.2fr, 1.35fr, 2.1fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Shield],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Composite],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why],
  ),
  [Lava], [basic, fluid], [acidic, viscous], [silica content controls viscosity],
  [Eruption], [quiet, frequent], [explosive], [gas escapes easily from fluid lava],
  [Profile], [broad and gentle], [steep cone], [fluid lava spreads; viscous lava piles up],
  [Example], [Mauna Loa], [Vesuvius, Fuji], [the classic pair in the paper],
)

== I.4 The Three Plate Boundaries

#table(
  columns: (1.0fr, 1.3fr, 1.4fr, 1.9fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Boundary],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Movement],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Result],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Example],
  ),
  [Constructive], [apart], [new crust, ridge, rift valley], [mid-Atlantic ridge],
  [Destructive], [together, one sinks], [trench, island arc, fold mountains, volcanoes], [the Andes, Japan],
  [Conservative], [past each other], [fault, earthquakes], [the San Andreas fault],
)

== I.5 The Drainage Patterns

#table(
  columns: (0.9fr, 1.4fr, 2.4fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pattern],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Looks like],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Terrain that produces it],
  ),
  [Dendritic], [a branching tree], [uniform rock, gentle regional slope],
  [Trellised], [parallel trunks with right-angled tributaries], [folded bands of alternating resistance],
  [Radial], [spokes of a wheel], [a dome or volcano],
  [Centripetal], [streams pointing inward], [a basin or crater],
  [Deranged], [disconnected channels], [glaciated or swampy ground],
)

== I.6 The Soil Horizons

#table(
  columns: (0.65fr, 1.55fr, 2.3fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Horizon],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Contents],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The examinable point],
  ),
  [O], [litter, undecomposed organic matter], [not yet soil; protects the surface],
  [A], [humus mixed with minerals], [the fertile layer; dark colour],
  [B], [clay, iron and aluminium accumulated], [the subsoil; slower drainage],
  [C], [weathered rock fragments], [the parent material in transition],
  [R], [solid bedrock], [the base of the profile],
)

#v(4pt)

#concept-box("How to use the tables in the last week")[
  Cover the right-hand columns and reproduce each row from the left-hand one. A table you can
  rebuild is a distinction you can defend; a table you can only read is a page you have seen.
  The paper's discriminating questions are almost all built from these six pairs.
]
