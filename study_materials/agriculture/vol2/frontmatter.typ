#import "template.typ": *
#import "_toc.typ": toc-rows

// ============================================================================
// COVER
// ============================================================================

#page(header: none, footer: none, margin: 0pt, fill: jamb-navy)[
  #set text(fill: white)
  #v(30pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: rgb("#A7F3D0"), tracking: 1.4pt)[
      JAMB CBT MASTER SERIES
    ]
    #v(2pt)
    #text(font: "DejaVu Sans", size: 8.4pt, fill: rgb("#CBD5E1"))[The complete UTME study library]
  ]
  #v(20pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 31pt, weight: "bold", fill: white)[AGRICULTURAL]
    #text(font: "DejaVu Sans", size: 31pt, weight: "bold", fill: white)[SCIENCE]
    #v(2pt)
    #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: rgb("#6EE7B7"))[VOLUME 2]
  ]
  #v(10pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white)[The Animal and the Farm Business]
  ]
  #v(8pt)
  #align(center)[
    #block(width: 76%)[
      #text(size: 10pt, fill: rgb("#CBD5E1"))[
        The animals a Nigerian farm keeps, the feed and the health that keep them, the fish pond
        and the woodlot, and the records, credit and policy that turn a holding into a business.
      ]
    ]
  ]
  #v(10pt)
  #align(center)[#image("diagrams/agr2_cover_banner.svg", width: 72%)]
  #v(6pt)
  #align(center)[
    #block(width: 84%, stroke: 0.8pt + rgb("#334155"), radius: 6pt, inset: 8pt)[
      #grid(
        columns: (1fr, 1fr, 1fr, 1fr),
        align: center + horizon,
        ..(
          ("8", "CHAPTERS"), ("32", "WORKED EXAMPLES"), ("520", "PRACTICE QUESTIONS"), ("2", "TIMED PAPERS"),
        ).map(((n, l)) => {
          block[
            #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: rgb("#6EE7B7"))[#n]
            #v(1pt)
            #text(font: "DejaVu Sans", size: 6.4pt, weight: "bold", fill: rgb("#94A3B8"), tracking: 0.6pt)[#l]
          ]
        }).flatten(),
      )
    ]
  ]
  #v(1fr)
  #align(center)[
    #text(font: "DejaVu Sans", size: 7.6pt, fill: rgb("#94A3B8"), tracking: 0.8pt)[
      8 CHAPTERS · 520 PRACTICE QUESTIONS · 2 PAPERS · APPENDICES A–J
    ]
  ]
  #v(16pt)
]

#pagebreak()

// ============================================================================
// THE SERIES, AND WHERE THIS VOLUME SITS
// ============================================================================

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-bright, radius: 9pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE SERIES, AND WHERE THIS VOLUME SITS]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: jamb-navy)[Agricultural science in two volumes]
]

#v(4pt)

#text(size: 10.6pt)[
  Agricultural science is examined as one subject made of two halves that are taught apart. The
  first is the *crop and the ground under it* — the rock that weathers into soil, the nutrients
  the plant draws, the tillage and the nursery and the harvest that follows. The second is the
  *animal and the business of the farm* — livestock, fisheries and forestry, farm records,
  extension and the policies that govern the trade.
]

#v(3pt)

#text(size: 10.6pt)[
  This volume takes the animal, the forest and the business. Volume 1 took the crop and the
  soil. Between them they cover the UTME syllabus in full, at a depth that treats the farm as a
  system rather than a list of crops and a list of animals.
]

#v(8pt)

#table(
  columns: (0.55fr, 1.35fr, 2.30fr),
  inset: (x: 6pt, y: 5pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Coverage],
  ),
  [1], [The Soil and the Crop],
  [the scope of agriculture; rocks, soil formation and soil properties; fertility, manure and fertiliser; land preparation and cultural practice; propagation and nursery; pests, diseases and weeds; the crops of Nigeria; harvesting, storage and marketing],
  [2], [The Animal and the Farm Business],
  [livestock production; animal nutrition and health; fisheries and forestry; farm records and accounts; agricultural extension and cooperatives; agricultural policy and marketing institutions],
)

#v(8pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[HOW THE SUBJECT IS BUILT]
  #v(3pt)
  #text(size: 9.9pt)[
    Every chapter runs in the same order. It opens with the syllabus objectives and the four or
    five statements the examiner reuses. Six or seven teaching sections follow, each with its
    table, rule box or figure. Four worked questions then move from foundation to UTME standard
    to two exam-level items and the JAMB challenge. A trap box names the errors the examiner
    builds his distractors from, a recap card fixes the chapter in four lines, and a two-minute
    set tells you whether you can use it. Each chapter ends with a 40-question drill and a
    written solution for every item.
  ]
]

