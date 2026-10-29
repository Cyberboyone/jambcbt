#import "template.typ": *

#current-chapter.update("Chapter 10: Bearings, Elevation and the Sine & Cosine Rules")
#pagebreak()

#chapter-opener(
  10,
  "Bearings, Elevation and the Sine & Cosine Rules",
  subtitle: "Three-Figure Bearings, Back Bearings, Angles of Elevation and Depression, the Sine Rule, the Cosine Rule and the Area $1/2 a b sin C$",
  syllabus-ref: "Sec. III • Topic 10",
  utme-weight: "2–3 Qs every year",
)

#focus-radar(
  objectives: (
    "Write and interpret a three-figure bearing measured clockwise from North.",
    "Convert between a compass direction such as $N 30^degree E$ and a bearing.",
    "Find the back bearing of a point.",
    "Use angles of elevation and depression in right-angled triangles.",
    "Apply the sine rule, the cosine rule and the area formula $1/2 a b sin C$ to non-right-angled triangles.",
  ),
  hotspots: (
    "\"Write $S 60^degree W$ as a bearing\" — a two-mark certainty.",
    "\"The bearing of Q from P is $x$; find the bearing of P from Q\" — add or subtract $180^degree$.",
    "A tower with a given angle of elevation and distance — a tangent calculation.",
    "The cosine rule with two sides and the included angle, giving a whole number in the standard triads.",
    "The area formula with a $30^degree$ or $60^degree$ included angle.",
  ),
  trap-summary: "Three slips do most of the damage. (1) Writing bearings with fewer than three figures, or measuring the angle from the wrong axis — a bearing is *always* clockwise from North. (2) Using the tangent of an angle of *depression* as though the triangle were not right-angled; the angle of depression equals the angle of elevation from the other end, and that is what makes the triangle work. (3) Applying the sine rule with a side and an angle that are *not* opposite each other — the pairing must be side-with-its-own-facing-angle.",
)

// ============================================================================
// SECTION 10.1
// ============================================================================
== 10.1 Three-Figure Bearings

A *bearing* is the angle measured *clockwise from North*, written with three figures. It is the navigator's convention, and it removes every ambiguity a compass direction carries.

#diagram-fig("diagrams/ch10_bearings.svg",
  "Bearings measured clockwise from North at each point: $060^degree$, $150^degree$ and $250^degree$, with the back bearing from the first shown as the parallel North line at the second point.")

#formula-box("Bearings: The Rules")[
  - A bearing is measured *clockwise from North*.
  - It is written with *three figures*: $070^degree$, not $70^degree$; $005^degree$, not $5^degree$.
  - It is always between $000^degree$ and $360^degree$.
  - Compass directions convert as follows:
    - $N theta^degree E arrow.r.double$ bearing $theta$;
    - $S theta^degree E arrow.r.double$ bearing $180^degree - theta$;
    - $S theta^degree W arrow.r.double$ bearing $180^degree + theta$;
    - $N theta^degree W arrow.r.double$ bearing $360^degree - theta$.
]

#shortcut-box("The Four Compass Conversions, Without the Table")[
  Sketch the North line and the direction. Count clockwise from North to the direction:

  - $N 30^degree E$ is $30^degree$ clockwise → $030^degree$.
  - $S 30^degree E$ is $180^degree - 30^degree$ → $150^degree$ (because South is $180^degree$ and East of it means back towards $090^degree$).
  - $S 30^degree W$ is $180^degree + 30^degree$ → $210^degree$.
  - $N 30^degree W$ is $360^degree - 30^degree$ → $330^degree$.

  Drawing the little sketch takes five seconds and eliminates the whole table.
]

#worked-example(
  1,
  "Compass direction to bearing",
  tier: "FOUNDATION",
  [Write the direction $S 60^degree W$ as a three-figure bearing.],
  [
    *Step 1 — Locate South.* South is $180^degree$.

    *Step 2 — West of South* means turning further clockwise (towards $270^degree$):

    $ 180^degree + 60^degree = 240^degree $

    The bearing is $240^degree$.

    *Check with the sketch.* $S 60^degree W$ points down and to the left; $240^degree$ is in the third quadrant, which is indeed down and to the left ✓.
  ],
)

