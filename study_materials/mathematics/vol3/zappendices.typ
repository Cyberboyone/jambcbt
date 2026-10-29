#import "template.typ": *

#current-chapter.update("Appendix A: Master Formula Compendium")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Appendix A: Master Formula & Method Compendium]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Master Formula & Method Compendium]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every formula, theorem, construction and recognition cue from the ten chapters of Volume 3, arranged so that one page answers one exam question type. Photocopy these pages and keep them beside your practice screen.
  ]
]

#v(6pt)

== A.1 Angles, Lines and Polygons

#table(
  columns: (1.15fr, 1.85fr, 1.8fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question asks for],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Use],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [Interior angle sum of an $n$-gon], [$(n - 2) times 180^degree$], [Count the sides, not the diagonals.],
  [Each interior angle, regular $n$-gon], [$((n - 2) times 180^degree)/n$], [Equal because the polygon is regular — say so.],
  [Exterior angle of a regular $n$-gon], [$360^degree slash n$], [One full turn around the outside is always $360^degree$.],
  [Number of sides given the exterior angle], [$n = 360^degree slash "exterior angle"$], [Must be a whole number; if not, re-read the data.],
  [Two angles on a straight line], [Sum to $180^degree$], [Only if they share the line, not a vertex.],
  [Angles at a point], [Sum to $360^degree$], [Watch the reflex angle if the diagram is concave.],
  [Alternate angles on parallel lines], [Equal, in a Z shape], [The Z must be between the two parallels.],
  [Corresponding angles], [Equal, in an F shape], [Same side of the transversal, same position.],
  [Co-interior angles], [Sum to $180^degree$, in a C shape], [The only pair that adds, not equals.],
)

== A.2 Triangles, Congruence and Similarity

#table(
  columns: (1.15fr, 1.85fr, 1.8fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question asks for],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Use],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [Third angle of a triangle], [$180^degree - (A + B)$], [Never subtract from $360^degree$.],
  [Exterior angle of a triangle], [Sum of the two opposite interior angles], [Not the adjacent interior angle.],
  [Is the triangle isosceles?], [Two angles equal ⇒ two sides equal], [The equal sides face the equal angles.],
  [Congruence], [SSS, SAS, ASA, RHS], [AAA and SSA are not congruence tests.],
  [Similarity — side length], [Ratios of corresponding sides are equal], [Match the vertices in order, e.g. $A B C tilde P Q R$.],
  [Similarity — area ratio], [$(k)^2$ where $k$ is the length ratio], [Volume ratio is $k^3$.],
  [Pythagoras], [$c^2 = a^2 + b^2$], [$c$ is the hypotenuse — the side facing the right angle.],
  [Triad check], [$3,4,5$; $5,12,13$; $8,15,17$; $7,24,25$], [Multiples work: $6,8,10$; $9,12,15$.],
  [Area of a triangle], [$1/2 times "base" times "height"$], [Height is perpendicular to the base chosen.],
  [Area by Heron], [$sqrt(s(s-a)(s-b)(s-c))$, $s = (a+b+c)/2$], [Use when only three sides are known.],
)

== A.3 The Nine Circle Theorems

#table(
  columns: (0.5fr, 1.5fr, 1.5fr, 1.35fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Theorem],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Statement],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Recognition cue],

  [1], [Angle at the centre], [Twice the angle at the circumference on the same arc], ["centre" and "circumference" in the same sentence],
  [2], [Angle in a semicircle], [$90^degree$], [A diameter is drawn; a right angle is asked for],
  [3], [Angles in the same segment], [Equal], [Four points on one circle, two angles on one arc],
  [4], [Cyclic quadrilateral], [Opposite angles add to $180^degree$], [A four-sided figure inside a circle],
  [5], [Exterior angle of a cyclic quadrilateral], [Equals the interior opposite angle], [One side is produced],
  [6], [Tangent perpendicular to radius], [$90^degree$ at the point of contact], [A tangent and a radius meet],
  [7], [Tangents from an external point], [Equal in length; the line to the centre bisects the angle], [Two tangents from one point],
  [8], [Alternate segment], [Tangent–chord angle equals the angle in the alternate segment], [A tangent plus a chord from the contact point],
  [9], [Chords and perpendicular from centre], [Bisects the chord; equal chords are equidistant from the centre], [A perpendicular drops to a chord],
)

