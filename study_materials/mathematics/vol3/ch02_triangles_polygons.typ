#import "template.typ": *

#current-chapter.update("Chapter 2: Triangles and Polygons")
#pagebreak()

#chapter-opener(
  2,
  "Triangles, Congruence and Similarity",
  subtitle: "Triangle Types and Their Angle Sums, the Exterior Angle, Congruence Criteria, Similar Triangles and Area Ratios, Pythagoras' Theorem with Its Triads, and the Properties of Special Quadrilaterals",
  syllabus-ref: "Sec. III • Topic 2",
  utme-weight: "2–3 Qs every year",
)

#focus-radar(
  objectives: (
    "Classify triangles by sides and by angles, and state the angle sum and exterior-angle facts.",
    "Test two triangles for congruence using SSS, SAS, ASA (or AAS) and RHS.",
    "Use similar triangles to find unknown sides, and use the square of the scale factor for areas and volumes.",
    "Apply Pythagoras' theorem forwards and backwards, recognising the standard triads on sight.",
    "Use the area formulae $1/2 b h$, $sqrt(s(s - a)(s - b)(s - c))$ and $(sqrt(3))/4 a^2$.",
  ),
  hotspots: (
    "A right-angled triangle with two sides given and the third required — almost always a triad.",
    "Two similar triangles with one side missing, or a question about the ratio of their areas.",
    "\"Which condition is *not* sufficient to prove congruence?\" — SSA and AAA are the standard wrong answers.",
    "Exterior angle $=$ sum of the two interior opposite angles.",
    "Isosceles triangles: the two base angles are equal, and the exterior angle at the apex is $2 times$ a base angle.",
  ),
  trap-summary: "The two expensive errors are (1) treating SSA as a congruence test — it is not, because the given angle is not between the given sides — and (2) adding the scale factor directly to an area ratio. Areas scale as the *square* of the side ratio and volumes as the *cube*, so a $1 : 3$ side ratio gives a $1 : 9$ area ratio, never $1 : 3$.",
)

// ============================================================================
// SECTION 2.1
// ============================================================================
== 2.1 The Triangle and Its Angle Facts

Every triangle in the syllabus is one of six types, but *three facts* hold for all six, and those three facts answer most Section III questions about triangles.

#diagram-fig("diagrams/ch02_triangle_types.svg",
  "The six triangle types. A triangle can carry two labels at once — an isosceles right triangle is both isosceles and right-angled.")

#formula-box("The Three Angle Facts for Every Triangle")[
  - The three interior angles add to $180^degree$: $A + B + C = 180^degree$.
  - An exterior angle equals the sum of the two interior opposite angles: $angle A C D = A + B$.
  - An exterior angle and its adjacent interior angle are supplementary: $angle A C D + C = 180^degree$.

  #v(3pt)
  The second and third facts are the same statement seen from two sides, since $A + B + C = 180^degree$. In an examination, the second form saves a step whenever two interior angles are known.
]

#shortcut-box("The Two-Second Exterior Angle")[
  Given two interior angles, do *not* find the third and then subtract from $180^degree$ twice. Add the two you were given:

  $ "Exterior angle" = A + B $

  For $A = 72^degree$ and $B = 41^degree$ the exterior angle at $C$ is $113^degree$ in one addition. The long method gives $C = 67^degree$ and $180^degree - 67^degree = 113^degree$ — the same answer, twice the work, twice the chance of a slip.
]

#worked-example(
  1,
  "The third angle of a triangle",
  tier: "FOUNDATION",
  [Two angles of a triangle are $57^degree$ and $64^degree$. Find the third angle.],
  [
    *Add the two known angles.*

    $ 57 + 64 = 121 $

    *Subtract from $180^degree$.*

    $ 180 - 121 = 59^degree $

    The third angle is $59^degree$. A quick classification: all three angles are acute, so this is an acute-angled triangle — and since all three are different, it is also scalene.
  ],
)

