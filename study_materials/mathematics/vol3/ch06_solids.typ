#import "template.typ": *

#current-chapter.update("Chapter 6: Mensuration of Solids")
#pagebreak()

#chapter-opener(
  6,
  "Mensuration of Solids",
  subtitle: "Prisms, Cylinders, Pyramids, Cones, Spheres and Frustums: Volume, Curved Surface, Total Surface, Capacity and Similar Solids",
  syllabus-ref: "Sec. III • Topic 6",
  utme-weight: "2–3 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish between volume, curved surface area and total surface area.",
    "Compute the volume and surface area of prisms, cylinders, pyramids, cones, spheres and frustums.",
    "Use the slant height of a cone correctly, obtaining it by Pythagoras when only $r$ and $h$ are given.",
    "Relate capacity in litres to volume in cubic centimetres.",
    "Use the square and cube laws for similar solids.",
  ),
  hotspots: (
    "Volume of a cylinder with $pi = 22/7$ — a near-certain question.",
    "Curved surface area of a cylinder, which is $2 pi r h$ and *not* $pi r^2 h$.",
    "Volume of a cone or a pyramid — the factor $1/3$ is the whole question.",
    "Total surface area of a cone, which needs the slant height $l = sqrt(r^2 + h^2)$.",
    "Volume of a frustum, or the capacity of a tank in litres.",
  ),
  trap-summary: "Three slips dominate. (1) Using $1/3$ where it does not belong, or omitting it where it does — a cone and a pyramid have $1/3$, a cylinder and a prism do not. (2) Mixing up $2 pi r h$ (curved area) with $pi r^2 h$ (volume); they differ by an $r$ and the units give it away. (3) Using the perpendicular height $h$ where the *slant* height $l$ is needed, or the reverse — the slant height appears only in the curved surface of a cone.",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 The Six Solids at a Glance

Every solid in the syllabus is one of six, and each has exactly two formulae worth memorising: a volume and a surface area.

#diagram-fig("diagrams/ch06_prism_cylinder.svg",
  "A prism and a cylinder are the same idea: a constant cross-section extruded through a height. Volume $=$ base area $times$ height; the curved surface is the perimeter of the base $times$ height.")

#diagram-fig("diagrams/ch06_pyramid_cone.svg",
  "A pyramid and a cone taper to a point, which is why their volumes carry the factor $1/3$. The slant height $l$ of a cone is the hypotenuse of a right triangle with legs $r$ and $h$.")

#formula-box("Volumes and Surface Areas")[
  #table(
    columns: (1.1fr, 1.2fr, 1.45fr),
    inset: 5.5pt,
    align: (left + horizon, left + horizon, left + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Solid],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Volume],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Surface area],
    [Cube, side $a$], [$a^3$], [$6 a^2$],
    [Cuboid, $l times b times h$], [$l b h$], [$2(l b + l h + b h)$],
    [Prism], [$A_"base" h$], [$2 A_"base" + P_"base" h$],
    [Cylinder], [$pi r^2 h$], [Curved $2 pi r h$; total $2 pi r (r + h)$],
    [Pyramid], [$1/3 A_"base" h$], [Base $+$ the triangular faces],
    [Cone], [$1/3 pi r^2 h$], [Curved $pi r l$; total $pi r (r + l)$],
    [Sphere], [$4/3 pi r^3$], [$4 pi r^2$],
    [Frustum], [$1/3 pi h (R^2 + R r + r^2)$], [Curved $pi (R + r) l$],
  )
]

#shortcut-box("Which Solids Get the $1/3$?")[
  Only the two solids that *taper to a point*: the pyramid and the cone.

  - A pyramid is $1/3$ of the prism with the same base and height.
  - A cone is $1/3$ of the cylinder with the same base and height.

  A prism and a cylinder have no taper, so no fraction. A frustum is the *difference* of two cones, which is exactly where its messy formula comes from — and also why it carries the $1/3$ as well.
]

#concept-box("Slant Height: the Cone's Hidden Pythagoras")[
  A cone is described by three lengths, and only two of them are independent:

  $ l^2 = r^2 + h^2 $

  where $r$ is the base radius, $h$ the perpendicular height and $l$ the *slant* height — the length of a straight line from the apex down the curved surface to the rim.

  #v(3pt)
  Volume uses $h$; curved surface area uses $l$. A stem that gives $r$ and $h$ and asks for surface area therefore contains a Pythagoras step that is easy to miss — and that step is where the marks are.
]

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 Prisms and Cylinders

