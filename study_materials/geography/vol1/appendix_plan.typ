#import "template.typ": *

#current-chapter.update("Appendix H: The Eight-Week Plan")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix H: The Eight-Week Plan]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Eight-Week Plan]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    One chapter a week, one paper a fortnight, one review day in seven. The plan assumes two
    hours a day on weekdays and four at the weekend; adjust the hours, keep the order.
  ]
]

#v(6pt)

#table(
  columns: (0.55fr, 1.35fr, 2.2fr, 1.05fr),
  inset: (x: 6pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Read and work],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What must be true by Sunday],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Test],
  ),
  [1], [Chapter 1 and Chapter 2], [You can define geography, name the four spheres and the tools, and calculate time from longitude without notes.], [Two-minute sets 1 and 2],
  [2], [Chapter 3], [You can draw the interior, classify any rock named and explain the three plate boundaries.], [Drill 3],
  [3], [Chapter 4, first half], [You can name the layers, use the lapse rate and explain the pressure belts and winds.], [Drill 4, Q1–20],
  [4], [Chapter 4, second half], [You can draw the three rainfall types and name the climate types with their controls.], [Drill 4, Q21–40],
  [5], [Chapter 5], [You can explain the water cycle, the three courses and the making of a delta.], [Drill 5],
  [6], [Chapter 6], [You can name two landforms per agent and label a soil profile.], [Drill 6],
  [7], [Chapter 7], [You can do scale, bearing, gradient and sector angle without error.], [Full Paper 1],
  [8], [Revision and papers], [Both papers under time, both marked, and every miss traced to a chapter.], [Full Paper 2],
)

#v(6pt)

== H.1 The Weekly Rhythm

#table(
  columns: (1.25fr, 2.6fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Work],
  ),
  [Monday], [Read the focus radar and the first two sections; write the definitions from memory.],
  [Tuesday], [The next two sections; redraw the chapter figure without looking.],
  [Wednesday], [The last section and the worked examples, covered and then checked.],
  [Thursday], [The two-minute set, timed; then the drill, first twenty questions.],
  [Friday], [The drill, second twenty; mark both halves and name every miss.],
  [Saturday], [The appendix pages for this chapter — rapid-fire pairs and the trap list.],
  [Sunday], [Retest only the misses; then rest. The rest is part of the method.],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[If You Have One Week]
  #v(3pt)
  #text(size: 9.8pt)[
    Read the focus radar of every chapter (one hour). Work the two-minute sets and read their
    notes (two hours). Work Appendix A aloud (one hour). Work Appendix D and E (one hour). Do
    Paper 1 and Paper 2 under time, mark them, and reread only the chapters your misses name
    (three hours). That is nine hours, and it is worth more than nine hours of rereading.
  ]
]

#v(3pt)

#trap-box("The three plan failures")[
  *One*: reading without testing, so the chapter feels familiar and is not recallable. *Two*:
  working untimed, so the paper's pace is a shock on the day. *Three*: marking a paper and
  moving on without tracing each miss to its chapter — a mark lost twice, because the same gap
  will appear in the next paper.
]
