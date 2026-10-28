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
  // Top green accent bar
  #rect(width: 100%, height: 9mm, fill: jamb-bright)

  #pad(x: 20mm, top: 10mm)[
    // Brand Header Row
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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 1 OF 4],
      ),
    )

    #v(8mm)

    // Subject Pill
    #box(
      fill: rgb("#064E3B"),
      stroke: 1pt + rgb("#34D399"),
      radius: 20pt,
      inset: (x: 14pt, y: 5pt),
      text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#A7F3D0"))[
        UNIFIED TERTIARY MATRICULATION EXAMINATION (UTME)
      ],
    )

    #v(5mm)

    // Main Title
    #text(font: "DejaVu Sans", size: 36pt, weight: "bold", fill: white)[MATHEMATICS]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 1: Number & Numeration
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.3pt, fill: rgb("#E2E8F0"))[
      Complete, In-Depth Mastery of JAMB Section I — Number Bases, Modular Arithmetic, Fractions, Approximations, Percentage Error, Ratio & Rates, Commercial Finance (Interest, Shares & VAT), Indices, Standard Form, Logarithms, Surds, and Set Theory with Venn Diagrams.
    ]

    #v(6mm)

    // Visual Cover Banner SVG
    #image("diagrams/cover_banner.svg", width: 100%)

    #v(6mm)

    // 4 Feature Cards
    #grid(
      columns: (1fr, 1fr),
      row-gutter: 8pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 9pt)[
        #text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#FCD34D"))[★ High-Yield Areas of Focus]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.3pt, fill: rgb("#CBD5E1"))[
          Pinpoints exact subtopics, recurring question archetypes, and distractor traps from decades of real UTME papers.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 9pt)[
        #text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#34D399"))[◆ 28 Visual Vector Diagrams]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.3pt, fill: rgb("#CBD5E1"))[
          Labelled place-value charts, modulo clock wheels, error-bound lines, growth curves, surd triangles & Venn atlases.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 9pt)[
        #text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Line-by-Line Calculations]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.3pt, fill: rgb("#CBD5E1"))[
          140+ graded worked examples solved step-by-step without a scientific calculator — matching JAMB CBT conditions.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 9pt)[
        #text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#F87171"))[✓ 320 Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.3pt, fill: rgb("#CBD5E1"))[
          30 UTME drill questions per chapter + a 50-question Cumulative Mock Exam, every single one solved step-by-step.
        ]
      ],
    )
  ]

  #place(bottom)[
    #rect(
      width: 100%,
      fill: jamb-green,
      inset: (x: 20mm, y: 4.5mm),
    )[
      #grid(
        columns: (1fr, auto),
        column-gutter: 14pt,
        align: (left + horizon, right + horizon),
        text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: white)[
          JAMB CBT Companion Textbook Series • Print-Ready A4 Manual
        ],
        text(font: "DejaVu Sans", size: 8.3pt, weight: "bold", fill: rgb("#FEF3C7"))[
          Chapters 1 – 9 + Full CBT Mock
        ],
      )
    ]
  ]
]

// ============================================================================
// PAGE 2: SERIES MAP & HOW TO USE THIS MANUAL
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
  To ensure zero syllabus topic is rushed or condensed, the official JAMB UTME Mathematics syllabus is divided into *four comprehensive, standalone volumes*. Together, they cover every objective, theorem, diagram, and calculation style tested by the Joint Admissions and Matriculation Board:

  #v(6pt)
  #table(
    columns: (auto, 1.3fr, 2.2fr, auto),
    inset: 8pt,
    align: (center + horizon, left + horizon, left + horizon, center + horizon),
    stroke: 0.6pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if y == 1 { jamb-mint } else { white },
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Volume Title & Syllabus Section],
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Chapters & Syllabus Coverage],
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[UTME Share],

    [*Vol. 1*\ *(This Book)*],
    [*Number & Numeration*\ _(Section I Complete)_],
    [Number Bases, Modulo Arithmetic, Fractions/Decimals/Errors, Ratio/Proportion/Rates, Simple & Compound Interest, Profit/Loss, Shares & VAT, Indices & Standard Form, Logarithms, Surds, Sets & Venn Diagrams.],
    [*10–12 Qs*\ *(\~28%)*],

    [Vol. 2],
    [*Complete Algebra*\ _(Section II Complete)_],
    [Change of Subject of Formula, Polynomials (Factor & Remainder Theorems), Quadratics & Simultaneous Equations, Polynomial Graphs, Direct/Inverse/Joint/Partial Variation, Linear & Quadratic Inequalities, A.P. & G.P. Progressions, Binary Operations, $2 times 2$ & $3 times 3$ Matrices and Determinants.],
    [9–11 Qs\ (\~25%)],

    [Vol. 3],
    [*Geometry, Mensuration & Trigonometry*\ _(Section III Complete)_],
    [Lines & Angles, Triangles & Polygons, Complete Circle Theorems, Geometric Constructions, Plane & Solid Mensuration, Earth as a Sphere (Longitude & Latitude), Loci, Coordinate Geometry, Trigonometric Ratios, Bearings, Elevation/Depression, Sine & Cosine Rules.],
    [8–10 Qs\ (\~22%)],

    [Vol. 4],
    [*Calculus, Statistics & Probability*\ _(Sections IV & V Complete)_],
    [Limits, Differentiation of Algebraic & Trig Functions, Rates of Change, Maxima & Minima, Integration & Area Under Curves, Data Representation (Pie/Bar/Histogram), Mean/Median/Mode/Ogive, Range/Mean Deviation/Variance/SD, Permutations, Combinations & Probability.],
    [9–11 Qs\ (\~25%)],
  )
]

