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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 2 OF 2],
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
      Volume 2: The National Economy — Output, Money, Trade and Development
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      National income and the circular flow, money, credit creation and the central
      bank, inflation and deflation, the budget and taxation, international trade and
      the balance of payments, development, population and unemployment, and the
      Nigerian economy in figures — with a worked calculation in every chapter.
      Thirty-five diagrams, thirty worked examples, and four hundred and forty
      practice questions, each with the reasoning behind the answer and a note on
      every option.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ The Accounts Are the Paper]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every macroeconomics question is a flow, a ratio or a balance. GDP, the
          multiplier, the credit multiplier, real against nominal, the budget
          balance, the current account — each has one formula and one sign
          convention, and this volume teaches both.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Every Figure Shown]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          The circular flow, the credit multiplier, the Laffer curve, tax incidence,
          comparative advantage, a tariff diagram, the balance of payments, the
          population pyramid and the weights of the Nigerian economy — drawn, then
          explained, then used in a question.
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
        JAMB CBT Master Study Series • Economics • Volume 2 of 2
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
  [*1*], [The Market], [Scarcity and opportunity cost, the PPC, demand and utility, supply and equilibrium, elasticity, production and cost, the four market structures], [about 23],
  [*2*], [The National Economy], [National income, money and banking, inflation, public finance and taxation, international trade and the balance of payments, development, population and unemployment], [about 17],
)

#v(6pt)

This volume carries the macroeconomics half of the paper — the half with the accounts.
It is also the half where the examiner can rely on arithmetic: real against nominal,
the multiplier, the credit multiplier, the budget balance, the current account and the
dependency ratio are calculated the same way every year, and a candidate who has
practised twenty of them cannot be surprised by the twenty-first.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "The forty questions of a typical Economics paper, chapter by chapter. The shaded blocks are the ones this volume teaches; the rest belong to Volume 1.", width: 100%)

#concept-box("Which chapter of this book answers which kind of doubt")[
  + *“I can recite the definition of GDP but I cannot compute it.”* Chapter 1 — the three methods, and the arithmetic that keeps them equal.
  + *“The multiplier formula will not stay in my head.”* Chapter 1, section 1.5. One formula, and the multiplier is the reciprocal of the leakage.
  + *“Money and banking is all names.”* Chapter 2. Six instruments, one direction of effect, and the credit multiplier is 1 ÷ the reserve ratio.
  + *“Tax incidence makes no sense.”* Chapter 3, section 3.4. Elasticity decides who pays, and the diagram shows why.
  + *“Trade diagrams look like micro diagrams.”* Chapter 4. They are: a tariff is a supply curve shifted up, and the boxes are the losses.
  + *“Development means growth, surely.”* Chapter 5, section 5.1 — the distinction the paper tests most often.
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
  [Core idea], [Output is produced, income is earned and spending is made — and the three are the same flow seen three ways],
  [The split], [Macroeconomics — the national economy, money, the budget, trade and development — is about 40 per cent of the paper, and it is this volume. Microeconomics is Volume 1],
  [The arithmetic], [Real against nominal, per capita income, the multiplier, the credit multiplier, the budget balance, tax incidence, the terms of trade and the dependency ratio],
  [The diagrams], [Circular flow, credit creation, the Phillips curve, the Laffer curve, tax incidence, comparative advantage, a tariff, the balance of payments, the population pyramid],
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
  [*1*], [National Income], [Output can be measured three ways, and all three must give the same number],
  [*2*], [Money and Banking], [Banks create credit out of deposits, and the central bank decides how much they may create],
  [*3*], [Public Finance and Taxation], [The budget is a choice, the tax is a burden, and elasticity decides who carries it],
  [*4*], [International Trade and Payments], [Specialise where the opportunity cost is lowest, then record every flow twice],
  [*5*], [Development, Population and Unemployment], [Growth is a number, development is a condition, and people are both the end and the means],
  [*6*], [The Nigerian Economy in Figures], [Which institution publishes what, and what the numbers in the paper actually mean],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The six chapters follow the order in which the paper builds its questions: the measurement of output first, then the money that prices it, then the government that taxes it, then the world it trades with, then the people it is for, and finally the Nigerian figures that make all of it concrete. A candidate who skips a chapter finds the next one half-written.]

#v(10pt)

