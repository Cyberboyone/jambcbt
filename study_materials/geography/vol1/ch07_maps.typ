#import "template.typ": *

#current-chapter.update("Chapter 7: Map Work and Statistics")

#pagebreak()

#chapter-opener(
  7,
  "Map Work and Statistics",
  subtitle: "Scale, Distance, Bearing, Grid References, Contours — and the Graphs That Turn Numbers into Evidence",
  syllabus-ref: "Part VI • Techniques",
  utme-weight: "7 Qs a year",
  running: "Map Work and Statistics",
)

#focus-radar(
  objectives: (
    "Convert between representative fraction, statement and linear scale.",
    "Measure distance and area on a map, including along a curved route.",
    "Give and convert three-figure bearings.",
    "Read four- and six-figure grid references and conventional signs.",
    "Interpret contours, draw a cross-section and calculate a gradient.",
    "Choose the right statistical diagram for a set of data.",
  ),
  hotspots: (
    "“On a map with a scale of 1 : 50 000, a distance of 4 cm represents …” — 2 km, because 4 × 0.5 km = 2 km. The trap offers 20 km, which comes from misplacing the decimal in the conversion.\n",
    "“A bearing is measured …” — clockwise from north, in three figures. The trap offers *anticlockwise from north* or *from the east*, and a bearing such as 45° written without its leading zero is marked wrong.\n",
    "“In a four-figure grid reference, the eastings are read …” — first, then the northings: “along the corridor and up the stairs”. The trap reverses them.\n",
    "“Contours that are close together indicate …” — a steep slope. The trap offers *a gentle slope*, which is contours far apart; the spacing is the whole information.\n",
  ),
  trap-summary: "Three slips. (1) Forgetting to convert centimetres to kilometres at the end, so the answer is 100 000 times too large. (2) Measuring a road with a straight ruler and losing the bends — use a string or a divider, and measure in short straight sections. (3) Adding 180° to a bearing and writing 400°: a back bearing above 360° must have 360 subtracted, not 180 added.",
)

// ============================================================================
== 7.1 Scale: Three Ways of Saying the Same Thing

Scale is the ratio between a distance on the map and the same distance on the ground. It is
written in three forms, and any one can be converted into the others.

#diagram-fig("diagrams/geo1_ch07_map.svg",
  "Figure 7.1 Scale, contours and the cross-section: the three conversions that carry most map marks.", width: 98%)

#table(
  columns: (1.1fr, 1.55fr, 2.05fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Form],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How to use it],
  ),
  [Representative fraction], [1 : 50 000], [multiply the map distance by the denominator, then convert to km],
  [Statement], [1 cm represents 0.5 km], [multiply the map distance by 0.5],
  [Linear], [a bar marked in kilometres], [measure the bar with the same ruler and compare],
)

#v(3pt)

The conversion is a single chain. A scale of 1 : 50 000 means that 1 cm on the map represents
50 000 cm on the ground; 50 000 cm is 500 m, and 500 m is 0.5 km. A distance of 6 cm is
therefore 6 × 0.5 = 3 km. The chain is worth writing out every time until it is automatic,
because most lost marks in map work are conversion errors rather than measurement errors.

#formula-box("The conversion chain")[
  1 : *n* means 1 cm = *n* cm on the ground. Divide by 100 for metres, and by 1 000 again for
  kilometres. For 1 : 50 000: 50 000 cm = 500 m = 0.5 km. For 1 : 25 000: 0.25 km. For
  1 : 100 000: 1 km.
]

#rule-box("Large scale, small scale")[
  A *large-scale* map has a small denominator — 1 : 25 000 is larger than 1 : 250 000 — and it
  shows a small area in great detail. A *small-scale* map shows a large area with little detail.
  The terminology is the reverse of the number, which is why the examiner asks it.
]

== 7.2 Distance and Area

Distance on a map is measured in three situations, and each has its own method. A *straight
line* is measured with a ruler against the scale bar. A *curved route*, such as a road or a
river, is measured with a piece of string laid along the line and then straightened against the
ruler, or with a divider walked along in short steps. A *distance along a grid line* is counted
in squares and multiplied by the square's size.

#v(3pt)

Area is measured in two ways. If the feature has a regular shape, measure its length and
breadth and multiply. If it is irregular, count the whole squares it covers, add half the
part-squares, and multiply by the area of one square — which for a 1 : 50 000 map with 2 cm
squares is 1 km × 1 km = 1 km².

#shortcut-box("The square that does the work")[
  On a 1 : 50 000 map, each 2 cm grid square is 1 km × 1 km = 1 km². Count the squares, and the
  multiplication is already done. On a 1 : 25 000 map the same square is 500 m × 500 m = 0.25 km².
]

== 7.3 Direction and Bearing

Direction is given either by compass points or by bearings. A *bearing* is the angle measured
*clockwise from north*, written in three figures: north is 000°, east 090°, south 180° and west
270°. To find the bearing of B from A, draw a north line through A, measure clockwise from it to
the line AB, and write the result with its leading zero.

