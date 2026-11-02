#import "template.typ": *

#current-chapter.update("Chapter 4: Weather, Climate and the Atmosphere")

#pagebreak()

#chapter-opener(
  4,
  "Weather, Climate and the Atmosphere",
  subtitle: "The Air We Live In, the Energy That Drives It, and the Three Ways It Is Forced to Rain",
  syllabus-ref: "Part III • The Atmosphere",
  utme-weight: "7 Qs a year",
  running: "Weather and Climate",
)

#focus-radar(
  objectives: (
    "Describe the composition and vertical structure of the atmosphere.",
    "Explain how latitude, altitude and distance from the sea affect temperature.",
    "Relate pressure belts to the planetary winds and the ITCZ.",
    "Distinguish the three types of rainfall and the conditions each requires.",
    "Name the major climate types and the controls that produce them.",
  ),
  hotspots: (
    "“Weather occurs in the …” — troposphere, the lowest layer, where almost all water vapour and dust sit and where temperature falls with height. The trap offers *stratosphere*, which contains the ozone layer but no weather.\n",
    "“The instrument used to measure relative humidity is the …” — hygrometer (wet-and-dry bulb). The trap offers *barometer*, which measures pressure; the two are always offered together.\n",
    "“The wind that blows over Nigeria during the dry season is the …” — north-east trade wind, called the harmattan, bringing dry dust-laden air from the Sahara. The trap offers *south-west monsoon*, which is the wet-season wind.\n",
    "“Convectional rainfall is most common in the …” — equatorial belt, where intense heating produces afternoon thunderstorms. The trap offers *temperate latitudes*, where frontal rain dominates.\n",
  ),
  trap-summary: "Three slips. (1) Saying warm air holds more water — warm air can *contain* more vapour before it saturates, but the reason it rains is that it *cools*, and cooling reduces what it can hold. (2) Naming a wind by where it is going rather than where it comes from: a south-west wind blows *from* the south-west. (3) Confusing the greenhouse effect, which is natural and keeps the earth habitable, with its enhancement by human emissions — the paper distinguishes the two.",
)

// ============================================================================
== 4.1 The Atmosphere: What It Is Made Of and How It Is Layered

Dry air is a mixture, and the mixture matters. Nitrogen makes up about 78 per cent and oxygen
about 21 per cent; argon, carbon dioxide and the rest account for the remainder. The gases that
matter out of proportion to their quantity are *water vapour*, *carbon dioxide* and *ozone*,
because they absorb and re-emit radiation.

#table(
  columns: (1.25fr, 0.8fr, 2.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Gas],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Share],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why the paper mentions it],
  ),
  [Nitrogen], [78 %], [the bulk of the air, and the gas that nitrogen-fixing plants use],
  [Oxygen], [21 %], [respiration and combustion; the gas that supports life],
  [Argon], [0.9 %], [an inert gas, rarely examined],
  [Carbon dioxide], [0.04 %], [a greenhouse gas, and the raw material of photosynthesis],
  [Water vapour], [0–4 %], [varies with place and season; the source of cloud and rain],
  [Ozone], [trace], [absorbs ultraviolet radiation in the stratosphere],
)

#v(3pt)

The atmosphere is layered by temperature, and each layer is named by the way temperature
behaves in it. In the *troposphere* temperature falls with height at about 6.5 °C per kilometre,
because the air is heated from below by the earth's surface. In the *stratosphere* temperature
rises with height, because ozone absorbs ultraviolet radiation and warms the layer. Above that
the *mesosphere* cools again and the *thermosphere* becomes extremely hot but so thin that it
holds almost no heat.

#v(3pt)

#rule-box("Why the troposphere is the layer that matters")[
  It contains about three-quarters of the atmosphere's mass and almost all of its water vapour
  and dust — the ingredients of cloud. Every weather event on the paper happens here, and its
  upper limit, the *tropopause*, is the ceiling of the weather. Temperature stops falling at
  that ceiling, and the change of direction is the definition of the boundary.
]

#trap-box("Temperature falls, then rises")[
  A graph of temperature against height has a *zigzag*: down through the troposphere, up
  through the stratosphere, down through the mesosphere, up through the thermosphere. The
  examiner shows the graph and asks which layer is which. Read the first downward slope as the
  troposphere and the first upward slope as the stratosphere, and the rest follows.
]

== 4.2 Insolation and Temperature

