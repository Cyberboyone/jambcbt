#import "template.typ": *
#import "_toc.typ": toc-rows

#current-chapter.update("Series Overview & Accounting Strategy")

// ============================================================================
// COVER
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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 2],
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

    #text(font: "DejaVu Sans", size: 30pt, weight: "bold", fill: white)[FINANCIAL ACCOUNTING]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: The Factory, the Plan and the Missing Ledger
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Where the accounts leave the trader's shop: manufacturing accounts, the three
      elements of cost, job, batch and process costing, marginal costing and
      break-even, budgets and budgetary control, incomplete records reconstructed
      from a cash book, partnership admission, retirement and dissolution, and the
      public-sector and computerised systems that keep the same double entry.
      Seventeen diagrams, eight chapter recaps, thirty-two worked examples, and
      five hundred and twenty solved questions, each with a full explanation.
    ]

    #v(4mm)
  ]

  #v(2mm)
  #image("diagrams/cover_banner.svg", width: 100%)

  #v(4mm)
  #pad(x: 20mm)[
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 10pt,
      [
        #set text(hyphenate: false)
        #set par(justify: false)
        #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#34D399"))[CHAPTERS 1 TO 3]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#CBD5E1"))[manufacturing, materials, labour, overheads, job, batch and process costing]
      ],
      [
        #set text(hyphenate: false)
        #set par(justify: false)
        #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#34D399"))[CHAPTERS 4 TO 6]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#CBD5E1"))[marginal costing, break-even, budgets, cash budgets, incomplete records]
      ],
      [
        #set text(hyphenate: false)
        #set par(justify: false)
        #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#34D399"))[CHAPTERS 7 AND 8]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#CBD5E1"))[admission, retirement, dissolution, public funds and computerised books]
      ],
    )
    #v(6mm)
    #text(font: "DejaVu Sans", size: 8.4pt, fill: rgb("#64748B"))[
      Every figure in this volume was computed twice, once by the account and once by the
      statement that depends on it.
    ]

    #v(10mm)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr),
      column-gutter: 6pt,
      [
        #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: rgb("#34D399"))[8] \
        #text(font: "DejaVu Sans", size: 7.6pt, fill: rgb("#94A3B8"))[chapters]
      ],
      [
        #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: rgb("#34D399"))[17] \
        #text(font: "DejaVu Sans", size: 7.6pt, fill: rgb("#94A3B8"))[diagrams]
      ],
      [
        #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: rgb("#34D399"))[32] \
        #text(font: "DejaVu Sans", size: 7.6pt, fill: rgb("#94A3B8"))[worked examples]
      ],
      [
        #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: rgb("#34D399"))[520] \
        #text(font: "DejaVu Sans", size: 7.6pt, fill: rgb("#94A3B8"))[solved questions]
      ],
      [
        #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: rgb("#34D399"))[2] \
        #text(font: "DejaVu Sans", size: 7.6pt, fill: rgb("#94A3B8"))[timed papers]
      ],
    )

    #v(6mm)
    #line(length: 100%, stroke: 0.8pt + rgb("#1E3A5F"))
    #v(3mm)
    #text(font: "DejaVu Sans", size: 7.8pt, fill: rgb("#64748B"))[
      JAMB CBT MASTER SERIES · FINANCIAL ACCOUNTING · VOLUME 2 · FIRST EDITION
    ]
  ]
]

// ============================================================================
// SERIES OVERVIEW
// ============================================================================
#pagebreak()

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[THE SERIES]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white)[The Series, and Where This Volume Sits]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.2pt, fill: rgb("#CBD5E1"))[
    Nine subjects, one method, and one promise: every question answered, and every
    answer explained.
  ]
]

#v(6pt)

#text(size: 9.6pt)[The JAMB CBT Master Study Series covers the subjects that decide a science or commercial candidate's aggregate. Each volume is written to be worked through rather than read: a chapter opens with what the syllabus asks, teaches the idea in numbered sections with a figure where the idea has a shape, then makes you answer — four worked questions in rising difficulty, a two-minute set, and a forty-question drill with a written solution for every item.]

#v(4pt)

#table(
  columns: (1.35fr, 0.5fr, 2.35fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Subject],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Vols.],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What the volumes do],
  ),
  [Use of English], [3], [comprehension, lexis and structure, oral forms and the essay],
  [Mathematics], [4], [number, algebra, geometry, trigonometry, calculus, statistics],
  [Physics], [4], [mechanics, waves and optics, electricity and modern physics],
  [Chemistry], [4], [atomic structure, bonding, organic, physical and inorganic chemistry],
  [Biology], [3], [cell biology, plant and animal physiology, ecology and genetics],
  [Economics], [2], [the market, then the national economy],
  [Government], [1], [concepts, institutions, and the Nigerian state],
  [Literature in English], [3], [the principles, the drama and prose, the poems],
  [Commerce], [1], [the business world, trade units and the aids to trade],
  [*Financial Accounting*], [*2*], [*volume 1 the books; this volume the factory, the plan and the missing ledger*],
)