#worked-example(
  1,
  "Volume of a cuboid",
  tier: "FOUNDATION",
  [Find the volume and total surface area of a cuboid $12$ cm by $5$ cm by $8$ cm.],
  [
    *Volume.*

    $ V = l b h = 12 times 5 times 8 = 480 "cm"^3 $

    *Total surface area.*

    $ S = 2(l b + l h + b h) = 2(60 + 96 + 40) = 2 times 196 = 392 "cm"^2 $

    *Check the units.* Volume is in cm³ and area in cm²; an option with the wrong unit can be eliminated without any calculation.
  ],
)

#worked-example(
  2,
  "Volume of a cylinder",
  tier: "UTME STANDARD",
  [Find the volume of a cylinder of radius $7$ cm and height $10$ cm. (Take $pi = 22/7$.)],
  [
    $ V = pi r^2 h = 22/7 times 49 times 10 = 22 times 7 times 10 = 1540 "cm"^3 $

    *The distractor.* $440$ cm³ is the *curved surface area*, $2 pi r h = 2 times 22/7 times 7 times 10$. Same numbers, different formula — and both appear in the options of every cylinder question.
  ],
)

#worked-example(
  3,
  "Curved and total surface area of a cylinder",
  tier: "UTME STANDARD",
  [A cylinder has radius $14$ cm and height $20$ cm. Find its curved surface area and its total surface area. (Take $pi = 22/7$.)],
  [
    *Curved surface.*

    $ 2 pi r h = 2 times 22/7 times 14 times 20 = 2 times 22 times 2 times 20 = 1760 "cm"^2 $

    *Total surface.* Add the two circular ends:

    $ 2 pi r^2 = 2 times 22/7 times 196 = 1232 "cm"^2 $

    $ "total" = 1760 + 1232 = 2992 "cm"^2 $

    *Or in one line*, $2 pi r (r + h) = 2 times 22/7 times 14 times 34 = 2992$ ✓.

    *Read the adjective.* "Curved" excludes the ends; "total" includes them. A cylinder open at the top has one end only, and JAMB does set that variant.
  ],
)

#worked-example(
  4,
  "Capacity in litres",
  tier: "JAMB CHALLENGE",
  [A cylindrical tank of radius $70$ cm and height $1.5$ m is filled with water. Find its capacity in litres. (Take $pi = 22/7$; $1$ litre $= 1000$ cm³.)],
  [
    *Step 1 — Use one unit throughout.* Convert the height to centimetres:

    $ h = 1.5 "m" = 150 "cm" $

    *Step 2 — Volume in cm³.*

    $ V = pi r^2 h = 22/7 times 4900 times 150 = 22 times 700 times 150 = 2 310 000 "cm"^3 $

    *Step 3 — Convert to litres.*

    $ "capacity" = 2 310 000/1000 = 2310 "litres" $

    *The unit trap.* Mixing metres and centimetres gives $15.4$ or $231 000$ — both appear as options. Convert before substituting, every time, and state the unit at the end of the calculation.
  ],
)

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 Pyramids and Cones

#worked-example(
  5,
  "Volume of a pyramid",
  tier: "UTME STANDARD",
  [A pyramid has a square base of side $9$ cm and height $12$ cm. Find its volume.],
  [
    *Step 1 — Base area.*

    $ A_"base" = 9 times 9 = 81 "cm"^2 $

    *Step 2 — Volume with the $1/3$.*

    $ V = 1/3 times 81 times 12 = 324 "cm"^3 $

    *No $1/3$ means no pyramid.* The distractor $972$ cm³ is the prism (a cuboid) with the same base and height; the pyramid is exactly one third of it.
  ],
)

#worked-example(
  6,
  "Volume of a cone",
  tier: "UTME STANDARD",
  [Find the volume of a cone of base radius $7$ cm and height $12$ cm. (Take $pi = 22/7$.)],
  [
    $ V = 1/3 pi r^2 h = 1/3 times 22/7 times 49 times 12 $

    *Cancel aggressively.*

    $ 22/7 times 49 = 154, quad 1/3 times 154 times 12 = 154 times 4 = 616 "cm"^3 $

    *Check against the cylinder.* A cylinder of the same base and height has volume $1848$ cm³; one third of it is $616$ ✓.
  ],
)

