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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[COMMERCE]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: Money, the Market and the Wider World
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Where Volume 1 stopped at the shop counter, this volume goes behind it: money
      and what it does, the banking system and the credit it creates, insurance and
      the six principles that decide a claim, the warehouse and the carrier, the
      advertisement and the sales promotion, the marketing mix and the research
      behind it, the organisations that govern trade between nations, and the
      electronic market that now runs beside the physical one. Seventeen diagrams,
      eight chapter recaps, thirty-two worked examples, and five hundred and twenty
      solved questions, each with a full explanation.
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
          This half of the paper asks what a service *does*. Which aid removes which
          problem, which principle voids which claim, which organisation lends and
          which one rules.
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
        JAMB CBT Master Study Series • Commerce • Volume 2
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

Volume 1 built the business world and the trade that moves through it. This volume
takes the services and the market: money and banking, insurance, the warehouse and the
carrier, advertising, the marketing mix, the international organisations, and the
electronic market. Between them the two volumes cover the syllabus end to end, and each
is built so that every section ends in questions of the shape the paper actually uses.

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
  [*1*], [The Business World], [units, home and foreign trade, the aids in outline, finance, documents, regulation], [done],
  [*2*], [Money, the Market and the Wider World], [money, banks, insurance, the aids in depth, marketing and the international market], [this volume],
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
  [1 Money and Its Work], [why a market needs money, and what money must be able to do], [6],
  [2 The Banking System], [who holds the money, who creates it, and who controls the creation], [8],
  [3 Insurance and Risk], [how a small certain payment covers a large uncertain loss], [8],
  [4 Warehousing, Transport and Communication], [how trade buys time, place and the ability to agree], [7],
  [5 Advertising and Sales Promotion], [how a seller reaches a buyer he will never meet], [7],
  [6 The Marketing Mix and Market Research], [how a firm decides what to make, at what price, and for whom], [8],
  [7 International Economic Organisations], [who writes the rules of trade between nations], [6],
  [8 Management, the Office and E-Commerce], [how a business is run, recorded, and now sold on a screen], [5],
)

#v(4pt)

#text(size: 9.5pt)[Read the second column as a thesis, not a summary. Every question the paper asks is a way of testing whether you can attach an example to that thesis: name the function, name the aid, name the principle, name the organisation.]

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
  [three months], [every chapter in order, after Volume 1], [one chapter a week, its drill the next day, one paper a month],
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
  [Chapter 1], [barter and its failures, the functions, qualities and kinds of money], [8],
  [Chapter 2], [the central bank, the commercial banks, credit creation and the instruments], [22],
  [Chapter 3], [the pool, the six principles, the classes of insurance and the claim], [37],
  [Chapter 4], [warehouses and their kinds, transport modes and documents, communication], [50],
  [Chapter 5], [the purpose of advertising, the media, sales promotion, branding and packaging], [64],
  [Chapter 6], [the four Ps, segmentation, market research and the channels of distribution], [78],
  [Chapter 7], [the IMF, the World Bank, the WTO, ECOWAS, the AU, AfCFTA and OPEC], [93],
  [Chapter 8], [management and its functions, the office and its filing, and e-commerce], [107],
  [Papers], [two full forty-question mock papers, each with a key and a solution on every question], [121],
  [Appendix A], [seventy-five rapid-fire recall pairs], [139],
  [Appendix B], [the 120-question master bank], [142],
  [Appendix C], [every key in the volume, with score bands], [160],
  [Appendix D], [the glossary, A to Z], [166],
  [Appendix E], [the classification tables on one page each], [170],
  [Appendix F], [eight model answers beside the half-answer they replace], [175],
  [Appendix G], [the revision plan], [181],
  [Appendix H], [twenty-five traps, in the paper's own words], [184],
  [Appendix I], [the exam-day playbook], [188],
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
  *Confusing near-neighbours.* A warehouse with a wholesaler, an insurer with an assurance company, a tariff with a quota. The paper builds distractors out of exactly these pairs.

  *Answering with the definition when the stem asks for the function.* \"Insurance is a pool of risk\" is true and useless; \"insurance spreads one large loss over many small premiums\" is the answer.

  *Choosing the longest option.* Commerce distractors are often long and plausible; the correct option is usually the shortest *accurate* one.

  *Ignoring the Nigerian examples.* The paper names the CBN, NDIC, NAICOM, NAFDAC, SON and the FCCPC, and expects you to know which does which.
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
  [1], [money, its functions, qualities and types; the financial system], [Chapters 1–2], [covered],
  [2], [banking services, credit creation and monetary policy], [Chapter 2], [covered],
  [3], [insurance: principles, classes, policies and claims], [Chapter 3], [covered],
  [4], [warehousing, transport and communication as aids to trade], [Chapter 4], [covered],
  [5], [advertising, sales promotion, branding and packaging], [Chapter 5], [covered],
  [6], [marketing, the marketing mix and market research], [Chapter 6], [covered],
  [7], [international trade organisations and economic groupings], [Chapter 7], [covered],
  [8], [management, office practice, and electronic commerce], [Chapter 8], [covered],
)

#v(3pt)

#text(size: 9.3pt)[Volume 1 carries the business units, the trade and the documents; this volume carries the services, the market and the organisations. A candidate who has worked both has met every topic the syllabus names, and met each one in the form the paper asks it.]

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

#toc-two-column(toc-rows, cols: 2, compact: true)