#v(5pt)

#concept-box("What changes in Volume 2")[
  + *The subject leaves the ledger.* Volume 1 asked what a transaction does to an account. This volume asks what a *cost* is, which product it belongs to, and what it will be next year — questions that are answered with schedules rather than with a trial balance.
  + *Formats matter more, not less.* A manufacturing account, a process account, a cash budget and a statement of affairs each have a fixed shape, and a mark is lost for every line in the wrong place even when the arithmetic is right.
  + *The arithmetic is still checkable.* Cost of production reconciles to cost of goods sold; a cash budget's closing balance becomes next month's opening balance; a statement of affairs' closing capital agrees with the profit computed the other way.
]

// ============================================================================
== The Eight Chapters, and What Each One Is For

#table(
  columns: (0.4fr, 1.5fr, 2.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question it answers],
  ),
  [*1*], [Manufacturing Accounts], [What does it cost to *make* the goods, as distinct from what it costs to buy them?],
  [*2*], [Materials, Labour and Overheads], [Which cost belongs to which product, and how is a stock of material priced as it moves?],
  [*3*], [Job, Batch and Process Costing], [How is a cost collected when the product is one order, one batch, or a stream of identical units?],
  [*4*], [Marginal Costing and Break-Even], [How many units must be sold before the firm is out of the wood, and what does one more unit contribute?],
  [*5*], [Budgeting and Budgetary Control], [How does a firm plan a year in figures — and why can a profitable plan still run out of cash?],
  [*6*], [Incomplete Records], [The ledger is lost. How is the profit reconstructed from a cash book and a list of debts?],
  [*7*], [Partnership Changes], [What happens to the accounts when a partner joins, retires, or the firm is wound up?],
  [*8*], [Public Sector and Computerised Accounting], [How does a government account for voted money, and what does a computer change about the books?],
)

// ============================================================================
== What an Accounting Chapter Contains

#table(
  columns: (1.5fr, 3.0fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does],
  ),
  [*The opener*], [the syllabus reference, the weight the topic carries in the paper, and the one sentence that names the chapter's idea],
  [*The exam radar*], [the objectives in the syllabus's own words, the high-yield points, and the four slips the examiner sees most],
  [*The sections*], [the teaching, in numbered sections, with a table for every classification and a figure for every shape],
  [*The rule boxes*], [the format of an account, the double-entry rule, the formula — printed so that it can be copied and learned],
  [*Four worked questions*], [FOUNDATION, UTME STANDARD and JAMB CHALLENGE, each showing the elimination and the arithmetic in full],
  [*The trap box*], [the wrong option, in the words an option would use, and why it is wrong],
  [*The recap card*], [four lines you can photograph and revise in a queue],
  [*The two-minute set*], [four questions with a key and a note on each answer],
  [*The drill*], [forty questions with a full key and a written solution for every one],
)

// ============================================================================
== How to Use This Book

#text(size: 9.6pt)[Volume 1 taught the language; this volume uses it to answer questions that a shopkeeper never has to ask. A manufacturer wants to know what a unit costs. A manager wants to know how many units pay the rent. A partnership wants to know what a retiring partner is owed. An auditor wants to know whether a set of books that was never kept can still be trusted. Every one of those is an examination question, and every one is answered here with a schedule you can draw.]

#v(4pt)

#table(
  columns: (1.25fr, 2.6fr, 0.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If you have],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[And do],
  ),
  [three months], [every chapter in order], [one chapter a week, its drill the next day, one paper a month],
  [six weeks], [chapters 1 to 4 first, then 5 to 8], [two chapters a week; both papers in the last fortnight],
  [three weeks], [the recap cards and Appendix D], [one paper every four days, marked and solved],
  [one week], [Appendix A and Appendix H], [the rapid-fire pairs daily; two papers, timed],
)

#v(3pt)

#shortcut-box("The one habit that separates a good Accounting score from a poor one")[
  After every worked example, close the book and *write the account yourself*, from the
  first line to the balance carried down. Accounting is a hand skill: a format you have
  only read is a format you will misremember under a clock.
]

// ============================================================================
== Where Everything Is

#table(
  columns: (1.25fr, 2.6fr, 0.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Page],
  ),
  [Chapter 1], [the manufacturing account, prime cost, production cost and cost of goods sold], [8],
  [Chapter 2], [stock valuation, labour records, overhead apportionment and absorption], [23],
  [Chapter 3], [job cards, batch costs, process accounts, normal and abnormal loss], [38],
  [Chapter 4], [contribution, break-even, the margin of safety and the profit target], [52],
  [Chapter 5], [functional budgets, the cash budget, flexible budgets and variances], [66],
  [Chapter 6], [statement of affairs, the margin method, and reconstructed sales and purchases], [81],
  [Chapter 7], [admission, retirement, dissolution and the realisation account], [94],
  [Chapter 8], [vote accounts, fund accounting, and the computerised accounting cycle], [109],
  [Papers], [two full forty-question mock papers, each with a key and a solution on every question], [123],
  [Appendix A], [sixty rapid-fire recall pairs], [142],
  [Appendix B], [the 120-question master bank], [145],
  [Appendix C], [every key in the volume, with score bands], [165],
  [Appendix D], [the glossary, A to Z], [171],
  [Appendix E], [the classification and formula tables], [174],
  [Appendix F], [eight model answers beside the half-answer they replace], [177],
  [Appendix G], [the revision plan], [181],
  [Appendix H], [twenty-five traps, in the paper's own words], [184],
  [Appendix I], [the exam-day playbook], [188],
)

