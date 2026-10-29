#import "template.typ": *

#current-chapter.update("Chapter 7: Longitude, Latitude and Time")
#pagebreak()

#chapter-opener(
  7,
  "Longitude, Latitude and Time",
  subtitle: "Great and Small Circles, Distance Along a Meridian and Along a Parallel, the Radius of a Parallel, Local Time and Longitude Difference, and the Length of the Equator",
  syllabus-ref: "Sec. III • Topic 7",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish a great circle from a small circle and name the great circles of the earth.",
    "Calculate the distance between two points on the same meridian.",
    "Find the radius of a circle of latitude and the distance between two points on the same parallel.",
    "Convert a difference in longitude into a difference in local time, and back again.",
    "Find the length of the equator and of a meridian.",
  ),
  hotspots: (
    "\"Two towns on the same meridian are $theta^degree$ apart in latitude\" — one multiplication.",
    "\"$1^degree$ of latitude $= 111$ km\" is quoted in almost every latitude question; use the given value.",
    "\"Radius of the circle of latitude $theta^degree$\" — $R cos theta$.",
    "\"Difference in local time\" — 15° of longitude $= 1$ hour, so $4$ minutes per degree.",
    "The latitude of a place, defined as an angle at the centre of the earth.",
  ),
  trap-summary: "Two slips dominate. (1) Using the earth's radius $R$ for a distance *along a parallel*: the radius of a parallel is $R cos theta$, which is smaller, so every parallel distance is *less* than the corresponding equatorial distance. (2) Adding or subtracting the time difference in the wrong direction — going *east* means later local time, going *west* means earlier.",
)

// ============================================================================
// SECTION 7.1
// ============================================================================
== 7.1 The Earth as a Sphere

The earth is treated as a sphere of radius $R$, and two families of circles are drawn on it.

#diagram-fig("diagrams/ch07_latitude_globe.svg",
  "The globe: the equator is a great circle; the meridians are great circles through both poles; the parallels of latitude are small circles, except the equator itself. A latitude angle is measured at the centre, from the equatorial plane.")

#diagram-fig("diagrams/ch07_great_circle.svg",
  "A great circle has its centre at the centre of the sphere; a small circle does not. The equator and every meridian are great circles, and the shortest path between two points on a sphere is along a great circle.")

#formula-box("The Vocabulary")[
  - *Great circle*: a circle on the sphere whose plane passes through the centre. Its radius equals the sphere's radius.
  - *Small circle*: any other circle on the sphere; its radius is less than $R$.
  - *Equator*: the only parallel of latitude that is a great circle.
  - *Meridian*: a great circle through both poles. All meridians meet at the poles.
  - *Parallel of latitude*: a small circle parallel to the equator, except the equator itself.
  - *Latitude*: the angle at the centre, measured north or south of the equator, between $0^degree$ and $90^degree$.
  - *Longitude*: the angle at the centre, measured east or west of the prime meridian, between $0^degree$ and $180^degree$.
]

#concept-box("Why a Meridian Is Long and a Parallel Is Short")[
  A meridian runs from pole to pole, so its length is half the circumference of a great circle:

  $ L_"meridian" = 1/2 times 2 pi R = pi R $

  A parallel of latitude $theta^degree$ is a smaller circle, whose radius is $R cos theta$. Its length is therefore

  $ L_"parallel" = 2 pi R cos theta $

  #v(3pt)
  At the equator $theta = 0$ and $cos 0 = 1$, so the equator has length $2 pi R$ — the full circumference. At $60^degree$ latitude, $cos 60^degree = 1/2$, so the parallel is exactly half as long as the equator. At the poles the parallel shrinks to a point.
]

#shortcut-box("The Two Numbers to Memorise")[
  With $R = 6300$ km and $pi = 22/7$:

  - $1^degree$ of latitude $= 2 pi R/360 = 110$ km.
  - $1^degree$ of longitude at the equator $= 110$ km, and at latitude $theta$ it is $110 cos theta$ km.
  - $15^degree$ of longitude $= 1$ hour $= 60$ minutes, so $1^degree = 4$ minutes of time.

  #v(3pt)
  Most UTME latitude questions quote "take $1^degree = 111$ km" instead. Use the number the question gives — the three kilometres of difference change the answer, and the options are built around the value in the stem.
]

