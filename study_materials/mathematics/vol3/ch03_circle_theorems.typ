#import "template.typ": *

#current-chapter.update("Chapter 3: Circle Theorems")
#pagebreak()

#chapter-opener(
  3,
  "Circle Theorems",
  subtitle: "Parts of a Circle, the Angle at the Centre, Angles in a Semicircle and in the Same Segment, Cyclic Quadrilaterals, the Tangent–Radius Theorem, the Alternate Segment Theorem and Chords",
  syllabus-ref: "Sec. III • Topic 3",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the parts of a circle: centre, radius, diameter, chord, arc, sector, segment, tangent and secant.",
    "Use the angle-at-the-centre theorem and its consequence for angles in the same segment.",
    "Recognise and use the angle in a semicircle.",
    "Use the cyclic-quadrilateral theorem and the exterior angle of a cyclic quadrilateral.",
    "Apply the tangent–radius theorem, the equal-tangents theorem, the alternate segment theorem and the chord bisector.",
  ),
  hotspots: (
    "\"An arc subtends $x^degree$ at the centre; find the angle at the circumference\" — one halving.",
    "\"One angle of a cyclic quadrilateral is $x^degree$\" — one subtraction from $180^degree$.",
    "\"A chord of radius $r$ is $d$ from the centre\" — a chord-and-radius Pythagoras question.",
    "The angle between a tangent and a chord, equal to the angle in the alternate segment.",
    "Two tangents from an external point: equal lengths, and the angle between them supplementary to the angle at the centre.",
  ),
  trap-summary: "The two recurring slips are doubling where you should halve (angle at centre versus angle at circumference), and using $360^degree - x$ where the cyclic-quadrilateral theorem requires $180^degree - x$. In a chord question the third slip is using the *full* chord where Pythagoras needs half of it — always halve the chord before you square.",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 The Anatomy of a Circle

Every circle theorem is stated in the vocabulary of the figure below, and JAMB does test the vocabulary directly — a question that asks "the region bounded by a chord and an arc is called a …" is an easy mark for a candidate who has read this page.

#diagram-fig("diagrams/ch03_circle_parts.svg",
  "The parts of a circle: radius, diameter, chord, arc, sector, segment, tangent and secant. A *sector* is between two radii; a *segment* is between a chord and an arc.")

#concept-box("Nine Words You Must Not Confuse")[
  #table(
    columns: (auto, 1.7fr),
    inset: 5pt,
    align: (left + horizon, left + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Definition],
    [Chord], [A straight line joining two points on the circle — the diameter is the longest chord.],
    [Arc], [A part of the circumference; the *minor* arc is the shorter one.],
    [Sector], [The region between two radii and an arc — a "pizza slice".],
    [Segment], [The region between a chord and an arc — a "cut-off cap".],
    [Tangent], [A line touching the circle at exactly one point, the point of contact.],
    [Secant], [A line cutting the circle at two points; it contains a chord.],
    [Subtend], [An arc *subtends* the angle at a point if the angle's arms pass through the arc's ends.],
    [Cyclic], [A polygon is cyclic when all its vertices lie on one circle.],
    [Concyclic], [Points lying on one circle are concyclic.],
  )
]

#shortcut-box("Sector or Segment?")[
  The letter decides it: a *s*ector is bounded by two *s*traight radii, and a *s*egment by a *s*traight chord. Both are finished off by an arc.

  Practically, this matters for area: sector area is $theta/360 times pi r^2$; segment area is sector area *minus* the triangle formed by the two radii and the chord, which is why a segment question is always a two-step question.
]

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 Angle at the Centre and Angle at the Circumference

This is the parent theorem: the other angle theorems in the circle can all be derived from it.

#diagram-fig("diagrams/ch03_angle_at_centre.svg",
  "The angle subtended by the same arc at the centre is twice the angle subtended at any point on the remaining part of the circumference. Both angles stand on the same arc $A B$.")