#v(8pt)

== Why Volume 1 Is Your Fastest Route to 10+ Guaranteed Marks in JAMB

Every single year, *Section I (Number and Numeration)* contributes between *10 and 12 questions out of 40* on the UTME Mathematics paper — more than a quarter of the entire exam! Better still, unlike tricky 3D geometry constructions or abstract calculus word problems, Section I questions follow highly predictable algebraic patterns. A student who masters the nine chapters of this volume walks into the exam hall with *25% to 30% of the paper already locked down* before even touching Algebra, Geometry, or Calculus.

#diagram-fig(
  "diagrams/utme_weight_chart.svg",
  "Distribution of the 40 UTME Mathematics questions across the 4 volumes (left) and historical appearance frequency of each Volume 1 chapter in past JAMB papers (right).",
)

== Surviving & Thriving Under Real JAMB CBT Conditions (No Scientific Calculator!)

One of the biggest shocks first-time UTME candidates experience in the exam hall is discovering that the *on-screen JAMB CBT calculator is strictly a basic 4-function arithmetic calculator* (`+`, `-`, `×`, `÷`). It has:
- *NO exponent or root keys* ($x^y$, $sqrt(x)$, $root(3, x)$ are absent — though basic square root appears on some versions, fractional powers never do);
- *NO logarithm keys* ($log_(10)$ and $ln$ are completely absent);
- *NO base-conversion mode* (`BIN`, `OCT`, `DEC`, `HEX` are absent);
- *NO fraction or surd simplification button*.

Because JAMB knows you do not have a scientific calculator, *every calculation in UTME Mathematics is secretly engineered to collapse cleanly* using prime factorization, index laws, difference of two squares, conjugate rationalization, or given logarithm constants! That is why this manual teaches *exact non-calculator hand algorithms* in every single worked example.

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[★ The 45-Second Pacing Rule]
      #v(4pt)
      In UTME exam mode, you answer *180 questions across 4 subjects in 120 minutes* (2 hours). Allocating *35 to 40 minutes* to Mathematics gives you roughly *55 to 60 seconds per question*:
      - *Pass 1 (First 20 mins):* Sweep through direct 30-second questions (binary conversion, laws of indices, standard form, 2-set Venn, simple ratio/percentage).
      - *Pass 2 (Next 13 mins):* Solve multi-step calculations (3-set Venn word problems, conjugate surds, share dividends, unknown bases).
      - *Pass 3 (Final 3 mins):* Eliminate impossible options on any flagged questions — *never leave a JAMB question blank* (there is zero negative marking!).
    ],
    block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: trap-red)[◆ How JAMB Designs Wrong Options (A–D)]
      #v(4pt)
      JAMB distractors are *never random numbers*. Each wrong option corresponds to one specific student mistake:
      - *Option A:* Often the result of forgetting to flip an inequality sign or reading division remainders *downward* instead of *upward*.
      - *Option B:* Calculating Profit % on *Selling Price* instead of *Cost Price*, or Dividend % on *Market Price* instead of *Nominal Value*.
      - *Option C:* Confusing significant figures with decimal places (e.g. $0.045$ as "3 s.f." instead of "2 s.f.").
      - Look out for the red *JAMB TRAP!* boxes in every chapter!
    ],
  )
]