#concept-box("A note on the syllabus, and on the year")[
  The UTME Economics syllabus has not changed its macroeconomic core in a decade: national income, money and banking, public finance, international trade, development and planning. What changes is the data — the inflation rate, the exchange rate, the price of crude oil, the size of the budget.

  Every figure in this book is either a definition, a formula, or a number invented inside a question. Where the paper quotes a Nigerian institution, the book names the institution and what it publishes; where the paper tests a rule, the rule is what is examined.
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
  [*1*], [National Income], [distinguish GDP from GNP, use all three methods, deflate a nominal figure, compute per capita income and the multiplier], [4],
  [*2*], [Money and Banking], [name the functions, compute the credit multiplier, list the central bank's instruments and say which way each moves the money supply], [3],
  [*3*], [Public Finance and Taxation], [read a budget's three positions, classify a tax, split the incidence and explain crowding out], [3],
  [*4*], [International Trade and Payments], [find a comparative advantage, draw a tariff, explain devaluation and read the two accounts], [3],
  [*5*], [Development, Population and Unemployment], [separate growth from development, compute the dependency and unemployment rates and classify an unemployment spell], [2],
  [*6*], [The Nigerian Economy in Figures], [match every institution to its publication, read the revenue-sharing formula and interpret the data the paper quotes], [2],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent papers. Chapters 1 to 4 hold thirteen of the seventeen macro questions between them: if time is short, those are the four to finish, and Chapters 5 and 6 are then read as the finishing school for the data questions.]

#v(6pt)

== The Moves That Carry the Macroeconomics Marks

#table(
  columns: (2.3fr, 0.3fr, 2.1fr, 0.3fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Real equals nominal divided by the price index], [1], [A tariff makes the consumer pay more and the government collect], [4],
  [GNP equals GDP plus net factor income], [1], [A quota restricts quantity; a tariff taxes it], [4],
  [Depreciation turns gross into net], [1], [Devaluation helps only if demand is elastic], [4],
  [Multiplier is 1 ÷ the marginal propensity to save], [1], [Current account plus capital account must balance], [4],
  [Leakages equal injections in equilibrium], [1], [Growth without development is the commonest trap], [5],
  [Credit multiplier is 1 ÷ the reserve ratio], [2], [Dependants over the working-age population], [5],
  [Buying securities expands the money supply], [2], [Unemployment ÷ labour force, not ÷ population], [5],
  [Incidence follows the more inelastic side], [3], [NBS publishes data, CBN runs money, FIRS collects tax], [6],
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
  + *Currency.* Naira is written ₦, and figures are given in naira, naira per unit, or billions of naira exactly as the question needs. Where a question is described as *invented*, the numbers are round on purpose.
  + *Real and nominal.* *Nominal* means at the prices of the year in question; *real* means at the prices of a chosen base year. The book never uses the words interchangeably, and neither does the examiner.
  + *Millions and billions.* A figure written ₦2bn is a billion naira, not a thousand million — the two are the same number, and the paper uses the short form.
  + *Percentages.* An inflation rate is a change in an index over twelve months. Reading index points as a rate is the commonest arithmetic error in the paper.
  + *Numbers.* Figures in the worked examples are chosen so the arithmetic is exact. If your answer is not one of the options, you have made an arithmetic slip, not chosen the wrong theory.
]

#v(6pt)

#trap-box("Four habits that decide the macroeconomics marks")[
  *1 · Decide which way the money moves.* Every monetary-policy question is one question: does this instrument put money into the system or take it out?

  *2 · Write the formula down.* Real against nominal, the multiplier, the credit multiplier, the dependency ratio — each becomes trivial once the formula is on the page.

  *3 · Check the base.* Unemployment is a share of the labour force, not of the population; per capita income is a share of the population, not of the labour force; inflation is a change in an index, not the index itself.

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
  [Appendices D–K], [Data file, formula sheet, glossary, planner, institutions, worked models, traps, playbook], [While working, then the last six weeks],
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
  [Basic concepts and definitions], [4], [3], [Volume 1, Chapter 1],
  [Demand, supply and price], [8], [6], [Volume 1, Chapters 2 and 3],
  [Elasticity], [4], [3], [Volume 1, Chapter 4; this volume, section 3.4],
  [Production and cost], [4], [3], [Volume 1, Chapter 5],
  [Market structures], [3], [2], [Volume 1, Chapter 6],
  [National income and money], [12], [9], [Chapters 1 to 3],
  [Development and data], [5], [4], [Chapters 5 and 6],
)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The blocks are mixed on the screen rather than separated, and the counts shift slightly from year to year. What does not shift is the arithmetic: forty questions, thirty minutes, forty-five seconds each, and no penalty for a wrong answer.]

#v(3pt)

#concept-box("The score that gets you in")[
  + *Forty questions, thirty minutes, no negative marking.* Four options, one right answer, and no penalty for a wrong one — so there is never a reason to leave a box empty.
  + *Aim above your course, not at it.* Cut-offs move. A candidate targeting 250 needs about 30 of 40 in Economics; a candidate targeting 300 needs about 35.
  + *Seventeen of the forty are macroeconomics or data questions.* They are the ones this volume makes certain, and most of them are arithmetic rather than recall.
]

