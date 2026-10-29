#import "template.typ": *

#current-chapter.update("Chapter 1: Angles, Lines and Polygons")
#pagebreak()

#chapter-opener(
  1,
  "Angles, Lines and Polygons",
  subtitle: "Angle Types, Angles at a Point, Parallel Lines and Transversals, Interior and Exterior Angles of Polygons, and the Regular-Polygon Formulae",
  syllabus-ref: "Sec. III • Topic 1",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Name and classify angles: acute, right, obtuse, straight, reflex and complete.",
    "Apply the angle facts at a point, on a straight line and between two intersecting lines.",
    "Use corresponding, alternate and co-interior angles on parallel lines — and justify each with a reason.",
    "Find the sum of the interior angles of any polygon, and the size of each angle of a regular polygon.",
    "Use the exterior angle of a polygon, including the fact that exterior angles of any convex polygon sum to $360^degree$.",
  ),
  hotspots: (
    "\"Find each interior angle of a regular polygon with $n$ sides\" — the single most frequent Section III question.",
    "\"The interior angle of a regular polygon is $x^degree$; how many sides?\" — the reverse question, solved by $360 -: (180 - x)$.",
    "Two parallel lines with a transversal, where the answer is one subtraction from $180^degree$.",
    "Three or four angles meeting at a point, summing to $360^degree$.",
    "Co-interior (allied) angles, which *add to* $180^degree$ — not equal, and not supplementary to $360^degree$.",
  ),
  trap-summary: "Three slips account for almost every lost mark here. (1) Treating co-interior angles as equal — they sum to $180^degree$, so you must subtract. (2) Using the *interior* formula when the question asked for the *exterior* angle, or the reverse: interior $= 180^degree -$ exterior. (3) Forgetting that the exterior angles of any polygon sum to exactly $360^degree$, whatever the number of sides.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 The Vocabulary of Angles

An angle is a measure of turn. The word is used in three slightly different ways in the syllabus, and JAMB relies on you knowing which is which:

- the *turn between two lines that meet*, measured in degrees;
- the *corner of a polygon*, called an interior angle;
- the *turn you make when you walk around a polygon*, called an exterior angle.

All three are measured in degrees, and $360^degree$ is one complete turn. The classification below is examinable in its own right — a question that asks "what type of angle is $196^degree$?" is worth a mark, and candidates lose it every year by answering "obtuse".

#diagram-fig("diagrams/ch01_angle_types.svg",
  "Five of the six angle types. Note that a reflex angle is greater than $180^degree$ but less than $360^degree$ — the trap is calling it obtuse.")

#concept-box("The Six Angle Types, With the Boundary Cases")[
  #table(
    columns: (1.1fr, auto, 1.9fr),
    inset: 5.5pt,
    align: (left + horizon, center + horizon, left + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Size],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Exam note],
    [Acute], [$0^degree < theta < 90^degree$], [Strictly less than $90^degree$; $90^degree$ itself is right, not acute.],
    [Right], [$theta = 90^degree$], [Marked with a small square, not an arc.],
    [Obtuse], [$90^degree < theta < 180^degree$], [The commonest distractor range in angle questions.],
    [Straight], [$theta = 180^degree$], [Two right angles; the basis of "angles on a straight line".],
    [Reflex], [$180^degree < theta < 360^degree$], [Always drawn with an arrow going the long way round.],
    [Complete], [$theta = 360^degree$], [One full revolution; the basis of "angles at a point".],
  )
]

Two angles that add to $90^degree$ are *complementary*; two that add to $180^degree$ are *supplementary*. These words appear in UTME stems ("the complement of $37^degree$ is …") and are worth memorising in that order: *c*omplement goes with *c*orner of a square, $90^degree$; *s*upplementary with a *s*traight line, $180^degree$.

