#import "template.typ": *

#current-chapter.update("Chapter 6: Nigeria")

#pagebreak()

#chapter-opener(
  6,
  "Nigeria",
  subtitle: "Position, Relief, Drainage and Climate — and the Six Zones That Share Them",
  syllabus-ref: "Part IV • Regional Geography",
  utme-weight: "6 Qs a year",
  running: "Nigeria",
)

#focus-radar(
  objectives: (
    "State Nigeria's position, size, neighbours and coastline.",
    "Describe the relief regions and the drainage system.",
    "Explain the climate belts and the seasons, including the harmattan.",
    "Name the six geopolitical zones and their states, capitals and resources.",
    "Account for the distribution of population and the growth of towns.",
  ),
  hotspots: (
    "“Nigeria lies between latitudes …” — 4°N and 14°N, and longitudes 3°E and 15°E. The trap inverts them, or offers *0° and 10°N*.\n",
    "“The highest point in Nigeria is …” — Chappal Waddi, on the Mambilla Plateau, about 2 419 m. The trap offers *the Jos Plateau*, which is high but not the highest.\n",
    "“The dry season in Nigeria is caused by …” — the north-east trade winds from the Sahara, the harmattan. The trap offers *the south-west monsoon*, which brings the rain.\n",
    "“The largest zone by area is …” — the north-west, and the smallest is the south-east. The trap offers *the north-east* because it looks large on the map.\n",
  ),
  trap-summary: "Three slips. (1) Mixing latitude and longitude in the position statement. (2) Naming the Jos Plateau as the highest land — it is the tin plateau, not the summit. (3) Calling every northern state 'Sahel', when only the far north-east is true Sahel.",
)

// ============================================================================
== 6.1 Position and Size

Nigeria lies in West Africa, on the Gulf of Guinea, between latitudes 4°N and 14°N and
longitudes 3°E and 15°E. It covers 923 768 km², which makes it the fourteenth largest country
in Africa, and it has about 853 km of coastline.

#table(
  columns: (1.05fr, 2.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Fact],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The detail],
  ),
  [Latitude], [4°N to 14°N — the country lies wholly in the tropics],
  [Longitude], [3°E to 15°E — the same time zone throughout: WAT, GMT + 1],
  [Area], [923 768 km²],
  [Neighbours], [Benin to the west, Niger to the north, Chad to the north-east, Cameroon to the east],
  [Coast], [the Gulf of Guinea to the south, about 853 km, with the Niger Delta at its centre],
  [Highest point], [Chappal Waddi on the Mambilla Plateau, about 2 419 m],
  [Lowest point], [sea level, along the coast and the delta],
)

#v(4pt)

Position explains three exam answers. Because the country is wholly tropical, it has no cold
season and its agriculture is rain-fed. Because it faces the Atlantic, the south-west monsoon
brings rain from February to September. Because it sits next to the Sahara, the north-east
trades bring dust and dryness from November to February.

== 6.2 Relief and Drainage

Nigeria's relief is a staircase: a low coastal plain in the south, a central trough along the
Niger and Benue, highlands on the western and eastern edges, and plateaus in the north.

#table(
  columns: (1.05fr, 1.35fr, 1.6fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Region],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Height and character],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it carries],
  ),
  [Coastal plain], [under 150 m, swampy and sandy], [the lagoons, the delta, the ports],
  [Niger–Benue trough], [150–300 m, a broad lowland], [the confluence at Lokoja, the river ports, the coal at Enugu on its edge],
  [Western highlands], [300–1 000 m, granite and ridges], [Ibadan, Abeokuta, the cocoa belt],
  [Eastern highlands], [300–1 500 m, the Udi escarpment and the Cameroun border], [Enugu coal, the Mambilla and Jos uplands],
  [Northern plateaus], [300–1 200 m, broad and gently rolling], [Kano, Kaduna, the groundnut and cotton belt],
  [Chad basin], [about 250 m, flat and poorly drained], [Lake Chad, fishing, irrigation],
)

#v(4pt)

