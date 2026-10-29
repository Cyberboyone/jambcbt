#import "template.typ": *

#current-chapter.update("Chapter 4: Constructions and Loci")
#pagebreak()

#chapter-opener(
  4,
  "Constructions and Loci",
  subtitle: "Ruler-and-Compass Constructions: Triangles, Perpendicular and Angle Bisectors, and the Standard Angles; the Four Loci; and Intersecting Loci Problems",
  syllabus-ref: "Sec. III • Topic 4",
  utme-weight: "1 Q every year",
)

#focus-radar(
  objectives: (
    "Construct a triangle given its three sides, two sides and the included angle, or two angles and a side.",
    "Construct the perpendicular bisector of a segment and the bisector of an angle, using compasses only.",
    "Construct angles of $60^degree$, $30^degree$, $90^degree$, $45^degree$ and combinations of them.",
    "State the four standard loci: a circle, a pair of parallel lines, a perpendicular bisector and a pair of angle bisectors.",
    "Decide how many points satisfy two locus conditions at once, and locate them.",
  ),
  hotspots: (
    "\"The locus of points equidistant from two fixed points\" — perpendicular bisector, and nothing else.",
    "\"The locus of points equidistant from two intersecting lines\" — the *pair* of angle bisectors, not one.",
    "\"How many points are 4 cm from A and 3 cm from B?\" — the intersection count of two circles.",
    "The number of common tangents to two circles, which is decided by the distance between their centres.",
    "The in-centre and circumcentre: which construction finds which.",
  ),
  trap-summary: "Two wordings decide most locus questions, and both are easy to misread. (1) \"Equidistant from two *points*\" uses perpendicular bisectors; \"equidistant from two *lines*\" uses angle bisectors — swap them and the answer is wrong. (2) A locus of points at a fixed distance from a *line* is a *pair* of parallel lines, one on each side, not a single line; and equidistance from two lines gives a *pair* of bisectors, not one.",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 What "Construct" Means in a JAMB Question

A construction question is not asking you to calculate; it is asking you to *draw* using only two instruments — an unmarked straight edge and a pair of compasses. A protractor is not allowed, and any answer that depends on measuring an angle with a protractor has not been constructed.

#concept-box("The Rules of Construction")[
  - Only a straight edge (unmarked) and compasses may be used.
  - A protractor, set square or ruler markings may *not* be used to transfer lengths or angles.
  - Every arc you draw must be justified by a previous step; a construction is a sequence of circles and lines.
  - Marks for a construction question are given for the *arcs*, not only for the final figure — leaving the arcs off loses marks even if the figure is perfect.
]

The four constructions below generate everything else in the syllabus. Learn each as a numbered sequence of compass operations, because a "describe the construction" question is answered by reciting that sequence.

#diagram-fig("diagrams/ch04_perp_bisector.svg",
  "The perpendicular bisector of $A B$: equal arcs from $A$ and from $B$, of radius more than half of $A B$, meeting above and below the segment. The line joining the two crossings is the bisector, and every point on it is equidistant from $A$ and $B$.")

#formula-box("Construction 1 — The Perpendicular Bisector of $A B$")[
  1. Open the compasses to a radius *greater than half* of $A B$.
  2. With centre $A$, draw arcs above and below $A B$.
  3. With the *same* radius and centre $B$, draw arcs cutting the first pair at $P$ and $Q$.
  4. Draw the line $P Q$. It cuts $A B$ at its midpoint, at right angles.

  #v(3pt)
  The radius must exceed half of $A B$; if it does not, the arcs never meet and the construction fails. This single sentence is the answer to a recurring theory question.
]

#diagram-fig("diagrams/ch04_angle_bisector.svg",
  "Bisecting $angle A B C$: an arc from $B$ cutting both arms at $P$ and $Q$, then equal arcs from $P$ and from $Q$ meeting at $R$. The line $B R$ bisects the angle.")

