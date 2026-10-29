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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 4 OF 4],
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
      Volume 4: Calculus, Statistics & Probability
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Complete, In-Depth Mastery of JAMB Sections IV and V — Limits, Differentiation and Its Applications, Integration and Area Under Curves, Representation of Data, Measures of Location and Dispersion, Permutations, Combinations and Probability.
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
          Every Section IV and V subtopic ranked by UTME frequency — the differentiation rules, the area template, the grouped-mean table and the probability tree that appear every single year.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#34D399"))[◆ 45 Labelled Diagrams]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          Limit diagrams, tangent construction, curve features, area strips, histograms, ogives, trees and Venn diagrams — all drawn to scale.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#60A5FA"))[▸ Line-by-Line Calculus]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          140+ graded worked examples: every derivative, every integral, every average and every probability shown line by line — never merely stated.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#F87171"))[✓ 480 Practice Qs & Full Solutions]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.1pt, fill: rgb("#CBD5E1"))[
          42+ UTME-style drill questions per chapter, two full CBT mocks, timed drills and a 120-question bank — every option explained.
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
          Chapters 1 – 10 + Two Full CBT Mocks
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
    fill: (x, y) => if y == 0 { jamb-navy } else if y == 4 { jamb-mint } else { white },
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

    [Vol. 3],
    [*Geometry, Mensuration & Trigonometry*\
      _(Section III Complete)_],
    [Lines & Angles, Triangles & Polygons, Circle Theorems, Constructions & Loci, Plane Mensuration, Mensuration of Solids, Longitude & Latitude, Coordinate Geometry, Trigonometric Ratios & Graphs, Bearings and the Sine & Cosine Rules.],
    [8–10 Qs\
      _(\~22%)_],

    [*Vol. 4*\
      *(This Book)*],
    [*Calculus, Statistics & Probability*\
      _(Sections IV & V Complete)_],
    [Limits, Differentiation, Rates of Change, Maxima & Minima, Integration & Area, Data Representation, Mean/Median/Mode, Ogive, Range/Mean Deviation/Variance/SD, Permutations, Combinations & Probability.],
    [*9–11 Qs*\
      _(\~25%)_],
  )
]

#v(8pt)

== Why the Last Twenty Marks Live Here — and How to Take Them

Sections IV and V of the UTME Mathematics syllabus — Calculus on one side, Statistics and Probability on the other — supply nine to eleven of the forty questions every year. They are also the two sections candidates *avoid* in class, which is exactly why they are the cheapest marks in the paper: the competition is thinner here than anywhere else.

The good news is that the apparatus is small and completely finite:

- three limit habits, and only one of them (the $0/0$ factorisation) is examined regularly;
- six differentiation rules, of which the power rule and the function-of-a-function rule carry most marks;
- two integration facts — one power rule and one definite-integral subtraction;
- four statistical measures of location and four of dispersion, each with a single formula;
- three counting formulas and three probability laws.

That is the entire machine. Every Section IV and V question ever set in UTME is a recombination of those pieces. This volume prints each rule with its *derivation, its diagram and the exact wording JAMB uses*, then drills the template.

#diagram-fig(
  "diagrams/utme_section_weight.svg",
  "Where the nine to eleven Section IV and V questions come from: typical annual question allocation by chapter, based on the recurring structure of UTME Mathematics papers.",
)

== The Three Habits That Decide Your Calculus Score

Calculus questions are decided by whether you *differentiate correctly once* and *substitute carefully*. The algebra is short; the slips are long.

