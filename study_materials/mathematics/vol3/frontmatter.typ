#import "template.typ": *

// ============================================================================
// COVER PAGE (Full-Bleed Single A4 Page)
// ============================================================================
#page(
  margin: 0pt,
  header: none,
  footer: none,
  fill: rgb("#07192F"),
)[
  #rect(width: 100%, height: 9mm, fill: jamb-bright)

  #pad(x: 20mm, top: 10mm)[
    #grid(
      columns: (56pt, 1fr, auto),
      column-gutter: 12pt,
      align: (left + horizon, left + horizon, right + horizon),
      box(
        radius: 11pt,
        clip: true,
        stroke: 1.5pt + rgb("#34D399"),
        image("../../../assets/icon.png", width: 52pt),
      ),
      [
        #text(font: "DejaVu Sans", size: 12.5pt, weight: "bold", fill: rgb("#34D399"))[JAMB CBT MASTER STUDY SERIES] \
        #v(2pt)
        #text(font: "DejaVu Sans", size: 9.2pt, fill: rgb("#CBD5E1"))[100% Official UTME Syllabus Aligned • High-Yield Exam Edition]
      ],
      box(
        fill: jamb-bright,
        radius: 6pt,
        inset: (x: 11pt, y: 6pt),
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 3 OF 4],
      ),
    )

    #v(6mm)

    #box(
      fill: rgb("#064E3B"),
      stroke: 1pt + rgb("#34D399"),
      radius: 20pt,
      inset: (x: 14pt, y: 5pt),
      text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#A7F3D0"))[
        UNIFIED TERTIARY MATRICULATION EXAMINATION (UTME)
      ],
    )

    #v(4mm)

    #text(font: "DejaVu Sans", size: 36pt, weight: "bold", fill: white)[MATHEMATICS]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 16pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 3: Geometry, Mensuration & Trigonometry
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Complete, In-Depth Mastery of JAMB Section III — Lines, Angles and Polygons, Triangles and Congruence, Circle Theorems, Constructions and Loci, Plane and Solid Mensuration, Longitude, Latitude and Time, Coordinate Geometry, Trigonometric Ratios and Graphs, Bearings, Angles of Elevation and Depression, and the Sine and Cosine Rules.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ High-Yield Areas of Focus]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Every Section III subtopic ranked by UTME frequency — the circle theorems, the mensuration formulae and the bearings templates that appear every single year.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ 55 Labelled Diagrams]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Circle-theorem figures, construction arcs, prisms and frustums, the latitude globe, the CAST diagram, sine and cosine graphs, and bearings sketches — all drawn to scale.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Line-by-Line Geometry]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          130+ graded worked examples: every angle reason stated, every construction step named, every solution reachable without a calculator.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ 480 Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          40+ UTME-style drill questions per chapter, a 60-question mock paper, and a timed 40-question final — every option explained.
        ]
      ],
    )
  ]

  #place(bottom)[
    #rect(
      width: 100%,
      fill: jamb-green,
      inset: (x: 20mm, y: 4mm),
    )[
      #grid(
        columns: (1fr, auto),
        column-gutter: 14pt,
        align: (left + horizon, right + horizon),
        text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[
          JAMB CBT Companion Textbook Series • Print-Ready A4 Manual
        ],
        text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: rgb("#FEF3C7"))[
          Chapters 1 – 10 + Full CBT Mock
        ],
      )
    ]
  ]
]

// ============================================================================
// PAGE 2: SERIES MAP
// ============================================================================
#current-chapter.update("Series Overview & UTME Strategy Guide")

