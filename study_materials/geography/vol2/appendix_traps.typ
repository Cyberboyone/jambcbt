#import "template.typ": *

#current-chapter.update("Appendix J: The Trap File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix J: The Trap File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Trap File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Thirty confusions the examiner builds distractors from. The middle column is the answer that
    feels right; the right-hand column is the one that scores.
  ]
]

#v(6pt)

== J.1 How a Distractor Is Built

#text(size: 10pt)[
  A wrong option is rarely random. It is the right answer to a *neighbouring* question, or the
  right word attached to the wrong process. If an option looks familiar but does not answer the
  exact verb in the stem — "state", "calculate", "explain" — it is the trap.
]

#v(4pt)

== J.2 The Thirty Traps

#table(
  columns: (2.0fr, 1.65fr, 1.75fr),
  inset: (x: 5pt, y: 2.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The question asks for],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The tempting answer],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The correct answer],
  ),
  [population density], [population size], [people per square kilometre],
  [natural increase], [growth rate], [births minus deaths, ignoring migration],
  [dependency ratio], [the number of dependants], [dependants per hundred of working age],
  [a pull factor], [a push factor], [something that attracts migrants],
  [net migration], [total migration], [immigration minus emigration],
  [urbanisation], [urban growth], [the rising share in towns, not the number],
  [a conurbation], [a city], [merged towns in one built-up area],
  [site], [situation], [the ground the town stands on],
  [threshold], [range], [the minimum demand for a service],
  [a dispersed pattern], [a linear pattern], [scattered farms, no nucleus],
  [shifting cultivation], [nomadic herding], [cropping then fallow],
  [a plantation], [a large farm], [one cash crop, hired labour, capital],
  [mixed farming], [mixed cropping], [crops and livestock together],
  [irrigation], [flooding], [the artificial supply of water],
  [open-cast mining], [shaft mining], [surface mining after stripping overburden],
  [a renewable source], [a clean source], [one that is replenished],
  [a light industry], [a small industry], [small inputs, consumer goods],
  [a footloose industry], [a market industry], [one with no strong locational pull],
  [the balance of trade], [the balance of payments], [goods only],
  [an invisible export], [a visible export], [a service sold abroad],
  [a tariff], [a quota], [a tax on imports],
  [a quota], [a tariff], [a quantity limit],
  [the terms of trade], [the balance of trade], [export prices as a percentage of import prices],
  [ECOWAS], [the AU], [the West African regional body],
  [ECOMOG], [ECOWAS], [its military monitoring group],
  [the AU], [the OAU], [the body that replaced the OAU in 2002],
  [a hazard], [a disaster], [the event before the loss],
  [conservation], [preservation], [use that renews the resource],
  [desertification], [drought], [the spread of desert conditions],
  [sustainable development], [economic growth], [growth that restores its resource base],
)

#v(4pt)

#block(width: 100%, fill: trap-bg, stroke: 1pt + trap-border, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[THE LAST CHECK]
  #v(3pt)
  #text(size: 9.9pt)[
    Before you fill the sheet, read the stem again and underline its verb and its unit. Half the
    marks lost in Geography are lost to a question that was answered correctly for a different
    question.
  ]
]

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[FIVE STEMS THAT DECIDE THE PAPER]
  #v(3pt)
  #text(size: 9.6pt)[
    *"per square kilometre"* — divide, do not count. *"natural increase"* — births and deaths
    only. *"percentage of the working population"* — the denominator is 15–64. *"visible"* —
    goods, never services. *"sustainable"* — the resource base must survive the growth.
  ]
]