#formula-box("Construction 2 — The Bisector of an Angle")[
  1. With centre at the vertex $B$, draw an arc cutting both arms at $P$ and $Q$.
  2. With centre $P$, draw an arc inside the angle.
  3. With the *same* radius and centre $Q$, draw an arc cutting the previous one at $R$.
  4. Draw $B R$. It bisects $angle A B C$.

  #v(3pt)
  Every point on $B R$ is equidistant from the two arms — which is why the bisector is the locus of points equidistant from two intersecting lines.
]

#formula-box("Construction 3 — The Standard Angles")[
  - $60^degree$: draw an arc of any radius from $A$ on a ray, then with the same radius from the arc's crossing mark a second arc; join $A$ to that crossing.
  - $30^degree$: bisect the $60^degree$ angle.
  - $90^degree$: construct the perpendicular bisector of a segment and use the perpendicular at an endpoint, or bisect a straight angle.
  - $45^degree$: bisect a right angle.
  - $120^degree$: step the $60^degree$ radius twice along an arc.
  - $15^degree$: bisect a $30^degree$ angle.

  #v(3pt)
  Every standard angle is a $60^degree$ step or a bisection of one. Nothing needs a protractor.
]

#formula-box("Construction 4 — A Triangle From Three Sides")[
  1. Draw the longest side $B C$ with the straight edge.
  2. With centre $B$ and radius equal to the second side, draw an arc.
  3. With centre $C$ and radius equal to the third side, draw an arc cutting the first at $A$.
  4. Join $A B$ and $A C$.

  #v(3pt)
  The two arcs meet only if the *triangle inequality* holds: each side must be less than the sum of the other two. If a question asks "how many triangles can be drawn with sides $2$ cm, $3$ cm and $7$ cm?", the answer is none — because $2 + 3 < 7$.
]

#worked-example(
  1,
  "Describing a perpendicular bisector construction",
  tier: "FOUNDATION",
  [Describe, in order, how to construct the perpendicular bisector of a line segment $A B$ with ruler and compasses only.],
  [
    *Step 1.* Open the compasses to a radius greater than half of $A B$.

    *Step 2.* With $A$ as centre, draw arcs on both sides of $A B$.

    *Step 3.* With the same radius and $B$ as centre, draw arcs cutting the first two at $P$ and $Q$.

    *Step 4.* Draw the straight line through $P$ and $Q$. This is the perpendicular bisector.

    *Why the radius must be more than half.* Two circles of equal radius centred at $A$ and $B$ meet only when the radius exceeds half of $A B$. At exactly half they touch at one point; below half they miss entirely. The construction therefore *cannot* be done with small arcs, and that is the examiner's standard question about it.
  ],
)

#worked-example(
  2,
  "Constructing $60^degree$ and $30^degree$",
  tier: "UTME STANDARD",
  [Describe how to construct an angle of $30^degree$ at the end $A$ of a given ray],
  [
    *Step 1 — Build $60^degree$.* With centre $A$ and any radius, draw an arc cutting the ray at $P$. With centre $P$ and the *same* radius, draw an arc cutting the first at $Q$. Then $angle P A Q = 60^degree$, because $A P = A Q = P Q$ (all equal to the compass radius), so $triangle A P Q$ is equilateral.

    *Step 2 — Bisect it.* With centres $P$ and $Q$ and a radius greater than half of $P Q$, draw two arcs meeting at $R$. Draw $A R$.

    *Step 3 — State the result.* $A R$ bisects the $60^degree$ angle, so

    $ angle P A R = 60^degree/2 = 30^degree $

    *Why equilateral gives $60^degree$.* The construction copies the compass radius three times, producing three equal sides; an equilateral triangle has three equal angles, and $180/3 = 60$. That is the whole justification, and it is a proof rather than a measurement.
  ],
)

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 The Four Standard Loci

A *locus* (plural *loci*) is the set of all points satisfying a given condition. Only four appear in UTME, and each is recognised by a phrase.

#diagram-fig("diagrams/ch04_loci.svg",
  "The four standard loci: a circle (fixed distance from a point), a pair of parallel lines (fixed distance from a line), the perpendicular bisector (equidistant from two points) and a pair of angle bisectors (equidistant from two lines).")