#table(
  columns: (1.4fr, 0.95fr, 1.4fr, 0.95fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Compass point],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Bearing],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Compass point],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Bearing],
  ),
  [North], [000°], [South], [180°],
  [North-east], [045°], [South-west], [225°],
  [East], [090°], [West], [270°],
  [South-east], [135°], [North-west], [315°],
)

#v(3pt)

The *back bearing* is the bearing of A from B when the bearing of B from A is known. Add 180°
if the bearing is less than 180°, and subtract 180° if it is more. A bearing of 060° has a back
bearing of 240°; a bearing of 300° has a back bearing of 120°.

#trap-box("The three-figure rule")[
  An answer of 45° is not a bearing; 045° is. An answer of 360° is written 000°. And a compass
  bearing is not the same as an angle measured from the east or from the line of the page — the
  north line is the reference, always, even when north is not at the top of the diagram.
]

== 7.4 Grid References and Conventional Signs

Topographic maps are covered by a grid of vertical lines (*eastings*) and horizontal lines
(*northings*). A *four-figure reference* names a square: read the easting first, then the
northing — “along the corridor, then up the stairs”. A *six-figure reference* names a point
within the square: add a third digit to each figure by dividing the square into tenths mentally.

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[THE SIGNS THE PAPER EXPECTS YOU TO READ]
  #v(4pt)
  #table(
    columns: (1.2fr, 1.9fr, 1.2fr, 1.9fr),
    inset: (x: 3pt, y: 2.2pt),
    align: (left + horizon, left + horizon, left + horizon, left + horizon),
    stroke: none,
    [*Blue*], [water — rivers, lakes, wells, marshes], [*Green*], [vegetation — forest, orchard, scrub],
    [*Brown*], [relief — contours, spot heights], [*Black*], [buildings, roads, railways, names],
    [*Red*], [main roads and routes], [*Purple*], [photogrammetric or survey detail],
  )
]

#v(3pt)

Reading a map is reading a story in symbols. A settlement at a road junction with a river
crossing, a market square and a church is a route centre; the same settlement on a steep slope
with no through road is a defensive site. The paper often asks for the *site* of a settlement,
which means the ground it stands on — a spur, a flood plain, a gap in a ridge — not its
position on the page.

== 7.5 Relief: Contours, Cross-Sections and Gradient

A *contour* joins points of equal height above sea level. The *contour interval* is the height
difference between one contour and the next, and it is printed in the map's margin. Where
contours are close, the slope is steep; where they are far apart, it is gentle; where they cross
a valley, they form a V pointing upstream.

#table(
  columns: (1.15fr, 1.5fr, 1.95fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it appears],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it tells you],
  ),
  [Hill], [closed contours with heights increasing inward], [a summit inside the innermost ring],
  [Valley], [contours forming a V pointing upstream], [a line of drainage down the middle],
  [Spur], [contours forming a U or V pointing away from the hill], [a ridge of high ground between two valleys],
  [Escarpment], [a line of closely spaced contours], [a steep face between two levels],
  [Plateau], [widely spaced contours at the same height], [flat high ground],
  [Spot height], [a figure with a dot], [the exact height of that point],
  [Trig station], [a triangle with a height], [a surveyed summit, the most reliable height],
)

#v(3pt)

A *cross-section* is the profile of the land along a line drawn between two points. The method
is mechanical: lay the edge of a straight strip along the line, mark where each contour crosses
it, transfer the marks to a horizontal axis scaled to the map distance, and plot each mark at
its height on a vertical axis that uses the contour interval; join the points.

#formula-box("Gradient")[
  Gradient = vertical interval ÷ horizontal distance, expressed as a ratio (1 in 20) or a
  percentage (5 %). Convert both to the same unit first: a rise of 100 m over 2 km is
  100 ÷ 2 000 = 1 in 20.
]

#v(3pt)

*Intervisibility* is whether one point can be seen from another. Two points are intervisible if
no higher ground lies between them — which is why a cross-section answers the question: draw
the profile and see whether the straight line joining the two points is cut by the land.

== 7.6 Statistics: Choosing the Diagram

Statistical diagrams are examined as *choices*: a set of data and four diagrams, of which one
shows the pattern best.

#table(
  columns: (1.0fr, 1.45fr, 2.15fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Diagram],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Best for],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The trap],
  ),
  [Bar chart], [comparing totals between places or years], [bars must start at zero or the comparison distorts],
  [Line graph], [change over time], [it implies continuity; do not use it for categories],
  [Pie chart], [parts of a whole, as percentages], [each sector is 360° × the share, and labels must sum to 100 %],
  [Scatter graph], [the relationship between two variables], [correlation is not proof of cause],
  [Choropleth], [showing density by shading areas], [the shading classes must be stated in a key],
  [Flow line], [movement between places], [the width of the line must be proportional to the flow],
)

#v(3pt)