#worked-example(
  1,
  "Classifying and completing angles",
  tier: "FOUNDATION",
  [State the type of each angle, and find (a) the complement of $34^degree$, (b) the supplement of $112^degree$.],
  [
    *Types.* $34^degree$ is acute; $112^degree$ is obtuse; $196^degree$ is reflex; $90^degree$ is right.

    *Complement.* Two angles are complementary when they add to $90^degree$:

    $ 90^degree - 34^degree = 56^degree $

    *Supplement.* Two angles are supplementary when they add to $180^degree$:

    $ 180^degree - 112^degree = 68^degree $

    Notice the pattern: "find the complement" is always a subtraction from $90^degree$; "find the supplement" is always a subtraction from $180^degree$. If the given angle is larger than $90^degree$, it has *no* complement — a favourite trick option.
  ],
)

#shortcut-box("Complement and Supplement in One Line")[
  - Complement $= 90^degree - theta$, and exists only when $theta < 90^degree$.
  - Supplement $= 180^degree - theta$, and exists only when $theta < 180^degree$.
  - If a stem says "the complement of an angle is three times the angle", write $90^degree - theta = 3 theta$, so $4 theta = 90^degree$ and $theta = 22.5^degree$. Never guess-and-check; the algebra takes eight seconds.
]

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 Angles at a Point and on a Straight Line

Three facts generate almost every angle-chase question in the paper.

#formula-box("The Three Angle Facts")[
  - *Angles on a straight line* add to $180^degree$. (Also called angles on a line, or a linear pair.)
  - *Angles at a point* add to $360^degree$.
  - *Angles vertically opposite* are equal — formed by two straight lines crossing.

  #v(3pt)
  In symbols, if $a$, $b$ and $c$ lie on one straight line, then $a + b + c = 180^degree$; if four angles meet at a point, their sum is $360^degree$; and if two lines cross, the two "opposite" angles are equal.
]

The *reason* matters as much as the answer in a rider question, because JAMB sometimes offers the right number with the wrong reason as a distractor in theory questions. Read each fact as a sentence you could write under a diagram:

#table(
  columns: (1.35fr, 1.55fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Picture],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Fact],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Written reason],
  ),
  [Angles on one side of a line], [$a + b = 180^degree$], [angles on a straight line],
  [Angles round a full turn], [$a + b + c = 360^degree$], [angles at a point],
  [Two lines crossing], [$a = c$], [vertically opposite angles],
  [Two lines crossing], [$a + b = 180^degree$], [angles on a straight line],
  [Right angle split in two], [$a + b = 90^degree$], [complementary angles],
)

#worked-example(
  2,
  "Three angles on a straight line",
  tier: "FOUNDATION",
  [Three angles lie on a straight line and measure $48^degree$, $73^degree$ and $x^degree$. Find $x$.],
  [
    *Name the fact.* The three angles together make one straight line, so they add to $180^degree$.

    *Write the equation.*

    $ 48 + 73 + x = 180 $

    *Simplify and solve.*

    $ 121 + x = 180 quad arrow.r.double quad x = 59 $

    So $x = 59^degree$. A useful check: the three numbers must be positive and each must look plausible against the sketch. If you had added to $360^degree$ you would have obtained $239^degree$, which is reflex — an immediate signal that you used the wrong fact.
  ],
)

#worked-example(
  3,
  "Four angles at a point",
  tier: "UTME STANDARD",
  [Four angles meet at a point. Three of them are $112^degree$, $86^degree$ and $95^degree$. Find the fourth.],
  [
    *Name the fact.* Angles at a point add to $360^degree$.

    *Add the three known angles.*

    $ 112 + 86 + 95 = 293 $

    *Subtract from $360^degree$.*

    $ 360 - 293 = 67 $

    The fourth angle is $67^degree$.

    *Why not $180^degree$?* Because the angles go all the way round the point, not along one side of a line. The quickest way to tell the two cases apart is to look at the diagram: if the four angles fill the whole space around the point, it is $360^degree$; if they all sit above one straight line, it is $180^degree$.
  ],
)