== A.4 Constructions and Loci

#table(
  columns: (1.3fr, 1.9fr, 1.6fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Construction],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Method],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [Bisect an angle], [Arc from the vertex cutting both arms; equal arcs from those cuts; join to the vertex], [Keep the compass setting fixed for the second pair.],
  [Bisect a line segment], [Equal arcs from both ends, above and below; join the intersections], [The bisector is perpendicular — a $90^degree$ angle comes free.],
  [Drop a perpendicular from a point], [Arc cutting the line at two points, then bisect that segment], [Do not guess the foot of the perpendicular.],
  [Construct $60^degree$], [Equilateral triangle on the given line], [$30^degree$ is its bisection; $15^degree$ is a second bisection.],
  [Construct $45^degree$], [Bisect a right angle], [A right angle is itself a bisected straight line.],
  [Construct a triangle from three sides], [Base first, then arcs of the two remaining lengths], [The arcs must cross; if not, the triangle is impossible.],
  [Locus equidistant from two points], [Perpendicular bisector], [A straight line, not a circle.],
  [Locus equidistant from two lines], [Angle bisector], [Two bisectors — the internal and the external.],
  [Locus at a fixed distance from a point], [Circle], [Dashed, and centred on the point.],
  [Locus at a fixed distance from a line], [Two parallel lines], [One on each side; forget one and lose the mark.],
)

== A.5 Plane Mensuration

#table(
  columns: (1.3fr, 1.6fr, 1.9fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Shape],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Area],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Perimeter or note],

  [Rectangle], [$l times b$], [$2(l + b)$],
  [Square], [$l^2$], [$4l$; diagonal $= l sqrt(2)$],
  [Triangle], [$1/2 b h$], [Also $1/2 a b sin C$ and Heron's formula],
  [Parallelogram], [$b h$], [$2(a + b)$; the height is perpendicular, not the slant side],
  [Trapezium], [$1/2 (a + b) h$], [Add the parallel sides first],
  [Rhombus], [$1/2 d_1 d_2$], [Also $b h$; diagonals cross at $90^degree$],
  [Circle], [$pi r^2$], [Circumference $2 pi r$; diameter $d = 2r$],
  [Sector ($theta$ in degrees)], [$(theta slash 360) times pi r^2$], [Arc length $(theta slash 360) times 2 pi r$],
  [Segment], [Sector $-$ triangle], [Subtract $1/2 r^2 sin theta$ from the sector],
  [Annulus], [$pi (R^2 - r^2)$], [Only if both circles share a centre],
)

== A.6 Mensuration of Solids

#table(
  columns: (1.05fr, 1.55fr, 2.2fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Solid],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Volume],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Total surface area / note],

  [Cube], [$a^3$], [$6 a^2$; diagonal $a sqrt(3)$],
  [Cuboid], [$l b h$], [$2(l b + b h + l h)$],
  [Prism], ["base area" $times$ "height"], [Surface $= 2 times$ base $+$ perimeter $times$ height],
  [Cylinder], [$pi r^2 h$], [$2 pi r^2 + 2 pi r h$; curved part alone is $2 pi r h$],
  [Cone], [$1/3 pi r^2 h$], [$pi r^2 + pi r l$ with slant $l = sqrt(r^2 + h^2)$],
  [Sphere], [$4/3 pi r^3$], [$4 pi r^2$; hemisphere adds a flat circle],
  [Pyramid], [$1/3 times "base area" times h$], [Slant faces are triangles — find the slant height first],
  [Frustum], [$1/3 pi h (R^2 + R r + r^2)$], [Curved area $pi (R + r) l$; never average the radii],
  [Conversion], [$1$ litre $= 1000$ $"cm"^3$], [$1$ $"m"^3 = 10^6$ $"cm"^3$; $1$ $"m"^2 = 10^4$ $"cm"^2$],
)

== A.7 Longitude, Latitude and Time