#block(breakable: false)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    block(width: 100%, fill: jamb-mint, stroke: 0.8pt + jamb-green, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[★ The 55-Second Calculus Rule]
      #v(4pt)
      In the real CBT hall you have about *55–60 seconds per Mathematics question*.
      - *Name the operation (5 s):* is it a derivative, an integral, a limit or a substitution?
      - *Write the rule (10 s):* the power rule, the product rule, the quotient rule — say which.
      - *Differentiate or integrate (25 s):* one line, no tidying yet.
      - *Substitute and check (15 s):* put the number in, and check the sign.
    ],
    block(width: 100%, fill: trap-bg, stroke: 0.8pt + trap-red, radius: 7pt, inset: 11pt)[
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: trap-red)[◆ How JAMB Writes Calculus Distractors]
      #v(4pt)
      - *The forgotten coefficient:* $3x^2$ offered for the derivative of $x^3$ where $3x^2$ should be $6x$ — check the multiplier.
      - *The forgotten constant:* $+c$ left out, or $+c$ added to a definite integral.
      - *The off-by-one power:* $x^3/3$ offered where $x^4/4$ is correct.
      - *The unflipped sign:* $-2x$ offered where $+2x$ follows from differentiating a negative term.
      - *The un-split integral:* a definite integral taken across a root, giving a small answer where a large one is required.
    ],
  )
]

== Three Warm-Up Calculations

Every Section IV or V paper begins with something small. Do these three now, without a calculator, and notice how little there is to them.

#v(3pt)
#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[1. The limit]
  #v(2pt)
  Evaluate $lim_(x -> 2) (x^2 - 4)/(x - 2)$.
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-green)[Factorise: $(x - 2)(x + 2) slash (x - 2) = x + 2$, so the limit is $4$. One cancellation.]
]
#v(3pt)
#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[2. The derivative]
  #v(2pt)
  Differentiate $y = 5x^3 - 2x$.
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-green)[$dif y \/ dif x = 15x^2 - 2$. Multiply each power by the coefficient, then drop the power by one.]
]
#v(3pt)
#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[3. The average]
  #v(2pt)
  Find the mean of $4$, $7$, $9$, $10$ and $15$.
  #v(2pt)
  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-green)[$45 slash 5 = 9$. Add, then divide by how many numbers there are.]
]

#text(font: "DejaVu Sans", size: 9pt, fill: jamb-muted)[
  That is the shape of a Section IV question: a rule you know, applied once. The chapters that follow add the vocabulary and the diagrams, not the difficulty.
]

#pagebreak()

// ============================================================================
// PAGE: FORMULA WALL
// ============================================================================
#current-chapter.update("The Formula Wall")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[The Formula Wall]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    Every formula in Sections IV and V — the whole volume, on two pages. Learn this wall and you have the raw material for every question.
  ]
]

#v(6pt)

== Calculus

