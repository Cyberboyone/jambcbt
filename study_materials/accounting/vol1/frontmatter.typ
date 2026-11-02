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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 1],
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
      Volume 1: The Books, the Balances and the Statements
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      From the first transaction to the final statement: the concepts, the accounting
      equation, the books of original entry, the ledger and trial balance, control
      accounts and bank reconciliation, the sole trader's final accounts with every
      adjustment, the correction of errors, partnerships, and company and
      not-for-profit accounts. Seventeen diagrams, eight chapter recaps, thirty-two
      worked examples, and five hundred and twenty solved questions, each with a full
      explanation.
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
        #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#34D399"))[CHAPTERS 1 TO 3]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#CBD5E1"))[concepts, the equation, documents, journals, trial balance]
      ],
      [
        #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#34D399"))[CHAPTERS 4 TO 6]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#CBD5E1"))[control accounts, reconciliation, final accounts, errors, suspense]
      ],
      [
        #text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#34D399"))[CHAPTERS 7 AND 8]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#CBD5E1"))[partnership appropriation, companies, not-for-profit accounts]
      ],
    )
    #v(6mm)
    #text(font: "DejaVu Sans", size: 8.4pt, fill: rgb("#64748B"))[
      Every figure in this volume was computed twice, once by the account and once by the
      statement that depends on it.
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
  #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white)[The Series, and Where Accounting Sits]
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
  [*Financial Accounting*], [1], [*this volume: the books, the balances and the statements*],
)

#v(5pt)

#concept-box("Why accounting is different")[
  + *It is a language before it is a subject.* Debit, credit, asset, liability, accrual and provision are words with exact meanings, and an option that uses one of them loosely is the wrong option.
  + *Every mark is checkable.* A balance sheet that does not balance is wrong, and you can see it before the examiner does.
  + *The paper is arithmetic with a vocabulary.* Roughly half of a UTME Accounting paper is a calculation and half is a definition, a classification or a document.
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
  [*1*], [The Nature and Scope of Accounting], [What is accounting for, who reads it, and which rules govern how it is done?],
  [*2*], [The Accounting Equation and Double Entry], [Why does every transaction have two sides, and which side is the debit?],
  [*3*], [Documents, Journals and the Trial Balance], [How does a piece of paper become a balance in a book, and how do we know the books agree?],
  [*4*], [Control Accounts and Bank Reconciliation], [How do we control hundreds of debtors, and why does the bank statement disagree with our cash book?],
  [*5*], [Final Accounts of a Sole Trader], [How do we turn a trial balance into a trading account, a profit and loss account and a balance sheet?],
  [*6*], [Correction of Errors and Suspense], [The trial balance agrees — so why is the profit still wrong?],
  [*7*], [Partnership Accounts], [How is profit shared when there are two or more owners, and what happens when a partner joins or leaves?],
  [*8*], [Company Accounts and Not-for-Profits], [How does a company's capital differ from a charity's fund, and how is each reported?],
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

#text(size: 9.6pt)[Commerce rewards reading; accounting rewards writing. The candidates who fail this paper do not fail because they never saw a trial balance — they fail because they never balanced one with a pencil in their hand. So the book is built around the pencil.]

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
  [six weeks], [chapters 1 to 5 first, then 6 to 8], [two chapters a week; both papers in the last fortnight],
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
  [Chapter 1], [what accounting is, its users, its concepts and its branches], [9],
  [Chapter 2], [the equation, double entry, the rules and balancing off], [23],
  [Chapter 3], [source documents, the five journals, the ledger and the trial balance], [36],
  [Chapter 4], [control accounts, the cash book, and bank reconciliation], [48],
  [Chapter 5], [trading, profit and loss, the balance sheet and the six adjustments], [60],
  [Chapter 6], [the six errors, the journal corrections and the suspense account], [75],
  [Chapter 7], [the deed, the appropriation account, capital and current accounts], [88],
  [Chapter 8], [shares and debentures, appropriation, and not-for-profit accounts], [100],
  [Papers], [two full forty-question mock papers, each with a key and a solution on every question], [113],
  [Appendix A], [sixty rapid-fire recall pairs], [131],
  [Appendix B], [the 120-question master bank], [134],
  [Appendix C], [every key in the volume, with score bands], [154],
  [Appendix D], [the glossary, A to Z], [160],
  [Appendix E], [the classification tables], [164],
  [Appendix F], [eight model answers beside the half-answer they replace], [168],
  [Appendix G], [the revision plan], [173],
  [Appendix H], [twenty-five traps, in the paper's own words], [176],
  [Appendix I], [the exam-day playbook], [180],
)