#formula-box("The Angle-at-the-Centre Theorem")[
  The angle subtended by an arc at the *centre* is twice the angle it subtends at the *circumference*:

  $ angle A O B = 2 times angle A P B $

  Three consequences you will use constantly:

  - Angles in the same segment are equal (every circumference angle standing on the same arc is half the same central angle).
  - The angle in a semicircle is $90^degree$ (the central angle is $180^degree$).
  - If the central angle is reflex, the circumference angle is half of the *reflex* angle, so it can be obtuse.
]

#worked-example(
  1,
  "Centre given, circumference required",
  tier: "FOUNDATION",
  [An arc subtends $60^degree$ at the centre of a circle. Find the angle it subtends at the circumference.],
  [
    *Name the theorem.* The central angle is twice the circumference angle, so the circumference angle is half the central angle.

    $ angle "at circumference" = 60^degree/2 = 30^degree $

    The answer is $30^degree$.

    *Why halve?* Because every point on the major arc sees the same arc under half the central angle. The single most common error is doubling instead of halving — check by asking which angle is "closer" to the arc: the centre one is, and it is the larger.
  ],
)

#worked-example(
  2,
  "Circumference given, centre required",
  tier: "FOUNDATION",
  [An arc subtends $49^degree$ at the circumference of a circle. Find the angle it subtends at the centre.],
  [
    $ angle "at centre" = 2 times 49^degree = 98^degree $

    The central angle is $98^degree$.

    Both directions of the theorem appear every year, so learn it as one sentence with two arrows rather than two separate facts.
  ],
)

#worked-example(
  3,
  "Angles in the same segment",
  tier: "UTME STANDARD",
  [Points $P$ and $Q$ lie on the same arc $A B$ of a circle and $angle A P B = 49^degree$. Find $angle A Q B$.],
  [
    *Name the theorem.* Both angles stand on the same chord $A B$ and both vertices lie on the same side of it, so they are *angles in the same segment*, which are equal.

    $ angle A Q B = 49^degree $

    *The error to avoid.* Seeing two angles and automatically writing $180^degree - 49^degree$. The cyclic-quadrilateral rule (opposite angles sum to $180^degree$) applies only when the two vertices lie on *opposite* arcs — that is, opposite vertices of a quadrilateral inscribed in the circle. Here they are on the same arc, so the angles are equal.
  ],
)

#worked-example(
  4,
  "The angle in a semicircle",
  tier: "UTME STANDARD",
  [$A B$ is a diameter of a circle with centre $O$ and $P$ is any other point on the circle. Find $angle A P B$.],
  [
    *Method 1 — the theorem.* The angle in a semicircle is a right angle:

    $ angle A P B = 90^degree $

    *Method 2 — from the central angle.* The arc $A B$ is a semicircle, so the central angle $angle A O B = 180^degree$. Hence

    $ angle A P B = 180^degree/2 = 90^degree $

    *Method 3 — isosceles triangles.* $O A = O P = O B$ (all radii). So $triangle O A P$ and $triangle O P B$ are each isosceles, giving $angle O A P = angle O P A$ and $angle O P B = angle O B P$. Adding the angles of $triangle A P B$ and using the two isosceles pairs shows the angle at $P$ is half of $180^degree$, that is $90^degree$.

    Three different routes to one number — which is why "the angle in a semicircle is $90^degree$" is the safest theorem in the syllabus to rely on.
  ],
)

#worked-example(
  5,
  "A central angle with an isosceles triangle",
  tier: "JAMB CHALLENGE",
  [In a circle with centre $O$, $A$, $B$ and $P$ lie on the circumference with $angle A O B = 130^degree$ and $P$ on the major arc. Find $angle A P B$. If $Q$ lies on the minor arc, find $angle A Q B$.],
  [
    *Step 1 — Angle at the circumference.*

    $ angle A P B = 130^degree/2 = 65^degree $

    *Step 2 — The point on the minor arc.* $A Q B P$ is a cyclic quadrilateral, so opposite angles are supplementary:

    $ angle A Q B = 180^degree - 65^degree = 115^degree $

    *Check using the reflex angle.* The reflex central angle is $360 - 130 = 230^degree$, and half of it is $115^degree$ ✓.

    This pair of results — $65^degree$ on the major arc, $115^degree$ on the minor arc — is the model for every "two points on different arcs" question. Note that they add to $180^degree$, always.
  ],
)

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Cyclic Quadrilaterals

