#import "template.typ": *

#current-chapter.update("Chapter 5: Plane Mensuration")
#pagebreak()

#chapter-opener(
  5,
  "Plane Mensuration",
  subtitle: "Perimeters and Areas of Rectangles, Triangles, Parallelograms, Trapeziums, Rhombi and Kites; Circumference, Arc Length, Sector Area and Segment Area; and Composite Figures",
  syllabus-ref: "Sec. III • Topic 5",
  utme-weight: "2–3 Qs every year",
)

#focus-radar(
  objectives: (
    "Compute the perimeter and area of every plane figure named in the syllabus.",
    "Use $pi = 22/7$ confidently with radii that are multiples of $7$.",
    "Find arc length, sector area, segment area and the perimeter of a sector.",
    "Break a composite figure into rectangles, triangles and sectors, and add the parts.",
    "Convert between units of area and use the results in practical contexts.",
  ),
  hotspots: (
    "Sector area and arc length with $pi = 22/7$ — the most frequent mensuration question in the paper.",
    "Perimeter of a sector, which needs the *two radii* added to the arc.",
    "Area of a trapezium with the parallel sides and the perpendicular height.",
    "Area of a rhombus from its diagonals, $1/2 d_1 d_2$.",
    "A composite shape made of a rectangle with a semicircle on one side.",
  ),
  trap-summary: "Three errors account for most lost marks. (1) Forgetting the two radii in the *perimeter* of a sector — the answer is not the arc length. (2) Using the diameter where the formula wants the radius; every circle formula is written in $r$, and a stem that quotes a diameter is testing exactly that. (3) Adding areas of a composite figure that overlaps, or leaving a hole unfilled — sketch the parts and mark each area before adding.",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 The Basic Area Formulae

#diagram-fig("diagrams/ch05_area_shapes.svg",
  "The standard plane figures with their area formulae: rectangle, triangle, parallelogram, trapezium, rhombus and circle.")

#formula-box("Every Plane Area You Need")[
  #table(
    columns: (1.2fr, 1.5fr, 1.5fr),
    inset: 5.5pt,
    align: (left + horizon, left + horizon, left + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Area],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Perimeter],
    [Square, side $a$], [$a^2$], [$4a$],
    [Rectangle, $l$ by $b$], [$l b$], [$2(l + b)$],
    [Triangle, base $b$, height $h$], [$1/2 b h$], [Sum of the three sides],
    [Parallelogram, base $b$, height $h$], [$b h$], [$2(a + b)$ for adjacent sides $a$, $b$],
    [Trapezium, parallel sides $a$, $b$], [$1/2 (a + b) h$], [Sum of the four sides],
    [Rhombus, diagonals $d_1$, $d_2$], [$1/2 d_1 d_2$], [$4 times "side"$],
    [Kite, diagonals $d_1$, $d_2$], [$1/2 d_1 d_2$], [Sum of the four sides],
    [Circle, radius $r$], [$pi r^2$], [$2 pi r$],
  )
]

#concept-box("Why the Parallelogram and the Trapezium Work")[
  Cut a right triangle from one end of a parallelogram and slide it to the other end: the figure becomes a rectangle of the same base and height, so the area is $b h$ — *not* $a b$ where $a$ is the sloping side.

  #v(3pt)
  Two copies of a trapezium fit together to make a parallelogram whose base is $a + b$ and whose height is $h$. Its area is $(a + b)h$, so one trapezium is *half* of that: $1/2 (a + b) h$.
]

#shortcut-box("Which Height?")[
  In every one of these formulae, $h$ is the *perpendicular* height — the straight-line distance between the parallel sides, not the sloping side.

  In a stem, the sloping side is usually given as a named length ("$A D = 5$ cm") while the height is described as "the distance between the parallels" or "the perpendicular height". If the stem gives only a sloping side and an angle, you need trigonometry to obtain $h$ — that is a Chapter 9 question in disguise.
]