Two rivers dominate the drainage. The *Niger*, which rises in the Fouta Djallon in Guinea,
enters Nigeria in the north-west and runs south-east to Lokoja; the *Benue*, which rises in
Cameroon, runs west to meet it. Their confluence splits the country in two, and below it the
Niger builds its delta — the largest in Africa — before reaching the sea. The other rivers are
shorter and steeper: the Sokoto, the Kaduna, the Ogun, the Osun, the Cross and the Imo.

== 6.3 Climate and Vegetation

Nigeria has two seasons, not four. The *wet season* runs from about March to October in the
south and June to September in the far north, and it is brought by the moist south-west monsoon
from the Atlantic. The *dry season* runs from November to February and is dominated by the
harmattan, the dry dusty north-east trade wind from the Sahara.

#diagram-fig("diagrams/geo2_ch06_nigeria.svg",
  "Figure 6.1 The six geopolitical zones, their capitals and their resources.", width: 98%)

#table(
  columns: (0.95fr, 1.05fr, 1.1fr, 1.35fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Belt],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Rainfall],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Vegetation],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What is grown],
  ),
  [Mangrove], [over 3 000 mm], [swamp forest], [fish, timber; rice in the clearings],
  [Rain forest], [2 000–3 000 mm], [tall hardwood], [cocoa, oil palm, rubber, yam],
  [Derived savanna], [1 500–2 000 mm], [tall grass and trees], [cassava, maize, oil palm],
  [Guinea savanna], [1 000–1 500 mm], [tall grass, shea], [yam, maize, groundnut, cotton],
  [Sudan savanna], [600–1 000 mm], [short grass, acacia], [millet, sorghum, groundnut, cattle],
  [Sahel], [under 600 mm], [thorn scrub], [millet, gum arabic, cattle],
)

== 6.4 The Six Geopolitical Zones

The zones are administrative rather than physical, but the examiner uses them because they
organise the resource map.

#table(
  columns: (1.0fr, 1.5fr, 1.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Zone],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[States in the zone],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What the zone is known for],
  ),
  [North-west], [Sokoto, Kebbi, Zamfara, Katsina, Kano, Jigawa, Kaduna], [groundnut, cotton, hides, the Kano market],
  [North-east], [Borno, Yobe, Adamawa, Bauchi, Gombe, Taraba], [cattle, gum arabic, fish, the Chad basin],
  [North-central], [Niger, Kwara, Kogi, Benue, Plateau, Nasarawa, Abuja], [yam, tin, the confluence, the capital],
  [South-west], [Lagos, Ogun, Oyo, Osun, Ondo, Ekiti], [cocoa, ports, industry, the old Yoruba towns],
  [South-east], [Enugu, Anambra, Imo, Abia, Ebonyi], [coal, palm produce, trade, the Onitsha market],
  [South-south], [Edo, Delta, Bayelsa, Rivers, Cross River, Akwa Ibom], [oil and gas, timber, fish, the Delta],
)

== 6.5 Population and Towns

Nigeria's population is over 220 million, growing at about 2.4 per cent a year, and it is young:
nearly half the population is under 15. Density is highest in the south-west and the south-east,
round Kano in the north, and along the Niger; it is lowest in the Sahel margin and in the
middle-belt bush.

#table(
  columns: (1.15fr, 1.2fr, 1.6fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Town],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it grew],
  ),
  [Lagos], [port, industry, finance], [the break in the coast, the lagoon, the colonial capital],
  [Kano], [market, industry], [the southern terminus of the trans-Saharan route],
  [Ibadan], [administration, trade], [a defensible site and the cocoa hinterland],
  [Abuja], [capital], [deliberately built from 1976 to relieve Lagos],
  [Port Harcourt], [port, oil], [deep water and the rail line to the north],
  [Onitsha], [market], [the Niger crossing and the east–west trade],
)

== 6.6 Four Worked Questions

