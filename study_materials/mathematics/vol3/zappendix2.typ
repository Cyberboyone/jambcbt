#import "template.typ": *

#current-chapter.update("Appendix N: The Diagrams Everyone Forgets")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix N: The Diagrams Everyone Forgets]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX N]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Diagrams Everyone Forgets]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Ten figures that appear in the paper, in the order they cost candidates marks. Each entry tells you what the figure is called, what it licenses you to write, and the single line that follows.
  ]
]

#v(6pt)

== N.1 The Figure Factory

Every geometry question you will meet is a recombination of a small set of figures. The examiner draws a circle, a tangent, a parallel pair or a solid, labels three lengths, and asks for a fourth. The work is never in inventing a method; it is in recognising which of the ten figures is in front of you.

The ten that follow are ranked by the number of marks they historically remove from a UTME candidate's score.

== N.2 Angle at the Centre, Angle at the Circumference

*The figure.* A circle with centre $O$, two points $A$ and $B$ on the circumference, and a second pair of points $P$ and $Q$ also on the circumference on the same side of the chord $A B$. $O$ is joined to $A$ and $B$; $P$ is joined to $A$ and $B$.

*What it licenses.* The angle at the centre is exactly twice the angle at the circumference standing on the same arc: $angle A O B = 2 angle A P B$.

*The line that follows.* "Angle at centre $= 2 times$ angle at circumference on the same arc." Then halve, or double, and move on.

== N.3 The Semicircle

*The figure.* A circle, a diameter drawn clean through the centre, and a third point on the circumference joined to both ends of the diameter.

*What it licenses.* A right angle at the third point. The triangle is right-angled at the circumference, and the hypotenuse is the diameter.

*Watchpoint.* The right angle is at the point *on* the circle, not at the centre. A common error places $90^degree$ at $O$, where the angle is actually $180^degree$.

== N.4 The Cyclic Quadrilateral and the Produced Side

*The figure.* Four points on a circle, with one side extended beyond a vertex.

*What it licenses.* Two separate statements: opposite interior angles add to $180^degree$, and the exterior angle equals the interior opposite angle. Both are true at once, and either can be the faster route.

*The line that follows.* "Exterior angle of a cyclic quadrilateral equals the interior opposite angle" — then substitute directly instead of computing two supplementary angles.

== N.5 The Two Tangents

*The figure.* An external point $P$, a circle, and tangents $P A$ and $P B$ touching at $A$ and $B$.

*What it licenses.* $P A = P B$; the line $P O$ bisects $angle A P B$; and $angle O A P = angle O B P = 90^degree$.

*The line that follows.* For a perimeter question: perimeter $= P A + P B + "arc" A B$ with $P A = P B$. For an angle question: the radius–tangent right angle first, then SOH CAH TOA in triangle $O A P$.

== N.6 The Tangent–Chord Figure

*The figure.* A tangent line touching at $T$, and a chord $T A$ drawn from the point of contact into the circle.

*What it licenses.* The angle between the tangent and the chord equals the angle in the alternate segment — the angle subtended by the chord at any point on the arc on the far side of the chord.

*Watchpoint.* "Alternate segment" means the segment on the *other* side of the chord from the tangent. Point at the wrong arc and the equality is false.

== N.7 The Isosceles Radius Triangle

*The figure.* Two radii to two points on the circle, plus the chord joining those points.

*What it licenses.* The triangle is isosceles because the radii are equal, so the base angles are equal. Drop a perpendicular from the centre and it bisects both the chord and the angle at the centre.

*The line that follows.* "Radii of the same circle are equal" — then the base angles, then the third angle by the angle sum.

== N.8 The Two North Lines

*The figure.* Two (or three) points on a page, each with a small vertical arrow labelled $N$, and bearings written at each.

*What it licenses.* The two North arrows are parallel, so the angles between a bearing line and the North arrows obey the parallel-line rules: alternate and co-interior.

*The line that follows.* Draw the North arrows before anything else. Then the angle inside the triangle at a point equals the difference between the two bearings at that point — usually $180^degree - theta_1$ or $theta_2 - theta_1$.

== N.9 The Elevation–Depression Pair

*The figure.* A horizontal line at eye level, a horizontal line at the object's level, and a vertical height between them, with angles marked at both ends.