#table(
  columns: (1.5fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Operation],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Rule],

  [Limit — direct substitution], [$lim_(x -> a) f(x) = f(a)$ if $f$ is defined at $a$],
  [Limit — the $0/0$ case], [Factorise and cancel, then substitute],
  [Limit — one-sided], [The limit exists only if both sides agree],
  [Derivative from first principles], [$f'(x) = lim_(h -> 0) (f(x + h) - f(x))/h$],
  [Power rule], [$dif x^n / dif x = n x^(n-1)$],
  [Constant multiple], [$dif (k f) / dif x = k f'$],
  [Product rule], [$dif (u v) / dif x = u' v + u v'$],
  [Quotient rule], [$dif (u slash v) / dif x = (u' v - u v')/v^2$],
  [Chain rule], [$dif (a x + b)^n / dif x = n a (a x + b)^(n-1)$],
  [Second derivative], [$f''(x)$ decides maximum or minimum],
  [Turning points], [Solve $f'(x) = 0$],
  [Rate of change], [$dif V \/ dif t = (dif V \/ dif r)(dif r \/ dif t)$],
  [Integral — power rule], [$integral x^n dif x = x^(n+1)/(n+1) + c$, $n != -1$],
  [Definite integral], [$integral_a^b f(x) dif x = F(b) - F(a)$],
  [Area under a curve], [$A = integral_a^b y dif x$],
  [Area between curves], [$A = integral_a^b ("upper" - "lower") dif x$],
  [Motion], [$v = dif s \/ dif t$, $a = dif v \/ dif t$, $s = integral v dif t$],
)

== Statistics

#table(
  columns: (1.5fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Quantity],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Formula],

  [Mean of raw data], [$overline(x) = (sum x)/n$],
  [Mean of grouped data], [$overline(x) = (sum f x)/(sum f)$],
  [Median — raw data], [Middle value of the ordered list],
  [Median — grouped data], [$L + ((N/2 - F)/f_m) times h$],
  [Mode], [The value (or class) with the highest frequency],
  [Quartiles], [$Q_1$ at $N/4$, $Q_3$ at $3N/4$ on the cumulative curve],
  [Range], [$"highest" - "lowest"$],
  [Mean deviation], [$(sum |x - overline(x)|)/n$],
  [Variance — raw], [$sigma^2 = (sum (x - overline(x))^2)/n$],
  [Variance — grouped], [$sigma^2 = (sum f x^2)/(sum f) - overline(x)^2$],
  [Standard deviation], [$sigma = sqrt(sigma^2)$],
  [Coefficient of variation], [$(sigma slash overline(x)) times 100$ percent],
  [Permutations], [$""^n P_r = n!/(n - r)!$],
  [Combinations], [$""^n C_r = n!/(r!(n - r)!)$],
  [Probability], [$P(A) = "favourable outcomes" slash "total outcomes"$],
  [Addition rule], [$P(A union B) = P(A) + P(B) - P(A inter B)$],
  [Multiplication rule], [$P(A inter B) = P(A) times P(B)$ for independent events],
  [Complement], [$P("not" A) = 1 - P(A)$],
)

#trap-box("The two lines that win the most marks")[
  *One.* The definite integral is a subtraction: $F("upper") - F("lower")$, never the reverse. Reversing the limits flips the sign.

  *Two.* A probability is a fraction of a total: if your answer is above $1$, you have added where you should have multiplied, or counted an outcome twice.
]

#pagebreak()

// ============================================================================
// PAGE: QUESTION TEMPLATES
// ============================================================================
#current-chapter.update("The Twelve Question Templates")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[The Twelve Question Templates That Reappear Every Year]
  #v(2pt)
  #text(font: "DejaVu Sans", size: 9.5pt, fill: rgb("#A7F3D0"))[
    JAMB does not invent new questions; it rewrites old ones with new numbers. These twelve templates cover the overwhelming majority of Section IV and V items. Learn to recognise the wording, and the method is already decided.
  ]
]

#v(6pt)

#table(
  columns: (0.35fr, 1.6fr, 1.7fr, 1.2fr),
  inset: 6pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How the question is worded],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The method in one line],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [1], [“Evaluate $lim_(x -> a) (f(x))/g(x)$ given that the top and bottom both vanish”], [Factorise, cancel, substitute], [1],
  [2], [“Find the derivative of a bracket raised to a power”], [Chain rule: multiply by the inner derivative], [2],
  [3], [“Find the gradient of the curve at the point where $x = a$”], [Differentiate, then substitute $x = a$], [2],
  [4], [“Find the values of $x$ for which the function is a maximum / minimum”], [$f'(x) = 0$, then test $f''$], [3],
  [5], [“A sphere's radius increases at 2 cm/s — find the rate of change of volume”], [Chain rule on $V = 4/3 pi r^3$], [3],
  [6], [“Evaluate $integral (a x^2 + b x + c) dif x$”], [Integrate term by term, add $+ c$], [4],
  [7], [“Find the area bounded by the curve, the $x$-axis and two ordinates”], [Definite integral, then subtract], [5],
  [8], [“The table shows marks — find the mean / median / mode”], [Grouped formulas, midpoints first], [7],
  [9], [“Find the standard deviation of …”], [Variance, then square root], [8],
  [10], [“In how many ways can a committee of 3 be chosen from 8?”], [$""^n C_r$, order ignored], [9],
  [11], [“Two dice are thrown — find the probability that the sum is …”], [Count the 36 outcomes], [10],
  [12], [“Find the probability that at least one …”], [$1 - P("none")$], [10],
)

#pagebreak()

// ============================================================================
// PAGE: SYLLABUS MAPPING
// ============================================================================
#current-chapter.update("Official JAMB Syllabus Mapping")

== Official JAMB UTME Syllabus Mapping (Sections IV & V → Volume 4 Chapters)

#v(4pt)

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 8pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[What this mapping means in practice]
  #h(6pt)
  #text(font: "DejaVu Sans", size: 9.2pt)[
    Each objective is taught in its chapter, tested in that chapter's drill, then tested again in the appendices — *mixed*, as the CBT engine presents it.
  ]
]