#worked-example(
  2,
  "An isosceles triangle from its vertex angle",
  tier: "UTME STANDARD",
  [In an isosceles triangle the vertex angle is $44^degree$. Find each base angle.],
  [
    *Name the fact.* The two base angles of an isosceles triangle are equal, and the three angles sum to $180^degree$. Let each base angle be $x$.

    $ 44 + x + x = 180 quad arrow.r.double quad 2x = 136 quad arrow.r.double quad x = 68 $

    Each base angle is $68^degree$.

    *Check.* $44 + 68 + 68 = 180$ ✓. Note the shape of the equation: the *vertex* angle is counted once and the base angle twice. Candidates who write $44 + x = 180$ get $136^degree$ and find it among the options — that is precisely why JAMB prints it.
  ],
)

#worked-example(
  3,
  "The exterior angle of a triangle",
  tier: "UTME STANDARD",
  [Two angles of a triangle are $75^degree$ and $35^degree$. Find the exterior angle at the third vertex.],
  [
    *Method 1 — exterior angle fact.*

    $ "Exterior" = 75 + 35 = 110^degree $

    *Method 2 — third angle first.*

    $ "Third angle" = 180 - 75 - 35 = 70^degree, quad "then" quad 180 - 70 = 110^degree $

    Both methods give $110^degree$; the first is a single addition and is always available. The exterior angle is obtuse here, which is a useful check: an exterior angle is obtuse whenever the sum of the two remote interior angles exceeds $90^degree$.
  ],
)

#worked-example(
  4,
  "An isosceles triangle with an exterior angle",
  tier: "JAMB CHALLENGE",
  [In an isosceles triangle $A B C$ with $A B = A C$, the exterior angle at $C$ is $124^degree$. Find the vertex angle $A$.],
  [
    *Step 1 — Interior angle at $C$.* The exterior angle and the interior angle at the same vertex lie on a straight line:

    $ angle A C B = 180^degree - 124^degree = 56^degree $

    *Step 2 — The other base angle.* Since $A B = A C$, the base angles at $B$ and $C$ are equal:

    $ angle A B C = 56^degree $

    *Step 3 — The vertex angle.*

    $ angle B A C = 180 - 56 - 56 = 68^degree $

    The vertex angle is $68^degree$.

    *A faster route.* The exterior angle at a base vertex equals the sum of the vertex angle and the *other* base angle. Since the two base angles are equal, $124 = A + 56$, so $A = 68^degree$ directly — one subtraction instead of three. Whenever a figure has equal angles, look for a route that uses that equality before computing anything.
  ],
)

#trap-box("Three Distractors Hidden in Every Triangle Question")[
  - *The $180$ distractor:* the third interior angle printed where the exterior angle was asked (here $70^degree$ instead of $110^degree$).
  - *The halving distractor:* the vertex angle printed where a base angle was asked — JAMB knows candidates divide $180^degree$ by $3$ out of habit.
  - *The doubling distractor:* in an isosceles triangle, $2 times$ the base angle offered as the vertex angle, which is only correct when the base angles happen to be $60^degree$.

  The cure for all three is the same: write the equation $A + B + C = 180$ with the actual numbers before you look at the options.
]

// ============================================================================
// SECTION 2.2
// ============================================================================
== 2.2 Congruence: Four Tests and One Non-Test

Two triangles are *congruent* when they are identical in shape and size — you could pick one up and lay it exactly on the other. Only three measurements are needed, but they must be the *right* three.

#diagram-fig("diagrams/ch02_congruence.svg",
  "The four congruence tests drawn on the same pair of triangles: SSS, SAS, ASA (with AAS alongside) and RHS. The fifth panel shows why SSA does not work: two different triangles fit the same two sides and a non-included angle.")

#formula-box("The Four Congruence Tests")[
  - *SSS* — three sides equal.
  - *SAS* — two sides and the *included* angle equal.
  - *ASA* — two angles and the *included* side equal. (AAS also works, because the third angle is then forced.)
  - *RHS* — a right angle, the hypotenuse and one other side equal.

  #v(3pt)
  *Not* a test: SSA (two sides and a non-included angle), and *not* a test: AAA, which gives similarity rather than congruence.
]

The distinction between SAS and SSA is the whole point of the topic, and JAMB asks about it directly. In SAS the angle sits *between* the two named sides; in SSA it does not, and the triangle can then be drawn in two different ways — so the triangles need not be congruent at all.

