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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 2 OF 4],
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
    #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: Complete Algebra
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.3pt, fill: rgb("#E2E8F0"))[
      Complete, In-Depth Mastery of JAMB Section II — Change of Subject of Formula, Polynomials and the Factor & Remainder Theorems, Quadratic Equations and Graphs, Simultaneous Equations, Linear & Quadratic Inequalities, Variation, Arithmetic & Geometric Progressions, Binary Operations, and 2 × 2 and 3 × 3 Matrices with Determinants.
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
          Every Section II subtopic ranked by UTME frequency — with the exact distractor that JAMB builds from each common slip.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ 32 Labelled Diagrams]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Parabola families, completing-the-square tiles, discriminant gallery, variation graphs, GP convergence squares and matrix transforms.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Line-by-Line Algebra]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          150+ graded worked examples solved line by line, from one-step transposition to 3 × 3 determinants — no calculator required.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ 380 Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          40+ UTME-style drill questions per chapter plus two 60-question cumulative mocks, every option explained.
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
          Chapters 1 – 9 + Two Full CBT Mocks
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
    fill: (x, y) => if y == 0 { jamb-navy } else if y == 2 { jamb-mint } else { white },
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Volume Title & Syllabus Section],
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[Chapters & Syllabus Coverage],
    text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: white)[UTME Share],

    [Vol. 1],
    [*Number & Numeration*\
      _(Section I Complete)_],
    [Number Bases, Modular Arithmetic, Fractions/Decimals/Errors, Ratio/Proportion/Rates, Simple & Compound Interest, Profit/Loss, Shares & VAT, Indices & Standard Form, Logarithms, Surds, Sets & Venn Diagrams.],
    [10–12 Qs\
      _(\~28%)_],

    [*Vol. 2*\
      *(This Book)*],
    [*Complete Algebra*\
      _(Section II Complete)_],
    [Change of Subject of Formula, Polynomials & Factor/Remainder Theorems, Quadratic Equations & Graphs, Simultaneous Equations (linear–linear, linear–quadratic, 3 × 3), Linear & Quadratic Inequalities, Direct/Inverse/Joint/Partial Variation, A.P. & G.P. with Sum to Infinity, Binary Operations, 2 × 2 & 3 × 3 Matrices and Determinants.],
    [*9–11 Qs*\
      *(\~25%)*],

    [Vol. 3],
    [*Geometry, Mensuration & Trigonometry*\
      _(Section III Complete)_],
    [Lines & Angles, Triangles & Polygons, Circle Theorems, Constructions, Plane & Solid Mensuration, Longitude & Latitude, Loci, Coordinate Geometry, Trigonometric Ratios, Bearings, Elevation/Depression, Sine & Cosine Rules.],
    [8–10 Qs\
      (\~22%)],

    [Vol. 4],
    [*Calculus, Statistics & Probability*\
      _(Sections IV & V Complete)_],
    [Limits, Differentiation, Rates of Change, Maxima & Minima, Integration & Area, Data Representation, Mean/Median/Mode, Ogive, Range/Mean Deviation/Variance/SD, Permutations, Combinations & Probability.],
    [9–11 Qs\
      (\~25%)],
  )
]

#v(8pt)

== Why Algebra Is Where Candidates Gain — or Lose — Their JAMB Admission

Section II of the UTME Mathematics syllabus supplies *nine to eleven of the forty questions* every year, and those questions are unusually *learnable*. Unlike geometry, where a missing construction line can stall a candidate, algebra questions announce their method: a quadratic will be solved by factorisation, formula or completing the square; a variation problem is either direct, inverse, joint or partial; a progression is either arithmetic or geometric. There are no grey areas — only recognised patterns.

That predictability cuts both ways. JAMB's setters also know the patterns, so they design options around the *specific arithmetic slips* that pattern-following invites:

- solving $2x^2 - 7x + 3 = 0$ and reporting $x = 3$ only, forgetting $x = 1/2$;
- substituting $x = 2$ into $x^3 - 4x + 1$ and writing $f(2) = 1$ although $2^3 = 8$, not $4$;
- transposing $T = 2pi sqrt(l/g)$ and writing $g = 4pi^2 l T^2$ instead of dividing by $T^2$;
- using $S_n = n/2(2a + (n-1)d)$ with $n$ as the *last term* rather than the *number of terms*;
- treating "varies directly as the square of $x$" as $y = k x$ rather than $y = k x^2$;
- computing a $2 times 2$ determinant as $a d + b c$ instead of $a d - b c$.

Every one of those traps is named, explained, and drilled in this volume.

