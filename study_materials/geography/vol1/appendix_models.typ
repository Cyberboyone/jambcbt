#import "template.typ": *

#current-chapter.update("Appendix G: Model Answers")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix G: Model Answers]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Model Answers]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Six structured questions, answered in the length the paper expects, with the marks marked
    where they are earned. The UTME is multiple choice; the same content is examined in school
    tests and in the post-UTME, which is why the volume keeps the written form.
  ]
]

#v(6pt)

== G.1 How a Written Answer Is Marked

#table(
  columns: (1.1fr, 2.5fr, 1.0fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it looks like],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Marks],
  ),
  [Define], [one sentence with the genus and the difference], [1],
  [Name], [the correct term, spelled correctly], [1],
  [Explain], [a "because" clause that names the process], [2],
  [Give examples], [a named place, not "some countries"], [1 each],
  [Compare], [the criterion, then both sides of it], [2],
)

== G.2 Answer One — The Three Rainfall Types

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[QUESTION]
  #v(2pt)
  #text(size: 9.7pt)[Explain, with the aid of diagrams, the three types of rainfall.]
]

#v(3pt)

#text(size: 10pt)[
  *Relief rainfall* occurs when moist air is forced to rise over high ground. As the air rises
  it expands and cools to its dew point, condenses on nuclei and falls as rain on the windward
  slope. Descending on the leeward side, the air warms and dries, producing a rain shadow. It is
  common on the windward slopes of the Cameroons and the Jos Plateau.
]

#text(size: 10pt)[
  *Convectional rainfall* occurs when the ground is strongly heated, usually in the afternoon.
  The air in contact with the surface expands, rises, cools and condenses into cumulonimbus
  cloud, producing a short heavy storm often with thunder. It is the typical rain of the
  equatorial belt and of the Nigerian wet season.
]

#text(size: 10pt)[
  *Frontal rainfall* occurs where a warm air mass meets a cold one. The warm air, being lighter,
  rises over the wedge of cold air, cools and condenses, producing steady rain over a wide area.
  It is characteristic of temperate latitudes rather than of Nigeria. In all three cases the
  mechanism is the same — rising air cools to its dew point — and only the trigger differs.
]

== G.3 Answer Two — Why the North Has One Rainy Season and the South Has Two

#text(size: 10pt)[
  The rainfall of Nigeria is controlled by the *migration of the Inter-Tropical Convergence
  Zone*. In January the ITCZ lies south of the country, so the north-east trade winds blow
  across the whole country as the dry, dusty harmattan. As the sun moves north, the ITCZ follows
  it; by March it has reached the coast, bringing the south-west monsoon and rain to the south.
  By August it lies over the north, so the north receives its rains while the south, now behind
  the zone, has a short dry spell — the "August break". As the zone retreats southwards, the
  south receives a second rainy season in September and October. The north, farther from the
  coast and closer to the Sahara, receives a single shorter season; the south, closer to the
  ocean and crossed twice by the zone, receives two.
]

== G.4 Answer Three — The Formation of a Waterfall and Its Retreat

#text(size: 10pt)[
  A waterfall forms where a river crosses a band of resistant rock lying over softer rock. The
  soft rock is eroded more quickly, undercutting the hard band, so the river falls over a
  vertical face. The plunge pool at the foot is deepened by hydraulic action and abrasion, and
  the overhanging hard rock eventually collapses. The fall therefore moves upstream, leaving a
  gorge below it. The same sequence explains why waterfalls are found in the upper course,
  where the gradient is steep and the rock is exposed.
]

== G.5 Answer Four — Why Soils Differ Between the Rainforest and the Savanna

#text(size: 10pt)[
  Both soils form from the same basement rocks in many parts of Nigeria, so the difference is
  climatic. In the rainforest, heavy rainfall leaches soluble bases and silica downwards, leaving
  iron and aluminium oxides; the result is a red, acidic laterite that is poor in nutrients once
  the forest is cleared. In the savanna, lower rainfall and a marked dry season reduce leaching;
  organic matter accumulates during the wet season and decomposes more slowly in the dry, so the
  soil retains more humus and is generally more fertile. Relief matters too: the deeper, better
  drained soils of the savanna plains are more easily farmed than the leached plateau soils of
  the forest zone.
]

== G.6 Answer Five — The Three Ways a River Erodes

#text(size: 10pt)[
  A river wears its bed in three ways, and each leaves a different landform. *Hydraulic
  action* is the sheer force of moving water, which prises loose material from the bed and
  banks and scoops out potholes; where it acts on a band of soft rock it helps cut a gorge.
  *Abrasion* is the sandpapering of the bed by the load the river carries: pebbles grind the
  rock smooth and deepen the channel, and in the upper course they hollow out plunge pools
  beneath a waterfall. *Solution* is chemical: slightly acidic water dissolves limestone and
  chalk, widening joints into caves and leaving the swallow holes and dry valleys of a karst
  country. The load itself also wears down by *attrition*, which is why pebbles are rounded by
  the time they reach the sea. The examiner wants the process, the mechanism and the landform
  named together, and a Nigerian example — the Ogun or the Niger — earns the last mark.
]

== G.7 Answer Six — Reading a Map Under Time Pressure

#text(size: 10pt)[
  Begin with the scale: convert it once into kilometres per centimetre and write it in the
  margin. Then read the key, identify north and the grid, and note the highest and lowest
  points. For a distance, measure with a ruler or a string and multiply; for a bearing, place
  the protractor on the north line and read clockwise; for a gradient, divide the vertical
  interval by the horizontal distance after converting both to metres. For a settlement
  question, describe the *site* (the ground it stands on) before the *situation* (its relation
  to routes and neighbours). The routine is what saves time; the arithmetic is what earns the
  marks.
]

#v(4pt)

#concept-box("One paragraph, six answers")[
  Every model above has the same skeleton: a definition sentence, a process sentence with
  "because", an example with a place name, and a consequence. Learn the skeleton and the
  content can change without the shape changing — which is what the examiner is rewarding.
]
