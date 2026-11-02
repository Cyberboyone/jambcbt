#import "template.typ": *
#import "_toc.typ": toc-rows

#current-chapter.update("Series Overview & Commerce Strategy")

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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[COMMERCE]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 1: The Business World — Trade, Units and the Aids to Trade
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      From wants and production to the shop counter: business units, home and
      foreign trade, the six aids to trade, business finance and documents,
      government regulation and the consumer. Seventeen diagrams, eight chapter
      recaps, thirty-two worked examples, and five hundred and twenty solved
      questions, each with a full explanation.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ The Question Behind the Question]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          A Commerce question almost never asks for a definition. It asks you to
          place an example: which aid, which unit, which channel, which document.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Two Kinds of Marks]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Recall marks for the vocabulary, and application marks for the example.
          This volume drills both, and shows the difference on every page.
        ]
      ],
    )

    #v(9mm)
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

    #v(8mm)
    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Commerce • Volume 1
      ],
      text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#34D399"))[
        2026 Edition
      ],
    )
  ]
]

// ============================================================================
// SERIES MAP
// ============================================================================
#pagebreak()

= The Series, and Where Commerce Sits

Commerce is the paper that rewards a candidate for knowing *what a thing is called*
and *what it is for*. The vocabulary is finite and the examples are ordinary: a shop,
a lorry, a bank account, an invoice. The marks come from matching the two.

Volume 1 covers the whole syllabus of the paper — the business world, its units, its
trade, its services, its money and its regulation — and it is built so that every
section ends in questions of the shape the paper actually uses.

#v(3pt)

#table(
  columns: (0.5fr, 1.55fr, 2.45fr, 0.9fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Status],
  ),
  [*1*], [The Business World], [the syllabus end to end: units, trade, aids, finance, documents, regulation], [this volume],
  [*2*], [Business Practice and the Mock Papers], [the applied half: management, office practice, marketing, and four full papers], [next],
)

#v(4pt)

#concept-box("Why Commerce is the cheapest paper on the timetable")[
  There is no calculation in the Commerce paper beyond a discount and a simple
  percentage, and there is no unseen text to interpret. Every question is a
  recognition: this example belongs to this concept. A candidate who has the
  vocabulary and one example per concept can score in the eighties; a candidate who
  has read the textbook without ever testing the matching scores in the fifties.
]

// ============================================================================
== The Eight Chapters, and What Each One Is For

#table(
  columns: (1.45fr, 2.0fr, 1.0fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question it exists to answer],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Weight],
  ),
  [1 The Scope of Commerce], [where goods come from, and what happens to them before you buy them], [6],
  [2 Sole Trader, Partnership, Cooperative], [who owns the smallest businesses, and who carries the risk], [7],
  [3 Companies and Public Enterprise], [what changes when a business becomes a legal person], [8],
  [4 Home Trade], [how goods get from a factory to a corner shop], [9],
  [5 Foreign Trade], [what crosses a border, and what is recorded when it does], [9],
  [6 Aids to Trade], [the six services without which trade stops], [9],
  [7 Business Finance and Documents], [where the money comes from, and the paper that follows the goods], [8],
  [8 Government, the Consumer and Ethics], [how the state changes what business does, and what protects the buyer], [6],
)

#v(4pt)

#text(size: 9.5pt)[Read the second column as a thesis, not a summary. Every question the paper asks is a way of testing whether you can attach an example to that thesis: name the unit, name the aid, name the document, name the instrument of policy.]

// ============================================================================
== What a Commerce Chapter Contains

#grid(
  columns: (1fr, 1fr),
  row-gutter: 8pt,
  column-gutter: 12pt,
  block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[The concept, worked through]
    #v(3pt)
    #set text(size: 9.4pt)
    + The definition, in the words the paper uses.
    + The classification, in a table, so that no member is missing.
    + The diagram, when the idea has a shape.
    + The example, because Commerce is a subject of examples.
    + The trap, because the paper swaps near-neighbours every year.
  ],
  block(width: 100%, fill: jamb-light, stroke: 1pt + jamb-border, radius: 8pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[The paper prepared for]
    #v(3pt)
    #set text(size: 9.4pt)
    + Four worked questions, one at each difficulty, each showing the elimination.
    + A two-minute set, with a note on every answer.
    + A forty-question drill, keyed and solved.
    + The traps that this particular chapter attracts.
    + A recap card you can photograph and revise in a queue.
  ],
)

#v(4pt)

#text(size: 9.5pt)[The order matters. The classification table is not there to be recited; it is there so that when an option names a member you have never heard of, you can tell at once whether it belongs to the family. That is the whole skill of a Commerce paper: *place the example before you judge the option*.]

// ============================================================================
== How to Use This Book