The measures that go with the diagrams are the three averages and the spread. The *mean* uses
every value and is distorted by extremes; the *median* is the middle value and ignores extremes;
the *mode* is the most frequent and is the only one that works for categories. The *range* is
the difference between the highest and lowest values, and it is the simplest measure of spread.

#shortcut-box("Sector angle, in one step")[
  Sector angle = (value ÷ total) × 360°. If a pie chart is already drawn and the angle is given,
  the value is (angle ÷ 360) × total. Two directions, one formula, and the paper uses both.
]

== 7.7 Four Worked Questions

#worked-example(
  1,
  "Scale conversion",
  [On a map with a scale of 1 : 50 000, a distance of 6 cm represents

    A. 300 m \\
    B. 3 km \\
    C. 30 km \\
    D. 300 km],
  [
    *Step 1 — write the meaning of the scale.* 1 cm represents 50 000 cm.

    *Step 2 — multiply by 6.* 6 × 50 000 = 300 000 cm.

    *Step 3 — convert.* 300 000 cm = 3 000 m = 3 km.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Gradient",
  [A slope rises 100 m over a horizontal distance of 2 km. Its gradient is

    A. 1 in 2 \\
    B. 1 in 20 \\
    C. 1 in 200 \\
    D. 1 in 2 000],
  [
    *Step 1 — convert to the same unit.* 2 km = 2 000 m.

    *Step 2 — divide the rise by the run.* 100 ÷ 2 000 = 1/20.

    *Step 3 — express as a ratio.* 1 in 20, which is also 5 %.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The back bearing",
  [The bearing of town B from town A is 060°. What is the bearing of A from B?

    A. 120° \\
    B. 240° \\
    C. 300° \\
    D. 420°],
  [
    *Step 1 — decide the rule.* The bearing is less than 180°, so add 180°.

    *Step 2 — add.* 60 + 180 = 240°.

    *Step 3 — check the range.* 240° lies between 0° and 360°, so no subtraction is needed. (420° would be the trap for a candidate who adds 360.)

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Sector angle",
  [In a school of 480 students, 120 study geography. On a pie chart, the sector for geography is

    A. 45° \\
    B. 60° \\
    C. 90° \\
    D. 120°],
  [
    *Step 1 — find the fraction.* 120 ÷ 480 = ¼.

    *Step 2 — convert to degrees.* ¼ × 360° = 90°.

    *Step 3 — check by the complement.* Three-quarters of the circle remains for the other subjects, which is 270°, so the geography sector is a right angle.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

== 7.8 Chapter 7 in the Exam Hall — a Two-Minute Set

#mcq(1, [A scale of 1 : 25 000 means that 1 cm on the map represents], [25 m], [250 m], [2.5 km], [25 km])

#mcq(2, [Contours that are very close together indicate], [a gentle slope], [a steep slope], [a valley floor], [a plateau])

#mcq(3, [A bearing of 135° corresponds to], [north-east], [south-east], [south-west], [north-west])

#mcq(4, [The diagram best suited to showing the percentage of a country's exports by product is a], [line graph], [pie chart], [scatter graph], [flow line])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [1 : 25 000 means 25 000 cm = 250 m = 0.25 km per centimetre. The option 2.5 km comes from losing a decimal place.]),
  ("B", [Closely spaced contours mean a rapid change of height over a short distance — a steep slope. Widely spaced contours are gentle.]),
  ("B", [090° is east and 180° is south, so 135° is exactly between them: south-east.]),
  ("B", [A pie chart shows parts of a whole as percentages. A line graph is for change over time and a scatter for the relationship between two variables.]),
))

#diagram-fig("diagrams/recap_geo1_ch07.svg",
  "Chapter 7 recap card: scale, position, relief and the sums.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A map is a set of conversions. Scale turns centimetres into kilometres, in three equivalent
    forms; a ruler or a string turns the picture into a distance; the north line and a
    protractor turn direction into a three-figure bearing; eastings and northings turn position
    into a grid reference; and contours turn height into a cross-section and a gradient. The
    statistics half of the chapter is the same idea in another medium: a table of numbers is
    turned into the diagram that shows its pattern best — bar for comparison, line for time,
    pie for parts of a whole, scatter for relationship, choropleth for density, flow for
    movement — with the three averages and the range as the numbers behind the picture.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [Convert 1 : 50 000 into a statement and a linear scale.],
  [Measure a curved road and an irregular lake, and state the method for each.],
  [Give the bearing of each of the eight compass points.],
  [Explain how a cross-section is drawn, step by step.],
  [Choose a diagram for four different data sets and say why.],
))

#concept-box("Where the volume goes next")[
  You now have the physical half of the syllabus: the earth in space, the crust and its rocks,
  the atmosphere and its rains, the rivers, the landforms and the map that measures them. The
  back half of this book turns all of it into practice — two full papers, a 105-question bank,
  the dates and figures file, the map-work file, definitions, model answers and the trap
  catalogue. Volume 2 takes the human half: the people, the settlements, the farms and factories,
  and the geography of Nigeria itself.
]