#worked-example(
  2,
  "Bearing to compass direction",
  tier: "UTME STANDARD",
  [Write the bearing $300^degree$ as a compass direction of the form $N/S$ angle $E/W$.],
  [
    *Step 1 — Which quadrant?* $300^degree$ lies between $270^degree$ (West) and $360^degree$ (North), so the direction is $N dots W$.

    *Step 2 — Angle from North.*

    $ 360^degree - 300^degree = 60^degree $

    The direction is $N 60^degree W$.

    *The general recipe.* Measure from the nearer of North and South: if the bearing is between $0$ and $90$ or between $270$ and $360$, use North; otherwise use South. Then attach E or W by whether the bearing is on the eastern or western half.
  ],
)

#worked-example(
  3,
  "The back bearing",
  tier: "FOUNDATION",
  [The bearing of Q from P is $060^degree$. Find the bearing of P from Q.],
  [
    *Add or subtract $180^degree$.* Since $060^degree$ is less than $180^degree$, add:

    $ 060^degree + 180^degree = 240^degree $

    The bearing of P from Q is $240^degree$.

    *Why $180^degree$?* The North lines at P and at Q are parallel, so the line $P Q$ makes the same angle with each — but measured from opposite ends. The two bearings therefore differ by a half-turn, and the answer is always the forward bearing plus or minus $180^degree$ (whichever lands in the range $0$ to $360$).
  ],
)

#worked-example(
  4,
  "Back bearing above $180^degree$",
  tier: "UTME STANDARD",
  [The bearing of Q from P is $245^degree$. Find the bearing of P from Q.],
  [
    *Subtract this time*, because $245^degree$ exceeds $180^degree$:

    $ 245^degree - 180^degree = 065^degree $

    The bearing of P from Q is $065^degree$.

    *The rule in one line.* Back bearing $=$ forward bearing $plus.minus 180^degree$, choosing the sign that gives a value between $0^degree$ and $360^degree$. A bearing written as $425^degree$ or $-135^degree$ is wrong on presentation alone, whatever the arithmetic.
  ],
)

#worked-example(
  5,
  "The angle between two bearings",
  tier: "JAMB CHALLENGE",
  [The bearing of Q from P is $060^degree$ and the bearing of R from P is $150^degree$. Find $angle Q P R$.],
  [
    *Both are measured from the same North line at P*, so the angle between them is simply the difference:

    $ 150^degree - 060^degree = 90^degree $

    So $angle Q P R = 90^degree$.

    *The contrast case.* If the two bearings had been given *from different points*, the angle between them would require the back bearing of one of them first. Read the stem for *from*: "the bearing of Q from P" and "the bearing of R from P" share a vertex, so subtract; "the bearing of Q from P" and "the bearing of R from Q" do not, so convert first.
  ],
)

#trap-box("Bearing Errors That Cost Whole Marks")[
  - Writing $70^degree$ instead of $070^degree$ — the three-figure form is part of the answer.
  - Measuring anticlockwise, or from the East axis: every bearing starts at North and turns clockwise.
  - Adding $180^degree$ when the forward bearing already exceeds $180^degree$, giving an answer above $360^degree$.
  - Subtracting the two bearings when they are measured from *different* points.
]

// ============================================================================
// SECTION 10.2
// ============================================================================
== 10.2 Angles of Elevation and Depression

#diagram-fig("diagrams/ch10_elevation.svg",
  "The angle of elevation is measured *upwards* from the horizontal at the observer; the angle of depression is measured *downwards* from the horizontal at the observer. Between the same two points they are equal, because they are alternate angles between horizontal parallels.")

#formula-box("Elevation and Depression")[
  - *Angle of elevation*: the angle above the horizontal from the observer up to the object.
  - *Angle of depression*: the angle below the horizontal from the observer down to the object.
  - They are measured from the *horizontal*, never from the vertical.
  - Between the same two points the two angles are *equal* (alternate angles).
]

#shortcut-box("Draw the Horizontal at Both Ends")[
  Every elevation or depression question is a right-angled triangle once you draw the horizontal at *each* end. The angle at the top and the angle at the bottom are equal; the vertical is the height; the horizontal is the distance along the ground.

  Then the ratio follows immediately: $tan theta = "height"/"horizontal distance"$, with $sin$ and $cos$ needed only when the *line of sight itself* (the hypotenuse) is one of the knowns.
]

#worked-example(
  6,
  "Height from an elevation of $45^degree$",
  tier: "FOUNDATION",
  [From a point $12$ m from the foot of a vertical tower, the angle of elevation of the top is $45^degree$. Find the height of the tower.],
  [
    $ tan 45^degree = h/12 quad "and" quad tan 45^degree = 1 $

    so

    $ h = 12 "m" $

    The tower is $12$ m tall.

    *The $45^degree$ shortcut.* Whenever the elevation is $45^degree$, the height equals the horizontal distance. That is the definition of $tan 45^degree = 1$, and it is why examiners choose $45^degree$ so often — it removes the arithmetic and leaves only the geometry.
  ],
)