#pagebreak()

// ============================================================================
// OFFICIAL JAMB SECTION I SYLLABUS CROSS-REFERENCE MATRIX
// ============================================================================
== Official JAMB UTME Syllabus Mapping (Section I → Volume 1 Chapters)

Every single bullet point and learning objective from the official JAMB Mathematics Syllabus (*Section I: Number and Numeration*) is mapped below to its exact chapter in this volume:

#v(4pt)
#table(
  columns: (1.1fr, 1.8fr, 1.8fr, auto),
  inset: 7.5pt,
  align: (left + horizon, left + top, left + top, center + horizon),
  stroke: 0.6pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Official Syllabus Topic],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Contents & Notes in JAMB Syllabus],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Official Candidate Objectives],
  text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[Chapter],

  [*1. Number Bases*\ _(Part A)_],
  [(a) Operations in different number bases from $2$ to $10$;\ (b) Conversion from one base to another including fractional parts.],
  [(i) Perform four basic operations ($times, +, -, div$) in any base;\ (ii) Convert from one base to another including bicimals & unknown bases.],
  [*Chapter 1*],

  [*1. Number Bases*\ _(Part B: Modulo)_],
  [Arithmetic in finite residue systems $ZZ_n$; clock and cyclic arithmetic.],
  [(iii) Perform operations ($plus.o, minus.o, times.o, div$) and solve equations in *modulo arithmetic*.],
  [*Chapter 2*],

  [*2. Fractions, Decimals & Approximations*],
  [(a) Fractions and decimals;\ (b) Significant figures;\ (c) Decimal places;\ (d) Percentage errors.],
  [(i) Perform BODMAS operations on vulgar fractions & recurring decimals;\ (ii) Express to specified s.f. and d.p.;\ (iii) Compute absolute & percentage error.],
  [*Chapter 3*],

  [*2. Ratio, Proportion & Rates*],
  [(g) Ratio, proportion and rate (direct/inverse proportion, speed, work, mixtures).],
  [(iii) Solve multi-step problems involving ratio sharing, proportion, speed, and combined rates.],
  [*Chapter 4*],

  [*2. Commercial & Financial Maths*],
  [(e) Simple interest (and compound growth);\ (f) Profit and loss percent;\ (h) Shares and Value Added Tax (VAT).],
  [(iii) Calculate simple interest, profit and loss percent, trade/cash discounts;\ (iv) Solve problems involving *shares, dividends, and VAT*.],
  [*Chapter 5*],

  [*3. Indices & Standard Form*],
  [(a) Laws of indices;\ (b) Equations involving indices;\ (c) Standard form $A times 10^n$.],
  [(i) Apply laws of indices in calculation;\ (iii) Solve linear, simultaneous & quadratic-form indicial equations; compute in scientific notation.],
  [*Chapter 6*],

  [*3. Logarithms*],
  [(d) Laws of logarithm;\ (e) Logarithm of any positive number to a given base;\ (f) Change of bases in logarithm;\ (g) Relationship between indices and logarithm.],
  [(ii) Establish index-logarithm duality;\ (iv) Solve problems in different bases, apply change-of-base, and evaluate logs from given constants without tables.],
  [*Chapter 7*],

  [*3. Surds*],
  [(h) Surds: simplification, basic operations, conjugates, rationalization, radical equations.],
  [(v) Simplify and rationalize surds;\ (vi) Perform $+, -, times, div$, equate binomial surds, and find square roots of surds.],
  [*Chapter 8*],

  [*4. Sets & Venn Diagrams*],
  [(a) Types of sets;\ (b) Algebra of sets;\ (c) Venn diagrams and their applications.],
  [(i) Identify empty, universal, complement, subset, finite, infinite & disjoint sets;\ (ii–iv) Solve cardinality & shading problems for *up to 3 sets* using Venn diagrams.],
  [*Chapter 9*],
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
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents — Volume 1: Number & Numeration]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Every chapter includes Syllabus Focus Radar • Visual Diagrams • 15+ Graded Worked Examples • 30 UTME Practice Qs • Complete Step-by-Step Solutions
  ]
]
#v(8pt)

#show outline.entry.where(level: 1): it => {
  v(7pt, weak: true)
  strong(text(font: "DejaVu Sans", size: 10.5pt, fill: jamb-navy)[#it])
}
#show outline.entry.where(level: 2): it => {
  text(font: "Libertinus Serif", size: 9.8pt, fill: jamb-slate)[#it]
}

#outline(
  title: none,
  depth: 2,
  indent: 14pt,
)

