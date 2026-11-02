#import "template.typ": *

#current-chapter.update("Appendix E: The Map-Work File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix E: The Map-Work File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Map-Work File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Every operation the paper asks, in the order a candidate should perform it, with the
    arithmetic written out rather than described.
  ]
]

#v(6pt)

== E.1 The Five Operations and Their Formulae

#table(
  columns: (1.15fr, 1.6fr, 2.2fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Operation],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Formula / method],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Worked line],
  ),
  [Distance], [measure × scale], [6 cm × 0.5 km = 3 km],
  [Area], [count squares × area of one square], [8 squares × 1 km² = 8 km²],
  [Bearing], [protractor on the north line, clockwise], [060°],
  [Gradient], [vertical interval ÷ horizontal distance], [100 m ÷ 2 000 m = 1 in 20],
  [Sector angle], [(value ÷ total) × 360°], [(120 ÷ 480) × 360 = 90°],
)

== E.2 The Symbols, in Colour Order

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 11pt)[
  #table(
    columns: (0.8fr, 2.9fr),
    inset: (x: 4pt, y: 3pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Blue*], [water: rivers, lakes, marshes, wells, springs],
    [*Green*], [vegetation: forest, orchard, plantation, scrub],
    [*Brown*], [relief: contours, spot heights, trig stations],
    [*Black*], [buildings, boundaries, roads, railways, names],
    [*Red*], [main roads and routes, important boundaries],
    [*Purple*], [photogrammetric detail, some survey marks],
  )
]

#v(3pt)

On Nigerian topographic sheets the conventional signs also carry the *settlement* vocabulary:
a cluster of black rectangles is a town, a single rectangle a building, a double line a main
road, a single line with cross-ties a railway. The paper's map questions are usually asked of
these sheets, so the colour code is not decoration — it is the key to half the marks.

== E.3 The Contour Vocabulary

#table(
  columns: (1.3fr, 2.4fr, 1.45fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it is drawn],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means],
  ),
  [Hill], [closed rings, heights rising inward], [a summit],
  [Depression], [closed rings with hachures inside], [a hollow or crater],
  [Valley], [V pointing upstream], [a stream runs along the V],
  [Spur], [U or V pointing away from the hill], [a ridge between two valleys],
  [Escarpment], [contours crowded in a line], [a steep face],
  [Plateau], [wide spacing at a constant height], [flat high ground],
  [Col or saddle], [two hills joined by a low neck], [a pass between summits],
)

== E.4 The Five-Minute Map Routine

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: jamb-green)[BEFORE YOU ANSWER A SINGLE MAP QUESTION]
  #v(4pt)
  #text(size: 9.9pt)[
    *1.* Read the *title* and the *key*: what area is this, and what do the colours mean? \
    *2.* Find the *scale* and convert it once into kilometres per centimetre, in the margin. \
    *3.* Find *north* and the *grid*: is the grid in metres or kilometres? \
    *4.* Find the *highest* and *lowest* points and the *contour interval*. \
    *5.* Find the *settlements*, the *roads* and the *rivers*, and say aloud what each is doing
    there — a route centre, a bridging point, a market.
  ]
]

#v(4pt)

#trap-box("The five ways candidates lose map marks")[
  *One*: forgetting the unit conversion, so 3 km becomes 300 km. *Two*: measuring a curved
  road with a straight ruler. *Three*: reading northings before eastings. *Four*: giving a
  bearing of 45° instead of 045°, or measuring from the wrong north line. *Five*: drawing a
  cross-section with the vertical scale unrelated to the horizontal, which makes every hill
  look like a cliff. Each is a technique error, and each is avoidable with a routine.
]

#v(3pt)

#rule-box("Reading a cross-section back to a map")[
  A profile that rises steeply at one end and gently at the other is a hill with a steep face
  and a long dip slope. A profile that is flat, then rises, then flat again is a plateau edge.
  A profile with two summits and a saddle between them is a pair of hills joined by a col. The
  examiner shows the profile and asks which line on the map produced it — read the heights and
  the spacing, not the shape alone.
]
