#import "template.typ": *

#current-chapter.update("Appendix K: Traps and Playbook")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix K: Traps and Playbook]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Traps and Playbook]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    The twenty traps the examiner builds his options from, the thirty minutes of the paper
    planned minute by minute, and the habits that convert knowledge into marks.
  ]
]

#v(6pt)

== K.1 The Twenty Traps

#table(
  columns: (0.45fr, 1.55fr, 2.5fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The correction],
  ),
  [1], [sphere for oblate spheroid], [the earth bulges at the equator; the answer is oblate spheroid],
  [2], [latitude for longitude], [latitude is north–south and decides climate; longitude decides time],
  [3], [adding time going west], [east is ahead, west is behind],
  [4], [45° for 045°], [bearings carry three figures],
  [5], [weather for climate], [climate is the thirty-year average],
  [6], [rotation for revolution], [rotation gives day and night; revolution gives seasons],
  [7], [igneous for sedimentary], [layers and fossils mean sedimentary],
  [8], [focus for epicentre], [focus underground, epicentre on the surface],
  [9], [constructive for destructive], [ridges are constructive, trenches destructive],
  [10], [stratus for cumulonimbus], [the rain cloud is the cumulonimbus],
  [11], [relief rain for convectional], [the trigger is the mountain, not the heat],
  [12], [watershed for basin], [the watershed is the boundary line],
  [13], [meander for ox-bow], [the ox-bow is the cut-off loop],
  [14], [delta for estuary], [the delta builds out, the estuary is drowned],
  [15], [weathering for erosion], [weathering is in place; erosion transports],
  [16], [drumlin for cirque], [drumlin is deposition, cirque is erosion],
  [17], [A horizon for O horizon], [the O horizon is litter; the A horizon is topsoil],
  [18], [eastings after northings], [eastings always come first],
  [19], [contours close for gentle], [close contours mean steep],
  [20], [sector angle without 360], [the full circle is 360°, not 100],
)

== K.2 The Thirty Minutes

#table(
  columns: (1.1fr, 2.55fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What to do],
  ),
  [0–1], [Read the instructions and check the number of questions. Do not start writing.],
  [1–25], [First pass: answer every question you know, in order. Circle the doubtful ones and move on.],
  [25–28], [Second pass: the circled questions. Eliminate two options, then choose.],
  [28–29], [Third pass: any question still blank. There is no negative marking; a guess is worth a quarter of a mark in expectation.],
  [29–30], [Check the answer sheet: numbering, shading, and no blank rows.],
)

#v(4pt)

#trap-box("The three habits that lose marks after the knowledge is there")[
  *One*: reading the stem too fast. "Which is NOT" and "except" reverse the question; underline
  the negative before looking at the options. *Two*: choosing the option that is true but does
  not answer the stem. In geography, three options are often true statements; the mark goes to
  the one that answers the question asked. *Three*: changing an answer without a reason. A
  second thought is worth acting on only when it produces a fact; if it produces only doubt,
  keep the first answer.
]

== K.3 If You Have One Week

#table(
  columns: (0.55fr, 3.1fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Work],
  ),
  [1], [Chapters 1 and 2, the figures, and the two drills],
  [2], [Chapter 3 and Appendix I.1 and I.4, the drill],
  [3], [Chapter 4 and Appendix D.3, the drill],
  [4], [Chapter 5 and Appendix E, the drill],
  [5], [Chapter 6 and Appendix I.5 and I.6, the drill],
  [6], [Chapter 7 and Appendix E.1, the drill, then Paper 1],
  [7], [Paper 2, marked; Appendix A with the answers covered; sleep early],
)

#v(4pt)

#concept-box("The last thing to read")[
  If you read only one page in the last hour, read Appendix D.4 — the ten figures. If you read
  two, add the twenty traps above. They are the two pages that convert a half-learned chapter
  into a mark, because they are the two pages the examiner writes his options from.
]