#pagebreak()

// ============================================================================
// HOW TO USE THIS BOOK + DIAGNOSTIC PRE-TEST
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
      - *Exam Radar:* the exact syllabus objectives and the subtopics JAMB repeats most.
      - *Concept Build-Up:* the reasoning, not just the rule — including why the rule is written that way.
      - *Diagrams:* every relationship that has a picture is drawn and labelled.
      - *Graded Worked Examples:* foundation, standard, then challenge, each solved line by line.
      - *Trap Boxes:* the specific mistakes that produce the wrong option.
      - *Practice Drill:* 35–60 questions in exam format.
      - *Full Solutions:* every drill question solved completely, not just answered.
    ],
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[A Three-Pass Reading Strategy]
      #v(4pt)
      - *Pass 1 (Understanding):* read the notes and diagrams only. Do not attempt questions yet. Reproduce each diagram roughly on paper.
      - *Pass 2 (Execution):* cover the solutions and re-solve all worked examples. Then sit the chapter drill under a timer.
      - *Pass 3 (Retention):* one week later, re-solve only the questions you got wrong, and read the recap and flashcards for that chapter.
      Each pass should be separated by at least two days; spacing is what converts a worked example into a reliable reflex.
    ],
  )
]

== Diagnostic Pre-Test (Fifteen Minutes)

Before beginning Chapter 1, attempt these twelve questions without any revision. They sample one idea from each chapter. Your score tells you where to concentrate first — *do not* be discouraged by a low score; this is a baseline, not a judgment.

#mcq(1, [Convert $110101_2$ to base ten.], [$53$], [$45$], [$51$], [$43$])

#mcq(2, [Find the least non-negative residue of $(-25)$ modulo $7$.], [$4$], [$-4$], [$3$], [$5$])

#mcq(3, [Simplify $frac(2, 3) + frac(3, 4) - frac(5, 6)$.], [$frac(7, 12)$], [$frac(5, 12)$], [$frac(3, 4)$], [$frac(11, 12)$])

#mcq(4, [Eight workers finish a task in fifteen days. How long will twelve workers take?], [$12$], [$10$], [$9$], [$20$])

#mcq(5, [Find the simple interest on ₦$120000$ at $5%$ for $2$ years.], [₦$12000$], [₦$6000$], [₦$24000$], [₦$9000$])

#mcq(6, [Evaluate $27^(2/3)$.], [$18$], [$6$], [$81$], [$9$])

#mcq(7, [Evaluate $log_10 5$ given $log_10 2 = 0.3010$.], [$0.6990$], [$0.3010$], [$0.6020$], [$1.3010$])

#mcq(8, [Simplify $sqrt(50)$.], [$2 sqrt(5)$], [$25 sqrt(2)$], [$5 sqrt(2)$], [$10 sqrt(5)$])

#mcq(9, [A set has $6$ elements. How many subsets does it have?], [$64$], [$63$], [$32$], [$12$])

#mcq(10, [In a class of $40$, $24$ study Mathematics, $18$ study Physics and $10$ study both. How many study *neither*?], [$12$], [$8$], [$6$], [$4$])

#mcq(11, [Two thirds of a number is $30$. What is $60%$ of that number?], [$27$], [$30$], [$45$], [$20$])

#mcq(12, [Express $0.75$ as a fraction in lowest terms and as a percentage.], [$frac(75, 100)$ and $7.5%$], [$frac(7, 5)$ and $70%$], [$frac(3, 4)$ and $7.5%$], [$frac(3, 4)$ and $75%$])

#answer-key-grid((
  "A", "C", "A", "B", "A", "D", "A", "C", "A", "B", "A", "D",
))

#trap-box("How to Interpret Your Pre-Test Score")[
  - *10–12 correct:* You already have a solid foundation. Work the chapters quickly, concentrating on the trap boxes and the drills.
  - *6–9 correct:* Typical starting point. Follow the three-pass strategy strictly and do not skip the worked examples.
  - *0–5 correct:* Begin with Chapter 1 and proceed in order. Do not jump ahead; each chapter depends on the fluency built by the previous one.
  Keep this score. Repeat the same twelve questions after Chapter 9 and compare — the improvement is often twenty minutes of visible evidence that the method is working.
]