A quadrilateral whose four vertices lie on a circle is *cyclic*, and it has one decisive property.

#diagram-fig("diagrams/ch03_cyclic_quad.svg",
  "A cyclic quadrilateral: each pair of opposite angles adds to $180^degree$. Equivalently, the exterior angle at any vertex equals the interior opposite angle.")

#formula-box("The Cyclic-Quadrilateral Theorem")[
  In a cyclic quadrilateral, *opposite angles are supplementary*:

  $ angle A + angle C = 180^degree quad quad angle B + angle D = 180^degree $

  Equivalently, the *exterior* angle at any vertex equals the *interior opposite* angle:

  $ "exterior" angle A = angle C $

  #v(3pt)
  This holds in *both* directions: if a pair of opposite angles of a quadrilateral add to $180^degree$, the four vertices lie on a circle.
]

#worked-example(
  6,
  "One angle of a cyclic quadrilateral",
  tier: "FOUNDATION",
  [In a cyclic quadrilateral, one angle is $113^degree$. Find the angle opposite to it.],
  [
    $ "opposite angle" = 180^degree - 113^degree = 67^degree $

    *Why not $360^degree - 113^degree$?* Because the sum of *all four* angles is $360^degree$, but the theorem pairs them: each pair of opposite angles carries exactly half of that total. The $360^degree - x$ distractor is printed in every such question.

    *Check.* $113 + 67 = 180$ ✓, and the other pair will also sum to $180^degree$, so the four angles together make $360^degree$.
  ],
)

#worked-example(
  7,
  "Finding all four angles",
  tier: "UTME STANDARD",
  [In a cyclic quadrilateral $A B C D$, $angle A = 2x^degree$, $angle B = 3x^degree$ and $angle C = 4x^degree$. Find $x$ and hence all four angles.],
  [
    *Step 1 — Pair the opposite angles.* $angle A$ and $angle C$ are opposite:

    $ 2x + 4x = 180 quad arrow.r.double quad 6x = 180 quad arrow.r.double quad x = 30 $

    *Step 2 — Compute.*

    $ angle A = 60^degree, quad angle B = 90^degree, quad angle C = 120^degree $

    *Step 3 — Find $angle D$ from the other pair.* $angle B$ and $angle D$ are opposite:

    $ angle D = 180^degree - 90^degree = 90^degree $

    *Check.* $60 + 90 + 120 + 90 = 360^degree$ ✓.

    Notice how the two facts work together: the cyclic property finds $x$, and either the cyclic property again or the quadrilateral sum finds the last angle. Use the quadrilateral sum as a check, never as the only method — it is the weaker fact.
  ],
)

#worked-example(
  8,
  "The exterior angle of a cyclic quadrilateral",
  tier: "JAMB CHALLENGE",
  [In a cyclic quadrilateral $A B C D$, the side $B C$ is produced to $E$. Given $angle D A B = 74^degree$, find $angle D C E$.],
  [
    *Step 1 — Draw and label.* Place $A$, $B$, $C$, $D$ in order round the circle, extend $B C$ beyond $C$ to $E$, and write $74^degree$ at the vertex $A$.

    *Step 2 — Use the exterior-angle form of the theorem.* The exterior angle at $C$ equals the interior angle at the vertex *opposite* $C$ — that is, at $A$:

    $ angle D C E = angle D A B = 74^degree $

    *Step 3 — Confirm the long way.* $angle D C B$ is opposite $angle D A B$, so

    $ angle D C B = 180^degree - 74^degree = 106^degree $

    and $angle D C B$ and $angle D C E$ lie on the straight line $B C E$, so

    $ angle D C E = 180^degree - 106^degree = 74^degree $ ✓

    *Why the short form is worth learning.* The two steps always cancel: $180^degree - (180^degree - x) = x$. Whenever a stem produces one side of a cyclic quadrilateral to an external point, the exterior angle so formed equals the interior angle at the opposite vertex, and you can write it down in one line.
  ],
)

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 Tangents