#worked-example(
  7,
  "Total surface area of a cone",
  tier: "JAMB CHALLENGE",
  [A cone has base radius $7$ cm and perpendicular height $24$ cm. Find its total surface area. (Take $pi = 22/7$.)],
  [
    *Step 1 — Slant height.*

    $ l = sqrt(r^2 + h^2) = sqrt(49 + 576) = sqrt(625) = 25 "cm" $

    *Step 2 — Curved surface.*

    $ pi r l = 22/7 times 7 times 25 = 550 "cm"^2 $

    *Step 3 — Base.*

    $ pi r^2 = 154 "cm"^2 $

    *Step 4 — Total.*

    $ 550 + 154 = 704 "cm"^2 $

    *The triad again.* $7, 24, 25$ guarantees a whole-number slant height, which is how JAMB ensures the answer is exact. If your $l$ comes out as a surd, check whether you were given a triad in disguise.
  ],
)

#worked-example(
  8,
  "A cone from a sector",
  tier: "JAMB CHALLENGE",
  [A sector of a circle of radius $15$ cm and angle $120^degree$ is folded to form a cone. Find the base radius of the cone.],
  [
    *The key idea.* The arc of the sector becomes the circumference of the cone's base, and the radius of the sector becomes the cone's *slant* height.

    *Step 1 — Arc length of the sector.*

    $ s = theta/360 times 2 pi r = 120/360 times 2 pi times 15 = 10 pi "cm" $

    *Step 2 — Set it equal to the base circumference.*

    $ 2 pi r_"cone" = 10 pi quad arrow.r.double quad r_"cone" = 5 "cm" $

    The base radius is $5$ cm, and the cone's slant height is $15$ cm.

    *This is a standard construction question.* Learn the two correspondences — *arc becomes circumference*, *sector radius becomes slant height* — and every variation of it (find the height, find the curved area) follows in one step.
  ],
)

// ============================================================================
// SECTION 6.4
// ============================================================================
== 6.4 Spheres and Frustums

#diagram-fig("diagrams/ch06_sphere.svg",
  "A sphere: every point on the surface is the same distance $r$ from the centre. A great circle — the equator, or any circle through the centre — has radius $r$.")

#worked-example(
  9,
  "Volume and surface of a sphere",
  tier: "UTME STANDARD",
  [Find the volume and surface area of a sphere of radius $21$ cm. (Take $pi = 22/7$.)],
  [
    *Volume.*

    $ V = 4/3 pi r^3 = 4/3 times 22/7 times 9261 $

    *Simplify.* $9261/7 = 1323$, and $1323/3 = 441$, so

    $ V = 4 times 22 times 441 = 38 808 "cm"^3 $

    *Surface area.*

    $ A = 4 pi r^2 = 4 times 22/7 times 441 = 4 times 22 times 63 = 5544 "cm"^2 $

    *A sanity check worth internalising.* For a sphere, the volume is exactly $r/3$ times the surface area: $38 808 = 21/3 times 5544$ ✓. That relation holds for every sphere, and it catches a slipped power of $r$ instantly.
  ],
)

#diagram-fig("diagrams/ch06_frustum.svg",
  "A frustum: a cone with its top sliced off parallel to the base. The two radii $R$ and $r$, the height $h$ and the slant height $l$ determine everything.")

#formula-box("The Frustum")[
  With base radii $R > r$, perpendicular height $h$ and slant height $l$:

  $ V = 1/3 pi h (R^2 + R r + r^2) $, $ quad quad "curved area" = pi (R + r) l $

  and $l = sqrt(h^2 + (R - r)^2)$.

  #v(3pt)
  The three terms inside the bracket are the two end areas and the "geometric mean" term $R r$; forgetting the middle term is the standard error, and it produces an answer that is too small by about a third.
]

#worked-example(
  10,
  "Volume of a frustum",
  tier: "JAMB CHALLENGE",
  [A frustum of a cone has base radii $14$ cm and $7$ cm and height $9$ cm. Find its volume. (Take $pi = 22/7$.)],
  [
    *Step 1 — Evaluate the bracket.*

    $ R^2 + R r + r^2 = 196 + 98 + 49 = 343 $

    *Step 2 — Substitute.*

    $ V = 1/3 times 22/7 times 9 times 343 $

    *Simplify.* $343/7 = 49$ and $9/3 = 3$, so

    $ V = 22 times 3 times 49 = 3234 "cm"^3 $

    *The distractor.* Leaving out $R r$ gives $22/7 times 3 times 245 = 2310$ cm³, which appears in the options. The middle term is not optional: it accounts for the sloping sides.
  ],
)