The sun's energy arrives as short-wave radiation. About half is absorbed at the surface, some is
reflected by clouds and ice, and some is absorbed by the atmosphere. The surface then radiates
long-wave energy, which the greenhouse gases absorb and re-emit, keeping the lower atmosphere
warm.

#v(3pt)

#table(
  columns: (1.2fr, 2.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Control],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it works],
  ),
  [Latitude], [the sun's rays are most concentrated near the equator and most oblique near the poles, so temperature falls polewards],
  [Altitude], [air cools about 6.5 °C per kilometre, so a plateau is cooler than the plain beside it — the reason Jos is cooler than Lagos],
  [Distance from the sea], [water heats and cools slowly, so coasts have a small annual range and interiors a large one],
  [Ocean currents], [a warm current raises the temperature of the coast it touches; a cold current lowers it and can create fog],
  [Cloud cover], [clouds reflect incoming radiation by day and trap outgoing radiation at night, which narrows the diurnal range],
  [Aspect and vegetation], [a slope facing the sun is warmer than one facing away; vegetation shades the ground and adds moisture],
)

#v(3pt)

The distinction the paper likes best is between *diurnal* and *annual* range. Diurnal range is
the difference between the day's maximum and the night's minimum; annual range is the
difference between the warmest and coldest months. Deserts have a large diurnal range because
the air is dry and cloudless; maritime climates have a small annual range because the sea
stores heat. A question that gives two stations and asks which is continental is asking about
the annual range.

#formula-box("The lapse-rate arithmetic")[
  Temperature at a height = temperature at sea level − (6.5 °C × height in kilometres). A place
  2 000 m above sea level with 30 °C at the coast is therefore about 30 − 13 = 17 °C. The
  6.5 °C figure is the one the examiner expects; use 6.5, not 10.
]

== 4.3 Pressure, Winds and the General Circulation

Air has weight. At sea level the pressure is about 1 013 millibars, and it falls with height.
Where air is warmed it expands and rises, leaving low pressure at the surface; where air is
cooled it sinks, leaving high pressure. Wind is simply air moving from high pressure to low,
bent by the earth's rotation.

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[THE FOUR PRESSURE BELTS AND THE WINDS THEY DRIVE]
  #v(4pt)
  #table(
    columns: (1.15fr, 1.0fr, 1.6fr, 1.3fr),
    inset: (x: 4pt, y: 2.4pt),
    align: (left + horizon, center + horizon, left + horizon, left + horizon),
    stroke: none,
    [*Equatorial low*], [0°], [rising warm air, heavy rain], [the doldrums],
    [*Subtropical high*], [30° N and S], [sinking dry air, deserts], [the horse latitudes],
    [*Subpolar low*], [60° N and S], [rising air at the polar front], [storm tracks],
    [*Polar high*], [90° N and S], [cold dense sinking air], [polar easterlies],
  )
]

#v(4pt)

Between the belts run the planetary winds. From the subtropical high towards the equator blow
the *trade winds*, north-east in the northern hemisphere and south-east in the southern. From
the subtropical high towards the subpolar low blow the *westerlies*. From the polar high towards
the subpolar low blow the *polar easterlies*. All of them are deflected by the Coriolis force,
and all of them are named by the direction they come *from*.

#concept-box("The ITCZ and the Nigerian year")[
  The *Inter-Tropical Convergence Zone* is the belt where the trade winds of the two hemispheres
  meet. It migrates with the overhead sun: north in July, south in January. When it lies north
  of Nigeria, the south-west monsoon blows in from the Atlantic and brings the wet season; when
  it lies south, the north-east trades blow in from the Sahara as the dry, dusty *harmattan*.
  The whole of the Nigerian climate is that single migration, seen from the ground.
]

== 4.4 Humidity, Condensation and the Three Rains

Humidity is the water vapour in the air. *Absolute humidity* is the mass of vapour in a given
volume; *specific humidity* is the mass per unit mass of air; *relative humidity* is the amount
present as a percentage of the amount the air could hold at that temperature. Relative humidity
is the one that matters, because it decides whether condensation happens.

#v(3pt)

Air reaches saturation when it cools to its *dew point*. Cooling below that point produces
condensation on nuclei — dust, salt and smoke — and the result is dew, fog or cloud. Cloud
becomes rain when the droplets grow heavy enough to fall, which requires either collision with
other droplets or the presence of ice crystals.

