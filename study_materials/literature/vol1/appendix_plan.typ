#import "template.typ": *

#current-chapter.update("Appendix I: The Ten-Week Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: The Ten-Week Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Ten-Week Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Ten weeks, five sessions a week, forty-five minutes a session — the smallest plan that
    finishes this volume, the drills and two mock papers with time left for a second pass.
  ]
]

#v(5pt)

== I.1 The Plan

#table(
  columns: (0.5fr, 1.4fr, 2.3fr, 1.0fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Read and annotate],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Do],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Target],
  ),
  [1], [Chapter 1, and the front matter], [Drill 1 in two sittings; begin Appendix A, section A.1], [80%],
  [2], [Chapter 2, sections 2.1–2.4], [Drill 2, questions 1–20; write the six definitions in F.2 from memory], [70%],
  [3], [Chapter 2, sections 2.5–2.7], [Drill 2, questions 21–40; Appendix A, section A.2], [75%],
  [4], [Chapter 3, sections 3.1–3.4], [Drill 3, questions 1–20; one unseen drama extract from Appendix J], [70%],
  [5], [Chapter 3, sections 3.5–3.7], [Drill 3, questions 21–40; Appendix A, section A.3], [75%],
  [6], [Chapter 4, sections 4.1–4.5], [Drill 4, questions 1–20; the point-of-view table G.3 from memory], [70%],
  [7], [Chapter 4, sections 4.6–4.7], [Drill 4, questions 21–40; one unseen prose extract from Appendix J], [75%],
  [8], [Chapter 5, all sections], [Drill 5 in one sitting; scan ten lines for metre], [75%],
  [9], [Chapter 6, sections 6.1–6.5], [Drill 6, questions 1–20; Appendix A, section A.4], [75%],
  [10], [Chapter 6, sections 6.6–6.7], [Mock Paper 1 under time; mark it; reread every solution], [80%],
)

#text(size: 9.3pt)[The target column is the drill score that means *move on*. If you are below it, repeat the drill before starting the next chapter — the material is cumulative, and a chapter skimmed at sixty per cent costs more in week ten than repeating it costs in week three. Keep the second mock paper for the week before the examination, when the first paper's mistakes have had time to become habits.]

// ============================================================================
== I.2 The Five-Session Week

Each session is forty-five minutes. The shape is the same every week, because the
shape is the discipline.

#rule-box("One session")[
  + *Ten minutes:* reread the section you are about to be tested on — only that section.
  + *Twenty minutes:* work ten drill questions without notes, in silence.
  + *Ten minutes:* mark them, and read the solution to *every* question, right or wrong.
  + *Five minutes:* write the one sentence you would have got wrong into a running list.
]

#concept-box("The running list")[
  A single sheet headed *Things I got wrong*. Five minutes a session, one sentence a
  line. By week ten it is the only revision document you need, because it contains
  nothing you already know.
]

// ============================================================================
== I.3 The Score Log

#table(
  columns: (1.5fr, 0.9fr, 0.9fr, 0.9fr, 1.5fr),
  inset: (x: 5pt, y: 6pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Sitting],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Out of],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[%],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The three questions I missed],
  ),
  [Drill 1], [], [40], [], [],
  [Drill 2], [], [40], [], [],
  [Drill 3], [], [40], [], [],
  [Drill 4], [], [40], [], [],
  [Drill 5], [], [40], [], [],
  [Drill 6], [], [40], [], [],
  [Paper 1], [], [40], [], [],
  [Paper 2], [], [40], [], [],
  [Bank, block 1], [], [10], [], [],
  [Bank, block 2], [], [10], [], [],
  [Bank, block 3], [], [10], [], [],
  [Bank, block 4], [], [10], [], [],
)

#v(4pt)

#shortcut-box("Reading the log")[
  + *A rising line* on the drills is the only evidence that the plan is working.
  + *A flat line* with a rising paper score means the drills have become too easy — move to the bank.
  + *A falling line* in the last fortnight usually means fatigue, not forgetting: cut a session and sleep.
]

// ============================================================================
== I.4 The Last Fortnight

#table(
  columns: (0.85fr, 2.5fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What to do],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What not to do],
  ),
  [14–10], [Appendix A daily, ten minutes; Paper 1 under time], [start a new textbook],
  [9–6], [The running list, and the two chapters you scored worst on], [reread everything from the beginning],
  [5–2], [Mock Paper 2 under time; mark it the same evening; then the glossary], [mark it a week later],
  [1–0], [The playbook, then sleep], [an all-night revision],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[I.5 If you are behind]
  #v(3pt)
  #text(size: 9.8pt)[
    Do not start at week one and run out of time in week eight. Work backwards from the
    paper: sit Mock Paper 1 now, mark it, and spend the remaining weeks on the two
    chapters whose questions you missed. A candidate who has finished two chapters
    properly and sat one paper beats a candidate who has read six chapters once.
  ]
]

#v(4pt)

== I.6 The Plan as One Table

#table(
  columns: (3.1fr, 2.0fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 0.8pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If you have],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Do this],
  ),
  [ten weeks], [the plan in I.1, in order, with the drills],
  [six weeks], [chapters 1–4 in weeks 1–3, chapters 5–6 in week 4, both papers in weeks 5–6],
  [four weeks], [one chapter a week and a paper every Sunday],
  [two weeks], [Appendix A twice, Appendix K once, both papers, and the running list],
  [one week], [I.4, day by day, and nothing else],
)