#worked-example(
  4,
  "Vertically opposite angles with a ratio",
  tier: "JAMB CHALLENGE",
  [Two straight lines intersect. One pair of vertically opposite angles is in the ratio $2 : 3$ with an adjacent angle in the ratio $3 : 4$. Find all four angles.],
  [
    *Name the fact.* Vertically opposite angles are equal, and adjacent angles on a straight line add to $180^degree$. So the four angles are really just two: call them $2k$ and $3k$.

    *Write the equation for a linear pair.*

    $ 2k + 3k = 180 quad arrow.r.double quad 5k = 180 quad arrow.r.double quad k = 36 $

    *Compute the four angles.* The pair measuring $2k = 72^degree$ occurs twice (vertically opposite), and the pair measuring $3k = 108^degree$ occurs twice.

    So the angles are $72^degree$, $108^degree$, $72^degree$ and $108^degree$.

    *Check.* $72 + 108 = 180$ ✓ and $72 + 108 + 72 + 108 = 360$ ✓. A ratio in an angle question almost always means "let the parts be $k$ and solve a linear equation" — do not try to guess the numbers.
  ],
)

#trap-box("The Distractor Built From a Wrong Sum")[
  In a four-angle question JAMB will print the answer you get by subtracting from $180^degree$ as well as the correct answer from $360^degree$. Both look reasonable; only one fits the diagram.

  Read the stem for the phrase that decides it: "at a point" or "round a point" means $360^degree$; "on a straight line" or "on a line" means $180^degree$. When the stem is silent, the figure decides — and if there is no figure, the phrase "meet at a point" decides.
]

// ============================================================================
// SECTION 1.3
// ============================================================================
== 1.3 Parallel Lines and a Transversal

Two parallel lines crossed by a third line (the *transversal*) create eight angles, and only two facts are needed to find every one of them.

#diagram-fig("diagrams/ch01_parallel_lines.svg",
  "Eight angles from two parallel lines and a transversal. Corresponding angles are in the same position at each crossing; alternate angles are on opposite sides of the transversal; co-interior angles are on the same side, between the parallels.")

#formula-box("The Three Parallel-Line Facts")[
  - *Corresponding angles* are *equal*. (Same position at each crossing — both "top-right", for example. Sometimes called F-angles.)
  - *Alternate angles* are *equal*. (Opposite sides of the transversal, between the parallels. Z-angles.)
  - *Co-interior angles* are *supplementary*: they add to $180^degree$. (Same side of the transversal, between the parallels. C-angles, also called allied angles.)

  #v(3pt)
  All three are consequences of one fact — corresponding angles are equal — which itself follows from the parallel postulate. JAMB only ever asks you to *use* them.
]

The letters F, Z and C are the fastest way to recognise which fact applies. Trace the path of the two parallel segments and the transversal with your finger:

- the *F* shape gives *equal* angles at the two ends of the middle stroke;
- the *Z* shape gives *equal* angles at the two ends of the middle stroke;
- the *C* (or U) shape gives *supplementary* angles — these are the only ones that are *not* equal.

#worked-example(
  5,
  "One angle given, five to find",
  tier: "FOUNDATION",
  [In the figure, two parallel lines are cut by a transversal and one angle is $68^degree$. Find the alternate angle to it, the corresponding angle to it, and the co-interior angle to it.],
  [
    *Alternate.* Alternate angles are *equal*, so the alternate angle is also $68^degree$.

    *Corresponding.* Corresponding angles are *equal*, so the corresponding angle is also $68^degree$.

    *Co-interior.* Co-interior angles are *supplementary*:

    $ 180^degree - 68^degree = 112^degree $

    So of the eight angles in the figure, four measure $68^degree$ and four measure $112^degree$. That is always true: the eight angles split into two equal sets of four, and the two values add to $180^degree$.
  ],
)

#worked-example(
  6,
  "Two angles in a ratio on parallel lines",
  tier: "UTME STANDARD",
  [Two parallel lines are cut by a transversal. A pair of co-interior angles are in the ratio $3 : 7$. Find the larger angle.],
  [
    *Name the fact.* Co-interior angles add to $180^degree$.

    *Let the parts be $k$.* The angles are $3k$ and $7k$.

    $ 3k + 7k = 180 quad arrow.r.double quad 10k = 180 quad arrow.r.double quad k = 18 $

    *Compute.* The angles are $3(18) = 54^degree$ and $7(18) = 126^degree$. The larger angle is $126^degree$.

    *Check.* $54 + 126 = 180$ ✓. Notice how quickly the ratio collapsed: a ratio question is a one-line equation, and the "larger angle" wording is there to stop you writing both numbers as the answer.
  ],
)