#block(
  width: 100%,
  fill: jamb-light,
  stroke: 1pt + jamb-border,
  radius: 8pt,
  inset: 14pt,
)[
  #text(font: "DejaVu Sans", size: 13pt, weight: "bold", fill: jamb-navy)[
    JAMB CBT Mathematics — Complete 4-Volume Series Architecture
  ]
  #v(4pt)
  The official JAMB UTME Mathematics syllabus is deliberately broad: five sections, more than forty examinable objectives. Rushing it into a single revision book is the single most common reason candidates plateau at 45–55\%. This series therefore splits the syllabus into *four standalone volumes*, each one deep enough to teach — not merely summarise — its section.

  #v(6pt)
  #table(
    columns: (auto, 1.25fr, 2.3fr, auto),
    inset: 8pt,
    align: (center + horizon, left + horizon, left + horizon, center + horizon),
    stroke: 0.6pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if y == 3 { jamb-mint } else { white },
    table.header(
      text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Vol.],
      text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Volume Title & Syllabus Section],
      text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Chapters & Syllabus Coverage],
      text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[UTME Share],
    ),

    [Vol. 1],
    [*Number & Numeration*\
      _(Section I Complete)_],
    [Number Bases, Modular Arithmetic, Fractions/Decimals/Errors, Ratio/Proportion/Rates, Simple & Compound Interest, Profit/Loss, Shares & VAT, Indices & Standard Form, Logarithms, Surds, Sets & Venn Diagrams.],
    [10–12 Qs\
      _(\~28%)_],

    [Vol. 2],
    [*Complete Algebra*\
      _(Section II Complete)_],
    [Change of Subject of Formula, Polynomials & Factor/Remainder Theorems, Quadratic Equations & Graphs, Simultaneous Equations, Inequalities, Variation, A.P. & G.P., Binary Operations, 2 × 2 and 3 × 3 Matrices and Determinants.],
    [9–11 Qs\
      _(\~25%)_],

    [*Vol. 3*\
      *(This Book)*],
    [*Geometry, Mensuration & Trigonometry*\
      _(Section III Complete)_],
    [Lines & Angles, Triangles & Polygons, Circle Theorems, Constructions & Loci, Plane Mensuration, Mensuration of Solids, Longitude & Latitude, Coordinate Geometry, Trigonometric Ratios & Graphs, Bearings, Angles of Elevation & Depression, Sine & Cosine Rules.],
    [*8–10 Qs*\
      *(\~22%)*],

    [Vol. 4],
    [*Calculus, Statistics & Probability*\
      _(Sections IV & V Complete)_],
    [Limits, Differentiation, Rates of Change, Maxima & Minima, Integration & Area, Data Representation, Mean/Median/Mode, Ogive, Range/Mean Deviation/Variance/SD, Permutations, Combinations & Probability.],
    [9–11 Qs\
      _(\~25%)_],
  )
]

#v(8pt)

== Why Geometry Is Where Candidates Panic — and How to Stop

Section III of the UTME Mathematics syllabus supplies *eight to ten of the forty questions* every year, and it is the only section where a candidate can lose a mark without making a single arithmetic mistake. A missing radius, an unlabelled angle, a tangent drawn inside the circle instead of outside — any of these turns a one-line calculation into an unanswerable question.

The good news is that Geometry is the most *finite* section of the syllabus. There are exactly:

- five angle facts about parallel lines;
- eight circle theorems, and only four of them are examined with any regularity;
- a dozen mensuration formulae, most of which you already half-know;
- six trigonometric ratios at the four special angles ($30^degree$, $45^degree$, $60^degree$, $90^degree$);
- two rules — sine and cosine — plus the area formula $1/2 a b sin C$.

That is the entire apparatus. Every Section III question ever set in UTME is a compound of those pieces. This volume therefore prints each theorem *with its diagram, its reason and its standard question wording*, then drills the exact template JAMB uses.

#diagram-fig(
  "diagrams/utme_geometry_weight.svg",
  "Where the 8–10 Section III questions come from: typical annual question allocation by chapter, based on the recurring structure of UTME Mathematics papers.",
)

== The Three Habits That Decide Your Geometry Score