#worked-example(
  7,
  "Height from an elevation of $60^degree$",
  tier: "UTME STANDARD",
  [From a point $8$ m from the foot of a vertical tower, the angle of elevation of the top is $60^degree$. Find the height of the tower, leaving your answer in surd form.],
  [
    $ tan 60^degree = h/8 quad "and" quad tan 60^degree = sqrt(3) $

    so

    $ h = 8 sqrt(3) "m" approx 13.86 "m" $

    The tower is $8 sqrt(3)$ m tall.

    *The distractors.* $8 sqrt(3)/3$ (using $tan 30^degree$ instead of $tan 60^degree$) and $8$ (using $tan 45^degree$) are both printed. Write the ratio, then substitute the value — never the other way round.
  ],
)

#worked-example(
  8,
  "Angle of depression to a boat",
  tier: "UTME STANDARD",
  [From the top of a cliff $40$ m high, the angle of depression of a boat is $30^degree$. Find the horizontal distance from the boat to the foot of the cliff.],
  [
    *Step 1 — Put the angle where it can be used.* The angle of depression at the top equals the angle of *elevation* of the top from the boat — both are $30^degree$ (alternate angles between the horizontal lines).

    *Step 2 — Use the tangent at the boat.*

    $ tan 30^degree = 40/d quad arrow.r.double quad d = 40/(tan 30^degree) = 40 sqrt(3) "m" $

    The boat is $40 sqrt(3) approx 69.3$ m from the foot of the cliff.

    *The point of the first step.* The given angle is at the *top*, but the triangle's convenient right angle is at the *bottom*. Converting depression into elevation moves the angle to where the known side sits beside it.
  ],
)

#worked-example(
  9,
  "The angle of depression equals the angle of elevation",
  tier: "JAMB CHALLENGE",
  [The angle of depression of a boat from the top of a cliff is $30^degree$. State the angle of elevation of the top of the cliff from the boat, and explain why.],
  [
    *Answer.* $30^degree$ — the two angles are equal.

    *Why.* The horizontal line at the top of the cliff and the horizontal water line through the boat are parallel. The line of sight is a transversal, so the angle of depression and the angle of elevation are *alternate* angles, which are equal.

    *Why the examiner asks it.* Because it is the step that makes every elevation/depression calculation possible, and because the wrong options ($60^degree$, $150^degree$, $90^degree$) correspond to real misconceptions — measuring from the vertical, or treating the two angles as supplementary.
  ],
)

// ============================================================================
// SECTION 10.3
// ============================================================================
== 10.3 The Sine Rule

The sine rule handles *any* triangle — no right angle needed — provided you pair each side with the angle facing it.


#formula-box("The Sine Rule")[
  $ a/(sin A) = b/(sin B) = c/(sin C) $

  or, inverted and easier to use for finding a side,

  $ a sin B = b sin A $

  #v(3pt)
  Use the sine rule when you know *a side and its facing angle*, plus one other piece. If you have two sides and the *included* angle, it is the cosine rule you need instead.
]

#diagram-fig("diagrams/ch10_sine_rule.svg",
  "The naming convention: side $a$ faces angle $A$, side $b$ faces angle $B$, side $c$ faces angle $C$. The sine rule uses exactly those pairings.")

#worked-example(
  10,
  "A side from two angles",
  tier: "UTME STANDARD",
  [In triangle $A B C$, $angle A = 30^degree$, $angle B = 90^degree$ and the hypotenuse is $8$ cm. Find the side opposite $A$.],
  [
    *This one is a right triangle*, so SOH is faster — but the sine rule works too, and it is worth seeing both.

    *Right-triangle method.*

    $ sin 30^degree = a/8 quad arrow.r.double quad a = 8 times 1/2 = 4 "cm" $

    *Sine-rule method.* The side opposite $B = 90^degree$ is $b = 8$:

    $ a/(sin 30^degree) = 8/(sin 90^degree) quad arrow.r.double quad a = 8 times 1/2 = 4 "cm" $

    Both give $4$ cm — the two methods agree, which is the check. The sine rule is the safer habit because it also works when the triangle is not right-angled.
  ],
)