// ============================================================================
// SECTION 7.2
// ============================================================================
== 7.2 Distance Along a Meridian

Two points on the same meridian are separated only in latitude, so the distance between them is the arc of a great circle.

#formula-box("Distance Along a Meridian")[
  $ "distance" = theta times "length of " 1^degree " of latitude" $

  where $theta$ is the difference in latitude, measured *through the equator* if the towns are in different hemispheres:

  - same hemisphere: $theta = |"lat"_1 - "lat"_2|$;
  - opposite hemispheres: $theta = "lat"_1 + "lat"_2$.
]

#worked-example(
  1,
  "Two towns in the same hemisphere",
  tier: "FOUNDATION",
  [Two towns on the same meridian have latitudes $30^degree N$ and $40^degree N$. Find the distance between them, taking $1^degree$ as $111$ km.],
  [
    *Step 1 — Latitude difference.* Both are north, so subtract:

    $ theta = 40^degree - 30^degree = 10^degree $

    *Step 2 — Multiply.*

    $ "distance" = 10 times 111 = 1110 "km" $

    The towns are $1110$ km apart.

    *The error.* Adding the latitudes gives $70 times 111 = 7770$ km, which is roughly the distance from Nigeria to the North Pole. Always ask "are these on the same side of the equator?" before adding or subtracting.
  ],
)

#worked-example(
  2,
  "Two towns in opposite hemispheres",
  tier: "UTME STANDARD",
  [Find the distance between two points on the same meridian at latitudes $20^degree N$ and $50^degree S$, taking $1^degree$ as $111$ km.],
  [
    *Step 1 — The angles are on opposite sides of the equator*, so the angular separation is the sum:

    $ theta = 20^degree + 50^degree = 70^degree $

    *Step 2 — Multiply.*

    $ "distance" = 70 times 111 = 7770 "km" $

    The points are $7770$ km apart.

    *A cross-check.* The two points are separated by $70^degree$ out of the $180^degree$ from pole to pole, so the distance must be a little under $40\%$ of half the earth's circumference — and it is.
  ],
)

#worked-example(
  3,
  "The reverse question",
  tier: "UTME STANDARD",
  [Two points on the same meridian are $2220$ km apart. Find their difference in latitude, taking $1^degree$ as $111$ km.],
  [
    $ theta = 2220/111 = 20^degree $

    The difference in latitude is $20^degree$.

    *Check.* $20 times 111 = 2220$ ✓. Reverse latitude questions are always a single division, so they are the fastest marks in the paper — provided you read "difference in latitude" rather than "latitude of the second point".
  ],
)

#worked-example(
  4,
  "Length of the equator and of a meridian",
  tier: "UTME STANDARD",
  [Taking $R = 6300$ km and $pi = 22/7$, find the length of the equator and the length of a meridian],
  [
    *Equator — a great circle.*

    $ C = 2 pi R = 2 times 22/7 times 6300 = 39 600 "km" $

    *Meridian — half a great circle.*

    $ L = pi R = 22/7 times 6300 = 19 800 "km" $

    *Consistency check.* $1^degree$ of latitude is $19800/180 = 110$ km, which matches the $2 pi R/360$ calculation ✓. If your two numbers disagree, you have mixed up the radius and the diameter somewhere.
  ],
)

// ============================================================================
// SECTION 7.3
// ============================================================================
== 7.3 Distance Along a Parallel of Latitude

Points on the same parallel differ in longitude, and they travel along a *small* circle whose radius is $R cos theta$.

#formula-box("Distance Along a Parallel")[
  The radius of the parallel at latitude $theta$ is

  $ r = R cos theta $

  and the distance between two points on that parallel differing in longitude by $phi^degree$ is

  $ "distance" = phi/360 times 2 pi R cos theta $

  At the equator, $theta = 0$ and $cos theta = 1$, so the formula collapses to the equatorial one.
]

