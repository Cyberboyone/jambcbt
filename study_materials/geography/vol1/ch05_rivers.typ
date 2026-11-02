#import "template.typ": *

#current-chapter.update("Chapter 5: Rivers and Drainage")

#pagebreak()

#chapter-opener(
  5,
  "Rivers and Drainage",
  subtitle: "The Water Cycle, the Work a River Does, and the Landforms It Leaves Behind",
  syllabus-ref: "Part IV • The Hydrosphere",
  utme-weight: "6 Qs a year",
  running: "Rivers and Drainage",
)

#focus-radar(
  objectives: (
    "Describe the water cycle and name its stores and flows.",
    "Define a drainage basin and its divides.",
    "Name the processes of erosion, transport and deposition.",
    "Relate each landform to the course and process that produce it.",
    "Recognise the main drainage patterns and the types of lake and aquifer.",
  ),
  hotspots: (
    "“The boundary between two drainage basins is the …” — watershed (or divide), the high ground from which water flows into one basin or the other. The trap offers *confluence*, which is where two rivers meet.\n",
    "“Which of these is NOT a process of river erosion?” — deposition. The four erosive processes are hydraulic action, abrasion, attrition and solution; a stem that lists three of them and one transport or deposition term is testing the list.\n",
    "“An ox-bow lake is formed by …” — the cut-off of a meander neck, leaving a curved lake on the flood plain. The trap offers *a tributary joining the main river*, which builds a confluence, not a lake.\n",
    "“A delta forms where …” — a river enters a standing body of water and deposits its load faster than the sea or lake can remove it. The trap offers *the river erodes its bed at the mouth*, which would produce an estuary instead.\n",
  ),
  trap-summary: "Three slips. (1) Saying rivers erode most in their lower course because they carry most water — erosion is greatest where the gradient is steepest, in the upper course, while deposition dominates the lower. (2) Confusing a delta with an estuary: a delta is depositional and builds outwards, an estuary is drowned and scoured. (3) Using “watershed” for the whole basin — the watershed is the boundary line, not the area inside it.",
)

// ============================================================================
== 5.1 The Water Cycle

Water is neither made nor destroyed on the earth; it is moved. The water cycle is the
circulation of that fixed stock between the ocean, the atmosphere, the land and living things.

#table(
  columns: (1.25fr, 2.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it names],
  ),
  [Evaporation], [water leaving the sea, lakes and wet ground as vapour],
  [Transpiration], [water vapour leaving plants through their leaves],
  [Evapotranspiration], [the two together, which is how a forest returns rain to the air],
  [Condensation], [vapour turning back to droplets on nuclei, forming cloud],
  [Precipitation], [rain, hail, sleet or snow falling to the ground],
  [Interception], [rain caught by leaves and roofs before it reaches the soil],
  [Infiltration], [water entering the soil surface],
  [Percolation], [water moving down through the soil into the rock],
  [Throughflow], [water moving sideways through the soil],
  [Surface runoff], [water flowing over the surface into streams — the fastest route to a river],
  [Groundwater flow], [the slow movement of water through rock towards the sea],
)

#v(3pt)

The cycle matters to the exam because it explains *lag*. Rain does not arrive in the river the
moment it falls: some is intercepted, some infiltrates, some is stored in the soil and released
slowly. A catchment with deep soil and forest cover delivers its water to the river slowly and
steadily; a catchment that has been cleared and paved delivers it in a flash. That is the
physical reason for the floods that follow deforestation and urbanisation.

#rule-box("The balance that governs a river")[
  Precipitation = evaporation + transpiration + runoff + storage change. When rainfall exceeds
  the other terms, storage rises and the river fills; when it falls below, the river draws on
  groundwater and slowly dries. A river that keeps flowing in the dry season is being fed by
  storage — the groundwater, the soil and the lakes — not by rain.
]

== 5.2 The Drainage Basin

A *drainage basin* is the whole area drained by a river and its tributaries. Its boundary is
the *watershed*, the line of highest ground between one basin and the next. Within the basin,
water collects in small channels, joins into tributaries, and reaches the *trunk stream* at a
*confluence*; the stream begins at its *source* and ends at its *mouth*.

#v(3pt)

#table(
  columns: (1.1fr, 2.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Definition],
  ),
  [Source], [where the river begins — a spring, a lake or a marsh],
  [Mouth], [where it enters the sea, a lake or another river],
  [Tributary], [a smaller stream joining the main river],
  [Confluence], [the point where two rivers meet],
  [Watershed], [the divide between two basins — the boundary, not the area],
  [Catchment area], [the basin itself, measured in square kilometres],
  [Long profile], [the river's height plotted against distance from source to mouth],
  [Cross profile], [a slice across the valley, showing its shape],
)

#v(3pt)

The *long profile* of a river is concave: steep at the source, flattening towards the mouth.
That curve is the whole explanation of the three courses. Where the gradient is steep, the
river has energy to cut downwards; where it is gentle, it cuts sideways and deposits. The
change is gradual, but the landforms it produces are distinct enough to name.