#diagram-fig(
  "diagrams/utme_algebra_weight.svg",
  "Where the 9–11 Section II questions come from: typical annual question allocation by chapter, based on the recurring structure of UTME Mathematics papers.",
)

== The One Skill That Decides Your Algebra Score

Almost every algebra question in UTME is a *sequence of legal transformations*, not a flash of insight. That is good news. A candidate who can reliably:

1. read a formula and name the operation wrapping the subject,
2. apply the *inverse* operation to both sides,
3. keep the equation balanced while collecting like terms,
4. substitute a numeric value only at the very end,

will out-score a candidate with better intuition but weaker bookkeeping. This book therefore teaches every topic through *worked transformations with the reasoning printed beside them*, and every drill is solved the same way — no answer is ever merely stated.

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[★ The 55-Second Algebra Rule]
      #v(4pt)
      In the real CBT hall you have about *55–60 seconds per Mathematics question*.
      - *Recognise first (5 s):* classify the question — transposition, quadratic, variation, progression, matrix.
      - *Plan (5 s):* name the two or three steps before writing.
      - *Execute (40 s):* write line by line; never juggle two operations in your head.
      - *Check (5 s):* substitute your answer back. A quadratic root that fails substitution is a lost mark you can still rescue.
    ],
    block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: trap-red)[◆ How JAMB Writes Algebra Distractors]
      #v(4pt)
      - *Sign-flip distractor:* the answer you get if you move a term without changing its sign.
      - *Reciprocal distractor:* the answer you get by inverting the correct formula.
      - *Half-root distractor:* only one root of a quadratic.
      - *Off-by-one distractor:* using $n$ instead of $n - 1$ in an A.P., or $r^(n)$ instead of $r^(n-1)$ in a G.P.
      - *Transpose distractor:* a matrix multiplied in the wrong order, or an inverse with the diagonal signs unchanged.
    ],
  )
]

#pagebreak()

// ============================================================================
// SYLLABUS CROSS-REFERENCE MATRIX
// ============================================================================
== Official JAMB UTME Syllabus Mapping (Section II → Volume 2 Chapters)

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

  [*1. Change of Subject of Formula*],
  [Rearranging formulae; making any variable the subject; formulae with roots, powers, fractions and repeated variables.],
  [(i) Change the subject of a given formula; (ii) evaluate the resulting expression.],
  [*Chapter 1*],

  [*2. Polynomials*],
  [(a) Factor and remainder theorems; (b) factorisation of polynomials of degree up to 3; (c) identities.],
  [(i) Apply the factor and remainder theorems; (ii) factorise cubic polynomials completely.],
  [*Chapter 2*],

  [*3. Quadratic Equations*],
  [(a) Solution by factorisation, formula, completing the square; (b) forming equations from given roots; (c) sum and product of roots; (d) graphs of quadratic functions.],
  [(i) Solve any quadratic equation; (ii) form an equation from its roots; (iii) relate roots, coefficients and the graph.],
  [*Chapter 3*],

  [*4. Simultaneous Equations*],
  [Linear–linear (2 × 2), linear–quadratic, and three equations in three unknowns; word problems leading to simultaneous equations.],
  [(i) Solve simultaneous equations by elimination, substitution and graphical methods; (ii) solve one linear and one quadratic equation.],
  [*Chapter 4*],

  [*5. Inequalities*],
  [(a) Linear inequalities in one variable; (b) quadratic inequalities; (c) graphs and regions of linear inequalities.],
  [(i) Solve and represent inequalities on a number line; (ii) solve quadratic inequalities; (iii) shade feasible regions.],
  [*Chapter 5*],

  [*6. Variation*],
  [(a) Direct variation; (b) inverse variation; (c) joint variation; (d) partial variation.],
  [(i) Identify the type of variation from a statement; (ii) form the equation of variation and solve for unknowns.],
  [*Chapter 6*],

  [*7. Sequences and Series*],
  [(a) Arithmetic progression; (b) Geometric progression; (c) Sum to infinity of a G.P.],
  [(i) Find the $n$th term and sum of an A.P. and a G.P.; (ii) apply the sum to infinity; (iii) solve practical progression problems.],
  [*Chapter 7*],

  [*8. Binary Operations*],
  [Definition of a binary operation on a set; closure, commutativity, associativity, identity and inverse.],
  [(i) Evaluate expressions involving a defined binary operation; (ii) find the identity and inverse elements of a binary operation.],
  [*Chapter 8*],

  [*9. Matrices and Determinants*],
  [Order of a matrix, addition, subtraction, scalar multiplication, multiplication, transpose, determinants of $2 times 2$ and $3 times 3$ matrices, inverse of a $2 times 2$ matrix and solution of simultaneous equations.],
  [(i) Perform matrix operations; (ii) evaluate determinants; (iii) find inverses and solve simultaneous equations by matrix methods.],
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
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents — Volume 2: Complete Algebra]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Every chapter includes Syllabus Focus Radar • Labelled Diagrams • Graded Worked Examples • 40+ UTME Practice Qs • Complete Step-by-Step Solutions
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
      - *Diagrams:* parabola families, sign charts, variation graphs and matrix transformations drawn and labelled.
      - *Graded Worked Examples:* foundation, standard, then challenge, each solved line by line.
      - *Trap Boxes:* the exact error that produces each wrong option.
      - *Practice Drill:* 40–55 questions in exam format.
      - *Full Solutions:* every question solved, with the distractor identified.
    ],
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[A Three-Pass Reading Strategy]
      #v(4pt)
      - *Pass 1 — Understanding:* read notes and diagrams only. Redraw each diagram roughly; a parabola sketch you drew yourself will stay with you.
      - *Pass 2 — Execution:* cover the solutions, re-solve every worked example, then sit the drill under a timer.
      - *Pass 3 — Retention:* one week later, re-solve only the questions you missed and read the recap and flashcards.
      Separate the passes by at least two days. Spacing is what turns a worked example into a reflex.
    ],
  )
]