#v(6pt)

#text(size: 10.4pt)[
  The back of the book is the working half: a 120-question bank, two full papers, sixty
  rapid-fire recall pairs, the livestock figures file, the farm business calendar, the
  definitions file, model answers, an eight-week plan, the comparison tables and the trap
  catalogue. A candidate who
  has read the chapters and worked the drills should be able to answer any question in the back
  half without opening a chapter.
]

#pagebreak()

// ============================================================================
// FIVE WAYS
// ============================================================================

#hide[#heading(level: 1, outlined: true)[Five ways to use this book]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 9pt, inset: 13pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[ORIENTATION]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Five ways to use this book]
]

#v(4pt)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 14pt,
  row-gutter: 8pt,
  block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[1 · LEARN THE NAMES]
    #v(2pt)
    #text(size: 9.3pt)[Agricultural science is a subject of named things: a brooder, a rumen, Newcastle disease, a cash book, an anchor borrower. A definition without its example is half a mark; the example alone is usually the other half.]
  ],
  block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[2 · FOLLOW THE ANIMAL]
    #v(2pt)
    #text(size: 9.3pt)[Every chapter follows the same animal through its life: breeding, feeding, housing, health, growth, produce, sale. When a question asks "what happens next", the answer is the next link in that chain.]
  ],
  block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[3 · WORK THE EXAMPLES COVERED]
    #v(2pt)
    #text(size: 9.3pt)[The solution is written to be covered. Do the question, then read the steps and find the line where your reasoning and the book's part company — that line is your revision list.]
  ],
  block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[4 · TIME THE SET]
    #v(2pt)
    #text(size: 9.3pt)[Four questions in two minutes is the paper's pace, and it is faster than it feels. If the two-minute set takes four minutes, the problem is recall, not intelligence.]
  ],
  block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[5 · DRILL, THEN MARK]
    #v(2pt)
    #text(size: 9.3pt)[The 40-question drill comes with a solution for every item. Mark it immediately, name the chapter of every miss, and write the miss into the score log at the back.]
  ],
  block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 9pt)[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE ONE RULE]
    #v(2pt)
    #text(size: 9.3pt)[Never read a chapter twice without testing yourself in between. The second reading feels productive and teaches almost nothing; the test is what moves the mark.]
  ],
)

#v(6pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[WHAT THIS VOLUME ASSUMES]
  #v(3pt)
  #text(size: 9.5pt)[
    That you have seen a farm with animals on it, or can picture one: a poultry house, a goat
    tethered under a tree, a pond behind the compound. That you can read a simple table of prices
    and costs and take a percentage from it. And that you know the map of Nigeria well enough to
    place the cattle corridor of the north, the poultry belt round Ibadan and Abeokuta, and the
    delta creeks where the fish farms are.
  ]
]

#pagebreak()

// ============================================================================
// THE PAPER IN NUMBERS
// ============================================================================

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 9pt, inset: 13pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[THE PAPER]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Agricultural science in numbers]
]

#v(6pt)

#table(
  columns: (1.55fr, 1fr, 1.9fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means for you],
  ),
  [Questions in the paper], [40], [each worth the same; there is no section weighting],
  [Time allowed], [30 minutes], [45 seconds a question, including the reading],
  [Options per question], [4], [one correct, three built from named misconceptions],
  [Animal and health], [10–14], [the largest single block in this volume],
  [Nutrition and feeding], [5–9], [nutrients, feeds, the ration and the Pearson square],
  [Fisheries and forestry], [3–6], [pond, stocking, timber and agroforestry],
  [Records and accounts], [5–8], [the four figures of Appendix D],
  [Extension, cooperatives and policy], [5–8], [the names and what each one did],
)

#v(8pt)

#text(size: 10.4pt)[
  The marks are not distributed evenly, and the imbalance is stable enough to plan around. The
  animal — breeding, feeding, housing and health — carries about half the paper. The business
  half — records, extension, cooperatives and policy — carries about a third. The rest is shared
  between fisheries, forestry and the calculations that sit inside every one of those blocks.
]

