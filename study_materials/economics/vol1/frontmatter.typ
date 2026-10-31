#import "template.typ": *
#import "_toc.typ": toc-rows

// Set before the cover, so the first inside page carries the right running head.
#current-chapter.update("Series Overview & UTME Strategy Guide")

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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 1 OF 2],
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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[ECONOMICS]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 1: The Market — Scarcity, Demand and Price
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Scarcity and choice, opportunity cost and the PPC, demand and utility, supply
      and equilibrium, elasticity, production and cost, and the four market
      structures — with a worked calculation on every page. Thirty-one diagrams,
      thirty worked examples, and four hundred and forty practice questions, each
      with the reasoning behind the answer and a note on every option.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ The Curve Is the Question]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Nearly half the Economics paper is drawn rather than described: a demand
          curve, a supply curve, a cost curve, an equilibrium. A candidate who can
          say which curve moves and which way has already answered the question.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Every Calculation Shown]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Price elasticity, income elasticity, total cost, break-even output, profit
          maximisation and the multiplier — each formula is taught, then used in a
          worked example, then tested in a drill item with the arithmetic in the
          solution.
        ]
      ],
    )

    #v(14mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Economics • Volume 1 of 2
      ],
      text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#34D399"))[
        2026 Edition
      ],
    )
  ]
]

// ============================================================================
// PAGE: THE SERIES MAP
// ============================================================================
#pagebreak()

= The Economics Series, and Where This Volume Sits

Economics is the commercial subject with the highest cut-off pressure: a candidate who
has chosen Accountancy, Business Administration or Banking and Finance usually needs
Economics, and the paper rewards exactly the thing that school rarely teaches — the
ability to read a relationship off a curve and a number off a formula. The series splits
the syllabus the way the syllabus itself does: the market in one volume, the national
economy in the other.

#v(4pt)

#table(
  columns: (0.5fr, 1.5fr, 2.4fr, 0.8fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it covers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
  ),
  [*1*], [The Market], [Scarcity and opportunity cost, the PPC, demand and utility, supply and equilibrium, elasticity, production and cost, the four market structures], [about 25],
  [*2*], [The National Economy], [National income, money and banking, inflation, public finance and taxation, international trade and the balance of payments, development, population and unemployment], [about 15],
)

#v(6pt)

This volume carries the microeconomics half of the paper — the half with the curves. It
is also the half where the arithmetic is fixed: elasticity, cost, revenue and profit are
calculated the same way every year, and a candidate who has practised twenty of them
cannot be surprised by the twenty-first.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "The forty questions of a typical Economics paper, chapter by chapter. The shaded blocks are the ones this volume teaches; the rest belong to Volume 2.", width: 100%)

#concept-box("Which chapter of this book answers which kind of doubt")[
  + *“I can define opportunity cost but I lose the marks.”* Chapter 1 — the definition is a sentence, and the question is almost always a calculation.
  + *“I cannot remember which way the curve moves.”* Chapter 2, then Chapter 3, and the four-step method in 3.3.
  + *“Elasticity questions frighten me.”* Chapter 4. There are three formulas and one sign convention, and the chapter is nineteen pages of nothing else.
  + *“I know the theory but my calculations are wrong.”* Chapter 5, then Appendix E (the formula sheet) and Appendix I (worked models).
]

// ============================================================================
// PAGE: THE SUBJECT AT A GLANCE
// ============================================================================

= The Subject at a Glance

#table(
  columns: (1.15fr, 2.6fr),
  inset: 4.6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Paper], [Economics, UTME — forty questions in thirty minutes],
  [Section], [Commerce and industry group; a compulsory subject for most business and social-science courses],
  [Marks], [Forty questions, one mark each; no negative marking; about 45 seconds a question],
  [Core idea], [Resources are scarce, so every choice has a cost, and price is the signal that coordinates the choices],
  [The split], [Microeconomics — the household, the firm and the market — is about 60 per cent of the paper. Macroeconomics is the other 40 per cent, and it is Volume 2],
  [The arithmetic], [Elasticity, cost, revenue, profit, break-even and the multiplier. Six formulas cover most of the calculation marks],
  [The diagrams], [Demand, supply, equilibrium, cost curves, revenue curves, the PPC and the four market structures. Every one of them is drawn in this volume],
)

#v(5pt)

#table(
  columns: (0.45fr, 2.1fr, 3.3fr),
  inset: 4.2pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[In one line],
  ),
  [*1*], [The Economic Problem], [Scarcity forces choice, choice has an opportunity cost, and the PPC draws the limit],
  [*2*], [Demand and Utility], [Price and quantity demanded move in opposite directions, and utility explains why],
  [*3*], [Supply and Equilibrium], [Supply answers demand at a price, and the market clears there],
  [*4*], [Elasticity], [How much quantity responds — and why the sign of income and cross elasticity names the good],
  [*5*], [Production and Cost], [Diminishing returns produce the cost curves; profit is maximised where MR equals MC],
  [*6*], [Market Structures], [Four structures, four sets of assumptions, and one question: how much power does the seller have?],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The six chapters follow the syllabus's own order, and they are cumulative: Chapter 3's equilibrium is Chapter 4's starting diagram, and Chapter 5's marginal cost is the supply curve of Chapter 3. A candidate who skips a chapter finds the next one half-written.]