#formula-box("The Four Loci, With Their Trigger Phrases")[
  #table(
    columns: (auto, 1.5fr, 1.35fr),
    inset: 5.5pt,
    align: (left + horizon, left + horizon, left + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[The locus is],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Do not confuse with],
    [Fixed distance $d$ from a *point* $O$], [A circle of radius $d$ centred at $O$], [Nothing — this one is safe],
    [Fixed distance $d$ from a *line* $A B$], [A pair of lines parallel to $A B$], [A single parallel line (wrong) or a circle],
    [Equidistant from two *points* $A$ and $B$], [The perpendicular bisector of $A B$], [The angle bisector (wrong)],
    [Equidistant from two *lines*], [The pair of angle bisectors], [One bisector only, or the perpendicular bisector],
  )
]

The table is worth memorising verbatim. In the examination the stem always contains one of those four trigger phrases, and the answer follows immediately — no calculation is required.

#shortcut-box("Read the Noun, Not the Numbers")[
  - "*Point*" in the stem? Then the locus involves a *circle* (fixed distance) or a *perpendicular bisector* (equal distance).
  - "*Line*" (or "two sides of a shape")? Then it involves *parallel lines* (fixed distance) or *angle bisectors* (equal distance).

  "Two *lines*" → bisectors. "Two *points*" → perpendicular bisector. Almost every wrong option in a locus question comes from swapping those two.
]

#concept-box("Why a Line Gives a Pair and Not One Line")[
  "At a distance $d$ from the line $A B$" does not say *which side* of $A B$. Every point on either side qualifies, so the locus is two lines, one on each side — a strip of two boundaries rather than a single track.

  #v(3pt)
  The same reasoning gives the pair of angle bisectors: *two* intersecting lines form four angles, and the points equidistant from both lines lie on the two bisectors of the vertical pairs — not on one bisector alone.
]

#worked-example(
  3,
  "Naming the locus",
  tier: "FOUNDATION",
  [State the locus of a point $P$ which moves so that it is always equidistant from two fixed points $A$ and $B$.],
  [
    *Trigger word:* equidistant from two *points*.

    *Locus:* the *perpendicular bisector* of $A B$.

    *Why.* If $P A = P B$, then $P$ is the same distance from $A$ as from $B$; the set of all such points is exactly the line that cuts $A B$ in half at right angles — the line constructed in Section 4.1.

    *Check with one point.* Take the midpoint $M$ of $A B$: $M A = M B$ ✓, and $M$ lies on the bisector. Take a point twice as far from $A$ as from $B$: it lies off the line. The locus is exactly the bisector.
  ],
)

#worked-example(
  4,
  "Two conditions at once",
  tier: "UTME STANDARD",
  [A point $P$ moves so that it is $4$ cm from a fixed point $A$ and $3$ cm from a fixed point $B$, where $A B = 7$ cm. How many positions can $P$ occupy?],
  [
    *Step 1 — Translate each condition.*

    "$4$ cm from $A$" gives a circle of radius $4$ centred at $A$.
    "$3$ cm from $B$" gives a circle of radius $3$ centred at $B$.

    *Step 2 — Count the intersections.*

    $ r_1 + r_2 = 4 + 3 = 7 = A B $

    The circles *touch externally*, so they meet at exactly one point — on the segment $A B$.

    *Step 3 — Answer.* $P$ has exactly *one* position.

    *The general rule.* With centres $d$ apart and radii $r_1$, $r_2$: if $d > r_1 + r_2$ the circles miss (0 points); if $d = r_1 + r_2$ they touch externally (1 point); if $|r_1 - r_2| < d < r_1 + r_2$ they cut in two points (2); if $d = |r_1 - r_2|$ they touch internally (1); if $d < |r_1 - r_2|$ one lies inside the other (0).
  ],
)