#table(
  columns: (1.35fr, 1.75fr, 1.75fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [Distance along a meridian], [$111 times theta$ km, $theta$ in degrees of latitude], [Always a great circle; no cosine factor],
  [Distance along the equator], [$111 times theta$, $theta$ in degrees of longitude], [The equator is a great circle too],
  [Distance along a parallel], [$111 times theta cos phi$ km, $phi$ the latitude], [Always shorter than along the equator],
  [Radius of a parallel], [$R cos phi$ with $R = 6400$ km], [Used for the same distance formula],
  [Same latitude, different longitude], [Parallel distance: $111 theta cos phi$], [Not a great circle distance],
  [Same longitude, different latitude], [Meridian distance: $111 theta$], [Add the latitudes if the hemispheres differ],
  [Time from longitude], [$15^degree = 1$ hour; $1^degree = 4$ minutes], [East is ahead, west is behind],
  [Total meridian circle], [$360^degree times 111 approx 40000$ km], [Equator $approx 40000$ km, meridian the same],
)

== A.8 Coordinate Geometry

#table(
  columns: (1.3fr, 1.9fr, 1.6fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question asks for],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Formula],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [Distance between two points], [$sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2)$], [Square first, then add — order inside the brackets does not matter],
  [Midpoint], [$((x_1 + x_2)/2, (y_1 + y_2)/2)$], [Average each coordinate separately],
  [Gradient], [$(y_2 - y_1)/(x_2 - x_1)$], [Keep the points in the same order in numerator and denominator],
  [Equation of a line], [$y - y_1 = m(x - x_1)$], [Rewrite in the form the options use],
  [Parallel lines], [$m_1 = m_2$], [Same gradient, different intercept],
  [Perpendicular lines], [$m_1 m_2 = -1$], [Negative reciprocal; a vertical line has no gradient],
  [Circle centred at the origin], [$x^2 + y^2 = r^2$], [$r$ is a length, so it is positive],
  [Circle centred at $(h, k)$], [$(x - h)^2 + (y - k)^2 = r^2$], [Signs flip inside the bracket],
  [Is a point inside the circle?], [Compare $(x - h)^2 + (y - k)^2$ with $r^2$], [Less means inside, equal means on],
)

== A.9 Trigonometric Ratios and Graphs

#table(
  columns: (1.2fr, 1.8fr, 1.8fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question asks for],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Use],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [Find a side from an angle], [$sin theta = "opp"/"hyp"$, $cos theta = "adj"/"hyp"$, $tan theta = "opp"/"adj"$], [Label opposite and adjacent relative to the angle used],
  [Find an angle from two sides], [$theta = tan^(-1)("opp"/"adj")$ and its relatives], [Use the inverse key, not the ratio key],
  [Special angles], [$sin 30 = 1/2$, $cos 30 = sqrt(3)/2$, $tan 45 = 1$], [Rebuild the table from the two triangles if memory slips],
  [Obtuse angle], [$sin(180^degree - theta) = sin theta$, $cos(180^degree - theta) = -cos theta$], [Sine stays positive, cosine does not],
  [Sign of a ratio], [CAST in the four quadrants], ["All Students Take Coffee": I, II, III, IV],
  [Identities], [$sin^2 theta + cos^2 theta = 1$, $tan theta = sin theta slash cos theta$], [Valid for every angle where the terms exist],
  [Graph of $y = a sin b x$], [Amplitude $|a|$, period $360^degree slash b$], [Amplitude is a magnitude, never negative],
  [Maximum of $y = a sin theta + c$], [$a + c$ at $theta = 90^degree$], [The constant shifts the graph up, it does not stretch it],
)

== A.10 Bearings, Elevation and the Sine & Cosine Rules