#v(10pt)

#concept-box("A note on the syllabus, and on the year")[
  The UTME Economics syllabus has not changed its microeconomic core in a decade: scarcity and choice, demand and supply, elasticity, production and cost, market structures. What changes is the examples — the naira figures, the fuel subsidy, the price of a bag of rice.

  Every figure in this book is either a definition, a formula, or a number invented inside a question. Where the paper expects a Nigerian illustration, the book gives one; where the paper tests a rule, the rule is what is examined.
]

// ============================================================================
// PAGE: THE SIX CHAPTERS AT A GLANCE
// ============================================================================

= The Six Chapters at a Glance

#table(
  columns: (0.45fr, 1.45fr, 2.85fr, 0.55fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[By the end of it you can],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Qs],
  ),
  [*1*], [The Economic Problem], [define scarcity, choice and opportunity cost, compute a cost, read a PPC and name the reward of each factor], [4],
  [*2*], [Demand and Utility], [state the law, tell a movement from a shift, list the determinants and maximise utility], [5],
  [*3*], [Supply and Equilibrium], [shift the right curve in the right direction, find the new equilibrium and explain a price control], [5],
  [*4*], [Elasticity], [compute PED, PES, YED and XED, read the revenue test and name a good from the sign], [4],
  [*5*], [Production and Cost], [draw TP, AP and MP; compute every cost; find break-even, shut-down and maximum profit], [4],
  [*6*], [Market Structures], [test a market against the four assumptions and say what each structure does to price and output], [3],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent papers. Chapters 2 and 3 matter most if time is short: between them they hold the demand-and-supply questions, which are the most numerous block in the paper and the easiest to guarantee.]

#v(6pt)

== The Moves That Carry the Microeconomics Marks

#table(
  columns: (2.3fr, 0.3fr, 2.1fr, 0.3fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Own price moves you along the curve], [2], [A price floor above equilibrium makes a surplus], [3],
  [Anything else shifts the curve], [2], [A price ceiling below equilibrium makes a shortage], [3],
  [Opportunity cost is the next best, not the money], [1], [|PED| > 1 is elastic; the sign is ignored], [4],
  [The PPC bows out because resources differ], [1], [Income elasticity negative means inferior], [4],
  [Total utility peaks where marginal utility is zero], [2], [MC cuts AC at AC's minimum], [5],
  [A price taker has a horizontal demand curve], [6], [Profit is maximised where MR equals MC], [5],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The number in the narrow column is the chapter that teaches the move. A move you cannot place in its chapter is a move you will not recognise in the hall.]

// ============================================================================
// PAGE: HOW TO USE
// ============================================================================
#current-chapter.update("How to Use This Book")

== How to Use This Book

Every chapter is built in the same order, and the order is the method:

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Exam radar.* The syllabus objectives, the high-yield areas and the three traps that cost the most marks.
  + *The teaching sections.* The definition, the diagram, then the question the examiner writes from it.
  + *Five worked examples.* Two foundation, two UTME standard, one JAMB challenge — each ending in a *Check* line that tests the answer a second way.
  + *Recap card and “in one breath”.* The whole chapter on one page, and the same chapter in a paragraph you can recite.
  + *Two-minute set.* Four questions in the style of the CBT engine, with the key and a note on every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#concept-box("The conventions this book uses")[
  + *Currency.* Naira is written ₦. Where a question needs a unit price, it is given in naira per unit, and the answer carries the unit.
  + *Elasticity.* Price elasticity of demand is quoted as a positive number, because that is how the paper quotes it: *PED is 2* means *elastic*, and the sign convention is explained once in 4.1 and never used again.
  + *Curves.* “Shift” always means the whole curve moves; “movement” always means a slide along it. The book never uses the words interchangeably, and neither does the examiner.
  + *Marginal.* Anything called marginal is the change in the total from one more unit. If you can say *the change in* before the word, the definition is correct.
  + *Numbers.* Figures in the worked examples are chosen so the arithmetic is exact. If your answer is not one of the options, you have made an arithmetic slip, not chosen the wrong theory.
]

#v(6pt)

#trap-box("Four habits that decide the microeconomics marks")[
  *1 · Answer the diagram before the words.* Half the questions can be settled by *which curve, which way*, and only then by the option.

  *2 · Write the formula down.* Nearly every calculation question becomes trivial once the formula is on the page; nearly every wrong answer comes from a formula half-remembered.

  *3 · Check the sign and the direction.* *Falls*, *rises*, *increases*, *decreases* — the examiner changes one word and the answer changes with it.

  *4 · Never leave a blank.* There is no negative marking, and a quarter of the questions you guess will be right.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Where a section is marked with a green bar and the word RULE, it is a statement the examiner quotes back at you; where it is marked JAMB TRAP, it is the mistake the examiner is banking on.]

#v(8pt)

== Where Everything Is

The chapters are the teaching; the back half of the book is the practice and the reference.