#worked-example(
  1,
  "Position, in the correct order",
  [Nigeria lies between

    A. latitudes 3° and 15°N and longitudes 4° and 14°E \
    B. latitudes 4° and 14°N and longitudes 3° and 15°E \
    C. latitudes 4° and 14°S and longitudes 3° and 15°W \
    D. latitudes 0° and 10°N and longitudes 0° and 10°E],
  [
    *Step 1 — fix latitude first.* The country runs from 4°N to 14°N, in the northern hemisphere.

    *Step 2 — then longitude.* It runs from 3°E to 15°E, all east of Greenwich.

    *Step 3 — reject the swapped option.* A swaps the two ranges, which is the commonest trap in this question.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The highest land",
  [The highest point in Nigeria is found on the

    A. Jos Plateau \
    B. Udi plateau \
    C. Mambilla Plateau \
    D. Chad basin],
  [
    *Step 1 — recall the summit.* Chappal Waddi, about 2 419 m, stands on the Mambilla Plateau near the Cameroon border.

    *Step 2 — eliminate.* Jos is high but lower; Udi is the coal escarpment; the Chad basin is the lowest land in the country.

    *Step 3 — note the confusion.* Jos is famous and therefore the trap; fame is not height.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The dry season, and its wind",
  [The dry season in Nigeria is associated with the

    A. south-west monsoon \
    B. north-east trade winds \
    C. equatorial westerlies \
    D. south-east trades],
  [
    *Step 1 — identify the wind.* Dry air comes from the Sahara, which lies to the north-east.

    *Step 2 — name it.* The north-east trades, called the harmattan in Nigeria, bring dust and dryness.

    *Step 3 — place the monsoon.* The south-west monsoon is the wet-season wind and is the distractor.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The belt and its crop",
  [Gum arabic is produced chiefly in the

    A. mangrove belt \
    B. rain forest \
    C. Guinea savanna \
    D. Sahel],
  [
    *Step 1 — know the tree.* Gum arabic comes from acacia, which tolerates long drought.

    *Step 2 — place the belt.* That is the Sahel and the dry Sudan savanna margin, in the far north-east.

    *Step 3 — reject the wet belts.* Mangrove and rain forest are too wet; Guinea savanna is too moist for the best gum.

    *Answer: D.*
  ],
  tier: "JAMB CHALLENGE",
)

== 6.7 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [Nigeria lies between latitudes], [4°N and 14°N], [3°N and 15°N], [4°S and 14°S], [0° and 10°N])

#mcq(2, [The confluence of the Niger and the Benue is at], [Lokoja], [Jebba], [Onitsha], [Makurdi])

#mcq(3, [The harmattan is a], [moist south-west wind], [dry north-east wind], [cold polar wind], [sea breeze])

#mcq(4, [The zone in which oil and gas are produced is the], [north-east], [south-east], [south-south], [north-central])

#answer-key-grid(("A", "A", "B", "C"))

#answer-notes((
  ("A", [Latitude 4° to 14° north; longitude 3° to 15° east. B swaps the two ranges.]),
  ("A", [Lokoja sits at the junction of the two rivers in Kogi State; Makurdi is on the Benue alone.]),
  ("B", [The harmattan is the dry north-east trade from the Sahara; the south-west monsoon brings the rain.]),
  ("C", [The Delta in the south-south produces the oil; the south-east is coal and palm produce.]),
))

#diagram-fig("diagrams/recap_geo2_ch06.svg",
  "Chapter 6 recap card: position, relief, the zones and the resources.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Nigeria sits between 4° and 14° north and 3° and 15° east, and everything else follows from
    that: a tropical climate with two seasons, a rain gradient that falls from the coast to the
    Sahel, and a relief staircase from the delta to the plateaus. The Niger and the Benue cut the
    country into its regions, and the six zones organise the resources. Learn the zone, its
    capital, its crop and its mineral together — the paper asks for them in pairs.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [State the position, area, neighbours and coastline without notes.],
  [Name the six relief regions and one feature of each.],
  [Trace the Niger and the Benue to the confluence and the delta.],
  [Match the six vegetation belts to their rainfall and one crop each.],
  [Name the six zones with three states and one resource each.],
))

#concept-box("Carry this into Chapter 7")[
  Nigeria is one country inside a region that shares its climate, its colonial history and its
  trading problems. The next chapter widens the frame to West Africa, then to the continent, and
  then to the world economy, whose rules decide the price Nigeria is paid for what it exports.
]

#include "drill_ch06.typ"