#worked-example(
  11,
  "Which side is longest?",
  tier: "UTME STANDARD",
  [In triangle $A B C$, $angle A = 45^degree$ and $angle B = 60^degree$. Which side is the longest?],
  [
    *Step 1 — Third angle.*

    $ angle C = 180^degree - 45^degree - 60^degree = 75^degree $

    *Step 2 — Largest angle faces longest side.* The largest angle is $C = 75^degree$, so the longest side is

    $ c $, the side opposite $angle C$.

    *The general principle.* In any triangle, sides are ordered exactly as the angles facing them. No calculation beyond the angle sum is needed — which is why this is a favourite one-line question.
  ],
)

#worked-example(
  12,
  "Sine rule with a given pair",
  tier: "JAMB CHALLENGE",
  [In triangle $A B C$, $a = 7$ cm, $angle A = 40^degree$ and $angle B = 65^degree$. Find $b$, correct to two decimal places. ($sin 40^degree = 0.643$, $sin 65^degree = 0.906$.)],
  [
    *Step 1 — Write the pairing.*

    $ b/(sin 65^degree) = 7/(sin 40^degree) $

    *Step 2 — Rearrange.*

    $ b = 7 times (sin 65^degree)/(sin 40^degree) = 7 times 0.906/0.643 $

    *Step 3 — Compute.*

    $ b approx 7 times 1.409 approx 9.86 "cm" $

    *The pairing rule.* The $7$ cm side is opposite the $40^degree$ angle and the unknown is opposite the $65^degree$ angle; the fraction on each side must have that structure. Writing $7/sin 65^degree$ instead is the standard error, and it gives $4.97$ — an option in every such question.
  ],
)

// ============================================================================
// SECTION 10.4
// ============================================================================
== 10.4 The Cosine Rule

The cosine rule handles the case the sine rule cannot: two sides and the *included* angle, or all three sides.

#diagram-fig("diagrams/ch10_cosine_rule.svg",
  "The cosine rule generalises Pythagoras: $c^2 = a^2 + b^2 - 2 a b cos C$. When $C = 90^degree$ the last term vanishes, and the formula collapses to $a^2 + b^2$.")

#formula-box("The Cosine Rule")[
  $ c^2 = a^2 + b^2 - 2 a b cos C $

  and, rearranged to find an angle from three sides,

  $ cos C = (a^2 + b^2 - c^2)/(2 a b) $

  #v(3pt)
  *Which rule?* Two sides and the included angle, or three sides → cosine rule. A side with its facing angle plus one other angle → sine rule.
]

#worked-example(
  13,
  "Third side from an included angle",
  tier: "UTME STANDARD",
  [In triangle $A B C$, $a = 5$ cm, $b = 8$ cm and $angle C = 60^degree$. Find $c$.],
  [
    *Step 1 — Write the cosine rule with the included angle $C$.*
    $ c^2 = a^2 + b^2 - 2 a b cos C $

    *Step 2 — Substitute, and evaluate the product before adding.*
    $ c^2 = 5^2 + 8^2 - 2(5)(8) cos 60^degree = 25 + 64 - 80 times 1/2 = 89 - 40 = 49 $

    *Step 3 — Square-root.*
    $ c = sqrt(49) = 7 "cm" $

    So $c = 7$ cm.

    *Note on surds.* The numbers in a UTME question are chosen so the arithmetic tidies up; here $2 a b cos C = 40$ is a whole number and the total is the perfect square $49$. When the data do *not* tidy up (say $a = 6$, $b = 8$, $C = 60^degree$, giving $c^2 = 52$), leave the answer as $sqrt(52) = 2 sqrt(13) approx 7.2$ cm — one of the options will carry exactly that surd.
  ],
)

#worked-example(
  14,
  "The Pythagorean case",
  tier: "UTME STANDARD",
  [In triangle $A B C$, $a = 5$ cm, $b = 12$ cm and $angle C = 90^degree$. Find $c$.],
  [
    $ c^2 = 25 + 144 - 2(5)(12)(0) = 169 quad arrow.r.double quad c = 13 "cm" $

    The side is $13$ cm.

    *Why the last term vanished.* $cos 90^degree = 0$, so the cosine rule collapses to Pythagoras — exactly as it must, since the triangle is right-angled. This is the best sanity check on the formula: if substituting $90^degree$ does not reproduce Pythagoras, the formula has been misremembered.
  ],
)

