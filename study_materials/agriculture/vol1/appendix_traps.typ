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
    Twenty-four ways the examiner builds a distractor. Each row is a wrong answer that looks
    right: read the trap, cover the correction, and say why it fails.
  ]
]

#v(6pt)

== J.1 Twenty-Four Traps

#table(
  columns: (0.38fr, 1.55fr, 1.60fr, 1.85fr),
  inset: (x: 5pt, y: 2.7pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[The tempting answer],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[The correction],
  ),
  [1], [confusing the rock with the soil], [granite, for a soil], [granite is the parent rock; the soil above it is the product of weathering],
  [2], [confusing weathering with erosion], [erosion, for the breaking of rock], [weathering breaks in place; erosion removes and carries],
  [3], [confusing pedology with edaphology], [pedology, for soil and crops], [pedology classifies; edaphology studies the soil as a growth medium],
  [4], [reading the fertiliser numbers in the wrong order], [10:20:10 as N:P:K], [the order is always N, P₂O₅, K₂O],
  [5], [multiplying a percentage by 100 instead of by the bag], [46 kg of N in a 50 kg bag of urea], [46 per cent of 50 kg is 23 kg],
  [6], [forgetting to convert centimetres to metres], [10 000 ÷ (75 × 25) = 5.3 plants], [0.75 × 0.25 = 0.1875 m², giving 53 333 plants],
  [7], [dividing the seed rate when the germination falls], [15 kg/ha at 80 per cent], [more seed is needed: 20 ÷ 0.8 = 25 kg],
  [8], [treating manure as a fertiliser], ["manure supplies N, P and K like NPK"], [its content is under 1 per cent; its main work is humus and structure],
  [9], [confusing a straight with a compound fertiliser], [urea as a compound], [a compound carries two or more nutrients; urea carries nitrogen alone],
  [10], [saying lime "adds calcium" and stopping there], [lime as a nutrient], [lime's main work in the syllabus is to raise pH and release the locked nutrients],
  [11], [confusing a deficiency with a disease], [mosaic virus for a magnesium shortage], [a deficiency is even and symmetrical on the leaf; a virus makes a pattern],
  [12], [confusing a pest with a disease], [stem borer as a disease], [a pest is an animal; a disease is a disorder caused by a pathogen],
  [13], [naming a weed as a crop], [*Striga* as a forage], [*Striga* is a parasitic weed of cereals],
  [14], [confusing cultural with chemical control], [spraying as a cultural method], [cultural control is rotation, spacing, sanitation and resistant varieties],
  [15], [the insecticide that kills the pollinator], [spraying a flowering cowpea at midday], [spray in the evening, when the bees have gone],
  [16], [storing seed with the grain], [keeping seed in the same bag as food grain], [food grain is dried and often treated; seed must keep its viability],
  [17], [confusing monocot with dicot], [cassava as a monocot], [cassava has two cotyledons and netted veins — a dicot],
  [18], [confusing a tuber with a root], [cassava as a tuber], [cassava is a root; yam is a tuber],
  [19], [confusing a cereal with a legume], [groundnut as a cereal], [groundnut is a legume — a pod, a taproot and nodules],
  [20], [confusing gari with cassava flour], [gari as the flour for *elubo*], [gari is fermented and fried; *elubo* is the flour],
  [21], [confusing cocoa with coffee], [coffee, for the Nigerian export crop], [cocoa is the Nigerian crop; coffee is grown in small quantities on the Jos Plateau],
  [22], [harvesting by the calendar alone], [harvesting maize at 120 days because the book says 120], [maturity is judged by the crop, not by the calendar],
  [23], [confusing profit with revenue], [profit, for the total sales], [profit is revenue minus cost; sales alone can hide a loss],
  [24], [confusing a cooperative with a company], [a cooperative's profit shared by shares alone], [a cooperative distributes by patronage, one member one vote],
)

== J.2 The Examiner's Three Favourite Words

#table(
  columns: (0.95fr, 1.05fr, 2.55fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Word],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it asks for],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How to answer it],
  ),
  [State], [a fact, in one sentence], [a numbered sentence; no explanation, no example],
  [Explain], [the reason and the mechanism], ["because" plus the process, in two sentences],
  [Describe], [what is seen or done, in order], [the steps or the features, in sequence, without reasons],
)

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[THE LAST INSTRUCTION]
  #v(3pt)
  #text(size: 9.7pt)[
    When two options both look right, the difference is almost always one of these: *the wrong
    unit*, *the wrong order*, *the wrong level* (a rock where a soil is asked for, a genus where
    a species is asked for), or *a true statement that does not answer the question*. Read the
    stem again and find which of the four the distractor has broken. That takes five seconds and
    saves a mark.
  ]
]

#v(4pt)

#text(size: 9.6pt)[
  *A closing note.* The trap file is the shortest chapter in the book and the one most often
  re-read in the last week. If you have worked the eight drills, the two papers and the 120-item
  bank, you have already met every one of these twenty-four; the file exists so that you meet
  them a second time, with the mask off.
]

#pagebreak(weak: true)