#worked-example(
  7,
  "An angle-chase with three steps",
  tier: "JAMB CHALLENGE",
  [In the figure, $A B$ is parallel to $C D$ and $E F$ is a transversal meeting $A B$ at $E$ and $C D$ at $F$. The angle $A E F = 118^degree$. Find the angle $E F D$ and the angle $E F C$.],
  [
    *Draw and mark.* Sketch two horizontal parallels with a transversal sloping down to the right, and write $118^degree$ at the top-left crossing.

    *Step 1 — Co-interior.* $angle A E F$ and $angle E F D$ lie on the same side of the transversal, between the parallels, so

    $ angle E F D = 180^degree - 118^degree = 62^degree $

    *Step 2 — Straight line.* $angle E F C$ and $angle E F D$ lie on the straight line $C D$, so

    $ angle E F C = 180^degree - 62^degree = 118^degree $

    *Step 3 — Check against a known fact.* $angle E F C$ should equal $angle A E F$ because they are alternate angles between the parallels. It does: both are $118^degree$ ✓.

    The lesson is the check in Step 3: after a two-step chase, confirm the result with a *different* parallel-line fact. If the two disagree, one of your earlier subtractions used the wrong sum.
  ],
)

#shortcut-box("The Eight-Angle Shortcut")[
  With two parallel lines and a transversal there are only two numbers in the figure, and they add to $180^degree$. Find one, and you have found all eight.

  - Every *acute* angle in the figure has the same size.
  - Every *obtuse* angle in the figure has the same size.
  - The two sizes add to $180^degree$.

  So if a stem gives an obtuse angle of $104^degree$, every obtuse angle is $104^degree$ and every acute angle is $76^degree$ — no need to decide whether a particular pair is alternate or co-interior.
]

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 Interior and Exterior Angles of Polygons

A polygon with $n$ sides can always be cut into $n - 2$ triangles by drawing diagonals from one vertex. Each triangle contributes $180^degree$, which gives the most important formula in this chapter.

#diagram-fig("diagrams/ch01_polygon_table.svg",
  "The same triangulation applied to a quadrilateral, pentagon and hexagon: $2$, $3$ and $4$ triangles respectively, so the interior sums are $360^degree$, $540^degree$ and $720^degree$.")

#formula-box("The Polygon Formulae")[
  *Sum of interior angles* of an $n$-sided polygon:

  $ "Interior sum" = (n - 2) times 180^degree $

  *Each interior angle* of a *regular* polygon (all sides and all angles equal):

  $ "Each interior" = ((n - 2) times 180^degree)/n $

  *Sum of exterior angles* of any convex polygon, regular or not:

  $ "Exterior sum" = 360^degree $

  *Each exterior angle* of a regular polygon:

  $ "Each exterior" = 360^degree/n $

  and therefore

  $ "Each interior" = 180^degree - 360^degree/n $
]

The last line is the one candidates forget, yet it is the fastest route to an answer. On a straight line, an interior angle and the exterior angle beside it add to $180^degree$. So once you know the exterior angle, you get the interior one by a single subtraction — and vice versa.

#worked-example(
  8,
  "Interior sum of a decagon",
  tier: "FOUNDATION",
  [Find the sum of the interior angles of a polygon with $10$ sides.],
  [
    *Substitute into the formula* with $n = 10$:

    $ (n - 2) times 180^degree = 8 times 180^degree = 1440^degree $

    The interior angles of a decagon add to $1440^degree$.

    *Sanity check.* The sum must be a multiple of $180^degree$, and it must grow with $n$: $360^degree$ (quadrilateral), $540^degree$ (pentagon), $720^degree$ (hexagon), $900^degree$, $1080^degree$, $1260^degree$, $1440^degree$ … A distractor that is not a multiple of $180^degree$ can be eliminated on sight.
  ],
)