#table(
  columns: (1.5fr, 2.1fr, 1.7fr, auto),
  inset: 6.5pt,
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus topic],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examinable objectives],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you must be able to do],
  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],

  [*1. Limits*], [Meaning of a limit; evaluating limits by substitution and by factorisation.], [(i) Evaluate simple limits; (ii) recognise when a limit does not exist.], [*Chapter 1*],

  [*2. Differentiation*], [Derivative from first principles; rules for powers, products, quotients and functions of a function.], [(i) Differentiate polynomials and composite expressions; (ii) find gradients.], [*Chapter 2*],

  [*3. Applications of Differentiation*], [Gradient, rate of change, maxima and minima, second derivative test.], [(i) Solve rate problems; (ii) locate and classify turning points.], [*Chapter 3*],

  [*4. Integration*], [Indefinite and definite integrals of polynomials; constant of integration.], [(i) Integrate polynomials; (ii) evaluate definite integrals.], [*Chapter 4*],

  [*5. Area and Motion*], [Area under a curve and between curves; displacement, velocity and acceleration.], [(i) Find bounded areas; (ii) relate velocity to distance.], [*Chapter 5*],

  [*6. Representation of Data*], [Frequency tables, bar charts, pie charts, histograms, frequency polygons and ogives.], [(i) Construct and read charts; (ii) read values from an ogive.], [*Chapter 6*],

  [*7. Measures of Location*], [Mean, median, mode, quartiles and percentiles for raw and grouped data.], [(i) Compute averages; (ii) estimate the median of grouped data.], [*Chapter 7*],

  [*8. Measures of Dispersion*], [Range, mean deviation, variance and standard deviation; grouped data.], [(i) Compute and interpret spread; (ii) compare two distributions.], [*Chapter 8*],

  [*9. Permutations and Combinations*], [Counting principles; arrangements of objects; selections.], [(i) Distinguish permutations from combinations; (ii) solve counting problems.], [*Chapter 9*],

  [*10. Probability*], [Sample space, events, addition and multiplication rules, complementary events.], [(i) Compute simple and compound probabilities; (ii) use tree diagrams.], [*Chapter 10*],
)

#pagebreak()

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#current-chapter.update("Table of Contents")

#block(
  width: 100%,
  fill: jamb-navy,
  radius: 8pt,
  inset: (x: 16pt, y: 12pt),
)[
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents — Volume 4: Calculus, Statistics & Probability]
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
// PAGE: HOW TO USE
// ============================================================================
#current-chapter.update("How to Use This Book & Diagnostic Pre-Test")

== How to Use This Book

This volume is a *course*, not a summary. Worked through properly it takes about six weeks; skimmed, it takes a weekend and teaches nothing. The structure of every chapter is identical, and each part has a job:

#table(
  columns: (1.2fr, 2.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Part],
  text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What it is for],

  [Syllabus Focus Radar], [The four to six objectives the chapter must deliver, with the traps marked],
  [Concept and formula boxes], [The rule, stated precisely, with the diagram that fixes it],
  [Worked examples], [Every line written out, graded Foundation → UTME Standard → JAMB Challenge],
  [Checklist], [One line per question wording — the fastest revision page in the book],
  [Recap card], [The chapter compressed to three bullets, for the last week],
  [Two-minute set], [Four questions, exactly as they will appear on the screen],
  [Drill], [40+ questions with a full key and a solution for every option],
)