== Diagnostic Pre-Test (Fifteen Minutes)

Attempt all twelve questions before reading Chapter 1. They sample one idea from each chapter. Your score is a *baseline*, not a verdict.

#mcq(1, [Make $t$ the subject of $v = u + a t$.], [$t = (v - u)/a$], [$t = v - u a$], [$t = (v + u)/a$], [$t = a(v - u)$])

#mcq(2, [Find the remainder when $f(x) = x^3 - 2x + 5$ is divided by $(x - 2)$.], [$5$], [$13$], [$17$], [$9$])

#mcq(3, [Solve $x^2 - 5x + 6 = 0$.], [$x = -2$ or $x = -3$], [$x = 2$ or $x = 3$], [$x = -1$ or $x = -6$], [$x = 1$ or $x = 6$])

#mcq(4, [Solve the simultaneous equations $x + y = 7$ and $x - y = 3$.], [$x = 5, y = 2$], [$x = 2, y = 5$], [$x = 4, y = 3$], [$x = 6, y = 1$])

#mcq(5, [Solve $2x - 3 < 7$ for integer $x$.], [$x >= 5$], [$x < 5$], [$x > 5$], [$x <= 5$])

#mcq(6, [If $y$ varies inversely as $x$ and $y = 4$ when $x = 3$, find $y$ when $x = 6$.], [$2$], [$8$], [$12$], [$1.5$])

#mcq(7, [Find the 10th term of the A.P. $3, 7, 11, dots$], [$37$], [$39$], [$41$], [$43$])

#mcq(8, [Find the sum to infinity of $8 + 4 + 2 + dots$], [$16$], [$24$], [$12$], [$14$])

#mcq(9, [If $a * b = a^2 - b$, evaluate $3 * 5$.], [$14$], [$4$], [$19$], [$-4$])

#mcq(10, [Find the determinant of $mat(3, 2; 5, 4)$], [$12$], [$22$], [$2$], [$-2$])

#mcq(11, [Make $r$ the subject of $A = pi r^2$.], [$r = 2pi A$], [$r = A/(2pi)$], [$r = sqrt(A/pi)$], [$r = sqrt(A)/(2pi)$])

#mcq(12, [The roots of a quadratic are $2$ and $-5$. Find the equation.], [$x^2 - 7x + 10 = 0$], [$x^2 + 7x - 10 = 0$], [$x^2 + 3x - 10 = 0$], [$x^2 - 3x - 10 = 0$])

#answer-key-grid((
  "A", "D", "B", "A", "B", "A", "B", "A", "B", "C",
  "C", "C",
))

#trap-box("How to Read Your Diagnostic Score")[
  - *10–12 correct:* strong foundation. Skim the notes, then concentrate on the challenge-tier examples and the second mock.
  - *6–9 correct:* the normal starting point. Work the chapters in order and do not skip worked examples.
  - *0–5 correct:* you are not "bad at algebra" — you are missing bookkeeping habits. Start at Chapter 1, write every line, and never skip a step because it "looks obvious".
  Record the score and the date at the top of Appendix J's mastery tracker, and repeat the same twelve questions after Chapter 9.
]