#v(2pt)

#table(
  columns: (1.55fr, 2.55fr, 1.2fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[When to use it],
  ),
  [Chapters 1–6], [Five worked examples, a recap card, a four-question set and a forty-question drill per chapter], [First pass, then wherever a drill shows a gap],
  [Papers 1–2], [Two forty-question papers, timed at thirty minutes, with full solutions], [After Chapter 6, then a week later],
  [Appendices A–C], [Rapid-fire pairs, the 120-question bank, every key in one place], [Once the chapters are done],
  [Appendices D–K], [Graph file, formula sheet, glossary, planner, rules, worked models, traps, playbook], [While working, then the last six weeks],
)

#v(4pt)

#text(size: 9.6pt)[A note on order. Do not read the book from the first page to the last and then start the drills: the drills are the reading. Work a chapter, sit its drill the same week, and let the solutions send you back to the one section you skimmed. The papers exist to mix the chapters, because the examination mixes them.]

#v(6pt)

== The Paper, in Numbers

#table(
  columns: (1.9fr, 1.0fr, 1.1fr, 1.6fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Block],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where this volume covers it],
  ),
  [Basic concepts and definitions], [4], [2], [Chapter 1],
  [Demand, supply and price], [8], [6], [Chapters 2 and 3],
  [Elasticity], [4], [3], [Chapter 4],
  [Production and cost], [4], [3], [Chapter 5],
  [Market structures], [3], [2], [Chapter 6],
  [The national economy], [15], [12], [Volume 2],
  [Current affairs and data], [2], [2], [Both volumes, Appendix K],
)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The blocks are mixed on the screen rather than separated, and the counts shift slightly from year to year. What does not shift is the arithmetic: forty questions, thirty minutes, forty-five seconds each, and no penalty for a wrong answer.]

#v(3pt)

#concept-box("The score that gets you in")[
  + *Forty questions, thirty minutes, no negative marking.* Four options, one right answer, and no penalty for a wrong one — so there is never a reason to leave a box empty.
  + *Aim above your course, not at it.* Cut-offs move. A candidate targeting 250 needs about 30 of 40 in Economics; a candidate targeting 300 needs about 35.
  + *Twelve of the forty are calculation or diagram questions.* They are the ones that can be made certain, and this volume is where they are made certain.
]

#v(6pt)

== The Syllabus, Covered

#text(size: 9.4pt)[Every topic on the UTME Economics syllabus appears in one of the two volumes. The table says where: a chapter number means this volume teaches it, and *Vol. 2* means the second volume does. Nothing is left out, and nothing is taught twice for the sake of filling a page.]

#v(3pt)

#[
  #set text(size: 8.3pt)
#table(
  columns: (2.15fr, 2.65fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Nature and scope of economics], [Chapter 1, section 1.1],
  [Basic economic problems], [Chapter 1, sections 1.1 and 1.2],
  [Production and the factors of production], [Chapter 1, section 1.4; Chapter 5, sections 5.1 and 5.2],
  [Division of labour], [Chapter 1, section 1.4],
  [Economic systems], [Chapter 1, section 1.5],
  [Demand and supply], [Chapters 2 and 3, in full],
  [Elasticity], [Chapter 4, in full],
  [Consumer behaviour], [Chapter 2, sections 2.4 and 2.5],
  [Cost and revenue], [Chapter 5, sections 5.3 and 5.4],
  [Market structures], [Chapter 6, in full],
  [National income], [Vol. 2 — formulas in Appendix F.4],
  [Money and banking], [Vol. 2 — the credit multiplier in Appendix F.4],
  [Inflation and deflation], [Vol. 2 — the definitions in Chapters 1 and 3 of that volume],
  [Public finance], [Vol. 2 — the tax incidence in Chapter 3 of this volume],
  [Taxation], [Chapter 3, section 3.5, and Vol. 2],
  [International trade], [Vol. 2 — tariffs and the terms of trade],
  [Balance of payments], [Vol. 2 — the current and capital accounts],
  [Economic development and planning], [Vol. 2 — growth, development and the plan],
  [Population], [Vol. 2 — population structure and the dependency ratio],
  [Labour market and unemployment], [Chapter 3, section 3.5, and Vol. 2],
)
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[The two volumes are designed to be read in either order, but the microeconomics comes first for a reason: demand, supply and cost are the vocabulary in which the macroeconomics is written.]

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#current-chapter.update("Table of Contents")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Table of Contents]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 9pt,
  inset: 13pt,
)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • ECONOMICS VOLUME 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, each with five worked examples, a recap card and a two-minute set; two timed papers; and eleven appendices including the graph file and the formula sheet. Page numbers are printed into this list.]

#v(5pt)

#let rows = toc-rows.filter(r => r.at(0) == 1 or not (
  r.at(1).contains("Answer Key") or r.at(1).contains("Complete Solutions")
  or r.at(1).contains("Answer Sheet") or r.at(1).contains("How This Paper Is Marked")
  or r.at(1).starts-with("Trap ") or r.at(1).starts-with("Section ")
))

#toc-two-column(rows, cols: 2, compact: true)