#worked-example(
  9,
  "Each angle of a regular polygon",
  tier: "UTME STANDARD",
  [Find each interior angle of a regular polygon with $12$ sides.],
  [
    *Method 1 — interior formula.*

    $ ((12 - 2) times 180^degree)/12 = (10 times 180^degree)/12 = 1800/12 = 150^degree $

    *Method 2 — exterior first.* Each exterior angle is

    $ 360^degree/12 = 30^degree $

    and the interior angle beside it is

    $ 180^degree - 30^degree = 150^degree $

    Both methods must give the same answer; if they do not, you have mis-typed $n$. In the exam, Method 2 is faster whenever $360$ divides easily by $n$ — which it usually does, because JAMB chooses $n$ from $3, 4, 6, 8, 9, 10, 12, 15, 18, 20, 24, 30, 36$.
  ],
)

#worked-example(
  10,
  "The reverse question: sides from an angle",
  tier: "UTME STANDARD",
  [The interior angle of a regular polygon is $144^degree$. How many sides has the polygon?],
  [
    *Step 1 — Find the exterior angle.* Interior and exterior angles on a straight line are supplementary:

    $ "Exterior" = 180^degree - 144^degree = 36^degree $

    *Step 2 — Use the exterior sum.* All the exterior angles together make $360^degree$, so with $n$ sides

    $ 36 n = 360 quad arrow.r.double quad n = 10 $

    The polygon is a regular decagon.

    *Faster route.* $n = 360 -: (180 - 144) = 360 -: 36 = 10$. Learn this as a single formula: $n = 360/(180 - "interior")$. It converts the commonest reverse question into one keystroke.
  ],
)

#worked-example(
  11,
  "Exterior angles with an unknown",
  tier: "JAMB CHALLENGE",
  [The exterior angles of a pentagon are $x^degree$, $2x^degree$, $3x^degree$, $4x^degree$ and $5x^degree$. Find the largest exterior angle and the largest interior angle.],
  [
    *Name the fact.* The exterior angles of any convex polygon add to $360^degree$, so

    $ x + 2x + 3x + 4x + 5x = 360 quad arrow.r.double quad 15x = 360 quad arrow.r.double quad x = 24 $

    *Largest exterior.* $5x = 120^degree$.

    *Largest interior.* The interior angle on the same straight line is

    $ 180^degree - 120^degree = 60^degree $

    So the largest exterior angle is $120^degree$ and the corresponding interior angle is $60^degree$.

    *A caution.* The largest exterior angle corresponds to the *smallest* interior angle, not the largest. If the question asks for the largest *interior* angle, you need the smallest exterior angle, which is $x = 24^degree$, giving an interior angle of $156^degree$. Read the stem twice — this reversal is exactly the kind of detail JAMB builds an option from.
  ],
)

#worked-example(
  12,
  "A regular polygon and an equilateral triangle",
  tier: "JAMB CHALLENGE",
  [A regular polygon has each exterior angle equal to $24^degree$. Another regular polygon has three times as many sides. Find the interior angle of the second polygon.],
  [
    *First polygon.*

    $ n_1 = 360/24 = 15 "sides" $

    *Second polygon.* Three times as many sides:

    $ n_2 = 45 "sides" $

    *Interior angle of the second.*

    $ 180^degree - 360^degree/45 = 180^degree - 8^degree = 172^degree $

    The second polygon is a regular 45-gon with interior angles of $172^degree$. Notice that as $n$ grows the interior angle approaches $180^degree$ but never reaches it: no polygon can have an interior angle of exactly $180^degree$, because then it would be a straight line rather than a closed figure.
  ],
)