Almost every geometry question in UTME is decided within the first thirty seconds, by whether or not you *drew the figure*. The mathematics that follows is usually one multiplication or one subtraction.

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[★ The 55-Second Geometry Rule]
      #v(4pt)
      In the real CBT hall you have about *55–60 seconds per Mathematics question*.
      - *Sketch (15 s):* a rough figure on the rough sheet, with every given angle written in.
      - *Mark (10 s):* tick equal lengths, equal angles, right angles and parallel marks.
      - *Name (5 s):* say the theorem out loud — "angle at centre is twice angle at circumference".
      - *Compute (20 s):* one line of arithmetic, then write the unit and the reason.
    ],
    block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: trap-red)[◆ How JAMB Writes Geometry Distractors]
      #v(4pt)
      - *Half/double distractor:* the angle at the centre printed where the circumference angle was asked (or the reverse).
      - *Supplementary distractor:* $180^degree - x$ offered where $2x$ or $360^degree - x$ is correct.
      - *Diameter distractor:* $r$ used as the diameter, or $d$ used as the radius.
      - *Unit distractor:* area offered where volume was asked, and cm² printed for a perimeter.
      - *Formula distractor:* $2 pi r$ offered for area, and $4/3 pi r^3$ offered for surface area.
    ],
  )
]

== Three Warm-Up Calculations

Every Section III paper begins with something small. Do these three now, without a calculator, and notice how little there is to them.

#v(3pt)
#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[1. The angle chase]
  #v(2pt)
  Two parallel lines are cut by a transversal. One co-interior angle is $118^degree$. Find the other.
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-green)[Co-interior angles sum to $180^degree$, so the answer is $180^degree - 118^degree = 62^degree$. One subtraction.]
]
#v(3pt)
#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[2. The sector]
  #v(2pt)
  Find the area of a sector of radius $14$ cm subtending $45^degree$ at the centre. Take $pi = 22/7$.
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-green)[$45/360 = 1/8$, and $1/8 times 22/7 times 196 = 77$. The answer is $77$ cm². One fraction, one multiplication.]
]
#v(3pt)
#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[3. The bearing]
  #v(2pt)
  The bearing of Q from P is $250^degree$. Find the bearing of P from Q.
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-green)[The back bearing is $250^degree - 180^degree = 070^degree$. One subtraction, written with three figures.]
]

#text(font: "DejaVu Sans", size: 9pt, fill: jamb-muted)[
  That is the shape of a Section III question: a fact you know, applied once. The chapters that follow add the diagrams and the vocabulary, not the difficulty.
]

#pagebreak()

== The Formula Wall — Every Formula in This Volume, on One Page

