// ============================================================================
// JAMB CBT MASTER STUDY SERIES — SHARED A4 TEXTBOOK TEMPLATE (Typst)
// Brand Palette: JAMB Emerald (#008751 / #00A859) + Deep Navy (#0E1F40)
// ============================================================================

#let jamb-green = rgb("#008751")
#let jamb-bright = rgb("#00A859")
#let jamb-mint = rgb("#ECFDF5")
#let jamb-mint-border = rgb("#6EE7B7")
#let jamb-navy = rgb("#0E1F40")
#let jamb-slate = rgb("#334155")
#let jamb-muted = rgb("#64748B")
#let jamb-light = rgb("#F8FAFC")
#let jamb-border = rgb("#CBD5E1")

#let trap-red = rgb("#DC2626")
#let trap-bg = rgb("#FEF2F2")
#let trap-border = rgb("#FCA5A5")

#let tip-amber = rgb("#B45309")
#let tip-bg = rgb("#FFFBEB")
#let tip-border = rgb("#FCD34D")

#let info-blue = rgb("#1D4ED8")
#let info-bg = rgb("#EFF6FF")
#let info-border = rgb("#93C5FD")

#let current-chapter = state("current-chapter", "Front Matter & UTME Strategy")

#let setup-book(
  subject: "CHEMISTRY",
  volume-num: 1,
  volume-title: "Matter, Atoms & Bonding",
  body,
) = {
  set document(
    title: "JAMB CBT Study Guide — " + subject + " (Volume " + str(volume-num) + ": " + volume-title + ")",
    author: "JAMB CBT Master Study Series",
  )

  set page(
    paper: "a4",
    margin: (top: 23mm, bottom: 22mm, left: 19mm, right: 19mm),
    header: context {
      let pg = counter(page).get().first()
      if pg > 1 {
        set text(font: "DejaVu Sans", size: 7.6pt, fill: jamb-muted)
        grid(
          columns: (auto, 1fr),
          column-gutter: 10pt,
          align: (left + bottom, right + bottom),
          [*JAMB CBT MASTER SERIES* #h(4pt) | #h(4pt) #subject — VOL. #volume-num],
          [#text(fill: jamb-green, weight: "bold")[#current-chapter.get()]],
        )
        v(-4pt)
        line(length: 100%, stroke: 0.8pt + jamb-bright)
      }
    },
    footer: context {
      let pg = counter(page).get().first()
      if pg > 1 {
        line(length: 100%, stroke: 0.5pt + jamb-border)
        v(3pt)
        set text(font: "DejaVu Sans", size: 8.2pt, fill: jamb-muted)
        grid(
          columns: (1fr, 1fr, 1fr),
          align: (left + horizon, center + horizon, right + horizon),
          [Official UTME Syllabus Aligned],
          [#text(fill: jamb-navy, weight: "bold")[Focus • Understand • Score 300+]],
          [
            #box(
              fill: jamb-green,
              inset: (x: 8pt, y: 3pt),
              radius: 4pt,
              text(fill: white, weight: "bold", size: 8.5pt)[Page #pg],
            )
          ],
        )
      }
    },
  )

  set text(
    font: "Libertinus Serif",
    size: 11.4pt,
    fill: rgb("#1E293B"),
    lang: "en",
  )

  set par(
    leading: 0.76em,
    spacing: 1.18em,
    justify: true,
  )

  // Table cells read better unjustified and unbroken.
  show table.cell: it => {
    set par(justify: false)
    set text(hyphenate: false)
    it
  }

  // Style headings
  show heading: set text(hyphenate: false)

  show heading.where(level: 1): it => {
    // Level 1 headings are rendered via #chapter-opener banner; keep invisible anchor if raw
    v(2pt)
    text(font: "DejaVu Sans", size: 18pt, weight: "bold", fill: jamb-navy)[#it.body]
    v(4pt)
  }

  show heading.where(level: 2): it => {
    v(10pt, weak: true)
    block(breakable: false, width: 100%)[
      #grid(
        columns: (5pt, 1fr),
        column-gutter: 8pt,
        rect(width: 5pt, height: 18pt, radius: 2pt, fill: jamb-bright),
        align(horizon, text(font: "DejaVu Sans", size: 13.2pt, weight: "bold", fill: jamb-navy)[#it.body]),
      )
      #v(-3pt)
      #line(length: 100%, stroke: 0.5pt + jamb-border)
    ]
    v(4pt, weak: true)
  }

  show heading.where(level: 3): it => {
    v(7pt, weak: true)
    block(breakable: false)[
      #text(font: "DejaVu Sans", size: 11.2pt, weight: "bold", fill: jamb-green)[▸ #it.body]
    ]
    v(2pt, weak: true)
  }

  show math.equation.where(block: true): it => {
    v(4pt, weak: true)
    block(
      width: 100%,
      inset: (x: 10pt, y: 7pt),
      fill: rgb("#F8FAFC"),
      stroke: (left: 2.2pt + jamb-border),
      radius: (right: 4pt),
      align(center, it),
    )
    v(4pt, weak: true)
  }

  body
}

// ── Chapter Opener Banner ──────────────────────────────────────────────────
#let chapter-opener(
  num,
  title,
  subtitle: "",
  syllabus-ref: "",
  utme-weight: "High-Yield",
) = {
  pagebreak(weak: true)
  current-chapter.update("Chapter " + str(num) + ": " + title)

  // Hidden semantic level-1 heading for TOC & PDF Outline
  place(hide(heading(level: 1, outlined: true)[Chapter #num: #title]))

  block(
    width: 100%,
    fill: jamb-navy,
    radius: 10pt,
    inset: 18pt,
    stroke: 1.5pt + jamb-bright,
  )[
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 10pt,
      align: (left + horizon, left + horizon, right + horizon),
      box(
        fill: jamb-bright,
        radius: 5pt,
        inset: (x: 10pt, y: 5pt),
        text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: white)[CHAPTER #num],
      ),
      box(text(font: "DejaVu Sans", size: 8.8pt, fill: rgb("#A7F3D0"), weight: "bold")[#syllabus-ref]),
      box(
        fill: rgb("#1E3A5F"),
        stroke: 0.8pt + rgb("#34D399"),
        radius: 5pt,
        inset: (x: 9pt, y: 4pt),
        text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: rgb("#FCD34D"))[UTME Weight: #utme-weight],
      ),
    )
    #v(8pt)
    #par(justify: false)[#text(font: "DejaVu Sans", size: 19pt, weight: "bold", fill: white, hyphenate: false)[#title]]
    #if subtitle != "" [
      #v(4pt)
      #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[#subtitle]
    ]
  ]
  v(8pt)
}

// ── JAMB Focus Radar (Syllabus Objectives + High-Yield Hotspots) ───────────
#let focus-radar(objectives: (), hotspots: (), trap-summary: "") = {
  block(
    width: 100%,
    fill: jamb-mint,
    stroke: 1.2pt + jamb-green,
    radius: 8pt,
    inset: 12pt,
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align: horizon,
      box(fill: jamb-green, radius: 4pt, inset: (x: 7pt, y: 3pt), text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[EXAM RADAR]),
      text(font: "DejaVu Sans", size: 10.2pt, weight: "bold", fill: jamb-green)[JAMB SYLLABUS OBJECTIVES & HIGH-YIELD AREAS OF FOCUS],
    )
    #v(6pt)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 14pt,
      block(width: 100%, fill: white, radius: 6pt, inset: 10pt, stroke: 0.7pt + jamb-mint-border)[
        #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[▸ Official UTME Syllabus Targets]
        #v(4pt)
        #set text(size: 10pt)
        #for obj in objectives [
          • #eval(obj, mode: "markup") \
        ]
      ],
      block(width: 100%, fill: white, radius: 6pt, inset: 10pt, stroke: 0.7pt + jamb-mint-border)[
        #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[★ High-Yield Exam Focus Areas]
        #v(4pt)
        #set text(size: 10pt)
        #for hs in hotspots [
          ★ #eval(hs, mode: "markup") \
        ]
      ],
    )
    #if trap-summary != "" [
      #v(6pt)
      #block(width: 100%, fill: rgb("#FEF3C7"), radius: 5pt, inset: (x: 10pt, y: 6pt), stroke: 0.7pt + tip-border)[
        #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: tip-amber)[◆ Chief Examiner Insight: ]
        #text(size: 9.8pt, fill: jamb-navy)[#eval(trap-summary, mode: "markup")]
      ]
    ]
  ]
  v(6pt)
}

