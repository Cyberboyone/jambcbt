#import "template.typ": *

#current-chapter.update("Chapter 9: Trigonometric Ratios and Graphs")
#pagebreak()

#chapter-opener(
  9,
  "Trigonometric Ratios and Graphs",
  subtitle: "Sine, Cosine and Tangent; the Special Angles; the Unit Circle and CAST; Reciprocal Ratios; the Graphs of $sin x$ and $cos x$; and Simple Trigonometric Equations",
  syllabus-ref: "Sec. III • Topic 9",
  utme-weight: "2–3 Qs every year",
)

#focus-radar(
  objectives: (
    "Define $sin theta$, $cos theta$ and $tan theta$ in a right-angled triangle (SOH CAH TOA).",
    "State and use the exact values at $30^degree$, $45^degree$ and $60^degree$.",
    "Extend the definitions to obtuse and reflex angles using the unit circle and the CAST rule.",
    "Sketch the graphs of $sin x$ and $cos x$, and read period, amplitude and range from them.",
    "Solve simple trigonometric equations of the form $sin x = k$ for the angles in a given range.",
  ),
  hotspots: (
    "Evaluating a ratio at one of the special angles — an almost guaranteed single question.",
    "Finding a missing side or angle in a right-angled triangle from two given pieces.",
    "$sin theta = cos(90^degree - theta)$ and the obtuse-angle signs.",
    "Period ($360^degree$ for sine and cosine, $180^degree$ for tangent) and amplitude.",
    "Solving $sin x = k$ in $0^degree <= x <= 360^degree$ — two answers, not one.",
  ),
  trap-summary: "Three errors recur. (1) Using the wrong side in SOH CAH TOA — the *opposite* side is the one facing the angle, and the *adjacent* is the one touching it but not the hypotenuse. (2) Forgetting the second answer when solving $sin x = k$: a sine equation in $0^degree$ to $360^degree$ almost always has two solutions, $x$ and $180^degree - x$. (3) Trying to use a calculator for $sin 30^degree$ when the exact value $1/2$ is required, and the options are printed as fractions.",
)

// ============================================================================
// SECTION 9.1
// ============================================================================
== 9.1 The Three Ratios

#diagram-fig("diagrams/ch09_sohcahtoa.svg",
  "The right triangle naming convention: the hypotenuse is always opposite the right angle, the *opposite* side faces the angle $theta$, and the *adjacent* side touches $theta$ without being the hypotenuse.")

#formula-box("SOH CAH TOA")[
  For an acute angle $theta$ in a right-angled triangle:

  $ sin theta = "opposite"/"hypotenuse" quad quad cos theta = "adjacent"/"hypotenuse" quad quad tan theta = "opposite"/"adjacent" $

  and the reciprocal ratios:

  $ csc theta = 1/(sin theta) quad quad sec theta = 1/(cos theta) quad quad cot theta = 1/(tan theta) = (cos theta)/(sin theta) $
]

#shortcut-box("Two Words Decide Everything")[
  The hypotenuse never changes: it is opposite the right angle and it is the longest side.

  The other two names follow the *angle*, not the triangle:
  - *opposite* = the side that does not touch the angle at all;
  - *adjacent* = the side that touches the angle (besides the hypotenuse).

  If you switch the angle $theta$ to the other acute angle, the opposite and adjacent sides swap. That is the source of the complement identities in Section 9.4.
]

#worked-example(
  1,
  "Sin from two sides",
  tier: "FOUNDATION",
  [In a right-angled triangle the side opposite $theta$ is $7$ cm and the hypotenuse is $25$ cm. Find $sin theta$.],
  [
    *Use SOH.*

    $ sin theta = "opposite"/"hypotenuse" = 7/25 $

    *Check with the third side.* By Pythagoras the adjacent side is $sqrt(625 - 49) = 24$ cm, so $cos theta = 24/25$ and $tan theta = 7/24$ — all three ratios of the $7, 24, 25$ triad.

    *The distractor.* $24/25$ (the cosine) and $7/24$ (the tangent) are always in the options. Read which ratio the question asked for *before* writing the fraction.
  ],
)