A tangent touches the circle at one point, and that single point of contact creates a right angle.

#diagram-fig("diagrams/ch03_tangent_radius.svg",
  "The radius to the point of contact is perpendicular to the tangent. From an external point $P$, the two tangents $P T$ and $P S$ are equal in length, and $O P$ bisects the angle between them.")

#formula-box("The Four Tangent Facts")[
  - The tangent is *perpendicular* to the radius at the point of contact: $angle O T P = 90^degree$.
  - Two tangents drawn from an external point are *equal in length*: $P T = P S$.
  - The line from the centre to the external point *bisects* the angle between the tangents, and it bisects the angle between the radii.
  - The angle between the two tangents and the angle between the two radii are *supplementary*: $angle T P S + angle T O S = 180^degree$.
]

#worked-example(
  9,
  "The tangent–radius right angle",
  tier: "UTME STANDARD",
  [$P T$ is a tangent to a circle with centre $O$, touching it at $T$. Given $angle T O P = 63^degree$, find $angle O P T$.],
  [
    *Step 1 — Mark the right angle.* The radius $O T$ is perpendicular to the tangent $P T$ at $T$, so $angle O T P = 90^degree$.

    *Step 2 — Angle sum of $triangle O T P$.*

    $ angle O P T = 180^degree - 90^degree - 63^degree = 27^degree $

    The answer is $27^degree$.

    *Distractor alert.* The angle $63^degree$ itself will be an option, as will $90^degree$ and $153^degree$ ($90 + 63$). All three come from skipping either the right angle or the angle sum; the two-step method eliminates them.
  ],
)

#worked-example(
  10,
  "The angle between two tangents",
  tier: "UTME STANDARD",
  [Two tangents are drawn from an external point to a circle, and the angle between them is $64^degree$. Find the angle between the two radii to the points of contact.],
  [
    *Use the supplementary fact.*

    $ angle "between radii" = 180^degree - 64^degree = 116^degree $

    *Why?* The quadrilateral formed by the centre and the two points of contact has two right angles (tangent–radius at each point). Since its angles sum to $360^degree$, the remaining two angles must sum to $180^degree$.

    *Derivation worth knowing.* $90 + 90 + 64 + x = 360$, so $x = 116^degree$ — and in general the two angles are supplementary. Any option that subtracts from $360^degree$ instead of $180^degree$ is the intended trap.
  ],
)

#worked-example(
  11,
  "Equal tangents and a perimeter",
  tier: "JAMB CHALLENGE",
  [From an external point $P$, tangents $P T$ and $P S$ touch a circle of radius $7$ cm at $T$ and $S$. If $P T = 24$ cm, find the distance $O P$ and the perimeter of the kite $O T P S$.],
  [
    *Step 1 — Right angle at the point of contact.* $angle O T P = 90^degree$, so $triangle O T P$ is right-angled at $T$.

    *Step 2 — Pythagoras.* The hypotenuse is $O P$:

    $ O P^2 = O T^2 + P T^2 = 7^2 + 24^2 = 49 + 576 = 625 quad arrow.r.double quad O P = 25 "cm" $

    *Step 3 — Perimeter of the kite.* The tangents are equal, $P T = P S = 24$, and the radii are equal, $O T = O S = 7$:

    $ "perimeter" = 7 + 24 + 24 + 7 = 62 "cm" $

    *Notice the triad.* $7, 24, 25$ is a standard Pythagorean triple, which is why $O P$ came out whole. Whenever JAMB quotes a radius and a tangent length, expect the distance to be the third member of a triad.
  ],
)