#v(2pt)
#table(
  columns: (auto, 1.35fr, 1.35fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Formula],
  ),
  [Polygon], [Interior sum $= (n - 2) times 180^degree$], [Each exterior $= 360^degree -: n$],
  [Circle], [Angle at centre $= 2 times$ angle at circumference], [Angle in a semicircle $= 90^degree$],
  [Cyclic quad.], [Opposite angles sum to $180^degree$], [Exterior angle $=$ interior opposite],
  [Chord], [$(1/2 "chord")^2 + d^2 = r^2$], [Equal chords are equidistant from the centre],
  [Triangle], [Area $= 1/2 b h$], [Area $= sqrt(s(s - a)(s - b)(s - c))$],
  [Triangle], [Area $= 1/2 a b sin C$], [$c^2 = a^2 + b^2 - 2 a b cos C$],
  [Triangle], [$a sin B = b sin A$], [$a/sin A = b/sin B = c/sin C$],
  [Equilateral], [Area $= (sqrt(3))/4 a^2$], [Height $= (sqrt(3))/2 a$],
  [Quadrilaterals], [Trapezium $= 1/2 (a + b) h$], [Rhombus $= 1/2 d_1 d_2$],
  [Circle], [Circumference $= 2 pi r$], [Area $= pi r^2$],
  [Sector], [Arc $= theta/360 times 2 pi r$], [Area $= theta/360 times pi r^2$],
  [Prism], [$V = A h$ ($A$ = base area)], [S.A. $= 2 A + P h$ ($P$ = perimeter)],
  [Cylinder], [$V = pi r^2 h$], [Curved $= 2 pi r h$; total $= 2 pi r (r + h)$],
  [Pyramid], [$V = 1/3 A h$], [Cone: $V = 1/3 pi r^2 h$],
  [Cone], [Curved $= pi r l$, $l = sqrt(r^2 + h^2)$], [Total $= pi r (r + l)$],
  [Sphere], [$V = 4/3 pi r^3$], [S.A. $= 4 pi r^2$],
  [Frustum], [$V = 1/3 pi h (R^2 + R r + r^2)$], [Curved $= pi (R + r) l$],
  [Latitude], [$1^degree = 111$ km along a meridian], [$r = R cos theta$ on a parallel],
  [Longitude], [$1^degree = 4$ minutes of time], [Equator: $1^degree = 111$ km],
  [Coordinates], [$d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2)$], [Midpoint $= ((x_1 + x_2)/2, (y_1 + y_2)/2)$],
  [Lines], [$m = (y_2 - y_1)/(x_2 - x_1)$], [Parallel: $m_1 = m_2$; perpendicular: $m_1 m_2 = -1$],
  [Circle], [$(x - h)^2 + (y - k)^2 = r^2$], [Centre $(h, k)$, radius $r$],
  [Ratios], [$sin theta = o/h$, $cos theta = a/h$, $tan theta = o/a$], [$sin 30^degree = 1/2$; $cos 30^degree = sqrt(3)/2$; $tan 45^degree = 1$],
  [Bearings], [Back bearing $= theta plus.minus 180^degree$], [Bearings are clockwise from North, three figures],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[
  Every formula above is derived, diagrammed and drilled in the chapter where it belongs. Nothing else is examinable in Section III.
]
#v(5pt)

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 9pt)[
      #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[Conventions JAMB Assumes]
      #v(2pt)
      - $pi = 22/7$ unless the question says otherwise.
      - Latitudes use the value of "1° = $dots$ km" given in the question.
      - A bearing is three figures: $070^degree$, never $70^degree$.
    ],
    block(width: 100%, fill: jamb-mint, stroke: 0.7pt + jamb-green, radius: 7pt, inset: 9pt)[
      #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[Four Symbols That Cost Marks]
      #v(2pt)
      - $r$ is the radius; $2r$ is the diameter.
      - $l$ in a cone is the *slant* height $sqrt(r^2 + h^2)$.
      - $n$ is the number of sides — and of exterior angles.
    ],
  )
]

#pagebreak()

== The Twelve Question Templates That Reappear Every Year

Read this table once before you start Chapter 1, then again after Chapter 10. It is the fastest overview of Section III you will ever get: twelve templates, each one worth roughly one question per paper, each one solved by a single rule.

#v(3pt)
#table(
  columns: (auto, 1.5fr, 1.15fr, auto),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[How the question is worded],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[The one rule you need],
    text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[Ch.],
  ),
  [1], [Interior or exterior angle of a regular polygon], [$(n - 2) times 180^degree -: n$, and $360^degree -: n$], [1],
  [2], [Angles formed by two parallel lines and a transversal], [Corresponding and alternate angles are equal; co-interior angles sum to $180^degree$], [1],
  [3], [Pythagoras with a triad, or a similarity ratio], [Triads $3,4,5$; $5,12,13$; $8,15,17$; $7,24,25$; areas in the ratio of the squares], [2],
  [4], [Angle at the centre given, angle at the circumference asked], [Angle at centre $= 2 times$ angle at circumference], [3],
  [5], [Cyclic quadrilateral with one angle given], [Opposite angles sum to $180^degree$], [3],
  [6], [Chord, radius and distance from the centre], [Half-chord, distance and radius form a right triangle], [3],
  [7], [Area of a sector, arc length, perimeter of a sector], [$theta/360 times pi r^2$, $theta/360 times 2 pi r$, and add the two radii], [5],
  [8], [Volume or surface area of a solid], [Memorise the six solids; halve or third only where the formula says so], [6],
  [9], [Distance on the earth's surface or a time difference], [$1^degree$ of latitude $= 111$ km; $15^degree$ of longitude $= 1$ hour; radius of a parallel $= R cos theta$], [7],
  [10], [Distance, midpoint, gradient or circle equation], [$d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2)$; $m_1 m_2 = -1$], [8],
  [11], [Evaluate a ratio at $30^degree$, $45^degree$ or $60^degree$], [The special-triangle table, plus the CAST signs], [9],
  [12], [Bearing, elevation, sine rule or cosine rule], [Back bearing $= theta plus.minus 180^degree$; $a sin B = b sin A$; $a^2 = b^2 + c^2 - 2 b c cos A$], [10],
)