#diagram-fig("diagrams/geo1_ch04_rain.svg",
  "Figure 4.1 The three lifting mechanisms. All three cool air to its dew point; only the trigger differs.", width: 98%)

#table(
  columns: (0.95fr, 1.35fr, 1.5fr, 1.95fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Trigger],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The signature],
  ),
  [Relief], [air is forced up a hill or mountain], [windward slopes in the tropics and temperate belts], [heavy rain on the windward side, a dry rain shadow to leeward],
  [Convectional], [the ground heats the air until it rises], [the equatorial belt and hot interiors], [short, heavy afternoon storms, often with thunder],
  [Frontal], [warm air rises over a wedge of cold air], [temperate latitudes, where air masses meet], [steady rain over a wide area, lasting hours or days],
)

#v(3pt)

The distinction between the three is not the cloud but the *trigger*. All three produce
cumulus or cumulonimbus; all three cool rising air to the dew point. What the examiner tests is
whether you can name the mechanism and the place: relief belongs to a slope, convection to a
hot surface, frontal rain to a boundary between air masses.

#shortcut-box("The one-word test")[
  Look for the noun in the stem. *Mountain, slope, windward* → relief. *Afternoon, heating,
  thunder* → convectional. *Front, warm sector, depression* → frontal. The nouns are the
  answer; the process is the explanation you write next.
]

== 4.5 Climate Types and Their Controls

Climate is the average weather of a place over thirty years or more. Climates are classified by
temperature and rainfall, and the classification the syllabus uses is the familiar one:
equatorial, tropical monsoon, tropical savanna, desert, semi-arid, Mediterranean, temperate
maritime, temperate continental, and polar.

#table(
  columns: (1.15fr, 1.4fr, 1.15fr, 2.1fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Climate],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Temperature],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rainfall],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where and why],
  ),
  [Equatorial], [high all year, small range], [heavy all year, convectional], [within 5° of the equator; rising air and overhead sun],
  [Tropical savanna], [hot, distinct seasons], [one wet, one dry season], [Nigeria's middle belt; the ITCZ migrates],
  [Tropical monsoon], [hot, seasonal reversal], [very heavy in the monsoon], [India, South-East Asia; land and sea heat differently],
  [Desert], [very hot days, cold nights], [under 250 mm a year], [30° latitude; sinking dry air],
  [Mediterranean], [warm dry summer, mild wet winter], [winter rain], [west coasts at 30–40°; the westerlies arrive in winter],
  [Temperate maritime], [mild, small annual range], [rain all year], [west coasts at 40–60°; the sea moderates],
  [Temperate continental], [hot summer, cold winter, large range], [summer rain], [interiors at 40–60°; distance from the sea],
  [Polar], [below 10 °C in the warmest month], [low, mostly snow], [above 60°; oblique sun, high albedo],
)

#v(3pt)

Four controls generate that table: *latitude*, which decides the angle of the sun; *altitude*,
which lowers temperature; *distance from the sea*, which moderates it; and *prevailing winds*,
which decide whether a coast is wet or dry. A fifth — *ocean currents* — explains the
anomalies, such as the mild winter of north-west Europe and the fog of the cold-current coasts.

#trap-box("Climate, weather and season")[
  *Weather* is the state of the atmosphere at a place at a moment. *Climate* is the average of
  that state over decades. A *season* is a division of the year marked by a change in the sun's
  position, not a separate climate. A question that says “the climate of a place on a particular
  day” is badly worded, but the answer it wants is still the average — and the option that offers
  the day's condition is the trap.
]

== 4.6 Four Worked Questions

