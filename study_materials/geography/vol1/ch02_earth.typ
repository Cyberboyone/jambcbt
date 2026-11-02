#import "template.typ": *

#current-chapter.update("Chapter 2: The Earth in Space")

#pagebreak()

#chapter-opener(
  2,
  "The Earth in Space",
  subtitle: "Shape, Rotation, Revolution, and the Grid of Latitude and Longitude That Turns Position into Time",
  syllabus-ref: "Part I • The Earth as a Planet",
  utme-weight: "5 Qs a year",
  running: "The Earth in Space",
)

#focus-radar(
  objectives: (
    "Describe the shape and size of the earth, and give the evidence for each.",
    "Explain the consequences of rotation and of revolution.",
    "Use latitude and longitude to locate places and to calculate distance.",
    "Calculate local time from longitude, and explain the date line.",
    "Relate the tilt of the axis to the seasons and the overhead sun.",
  ),
  hotspots: (
    "“The shape of the earth is best described as …” — an oblate spheroid, flattened at the poles and bulging at the equator. The trap offers *a perfect sphere*, which is the approximation used in diagrams, not the examinable answer.\n",
    "“The line of longitude 0° passes through …” — Greenwich, and longitude is measured east and west of it to 180°. The trap offers the equator, which is latitude 0°.\n",
    "“If it is 12 noon at Greenwich, the time at 30°E is …” — 2 p.m., because 30° ÷ 15 = 2 hours, and east is ahead. The trap subtracts because the candidate remembers “west is less” without applying it.\n",
    "“On 21 June the sun is overhead at the …” — Tropic of Cancer (23½°N), which is the northern summer solstice. The trap offers the equator, where the sun is overhead only at the equinoxes.\n",
  ),
  trap-summary: "Three slips. (1) Mixing latitude and longitude when the question asks for position: latitude is written first, and it is the one that decides climate. (2) Adding time when the place is west of the reference meridian — west is behind, so the time is earlier. (3) Saying the earth is tilted 23½° from the vertical, when the axis is tilted 23½° from the perpendicular to the plane of orbit — the same fact, and the examiner expects the number.",
)

// ============================================================================
== 2.1 The Shape and Size of the Earth

The earth is not a sphere. It rotates, and rotation throws material outward at the equator,
so the equatorial diameter is about 12 756 km while the polar diameter is about 12 714 km — a
difference of some 42 km. The correct description is an *oblate spheroid*: a sphere flattened
at the poles and slightly bulging at the equator.

#v(3pt)

#table(
  columns: (1.5fr, 1.05fr, 2.15fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Measurement],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it matters in a question],
  ),
  [Equatorial diameter], [12 756 km], [the bulge that makes the shape an oblate spheroid],
  [Polar diameter], [12 714 km], [the flattening at the poles — 42 km less than the equator],
  [Equatorial circumference], [40 075 km], [the distance round the widest part, used in rotation questions],
  [Surface area], [about 510 million km²], [roughly 71 % water, 29 % land],
  [Mean distance from the sun], [about 150 million km], [the basis of the year and of insolation],
)

#v(4pt)

#rule-box("The evidence, in the order the examiner lists it")[
  *One*: the gradual disappearance of a ship hull-first over the horizon, and the reappearance
  of a distant light at sea before its base. *Two*: the circular shadow of the earth on the moon
  during a lunar eclipse. *Three*: photographs from space. *Four*: the way the pole star sinks
  as you travel south, which would not happen on a flat surface. *Five*: circumnavigation — a
  journey that keeps going in one direction and returns to its start.
]

#trap-box("Sphere, spheroid, geoid")[
  A *sphere* is the ideal shape used for simple calculations. An *oblate spheroid* is the
  measured shape, flattened at the poles. A *geoid* is the true equipotential surface, bumpy
  with the distribution of mass. The UTME answer to “the shape of the earth” is
  *oblate spheroid*; the word *sphere* is the trap, and *geoid* is the precise term that the
  paper rarely asks for.
]

== 2.2 Rotation and Its Consequences

The earth spins on its axis from west to east, completing one turn in about 24 hours. The axis
is an imaginary line through the poles, and it is tilted; the tilt does not change direction as
the earth orbits, which is why the hemispheres take turns facing the sun.

#diagram-fig("diagrams/geo1_ch02_earth.svg",
  "Figure 2.1 The examinable globe: the five named parallels, the axis, and the two motions with their consequences.", width: 98%)

#v(2pt)

#table(
  columns: (1.15fr, 2.45fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Consequence],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it means],
  ),
  [Day and night], [the half facing the sun is lit; the boundary is the circle of illumination],
  [Apparent movement of the sun], [the sun appears to rise in the east and set in the west because the earth turns beneath it],
  [Difference in time], [places east of a meridian see the sun first; 15° of longitude equals one hour],
  [Deflection of winds and currents], [the Coriolis effect turns them to the right in the northern hemisphere and to the left in the southern],
  [The tides], [the moon's pull dominates, but rotation carries a place through the two tidal bulges in a day],
)

#v(3pt)