#worked-example(
  12,
  "Two tangents and an isosceles triangle",
  tier: "JAMB CHALLENGE",
  [Tangents $P T$ and $P S$ touch a circle at $T$ and $S$, and $angle T P S = 46^degree$. Find $angle T S P$.],
  [
    *Step 1 — Equal tangents give an isosceles triangle.* $P T = P S$, so $triangle P T S$ is isosceles with base $T S$ and equal base angles at $T$ and $S$.

    *Step 2 — Angle sum.*

    $ angle P T S = angle P S T = (180^degree - 46^degree)/2 = 67^degree $

    So $angle T S P = 67^degree$.

    *The general pattern.* Given the angle between two tangents, the base angles of the isosceles triangle are half of *its* supplement: $(180 - theta)/2 = 90 - theta/2$. For $theta = 46^degree$ that is $90 - 23 = 67^degree$ — one line, no equation needed.
  ],
)

// ============================================================================
// SECTION 3.5
// ============================================================================
== 3.5 The Alternate Segment Theorem

The angle between a tangent and a chord equals the angle in the *alternate* segment — the segment on the far side of the chord.

#diagram-fig("diagrams/ch03_alternate_segment.svg",
  "The tangent at $A$ and the chord $A B$ form an angle equal to the angle in the alternate segment, $angle A C B$, where $C$ lies on the far side of $A B$ from the tangent.")

#formula-box("The Alternate Segment Theorem")[
  If a tangent touches a circle at $A$ and a chord $A B$ is drawn from $A$, then the angle between the tangent and the chord equals the angle in the alternate segment:

  $ "angle between tangent and chord" = "angle in the alternate segment" $

  #v(3pt)
  The "alternate" segment is the one on the *other side* of the chord from the angle you are measuring — the segment that does *not* contain $A$.
]

#worked-example(
  13,
  "Applying the alternate segment theorem",
  tier: "UTME STANDARD",
  [The angle between a tangent and a chord at the point of contact is $55^degree$. Find the angle in the alternate segment.],
  [
    *Name the theorem.* These two angles are equal by definition of the theorem:

    $ "angle in alternate segment" = 55^degree $

    The answer is $55^degree$.

    *The distractor.* $125^degree$ (the supplement) appears in every such question, and $110^degree$ (the double) appears when the question also involves a central angle. Neither applies here: the theorem states equality, so no arithmetic is needed at all.
  ],
)

#worked-example(
  14,
  "Alternate segment with a triangle",
  tier: "JAMB CHALLENGE",
  [A tangent touches a circle at $A$; the chord $A B$ makes $58^degree$ with the tangent. $C$ is a point on the circle such that $angle A B C = 74^degree$. Find $angle B A C$.],
  [
    *Step 1 — Alternate segment.* The angle between the tangent and chord $A B$ equals $angle A C B$:

    $ angle A C B = 58^degree $

    *Step 2 — Angle sum of $triangle A B C$.*

    $ angle B A C = 180^degree - 74^degree - 58^degree = 48^degree $

    The answer is $48^degree$.

    *Reading the theorem correctly.* The angle between the tangent and $A B$ equals the angle subtended by $A B$ at any point on the circumference *in the other segment*. In a figure, that point is the one furthest from the tangent — here, $C$. Choosing the wrong point (the one on the same side as the tangent) gives a wrong triangle and a wrong answer.
  ],
)

// ============================================================================
// SECTION 3.6
// ============================================================================
== 3.6 Chords, Arcs and the Distance From the Centre

A chord, its distance from the centre, and the radius always form a right triangle, and JAMB leans on that triangle heavily.

#diagram-fig("diagrams/ch03_chord_bisector.svg",
  "The perpendicular from the centre to a chord bisects the chord. Half the chord, the distance $d$ from the centre and the radius $r$ form a right triangle with $r$ as hypotenuse.")