*What it licenses.* The two angles are equal, because the two horizontals are parallel and the line of sight is a transversal. This converts a depression into an elevation and moves the angle to the end where the known side sits.

*The line that follows.* $tan theta = h slash d$ in the right triangle, with $d$ the horizontal distance and $h$ the vertical.

== N.10 The Solid and Its Net

*The figure.* A cylinder, cone or cube with a handful of dimensions, or the net of one.

*What it licenses.* Any curved surface question can be answered on the net. The curved face of a cylinder is a rectangle $2 pi r$ by $h$; the curved face of a cone is a sector of radius $l$ and arc $2 pi r$.

*The line that follows.* For a cone: find $l = sqrt(r^2 + h^2)$ first, then curved area $= pi r l$. Candidates who skip $l$ and substitute $h$ lose the question.

== N.11 A Ten-Line Recall Sheet

Write these ten out from memory at the start of your final revision week. If any line is missing, that appendix number tells you exactly which chapter to reopen.

+ Angle at centre $= 2 times$ angle at circumference.
+ Angle in a semicircle $= 90^degree$.
+ Angles in the same segment are equal.
+ Opposite angles of a cyclic quadrilateral add to $180^degree$; the exterior angle equals the interior opposite angle.
+ Tangent $perp$ radius; tangents from one point are equal.
+ Tangent–chord angle equals the angle in the alternate segment.
+ Perpendicular from the centre bisects the chord.
+ Meridian distance $= 111 theta$ km; parallel distance $= 111 theta cos phi$ km.
+ Sine rule: $a slash sin A = b slash sin B$; cosine rule: $c^2 = a^2 + b^2 - 2 a b cos C$.
+ Area $= 1/2 a b sin C$; back bearing $= theta plus.minus 180^degree$.

#current-chapter.update("Appendix O: The Unit and Conversion Clinic")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix O: The Unit and Conversion Clinic]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX O]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Unit and Conversion Clinic]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A correct method with the wrong unit is a wrong answer. This appendix collects every conversion the Section III questions use, and the three-step habit that keeps them straight.
  ]
]

#v(6pt)

== O.1 The Three-Step Habit

+ *Write the unit you are given next to the number.* "$12$ cm" is data; "$12$" is a trap.
+ *Convert before you compute,* not after. Converting a volume at the end means cubing the conversion factor as well, and that is where marks vanish.
+ *Write the unit you want next to the answer.* If the question asks for litres and your answer is in cm³, the last step is a division by $1000$.

#formula-box("The Conversions That Actually Appear")[
  #table(
    columns: (1fr, 1fr),
    inset: 5pt,
    align: (left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    [$1$ m $= 100$ cm], [$1$ $"m"^2 = 10^4$ $"cm"^2$],
    [$1$ m $= 1000$ mm], [$1$ $"m"^3 = 10^6$ $"cm"^3$],
    [$1$ km $= 1000$ m], [$1$ litre $= 1000$ $"cm"^3$],
    [$1$ hectare $= 10^4$ $"m"^2$], [$1$ $"m"^3 = 1000$ litres],
    [$1$ hour $= 60$ min $= 3600$ s], [$15^degree$ of longitude $= 1$ hour],
    [$1$ revolution $= 360^degree$], [$1^degree$ of longitude $= 4$ minutes],
  )
]

== O.2 The Squaring and Cubing Trap

Lengths scale by $k$; areas by $k^2$; volumes by $k^3$. Candidates who write "$1$ m $= 100$ cm, so $1$ m² $= 100$ cm²" lose the question immediately.

#trap-box("The three-line proof you should be able to write")[
  $ 1 "m"^2 = (100 "cm") times (100 "cm") = 10 thin 000 "cm"^2 $

  $ 1 "m"^3 = (100 "cm") times (100 "cm") times (100 "cm") = 1 thin 000 thin 000 "cm"^3 $

  So the conversion factor is squared for area and cubed for volume, always.
]

== O.3 Litres, Millilitres and the Water Tank

Volumes of liquids are quoted in litres, but the mensuration formulas give cm³ or m³. The bridge is fixed:

$ 1 "litre" = 1000 "cm"^3 = 0.001 "m"^3 $

