#import "template.typ": *

#current-chapter.update("Appendix H: The Eight-Week Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: The Eight-Week Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Eight-Week Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    One chapter a week for eight weeks, with the drill in the same week and the papers at
    the end. The plan assumes about ninety minutes a day and six days a week; if you have
    less time, halve the reading and keep the drill, because the drill is what tells you
    what you did not learn.
  ]
]

#v(5pt)

== H.1 The Eight Weeks

#[
  #set text(size: 7.9pt)
#table(
  columns: (0.55fr, 1.15fr, 2.55fr, 0.85fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What to do],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Drill target],
  ),
  [1], [Chapter 1 — pre-colonial], [read the three systems, draw the figure from memory, then sit the drill and reread the sections behind every miss], [28/40],
  [2], [Chapter 2 — colonial rule], [learn the dates 1851 to 1929, the two amalgamations and the two systems of rule; sit the drill], [28/40],
  [3], [Chapter 3 — nationalism], [build the party table and the constitution table from memory; sit the drill], [30/40],
  [4], [Chapter 4 — federalism], [memorise the lists, the state figures and the conflict rule; sit the drill], [30/40],
  [5], [Chapter 5 — the military], [recite the regimes in order with dates; sit the drill], [30/40],
  [6], [Chapter 6 — public administration], [learn the canons, the reforms and the accountability bodies; sit the drill], [30/40],
  [7], [Chapter 7 — foreign policy], [draw the circles, date the institutions, list the instruments; sit the drill], [32/40],
  [8], [Chapter 8 — elections], [learn the cycle, the 2022 Act and the petition rules; sit the drill], [32/40],
)
]

#v(4pt)

== H.2 The Last Seven Days

#table(
  columns: (1.0fr, 3.3fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Work],
  ),
  [Seven days out], [Paper 1 in full, timed. Mark it, and list every miss by chapter, not by question number],
  [Six days out], [reread the two chapters with the most misses; sit their drills again],
  [Five days out], [Paper 2 in full, timed. Mark it the same way],
  [Four days out], [Appendix D and Appendix E, aloud; then Appendix A with the answers covered],
  [Three days out], [the bank of 120 questions, in three sittings of forty],
  [Two days out], [the recap cards of all eight chapters, then the traps in Appendix K],
  [One day out], [Appendix D again, and nothing new. Sleep],
)

#v(4pt)

#concept-box("The ninety-minute day")[
  *Twenty minutes* reading the chapter section you are on. *Ten minutes* reciting the table or figure with the book closed. *Forty minutes* on the drill, without notes. *Twenty minutes* marking the drill and writing the reason for each miss in the margin. The last twenty minutes are the ones candidates skip, and they are the ones that move the score.
]

#v(4pt)

#trap-box("Three ways candidates waste the eight weeks")[
  *1 · Reading without drilling.* The chapter feels familiar, and familiarity is not recall. A drill exposes the difference in forty minutes.

  *2 · Drilling without marking.* A score without a diagnosis is a number, not a plan. Mark by chapter and reread the sections the misses point to.

  *3 · Saving the papers for the last day.* The papers are diagnostic, not a final exam. Sit them with a week to spare so that the diagnosis can still change something.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[If you have four weeks instead of eight, pair the chapters — 1 with 2, 3 with 4, 5 with 6, 7 with 8 — and keep the last seven days exactly as printed. The pairing works because each pair is one story: the colonial state and its dismantling, the structure and the soldiers who changed it, the service and the world it speaks to, and the ballot that chooses the government.]