#formula-box("The Chord Theorems")[
  - A perpendicular from the centre to a chord *bisects* the chord (and the arc).
  - Equal chords are equidistant from the centre, and chords equidistant from the centre are equal.
  - The chord–radius triangle: with half-chord $x$, distance $d$ and radius $r$,

  $ x^2 + d^2 = r^2 quad quad "chord" = 2x = 2 sqrt(r^2 - d^2) $
]

#worked-example(
  15,
  "Chord length from the distance to the centre",
  tier: "UTME STANDARD",
  [A chord of a circle of radius $13$ cm is $5$ cm from the centre. Find the length of the chord.],
  [
    *Step 1 — Half the chord.* The perpendicular from the centre bisects the chord, so let the half-chord be $x$:

    $ x^2 = 13^2 - 5^2 = 169 - 25 = 144 quad arrow.r.double quad x = 12 "cm" $

    *Step 2 — Double it.*

    $ "chord" = 2x = 24 "cm" $

    The chord is $24$ cm long.

    *The error JAMB builds an option from.* Stopping at $12$ cm — the half-chord goes into the options as if it were the whole chord. The question says "length of the chord", so the final doubling is compulsory.
  ],
)

#worked-example(
  16,
  "Distance from the centre from a chord",
  tier: "JAMB CHALLENGE",
  [A chord of length $48$ cm is drawn in a circle of radius $25$ cm. Find its distance from the centre],
  [
    *Step 1 — Half the chord.*

    $ x = 48/2 = 24 "cm" $

    *Step 2 — Pythagoras.*

    $ d^2 = 25^2 - 24^2 = 625 - 576 = 49 quad arrow.r.double quad d = 7 "cm" $

    The chord is $7$ cm from the centre.

    *Note the direction of the question.* Here we were given the *whole* chord and asked for the distance, so the halving happens first and the Pythagoras second. In the previous example the order was reversed. Read the stem to see which quantity is unknown before choosing the layout.
  ],
)

#worked-example(
  17,
  "Two parallel chords on the same side",
  tier: "JAMB CHALLENGE",
  [Two parallel chords of lengths $16$ cm and $30$ cm lie on the same side of the centre of a circle of radius $17$ cm. Find the distance between them.],
  [
    *Step 1 — Distance of each chord from the centre.*

    For the $16$ cm chord: half-chord $8$, so $d_1 = sqrt(17^2 - 8^2) = sqrt(289 - 64) = sqrt(225) = 15$ cm.

    For the $30$ cm chord: half-chord $15$, so $d_2 = sqrt(17^2 - 15^2) = sqrt(289 - 225) = sqrt(64) = 8$ cm.

    *Step 2 — Same side means subtract.*

    $ "distance" = 15 - 8 = 7 "cm" $

    *If they were on opposite sides of the centre*, the distance would be $15 + 8 = 23$ cm. The phrase "on the same side of the centre" is the entire difference between the two answers, and JAMB prints both.
  ],
)

#worked-example(
  18,
  "Equal chords in a circle",
  tier: "UTME STANDARD",
  [Two chords of a circle are each $9$ cm long and are $12$ cm from the centre. Find the radius of the circle.],
  [
    *Half-chord, then Pythagoras.*

    $ x = 9/2 = 4.5 "cm" $

    $ r^2 = 4.5^2 + 12^2 = 20.25 + 144 = 164.25 $

    *Take the root.*

    $ r = sqrt(164.25) approx 12.82 "cm" $

    The radius is approximately $12.8$ cm.

    *A note on answers.* Not every UTME geometry answer is a whole number, and the option list will contain the surd or the decimal. Do not assume an arithmetic error simply because the root is not exact; check that your squares are right and move on.
  ],
)

#trap-box("The Chord Questions Where Candidates Lose Marks")[
  - Using the full chord in Pythagoras instead of half of it — the $x$ in $x^2 + d^2 = r^2$ is *always* half the chord.
  - Forgetting to double at the end when the chord was asked for.
  - Adding the two distances where the chords are on the same side of the centre, or subtracting where they are on opposite sides.
  - Assuming the longest chord is something other than the diameter: the diameter, $2r$, is always the longest chord, and the only chord whose distance from the centre is zero.
]