A tank of $2$ m by $1.5$ m by $1$ m holds $3$ m³, which is $3000$ litres. A cylinder of radius $7$ cm and height $10$ cm holds $22/7 times 49 times 10 = 1540$ cm³, which is $1.54$ litres.

== O.4 Time and Longitude

Longitude converts to time at a fixed rate, and the conversion runs in one direction only: east is ahead, west is behind.

#table(
  columns: (1fr, 1fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Longitude difference],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Time difference],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Example],

  [$15^degree$], [$1$ hour], [Two towns $15^degree$ apart differ by one hour],
  [$1^degree$], [$4$ minutes], [$30^degree$ is two hours],
  [$45^degree$], [$3$ hours], [Lagos to a town $45^degree$ east is three hours ahead],
  [$7.5^degree$], [$30$ minutes], [Half of fifteen degrees],
  [$90^degree$], [$6$ hours], [A quarter of the globe],
)

*Direction rule.* If the town is east of the reference, its local time is *later*. If it is west, its local time is *earlier*. Write the sign before you add or subtract: the arithmetic is easy, the direction is where marks go.

== O.5 The Rounding Instruction

"Correct to two decimal places" means exactly that: $9.8666...$ becomes $9.87$, not $10$. "Correct to three significant figures" counts from the first non-zero digit: $0.004567$ becomes $0.00457$.

#shortcut-box("Check by magnitude")[
  A tunnel is $12$ m long; an answer of $1200$ m is a unit slip, not a calculation slip. Before you select an option, ask whether the size makes physical sense. Four-figure answers to four-figure questions are almost always a missed conversion.
]

#current-chapter.update("Appendix P: Trigonometry Without a Calculator")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix P: Trigonometry Without a Calculator]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX P]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Trigonometry Without a Calculator]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The CBT calculator has four functions. Every special angle in the syllabus therefore has to be rebuilt, not looked up. Three minutes of derivation here saves six marks in the hall.
  ]
]

#v(6pt)

== P.1 The Two Triangles That Generate Everything

*The half-square.* A square of side $1$ cut along its diagonal gives a right isosceles triangle with legs $1$ and $1$ and hypotenuse $sqrt(2)$. Its acute angles are both $45^degree$.

$ sin 45^degree = 1/sqrt(2) = sqrt(2)/2 quad cos 45^degree = sqrt(2)/2 quad tan 45^degree = 1 $

*The half-equilateral.* An equilateral triangle of side $2$ cut down the middle gives a right triangle with hypotenuse $2$, short leg $1$ and long leg $sqrt(3)$. Its angles are $30^degree$ and $60^degree$.

$ sin 30^degree = 1/2 quad cos 30^degree = sqrt(3)/2 quad tan 30^degree = 1/sqrt(3) $

$ sin 60^degree = sqrt(3)/2 quad cos 60^degree = 1/2 quad tan 60^degree = sqrt(3) $

Those two triangles give all six values for $30^degree$, $45^degree$ and $60^degree$. Nothing else in the special-angle table needs memorising.

== P.2 Reading the Circle

The unit circle puts the sign of every ratio on a plate. Starting at the positive $x$-axis and going anticlockwise:

#table(
  columns: (0.7fr, 0.6fr, 0.8fr, 1fr, 1.6fr),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Quadrant],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Range],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Sine],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Cosine],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What stays positive],

  [I], [$0$ to $90^degree$], [$+$], [$+$], [Everything — "All"],
  [II], [$90^degree$ to $180^degree$], [$+$], [$-$], [Sine only — "Students"],
  [III], [$180^degree$ to $270^degree$], [$-$], [$-$], [Tangent only — "Take"],
  [IV], [$270^degree$ to $360^degree$], [$-$], [$+$], [Cosine only — "Coffee"],
)

The mnemonic *All Students Take Coffee* runs anticlockwise from the first quadrant. Tangent is positive where sine and cosine share a sign — that is, in quadrants I and III.

== P.3 The Reduction Rules

For any acute angle $theta$:

$ sin(180^degree - theta) = sin theta quad cos(180^degree - theta) = -cos theta $

$ sin(180^degree + theta) = -sin theta quad cos(180^degree + theta) = -cos theta $