#text(size: 9.2pt)[The page numbers above are taken from this printing. The Contents page that follows is generated from the finished PDF at build time, so it gives the exact page of every heading and sub-heading, including the ones this table leaves out.]

// ============================================================================
== The Paper, in Numbers

#table(
  columns: (1.5fr, 0.8fr, 2.2fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Type of question],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[In 40],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it demands],
  ),
  [Calculation], [about 16], [a figure: cost of sales, gross profit, a balance, a share of profit],
  [Definition], [about 8], [the vocabulary, in the paper's own words],
  [Classification], [about 8], [which account, which statement, which side, which class],
  [Format], [about 4], [the order of the lines in an account or a statement],
  [Theory of accounting], [about 4], [concepts, conventions, users and the framework],
)

#v(4pt)

#text(size: 9.4pt)[One mark for each. There is no negative marking, so an empty box is a certain zero and a considered guess is a one-in-four chance. The calculation is where the time goes, and the definition is where the marks are cheapest.]

#v(4pt)

#trap-box("The three-minute trap")[
  A single account question can absorb five minutes if you let it. Every calculation in
  this book is designed to be done in ninety seconds with the format written down first.
  If the format is not on the page within twenty seconds, you are not doing the question
  — you are remembering it.
]

// ============================================================================
== The Syllabus, Covered

#table(
  columns: (1.8fr, 1.2fr, 1.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Syllabus area],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Covered in],
  ),
  [Nature, scope and purpose of accounting], [1], [1.1 to 1.4],
  [Accounting concepts and conventions], [1], [1.3 and Appendix D],
  [The accounting equation and double entry], [2], [2.1 to 2.4],
  [Source documents and books of original entry], [3], [3.1 and 3.2],
  [The ledger, trial balance and its limitations], [3], [3.3 and 3.4],
  [Control accounts], [4], [4.1],
  [Bank reconciliation statements], [4], [4.2 and 4.3],
  [Final accounts of a sole trader], [5], [5.1 to 5.3],
  [Adjustments: accruals, prepayments, depreciation, bad debts], [5], [5.4 to 5.5],
  [Correction of errors and suspense accounts], [6], [6.1 to 6.3],
  [Partnership accounts], [7], [7.1 to 7.4],
  [Company accounts], [8], [8.1 to 8.3],
  [Not-for-profit organisations], [8], [8.4],
  [Interpretation of accounts and ratios], [5 and Appendix E], [5.3 and E.5],
)

#v(4pt)

#text(size: 9.2pt)[Every syllabus line is taught in a numbered section, examined in the chapter drill, and revised in Appendix A. The syllabus areas that Volume 2 carries in full — manufacturing accounts, process and job costing, marginal costing, budgetary control and incomplete records — are flagged where they meet this volume's material, so that nothing arrives unannounced in the mock papers.]

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
  [*FOUNDATION*], [a definition, a single posting or one step of arithmetic — the items a prepared candidate should never miss],
  [*UTME STANDARD*], [the paper's own difficulty: a short computation, a classification, or a document identified by its function],
  [*JAMB CHALLENGE*], [two steps and a trap: a provision and a balance sheet, an appropriation and a current account, an error and its effect on profit],
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

#toc-two-column(toc-rows, cols: 2, compact: false)