#concept-box("Why SSA Fails — the Two-Triangle Picture")[
  Hold one side of fixed length and swing a second side of fixed length from one end, at a fixed angle to the *first* side. The free end can land in two different places, one on either side of the perpendicular, giving two genuinely different triangles with the same two sides and the same non-included angle.

  #v(3pt)
  That is why SSS, SAS, ASA and RHS are *tests* — in each of them the given data locks the triangle down to exactly one shape — while SSA merely narrows it to two.
]

#worked-example(
  5,
  "Naming the test that applies",
  tier: "FOUNDATION",
  [In triangles $A B C$ and $P Q R$: $A B = P Q$, $B C = Q R$ and $angle B = angle Q$. Which congruence test applies?],
  [
    *Locate the angle.* The angle named is $B$ in the first triangle and $Q$ in the second. In triangle $A B C$ the angle $B$ is between the sides $A B$ and $B C$; in triangle $P Q R$ the angle $Q$ is between $P Q$ and $Q R$.

    *Match the given data.* Two sides and the included angle are equal in both triangles.

    *Name the test.* That is *SAS* — side, angle, side — and the triangles are congruent: $triangle A B C equiv triangle P Q R$.

    If the stem had given $angle A = angle P$ instead of $angle B = angle Q$, the angle would *not* be included between the named sides, and no test would apply. Always read which vertex the angle belongs to.
  ],
)

#worked-example(
  6,
  "Proving two triangles congruent",
  tier: "UTME STANDARD",
  [In the figure, $A B = A D$ and $B C = D C$. Prove that triangles $A B C$ and $A D C$ are congruent, and deduce that $A C$ bisects $angle B A D$.],
  [
    *Step 1 — List what is given.*
    - $A B = A D$ (given)
    - $B C = D C$ (given)
    - $A C$ is common to both triangles

    *Step 2 — Choose the test.* Three pairs of sides are equal, so *SSS* applies:

    $ triangle A B C equiv triangle A D C quad "(SSS)" $

    *Step 3 — Extract the conclusion.* Corresponding parts of congruent triangles are equal, and $angle B A C$ corresponds to $angle D A C$. Therefore

    $ angle B A C = angle D A C $

    which is exactly the statement that $A C$ bisects $angle B A D$.

    *Technique.* In a rider of this kind, the common side is nearly always the third pair; look for it before deciding which test to try.
  ],
)

#worked-example(
  7,
  "RHS with a shared hypotenuse",
  tier: "JAMB CHALLENGE",
  [$P$ and $Q$ are points on a circle with centre $O$, and $O P perp P T$, $O Q perp Q T$ with $O P = O Q$. Prove that $P T = Q T$.],
  [
    *Step 1 — Identify the right angles.* $O P perp P T$ gives a right angle at $P$; $O Q perp Q T$ gives a right angle at $Q$.

    *Step 2 — List the equal parts in triangles $O P T$ and $O Q T$.*
    - $angle O P T = angle O Q T = 90^degree$ (given)
    - $O T$ is the common hypotenuse
    - $O P = O Q$ (given)

    *Step 3 — Apply RHS.*

    $ triangle O P T equiv triangle O Q T quad "(RHS)" $

    *Step 4 — Conclude.* $P T$ and $Q T$ are corresponding sides, so $P T = Q T$.

    *Why bother with the proof?* Because the same argument is the standard proof that *tangents from an external point are equal* — you will meet it again in Chapter 3, where it is quoted as a theorem.
  ],
)

// ============================================================================
// SECTION 2.3
// ============================================================================
== 2.3 Similar Triangles and Area Ratios

Two triangles are *similar* when they have the same shape but not necessarily the same size: their angles are equal (AA), and their corresponding sides are in a fixed ratio called the *scale factor*.

#diagram-fig("diagrams/ch02_similarity.svg",
  "Similar triangles with scale factor $k = 2$. Every length doubles, the area multiplies by $k^2 = 4$, and — in three dimensions — the volume would multiply by $k^3 = 8$.", width: 80%)

#formula-box("The Similar-Triangle Rules")[
  If two triangles are similar with scale factor $k$ (larger side $-$ smaller side):

  - corresponding *lengths* are in the ratio $k : 1$;
  - corresponding *areas* are in the ratio $k^2 : 1$;
  - corresponding *volumes* are in the ratio $k^3 : 1$.

  #v(3pt)
  In symbols, with corresponding sides $a$ and $A$: $A/a = k$, "Area"(big)/"Area"(small) $= k^2$.
]