#table(
  columns: (1.2fr, 1.75fr, 1.85fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Question asks for],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Use],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Watchpoint],

  [Write a compass direction as a bearing], [Measure clockwise from North], [Three figures, always],
  [Back bearing], [$plus.minus 180^degree$], [Keep the result between $0$ and $360$],
  [Angle between two bearings], [Subtract them if measured from the same point], [Otherwise find the back bearing first],
  [Angle of elevation], [$tan theta = "height"/"horizontal distance"$], [Measured from the horizontal, never the vertical],
  [Angle of depression], [Equal to the elevation from the other end], [Alternate angles, not supplementary],
  [Side from two angles and one side], [Sine rule: $a slash sin A = b slash sin B$], [Pair each side with its own facing angle],
  [Third side from two sides and the included angle], [Cosine rule: $c^2 = a^2 + b^2 - 2 a b cos C$], [The angle must sit between the two known sides],
  [Angle from three sides], [$cos C = (a^2 + b^2 - c^2)/(2 a b)$], [A zero numerator means $90^degree$],
  [Area of a non-right triangle], [$1/2 a b sin C$], [The angle must be the included one],
)

#current-chapter.update("Appendix B: Diagram-Reading Atlas")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix B: Diagram-Reading Atlas]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX B]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Diagram-Reading Atlas]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Nine diagram families cover almost every geometry question in the paper. Learn what each one is *for*, and you stop hunting for the theorem and start applying it.
  ]
]

#v(6pt)

== B.1 The Circle With a Diameter

When a diameter is drawn and a third point sits on the circle, the angle at that third point is a right angle. Look for the straight line through the centre: if it passes through the centre and touches both sides of the circle, every triangle built on it is right-angled.

*What to write.* "Angle in a semicircle" — then Pythagoras, or a right-triangle trig ratio, becomes available.

== B.2 The Circle With Two Radii

Two radii and a chord make an isosceles triangle: the radii are equal, so the two base angles are equal. The perpendicular from the centre bisects the chord and the angle at the centre.

*What to write.* "Radii of the same circle" — then the base angles, then the angle at the centre is twice the angle at the circumference on the same arc.

== B.3 The Cyclic Quadrilateral

Four points on a circle, joined in order. Any pair of opposite angles adds to $180^degree$, and an exterior angle equals the interior opposite angle.

*What to write.* "Opposite angles of a cyclic quadrilateral" — never "alternate angles" for this figure.

== B.4 The Two Tangents From One Point

Tangents from the same external point are equal in length, and the line joining that point to the centre bisects the angle between them and the angle at the centre.

*What to write.* "Tangents from an external point are equal" — this is usually the first line of a perimeter or an isosceles-triangle argument.

== B.5 The Tangent–Chord Figure

A tangent touches the circle at $T$; a chord $T A$ is drawn from the point of contact. The angle between the tangent and the chord equals the angle in the alternate segment — that is, the angle subtended by the chord at any point on the far arc.

*What to write.* "Alternate segment theorem" — and name the segment you mean, because that is the part markers look for.

== B.6 The Bearing Figure

North is a vertical arrow at every point where a bearing is measured. Bearings are clockwise from that arrow: $000^degree$ to $359^degree$, always three figures.

*What to write.* Draw the two North lines first, then the two bearings, then shade the angle you need. Almost every bearing error is a missing North line.

== B.7 The Elevation and Depression Figure

Two horizontal lines (one at the observer's eye, one at the object's level) joined by a vertical. The angle of elevation is measured up from the lower horizontal; the angle of depression is measured down from the upper one. They are equal by alternate angles.

*What to write.* "Angles of elevation and depression between two points are equal" — then a right triangle with $tan theta = h slash d$.

== B.8 The Non-Right Triangle

Nothing is $90^degree$, so Pythagoras and SOH CAH TOA are both out. Label the sides with the lower-case letters of the opposite angles, then decide: a side with its facing angle means the sine rule; two sides with the included angle, or three sides, means the cosine rule.

*What to write.* The rule you are using, then the substitution in one line.

== B.9 The Solid and Its Net

Every curved surface area question can be answered on the net. The curved surface of a cylinder unrolls into a rectangle of width $2 pi r$ and height $h$; the curved surface of a cone unrolls into a sector of radius equal to the slant height.

*What to write.* The net, then the radius of the sector, then the arc length — which is the circumference of the base.

#current-chapter.update("Appendix C: Mensuration and Data Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix C: Mensuration & Data Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX C]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Mensuration & Data Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The numbers the examiner expects you to know cold: conversions, triads, squares, and the trigonometric table from $0^degree$ to $90^degree$.
  ]
]