#worked-example(
  2,
  "Finding a missing side",
  tier: "UTME STANDARD",
  [In a right-angled triangle, the angle at $A$ is $35^degree$ and the hypotenuse is $20$ cm. Find the side opposite $A$, correct to one decimal place. ($sin 35^degree = 0.574$.)],
  [
    *Choose the ratio.* We know the hypotenuse and want the opposite side, so use SOH:

    $ sin 35^degree = "opp"/20 quad arrow.r.double quad "opp" = 20 sin 35^degree $

    *Substitute.*

    $ "opp" = 20 times 0.574 = 11.5 "cm" $

    The side is $11.5$ cm.

    *The decision procedure.* Write down what you are given (hypotenuse) and what you want (opposite); the ratio that contains exactly those two is the one to use. Guessing between sine and cosine is unnecessary — the letters decide it.
  ],
)

#worked-example(
  3,
  "Finding a missing angle",
  tier: "UTME STANDARD",
  [In a right-angled triangle the side opposite $theta$ is $5$ cm and the adjacent side is $12$ cm. Find $tan theta$ and hence $theta$. ($tan 22.6^degree approx 0.417$.)],
  [
    *Ratio.*

    $ tan theta = 5/12 approx 0.417 $

    *Angle.* Reading from the given value,

    $ theta approx 22.6^degree $

    *Why $tan$ and not $sin$.* Both given sides touch the right angle — the opposite and the adjacent — so TOA is the only ratio that uses exactly those two. In an exam where no calculator is allowed, the angle is always one of the given special values, or the question asks only for the *ratio*.
  ],
)

#worked-example(
  4,
  "Tangent from the other two ratios",
  tier: "JAMB CHALLENGE",
  [Given $sin theta = 3/5$ for an acute angle $theta$, find $cos theta$ and $tan theta$ without using a calculator.],
  [
    *Step 1 — Draw the triangle.* A right triangle with opposite $3$ and hypotenuse $5$.

    *Step 2 — Third side by Pythagoras.*

    $ "adjacent" = sqrt(25 - 9) = sqrt(16) = 4 $

    *Step 3 — Read off.*

    $ cos theta = 4/5, quad quad tan theta = 3/4 $

    *The identity version.* $sin^2 theta + cos^2 theta = 1$, so $cos theta = sqrt(1 - 9/25) = sqrt(16/25) = 4/5$, and $tan theta = sin theta\/cos theta = (3/5)/(4/5) = 3/4$ ✓.

    *Which method to prefer.* The triangle is faster and less error-prone when the numbers form a triad; the identity is safer when they do not.
  ],
)

// ============================================================================
// SECTION 9.2
// ============================================================================
== 9.2 The Special Angles

#diagram-fig("diagrams/ch09_special_triangles.svg",
  "The two triangles that produce every exact value: the half-equilateral triangle ($30^degree$–$60^degree$–$90^degree$) with sides $1, sqrt(3), 2$, and the isosceles right triangle ($45^degree$–$45^degree$–$90^degree$) with sides $1, 1, sqrt(2)$.")

#formula-box("The Exact Values")[
  #table(
    columns: (auto, auto, auto, auto),
    inset: 6pt,
    align: (center + horizon, center + horizon, center + horizon, center + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$theta$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$sin theta$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$cos theta$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$tan theta$],
    [$0^degree$], [$0$], [$1$], [$0$],
    [$30^degree$], [$1/2$], [$sqrt(3)/2$], [$sqrt(3)/3$],
    [$45^degree$], [$sqrt(2)/2$], [$sqrt(2)/2$], [$1$],
    [$60^degree$], [$sqrt(3)/2$], [$1/2$], [$sqrt(3)$],
    [$90^degree$], [$1$], [$0$], [undefined],
  )
]