#v(6pt)

#formula-box("The study loop that works")[
  + *Read* the chapter, writing nothing.
  + *Re-read* the worked examples with the solutions covered.
  + *Do* the drill timed, twenty questions at a time.
  + *Mark* against the key, and re-read the solution of every miss on the same day.
  + *Return* after one week and re-do only the misses.

  Anything less than 80 percent on a drill means the chapter is not finished.
]

== Diagnostic Pre-Test (Fifteen Minutes)

Twelve questions, one per syllabus area. Do them without notes and without a calculator; write your answers on a sheet of paper, then mark yourself against the key that follows.

#mcq(1, [Evaluate $lim_(x -> 3) (x^2 - 9)/(x - 3)$], [$0$], [$3$], [$6$], [does not exist])
#mcq(2, [Differentiate $y = 3x^4$ with respect to $x$.], [$12x^3$], [$3x^3$], [$4x^3$], [$12x^4$])
#mcq(3, [Find the gradient of $y = x^2 - 4x$ at the point where $x = 3$.], [$2$], [$6$], [$-2$], [$3$])
#mcq(4, [Evaluate $integral (6x^2 + 2) dif x$.], [$2x^3 + 2x + c$], [$12x + c$], [$6x^3 + 2x + c$], [$3x^3 + 2x + c$])
#mcq(5, [Evaluate $integral_0^2 3x^2 dif x$.], [$4$], [$8$], [$12$], [$24$])
#mcq(6, [Find the mean of $4$, $7$, $9$, $10$ and $15$.], [$9$], [$10$], [$8$], [$45$])
#mcq(7, [Find the median of $3$, $8$, $5$, $9$, $12$ and $7$.], [$7$], [$7.5$], [$8$], [$8.5$])
#mcq(8, [Find the mode of $2$, $4$, $4$, $5$, $6$, $4$ and $7$.], [$2$], [$4$], [$5$], [$7$])
#mcq(9, [Find the variance of $2$, $4$, $6$, $8$ and $10$.], [$4$], [$6$], [$8$], [$10$])
#mcq(10, [Evaluate $""^5 P_2$.], [$10$], [$20$], [$60$], [$120$])
#mcq(11, [Evaluate $""^5 C_2$.], [$10$], [$20$], [$5$], [$60$])
#mcq(12, [A card is drawn from a standard pack of $52$. Find the probability that it is a heart.], [$1/13$], [$1/4$], [$1/2$], [$4/13$])

#v(4pt)

#answer-key-grid(("C", "A", "A", "A", "B", "A", "B", "B", "C", "B", "A", "B"))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[How to read your score]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.4pt)[
    - *10–12 correct:* the rules are already in place. Work the chapters for polish, then go straight to Mock 1 and use the question map to find the two weak chapters.
    - *6–9 correct:* the normal starting point. Two chapters are weak and two are strong; group your mistakes by chapter and start with the weaker pair.
    - *0–5 correct:* nothing is broken — the rules have never been written down for you in one place. Start at Chapter 1 and do not skip a worked example.
  ]
]

#v(4pt)

#concept-box("What the twelve questions actually measure")[
  Question 1 is a limit; 2 and 3 are differentiation; 4 and 5 are integration; 6, 7 and 8 are the three averages; 9 is dispersion; 10 and 11 are counting; 12 is probability. A blank in any line points at exactly one chapter, which is why the score is only the start of the diagnosis — the *pattern* of blanks is the diagnosis.

  Write the date beside your score now. In eight weeks you will sit the same twelve questions again, and the difference between the two columns is the only evidence of progress that matters.
]
