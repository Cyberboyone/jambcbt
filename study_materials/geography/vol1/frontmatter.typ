#import "template.typ": *
#import "_toc.typ": toc-rows

// ============================================================================
// COVER
// ============================================================================

#page(header: none, footer: none, margin: 0pt, fill: jamb-navy)[
  #set text(fill: white)
  #v(36pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: rgb("#A7F3D0"), tracking: 1.4pt)[
      JAMB CBT MASTER SERIES
    ]
    #v(2pt)
    #text(font: "DejaVu Sans", size: 8.4pt, fill: rgb("#CBD5E1"))[The complete UTME study library]
  ]
  #v(26pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 42pt, weight: "bold", fill: white)[GEOGRAPHY]
    #v(2pt)
    #text(font: "DejaVu Sans", size: 15pt, weight: "bold", fill: rgb("#6EE7B7"))[VOLUME 1]
  ]
  #v(12pt)
  #align(center)[
    #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Physical Environment]
    #v(2pt)
    #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[and Map Work]
  ]
  #v(10pt)
  #block(width: 74%)[
    #align(center)[
      #text(size: 10.2pt, fill: rgb("#CBD5E1"))[
        The earth as a planet, the crust beneath it, the weather above it, the water across it,
        the landforms it wears — and the map that turns all of it into marks.
      ]
    ]
  ]
  #v(16pt)
  #align(center)[#image("diagrams/geo1_cover_banner.svg", width: 84%)]
  #v(14pt)
  #block(width: 78%)[
    #align(center)[
      #text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        7 chapters · 28 worked examples · 465 practice questions · 2 full papers · appendices A–K
      ]
    ]
  ]
]

// ============================================================================
// FRONT MATTER
// ============================================================================

#pagebreak()

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
  This volume takes the physical half and the map work. Volume 2 takes population, settlement,
  economic activity, transport and trade, and the regional geography of Nigeria, West Africa and
  the wider world. Between them they cover the UTME syllabus in full, at a depth that treats the
  subject as a way of explaining the ground under the candidate's feet.
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
  [population and migration; settlement; agriculture, mining and industry; transport and trade; the geography of Nigeria, West Africa and the world],
)

#v(8pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[HOW THE SUBJECT IS BUILT]
  #v(3pt)
  #text(size: 9.9pt)[
    Every chapter runs in the same order. It opens with the syllabus objectives and the four
    or five statements the examiner reuses. Five teaching sections follow, each with its table,
    rule box or figure. Four worked questions then move from foundation to UTME standard to the
    JAMB challenge. A trap box names the errors the examiner builds his distractors from, a
    recap card fixes the chapter in four lines, and a two-minute set tells you whether you can
    use it. Each chapter ends with a 40-question drill and a written solution for every item.
  ]
]

#v(6pt)

#text(size: 10.4pt)[
  The back of the book is not an appendix in the usual sense. It is the working half: a
  105-question bank, two full papers, the dates and numbers file, the map-work file, the
  definitions file, model answers, a study plan, the comparison tables, the Nigeria file and
  the trap catalogue. A candidate who has read the chapters and worked the drills should be able
  to answer any question in the back half without opening a chapter.
]

#pagebreak()

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
    #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[2 · DRAW EVERY FIGURE]
    #v(2pt)
    #text(size: 9.3pt)[Geography is learnt through the hand. Copy the cross-section, the rainfall panel and the contour map without looking; a figure you can reproduce is a process you can explain.]
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

#pagebreak()

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
  [Physical : human split], [roughly 60 : 40], [physical geography and map work carry the larger share],
  [Map-work questions], [4–8], [always at least one scale, one bearing and one contour],
  [Calculation questions], [3–6], [gradient, distance, time difference, population density],
  [Nigeria questions], [8–12], [the local example is examinable in its own right],
)

#v(8pt)

#text(size: 10.4pt)[
  The marks are not distributed evenly across the syllabus, and the imbalance is stable enough
  to plan around. Map work, weather and climate, and the earth in space together account for
  about half the paper. Landforms and soils carry a quarter. The rest is shared between the
  subject's own definitions, rivers and the environment.
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
    [*Describe*], [say what is there, in order — relief, drainage, vegetation, land use],
    [*Explain*], [give the process and the reason; "because" must appear],
    [*Compare*], [name the criterion first, then give both sides of it],
  )
]

#pagebreak()

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
  [1], [The Subject and its Tools], [the nature, scope and branches of geography; the importance of the subject; maps, fieldwork and statistics as methods],
  [2], [The Earth in Space], [shape and size of the earth; rotation and revolution; latitude, longitude and time; the seasons and the zones],
  [3], [The Crust, Rocks and Plates], [the internal structure; the three rock types and the rock cycle; continental drift, plate boundaries, vulcanicity and earthquakes],
  [4], [Weather and Climate], [the atmosphere; insolation and temperature; pressure, winds and the general circulation; humidity and the three rainfall types; climate types and their controls],
  [5], [Rivers and Drainage], [the water cycle; the work of rivers; the three courses and their landforms; drainage patterns; lakes and groundwater],
  [6], [Landforms and Soils], [weathering and mass movement; the work of wind, ice and waves; the major landform families; soil formation, profile and types],
  [7], [Map Work and Statistics], [scale, distance, bearing and grid references; contours, cross-sections and gradient; map interpretation; the statistical diagrams],
)

#v(6pt)

#text(size: 10.2pt)[
  The syllabus also contains a regional section — the geography of Nigeria and West Africa — which
  is taught in Volume 2 alongside population, settlement and economic activity, because a region
  is best read through the people who use it.
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • GEOGRAPHY VOLUME 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Seven chapters, two timed papers and eleven appendices, with the page numbers printed into this list.]

#v(5pt)

#let rows = toc-rows.filter(r => r.at(0) == 1 or (
  r.at(1).len() > 3
  and r.at(1).at(0) in "1234567"
  and r.at(1).at(1) == "."
  and not r.at(1).contains("in the Exam Hall")
  and not r.at(1).contains("Complete Solutions")
  and not r.at(1).contains("Answer Key")
  and not r.at(1).starts-with("Section ")
  and not r.at(1).contains("Score Log")
  and not r.at(1).contains("Rough Work")
  and not r.at(1).contains("How This Paper Is Marked")
  and not r.at(1).contains("Where the Missed Marks")
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