// ── Pedagogical Callout Boxes ──────────────────────────────────────────────
#let concept-box(title, body) = {
  v(4pt, weak: true)
  block(
    width: 100%,
    fill: info-bg,
    stroke: (left: 4pt + info-blue, top: 0.6pt + info-border, right: 0.6pt + info-border, bottom: 0.6pt + info-border),
    radius: (right: 6pt),
    inset: 11pt,
  )[
    #block(breakable: false, sticky: true)[
      #box(fill: info-blue, radius: 3pt, inset: (x: 6pt, y: 2pt), text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[CONCEPT])
      #h(6pt)
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: info-blue)[#eval(title, mode: "markup")]
    ]
    #v(4pt)
    #body
  ]
  v(4pt, weak: true)
}

#let formula-box(title, body) = {
  v(4pt, weak: true)
  block(
    width: 100%,
    fill: jamb-mint,
    stroke: (left: 4pt + jamb-green, top: 0.7pt + jamb-mint-border, right: 0.7pt + jamb-mint-border, bottom: 0.7pt + jamb-mint-border),
    radius: (right: 6pt),
    inset: 11pt,
  )[
    #block(breakable: false, sticky: true)[
      #box(fill: jamb-green, radius: 3pt, inset: (x: 6pt, y: 2pt), text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[FORMULA])
      #h(6pt)
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[#eval(title, mode: "markup")]
    ]
    #v(4pt)
    #body
  ]
  v(4pt, weak: true)
}