#worked-example(
  5,
  "Radius of a circle of latitude",
  tier: "FOUNDATION",
  [Find the radius of the circle of latitude $60^degree$. (Take $R = 6300$ km.)],
  [
    $ r = R cos 60^degree = 6300 times 1/2 = 3150 "km" $

    The parallel at $60^degree$ has half the earth's radius.

    *The two distractors.* $6300$ km is the earth's own radius (a candidate who forgets the cosine), and $12600$ km would be a diameter. Any radius of a parallel must be *smaller* than $R$ — that single observation eliminates half the options in every such question.
  ],
)

#worked-example(
  6,
  "Distance along a parallel",
  tier: "UTME STANDARD",
  [Two towns on latitude $60^degree N$ differ in longitude by $20^degree$. Find the distance between them along that parallel. (Take $R = 6300$ km, $pi = 22/7$.)],
  [
    *Step 1 — Radius of the parallel.*

    $ r = R cos 60^degree = 3150 "km" $

    *Step 2 — $1^degree$ along that parallel.*

    $ 1^degree = 2 pi r/360 = 2 times 22/7 times 3150/360 = 55 "km" $

    *Step 3 — Multiply by the longitude difference.*

    $ "distance" = 20 times 55 = 1100 "km" $

    The towns are $1100$ km apart, half the equatorial distance for the same longitude gap — exactly as $cos 60^degree = 1/2$ predicts.

    *The distractor.* $2200$ km is the distance along the *equator* for the same $20^degree$, and it is always offered. The word "parallel" in the stem is what rules it out.
  ],
)

#worked-example(
  7,
  "Comparing equator and parallel",
  tier: "JAMB CHALLENGE",
  [Two towns on the equator are $1100$ km apart. Another two towns on latitude $60^degree$ differ in longitude by the same angle. Find the longitude difference of the equatorial towns and the distance between the second pair. (Take $R = 6300$ km, $pi = 22/7$.)],
  [
    *Step 1 — Equatorial degree-length.*

    $ 1^degree = 2 pi R/360 = 110 "km" $

    *Step 2 — Longitude difference of the first pair.*

    $ phi = 1100/110 = 10^degree $

    *Step 3 — Second pair, at latitude $60^degree$.* The same $10^degree$ of longitude, but along a parallel of radius $3150$ km:

    $ 1^degree = 2 times 22/7 times 3150/360 = 55 "km" $

    $ "distance" = 10 times 55 = 550 "km" $

    The second pair are $550$ km apart — half the first pair's distance, for the same longitude gap.

    *The general principle.* For a fixed longitude difference, a parallel distance is $cos theta$ times the equatorial distance. Once you know that, questions of this shape need no arithmetic beyond one multiplication.
  ],
)

// ============================================================================
// SECTION 7.4
// ============================================================================
== 7.4 Longitude and Local Time

The earth turns through $360^degree$ every $24$ hours, so it turns through

$ 360^degree/24 = 15^degree "per hour" quad quad "or" quad quad 1^degree "every" 4 "minutes" $

That single line generates every time question in the syllabus.

#formula-box("Longitude and Time")[
  $ "time difference (hours)" = "longitude difference" / 15 $

  $ "time difference (minutes)" = 4 times "longitude difference in degrees" $

  *Direction matters:*

  - travelling *east* means a *later* local time (add the difference);
  - travelling *west* means an *earlier* local time (subtract the difference).
]

#worked-example(
  8,
  "Difference in local time",
  tier: "FOUNDATION",
  [Two towns differ in longitude by $45^degree$. Find the difference in their local times.],
  [
    $ "difference" = 45/15 = 3 "hours" $

    The towns' local times differ by three hours.

    *Which one is ahead?* The one further east. A stem that asks only for "the difference" does not require the direction; a stem that asks "what is the local time at Q" does, and that is where most candidates slip.
  ],
)

#worked-example(
  9,
  "Local time east of a reference",
  tier: "UTME STANDARD",
  [Town P is on longitude $0^degree$ and town Q is $45^degree$ east of P. If the local time at P is 12:00 noon, what is the local time at Q?],
  [
    *Step 1 — Time difference.*

    $ 45/15 = 3 "hours" $

    *Step 2 — Direction.* Q is *east*, so Q is *ahead*:

    $ 12{:}00 "noon" + 3 "hours" = 3{:}00 "p.m." $

    The local time at Q is $3$ p.m.

    *The direction rule in one line.* "East is ahead, west is behind." Picture the sun rising in the east: a town to the east has already seen noon while you are still waiting for it.
  ],
)