#worked-example(
  15,
  "An angle from three sides",
  tier: "JAMB CHALLENGE",
  [A triangle has sides $6$ cm, $8$ cm and $10$ cm. Find the angle opposite the $10$ cm side.],
  [
    *Step 1 — Use the rearranged cosine rule with $c = 10$.*

    $ cos C = (6^2 + 8^2 - 10^2)/(2 times 6 times 8) = (36 + 64 - 100)/96 = 0/96 = 0 $

    *Step 2 — Read off.*

    $ C = 90^degree $

    The angle is a right angle.

    *The recognition.* $6, 8, 10$ is a triad, so $a^2 + b^2 = c^2$ and the numerator of the cosine rule vanishes. When the numerator is zero, the angle is $90^degree$; when it is negative, the angle is obtuse; when positive, acute. That sign test answers "is the triangle acute, right or obtuse?" without any inverse cosine.
  ],
)

#worked-example(
  16,
  "Area with the sine formula",
  tier: "UTME STANDARD",
  [Find the area of a triangle with sides $8$ cm and $5$ cm enclosing an angle of $30^degree$.],
  [
    $ A = 1/2 a b sin C = 1/2 times 8 times 5 times 1/2 = 10 "cm"^2 $

    The area is $10$ cm².

    *Why the sine formula belongs in this chapter.* It is the third member of the same toolkit: sine rule for angles and facing sides, cosine rule for included angles and three sides, area formula for the enclosed region. Every non-right-angled triangle question in UTME uses one of the three.
  ],
)

#trap-box("Sine or Cosine? — the Decision in Five Seconds")[
  - Two angles and any side → *sine rule* (find the third angle first).
  - A side with its facing angle and one other side → *sine rule*.
  - Two sides and the *included* angle → *cosine rule*.
  - Three sides → *cosine rule* (rearranged, for an angle).
  - Two sides and an angle *not* included → *sine rule*, and beware the ambiguous case.
  - Area, with two sides and the included angle → $1/2 a b sin C$.
]

// ============================================================================
// SECTION 10.5
// ============================================================================
== 10.5 Chapter 10 Rapid-Revision Checklist

#table(
  columns: (1.25fr, 1.85fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Question wording],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: white)[Watchpoint],
  ),
  ["write a compass direction as a bearing"], ["Sketch, then count from North."], ["Three figures, always."],
  ["back bearing"], ["$plus.minus 180^degree$."], ["Choose the sign that stays in $0$ to $360$."],
  ["angle between two bearings"], ["Subtract, if measured from the same point."], ["Different points need a back bearing first."],
  ["angle of elevation / depression"], ["Right triangle with $tan theta = h/d$."], ["Measured from the horizontal."],
  ["depression given, elevation asked"], ["Equal — alternate angles."], ["Not supplementary."],
  ["side with its facing angle plus another angle"], ["Sine rule."], ["Pair each side with its own angle."],
  ["two sides and the included angle"], ["Cosine rule."], ["Do not use the sine rule here."],
  ["three sides, find an angle"], ["$cos C = (a^2 + b^2 - c^2)/(2 a b)$."], ["A zero numerator means $90^degree$."],
  ["area of a non-right triangle; which side is longest"], ["$1/2 a b sin C$; the side facing the largest angle."], ["The angle must be included; find the third angle first."],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 10 in One Breath]
  #v(3pt)
  A bearing is three figures clockwise from North; the back bearing is that $plus.minus 180^degree$. Elevation and depression are measured from the horizontal and are equal between the same two points. The sine rule pairs each side with its facing angle; the cosine rule handles the included angle and the three-side case; area is $1/2 a b sin C$.
]

#diagram-fig("diagrams/recap_ch10.svg",
  "Chapter 10 recap card: bearings, elevation, the sine rule, the cosine rule and the area formula.", width: 56%)

// ============================================================================
== 10.6 Chapter 10 in the Exam Hall — a Two-Minute Set

#mcq(1, [Write the direction $S 40^degree E$ as a three-figure bearing.], [$140^degree$], [$040^degree$], [$220^degree$], [$320^degree$])

#mcq(2, [The bearing of Q from P is $150^degree$. Find the bearing of P from Q.], [$330^degree$], [$150^degree$], [$210^degree$], [$030^degree$])

#mcq(3, [In $triangle A B C$, $a = 8$ cm, $b = 5$ cm and $angle C = 60^degree$. Find $c$], [$7$ cm], [$9$ cm], [$13$ cm], [$6$ cm])

#mcq(4, [Find the area of a triangle with sides $10$ cm and $6$ cm enclosing $30^degree$], [$15$ cm²], [$30$ cm²], [$60$ cm²], [$7.5$ cm²])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $180 - 40 = 140^degree$; (2) $150 + 180 = 330^degree$; (3) $64 + 25 - 40 = 49$, so $c = 7$; (4) $1/2 times 10 times 6 times 1/2 = 15$.
  ]
]

// ============================================================================
#include "drill_ch10.typ"