== 5.3 The Work of a River

A river does three kinds of work, and each has its own vocabulary.

#table(
  columns: (0.9fr, 1.4fr, 2.3fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Work],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it means on the ground],
  ),
  [Erosion], [hydraulic action], [the force of water prising rock from the bed and banks],
  [], [abrasion (corrasion)], [the load grinding the bed like sandpaper],
  [], [attrition], [stones wearing each other down to rounded pebbles],
  [], [solution (corrosion)], [weak acids dissolving limestone and chalk],
  [Transport], [traction], [large stones rolled along the bed],
  [], [saltation], [pebbles bounced along in short hops],
  [], [suspension], [fine silt carried in the water, making it brown],
  [], [solution], [dissolved minerals carried invisibly],
  [Deposition], [when energy falls], [the load is dropped, heaviest first — which is why gravel lies upstream and clay downstream],
)

#v(3pt)

The controlling variable is *energy*, which depends on velocity and discharge. Velocity rises
with gradient and with the smoothness of the channel; discharge rises with rainfall and with
the size of the basin. When either falls — at a flood plain, at a lake, at the sea — the river
must drop load, and the drop is the beginning of a landform.

#formula-box("Discharge, in one line")[
  Discharge (Q) = cross-sectional area (A) × velocity (v). A river that doubles its area and
  halves its speed carries the same water. The paper rarely asks you to calculate Q, but it
  expects you to know that a wide, slow lower course can carry more than a narrow, fast upper
  one.
]

== 5.4 The Three Courses and Their Landforms

#diagram-fig("diagrams/geo1_ch05_river.svg",
  "Figure 5.1 The long profile and the landforms of the three courses.", width: 98%)

#table(
  columns: (0.9fr, 1.2fr, 1.35fr, 1.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Course],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Dominant work],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Landforms],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How each is made],
  ),
  [Upper], [vertical erosion], [V-shaped valley, gorge, waterfall, rapids, interlocking spurs], [the river cuts down, and the valley sides are left steep],
  [Middle], [lateral erosion], [meander, ox-bow lake, bluff, slip-off slope], [the river swings sideways, cutting the outer bank and depositing on the inner],
  [Lower], [deposition], [flood plain, levee, delta, estuary], [the river spreads its load over flat ground when it floods],
)

#v(3pt)

A waterfall is worth a paragraph because it is the classic examinable landform with two
possible causes. It forms where a band of hard rock overlies softer rock: the soft rock is
undercut, the hard rock overhangs, and the river falls over the edge. It also forms where a
river crosses a fault or a steepening of the long profile. In both cases the fall retreats
upstream over time as the plunge pool undercuts the face.

#concept-box("Meander to ox-bow in four steps")[
  *One*: the river swings, because a slight bend sets up a spiral flow that erodes the outer
  bank and deposits on the inner. *Two*: the bend grows, and the outer bank becomes a *bluff*
  while the inner becomes a *slip-off slope*. *Three*: a flood cuts a shortcut across the neck
  of the loop. *Four*: the old loop is sealed off and becomes an *ox-bow lake*, which slowly
  silts into a marshy hollow. The sequence is a favourite because each step has its own word.
]

== 5.5 Drainage Patterns, Lakes and Groundwater

The pattern a river system makes on a map records the rock beneath it and the slope it crosses.

#table(
  columns: (1.0fr, 1.25fr, 2.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Pattern],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rock and terrain],
  ),
  [Dendritic], [like a tree, branching in all directions], [uniform rock of the same resistance, as over the crystalline basement],
  [Trellised], [main streams parallel, tributaries meeting at right angles], [alternating bands of hard and soft rock, folded],
  [Radial], [streams flowing outward from a central high point], [a dome or a volcano],
  [Centripetal], [streams flowing inward to a central basin], [a depression or a crater],
  [Deranged], [random, disconnected channels], [glaciated or swampy lowland],
)

#v(3pt)

Lakes are classified by how their basins formed: *tectonic* basins where the crust faulted
(Lake Tanganyika), *volcanic* craters and calderas (Lake Nyos), *glacial* hollows scoured by
ice (the Great Lakes), *ox-bow* lakes on flood plains, *solution* lakes in limestone, and
*man-made* reservoirs behind dams (Lake Kainji on the Niger). Lake Chad is a shallow
*endorheic* lake — it has no outlet to the sea, and loses water by evaporation.

#rule-box("Groundwater, in the vocabulary the paper uses")[
  Water that infiltrates moves down until it reaches an impermeable layer; above that layer
  the pores are saturated, and the top of the saturated zone is the *water table*. A rock that
  holds and transmits water is an *aquifer*; a *spring* is where the water table meets the
  surface; a *well* is a hole into the saturated zone. An *artesian* well needs a confined
  aquifer between two impermeable layers, with the recharge area higher than the well head, so
  that pressure lifts the water without pumping.
]