#shortcut-box("Rebuild the Table in Ten Seconds")[
  Write the sine row as

  $ 0, quad 1/2, quad sqrt(2)/2, quad sqrt(3)/2, quad 1 $

  — that is $sqrt(0)/2$, $sqrt(1)/2$, $sqrt(2)/2$, $sqrt(3)/2$, $sqrt(4)/2$. The cosine row is the same sequence *reversed*. The tangent row is sine over cosine.

  #v(3pt)
  No memorisation beyond the pattern, and no risk of a memorised row being one entry out of step.
]

#worked-example(
  5,
  "Evaluating at special angles",
  tier: "FOUNDATION",
  [Evaluate $sin 30^degree + cos 60^degree$],
  [
    $ sin 30^degree = 1/2, quad cos 60^degree = 1/2 $

    $ "sum" = 1/2 + 1/2 = 1 $

    The value is $1$.

    *Why this question is common.* It tests the two entries of the table that are equal, so a candidate who has memorised only one row still gets it — and a candidate who has swapped the rows gets $1$ as well, which is why the examiner pairs them this way.
  ],
)

#worked-example(
  6,
  "A product of special values",
  tier: "UTME STANDARD",
  [Without a calculator, evaluate $sin 45^degree cos 30^degree + cos 45^degree sin 30^degree$],
  [
    *Substitute the exact values.*

    $ sin 45^degree = cos 45^degree = sqrt(2)/2, quad cos 30^degree = sqrt(3)/2, quad sin 30^degree = 1/2 $

    *Multiply each product.*

    $ sqrt(2)/2 times sqrt(3)/2 = sqrt(6)/4, quad quad sqrt(2)/2 times 1/2 = sqrt(2)/4 $

    *Add.*

    $ (sqrt(6) + sqrt(2))/4 $

    *The recognition.* This is the expansion of $sin(45^degree + 30^degree) = sin 75^degree$, so the answer is $sin 75^degree$ — a value that is not on the table, which is exactly why the question gives it in this composite form. If the options are printed as $sin 75^degree$, take that; if they are printed in surd form, the algebra above is the answer.
  ],
)

#worked-example(
  7,
  "Solving a special-angle equation",
  tier: "JAMB CHALLENGE",
  [Solve $2 sin theta = 1$ for $0^degree <= theta <= 360^degree$],
  [
    *Step 1 — Isolate the ratio.*

    $ sin theta = 1/2 $

    *Step 2 — Principal value.* The acute angle whose sine is $1/2$ is

    $ theta = 30^degree $

    *Step 3 — Second value.* Sine is also positive in the second quadrant, and there

    $ theta = 180^degree - 30^degree = 150^degree $

    *Step 4 — State both.*

    $ theta = 30^degree quad "or" quad theta = 150^degree $

    *The most expensive omission in the topic.* A sine equation in a full $360^degree$ range has two solutions unless the value is $0$, $1$ or $-1$. Both options appear separately in the answer list, and choosing one of them is choosing a distractor.
  ],
)

// ============================================================================
// SECTION 9.3
// ============================================================================
== 9.3 The Unit Circle and CAST

#diagram-fig("diagrams/ch09_unit_circle_cast.svg",
  "The unit circle with the CAST rule: in the first quadrant all three ratios are positive (A); in the second only sine (S); in the third only tangent (T); in the fourth only cosine (C).")

#formula-box("Signs by Quadrant")[
  #table(
    columns: (auto, auto, auto, auto, auto),
    inset: 5.5pt,
    align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Quadrant],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Range],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$sin$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$cos$],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$tan$],
    [First (A)], [$0^degree$–$90^degree$], [$+$], [$+$], [$+$],
    [Second (S)], [$90^degree$–$180^degree$], [$+$], [$-$], [$-$],
    [Third (T)], [$180^degree$–$270^degree$], [$-$], [$-$], [$+$],
    [Fourth (C)], [$270^degree$–$360^degree$], [$-$], [$+$], [$-$],
  )
]