#concept-box("Why Areas Go by the Square")[
  A triangle's area is $1/2 times "base" times "height"$. Scaling a figure by $k$ multiplies the base by $k$ *and* the height by $k$, so the area is multiplied by $k times k = k^2$.

  #v(3pt)
  This is not a special rule about triangles: it is true of every plane figure. A photograph enlarged to twice the length and twice the width uses four times the paper. The same reasoning, applied to a solid's three dimensions, gives the cube for volumes.
]

#worked-example(
  8,
  "A missing side in similar triangles",
  tier: "FOUNDATION",
  [Two triangles are similar. A side of the smaller is $6$ cm and the corresponding side of the larger is $18$ cm. Another side of the smaller is $9$ cm. Find the corresponding side of the larger.],
  [
    *Step 1 — Scale factor.*

    $ k = 18/6 = 3 $

    *Step 2 — Apply it.*

    $ "corresponding side" = 3 times 9 = 27 "cm" $

    The larger triangle's side is $27$ cm.

    *Check.* The two ratios must agree: $18/6 = 27/9 = 3$ ✓. If they do not, you have paired the wrong sides — the commonest error in similarity questions is matching a side with the wrong "corresponding" partner.
  ],
)

#worked-example(
  9,
  "A ratio of areas",
  tier: "UTME STANDARD",
  [Two similar figures have corresponding sides in the ratio $1 : 2$. Find the ratio of their areas.],
  [
    *Name the rule.* Areas of similar figures are in the ratio of the *squares* of corresponding sides.

    $ "Area ratio" = 1^2 : 2^2 = 1 : 4 $

    The smaller figure's area is one quarter of the larger's.

    *Sanity check.* The area ratio must be "more extreme" than the length ratio: $1 : 4$ is more extreme than $1 : 2$, and that is always true for $k > 1$. If you ever compute an area ratio that is *less* extreme than the length ratio, you have divided instead of squared.
  ],
)

#worked-example(
  10,
  "Using similarity inside a triangle",
  tier: "JAMB CHALLENGE",
  [In triangle $A B C$, $D$ lies on $A B$ and $E$ lies on $A C$ with $D E$ parallel to $B C$. If $A D = 4$ cm, $D B = 6$ cm and $B C = 15$ cm, find $D E$.],
  [
    *Step 1 — Establish similarity.* $D E$ is parallel to $B C$, so $angle A D E = angle A B C$ (corresponding angles) and $angle A E D = angle A C B$. The triangles $A D E$ and $A B C$ are therefore similar (AA).

    *Step 2 — Find the scale factor from the full side.*

    $ A B = A D + D B = 4 + 6 = 10 "cm" $

    so

    $ k = (A B)/(A D) = 10/4 = 5/2 $

    *Step 3 — Apply to the parallel sides.*

    $ D E = (B C)/k = 15 times 2/5 = 6 "cm" $

    $D E = 6$ cm.

    *The classic error.* Using $6/4$ or $15/10$ — pairing $D B$ with $B C$ — instead of $A D$ with $A B$. The rule is: always compare sides of the *same* small triangle with the corresponding sides of the *same* large triangle. Here that means $A D$ with $A B$, and $D E$ with $B C$.
  ],
)

#worked-example(
  11,
  "Area ratio from a median",
  tier: "JAMB CHALLENGE",
  [In triangle $A B C$, $D$ is the midpoint of $B C$. Show that triangles $A B D$ and $A D C$ have equal area, and state the ratio of their areas to that of $A B C$.],
  [
    *Step 1 — Same height.* Both triangles have vertex $A$ and their bases $B D$ and $D C$ lie on the same line $B C$. The perpendicular height from $A$ to that line is therefore the same for both.

    *Step 2 — Apply the area formula.* With equal bases ($B D = D C$, since $D$ is the midpoint) and equal heights,

    $ "Area"(A B D) = 1/2 times B D times h = 1/2 times D C times h = "Area"(A D C) $

    *Step 3 — Ratio to the whole.* The two equal areas make up the whole triangle, so each is half:

    $ "Area"(A B D) : "Area"(A D C) : "Area"(A B C) = 1 : 1 : 2 $

    A *median* always bisects the area of a triangle — a fact worth carrying into any question that mentions a midpoint.
  ],
)