The deflection deserves a sentence of its own because it is the mechanism behind the trade winds
and the gyres. Air moving from high to low pressure does not travel in a straight line: on a
rotating earth its path is bent, to the right in the northern hemisphere and to the left in the
southern. The bend is zero at the equator and greatest at the poles. That is why the winds that
should blow due south from the subtropical high arrive as the north-east trades.

== 2.3 Revolution, the Tilt and the Seasons

While it spins, the earth travels round the sun once in about 365¼ days. The axis stays tilted
at 23½° to the perpendicular, pointing always in the same direction, so for half the year the
northern hemisphere leans towards the sun and for half it leans away.

#table(
  columns: (0.95fr, 1.15fr, 1.4fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Event],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Sun overhead at],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What follows],
  ),
  [21 March], [vernal equinox], [the equator], [equal day and night everywhere],
  [21 June], [summer solstice (north)], [Tropic of Cancer, 23½°N], [longest day in the north, midnight sun inside the Arctic Circle],
  [23 September], [autumnal equinox], [the equator], [equal day and night again],
  [22 December], [winter solstice (north)], [Tropic of Capricorn, 23½°S], [shortest day in the north, midnight sun inside the Antarctic Circle],
)

#v(3pt)

Two ideas make the table unnecessary to memorise. First, the sun is overhead only between the
tropics, because the tilt is 23½° and the sun's apparent path swings through twice that angle
in a year. Second, the hemisphere leaning towards the sun has its summer: longer days, a higher
sun and more intense insolation. The seasons are therefore not caused by the earth being closer
to the sun — the earth is actually nearest in early January — but by the *angle* at which the
sun's rays strike the surface.

#formula-box("Day length, in one line")[
  At the equator, day and night are equal all year. As latitude increases, the summer day
  lengthens and the winter day shortens, until inside the polar circles the sun does not set
  in summer or rise in winter. The difference between the longest and shortest day grows with
  latitude — which is why the tropics have almost no seasonal change in day length.
]

== 2.4 Latitude and Longitude: the Grid

Position on the earth is given by two angles. *Latitude* is the angular distance north or south
of the equator, measured from 0° at the equator to 90° at each pole. *Longitude* is the angular
distance east or west of the prime meridian through Greenwich, measured from 0° to 180° in each
direction.

#v(3pt)

#table(
  columns: (1.0fr, 1.55fr, 2.45fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Latitude],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Longitude],
  ),
  [Reference line], [the equator, 0°], [the prime meridian, 0°, through Greenwich],
  [Range], [0° to 90° N and S], [0° to 180° E and W],
  [Lines are called], [parallels — they never meet], [meridians — they meet at the poles],
  [Spacing], [roughly equal, about 111 km per degree], [widest at the equator, zero at the poles],
  [What it controls], [climate, day length, the seasons], [time, and therefore the date],
)

#v(3pt)

Because a degree of latitude is about 111 km everywhere, distance along a meridian is a
multiplication: ten degrees is about 1 110 km. Distance along a parallel is not, because the
meridians converge: at the equator a degree of longitude is about 111 km, at 60° it is about
55 km, and at the poles it is nothing. A question that asks for the distance between two places
on the *same parallel* needs the cosine of the latitude; a question on the *same meridian* does
not.

#shortcut-box("The two conversions worth memorising")[
  *1° of latitude ≈ 111 km.* *15° of longitude = 1 hour of time*, so 1° = 4 minutes. Almost
  every calculation in this chapter is one of those two facts, applied in the right direction.
]

== 2.5 Time, Longitude and the Date Line

The earth turns 360° in 24 hours, so it turns 15° in one hour and 1° in four minutes. Places
east of a meridian are ahead of it; places west are behind. The world is divided into standard
time zones, each about 15° wide, and each zone keeps the time of its central meridian.

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[THE FOUR-STEP TIME CALCULATION]
  #v(4pt)
  #text(size: 9.8pt)[
    *1.* Find the difference in longitude between the two places, adding the figures if one is
    east and one west, subtracting if both are on the same side. \
    *2.* Divide by 15 to get hours (or multiply the degrees by 4 to get minutes). \
    *3.* Decide the direction: going east, add; going west, subtract. \
    *4.* If the answer passes 24 hours or falls below zero, change the day.
  ]
]

#v(3pt)

Nigeria keeps West Africa Time, GMT + 1, because the country lies between about 3°E and 15°E
and the zone is centred on 15°E. Lagos, at about 3°E, is therefore not exactly on the zone's
central meridian — its local solar time is about 48 minutes behind the clock — but the country
keeps one standard time for convenience. That gap between *local solar time* and *standard
time* is itself an examinable idea.

#concept-box("The International Date Line")[
  The 180° meridian is where the date changes. Crossing it westward, a traveller adds a day;
  crossing eastward, a traveller subtracts one. The line is drawn in a zigzag so that it does
  not cut through a country or a group of islands — which is why it is not a straight meridian,
  and why a question can ask why the line is not straight.
]

== 2.6 Four Worked Questions