#text(size: 9.2pt)[The page numbers above are taken from this printing. The Contents page that follows is generated from the finished PDF at build time, so it gives the exact page of every heading and sub-heading, including the ones this table leaves out.]

// ============================================================================
== The Paper, in Numbers

#table(
  columns: (1.6fr, 0.9fr, 2.3fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Type of question],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[In 40],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it demands],
  ),
  [Calculation], [about 16], [prime cost, cost per unit, break-even, a budgeted balance, revised profit],
  [Definition], [about 8], [the vocabulary: contribution, absorption, normal loss, vote, fund],
  [Classification], [about 8], [which cost, which account, which budget, which class of fund],
  [Format], [about 4], [the order of the lines in a manufacturing account, a process account or a cash budget],
  [Theory], [about 4], [why a cost is fixed or variable; why incomplete records can still be audited],
)

#v(4pt)

#text(size: 9.4pt)[One mark for each, and no negative marking. In this paper the calculation is worth more marks than in Volume 1 and takes longer, so the discipline changes: a candidate who can write the format of a manufacturing account in twenty seconds has four minutes left for the arithmetic, and a candidate who cannot has neither.]

#v(4pt)

#trap-box("The three-minute trap")[
  A single process account can absorb five minutes if you let it. Every calculation in
  this book is designed to be done in ninety seconds *once the skeleton is on the page*.
  Draw the account first — two lines for the debit side, two for the credit side — and
  the figures fall into place. If the skeleton is not drawn within twenty seconds, you
  are not doing the question; you are remembering it.
]

// ============================================================================
== The Syllabus, Covered

#table(
  columns: (1.85fr, 1.15fr, 1.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Syllabus area],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Covered in],
  ),
  [Manufacturing accounts], [1], [1.1 to 1.5],
  [Cost accounting: materials and stock], [2], [2.1 and 2.2],
  [Cost accounting: labour and overheads], [2], [2.3 to 2.5],
  [Job, batch and contract costing], [3], [3.1 and 3.2],
  [Process costing, losses and gains], [3], [3.3 to 3.5],
  [Marginal costing and contribution], [4], [4.1 and 4.2],
  [Break-even analysis and the margin of safety], [4], [4.3 to 4.5],
  [Budgeting and budgetary control], [5], [5.1 to 5.3],
  [The cash budget and flexible budgets], [5], [5.4 and 5.5],
  [Incomplete records and single entry], [6], [6.1 to 6.4],
  [Partnership admission, retirement and dissolution], [7], [7.1 to 7.4],
  [Public-sector accounting], [8], [8.1 to 8.2],
  [Computerised accounting systems], [8], [8.3 and 8.4],
  [Interpretation of accounts], [4 and Appendix E], [4.5 and E.5],
)

#v(4pt)

#text(size: 9.2pt)[Every syllabus line is taught in a numbered section, examined in the chapter drill, and revised in Appendix A. The ground Volume 1 laid — the equation, the ledger, the trial balance, control accounts and the final accounts of a sole trader — is assumed here without apology, and the places where it is needed are named in the text.]

#v(5pt)

== The Three Difficulty Labels

#table(
  columns: (1.1fr, 2.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Label],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it asks of you],
  ),
  [*FOUNDATION*], [a definition, one line of a schedule, or one step of arithmetic — the items a prepared candidate should never miss],
  [*UTME STANDARD*], [the paper's own difficulty: a short computation, a classification, or one adjustment inside a format],
  [*JAMB CHALLENGE*], [two steps and a trap: a normal loss and an abnormal gain, a break-even and a target profit, a cash budget with a lagged debtor collection],
)

#v(4pt)

#text(size: 9.2pt)[The labels appear on the worked examples only, not on the drills, because a drill item carries its own difficulty and the paper will not tell you which is which. Work each label in order and do not skip the FOUNDATION example because it looks too easy: in a forty-question paper, roughly half the items are FOUNDATION, and they are the half that a candidate who has chased the hard questions loses.]

// ============================================================================
// CONTENTS
// ============================================================================
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Table of Contents]]

#text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: jamb-navy)[Table of Contents]

#v(4pt)

#text(size: 9.0pt, fill: jamb-muted)[Every chapter, paper and appendix, with the page on which it begins. The numbers are generated from the finished PDF, so they are exact.]

#v(6pt)

#toc-two-column(toc-rows, cols: 2, compact: true)