#trap-box("The Three Similarity Traps")[
  - *Squaring the wrong thing:* giving the area ratio as the side ratio ($1 : 3$ instead of $1 : 9$).
  - *Mismatched sides:* pairing $D B$ with $B C$, when the correct pair is $A D$ with $A B$.
  - *Linear scale on volumes:* a $1 : 2$ side ratio gives $1 : 8$ for volume, not $1 : 4$ and certainly not $1 : 2$.
]

// ============================================================================
// SECTION 2.4
// ============================================================================
== 2.4 Pythagoras' Theorem and the Triads

In a right-angled triangle, the square on the hypotenuse equals the sum of the squares on the other two sides.

#diagram-fig("diagrams/ch02_pythagoras.svg",
  "The $3$–$4$–$5$ triangle with squares built on each side: $9 + 16 = 25$. This is the only triad JAMB expects you to draw from memory, but the others behave identically.")

#formula-box("Pythagoras, Forwards and Backwards")[
  With hypotenuse $c$ and legs $a$, $b$:

  $ c^2 = a^2 + b^2 quad quad c = sqrt(a^2 + b^2) $

  and, when the hypotenuse is known,

  $ a^2 = c^2 - b^2 quad quad a = sqrt(c^2 - b^2) $

  #v(3pt)
  The hypotenuse is always the side *opposite the right angle* — the longest side. Naming it correctly is half the battle.
]

#concept-box("The Five Triads That Answer Most Questions")[
  #table(
    columns: (auto, auto, auto, 1.5fr),
    inset: 5.5pt,
    align: (center + horizon, center + horizon, center + horizon, left + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$a$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$b$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$c$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Multiples you should also recognise],
    [$3$], [$4$], [$5$], [$6, 8, 10$; $9, 12, 15$; $12, 16, 20$; $15, 20, 25$],
    [$5$], [$12$], [$13$], [$10, 24, 26$; $15, 36, 39$],
    [$8$], [$15$], [$17$], [$16, 30, 34$],
    [$7$], [$24$], [$25$], [$14, 48, 50$],
    [$20$], [$21$], [$29$], [$40, 42, 58$],
  )

  #v(3pt)
  Reading a stem that quotes $9$ cm and $12$ cm should trigger the answer $15$ cm *before* you square anything. The triads exist so that JAMB can set a Pythagoras question whose answer is a whole number — which is why almost every Pythagoras question you meet is one of the five above, or a multiple of one.
]

#worked-example(
  12,
  "Finding the hypotenuse",
  tier: "FOUNDATION",
  [A right-angled triangle has legs $8$ cm and $15$ cm. Find the hypotenuse.],
  [
    *Substitute.*

    $ c^2 = 8^2 + 15^2 = 64 + 225 = 289 $

    *Take the positive root.*

    $ c = sqrt(289) = 17 "cm" $

    The hypotenuse is $17$ cm. Since $8, 15, 17$ is a standard triad, the answer could have been written down immediately — but always show the squares in a written answer, because the method carries the marks in a theory paper.
  ],
)

#worked-example(
  13,
  "Finding a leg",
  tier: "UTME STANDARD",
  [In a right-angled triangle the hypotenuse is $26$ cm and one leg is $10$ cm. Find the other leg.],
  [
    *Substitute, subtracting this time.*

    $ b^2 = 26^2 - 10^2 = 676 - 100 = 576 $

    $ b = sqrt(576) = 24 "cm" $

    *The subtler error.* Adding instead of subtracting gives $sqrt(776) approx 27.9$, which is longer than the hypotenuse — impossible, since the hypotenuse is the longest side. Train the habit: after any Pythagoras calculation, check that the hypotenuse is the largest of the three numbers.
  ],
)

