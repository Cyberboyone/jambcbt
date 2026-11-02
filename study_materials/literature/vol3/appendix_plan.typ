#import "template.typ": *

#current-chapter.update("Appendix I: The Revision Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: The Revision Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Revision Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight weeks if you have them, four if you do not, and the last seven days planned
    hour by hour. One plan is enough — but it has to be a plan, not a hope.
  ]
]

#v(4pt)

== I.1 The Eight-Week Plan

#table(
  columns: (0.55fr, 1.75fr, 2.35fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Do],
  ),
  [*1*], [Chapter 1 twice, then *Vanity*], [the Chapter 1 drill; write the six-stanza table from memory],
  [*2*], [*Ambush*, and the traps of both poems], [the *Vanity* and *Ambush* drills; learn ten quotations],
  [*3*], [*The Anvil and the Hammer*], [its drill; rewrite the two-metaphor diagram from memory],
  [*4*], [*Crossing the Bar*], [its drill; scan quatrain one; learn the eight quotations],
  [*5*], [*The Proud King*, scenes 1–6], [draw the twelve-scene table from the chapter],
  [*6*], [*The Proud King*, scenes 7–12, and the frame], [its drill; write the scene order from memory],
  [*7*], [Chapter 7, then Paper 1], [Paper 1 timed at 60 minutes; mark it the same day],
  [*8*], [Papers 2, 3 and 4], [one every other day; the four-column review after each; Appendix J on the last day],
)

#text(size: 9.2pt)[The order is deliberate: the shortest poems first, because they give the fastest return, and the long narrative last, because it needs the scene table that the earlier weeks have taught you to build. If a week slips, do not skip the drill — skip the rereading instead. The drill tells you what you do not know; the rereading only tells you what you have seen.]

== I.2 The Four-Week Version

#table(
  columns: (0.55fr, 3.4fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The shortest route that still works],
  ),
  [*1*], [Chapter 1 and *Vanity*; both drills. Write the stanza table twice.],
  [*2*], [*Ambush* and *The Anvil*; both drills; ten quotations from each.],
  [*3*], [*Crossing the Bar*; its drill; the eight quotations; then Paper 1 timed.],
  [*4*], [*The Proud King*'s twelve scenes in three sittings; Paper 3 timed; Appendix G daily.],
)

#v(3pt)

#shortcut-box("If you have only one week")[
  Appendix G in the morning, one paper in the afternoon, Appendix J at night. Repeat for six
  days. On the seventh, read only the five cards and sleep early. A week of papers without
  the cards is a week of guessing; the cards are what make the papers readable.
]

== I.3 The Last Seven Days

#table(
  columns: (0.75fr, 1.35fr, 2.55fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Morning],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Afternoon and evening],
  ),
  [*−7*], [Paper 4, timed], [mark it; the four-column review; reread the sections you missed],
  [*−6*], [Appendix D, first three poems], [the *Vanity*, *Ambush* and *Anvil* drills again — only the ones you missed],
  [*−5*], [Appendix D, last two poems], [the *Crossing* and *Proud King* drills again],
  [*−4*], [Appendix E glossary], [Paper 2, timed; mark it],
  [*−3*], [Appendix F and G], [say the five cards aloud; the twelve scenes from memory],
  [*−2*], [Appendix J, all thirty traps], [Paper 1 again, or the sections you scored worst on],
  [*−1*], [nothing new], [Appendix G once, slowly; pack your documents; sleep],
)

#trap-box("The three revision errors")[
  *Reading without testing.* Rereading a chapter feels like progress and proves nothing. The drills are the test; do them first and read only what they expose.

  *Learning new material on the last day.* The last day is for consolidation, not acquisition. A new poem learned at midnight is a new confusion by morning.

  *Doing papers without marking them.* A paper sat and not marked is an hour of writing practice; a paper marked and reviewed is a diagnosis. The review is the part that raises the score.
]