#worked-example(
  1,
  "Rectangle and parallelogram",
  tier: "FOUNDATION",
  [Find the area and perimeter of (a) a rectangle $17$ cm by $7$ cm, (b) a parallelogram with base $12$ cm and perpendicular height $8$ cm.],
  [
    *(a) Rectangle.*

    $ A = l b = 17 times 7 = 119 "cm"^2, quad P = 2(17 + 7) = 48 "cm" $

    *(b) Parallelogram.*

    $ A = b h = 12 times 8 = 96 "cm"^2 $

    *The distinguishing point.* The rectangle's perimeter uses both dimensions, but the parallelogram's area uses the base and the *perpendicular* height. A distractor of $12 times 9$ (using a sloping side) is always present in the options for part (b).
  ],
)

#worked-example(
  2,
  "Trapezium from its parallel sides",
  tier: "UTME STANDARD",
  [A trapezium has parallel sides $8$ cm and $14$ cm and perpendicular height $6$ cm. Find its area.],
  [
    $ A = 1/2 (a + b) h = 1/2 (8 + 14) times 6 = 1/2 times 22 times 6 = 66 "cm"^2 $

    *Alternative view.* Split the trapezium into a rectangle $8 times 6 = 48$ and a triangle $1/2 times 6 times 6 = 18$; the total is $66$ cm² ✓. Doing the split is a good check in the exam because it uses only the rectangle and triangle formulae you already trust.
  ],
)

#worked-example(
  3,
  "Rhombus with a ratio of diagonals",
  tier: "JAMB CHALLENGE",
  [The diagonals of a rhombus are in the ratio $3 : 4$ and its area is $54$ cm². Find the length of each diagonal.],
  [
    *Step 1 — Let the diagonals be $3k$ and $4k$.*

    $ 1/2 (3k)(4k) = 54 quad arrow.r.double quad 6k^2 = 54 quad arrow.r.double quad k^2 = 9 quad arrow.r.double quad k = 3 $

    *Step 2 — Compute.*

    $ d_1 = 9 "cm", quad d_2 = 12 "cm" $

    *Check.* $1/2 times 9 times 12 = 54$ ✓. A ratio question about diagonals always reduces to a quadratic in $k$; because $k$ is a length, only the positive root is admissible.
  ],
)

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 The Circle: Circumference, Arc and Sector

#diagram-fig("diagrams/ch05_circle_measures.svg",
  "Radius, diameter, circumference, arc, chord, sector and segment on one figure, with the fraction $theta/360$ that connects each part to the whole circle.")

#formula-box("Circle, Arc and Sector")[
  With radius $r$ and central angle $theta$ in degrees:

  - Circumference: $C = 2 pi r = pi d$.
  - Area: $A = pi r^2$.
  - Arc length: $s = theta/360 times 2 pi r$.
  - Sector area: $A_"sector" = theta/360 times pi r^2$.
  - Perimeter of a sector: $p = s + 2r$.
  - Area of the chord triangle: $1/2 r^2 sin theta$; segment $=$ sector $-$ triangle.

  #v(3pt)
  Every arc and sector formula is the corresponding whole-circle formula multiplied by the fraction $theta/360$ — the sector is literally that fraction of the circle.
]

#shortcut-box("Choose the Radius So That $pi$ Cancels")[
  With $pi = 22/7$, the arithmetic is designed around radii that are multiples of $7$: $7$, $14$, $21$, $28$, $35$.

  - $r = 7$: $C = 44$, $A = 154$.
  - $r = 14$: $C = 88$, $A = 616$.
  - $r = 21$: $C = 132$, $A = 1386$.

  Learn those three pairs. They appear in the majority of circle questions, and knowing them turns a two-step calculation into a lookup.
]