// ============================================================================
// SECTION 3.7
// ============================================================================
== 3.7 Sectors and Segments: Areas Inside a Circle

The angle theorems give lengths and angles; these formulae give areas. Both sides of the topic appear in the same paper.

#diagram-fig("diagrams/ch03_sector_segment.svg",
  "The sector bounded by two radii and the segment bounded by a chord: the segment is the sector minus the triangle $O A B$.")

#formula-box("Sector and Segment Formulae")[
  With radius $r$ and angle $theta$ (in degrees):

  - Arc length: $s = theta/360 times 2 pi r$.
  - Sector area: $A = theta/360 times pi r^2$.
  - Perimeter of a sector: $p = s + 2r$ (two radii, not one).
  - Area of the triangle $O A B$: $1/2 r^2 sin theta$.
  - Area of the segment: sector area $-$ triangle area.

  #v(3pt)
  With $pi = 22/7$ — which is what almost every UTME question specifies — the arithmetic is designed to cancel: use $r = 7, 14, 21, 28$ and $theta = 30^degree, 45^degree, 60^degree, 90^degree, 120^degree, 180^degree$.
]

#worked-example(
  19,
  "Area of a sector",
  tier: "FOUNDATION",
  [Find the area of a sector of radius $7$ cm which subtends $120^degree$ at the centre. (Take $pi = 22/7$.)],
  [
    $ A = theta/360 times pi r^2 = 120/360 times 22/7 times 49 $

    *Cancel before multiplying.*

    $ 120/360 = 1/3, quad 22/7 times 49 = 154, quad "so" quad A = 154/3 = 51.33 "cm"^2 $

    The area is $frac(154, 3)$ cm², about $51.3$ cm².

    *Why leave it as a fraction?* Because the options will be given as fractions when the division does not terminate. Do not convert to a decimal unless the options are decimals.
  ],
)

#worked-example(
  20,
  "Perimeter of a sector",
  tier: "UTME STANDARD",
  [Find the perimeter of a sector of radius $14$ cm with angle $60^degree$. (Take $pi = 22/7$.)],
  [
    *Step 1 — Arc length.*

    $ s = 60/360 times 2 times 22/7 times 14 = 1/6 times 88 = 44/3 "cm" $

    *Step 2 — Add the two radii.*

    $ p = s + 2r = 44/3 + 28 = (44 + 84)/3 = 128/3 "cm" $

    The perimeter is $frac(128, 3)$ cm $approx 42.7$ cm.

    *The standard trap.* Answering $s$ alone, or adding only one radius. A sector's boundary consists of *one arc and two straight radii*; the perimeter question is testing whether you remember the two.
  ],
)

#worked-example(
  21,
  "Area of a segment",
  tier: "JAMB CHALLENGE",
  [A chord subtends $90^degree$ at the centre of a circle of radius $14$ cm. Find the area of the minor segment. (Take $pi = 22/7$.)],
  [
    *Step 1 — Sector area.*

    $ A_"sector" = 90/360 times 22/7 times 196 = 1/4 times 616 = 154 "cm"^2 $

    *Step 2 — Triangle area.*

    $ A_"triangle" = 1/2 r^2 sin 90^degree = 1/2 times 196 times 1 = 98 "cm"^2 $

    *Step 3 — Subtract.*

    $ A_"segment" = 154 - 98 = 56 "cm"^2 $

    The minor segment has area $56$ cm².

    *The logic worth holding on to.* The sector contains the triangle plus the segment; so the segment is the sector minus the triangle. Every segment question in the paper is this three-step routine, and the only variable is the angle.
  ],
)