$ sin(360^degree - theta) = -sin theta quad cos(360^degree - theta) = cos theta $

*The fastest check.* Sketch which quadrant the angle lands in, then apply the sign from the table above. Candidates who try to memorise twelve formulas usually misremember two; candidates who sketch never do.

== P.4 Solving $sin theta = k$ in a Given Range

A sine equation usually has two solutions in $0^degree$ to $360^degree$:

+ Find the acute angle $alpha = sin^(-1) k$.
+ The second solution is $180^degree - alpha$.
+ Check that both sit inside the range asked for; if the range is $0^degree$ to $180^degree$, both survive.

For $cos theta = k$, the pair is $alpha$ and $360^degree - alpha$. For $tan theta = k$, the pair is $alpha$ and $180^degree + alpha$.

#trap-box("The forgotten second solution")[
  "Solve $sin theta = 0.5$ for $0^degree <= theta <= 360^degree$" has *two* answers: $30^degree$ and $150^degree$. Answering only $30^degree$ is the single most common loss in the trigonometry items.
]

== P.5 The Graph Facts the Examiner Tests

#table(
  columns: (1.1fr, 1.4fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Function],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Period],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Range],

  [$y = sin x$], [$360^degree$], [$-1$ to $1$],
  [$y = cos x$], [$360^degree$], [$-1$ to $1$],
  [$y = tan x$], [$180^degree$], [all real values],
  [$y = a sin b x$], [$360^degree slash b$], [$-|a|$ to $|a|$],
  [$y = a sin x + c$], [$360^degree$], [$c - |a|$ to $c + |a|$],
)

*Maximum and minimum.* For $y = a sin x + c$ the maximum is $a + c$ at $x = 90^degree$ and the minimum is $-a + c$ at $x = 270^degree$. The constant moves the graph; the coefficient stretches it.

#current-chapter.update("Appendix Q: Bearing and Elevation Decision Tree")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix Q: The Bearing and Elevation Decision Tree]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX Q]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Bearing and Elevation Decision Tree]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Bearing questions are not hard; they are sequential. Every one of them is answered by the same five decisions, taken in the same order.
  ]
]

#v(6pt)

== Q.1 The Five Decisions

+ *What is the reference point?* The bearing is always "of $B$ from $A$". Write $A$ first on the page and put the North arrow on $A$.
+ *Are the angles measured from the same point?* If yes, the angle between two bearings is a subtraction. If no, find a back bearing first.
+ *Is there a triangle?* Three points, or two points and a third reference, make a triangle. Mark its three angles before computing anything.
+ *What is known about that triangle?* Two angles and one side: sine rule. Two sides and the included angle: cosine rule. Three sides: cosine rule rearranged. A right angle: SOH CAH TOA.
+ *Which quantity is asked for?* A distance, a bearing, or a time. Each has a different final step.

== Q.2 The Subtraction and Addition Rules

*Same point.* Bearing of $C$ from $A$ is $070^degree$; bearing of $B$ from $A$ is $130^degree$. The angle $B A C = 130^degree - 070^degree = 60^degree$.

*Different points.* Bearing of $B$ from $A$ is $070^degree$. The bearing of $A$ from $B$ is the back bearing: $070^degree + 180^degree = 250^degree$.

*The sign trap.* Adding $180^degree$ to a bearing above $180^degree$ gives a value over $360^degree$; subtract $360^degree$ to bring it back into range. $250^degree + 180^degree = 430^degree$, which is $70^degree$.

== Q.3 The Standard Three-Point Figure

Three towns $A$, $B$ and $C$: $B$ is $40$ km from $A$ on a bearing of $060^degree$; $C$ is $30$ km from $A$ on a bearing of $150^degree$. Find $B C$.

+ The angle $B A C$ is $150^degree - 060^degree = 90^degree$.
+ Two sides with the included angle means the cosine rule — but the included angle is a right angle, so Pythagoras is faster: $B C = sqrt(40^2 + 30^2) = 50$ km.
+ If the question also asks for the bearing of $C$ from $B$, use the sine rule in the same triangle: $sin angle A B C slash 30 = sin 90^degree slash 50$, so $angle A B C = 36.9^degree$. The bearing is $060^degree + 180^degree - 36.9^degree = 203.1^degree$.

