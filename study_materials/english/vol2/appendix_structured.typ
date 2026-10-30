#import "template.typ": *

#current-chapter.update("Appendix I: Summary Models")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Summary Models]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Six Summary Models]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Six short passages, each with the instruction, the points that carry the marks, the evidence that must be dropped, and a model answer inside the limit.
  ]
]

#v(5pt)

#text(size: 9.8pt)[Read each passage, underline what you would keep, then compare your points with the middle column. The model is one correct answer, not the only one: what earns the marks is the points, the compression and the count.]

#v(4pt)

== I.1 Effects

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 10pt)[
  #text(size: 9.7pt)[The council closed the motor park because the land had been sold. No alternative site was provided, so the buses now load on the highway, and the highway has no lay-by. Since the closure, two pedestrians have been knocked down at the same corner.]
]

*Instruction:* In not more than twenty words, summarise the effects of the closure.

*Points:* buses load on the highway; the highway has no lay-by; pedestrians have been knocked down.

*Drop:* the sale of the land (a cause), and the number of accidents (a detail).

*Model:* Closing the park put buses on a highway without a lay-by, where pedestrians have since been knocked down. (twenty words)

== I.2 Causes

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 10pt)[
  #text(size: 9.7pt)[The market levy has risen three times in two years, each rise announced a week before collection. Traders cannot plan a season on a week's notice, so many have stopped buying in bulk. A trader who buys a hundred tubers in April must know the June levy; she cannot, and so she buys fifty.]
]

*Instruction:* In one sentence, state why traders have reduced their buying.

*Points:* short notice of the levy; the impossibility of planning; the reduction in bulk buying.

*Drop:* the number of rises, and the tuber example.

*Model:* Traders buy less because the levy rises at a week's notice, which makes a season impossible to plan. (twenty words)

== I.3 Reasons

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 10pt)[
  #text(size: 9.7pt)[The clinic's records are kept in four exercise books, one for each nurse, and no two books agree. A child vaccinated in January can be vaccinated again in March. The books are not the problem; the clinic has never been given one agreed way of recording a patient.]
]

*Instruction:* In one sentence, give the reason the writer gives for the clinic's faulty records.

*Points:* no single agreed method of recording; the books themselves are not at fault.

*Drop:* the four books and the double vaccination (illustrations).

*Model:* The clinic has no single agreed method of recording patients, so its four sets of records conflict. (seventeen words)

== I.4 Suggestions

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 10pt)[
  #text(size: 9.7pt)[Every rainy season the drains block within a week, and the water reaches the shopfronts. The council clears them after the flooding rather than before it. A schedule published in April, with the streets named and the dates fixed, would cost less than one season's repairs.]
]

*Instruction:* In not more than twenty words, summarise the writer's suggestion.

*Points:* publish a clearing schedule in April; name the streets; fix the dates.

*Drop:* the flooding description (the problem) and the cost comparison (support).

*Model:* The council should publish a dated April schedule naming the streets it will clear before the rains. (seventeen words)

== I.5 Contrast

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 10pt)[
  #text(size: 9.7pt)[The state has built four hundred classrooms in three years, and the enrolment figures have hardly moved. The reason is simple: a classroom without a teacher is a room. The state has trained fewer than sixty teachers in the same period.]
]

*Instruction:* In one sentence, summarise the contrast the writer draws.

*Points:* classrooms built; enrolment unchanged; teachers not trained.

*Drop:* the figures four hundred and sixty (evidence), and the *room* metaphor.

*Model:* Although the state has built many classrooms, enrolment has not risen because it has trained almost no teachers. (nineteen words)

== I.6 A Conclusion

#block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 10pt)[
  #text(size: 9.7pt)[For eleven years the council has promised a lorry park. Meanwhile the traders built their own order on a stretch of roadside, marked with stones, and it works. The council's answer was to clear the stones.]
]

*Instruction:* In one sentence, summarise the writer's conclusion about the council.

*Points:* the promise unkept; the traders' working alternative; the council's response.

*Drop:* the eleven years and the stones as objects (details), while keeping what they stand for.

*Model:* The council, having failed for years to provide a park, destroyed the working one the traders built. (nineteen words)

#v(5pt)

#trap-box("Three faults to look for in your own model answers")[
  *1 · The list.* Three facts joined by *and* with no relation between them. Add the connector that states the relation, and delete a fact if the limit will not take it.

  *2 · The lift.* A sentence copied from the passage. Change the vocabulary and keep the sense.

  *3 · The overflow.* Nineteen words becoming twenty-four because the answer was written before it was planned. Plan the points in rough, then write to the limit.
]

#v(4pt)

== I.7 Marking Your Own Summary

#text(size: 9.8pt)[Write the summary, then mark it against the four rows below before you look at any model. The rows are the ones a marker uses, and the third row is where most candidates lose the most.]

#table(
  columns: (1.4fr, 2.6fr, 1.1fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Heading],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question to ask of your own answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Share],
  ),
  [Points], [is every point the instruction asked for present, and nothing else?], [50 %],
  [Compression], [is it inside the limit, with no example and no quotation?], [20 %],
  [Expression], [are the words yours, and does each connector state a relation?], [20 %],
  [Mechanics], [one sentence, one verb, capitals and full stop], [10 %],
)

#v(2pt)

#text(size: 9.6pt)[A summary that scores 50 per cent on the first row and nothing on the others is a list. A summary that scores full marks on the last three and half on the first is well written and has answered a different question.]