#v(8pt)

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE FOUR COMMAND WORDS]
  #v(4pt)
  #table(
    columns: (0.75fr, 2.4fr),
    inset: (x: 4pt, y: 2.6pt),
    align: (left + horizon, left + horizon),
    stroke: none,
    [*Define*], [one sentence, the technical term, no example needed],
    [*State*], [a name or a figure, with nothing added],
    [*Describe*], [say what is done, in order — clear, plough, harrow, plant],
    [*Explain*], [give the reason; "because" must appear, and it must name a process],
  )
]

#pagebreak()

// ============================================================================
// THE SYLLABUS
// ============================================================================

#hide[#heading(level: 1, outlined: true)[The syllabus, chapter by chapter]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 9pt, inset: 13pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[THE SYLLABUS]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Covered, chapter by chapter]
]

#v(6pt)

#table(
  columns: (0.5fr, 1.7fr, 2.9fr),
  inset: (x: 6pt, y: 4.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The syllabus lines it answers],
  ),
  [1], [The Animal on the Farm], [importance of livestock; classification of farm animals; systems of production; the problems of the livestock industry and their solutions],
  [2], [The Body of the Farm Animal], [the ruminant and monogastric digestive systems; the fowl; digestion and absorption; the reproductive system and the oestrus cycle],
  [3], [Animal Nutrition and Feeding], [the six nutrients; feed classes and feedstuffs; the ration and ration formulation; the Pearson square; water and additives],
  [4], [Animal Health and Disease Control], [signs of health; the disease triangle; viral, bacterial, protozoan and parasitic diseases; vaccines, quarantine and sanitation],
  [5], [Livestock Production and Management], [poultry; cattle, sheep and goats; pigs and rabbits; housing; breeding systems; routine management practices],
  [6], [Fisheries and Forestry], [fish species and pond construction; stocking, feeding and harvesting; forest types and products; agroforestry and conservation],
  [7], [Farm Records and Accounts], [types of record; the cash book, ledger and trial balance; depreciation; profit and loss, balance sheet and cash flow; budgets and credit],
  [8], [Extension, Cooperatives and Policy], [extension objectives and methods; teaching aids; cooperative societies; marketing boards and commodity exchange; agricultural policy and insurance],
)

#v(6pt)

#text(size: 10.2pt)[
  The syllabus also contains the crop half of the subject — soil, tillage, propagation, crop
  protection and the crops of Nigeria — which Volume 1 treats in the same depth. Nothing examined
  in the paper is left out of the two volumes between them.
]

#pagebreak()

// ============================================================================
// CONTENTS
// ============================================================================

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1pt + jamb-bright,
  radius: 9pt,
  inset: 13pt,
)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • AGRICULTURAL SCIENCE VOLUME 2]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Eight chapters, two timed papers and ten appendices, with the page numbers printed into this list.]

#v(5pt)

#let rows = toc-rows.filter(r => r.at(0) == 1 or (
  r.at(1).len() > 3
  and r.at(1).at(0) in "12345678"
  and r.at(1).at(1) == "."
  and not r.at(1).contains("in the Exam Hall")
  and not r.at(1).contains("Complete Solutions")
  and not r.at(1).contains("Answer Key")
  and not r.at(1).starts-with("Section ")
))

#let clean-title(t) = {
  if t.starts-with("Chapter ") and t.contains(": ") { t.split(": ").at(1) } else { t }
}

#let trunc(t, n: 46) = {
  if t.len() <= n { return t }
  let words = t.split(" ")
  let out = words.at(0)
  for w in words.slice(1) {
    if out.len() + 1 + w.len() <= n { out = out + " " + w } else { break }
  }
  out + "…"
}

#let cell-title(r, n) = {
  if r.at(0) == 1 {
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: jamb-navy)[#trunc(clean-title(r.at(1)), n: 44)]
  } else {
    text(font: "DejaVu Sans", size: 6.9pt, fill: jamb-slate)[#trunc(clean-title(r.at(1)), n: 54)]
  }
}

#let cell-page(r) = text(font: "DejaVu Sans", size: 6.9pt, fill: jamb-muted)[#r.at(2)]

#let half = calc.ceil(rows.len() / 2)

#table(
  columns: (1fr, auto, 1fr, auto),
  inset: (x: 1pt, y: 1.7pt),
  column-gutter: 10pt,
  stroke: none,
  align: (left + horizon, right + horizon, left + horizon, right + horizon),
  ..range(half).map(i => {
    let l = rows.at(i)
    let right-index = i + half
    if right-index < rows.len() {
      let r = rows.at(right-index)
      (cell-title(l, 44), cell-page(l), cell-title(r, 44), cell-page(r))
    } else {
      (cell-title(l, 44), cell-page(l), [], [])
    }
  }).flatten(),
)