#worked-example(
  5,
  "The region nearer to one point",
  tier: "JAMB CHALLENGE",
  [Describe the region consisting of all points nearer to $A$ than to $B$, where $A$ and $B$ are fixed points.],
  [
    *Step 1 — Find the boundary.* The boundary is where the distances are *equal*, that is the perpendicular bisector of $A B$.

    *Step 2 — Decide which side.* Points on $A$'s side of the boundary are nearer to $A$. Test with the simplest such point — $A$ itself, which is at distance $0$ from $A$ and $A B$ from $B$.

    *Step 3 — State it.* The region is the *half-plane on $A$'s side of the perpendicular bisector*, boundary excluded.

    *Why this matters.* Region questions ask for an area to shade, and the examiners accept a description in words. The perpendicular bisector is the boundary in every case; only the side depends on which point is named first.
  ],
)

#worked-example(
  6,
  "Common tangents to two circles",
  tier: "JAMB CHALLENGE",
  [Two circles of radii $9$ cm and $5$ cm have their centres $12$ cm apart. How many common tangents can be drawn to them?],
  [
    *Step 1 — Compare the distance with the sum and difference of the radii.*

    $ r_1 + r_2 = 14, quad |r_1 - r_2| = 4, quad d = 12 $

    Since $4 < 12 < 14$, the circles *intersect in two points*.

    *Step 2 — Count the tangents.* Two intersecting circles have only the two *external* common tangents; the internal ones have disappeared because the circles cut into one another.

    *Step 3 — Answer.* Two common tangents.

    *The full table.* Separate circles ($d > r_1 + r_2$): four tangents. Touching externally ($d = r_1 + r_2$): three. Intersecting: two. Touching internally ($d = |r_1 - r_2|$): one. One inside the other: none.
  ],
)

#worked-example(
  7,
  "The in-centre and the circumcentre",
  tier: "UTME STANDARD",
  [State which constructions locate (a) the point equidistant from the three sides of a triangle, and (b) the point equidistant from its three vertices.],
  [
    *(a) Equidistant from the three SIDES.* Use the *angle bisectors*: the bisectors of the three angles meet at one point, the in-centre, which is the centre of the inscribed circle.

    *(b) Equidistant from the three VERTICES.* Use the *perpendicular bisectors* of the sides: they meet at the circumcentre, the centre of the circle through all three vertices.

    *The memory hook.* Distances to *sides* are measured at right angles, so use the bisectors of the angles between those sides; distances to *vertices* are measured along lines to points, so use the perpendicular bisectors of the lines joining them.

    *A third one for completeness.* The *medians* meet at the centroid, which is the centre of mass but has no equidistance property — it appears as a distractor in exactly this kind of question.
  ],
)

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 Constructing Triangles

Three measurements are needed, and they must match one of the four congruence patterns of Chapter 2. A question will always specify which.

#table(
  columns: (1.4fr, 1.5fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Given],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Construction],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Number of triangles],
  ),
  [Three sides], [Two arcs from the ends of the longest side], [Two mirror images, congruent],
  [Two sides and the included angle], [Copy the angle, then step off the two sides], [Exactly one],
  [Two angles and a side], [Copy both angles at the ends of the side], [Exactly one],
  [Two sides and a non-included angle], [Ambiguous: the arc may cut twice], [Often two — the SSA failure of Chapter 2],
)

#worked-example(
  8,
  "A triangle from two sides and an included angle",
  tier: "UTME STANDARD",
  [Describe how to construct a triangle $A B C$ in which $A B = 7$ cm, $A C = 5$ cm and $angle B A C = 40^degree$.],
  [
    *Step 1.* Draw $A B = 7$ cm with the straight edge.

    *Step 2 — Copy the angle.* At $A$, construct an angle of $40^degree$ (obtained by the standard bisection steps) on the same side of $A B$ as $C$ is to lie.

    *Step 3 — Step off the second side.* With centre $A$ and compass radius $5$ cm, mark the point $C$ on the new arm.

    *Step 4.* Join $B C$. The triangle is complete.

    *Why only one triangle.* The included angle is fixed, so there is no freedom: the point $C$ is determined by a single arc along a single ray. Compare this with the SSA case, where the arc from $B$ can cut the ray from $A$ in two places.
  ],
)