#concept-box("Why the Exterior Sum Is Always $360^degree$")[
  Imagine walking around the polygon, always facing the direction you are moving. At each vertex you *turn* through the exterior angle. When you arrive back at your starting point you are facing the same way you started — so you have turned through exactly one full revolution, $360^degree$, no matter how many sides the polygon has.

  #v(3pt)
  This is why the exterior sum does not depend on $n$: a triangle, a decagon and a 100-gon all require one complete turn. It is also why a polygon cannot have an exterior angle of $0^degree$ (you would never turn and never close the figure) or a total exterior angle greater than $360^degree$.
]

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Polygon],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[$n$],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Interior sum],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Each interior (regular)],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Each exterior (regular)],
  ),
  [Triangle], [3], [$180^degree$], [$60^degree$], [$120^degree$],
  [Quadrilateral], [4], [$360^degree$], [$90^degree$], [$90^degree$],
  [Pentagon], [5], [$540^degree$], [$108^degree$], [$72^degree$],
  [Hexagon], [6], [$720^degree$], [$120^degree$], [$60^degree$],
  [Octagon], [8], [$1080^degree$], [$135^degree$], [$45^degree$],
  [Nonagon], [9], [$1260^degree$], [$140^degree$], [$40^degree$],
  [Decagon], [10], [$1440^degree$], [$144^degree$], [$36^degree$],
  [Dodecagon], [12], [$1800^degree$], [$150^degree$], [$30^degree$],
  [15-gon], [15], [$2340^degree$], [$156^degree$], [$24^degree$],
  [18-gon], [18], [$2880^degree$], [$160^degree$], [$20^degree$],
  [20-gon], [20], [$3240^degree$], [$162^degree$], [$18^degree$],
)

#shortcut-box("Recognise the Regular Polygon From Its Angle")[
  Certain interior angles appear again and again in UTME. Learn the table above as a set of *landmarks*:

  - $60^degree$ → equilateral triangle ($3$ sides)
  - $90^degree$ → square ($4$)
  - $108^degree$ → regular pentagon ($5$)
  - $120^degree$ → regular hexagon ($6$) — also the angle of an equilateral triangle *tessellation* vertex
  - $135^degree$ → regular octagon ($8$)
  - $144^degree$ → regular decagon ($10$)
  - $150^degree$ → regular dodecagon ($12$)

  If a stem quotes one of these numbers, you can name the polygon without any calculation at all — and that saves twenty seconds for the questions that need them.
]

// ============================================================================
// SECTION 1.5
// ============================================================================
== 1.5 Quadrilaterals: Angles Plus Names

Every quadrilateral has an interior angle sum of $360^degree$, and the special quadrilaterals add their own angle facts. JAMB mixes the two.

#table(
  columns: (1.1fr, 1.5fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Angle facts],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Trap],
  ),
  [Parallelogram], [Opposite angles equal; adjacent angles supplementary], [Not all four equal unless it is a rectangle],
  [Rectangle], [All four angles $90^degree$; diagonals equal], [Diagonals are *not* perpendicular],
  [Rhombus], [Opposite angles equal; diagonals bisect at $90^degree$], [Angles are not $90^degree$ in general],
  [Square], [Everything above], [The only quadrilateral that is all four at once],
  [Trapezium], [One pair of parallel sides; co-interior angles on each leg], [Adjacent angles on a leg add to $180^degree$],
  [Kite], [One pair of opposite angles equal], [The equal angles are between unequal sides],
)

#worked-example(
  13,
  "Angles of a parallelogram",
  tier: "UTME STANDARD",
  [In a parallelogram, one angle is $64^degree$. Find the other three angles.],
  [
    *Opposite angle.* Opposite angles of a parallelogram are equal, so the angle opposite $64^degree$ is also $64^degree$.

    *Adjacent angles.* Adjacent angles of a parallelogram are supplementary (they are co-interior angles between the parallel sides):

    $ 180^degree - 64^degree = 116^degree $

    So the four angles are $64^degree$, $116^degree$, $64^degree$ and $116^degree$.

    *Check.* $64 + 116 + 64 + 116 = 360$ ✓ — the quadrilateral sum, which every parallelogram must satisfy.
  ],
)