#worked-example(
  4,
  "Circumference and area from a radius",
  tier: "FOUNDATION",
  [Find the circumference and area of a circle of radius $21$ cm. (Take $pi = 22/7$.)],
  [
    *Circumference.*

    $ C = 2 pi r = 2 times 22/7 times 21 = 2 times 22 times 3 = 132 "cm" $

    *Area.*

    $ A = pi r^2 = 22/7 times 441 = 22 times 63 = 1386 "cm"^2 $

    *Why the $7$ vanished.* $441 = 21 times 21$, and one of those factors cancels with the denominator $7$: $441/7 = 63$. Always cancel the $7$ *before* multiplying by $22$ — the numbers stay small and mistakes disappear.
  ],
)

#worked-example(
  5,
  "Radius from a circumference",
  tier: "UTME STANDARD",
  [The circumference of a circle is $132$ cm. Find its area. (Take $pi = 22/7$.)],
  [
    *Step 1 — Radius.*

    $ 2 pi r = 132 quad arrow.r.double quad 2 times 22/7 times r = 132 quad arrow.r.double quad r = 132 times 7/(44) = 21 "cm" $

    *Step 2 — Area.*

    $ A = pi r^2 = 22/7 times 441 = 1386 "cm"^2 $

    *Faster route.* Recognise $132$ as the circumference of $r = 21$ from the shortcut table, and jump straight to $1386$. In a timed paper, that is twenty seconds saved for a question that needs them.
  ],
)

#worked-example(
  6,
  "Arc length",
  tier: "UTME STANDARD",
  [Find the length of an arc of a circle of radius $14$ cm which subtends $60^degree$ at the centre. (Take $pi = 22/7$.)],
  [
    $ s = theta/360 times 2 pi r = 60/360 times 2 times 22/7 times 14 $

    *Simplify the fraction first.*

    $ 60/360 = 1/6, quad 2 times 22/7 times 14 = 88, quad "so" quad s = 88/6 = 44/3 "cm" $

    The arc is $frac(44, 3)$ cm $approx 14.7$ cm.

    *The distractor.* The full circumference $88$ cm is always offered. Read the stem: it asks for the *arc*, so the fraction $theta/360$ is compulsory.
  ],
)

#worked-example(
  7,
  "Sector area",
  tier: "UTME STANDARD",
  [Find the area of a sector of radius $7$ cm which subtends $120^degree$ at the centre. (Take $pi = 22/7$.)],
  [
    $ A = theta/360 times pi r^2 = 1/3 times 22/7 times 49 = 1/3 times 154 = 154/3 "cm"^2 $

    The sector is $frac(154, 3)$ cm² $approx 51.3$ cm².

    *The complementary check.* A $120^degree$ sector is one third of the circle, and the whole circle's area is $154$ cm²; one third of $154$ is $51.3$ ✓. This check catches the commonest error — forgetting to divide by $360$.
  ],
)

#worked-example(
  8,
  "Perimeter of a sector",
  tier: "UTME STANDARD",
  [Find the perimeter of a sector of radius $14$ cm with angle $90^degree$. (Take $pi = 22/7$.)],
  [
    *Step 1 — Arc.*

    $ s = 90/360 times 2 times 22/7 times 14 = 1/4 times 88 = 22 "cm" $

    *Step 2 — Add the two radii.*

    $ p = s + 2r = 22 + 28 = 50 "cm" $

    The perimeter is $50$ cm.

    *The most frequently lost mark in the topic.* More candidates write $22$ cm than $50$ cm, because they answer the arc-length question that was not asked. The boundary of a sector is an arc *and* two straight radii.
  ],
)