#v(6pt)

Every one of those twelve templates is drilled at least forty times in this volume. If you can recognise the template within five seconds of reading a question, you have already won the mark: the arithmetic that follows is a single line.

#trap-box("How to Use This Table as a Revision Checklist")[
  - Tick a template only when you can solve it *from memory*, in under a minute, with the figure drawn from scratch.
  - Untick it the moment a mock paper catches you out. Unticking is not failure, it is maintenance.
  - Bring this page to every practice session; the twelve rows are the whole of Section III in miniature.
]

#pagebreak()

// ============================================================================
// SYLLABUS CROSS-REFERENCE MATRIX
// ============================================================================
== Official JAMB UTME Syllabus Mapping (Section III → Volume 3 Chapters)

#v(4pt)
#table(
  columns: (1.05fr, 1.75fr, 1.75fr, auto),
  inset: 6pt,
  align: (left + horizon, left + top, left + top, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Official Syllabus Topic],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Contents & Notes in JAMB Syllabus],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Official Candidate Objectives],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Chapter],
  ),

  [*1. Lines, Angles and Polygons*],
  [Types of angles; angles on a straight line, at a point, vertically opposite; angles formed by parallel lines and a transversal; interior and exterior angles of polygons.],
  [(i) Identify and apply angle properties; (ii) find the sum of interior and exterior angles of a polygon; (iii) solve problems on parallel lines.],
  [*Chapter 1*],

  [*2. Triangles and Polygons*],
  [Types of triangles; angle sum and exterior angle; congruence (SSS, SAS, ASA, RHS); similarity and ratio of areas; Pythagoras' theorem; special triangles; quadrilaterals.],
  [(i) Use congruence and similarity criteria; (ii) apply Pythagoras' theorem; (iii) solve problems on the properties of quadrilaterals.],
  [*Chapter 2*],

  [*3. Circle Theorems*],
  [Parts of a circle; angle at centre and at circumference; angle in a semicircle; angles in the same segment; cyclic quadrilaterals; tangent–radius; alternate segment; intersecting chords and tangents.],
  [(i) State and apply the circle theorems; (ii) solve rider-type problems involving tangents and chords.],
  [*Chapter 3*],

  [*4. Constructions and Loci*],
  [Construction of triangles, perpendicular and angle bisectors, angles of $60^degree$, $30^degree$, $90^degree$ and $45^degree$; loci of moving points.],
  [(i) Perform ruler-and-compass constructions; (ii) describe and intersect loci.],
  [*Chapter 4*],

  [*5. Plane Mensuration*],
  [Perimeter and area of triangles, quadrilaterals, circles; arc length and sector area; area of composite shapes; surface area of plane figures.],
  [(i) Compute perimeters and areas; (ii) find the length of an arc and the area of a sector.],
  [*Chapter 5*],

  [*6. Mensuration of Solids*],
  [Volume and surface area of prisms, cylinders, pyramids, cones, spheres and frustums; capacity; similar solids.],
  [(i) Compute volumes and surface areas of solids; (ii) solve problems on frustums and composite solids.],
  [*Chapter 6*],

  [*7. Longitude and Latitude*],
  [Great and small circles; distance along a meridian and along a parallel; radius of a parallel; local time and longitude.],
  [(i) Calculate distances on the earth's surface; (ii) convert longitude difference to time difference.],
  [*Chapter 7*],

  [*8. Coordinate Geometry*],
  [Distance, midpoint, gradient, equation of a straight line, parallel and perpendicular lines, equation of a circle.],
  [(i) Find distances, midpoints and gradients; (ii) determine equations of lines and circles.],
  [*Chapter 8*],

  [*9. Trigonometric Ratios and Graphs*],
  [Sine, cosine and tangent of acute and obtuse angles; special angles; the unit circle and CAST; graphs of $sin x$ and $cos x$; simple trigonometric equations.],
  [(i) Evaluate trigonometric ratios; (ii) sketch and interpret trigonometric graphs.],
  [*Chapter 9*],

  [*10. Bearings, Elevation and the Sine & Cosine Rules*],
  [Three-figure bearings; angles of elevation and depression; the sine rule; the cosine rule; area of a triangle as $1/2 a b sin C$.],
  [(i) Solve bearing and elevation problems; (ii) apply the sine and cosine rules to non-right-angled triangles.],
  [*Chapter 10*],
)

#pagebreak()

// ============================================================================
// TABLE OF CONTENTS
// ============================================================================
#current-chapter.update("Table of Contents")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents — Volume 3: Geometry, Mensuration & Trigonometry]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Every chapter includes Syllabus Focus Radar • Labelled Diagrams • Graded Worked Examples • 40+ UTME Practice Qs • Complete Step-by-Step Solutions
  ]
]
#v(8pt)