#worked-example(
  11,
  "Similar solids: the cube law",
  tier: "JAMB CHALLENGE",
  [Two similar cylinders have heights in the ratio $2 : 3$. Find the ratio of their volumes and of their curved surface areas.],
  [
    *The law.* For similar solids with length ratio $k$: areas go as $k^2$ and volumes as $k^3$.

    *Volumes.*

    $ 2^3 : 3^3 = 8 : 27 $

    *Curved surface areas.*

    $ 2^2 : 3^2 = 4 : 9 $

    *Why.* Each linear dimension — radius *and* height — scales by $k$. Curved area $2 pi r h$ contains two lengths, so it scales by $k^2$; volume $pi r^2 h$ contains three, so by $k^3$.
  ],
)

#trap-box("Solid Mensuration: The Four Costliest Slips")[
  - *$1/3$ in the wrong place.* A cylinder has no $1/3$; a cone does. Check the shape before the arithmetic.
  - *Area versus volume formula.* $2 pi r h$ is an area (two lengths); $pi r^2 h$ is a volume (three). The units alone tell you which is which.
  - *Slant versus perpendicular height.* $l$ for curved area, $h$ for volume; obtain $l$ by Pythagoras when it is not given.
  - *Unit mismatch.* Metres and centimetres in one formula; litres and cm³ in one answer.
]

// ============================================================================
// SECTION 6.5
// ============================================================================
== 6.5 Chapter 6 Rapid-Revision Checklist

#table(
  columns: (1.25fr, 1.85fr, 1.55fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],
  ),
  ["volume of a cuboid"], ["$l b h$"], ["Surface area is a different question entirely."],
  ["total surface of a cuboid"], ["$2(l b + l h + b h)$"], ["Three different pairs."],
  ["volume of a cylinder"], ["$pi r^2 h$"], ["Not $2 pi r h$."],
  ["curved surface of a cylinder"], ["$2 pi r h$"], ["No ends; total adds $2 pi r^2$."],
  ["volume of a cone / pyramid"], ["$1/3 times$ base $times$ height"], ["$h$ is perpendicular, not slant."],
  ["total surface of a cone"], ["$pi r (r + l)$"], ["Find $l = sqrt(r^2 + h^2)$ first."],
  ["volume of a sphere"], ["$4/3 pi r^3$"], ["Cube the radius, not the diameter."],
  ["surface of a sphere"], ["$4 pi r^2$"], ["$4 pi r^2$, never $2 pi r^2$."],
  ["volume of a frustum"], ["$1/3 pi h (R^2 + R r + r^2)$"], ["The middle term $R r$ is compulsory."],
  ["sector folded into a cone"], ["arc $=$ base circumference; radius $= l$"], ["Two correspondences, no more."],
  ["similar solids"], ["Areas $k^2$, volumes $k^3$"], ["Not $k$ for either."],
  ["capacity in litres"], ["cm³ $-$: 1000"], ["Convert every length to cm first."],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 6 in One Breath]
  #v(3pt)
  Prisms and cylinders are base area times height with no fraction; pyramids and cones are the same with a factor $1/3$. A cone's curved area needs the slant height, and the slant height is Pythagoras on $r$ and $h$. A sphere is $4/3 pi r^3$ and $4 pi r^2$. A frustum is the cone formula extended to two radii, with the middle term $R r$ that candidates forget.
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the six solids, their volumes and their surface areas.", width: 76%)

// ============================================================================
== 6.6 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [Find the volume of a cylinder of radius $7$ cm and height $20$ cm. (Take $pi = 22/7$.)], [$3080$ cm³], [$880$ cm³], [$1540$ cm³], [$440$ cm³])

#mcq(2, [A cone has base radius $7$ cm and height $24$ cm. Find its slant height.], [$25$ cm], [$31$ cm], [$17$ cm], [$168$ cm])

#mcq(3, [Find the surface area of a sphere of radius $7$ cm. (Take $pi = 22/7$.)], [$616$ cm²], [$154$ cm²], [$308$ cm²], [$1232$ cm²])

#mcq(4, [Find the volume of a pyramid with a square base of side $6$ cm and height $10$ cm.], [$120$ cm³], [$360$ cm³], [$60$ cm³], [$600$ cm³])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $22/7 times 49 times 20 = 3080$; (2) $sqrt(49 + 576) = 25$; (3) $4 times 22/7 times 49 = 616$; (4) $1/3 times 36 times 10 = 120$.
  ]
]

// ============================================================================
#include "drill_ch06.typ"