#worked-example(
  1,
  "Time from longitude",
  [If it is 12.00 noon at Greenwich, what is the local time at a town on longitude 30°E?

    A. 10.00 a.m. \\
    B. 2.00 p.m. \\
    C. 12.30 p.m. \\
    D. 6.00 p.m.],
  [
    *Step 1 — convert longitude to time.* 30° ÷ 15° per hour = 2 hours.

    *Step 2 — decide the direction.* The town is east of Greenwich, and the sun rises in the east, so the town is ahead.

    *Step 3 — add.* 12.00 noon + 2 hours = 2.00 p.m.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Time across the date line",
  [It is 9.00 a.m. on Monday at a town on 45°W. What is the time and day at a town on 75°E?

    A. 1.00 p.m. Monday \\
    B. 5.00 a.m. Monday \\
    C. 5.00 p.m. Monday \\
    D. 1.00 p.m. Tuesday],
  [
    *Step 1 — total the longitude difference.* From 45°W to 0° is 45°; from 0° to 75°E is 75°; the difference is 120°.

    *Step 2 — convert.* 120 ÷ 15 = 8 hours.

    *Step 3 — apply direction.* The second town is east, so add: 9.00 a.m. + 8 hours = 5.00 p.m., same day.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Distance along a meridian",
  [Two towns lie on the same meridian, one at 4°N and the other at 12°N. The distance between them is approximately

    A. 888 km \\
    B. 1 110 km \\
    C. 1 332 km \\
    D. 444 km],
  [
    *Step 1 — find the angular difference.* 12° − 4° = 8°.

    *Step 2 — use the meridian conversion.* One degree of latitude is about 111 km, so 8° × 111 = 888 km.

    *Step 3 — check the units.* The towns are on the same meridian, so no cosine correction is needed; that correction applies only along a parallel.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The season question, reasoned",
  [On 22 December, which of the following is true?

    A. The sun is overhead at the Tropic of Cancer. \\
    B. The northern hemisphere has its longest day. \\
    C. The southern hemisphere has its longest day. \\
    D. Day and night are equal everywhere.],
  [
    *Step 1 — anchor the date.* 22 December is the December solstice, when the sun is overhead at the Tropic of Capricorn, 23½°S.

    *Step 2 — work the hemispheres.* The southern hemisphere is leaning towards the sun, so it has summer and its longest day; the northern hemisphere has its shortest.

    *Step 3 — eliminate.* The sun is not over Cancer (that is June), the north's longest day is in June, and equal day and night happens at the equinoxes, not the solstices.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The shape of the earth is best described as], [a perfect sphere], [an oblate spheroid], [a circle], [a geoid])

#mcq(2, [The line of 0° longitude passes through], [the equator], [Greenwich], [the Tropic of Cancer], [the North Pole])

#mcq(3, [One degree of latitude is approximately], [15 km], [111 km], [1 110 km], [40 km])

#mcq(4, [The seasons are caused mainly by], [the changing distance between the earth and the sun], [the tilt of the earth's axis and its revolution], [the rotation of the earth on its axis], [the movement of the moon])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The equatorial diameter exceeds the polar diameter, so the shape is an oblate spheroid. A sphere is the approximation used in diagrams.]),
  ("B", [Longitude is measured from Greenwich. The equator is the 0° line of latitude — the commonest confusion in this chapter.]),
  ("B", [A degree of latitude is about 111 km; a degree of longitude is also about 111 km at the equator but shrinks towards the poles.]),
  ("B", [The axis is tilted 23½° and keeps its direction as the earth orbits, so each hemisphere leans towards the sun in turn. Distance from the sun is smallest in January, in the northern winter.]),
))

#diagram-fig("diagrams/recap_geo1_ch02.svg",
  "Chapter 2 recap card: shape and grid, the two motions, and the time sum.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The earth is an oblate spheroid, about 12 756 km across the equator and 42 km narrower pole
    to pole, and its size is known from eclipse shadows, the behaviour of ships on the horizon
    and photographs from space. It rotates west to east in 24 hours, which gives day and night,
    the apparent motion of the sun, the time difference of 15° per hour and the deflection of
    winds and currents. It revolves round the sun in 365¼ days with its axis tilted 23½°, which
    gives the seasons, the changing length of day and the overhead sun between the tropics.
    Latitude and longitude fix position; latitude decides climate and longitude decides time.
    Every calculation in the chapter is either 111 km per degree of latitude or four minutes per
    degree of longitude, applied in the correct direction.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [State the equatorial and polar diameters and explain the difference.],
  [List four consequences of rotation and two of revolution.],
  [Calculate local time for a place east or west of a given meridian.],
  [Explain why a degree of longitude shrinks towards the poles but a degree of latitude does not.],
  [Name the four dates that mark the solstices and equinoxes, and the latitude of the overhead sun on each.],
))

#concept-box("Carry this into Chapter 3")[
  Latitude and longitude describe the surface; the next chapter goes underneath it. The same
  planet that spins and orbits is also a body of rock with a hot interior, a thin broken crust
  and a set of plates that drift — and the drifting is what builds the mountains, opens the
  oceans and produces the earthquakes and volcanoes that the paper asks you to place on a map.
]