#v(6pt)

#v(6pt)

== The Five Command Words

Every question in the paper asks you to do one of five things, and the verb tells you which. A candidate who reads the verb before the topic answers faster than one who reads the topic first.

#table(
  columns: (1.15fr, 2.0fr, 2.15fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The verb],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the option must be],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where the mark is lost],
  ),
  [*Define*], [a definition with no example attached], [choosing the option that illustrates rather than defines],
  [*Calculate*], [one number, with the unit in your head], [stopping at the first operation — the formula usually has two],
  [*Distinguish*], [the difference, not the two definitions], [writing both definitions and never naming the gap],
  [*Explain*], [a cause and a consequence], [describing the situation instead of accounting for it],
  [*Which is NOT*], [the odd one out], [answering the three that are true and forgetting the negative — underline the NOT before reading the options],
)

#pagebreak()

== The Syllabus, Covered

#text(size: 9.4pt)[Every topic on the UTME Economics syllabus appears in one of the two volumes. The table says where: a chapter number means this volume teaches it, and *Vol. 1* means the first volume does. Nothing is left out, and nothing is taught twice for the sake of filling a page.]

#v(3pt)

#[
  #set text(size: 8.3pt)
#table(
  columns: (2.15fr, 2.65fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Nature and scope of economics], [Vol. 1, Chapter 1],
  [Basic economic problems], [Vol. 1, Chapter 1],
  [Production and the factors of production], [Vol. 1, Chapter 1; Chapter 5],
  [Division of labour], [Vol. 1, Chapter 1],
  [Economic systems], [Vol. 1, Chapter 1],
  [Demand and supply], [Vol. 1, Chapters 2 and 3],
  [Elasticity], [Vol. 1, Chapter 4; this volume, section 3.4],
  [Consumer behaviour], [Vol. 1, Chapter 2],
  [Cost and revenue], [Vol. 1, Chapter 5],
  [Market structures], [Vol. 1, Chapter 6],
  [National income], [Chapter 1, in full],
  [Money and banking], [Chapter 2, in full],
  [Inflation and deflation], [Chapter 2, sections 2.4 and 2.5],
  [Public finance], [Chapter 3, sections 3.1 and 3.2],
  [Taxation], [Chapter 3, sections 3.3 and 3.4],
  [International trade], [Chapter 4, sections 4.1 to 4.3],
  [Balance of payments], [Chapter 4, sections 4.4 and 4.5],
  [Economic development and planning], [Chapter 5, sections 5.1 and 5.2],
  [Population], [Chapter 5, sections 5.2 and 5.3],
  [Labour market and unemployment], [Chapter 5, section 5.4],
  [The Nigerian economy], [Chapter 6, in full],
)
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[The two volumes are designed to be read in either order, but the microeconomics comes first for a reason: demand, supply and cost are the vocabulary in which the macroeconomics is written.]

#v(8pt)

== What the Syllabus Leaves Out

#text(size: 9.4pt)[Three things are deliberately outside the table above, and each of them costs marks every year.]

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *The arithmetic.* The syllabus says *national income*; the paper says *nominal GDP is ₦200bn and the index is 125 — find real GDP*. Every formula in Appendix F is a syllabus topic wearing its working clothes.
  + *The institutions.* The syllabus says *money and banking*; the paper asks which body publishes the consumer price index. Appendix I exists because a topic without its institution is only half answered.
  + *The Nigerian data.* The syllabus says *the Nigerian economy*; the paper supplies the figures and asks for the reading. Chapter 6 teaches the reading, not the numbers, because the numbers change every year and the reading does not.
]

#v(4pt)

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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • ECONOMICS VOLUME 2]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, two timed papers and eleven appendices, with the page numbers printed into this list.]

#v(5pt)

#let rows = toc-rows.filter(r => r.at(0) == 1 or not (
  r.at(1).starts-with("C.10") or r.at(1).starts-with("C.11") or r.at(1).starts-with("C.12")
  or r.at(1).starts-with("D.8") or r.at(1).starts-with("F.7")
  or r.at(1).starts-with("I.5") or r.at(1).starts-with("J.13")
  or r.at(1).contains("Answer Key") or r.at(1).contains("Complete Solutions")
  or r.at(1).contains("Answer Sheet") or r.at(1).contains("How This Paper Is Marked")
  or r.at(1).starts-with("Trap ") or r.at(1).starts-with("Section ")
))

#toc-two-column(rows, cols: 2, compact: true)