#worked-example(
  14,
  "Pythagoras inside an isosceles triangle",
  tier: "JAMB CHALLENGE",
  [An isosceles triangle has equal sides $13$ cm and base $10$ cm. Find its area.],
  [
    *Step 1 — Drop the perpendicular.* Draw the perpendicular from the apex to the base. In an isosceles triangle it bisects the base, so each half is $5$ cm.

    *Step 2 — Find the height with Pythagoras.* The right triangle formed has hypotenuse $13$ cm and one leg $5$ cm:

    $ h^2 = 13^2 - 5^2 = 169 - 25 = 144 quad arrow.r.double quad h = 12 "cm" $

    *Step 3 — Area.*

    $ A = 1/2 times "base" times h = 1/2 times 10 times 12 = 60 "cm"^2 $

    The area is $60$ cm².

    *Generalisable.* Every "find the area of an isosceles triangle from its sides" question is this same three-step routine: halve the base, Pythagoras for the height, then $1/2 b h$. The perpendicular *always* bisects the base, so the halving is legitimate without proof.
  ],
)

#worked-example(
  15,
  "Testing for a right angle",
  tier: "UTME STANDARD",
  [A triangle has sides $9$ cm, $12$ cm and $15$ cm. Is it right-angled? If so, at which vertex?],
  [
    *Step 1 — Identify the longest side.* That is $15$ cm, so if the triangle is right-angled the right angle is opposite it.

    *Step 2 — Compare the squares.*

    $ 9^2 + 12^2 = 81 + 144 = 225 quad "and" quad 15^2 = 225 $

    *Step 3 — Conclude.* Since $9^2 + 12^2 = 15^2$, the triangle is right-angled, and the right angle is opposite the $15$ cm side.

    *The general test.* Compare $a^2 + b^2$ with $c^2$ where $c$ is the longest side: equal means right-angled, $a^2 + b^2 > c^2$ means acute, $a^2 + b^2 < c^2$ means obtuse. JAMB uses this converse to ask "which of these sets of lengths can form a right-angled triangle?" — the answer is always a triad.
  ],
)

#shortcut-box("Pythagoras Without Squaring")[
  If both given sides come from the same triad family, *divide out* first, then multiply back:

  - $6$ cm and $8$ cm? Divide by $2$ to get $3$ and $4$, so the hypotenuse is $5 times 2 = 10$ cm.
  - $40$ cm and $9$ cm? Recognise $40 = 5 times 8$ and $9$ is not obviously $12 times$, so use $9, 40, 41$.
  - $75$ cm and $100$ cm? Divide by $25$: $3$ and $4$, so the hypotenuse is $5 times 25 = 125$ cm.

  This costs two seconds and removes the commonest arithmetic slip — miscopying a four-digit square.
]

// ============================================================================
// SECTION 2.5
// ============================================================================
== 2.5 Area Formulae for Triangles

#diagram-fig("diagrams/ch02_area_formulas.svg",
  "The four area formulae on the same triangle: half base times height, half the product of two sides times the sine of the included angle, Heron's formula, and the equilateral special case.")

#formula-box("Four Ways to Find a Triangle's Area")[
  - Base and height: $A = 1/2 b h$.
  - Two sides and the included angle: $A = 1/2 a b sin C$.
  - Three sides (Heron): $A = sqrt(s(s - a)(s - b)(s - c))$ where $s = (a + b + c)/2$.
  - Equilateral triangle of side $a$: $A = (sqrt(3))/4 a^2$, with height $(sqrt(3))/2 a$.

  #v(3pt)
  A right-angled triangle is the special case of the first with $h$ equal to one leg: $A = 1/2 times "leg" times "leg"$.
]

#worked-example(
  16,
  "Area from a base and a height",
  tier: "FOUNDATION",
  [Find the area of a triangle with base $19$ cm and height $8$ cm.],
  [
    $ A = 1/2 b h = 1/2 times 19 times 8 = 76 "cm"^2 $

    Notice that the half cancels neatly with the even height. In an exam, always look for that cancellation before multiplying out: $1/2 times 8 = 4$, then $4 times 19 = 76$ is one step, while $19 times 8 = 152$ then halving is two.
  ],
)