#table(
  columns: (1.15fr, 1.55fr, 2.7fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If you have],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[And do],
  ),
  [three months], [every chapter in order], [one chapter a week, its drill the next day, one paper a month],
  [six weeks], [the classification tables, then the chapters], [two chapters a week; both papers in the last fortnight],
  [three weeks], [the recap cards and Appendix D], [one paper every four days, marked and solved],
  [one week], [Appendix A and Appendix H], [the rapid-fire pairs daily; two papers, timed],
)

#v(3pt)

#shortcut-box("The one habit that separates a good Commerce score from a poor one")[
  After every section, close the book and say *one example that is not in the book*. The
  paper is written in examples, and a concept you can only recognise in the author's own
  words is a concept you have not yet learned.
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
  [Chapter 1], [production, occupations, the branches of commerce and the chain of distribution], [8],
  [Chapter 2], [sole trader, partnership, cooperative: owners, liability, capital, control], [21],
  [Chapter 3], [companies, formation, shares, public corporations and public utilities], [35],
  [Chapter 4], [retail and wholesale trade, large-scale retailing and the channel], [48],
  [Chapter 5], [foreign trade, the two balances, restrictions and trade documents], [61],
  [Chapter 6], [banking, insurance, transport, warehousing, advertising and communication], [74],
  [Chapter 7], [sources of finance and the business documents], [87],
  [Chapter 8], [government regulation, consumer protection and business ethics], [100],
  [Papers], [two full forty-question mock papers, each with a key and a solution on every question], [113],
  [Appendix A], [sixty rapid-fire recall pairs], [131],
  [Appendix B], [the 120-question master bank], [134],
  [Appendix C], [every key in the volume, with score bands], [152],
  [Appendix D], [the glossary, A to Z], [158],
  [Appendix E], [the classification tables on one page each], [162],
  [Appendix F], [eight model answers beside the half-answer they replace], [167],
  [Appendix G], [the revision plan], [172],
  [Appendix H], [twenty-five traps, in the paper's own words], [175],
  [Appendix I], [the exam-day playbook], [178],
)

#text(size: 9.2pt)[The page numbers above are taken from this printing. The Contents page that follows is generated from the finished PDF at build time, so it gives the exact page of every heading and sub-heading, including the ones this table leaves out.]

// ============================================================================
== The Paper, in Numbers

#table(
  columns: (1.9fr, 0.7fr, 2.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The paper],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Number],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it means for you],
  ),
  [Questions], [50], [one mark each, no negative marking, fifty minutes],
  [Definition questions], [about 15], [the vocabulary: name the thing, in the paper's own words],
  [Classification questions], [about 12], [which family the example belongs to],
  [Function questions], [about 12], [what the thing does, and who it serves],
  [Document questions], [about 6], [which paper passes between which two parties],
  [Applied arithmetic], [about 5], [discount, mark-up, simple percentage — no more],
)

#v(3pt)

#trap-box("The four ways a candidate loses Commerce marks")[
  *Confusing near-neighbours.* A tariff with a quota, a credit note with a debit note, a multiple shop with a department store. The paper builds distractors out of exactly these pairs.

  *Answering with the definition when the stem asks for the function.* "A wholesaler is a middleman" is true and useless; "a wholesaler breaks bulk and holds stock so the retailer need not" is the answer.

  *Choosing the longest option.* Commerce distractors are often long and plausible; the correct option is usually the shortest *accurate* one.

  *Ignoring the Nigerian examples.* The paper names CAC, NAFDAC, SON, CBN and the FCCPC, and expects you to know which does which.
]

// ============================================================================
== The Syllabus, Covered

#table(
  columns: (0.38fr, 2.2fr, 1.35fr, 1.2fr),
  inset: (x: 4.5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[§],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The syllabus asks for],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Taught in],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Status],
  ),
  [1], [the scope of commerce, production and occupations], [Chapter 1], [covered],
  [2], [business units and their formation], [Chapters 2–3], [covered],
  [3], [home trade and foreign trade], [Chapters 4–5], [covered],
  [4], [the aids to trade], [Chapter 6], [covered],
  [5], [business finance, capital and documents], [Chapter 7], [covered],
  [6], [government and business, consumer protection], [Chapter 8], [covered],
)

#v(3pt)

#text(size: 9.3pt)[This volume is the whole of the Commerce syllabus and it is designed to be used alone: the second volume takes the applied half — management, office practice and marketing — and the papers that test all of it.]

// ============================================================================
// CONTENTS
// ============================================================================
#pagebreak()

= Table of Contents

#text(size: 9.5pt)[
  Every chapter, paper and appendix, with the page on which it begins. The numbers
  are generated from the finished PDF, so they are exact.
]

#v(6pt)

#toc-two-column(toc-rows, cols: 2, compact: false)