#worked-example(
  14,
  "A trapezium with two unknowns",
  tier: "JAMB CHALLENGE",
  [In a trapezium $A B C D$ with $A B$ parallel to $D C$, the angles at $A$ and $D$ are in the ratio $2 : 3$ and the angles at $B$ and $C$ are in the ratio $4 : 5$. Find all four angles.],
  [
    *Name the facts.* $A B$ is parallel to $D C$, so $A$ and $D$ are co-interior (they lie on the leg $A D$) and therefore supplementary; likewise $B$ and $C$.

    *Solve the first pair.*

    $ 2k + 3k = 180 quad arrow.r.double quad 5k = 180 quad arrow.r.double quad k = 36 $

    So $A = 72^degree$ and $D = 108^degree$.

    *Solve the second pair.*

    $ 4m + 5m = 180 quad arrow.r.double quad 9m = 180 quad arrow.r.double quad m = 20 $

    So $B = 80^degree$ and $C = 100^degree$.

    *Check the quadrilateral sum.*

    $ 72 + 80 + 100 + 108 = 360 $ ✓

    Two separate ratios, two separate equations — do not try to force a single $k$ across both pairs.
  ],
)

// ============================================================================
// SECTION 1.6
// ============================================================================
== 1.6 Chapter 1 Rapid-Revision Checklist

#table(
  columns: (1.2fr, 1.9fr, 1.5fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],
  ),
  [ find the complement / supplement ], [ Subtract from $90^degree$ / $180^degree$. ], [ No complement exists above $90^degree$. ],
  [ angles on a straight line ], [ Add to $180^degree$. ], [ Read whether they sit above one line. ],
  [ angles at a point ], [ Add to $360^degree$. ], [ The distractors subtract from $180^degree$. ],
  [ vertically opposite ], [ Equal. ], [ Adjacent angles still add to $180^degree$. ],
  [ parallel lines, one angle given ], [ The eight angles take only two values. ], [ Co-interior is the only *supplementary* pair. ],
  [ sum of interior angles ], [ $(n - 2) times 180^degree$. ], [ $n$ is the number of sides, not the number of angles asked for. ],
  [ each interior angle, regular ], [ $((n - 2) times 180^degree)/n$. ], [ Regular means all angles equal — check the word. ],
  [ interior given, find $n$ ], ["$n = 360/(180 - "interior")$."], [ Subtract *before* dividing. ],
  [ exterior angles given as expressions ], [ Set the sum equal to $360^degree$. ], [ The largest exterior gives the *smallest* interior. ],
  [ quadrilateral with special angles ], [ Interior sum is $360^degree$. ], [ Use the shape's own facts first, then the sum to check. ],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 1 in One Breath]
  #v(3pt)
  Angles on a line make $180^degree$; at a point, $360^degree$; crossing lines make equal opposites. Between parallels, everything is either equal or supplementary, and only co-interior pairs are supplementary. A polygon's interior angles sum to $(n - 2) times 180^degree$, its exterior angles always to $360^degree$, and in a regular polygon those two facts are enough to move in either direction between the angle and the number of sides.
]


#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the six angle facts and the two polygon formulae, on one page.", width: 76%)

== 1.7 Chapter 1 in the Exam Hall — a Two-Minute Set

Close the book and time yourself for two minutes. Each of these is a template you will meet again; if one takes longer than forty seconds, re-read the section named beside it.

#mcq(1, [Two angles on a straight line are $46^degree$ and $67^degree$. Find the third.], [$67^degree$], [$113^degree$], [$247^degree$], [$203^degree$])

#mcq(2, [Find each exterior angle of a regular polygon with $12$ sides.], [$30^degree$], [$150^degree$], [$24^degree$], [$36^degree$])

#mcq(3, [The interior angle of a regular polygon is $156^degree$. Find the number of sides.], [$15$], [$18$], [$12$], [$20$])

#mcq(4, [Two parallel lines are cut by a transversal. One co-interior angle is $127^degree$. Find the other.], [$53^degree$], [$127^degree$], [$233^degree$], [$73^degree$])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $180 - 46 - 67 = 67^degree$; (2) $360 -: 12 = 30^degree$; (3) $360 -: (180 - 156) = 360 -: 24 = 15$; (4) $180 - 127 = 53^degree$.
  ]
]

#v(3pt)

If you scored four out of four in under two minutes, Chapter 1 is secure and you should go straight to the drill. If you dropped even one, the cause is almost always the same: reaching for the calculator before naming the fact. Say the fact first — "co-interior angles are supplementary" — and the arithmetic is trivial.


// ============================================================================
#include "drill_ch01.typ"