#let trap-box(title, body) = {
  v(4pt, weak: true)
  block(
    width: 100%,
    fill: trap-bg,
    stroke: (left: 4pt + trap-red, top: 0.7pt + trap-border, right: 0.7pt + trap-border, bottom: 0.7pt + trap-border),
    radius: (right: 6pt),
    inset: 11pt,
  )[
    #block(breakable: false, sticky: true)[
      #box(fill: trap-red, radius: 3pt, inset: (x: 6pt, y: 2pt), text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[JAMB TRAP!])
      #h(6pt)
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: trap-red)[#eval(title, mode: "markup")]
    ]
    #v(4pt)
    #body
  ]
  v(4pt, weak: true)
}

#let shortcut-box(title, body) = {
  v(4pt, weak: true)
  block(
    width: 100%,
    fill: tip-bg,
    stroke: (left: 4pt + tip-amber, top: 0.7pt + tip-border, right: 0.7pt + tip-border, bottom: 0.7pt + tip-border),
    radius: (right: 6pt),
    inset: 11pt,
  )[
    #block(breakable: false, sticky: true)[
      #box(fill: tip-amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[CBT SHORTCUT])
      #h(6pt)
      #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: tip-amber)[#eval(title, mode: "markup")]
    ]
    #v(4pt)
    #body
  ]
  v(4pt, weak: true)
}

