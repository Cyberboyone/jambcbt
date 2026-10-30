#import "template.typ": *

#current-chapter.update("Appendix H: Twenty Rules Worth Knowing")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Twenty Rules Worth Knowing]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty Rules Worth Knowing]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The twenty rules that between them decide most of the lexis and structure paper, each with the sentence that breaks it and the repair. Learn the repair, not the rule.]
]

#v(4pt)

== H.1 The Twenty, in the Order They Cost Marks

#table(
  columns: (0.4fr, 1.6fr, 2.0fr, 2.0fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Broken],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Repaired],
  ),
  [1], [The verb agrees with the head noun], [The list of names were long], [The list of names was long],
  [2], [A participle follows have, has or had], [She has wrote the letter], [She has written the letter],
  [3], [A preposition takes the object form], [Between you and I], [Between you and me],
  [4], [Two clauses need more than a comma], [The rain stopped, we left], [The rain stopped; we left],
  [5], [each, every, neither are singular], [Neither of the boys have come], [Neither of the boys has come],
  [6], [A finished time takes the simple past], [I have seen him yesterday], [I saw him yesterday],
  [7], [The passive is be plus the participle], [The results was announce], [The results were announced],
  [8], [A linking verb takes an adjective], [The soup tastes well], [The soup tastes good],
  [9], [A comparison is never doubled], [This is more better], [This is better],
  [10], [A conjunctive adverb takes a semicolon], [It rained, however we left], [It rained; however, we left],
  [11], [Mass nouns have no plural], [She gave me useful advices], [She gave me useful advice],
  [12], [A non-defining clause takes which], [The book, that I bought, is lost], [The book, which I bought, is lost],
  [13], [its is possessive; it's means it is], [The dog wagged it's tail], [The dog wagged its tail],
  [14], [although pairs with neither but nor yet], [Although he was tired, but he finished], [Although he was tired, he finished],
  [15], [A participial phrase opens with its doer], [Walking home, the rain began], [Walking home, I was caught in the rain],
  [16], [The nearer subject decides either … or], [Neither the girl nor the boys is here], [Neither the girl nor the boys are here],
  [17], [A fronted dependent clause takes a comma], [When the bell rang the class ended], [When the bell rang, the class ended],
  [18], [A past reporting verb moves the tense back], [He said he is tired], [He said he was tired],
  [19], [A comparison of two takes the comparative], [The best of the two is this], [The better of the two is this],
  [20], [A synonym must fit the sentence], [He was poor and frugal], [He was thrifty and frugal],
)

#v(4pt)

== H.2 The Four Checks That Catch All Twenty

#table(
  columns: (1.2fr, 2.6fr, 2.2fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Check],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Catches],
  ),
  [Bracket the phrase], [cross out everything between the subject and its verb], [rules 1, 5, 16],
  [Say the long form], [it's → it is; I'd → I would], [rule 13],
  [Count the clauses], [cover the second clause and see if the first stands], [rules 4, 12, 17],
  [Ask who did it], [name the doer of the opening phrase], [rules 7, 15],
)

#v(4pt)

#shortcut-box("The three-second audit")[
  Before you submit any answer, run the sentence through the four checks in order: bracket the phrase, say the long form, count the clauses, ask who did it. It takes three seconds and it catches more errors than any amount of rereading, because each check looks for a different fault rather than reading the sentence again in the same way.
]

#v(4pt)

== H.3 Six Sentences to Repair, With the Rule Behind Each

#table(
  columns: (2.0fr, 1.9fr, 1.1fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Broken],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Repaired],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Rule],
  ),
  [The quality of the reports were poor], [The quality of the reports was poor], [1],
  [Neither of the girls have finished], [Neither of the girls has finished], [5],
  [He has took the wrong turning], [He has taken the wrong turning], [2],
  [The book which I bought it is lost], [The book which I bought is lost], [12],
  [Having finished the work, the lights went off], [Having finished the work, we switched off the lights], [15],
  [If he had arrived earlier, he would catch the train], [If he had arrived earlier, he would have caught the train], [19],
)

#v(2pt)

#text(size: 9.6pt)[Repair each sentence before you look at the second column. The rule numbers in the third column are the same numbers as in H.1, so a miss sends you straight to the line that fixes it — which is the whole point of numbering them.]