#concept-box("Why the Signs Change")[
  On the unit circle a point at angle $theta$ has coordinates $(cos theta, sin theta)$. The $x$-coordinate is the cosine and the $y$-coordinate is the sine — so the signs of sine and cosine are simply the signs of $y$ and $x$ in that quadrant.

  #v(3pt)
  Tangent is $y/x$, so it is positive exactly where $x$ and $y$ have the *same* sign — the first and third quadrants. That is the whole of CAST, derived in one line.
]

#worked-example(
  8,
  "Sign of an obtuse angle",
  tier: "UTME STANDARD",
  [For an obtuse angle $theta$, which statement is true? (a) both $sin theta$ and $cos theta$ are positive; (b) $sin theta$ is positive and $cos theta$ is negative; (c) both are negative; (d) $sin theta$ is negative and $cos theta$ is positive.],
  [
    *Locate the quadrant.* An obtuse angle lies between $90^degree$ and $180^degree$ — the second quadrant.

    *Read the CAST table.* In the second quadrant:

    $ sin theta > 0 quad quad cos theta < 0 quad quad tan theta < 0 $

    *Answer:* (b).

    *Why this matters beyond the theory question.* It decides the sign of a coordinate when you solve a trigonometric equation, and it is the reason $cos 120^degree = -1/2$ rather than $+1/2$.
  ],
)

#worked-example(
  9,
  "Evaluating beyond $90^degree$",
  tier: "JAMB CHALLENGE",
  [Evaluate $cos 240^degree$ and $tan 225^degree$ without a calculator.],
  [
    *$cos 240^degree$.* The angle is in the third quadrant, where cosine is negative. The reference angle is

    $ 240^degree - 180^degree = 60^degree $

    so

    $ cos 240^degree = -cos 60^degree = -1/2 $

    *$tan 225^degree$.* The angle is in the third quadrant, where tangent is positive. The reference angle is

    $ 225^degree - 180^degree = 45^degree $

    so

    $ tan 225^degree = +tan 45^degree = 1 $

    *The two-step routine.* (1) Find the reference angle by subtracting the nearest multiple of $180^degree$. (2) Apply the sign from the quadrant. Every "evaluate at a large angle" question is those two steps.
  ],
)

// ============================================================================
// SECTION 9.4
// ============================================================================
== 9.4 Complementary Angles and Identities

#formula-box("The Identities You Need")[
  $ sin(90^degree - theta) = cos theta quad quad cos(90^degree - theta) = sin theta $

  $ sin^2 theta + cos^2 theta = 1 quad quad tan theta = (sin theta)/(cos theta) $

  $ sin(180^degree - theta) = sin theta quad quad cos(180^degree - theta) = -cos theta $
]

#shortcut-box("The 90-minus Swap")[
  Any trigonometric ratio of $(90^degree - theta)$ is the *co*-ratio of $theta$. That is literally what "cosine" means: the sine of the *complement*.

  - $sin 40^degree = cos 50^degree$.
  - $tan 20^degree = cot 70^degree$.
  - $sin 90^degree = cos 0^degree = 1$ ✓.

  In an equation like $sin(2x + 10^degree) = cos 40^degree$, replace the cosine by $sin 50^degree$ and you have a one-line linear equation.
]

#worked-example(
  10,
  "Writing a sine as a cosine",
  tier: "FOUNDATION",
  [Write $sin 45^degree$ in terms of a cosine.],
  [
    $ sin 45^degree = cos(90^degree - 45^degree) = cos 45^degree $

    *Check.* Both are $sqrt(2)/2$ ✓. The special case $45^degree$ is the only angle whose sine and cosine are equal, which is why it is the least interesting example of the identity — and the one examiners use most often because it needs no arithmetic.
  ],
)