#worked-example(
  9,
  "Can the triangle be drawn?",
  tier: "JAMB CHALLENGE",
  [Explain why no triangle can have sides $3$ cm, $4$ cm and $8$ cm.],
  [
    *The triangle inequality.* In any triangle, the sum of any two sides must exceed the third:

    $ a + b > c quad quad b + c > a quad quad c + a > b $

    *Apply it to the largest side.*

    $ 3 + 4 = 7 < 8 $

    *Conclusion.* The two shorter sides cannot reach across the longest side, so the arcs never meet: no triangle exists.

    *In construction language*, draw the $8$ cm base and then arcs of radius $3$ and $4$ from its ends — they fall short of each other by $1$ cm. The construction is not merely difficult; it is impossible, and the answer to "how many such triangles?" is zero.
  ],
)

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 Chapter 4 Rapid-Revision Checklist

#table(
  columns: (1.25fr, 1.85fr, 1.55fr),
  inset: 7pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Answer],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],
  ),
  ["equidistant from two points"], ["Perpendicular bisector of the segment."], ["Not the angle bisector."],
  ["equidistant from two lines"], ["Pair of angle bisectors."], ["Two bisectors, not one."],
  ["fixed distance from a point"], ["Circle centred at the point."], ["Radius $= $ the given distance."],
  ["fixed distance from a line"], ["Two parallel lines, one on each side."], ["Not a single line."],
  ["compass radius for a perpendicular bisector"], ["More than half of $A B$."], ["Exactly half only touches."],
  ["construct $60^degree$"], ["Equilateral triangle on the ray."], ["All three arcs use one radius."],
  ["construct $30^degree$, $45^degree$, $15^degree$"], ["Bisect $60^degree$, $90^degree$, $30^degree$."], ["Each is a halving of a known angle."],
  ["how many points satisfy two distance conditions"], ["Count circle intersections."], ["Compare $d$ with $r_1 + r_2$ and $|r_1 - r_2|$."],
  ["common tangents to two circles"], ["4, 3, 2, 1 or 0 by the same comparison."], ["Intersecting circles have 2."],
  ["in-centre / circumcentre"], ["Angle bisectors / perpendicular bisectors."], ["Medians give the centroid — no equidistance."],
  ["triangle from three sides possible?"], ["Check the triangle inequality."], ["The longest side must be smaller than the sum of the others."],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 4 in One Breath]
  #v(3pt)
  Constructions use only compasses and a straight edge, and every standard angle comes from an equilateral triangle or a bisection of one. There are four loci — circle, pair of parallels, perpendicular bisector, pair of angle bisectors — and the stem's noun chooses between them. Two locus conditions at once give a count of intersections, and two circles can meet in two points, one point or none.
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the four loci and the four constructions.", width: 76%)

// ============================================================================
== 4.5 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [The locus of points equidistant from two intersecting straight lines is], [the pair of angle bisectors], [the perpendicular bisector of the segment between them], [a circle], [the pair of parallel lines])

#mcq(2, [To construct the perpendicular bisector of $A B$ with compasses, the radius used must be], [more than half of $A B$], [exactly half of $A B$], [less than half of $A B$], [equal to $A B$])

#mcq(3, [Points $P$ are $5$ cm from $A$ and $3$ cm from $B$, where $A B = 9$ cm. How many positions can $P$ occupy?], [$0$], [$1$], [$2$], [$4$])

#mcq(4, [An angle of $45^degree$ is constructed by bisecting an angle of], [$90^degree$], [$60^degree$], [$30^degree$], [$120^degree$])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) two *lines* give two bisectors; (2) smaller arcs never meet; (3) $5 + 3 = 8 < 9$, so the circles miss; (4) $90 -: 2 = 45^degree$.
  ]
]

// ============================================================================
#include "drill_ch04.typ"