== 5.6 Four Worked Questions

#worked-example(
  1,
  "The boundary of a basin",
  [The line of highest ground separating two drainage basins is called

    A. a confluence \\
    B. a tributary \\
    C. a watershed \\
    D. a flood plain],
  [
    *Step 1 — read "separating".* The stem asks for a boundary, and the boundary between basins is a divide.

    *Step 2 — name it.* That divide is the watershed. Rain falling on one side reaches one river, on the other side another.

    *Step 3 — eliminate.* A confluence is a meeting point; a tributary is a stream; a flood plain is the flat land beside a river.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Which one is not erosion",
  [Which of the following is NOT a process of river erosion?

    A. hydraulic action \\
    B. deposition \\
    C. abrasion \\
    D. solution],
  [
    *Step 1 — recall the four.* Hydraulic action, abrasion, attrition and solution.

    *Step 2 — test the outsider.* Deposition is the dropping of load when energy falls; it is the opposite of erosion.

    *Step 3 — confirm.* The stem asks for what is *not* erosion, so the transport-and-deposition term is the answer.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The making of an ox-bow",
  [An ox-bow lake is formed as a result of

    A. the cutting off of a meander loop \\
    B. the damming of a river by lava \\
    C. the subsidence of a limestone cavern \\
    D. the joining of two tributaries],
  [
    *Step 1 — picture the feature.* An ox-bow is a curved lake lying beside a river on a flood plain.

    *Step 2 — recall the mechanism.* Erosion on the outside of a meander narrows the neck until a flood cuts through it, abandoning the loop.

    *Step 3 — eliminate.* A lava dam makes a barrier lake, a collapsed cavern makes a solution lake, and two tributaries make a confluence.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Delta or estuary",
  [A river builds a delta at its mouth when

    A. the sea erodes the coast faster than the river deposits \\
    B. the river's load is dissolved and carried away \\
    C. the river meets a strong tidal current \\
    D. deposition exceeds the removal of sediment by the sea],
  [
    *Step 1 — state what a delta is.* A delta is built by deposition, so it requires deposition to outpace removal.

    *Step 2 — test the rivals.* Strong tides and waves remove sediment and produce an estuary; a dissolved load leaves nothing to build with; coastal erosion cannot build a delta.

    *Step 3 — choose the balance.* The delta exists where the river wins the argument with the sea.

    *Answer: D.*
  ],
  tier: "JAMB CHALLENGE",
)

== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [The process by which water enters the soil is called], [runoff], [percolation], [infiltration], [transpiration])

#mcq(2, [The upper course of a river is dominated by], [deposition], [vertical erosion], [lateral erosion], [transport only])

#mcq(3, [A waterfall is most likely to form where], [a river enters the sea], [a river crosses a band of resistant rock], [a river flows over a flood plain], [two rivers meet])

#mcq(4, [Which drainage pattern develops on a dome-shaped upland?], [dendritic], [trellised], [centripetal], [radial])

#answer-key-grid(("C", "B", "B", "D"))

#answer-notes((
  ("C", [Infiltration is water entering the soil; percolation is its downward movement through the soil into rock. The pair is a standing trap.]),
  ("B", [Steep gradients give the river energy to cut down, producing V-shaped valleys and gorges. Lateral erosion dominates the middle course and deposition the lower.]),
  ("B", [A band of hard rock over soft rock produces a vertical fall as the soft rock is undercut. A river entering the sea deposits rather than falls.]),
  ("D", [Radial drainage flows outward from a central high point such as a dome or volcano. Centripetal drainage flows inward to a basin.]),
))

#diagram-fig("diagrams/recap_geo1_ch05.svg",
  "Chapter 5 recap card: the cycle, the work, the courses and the patterns.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Water circulates through ocean, atmosphere, land and life, and the cycle explains why a
    river responds to rain slowly or in a flash. A drainage basin collects that water inside a
    watershed; the long profile of the river, steep at the source and flat at the mouth, decides
    what the river can do. In the upper course it cuts down and makes V-shaped valleys,
    waterfalls and gorges; in the middle it swings sideways and makes meanders and ox-bow lakes;
    in the lower course it deposits and makes flood plains, levees and deltas. The pattern of
    the whole system records the rock beneath it, and lakes and aquifers store the water that
    keeps a river flowing when the rain has stopped.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Draw the water cycle and label six flows.],
  [Distinguish watershed, catchment and confluence in one line each.],
  [Name the four erosion processes and the four transport processes.],
  [Explain how a waterfall retreats upstream.],
  [Name five types of lake by the origin of the basin.],
))

#concept-box("Carry this into Chapter 6")[
  Rivers are one agent of erosion; wind, ice and waves are the others, and each makes its own
  family of landforms. Chapter 6 puts the agents side by side, adds weathering and mass
  movement — the processes that prepare material for removal — and ends with the soil, the thin
  layer in which all of it becomes agriculture.
]