// ── Diagram Figure Wrapper ─────────────────────────────────────────────────
#let diagram-fig(path, caption, width: 98%) = {
  v(6pt, weak: true)
  block(
    breakable: false,
    width: 100%,
    fill: white,
    stroke: 0.8pt + jamb-border,
    radius: 8pt,
    inset: 8pt,
  )[
    #align(center, image(path, width: width))
    #v(3pt)
    #align(center)[
      #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[Figure: ]
      #text(font: "DejaVu Sans", size: 9pt, fill: jamb-slate)[#eval(caption, mode: "markup")]
    ]
  ]
  v(6pt, weak: true)
}

// ── Step-by-Step Worked Calculation Card ───────────────────────────────────
#let worked-example(
  num,
  title,
  tier: "UTME STANDARD",
  source: "",
  problem,
  solution,
) = {
  let badge-col = if tier == "FOUNDATION" { jamb-green } else if tier == "JAMB CHALLENGE" { trap-red } else { info-blue }
  v(7pt, weak: true)
  block(
    width: 100%,
    breakable: true,
    sticky: true,
    spacing: 0pt,
  )[
    #block(
      width: 100%,
      fill: jamb-navy,
      radius: (top: 7pt),
      stroke: 1pt + jamb-navy,
      inset: (x: 12pt, y: 7pt),
      spacing: 0pt,
    )[
      #grid(
        columns: (auto, 1fr, auto),
        column-gutter: 8pt,
        align: (left + horizon, left + horizon, right + horizon),
        box(
          fill: jamb-bright,
          radius: 4pt,
          inset: (x: 7pt, y: 2.5pt),
          text(font: "DejaVu Sans", size: 8.5pt, weight: "bold", fill: white)[EXAMPLE #num],
        ),
        text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: white)[#title #if source != "" [#text(fill: rgb("#93C5FD"), size: 8.5pt)[(#source)]]],
        box(
          fill: badge-col,
          radius: 4pt,
          inset: (x: 7pt, y: 2.5pt),
          text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[#tier],
        ),
      )
    ]
    #block(
      width: 100%,
      fill: rgb("#F1F5F9"),
      inset: (x: 12pt, y: 9pt),
      stroke: (left: 1pt + jamb-border, right: 1pt + jamb-border, bottom: 0.8pt + jamb-border),
      spacing: 0pt,
    )[
      #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[PROBLEM: ]
      #problem
    ]
  ]
  block(
    width: 100%,
    fill: white,
    radius: (bottom: 7pt),
    inset: (x: 12pt, y: 10pt),
    stroke: (left: 1pt + jamb-border, right: 1pt + jamb-border, bottom: 1pt + jamb-border),
    spacing: 0pt,
  )[
    #block(breakable: false, sticky: true)[
      #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-green)[STEP-BY-STEP SOLUTION:]
      #v(2pt)
    ]
    #solution
  ]
  v(7pt, weak: true)
}

// ── Multiple-Choice Practice Question (A–D) ────────────────────────────────
#let mcq(num, stem, a, b, c, d) = {
  v(3pt, weak: true)
  block(
    breakable: false,
    width: 100%,
    fill: jamb-light,
    stroke: 0.7pt + jamb-border,
    radius: 6pt,
    inset: (x: 11pt, y: 8pt),
  )[
    #grid(
      columns: (26pt, 1fr),
      column-gutter: 6pt,
      box(
        fill: jamb-navy,
        radius: 4pt,
        inset: (x: 5pt, y: 3pt),
        align(center, text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: white)[#num]),
      ),
      [
        #stem
        #v(5pt)
        #grid(
          columns: (1fr, 1fr),
          row-gutter: 5pt,
          column-gutter: 12pt,
          [#text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: jamb-green)[A.] #h(3pt) #a],
          [#text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: jamb-green)[B.] #h(3pt) #b],
          [#text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: jamb-green)[C.] #h(3pt) #c],
          [#text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: jamb-green)[D.] #h(3pt) #d],
        )
      ],
    )
  ]
  v(3pt, weak: true)
}

// ── Quick Answer Key Grid ──────────────────────────────────────────────────
#let answer-key-grid(answers, label: "✓ QUICK SELF-CHECK ANSWER KEY") = {
  block(
    breakable: false,
    width: 100%,
    fill: jamb-mint,
    stroke: 1pt + jamb-green,
    radius: 7pt,
    inset: 10pt,
  )[
    #text(font: "DejaVu Sans", size: 9.8pt, weight: "bold", fill: jamb-green)[#label]
    #v(5pt)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      row-gutter: 5pt,
      column-gutter: 6pt,
      ..answers.enumerate().map(((i, ans)) => {
        box(
          width: 100%,
          fill: white,
          stroke: 0.6pt + jamb-mint-border,
          radius: 4pt,
          inset: (x: 5pt, y: 3.5pt),
          align(center)[
            #text(font: "DejaVu Sans", size: 8.5pt, fill: jamb-slate)[#(i + 1).]
            #h(3pt)
            #text(font: "DejaVu Sans", size: 9pt, weight: "bold", fill: jamb-navy)[#ans]
          ],
        )
      })
    )
  ]
  v(6pt)
}