#worked-example(
  10,
  "Longitude from a time difference",
  tier: "UTME STANDARD",
  [Two towns differ in local time by $2$ hours. Find the difference in their longitudes.],
  [
    $ "longitude difference" = 15 times 2 = 30^degree $

    The towns differ by $30^degree$ of longitude.

    *Check.* $30^degree$ at $4$ minutes per degree is $120$ minutes $= 2$ hours ✓. Reverse time questions are always one multiplication by $15$, so do not bother setting up an equation.
  ],
)

#worked-example(
  11,
  "A time difference in minutes",
  tier: "JAMB CHALLENGE",
  [Two towns differ in longitude by $25^degree$. Find the difference in their local times, in minutes.],
  [
    $ "difference" = 25 times 4 = 100 "minutes" $

    That is $1$ hour $40$ minutes.

    *Watch the units in the options.* Some options will read "$100$ minutes" and others "$1$ hour $40$ minutes" — both correct, so read the question's own format. And a distractor using $2$ minutes per degree ($50$ minutes) comes from confusing the hour line ($15^degree$) with the minute line ($4$ minutes).
  ],
)

#trap-box("Time and Longitude: Where Marks Vanish")[
  - Dividing by $4$ instead of multiplying: $25^degree$ gives $6.25$ hours instead of $100$ minutes.
  - Adding the difference when the town is *west*, which puts the time later than it should be.
  - Mixing degrees, hours and minutes in one expression. Convert to minutes first, then to hours at the end.
  - Forgetting that a *time* answer past midnight must be written with a day change: 23:00 plus 3 hours is 02:00 the next day.
]

// ============================================================================
// SECTION 7.5
// ============================================================================
== 7.5 Chapter 7 Rapid-Revision Checklist

#table(
  columns: (1.25fr, 1.85fr, 1.55fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],
  ),
  ["same meridian, distance"], ["Latitude difference $times$ km per degree."], ["Same hemisphere: subtract. Opposite: add."],
  ["distance along a parallel"], ["$R cos theta$, then the degree-length."], ["Not the equatorial degree-length."],
  ["radius of a parallel"], ["$R cos theta$."], ["Must be smaller than $R$."],
  ["length of the equator"], ["$2 pi R$."], ["A meridian is half of it."],
  ["which circles are great"], ["Equator and all meridians."], ["Other parallels are small circles."],
  ["local time difference"], ["$15^degree = 1$ hour."], ["East is later, west is earlier."],
  ["longitude from a time gap"], ["Multiply the hours by $15$."], ["Minutes: divide by $4$."],
  ["latitude defined"], ["Angle at the centre from the equator."], ["Not the distance from the pole."],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 7 in One Breath]
  #v(3pt)
  Latitude measures north–south and gives distances along *great* circles, so one degree is a fixed number of kilometres. Longitude measures east–west and gives distances along *small* circles whose radius is $R cos theta$, so the same degree is shorter away from the equator. Time follows longitude at $15^degree$ per hour, with the east ahead.
]

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: the four distances and the time rule.", width: 76%)

// ============================================================================
== 7.6 Chapter 7 in the Exam Hall — a Two-Minute Set

#mcq(1, [Two towns on the same meridian have latitudes $15^degree N$ and $45^degree N$. Find the distance between them, taking $1^degree$ as $111$ km.], [$3330$ km], [$6660$ km], [$1665$ km], [$1110$ km])

#mcq(2, [Find the radius of the circle of latitude $60^degree$. (Take $R = 6300$ km.)], [$3150$ km], [$6300$ km], [$5450$ km], [$1575$ km])

#mcq(3, [Two towns differ in longitude by $75^degree$. Find the difference in their local times.], [$5$ hours], [$4$ hours], [$10$ hours], [$75$ hours])

#mcq(4, [Taking $R = 6300$ km and $pi = 22/7$, find the length of a meridian from pole to pole.], [$19800$ km], [$39600$ km], [$9900$ km], [$12600$ km])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $30 times 111$; (2) $6300 cos 60^degree$; (3) $75 -: 15$; (4) $pi R = 22/7 times 6300$.
  ]
]

// ============================================================================
#include "drill_ch07.typ"