#v(6pt)

== C.1 Length, Area and Volume Conversions

#table(
  columns: (1fr, 1fr, 1.4fr),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[From],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[To],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Multiply by],

  [m], [cm], [$100$],
  [$"m"^2$], [$"cm"^2$], [$10 thin 000$],
  [$"m"^3$], [$"cm"^3$], [$1 thin 000 thin 000$],
  [litre], [$"cm"^3$], [$1000$],
  [litre], [$"m"^3$], [$0.001$],
  [hectare], [$"m"^2$], [$10 thin 000$],
  [km], [m], [$1000$],
  [$"km"^2$], [$"m"^2$], [$1 thin 000 thin 000$],
  [hour], [minute], [$60$],
  [degree of longitude], [minutes of time], [$4$],
)

== C.2 The Values Worth Memorising

#table(
  columns: (0.8fr, 1fr, 1fr, 1fr, 1fr),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$theta$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$sin theta$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$cos theta$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[$tan theta$],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],

  [$0^degree$], [$0$], [$1$], [$0$], [The start of every graph],
  [$30^degree$], [$1/2$], [$sqrt(3)/2$], [$sqrt(3)/3$], [$approx 0.577$],
  [$45^degree$], [$sqrt(2)/2$], [$sqrt(2)/2$], [$1$], [The equal case],
  [$60^degree$], [$sqrt(3)/2$], [$1/2$], [$sqrt(3)$], [$approx 1.732$],
  [$90^degree$], [$1$], [$0$], [undefined], [Tangent has an asymptote here],
  [$120^degree$], [$sqrt(3)/2$], [$-1/2$], [$-sqrt(3)$], [Sine unchanged, cosine negated],
  [$135^degree$], [$sqrt(2)/2$], [$-sqrt(2)/2$], [$-1$], [Second quadrant],
  [$150^degree$], [$1/2$], [$-sqrt(3)/2$], [$-sqrt(3)/3$], [Second quadrant],
  [$180^degree$], [$0$], [$-1$], [$0$], [Half a period],
)

== C.3 Squares, Roots and Cubes Used in Mensuration

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$n$],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$n^2$],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$n^3$],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Seen in],

  [2], [$4$], [$8$], [Small cubes],
  [3], [$9$], [$27$], [Ratio questions],
  [4], [$16$], [$64$], [Sphere radius $4$],
  [5], [$25$], [$125$], [Pythagoras triads],
  [6], [$36$], [$216$], [Cube roots],
  [7], [$49$], [$343$], [Cone volumes],
  [8], [$64$], [$512$], [Sphere radius $8$],
  [9], [$81$], [$729$], [Squares],
  [10], [$100$], [$1000$], [Conversions],
  [11], [$121$], [$1331$], [Squares],
  [12], [$144$], [$1728$], [Triads and cubes],
  [14], [$196$], [$2744$], [Cone with $r = 7$],
  [15], [$225$], [$3375$], [Triads],
  [20], [$400$], [$8000$], [Large cylinders],
  [21], [$441$], [$9261$], [Cone with $r = 21$],
)

== C.4 The Pythagorean Triads

#table(
  columns: (1fr, 1fr, 1fr, 1.6fr),
  inset: 6pt,
  align: (center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$a$],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$b$],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[$c$],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Appears in],

  [3], [4], [5], [Every diagonal of a $3$ by $4$ rectangle],
  [5], [12], [13], [Cone slant height],
  [8], [15], [17], [Circle diameter questions],
  [7], [24], [25], [Triangle areas],
  [9], [40], [41], [Long diagonals],
  [20], [21], [29], [Rare but examinable],
  [6], [8], [10], [Double of $3,4,5$],
  [9], [12], [15], [Triple of $3,4,5$],
  [10], [24], [26], [Double of $5,12,13$],
)

*The rule for spotting one.* If two of the three sides divide by a common whole number into a listed triad, the triangle is right-angled. That is why $6, 8, 10$ behaves exactly like $3, 4, 5$.