#worked-example(
  17,
  "Area of an equilateral triangle",
  tier: "UTME STANDARD",
  [Find the area of an equilateral triangle of side $6$ cm.],
  [
    *Substitute into the formula.*

    $ A = (sqrt(3))/4 a^2 = (sqrt(3))/4 times 36 = 9 sqrt(3) "cm"^2 $

    *Or derive it.* The height is $(sqrt(3))/2 times 6 = 3 sqrt(3)$, so

    $ A = 1/2 times 6 times 3 sqrt(3) = 9 sqrt(3) "cm"^2 $

    Both routes give $9 sqrt(3) approx 15.6$ cm². The formula is worth memorising because the derivation costs thirty seconds you may not have; but knowing the derivation protects you if you misremember whether the $4$ is above or below the line.
  ],
)

#worked-example(
  18,
  "Area from three sides (Heron)",
  tier: "JAMB CHALLENGE",
  [Find the area of a triangle with sides $13$ cm, $14$ cm and $15$ cm.],
  [
    *Step 1 — Semi-perimeter.*

    $ s = (13 + 14 + 15)/2 = 42/2 = 21 $

    *Step 2 — Substitute into Heron.*

    $ A = sqrt(21(21 - 13)(21 - 14)(21 - 15)) = sqrt(21 times 8 times 7 times 6) $

    *Step 3 — Simplify.*

    $ A = sqrt(7056) = 84 "cm"^2 $

    The area is $84$ cm². A useful check: pair the factors into $21 times 6 = 126$ and $8 times 7 = 56$; then $126 times 56 = 7056$, and $84^2 = 7056$ ✓.
  ],
)

#worked-example(
  19,
  "Area with the sine formula",
  tier: "UTME STANDARD",
  [Find the area of a triangle with sides $8$ cm and $5$ cm enclosing an angle of $30^degree$.],
  [
    $ A = 1/2 a b sin C = 1/2 times 8 times 5 times sin 30^degree $

    With $sin 30^degree = 1/2$:

    $ A = 1/2 times 40 times 1/2 = 10 "cm"^2 $

    The area is $10$ cm². Whenever the included angle is $30^degree$, $45^degree$ or $60^degree$, the sine formula is the intended route — and the sine values come from the special triangles of Chapter 9, so this question is really a trigonometry question wearing a geometry hat.
  ],
)

#trap-box("The Wrong-Angle Trap in $1/2 a b sin C$")[
  The angle in $1/2 a b sin C$ must be the angle *between* the two sides you use. If a stem gives sides $8$ and $5$ and an angle of $30^degree$ at a *different* vertex, the formula does not apply with those numbers.

  In diagrams, the included angle is the one at the vertex where the two named sides meet. If a question deliberately quotes a non-included angle, the intended route is the sine rule (Chapter 10) first, to obtain an included angle.
]

// ============================================================================
// SECTION 2.6
// ============================================================================
== 2.6 Quadrilaterals and Their Diagonals

Chapter 1 gave the angle facts; this section gives the *side* and *diagonal* facts that JAMB tests alongside them.

#table(
  columns: (1.1fr, 1.2fr, 1.2fr, 1.2fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Sides],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Diagonals],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Area],
  ),
  [Parallelogram], [Both pairs parallel and equal], [Bisect each other], [$b h$],
  [Rectangle], [All angles $90^degree$], [Equal and bisect each other], [$l b$],
  [Rhombus], [All four sides equal], [Bisect at $90^degree$], [$1/2 d_1 d_2$],
  [Square], [All sides equal, all angles $90^degree$], [Equal, bisect at $90^degree$], [$a^2$ or $1/2 d^2$],
  [Trapezium], [One pair parallel], [Not equal in general], [$1/2 (a + b) h$],
  [Kite], [Two pairs of adjacent equal sides], [One diagonal bisects the other at $90^degree$], [$1/2 d_1 d_2$],
)

#worked-example(
  20,
  "Area of a rhombus from its diagonals",
  tier: "UTME STANDARD",
  [A rhombus has diagonals $16$ cm and $12$ cm. Find its area and the length of a side.],
  [
    *Step 1 — Area.*

    $ A = 1/2 d_1 d_2 = 1/2 times 16 times 12 = 96 "cm"^2 $

    *Step 2 — Side.* The diagonals bisect each other at right angles, so each quarter of the rhombus is a right triangle with legs $8$ cm and $6$ cm:

    $ "side" = sqrt(8^2 + 6^2) = sqrt(100) = 10 "cm" $

    *Step 3 — Check.* With side $10$ cm and height $96/10 = 9.6$ cm, the area is $10 times 9.6 = 96$ cm² ✓.

    This is the standard two-part rhombus question: the area comes from the diagonals, the side from Pythagoras on a quarter. Both appear in the same stem surprisingly often.
  ],
)