#worked-example(
  22,
  "A sector problem in reverse",
  tier: "JAMB CHALLENGE",
  [A sector of a circle of radius $21$ cm has area $231$ cm². Find the angle at the centre. (Take $pi = 22/7$.)],
  [
    *Step 1 — Write the formula with $theta$ as the unknown.*

    $ 231 = theta/360 times 22/7 times 441 $

    *Step 2 — Simplify the constants.*

    $ 22/7 times 441 = 22 times 63 = 1386 $

    so

    $ 231 = theta/360 times 1386 quad arrow.r.double quad theta/360 = 231/1386 = 1/6 $

    *Step 3 — Solve.*

    $ theta = 360/6 = 60^degree $

    The angle is $60^degree$.

    *Check.* A $60^degree$ sector is one sixth of the circle, and $1386/6 = 231$ ✓. Any reverse sector question is linear in $theta$, so it is always one division away.
  ],
)

// ============================================================================
// SECTION 3.8
// ============================================================================
== 3.8 Chapter 3 Rapid-Revision Checklist

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
  ["arc subtends $x^degree$ at the centre"], ["Halve it for the circumference angle."], ["Doubling is the commonest error."],
  ["arc subtends $x^degree$ at the circumference"], ["Double it for the central angle."], ["If the result exceeds $360^degree$, re-read."],
  ["angle in a semicircle"], ["$90^degree$."], ["Requires $A B$ to be a *diameter*."],
  ["angles in the same segment"], ["Equal."], ["Same arc, same side of the chord."],
  ["cyclic quadrilateral"], ["Opposite angles sum to $180^degree$."], ["Use $180^degree - x$, never $360^degree - x$."],
  ["tangent at $T$, centre $O$"], ["$angle O T P = 90^degree$."], ["Then use the angle sum of the triangle."],
  ["two tangents from a point"], ["Equal lengths; angles supplementary to $180^degree$."], ["Not $360^degree$."],
  ["angle between tangent and chord"], ["Alternate segment: equal."], ["Pick the point on the far arc."],
  ["chord and distance from centre"], ["$x^2 + d^2 = r^2$ with $x$ = *half* the chord."], ["Double at the end."],
  ["two parallel chords"], ["Same side: subtract; opposite sides: add."], ["Read the phrase about the centre."],
  ["sector area / arc length"], ["$theta/360$ of $pi r^2$ or $2 pi r$."], ["Perimeter adds two radii."],
  ["segment area"], ["Sector minus triangle."], ["Triangle area needs $1/2 r^2 sin theta$."],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 3 in One Breath]
  #v(3pt)
  The angle at the centre is twice the angle at the circumference; angles in the same segment are equal; the angle in a semicircle is $90^degree$. In a cyclic quadrilateral opposite angles add to $180^degree$, and the exterior angle equals the interior opposite one. A tangent is perpendicular to the radius, and the two tangents from an external point are equal. The angle between a tangent and a chord equals the angle in the alternate segment. A chord's half-length, its distance from the centre and the radius form a right triangle.
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the eight circle theorems, one line each.", width: 76%)

// ============================================================================
== 3.9 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [An arc subtends $84^degree$ at the centre of a circle. Find the angle it subtends at the circumference.], [$42^degree$], [$168^degree$], [$96^degree$], [$138^degree$])

#mcq(2, [In a cyclic quadrilateral, one angle is $106^degree$. Find the angle opposite to it.], [$74^degree$], [$106^degree$], [$254^degree$], [$286^degree$])

#mcq(3, [A chord of a circle of radius $10$ cm is $6$ cm from the centre. Find the length of the chord.], [$16$ cm], [$8$ cm], [$14$ cm], [$12$ cm])

#mcq(4, [Two tangents are drawn from an external point to a circle, and the angle between them is $100^degree$. Find the angle between the two radii to the points of contact.], [$80^degree$], [$100^degree$], [$50^degree$], [$260^degree$])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $84 -: 2 = 42^degree$; (2) $180 - 106 = 74^degree$; (3) half-chord $= sqrt(100 - 36) = 8$, so the chord is $16$ cm; (4) $180 - 100 = 80^degree$.
  ]
]

// ============================================================================
#include "drill_ch03.typ"