#show outline.entry.where(level: 1): it => {
  v(4pt, weak: true)
  strong(text(font: "DejaVu Sans", size: 10.2pt, fill: jamb-navy)[#it])
}
#show outline.entry.where(level: 2): it => {
  text(font: "Libertinus Serif", size: 9.2pt, fill: jamb-slate)[#it]
}

#outline(
  title: none,
  depth: 2,
  indent: 14pt,
)

#pagebreak()

// ============================================================================
// HOW TO USE + DIAGNOSTIC PRE-TEST
// ============================================================================
#current-chapter.update("How to Use This Book & Diagnostic Pre-Test")

== How to Use This Book

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-navy)[The Seven Elements of Every Chapter]
      #v(4pt)
      - *Exam Radar:* the syllabus objectives, the recurring question types, and the examiner's own summary of where marks are lost.
      - *Concept Build-Up:* why the rule works, derived rather than announced.
      - *Diagrams:* every figure labelled, to scale, and printed beside the theorem it illustrates.
      - *Graded Worked Examples:* foundation, standard, then challenge, each solved line by line with the reason printed.
      - *Trap Boxes:* the exact error that produces each wrong option.
      - *Chapter Drill:* 40–45 questions in exam format, followed by the key and full solutions.
      - *Recap Cards:* the whole chapter compressed to twelve lines for the night before the exam.
    ],
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[A Three-Pass Reading Strategy]
      #v(4pt)
      - *Pass 1 — Understanding:* read the notes and *redraw every diagram by hand*. A figure you drew yourself will stay with you; a figure you merely looked at will not.
      - *Pass 2 — Execution:* cover the solutions, re-solve every worked example, then sit the drill under a timer — about one minute per question.
      - *Pass 3 — Retention:* one week later, re-solve only the questions you missed, then read the recap cards and the formula sheet in Appendix A.
      Separate the passes by at least two days. Spacing is what turns a worked example into a reflex.
    ],
  )
]

== Diagnostic Pre-Test (Fifteen Minutes)

Attempt all twelve questions before reading Chapter 1. They sample one idea from each chapter. Your score is a *baseline*, not a verdict.

#mcq(1, [Two angles on a straight line are $65^degree$ and $48^degree$. Find the third angle.], [$113^degree$], [$67^degree$], [$247^degree$], [$157^degree$])