#worked-example(
  1,
  "The layer of weather",
  [Almost all the weather phenomena of the earth occur in the

    A. stratosphere \\
    B. mesosphere \\
    C. troposphere \\
    D. thermosphere],
  [
    *Step 1 — recall where the water is.* Cloud needs water vapour, dust and rising air, and nearly all of all three sit in the lowest layer.

    *Step 2 — name it.* The troposphere, where temperature falls with height and air mixes vertically.

    *Step 3 — eliminate.* The stratosphere is stable and dry, the mesosphere and thermosphere are far too thin.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The lapse rate",
  [The temperature at sea level is 30 °C. What is the temperature at a height of 2 000 m?

    A. 17 °C \\
    B. 20 °C \\
    C. 23 °C \\
    D. 13 °C],
  [
    *Step 1 — convert the height.* 2 000 m = 2 km.

    *Step 2 — apply the lapse rate.* 6.5 °C × 2 = 13 °C of cooling.

    *Step 3 — subtract.* 30 − 13 = 17 °C.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The wind and its name",
  [The dry, dusty wind that blows over northern Nigeria during the dry season is the

    A. south-west monsoon \\
    B. north-east trade wind \\
    C. westerlies \\
    D. sea breeze],
  [
    *Step 1 — locate the source.* Dry season air over northern Nigeria comes from the Sahara, to the north-east.

    *Step 2 — name by origin.* A wind is named for where it comes from, so it is the north-east trade wind — the harmattan.

    *Step 3 — eliminate.* The south-west monsoon is the wet-season wind from the Atlantic; the westerlies never reach Nigeria; a sea breeze is a local daytime circulation.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Choosing the rainfall type",
  [A town on a coast has heavy rain on the seaward slope of a mountain and desert conditions
  immediately behind it. The rainfall type is

    A. convectional \\
    B. frontal \\
    C. cyclonic \\
    D. relief],
  [
    *Step 1 — read the geography of the stem.* Rain on one slope, dry on the other: that is a barrier forcing air up.

    *Step 2 — name the process.* Orographic or relief rainfall, with a rain shadow to leeward.

    *Step 3 — eliminate.* Convectional rain is not tied to a slope, frontal rain needs two air masses, and cyclonic rain belongs to a depression.

    *Answer: D.*
  ],
  tier: "JAMB CHALLENGE",
)

== 4.7 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The instrument used to measure relative humidity is the], [barometer], [anemometer], [hygrometer], [thermometer])

#mcq(2, [The zone where the trade winds of the two hemispheres meet is the], [polar front], [inter-tropical convergence zone], [subtropical high], [stratopause])

#mcq(3, [The type of rainfall most common in the equatorial belt is], [frontal], [relief], [cyclonic], [convectional])

#mcq(4, [The greenhouse gas present in the greatest concentration in the atmosphere is], [carbon dioxide], [ozone], [water vapour], [methane])

#answer-key-grid(("C", "B", "D", "A"))

#answer-notes((
  ("C", [A hygrometer, or wet-and-dry bulb, measures humidity. A barometer measures pressure and an anemometer wind speed.]),
  ("B", [The ITCZ is where the two trade-wind systems converge. It migrates with the overhead sun and governs the West African wet and dry seasons.]),
  ("D", [Strong heating produces rising air and afternoon storms — convectional rain. Frontal rain belongs to temperate latitudes and relief rain to a slope.]),
  ("A", [Carbon dioxide is the most abundant greenhouse gas after water vapour, whose concentration varies; the paper treats carbon dioxide as the examinable one because it is the gas of human emissions.]),
))

#diagram-fig("diagrams/recap_geo1_ch04.svg",
  "Chapter 4 recap card: the atmosphere, pressure and wind, the three rains, and the climates.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The atmosphere is a thin mixture of nitrogen and oxygen with small but decisive amounts of
    water vapour, carbon dioxide and ozone, layered into a troposphere where temperature falls
    with height, a stratosphere warmed by ozone, and two outer layers too thin to matter to
    weather. The sun heats the surface unevenly, and the surface heats the air, so temperature
    falls with latitude and with height, and ranges widen inland and narrow at the coast. Warm
    air rises and cool air sinks, creating the pressure belts; the winds between them are bent
    by the earth's rotation and named for where they come from. Air reaches its dew point when
    it is lifted, and it is lifted in only three ways: over a hill, by a hot surface, or over a
    wedge of cold air. Those three mechanisms, repeated across the continents, produce the
    climate map — and in Nigeria the whole of it turns on the seasonal migration of the ITCZ.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Name the four layers of the atmosphere and the direction of temperature change in each.],
  [Calculate the temperature at a given height using the 6.5 °C per kilometre lapse rate.],
  [Draw the three rainfall types and label the trigger on each.],
  [Explain the difference between the harmattan and the south-west monsoon.],
  [Name five climate controls and give one Nigerian example of each in use.],
))

#concept-box("Carry this into Chapter 5")[
  Rain that falls must go somewhere. Chapter 5 follows it — into the soil, down the slope, into
  the stream and along the river to the sea — and shows how moving water carves the valleys,
  waterfalls, meanders and deltas that the next chapter examines. The three rainfall types are
  also the reason Nigeria's rivers have a flood season with a lag of weeks behind the rains.
]