#worked-example(
  9,
  "Segment area",
  tier: "JAMB CHALLENGE",
  [A chord subtends $60^degree$ at the centre of a circle of radius $21$ cm. Find the area of the minor segment. (Take $pi = 22/7$, $sin 60^degree = sqrt(3)/2 approx 0.866$.)],
  [
    *Step 1 — Sector.*

    $ A_"sector" = 60/360 times 22/7 times 441 = 1/6 times 1386 = 231 "cm"^2 $

    *Step 2 — Triangle.*

    $ A_"triangle" = 1/2 r^2 sin 60^degree = 1/2 times 441 times 0.866 approx 190.9 "cm"^2 $

    *Step 3 — Subtract.*

    $ A_"segment" = 231 - 190.9 approx 40.1 "cm"^2 $

    The minor segment is about $40.1$ cm².

    *When the answer is not exact.* A segment question with a $60^degree$ angle produces a surd unless the stem gives a decimal for the sine. Take the value the stem provides; if none is given, leave the answer in terms of $sqrt(3)$ and look for that form among the options.
  ],
)

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 Composite Figures

A composite figure is two or more of the shapes above joined together. The method never changes: split the figure, compute each part, then add — or subtract, if the shape is a hole.

#diagram-fig("diagrams/ch05_composite_area.svg",
  "A composite figure split into a rectangle and a semicircle. The dashed line is the split; the area is the sum of the parts, and the perimeter follows the *outside* only.")

#concept-box("Three Rules for Composite Figures")[
  1. *Split along the simplest lines* — usually horizontal or vertical, producing rectangles and triangles.
  2. *Mark every part* with its own area before adding anything; unmarked parts get counted twice.
  3. *Perimeter follows the outside boundary only.* Internal split lines are not part of the perimeter, and that is the commonest composite-figure error.
]

#worked-example(
  10,
  "Rectangle with a semicircle",
  tier: "UTME STANDARD",
  [A shape consists of a rectangle $14$ cm by $10$ cm with a semicircle of diameter $14$ cm attached to one of its $14$ cm sides. Find the total area and the perimeter. (Take $pi = 22/7$.)],
  [
    *Step 1 — Radius of the semicircle.*

    $ r = 14/2 = 7 "cm" $

    *Step 2 — Areas.*

    $ A_"rectangle" = 14 times 10 = 140, quad A_"semicircle" = 1/2 times 22/7 times 49 = 77 $

    $ A_"total" = 140 + 77 = 217 "cm"^2 $

    *Step 3 — Perimeter.* Follow the outside only: three sides of the rectangle ($10 + 14 + 10$) plus the semicircular arc.

    $ "arc" = 1/2 times 2 times 22/7 times 7 = 22 "cm" $

    $ P = 10 + 14 + 10 + 22 = 56 "cm" $

    *The trap.* The side of the rectangle where the semicircle is attached is *inside* the figure and must not be counted — so the perimeter uses $14$ once, not twice, and it does not include the diameter of the semicircle either.
  ],
)

#worked-example(
  11,
  "A circle cut out of a square",
  tier: "JAMB CHALLENGE",
  [A circle of diameter $14$ cm is cut from a square of side $14$ cm. Find the area of the remaining shape. (Take $pi = 22/7$.)],
  [
    *Step 1 — Square.*

    $ A_"square" = 14 times 14 = 196 "cm"^2 $

    *Step 2 — Circle.* With $r = 7$:

    $ A_"circle" = 22/7 times 49 = 154 "cm"^2 $

    *Step 3 — Subtract.*

    $ A_"remaining" = 196 - 154 = 42 "cm"^2 $

    *Sanity check.* The four corner pieces left over are each about a quarter of the difference, so a little over $10$ cm² each — geometrically plausible for a square of side $14$ with an inscribed circle. Adding instead of subtracting gives $350$ cm², which is larger than the square itself and therefore impossible.
  ],
)