#mcq(2, [A right-angled triangle has legs $9$ cm and $12$ cm. Find the hypotenuse.], [$21$ cm], [$108$ cm], [$15$ cm], [$3$ cm])

#mcq(3, [An arc subtends $70^degree$ at the centre of a circle. Find the angle it subtends at the circumference.], [$140^degree$], [$70^degree$], [$110^degree$], [$35^degree$])

#mcq(4, [The locus of points equidistant from two fixed points A and B is], [the perpendicular bisector of AB], [the angle bisector of $angle A B$], [a circle with centre A], [a line parallel to AB])

#mcq(5, [Find the area of a sector of radius $7$ cm which subtends $90^degree$ at the centre. (Take $pi = 22/7$.)], [$77$ cm²], [$38.5$ cm²], [$11$ cm²], [$154$ cm²])

#mcq(6, [Find the volume of a cylinder of radius $7$ cm and height $10$ cm. (Take $pi = 22/7$.)], [$440$ cm³], [$3080$ cm³], [$1540$ cm³], [$220$ cm³])

#mcq(7, [Two towns on the same meridian are $10^degree$ apart in latitude. Find the distance between them, taking 1° as 111 km.], [$555$ km], [$2220$ km], [$111$ km], [$1110$ km])

#mcq(8, [Find the distance between $(0, 0)$ and $(8, 15)$.], [$17$], [$23$], [$120$], [$7$])

#mcq(9, [Evaluate $cos 60^degree$.], [$sqrt(3)/2$], [$sqrt(2)/2$], [$1/2$], [$0$])

#mcq(10, [The bearing of Q from P is $060^degree$. Find the bearing of P from Q.], [$060^degree$], [$240^degree$], [$120^degree$], [$300^degree$])

#mcq(11, [In $triangle A B C$, $a = 3$ cm, $b = 4$ cm and $angle C = 90^degree$. Find $c$.], [$5$ cm], [$7$ cm], [$12$ cm], [$25$ cm])

#mcq(12, [A chord of a circle of radius $13$ cm is $5$ cm from the centre. Find the length of the chord.], [$12$ cm], [$18$ cm], [$8$ cm], [$24$ cm])

#answer-key-grid((
  "B", "C", "D", "A", "B", "C",
  "D", "A", "C", "B", "A", "D",
))

#trap-box("How to Read Your Diagnostic Score")[
  - *10–12 correct:* strong foundation. Skim the notes, then concentrate on the challenge-tier examples and the mock paper.
  - *6–9 correct:* the normal starting point. Work the chapters in order and do not skip a single worked example — geometry rewards repetition more than any other section.
  - *0–5 correct:* you are not "bad at geometry" — you are missing the figure. From now on, draw *every* question before you calculate, even in a timed mock.
  Record the score and the date in the mastery tracker (Appendix U), and repeat the same twelve questions after Chapter 10.
]

#v(8pt)

== How to Mark the Diagnostic

#table(
  columns: (1fr, 2.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Score],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What it means and what to do first],

  [*10–12*], [The rules are already in place. Work the chapters for polish, then go straight to Mock 1 and use the question map to find the two weak chapters.],
  [*6–9*], [The normal starting point. Two chapters are weak and two are strong; find out which by grouping your mistakes by chapter, then start with the weaker pair.],
  [*0–5*], [The figure is missing, not the talent. Read Appendix B before Chapter 1, and draw every diagram in the first three chapters by hand.],
)

#v(6pt)

#concept-box("What the twelve questions actually measure")[
  Question 1 is an angle chase; 2 and 3 are circle theorems; 4 is a construction concept; 5 and 6 are mensuration; 7 and 8 are longitude and time; 9 and 10 are coordinates and trigonometry; 11 and 12 are bearings and the sine rule. A blank in any pair points at exactly one chapter, which is why the score is only the start of the diagnosis — the *pattern* of blanks is the diagnosis.

  Write the date beside your score now. In eight weeks you will sit the same twelve questions again, and the difference between the two columns is the only evidence of progress that matters.
]