== Q.4 Elevation and Depression in One Page

*Elevation* is measured upward from the horizontal at the observer. *Depression* is measured downward from the horizontal at the observer. Because the two horizontals are parallel, the elevation of $X$ from $Y$ equals the depression of $Y$ from $X$.

#formula-box("The right triangle you always get")[
  $ tan theta = "height"/"horizontal distance" quad "height" = d tan theta quad d = h/(tan theta) $

  $ "line of sight" = sqrt(h^2 + d^2) $ when the slant distance is asked for.
]

*The three question shapes.*

+ Height given an angle and a distance: multiply by $tan theta$.
+ Distance given an angle and a height: divide by $tan theta$.
+ Slant distance: Pythagoras on the height and horizontal distance.

== Q.5 When the Figure Is Not Right-Angled

If no right angle is marked anywhere, neither SOH CAH TOA nor Pythagoras is available. Label the triangle with $a$, $b$, $c$ opposite $A$, $B$, $C$, then choose:

#table(
  columns: (1.6fr, 1.1fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Given],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Rule],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[First line to write],

  [A side, its facing angle, and one other angle or side], [Sine rule], [$a slash sin A = b slash sin B$],
  [Two sides and the angle between them], [Cosine rule], [$c^2 = a^2 + b^2 - 2 a b cos C$],
  [Three sides], [Cosine rule rearranged], [$cos C = (a^2 + b^2 - c^2) slash (2 a b)$],
  [Two sides and an angle not between them], [Sine rule, then check for the obtuse case], [$sin B = b sin A slash a$],
  [Two sides and the included angle, area asked], [Area formula], [$A = 1/2 a b sin C$],
)

#trap-box("Two errors that cost the most")[
  *One.* Using the sine rule with two sides and the included angle. The sine rule needs a *pair* — a side and the angle facing it. Without a pair, only the cosine rule works.

  *Two.* Writing $cos C$ as the angle. $cos C$ is a number between $-1$ and $1$; the angle is its inverse cosine, and the calculator gives the acute value, so check whether the triangle is obtuse.
]

#pagebreak()

== Q.6 The Two-Minute Drill

Cover the right-hand column and answer from memory.

#table(
  columns: (1.7fr, 1.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Ask yourself],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Answer],

  [Bearing of $A$ from $B$ given bearing of $B$ from $A$ is $110^degree$], [$290^degree$],
  [Angle between bearings $040^degree$ and $115^degree$ from one point], [$75^degree$],
  [Depression of $35^degree$; elevation of the same pair], [$35^degree$],
  [Rise $12$ m over horizontal $12$ m], [$45^degree$],
  [Rule for two sides and the included angle], [Cosine rule],
  [Rule for a side with its facing angle], [Sine rule],
  [Area of a triangle with $a = 8$, $b = 5$, $C = 30^degree$], [$10$],
  [Back bearing of $000^degree$], [$180^degree$],
  [Back bearing of $270^degree$], [$090^degree$],
  [Angle between North and East, measured clockwise], [$090^degree$],
)

== Q.7 The Four-Figure Sanity Check

Bearing questions fail quietly: the arithmetic is right, the diagram is right, and the answer is still in the wrong quadrant. Four checks catch almost every one.

+ *Is the bearing between $000^degree$ and $359^degree$?* A negative value or one above $360$ is unfinished business.
+ *Is the answer consistent with the sketch?* A bearing of $200^degree$ points south-west; if your sketch has the third town north-east of the second, the answer is wrong whatever the calculator said.
+ *Do the three angles of the triangle add to $180^degree$?* If they add to $170$ or $190$, one of the bearings has been subtracted in the wrong order.
+ *Is the longest side facing the largest angle?* In any triangle, the side opposite the biggest angle is the longest. A $20$ km side facing $30^degree$ while a $10$ km side faces $80^degree$ is impossible.

#concept-box("The habit that carries the whole topic")[
  Draw the North arrows first, mark the two given bearings, shade the angle you need, then and only then open the calculator. Every worked example in Chapter 10 follows that order, and every solution in Appendix M assumes it. The candidates who lose bearing marks are the ones who compute first and draw afterwards — if at all.
]
