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
    #text(font: "DejaVu Sans", size: 42pt, weight: "bold", fill: white)[GEOGRAPHY]
    #v(2pt)
    #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: rgb("#6EE7B7"))[VOLUME 2]
  ]
  #v(10pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white)[People, Places]
    #text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white)[and the Nigerian Space]
  ]
  #v(8pt)
  #align(center)[
    #block(width: 76%)[
      #text(size: 10pt, fill: rgb("#CBD5E1"))[
        Who the people are, where they settle, what they grow, mine and make, how they move
        and trade — and the country, the region and the world those answers belong to.
      ]
    ]
  ]
  #v(10pt)
  #align(center)[#image("diagrams/geo2_cover_banner.svg", width: 72%)]
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
  #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: jamb-navy)[Geography in two volumes]
]

#v(4pt)

#text(size: 10.6pt)[
  Geography is examined as two kinds of knowledge that are taught as one. The first is the
  *physical environment* — the earth as a planet, the rocks under the soil, the atmosphere over
  it, the rivers across it and the landforms they leave. The second is the *human environment* —
  where people live, why they settle where they do, what they grow, mine and make, and how they
  move and trade. Map work sits between the two: it is the instrument that turns either kind of
  knowledge into a measurable answer.
]

#v(3pt)

#text(size: 10.6pt)[
  This volume takes the human half and the regional half. Volume 1 took the physical
  environment and the map work. Between them they cover the UTME syllabus in full, at a depth
  that treats the subject as a way of explaining the ground under the candidate's feet.
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
  [1], [The Physical Environment and Map Work],
  [the earth in space; the crust, rocks and plates; weather and climate; rivers and drainage; landforms and soils; map work and statistics],
  [2], [People, Places and the Nigerian Space],
  [population and migration; settlement; agriculture, mining and industry; transport, trade and tourism; Nigeria, West Africa and the world; environment and development],
)

#v(8pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[HOW THE SUBJECT IS BUILT]
  #v(3pt)
  #text(size: 9.9pt)[
    Every chapter runs in the same order. It opens with the syllabus objectives and the four
    or five statements the examiner reuses. Six or seven teaching sections follow, each with its
    table, rule box or figure. Four worked questions then move from foundation to UTME standard
    to the JAMB challenge. A trap box names the errors the examiner builds his distractors from,
    a recap card fixes the chapter in four lines, and a two-minute set tells you whether you can
    use it. Each chapter ends with a 40-question drill and a written solution for every item.
  ]
]

#v(6pt)

#text(size: 10.4pt)[
  The back of the book is the working half: a 120-question bank, two full papers, sixty
  rapid-fire recall pairs, the figures file, the world file, the definitions file, model
  answers, an eight-week plan, the comparison tables and the trap catalogue. A candidate who
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
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[1 · READ THE RADAR FIRST]
    #v(2pt)
    #text(size: 9.3pt)[The focus radar is the chapter compressed to its examinable claims. Read it before the chapter, then again after, and the teaching sections become evidence for statements you already hold.]
  ],
  block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 9pt)[
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[2 · ANCHOR EVERY CLAIM IN A PLACE]
    #v(2pt)
    #text(size: 9.3pt)[A human-geography answer with no named place is a guess. Kano for groundnut, Ondo for cocoa, Onne for the eastern port: attach each process to the map it happens on.]
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
    That you can read a map scale and a contour, because the human questions are set on maps. That
    you know the outline of Nigeria and can place Kano, Enugu and Port Harcourt without a key. And
    that you can divide one number by another: density, growth, dependency and the trade balance
    are all one division each.
  ]
]

#pagebreak()

// ============================================================================
// THE PAPER IN NUMBERS
// ============================================================================

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 9pt, inset: 13pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[THE PAPER]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Geography in numbers]
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
  [Physical : human split], [roughly 60 : 40], [this volume carries the human and regional 40 per cent],
  [Nigeria questions], [8–12], [the local example is examinable in its own right],
  [Regional questions], [4–8], [West Africa, ECOWAS and the wider world],
  [Calculation questions], [3–6], [density, growth, dependency, trade balance, scale],
)

#v(8pt)

#text(size: 10.4pt)[
  The marks are not distributed evenly across the syllabus, and the imbalance is stable enough
  to plan around. Population and settlement together carry about a fifth of the paper. Economic
  activity — farming, mining, power, industry, transport and trade — carries a further quarter.
  The geography of Nigeria is the largest single block, and the environment and development
  questions close the paper.
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
    [*Describe*], [say what is there, in order — numbers, pattern, place],
    [*Explain*], [give the process and the reason; "because" must appear],
    [*Compare*], [name the criterion first, then give both sides of it],
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
  [1], [Population], [size, density, distribution and structure; birth and death rates; migration; population growth and its problems; population policy],
  [2], [Settlement], [rural and urban settlement; site, situation and function; patterns and hierarchy; land use; urbanisation and its problems],
  [3], [Agriculture], [types of farming; systems of cultivation; crops and livestock; plantation and mixed farming; problems and improvement of agriculture],
  [4], [Mining, Power and Industry], [minerals and their distribution; mining methods and effects; energy resources and power; industrial location, types and problems],
  [5], [Transport, Trade and Tourism], [modes of transport; trade and its balance; visible and invisible trade; international organisations; tourism],
  [6], [Nigeria], [position, size and boundaries; relief, drainage and climate; vegetation and soils; population and economic regions; development problems],
  [7], [West Africa and the Wider World], [the West African region and ECOWAS; Africa and the AU; OPEC, the Commonwealth and the UN; Nigeria's foreign policy],
  [8], [Environment and Development], [environmental hazards and degradation; pollution and waste; conservation; sustainable development and the SDGs],
)

#v(6pt)

#text(size: 10.2pt)[
  The syllabus also contains the physical section — the earth in space, the crust, weather and
  climate, rivers and landforms, and map work — which Volume 1 treats in the same depth. Nothing
  examined in the paper is left out of the two volumes between them.
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • GEOGRAPHY VOLUME 2]
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