#worked-example(
  21,
  "Area of a trapezium",
  tier: "UTME STANDARD",
  [A trapezium has parallel sides $8$ cm and $14$ cm and height $6$ cm. Find its area.],
  [
    $ A = 1/2 (a + b) h = 1/2 (8 + 14) times 6 = 1/2 times 22 times 6 = 66 "cm"^2 $

    The area is $66$ cm².

    *A check that costs nothing.* The trapezium's area must lie between the areas of the two rectangles it contains — $8 times 6 = 48$ cm² and $14 times 6 = 84$ cm² — and $66$ does. Any answer outside that band is certainly wrong, which eliminates two options instantly.
  ],
)

// ============================================================================
// SECTION 2.7
// ============================================================================
== 2.7 Chapter 2 Rapid-Revision Checklist

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
  [ two angles given, third required ], [ Subtract both from $180^degree$. ], [ Add the two first, then subtract once. ],
  [ exterior angle of a triangle ], [ Add the two remote interior angles. ], [ Do not subtract from $180^degree$ twice. ],
  [ isosceles, vertex given ], ["$2x = 180 - "vertex"$."], [ The base angle is counted twice. ],
  [ which condition proves congruence ], [ SSS, SAS, ASA, RHS. ], [ SSA and AAA are *not* tests. ],
  [ similar triangles, missing side ], [ Scale factor $k$, then multiply. ], [ Pair the correct corresponding sides. ],
  [ ratio of areas of similar figures ], [ Square the side ratio. ], [ Volumes use the cube. ],
  [ right triangle, two sides known ], [ Pythagoras, adding or subtracting. ], [ The hypotenuse is the longest side. ],
  [ is the triangle right-angled? ], [ Compare $a^2 + b^2$ with $c^2$. ], [ $c$ must be the *longest* side. ],
  [ area of isosceles from sides ], [ Halve the base, Pythagoras for $h$, then $1/2 b h$. ], [ The perpendicular bisects the base. ],
  [ rhombus, diagonals given ], [ Area $= 1/2 d_1 d_2$; side from a quarter-triangle. ], [ Halve both diagonals before Pythagoras. ],
  [ trapezium area ], [ $1/2 (a + b) h$. ], [ $h$ is the perpendicular gap, not a sloping side. ],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 2 in One Breath]
  #v(3pt)
  The three angles of a triangle add to $180^degree$, and an exterior angle is the sum of the two remote interior ones. Congruence needs SSS, SAS, ASA or RHS — never SSA. Similarity comes from equal angles and gives a scale factor for lengths, its square for areas and its cube for volumes. Pythagoras runs in both directions, and five triads cover almost every question. Areas come from $1/2 b h$, Heron, $1/2 a b sin C$, or the equilateral shortcut.
]


#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the angle facts, the four congruence tests, the triads and the area formulae.", width: 76%)

== 2.8 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [Two angles of a triangle are $63^degree$ and $48^degree$. Find the exterior angle at the third vertex.], [$111^degree$], [$69^degree$], [$249^degree$], [$159^degree$])

#mcq(2, [A right-angled triangle has legs $9$ cm and $40$ cm. Find the hypotenuse.], [$41$ cm], [$49$ cm], [$45$ cm], [$31$ cm])

#mcq(3, [Two similar figures have corresponding sides in the ratio $2 : 5$. Find the ratio of their areas.], [$4 : 25$], [$2 : 5$], [$8 : 125$], [$4 : 10$])

#mcq(4, [Which of these is *not* a condition for two triangles to be congruent?], [SSA], [SSS], [SAS], [RHS])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) $63 + 48 = 111^degree$; (2) $9, 40, 41$ is a triad; (3) areas go by the square, $2^2 : 5^2$; (4) SSA does not determine a triangle.
  ]
]

#v(3pt)

Note question 3: $8 : 125$ is the *volume* ratio and $2 : 5$ is the *length* ratio. Both are printed as options because both are real ratios of the same pair of figures — the only question is which one the stem asked for.


// ============================================================================
#include "drill_ch02.typ"