#worked-example(
  12,
  "A running track",
  tier: "JAMB CHALLENGE",
  [A running track consists of a rectangle $60$ m by $28$ m with a semicircle on each of its two $28$ m ends. Find the distance round the track and the area it encloses. (Take $pi = 22/7$.)],
  [
    *Step 1 — The two semicircles make one circle* of diameter $28$ m, so $r = 14$ m.

    *Step 2 — Distance round the track.* The two straight sides of the rectangle *and* the two arcs — the other two sides of the rectangle are inside the figure.

    $ "arcs" = 2 pi r = 2 times 22/7 times 14 = 88 "m" $

    $ P = 60 + 60 + 88 = 208 "m" $

    *Step 3 — Area.* Rectangle plus one full circle of radius $14$:

    $ A = 60 times 28 + 22/7 times 196 = 1680 + 616 = 2296 "m"^2 $

    *The structural trick.* Whenever a figure has a semicircle at *each* end, add them into a single whole circle before doing anything else. It halves the work and removes the commonest error, which is using $1/2 pi r^2$ twice and then forgetting one of them.
  ],
)

#trap-box("Composite Figure Errors Ranked by Cost")[
  - Counting an internal split line in the perimeter (costs the whole answer).
  - Adding two semicircles as though they were full circles *and* then adding the rectangle's full perimeter (double counting).
  - Using the diameter as the radius for the semicircle — a stem that says "diameter $14$ cm" is not saying "$r = 14$".
  - Mixing square centimetres and square metres in the final answer without converting.
]

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 Chapter 5 Rapid-Revision Checklist

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
  ["area of a parallelogram"], ["$b h$"], ["$h$ is perpendicular, not the sloping side."],
  ["area of a trapezium"], ["$1/2 (a + b) h$"], ["Both parallel sides are inside the bracket."],
  ["area of a rhombus / kite"], ["$1/2 d_1 d_2$"], ["Diagonals, and the half is compulsory."],
  ["circumference"], ["$2 pi r$ or $pi d$"], ["A quoted diameter must be halved first."],
  ["arc length"], ["$theta/360 times 2 pi r$"], ["Fraction of the *whole* circumference."],
  ["sector area"], ["$theta/360 times pi r^2$"], ["Fraction of the *whole* area."],
  ["perimeter of a sector"], ["arc $+ 2r$"], ["Two radii; the answer is not the arc."],
  ["area of a segment"], ["Sector $-$ triangle"], ["Triangle area is $1/2 r^2 sin theta$."],
  ["composite figure perimeter"], ["Outer boundary only"], ["Internal split lines do not count."],
  ["semicircle at each end"], ["Combine into one circle"], ["Then the boundary has two straight sides."],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 5 in One Breath]
  #v(3pt)
  Every plane area in the syllabus is a rectangle, a half-rectangle, or a rectangle with a fraction of a circle added. The trapezium and the rhombus are the only two formulae that need memorising as such. For anything circular, the fraction $theta/360$ converts a whole-circle formula into an arc or a sector, and the perimeter of a sector always adds two radii.
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the area formulae and the circle fractions.", width: 76%)

// ============================================================================
== 5.5 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [Find the area of a trapezium with parallel sides $9$ cm and $13$ cm and height $6$ cm.], [$66$ cm²], [$132$ cm²], [$33$ cm²], [$117$ cm²])

#mcq(2, [Find the perimeter of a sector of radius $7$ cm with angle $90^degree$. (Take $pi = 22/7$.)], [$25$ cm], [$11$ cm], [$18$ cm], [$22$ cm])

#mcq(3, [The area of a circle is $154$ cm². Find its radius. (Take $pi = 22/7$.)], [$7$ cm], [$14$ cm], [$49$ cm], [$11$ cm])

#mcq(4, [Find the area of a rhombus whose diagonals are $10$ cm and $14$ cm.], [$70$ cm²], [$140$ cm²], [$24$ cm²], [$35$ cm²])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $1/2 (22)(6) = 66$; (2) arc $11$ + two radii $14 = 25$; (3) $22/7 r^2 = 154 arrow.r.double r^2 = 49$; (4) $1/2 (10)(14) = 70$.
  ]
]

// ============================================================================
#include "drill_ch05.typ"