#worked-example(
  11,
  "Solving a complementary equation",
  tier: "JAMB CHALLENGE",
  [Find $x$ if $sin(2x + 10^degree) = cos 40^degree$ and $0^degree < x < 45^degree$],
  [
    *Step 1 — Convert the cosine.*

    $ cos 40^degree = sin(90^degree - 40^degree) = sin 50^degree $

    *Step 2 — Equate the arguments.*

    $ 2x + 10^degree = 50^degree quad arrow.r.double quad 2x = 40^degree quad arrow.r.double quad x = 20^degree $

    *Step 3 — Check the range.* $20^degree$ lies between $0^degree$ and $45^degree$ ✓.

    *A caution.* Equating arguments is only safe when both angles are acute. If the arguments can be obtuse, the second solution of $sin alpha = sin beta$ is $alpha = 180^degree - beta$ — a stem that restricts $x$ to a small range is telling you not to bother.
  ],
)

#worked-example(
  12,
  "Using the Pythagorean identity",
  tier: "UTME STANDARD",
  [If $sin theta = 5/13$ and $theta$ is acute, find $cos theta$.],
  [
    $ cos theta = sqrt(1 - sin^2 theta) = sqrt(1 - 25/169) = sqrt(144/169) = 12/13 $

    The cosine is $12/13$.

    *The sign choice.* $theta$ is acute, so the cosine is positive and the positive root is correct. For an obtuse $theta$ the answer would be $-12/13$ — the same magnitude, the opposite sign, and a favourite distractor.
  ],
)

// ============================================================================
// SECTION 9.5
// ============================================================================
== 9.5 Graphs of Sine and Cosine

#diagram-fig("diagrams/ch09_sine_graph.svg",
  "$y = sin x$ over $0^degree$ to $360^degree$: starts at $0$, peaks at $(90^degree, 1)$, returns to $0$ at $180^degree$, troughs at $(270^degree, -1)$ and completes the cycle at $360^degree$.")

#diagram-fig("diagrams/ch09_cosine_graph.svg",
  "$y = cos x$ over $0^degree$ to $360^degree$: starts at $1$, first crosses zero at $90^degree$, reaches $-1$ at $180^degree$ and returns to $1$ at $360^degree$ — the sine curve shifted left by $90^degree$.")

#formula-box("Reading a Trigonometric Graph")[
  - *Period*: the length of one complete cycle. $360^degree$ (or $2 pi$) for both $sin x$ and $cos x$; $180^degree$ (or $pi$) for $tan x$.
  - *Amplitude*: half the distance between the maximum and the minimum. For $y = a sin x$ the amplitude is $|a|$; for $sin x$ it is $1$.
  - *Range*: $-1 <= sin x <= 1$ and $-1 <= cos x <= 1$ for the basic curves; $-|a| <= a sin x <= |a|$ in general.
  - *The maximum of $a sin x$* is $|a|$; the minimum is $-|a|$.
]

#worked-example(
  13,
  "Period and amplitude",
  tier: "UTME STANDARD",
  [State the period and amplitude of (a) $y = sin x$, (b) $y = 3 sin x$, (c) $y = cos 2x$],
  [
    *(a)* Period $360^degree$, amplitude $1$.

    *(b)* Period $360^degree$, amplitude $3$ — multiplying the function stretches it vertically but does not change how often it repeats.

    *(c)* For $y = cos k x$ the period is $360^degree/k$, so here it is $180^degree$; the amplitude is still $1$ — multiplying the *angle* compresses the curve horizontally but does not stretch it vertically.

    *The rule in one line.* A coefficient *outside* the function changes amplitude; a coefficient *inside* changes period. That single sentence answers every graph question in the syllabus.
  ],
)