// ── Step-by-Step Solution Item for Drill / Mock Questions ──────────────────
#let sol-item(num, ans, body, dense: false, pad: 0pt) = {
  v((if dense { 0.5pt } else { 3pt }) + pad, weak: true)
  block(
    width: 100%,
    stroke: (left: 3pt + jamb-bright, bottom: 0.5pt + jamb-border),
    inset: (
      left: 10pt,
      top: if dense { 1.5pt } else { 4pt },
      bottom: if dense { 2pt } else { 6pt },
      right: 4pt,
    ),
  )[
    #box(
      fill: jamb-mint,
      stroke: 0.7pt + jamb-green,
      radius: 4pt,
      inset: (x: 6pt, y: 2pt),
      text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: jamb-green)[Q#num → Option #ans],
    )
    #h(6pt)
    #body
  ]
}

// ── why the answers are the answers ────────────────────────────────────────
#let answer-notes(items) = block(
  breakable: false,
  width: 100%,
  fill: white,
  stroke: 0.7pt + jamb-border,
  radius: 7pt,
  inset: (x: 11pt, y: 9pt),
)[
  #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[Why those are the answers]
  #v(4pt)
  #set text(size: 9.6pt)
  #for (i, (ans, why)) in items.enumerate() [
    #text(weight: "bold", fill: jamb-navy)[#{i + 1}. #ans] — #why
    #if i < items.len() - 1 { linebreak() }
  ]
]

// ── two-column table of contents ───────────────────────────────────────────
// The entries are generated by the build (see tools/make_toc.py) so that the
// Contents page has a predictable line height and fits a long volume on one
// page. Each row is (level, title, page).
#let toc-two-column(rows, cols: 2, compact: false) = {
  // Laid out as flowing columns of single rows: each row is measured at its
  // final width, so a title that wraps grows its own row instead of colliding
  // with the entry below.
  let fs-title = if compact { 7.4pt } else { 7.7pt }
  let fs-head = if compact { 8.0pt } else { 8.4pt }
  let fs-page = if compact { 7.2pt } else { 7.6pt }
  set text(hyphenate: false)
  set par(leading: 0.62em, spacing: 0pt, justify: false)
  columns(cols, gutter: 15pt)[
    #for (lvl, title, page) in rows {
      block(
        width: 100%,
        above: if lvl == 1 { 5pt } else { 1.1pt },
        below: 0pt,
      )[
        #grid(
          columns: (1fr, auto),
          column-gutter: 5pt,
          align: (left + top, right + top),
          text(
            font: "DejaVu Sans",
            size: if lvl == 1 { fs-head } else { fs-title },
            weight: if lvl == 1 { "bold" } else { "regular" },
            fill: if lvl == 1 { jamb-navy } else { jamb-slate },
          )[#title],
          text(font: "DejaVu Sans", size: fs-page, fill: jamb-muted)[#page],
        )
      ]
    }
  ]
}