#worked-example(
  14,
  "Sketching and reading a maximum",
  tier: "JAMB CHALLENGE",
  [For $0^degree <= x <= 360^degree$, state the maximum value of $y = 2 sin x + 1$ and the value of $x$ at which it occurs.],
  [
    *Step 1 — The maximum of $sin x$.* It is $1$, occurring at $x = 90^degree$.

    *Step 2 — Substitute.*

    $ y_"max" = 2(1) + 1 = 3 quad "at" quad x = 90^degree $

    *The general method.* Find the maximum of the trigonometric part first, then apply the outer operations in the same order you would for any expression. Here the "shift up by $1$" moves the whole curve without moving the position of the peak.
  ],
)

// ============================================================================
// SECTION 9.6
// ============================================================================
== 9.6 Chapter 9 Rapid-Revision Checklist

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
  ["evaluate $sin$, $cos$, $tan$ at $30, 45, 60$"], ["The special-value table."], ["$sin 30^degree = 1/2$, not $sqrt(3)/2$."],
  ["missing side in a right triangle"], ["SOH CAH TOA on the named ratio."], ["Identify opposite and adjacent by the angle."],
  ["sign of an obtuse angle"], ["Second quadrant: sine only is positive."], ["Cosine turns negative."],
  ["evaluate at $120^degree$–$330^degree$"], ["Reference angle, then the CAST sign."], ["Subtract the nearest multiple of $180^degree$."],
  ["write $sin theta$ as a cosine"], ["$cos(90^degree - theta)$."], ["Swap the angle, change the ratio."],
  ["$sin^2 + cos^2$"], ["Equal to $1$."], ["Sign of the root follows the quadrant."],
  ["period of $sin x$, $cos x$, $tan x$"], ["$360^degree$, $360^degree$, $180^degree$."], ["Only tangent halves it."],
  ["amplitude of $a sin x$"], ["$|a|$."], ["The shift $+1$ does not change it."],
  ["solve $sin x = k$"], ["Two solutions: $x$ and $180^degree - x$."], ["Give both, inside the stated range."],
  ["period of $cos k x$"], ["$360^degree/k$."], ["Inside the bracket changes the period."],
)

#v(6pt)

#block(
  width: 100%,
  fill: jamb-mint,
  stroke: 1pt + jamb-green,
  radius: 8pt,
  inset: 12pt,
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[Chapter 9 in One Breath]
  #v(3pt)
  SOH CAH TOA names the ratio; the special triangles give the exact values; the unit circle gives the signs by quadrant. Sine and cosine share a period of $360^degree$ and an amplitude that the outer coefficient controls, while a coefficient inside changes the period. Equations in sine have two solutions in a full turn, and the complementary identity converts a cosine into a sine in one line.
]

#diagram-fig("diagrams/recap_ch09.svg",
  "Chapter 9 recap card: the table, the cast rule and the two graphs.", width: 76%)

// ============================================================================
== 9.7 Chapter 9 in the Exam Hall — a Two-Minute Set

#mcq(1, [Evaluate $sin 60^degree$], [$sqrt(3)/2$], [$1/2$], [$sqrt(2)/2$], [$sqrt(3)$])

#mcq(2, [The amplitude of $y = 4 cos x$ is], [$4$], [$1$], [$2$], [$8$])

#mcq(3, [If $cos theta = 8/17$ and $theta$ is acute, find $sin theta$], [$15/17$], [$9/17$], [$8/15$], [$17/15$])

#mcq(4, [Solve $sin x = sqrt(2)/2$ for $0^degree <= x <= 360^degree$], [$45^degree$ or $135^degree$], [$45^degree$ only], [$135^degree$ or $225^degree$], [$45^degree$ or $315^degree$])

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-navy)[Answers: ] #text(size: 8.6pt)[A, A, A, A]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-slate)[
    (1) the sine row of the table; (2) the outer coefficient is the amplitude; (3) $8, 15, 17$ triad; (4) $45^degree$ and $180 - 45 = 135^degree$.
  ]
]

// ============================================================================
#include "drill_ch09.typ"
