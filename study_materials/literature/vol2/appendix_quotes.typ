#import "template.typ": *

#current-chapter.update("Appendix D: The Quotation Bank")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Quotation Bank]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Quotation Bank: 40 Targets]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty targets, twelve from *Othello*, ten from *Native Son*, and six from each of
    the three African texts. Where a line is printed it is short and exact. Where the
    entry gives a moment and a speaker instead, copy the exact words into your own copy:
    an accurate description of a moment is worth more than an invented line, and the
    copying is itself the revision.
  ]
]

#v(5pt)

== D.1 Twelve from *Othello*

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.4fr, 1.0fr, 1.65fr, 1.6fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Line],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Answers],
  ),
  [1], [1.1, Iago to Roderigo], [“I am not what I am.”], [method, appearance, irony],
  [2], [1.3, Othello], [“She loved me for the dangers I had passed,”], [love, narrative, evidence],
  [3], [1.3, Desdemona], [“I saw Othello's visage in his mind,”], [love, inwardness, race],
  [4], [2.3, Cassio], [“Reputation, reputation, reputation!”], [honour, foil, recovery],
  [5], [3.3, Iago], [“O, beware, my lord, of jealousy,”], [warning as weapon, method],
  [6], [3.3, Othello], [“Chaos is come again.”], [the acceptance of Iago's premise],
  [7], [3.3, Othello], [“Farewell the tranquil mind! farewell content!”], [the collapse of a style],
  [8], [3.3, Iago], [“Trifles light as air,”], [evidence, manufacturing proof],
  [9], [4.1, Othello], [“The pity of it, Iago! O, the pity of it,”], [the last resistance],
  [10], [5.2, Othello], [“Put out the light, and then put out the light.”], [repetition, murder as housekeeping],
  [11], [5.2, Desdemona], [“Nobody; I myself. Farewell.”], [love, protection, gender],
  [12], [5.2, Iago], [“Demand me nothing.”], [the refusal of motive],
)

]

#concept-box("How to use a line")[
  Never quote more than ten words, never end a sentence on a quotation, and never quote
  without saying what the words *do*. A line learned as a decoration is a line that will
  be dropped into the wrong answer; a line learned with its three possible uses — as above,
  in the right-hand column — is a line that will find its own question.
]

== D.2 Ten from *Native Son*

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.4fr, 1.0fr, 2.25fr, 1.0fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The moment],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Use for],
  ),
  [13], [Book One, opening], [the rat killed in the kitchenette before anyone has spoken], [fear, space, condition],
  [14], [Book One, the Dalton house], [Bigger's first sight of the furnace and the basement], [the house as a system],
  [15], [Book One, the bedroom], [the killing of Mary, and the prose stepping back to record it], [violence, judgement],
  [16], [Book Two, the furnace], [the body carried down and cut to fit], [the house consuming what it cannot admit],
  [17], [Book Two, the newspapers], [the press describing Bigger before he has spoken], [narrative, race, publicity],
  [18], [Book Two, the airshaft], [Bessie's body disposed of in the building's infrastructure], [choice, guilt],
  [19], [Book Three, the trial], [Max's long explanation of Bigger's life, and the court's inability to hear it], [justice, explanation],
  [20], [Book Three, the cell], [Bigger's last conversation with Max], [recognition, ending],
  [21], [Book Three, the last pages], [“I didn't know I was really alive in this world until I felt things hard enough to kill for 'em.”], [the novel's final claim],
  [22], [Book Three, the cell], [Bigger's refusal to be spoken for any longer], [voice, selfhood],
)

]

== D.3 Six from *Harvest of Corruption*

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.4fr, 1.0fr, 2.25fr, 1.0fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The moment],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Use for],
  ),
  [23], [the Ministry, early], [Ochuole offers Aloho a post she has not applied for], [recruitment, false help],
  [24], [the Akpara Hotel], [the package handed over as a “protocol” duty], [the pipeline, innocence used],
  [25], [the airport], [Aloho arrested with drugs in her luggage], [consent, deception, the law],
  [26], [after the release], [the pregnancy discovered, and the Minister's indifference], [the harvest beginning],
  [27], [the investigation], [ACP Yakubu refusing his Commissioner's instruction], [institutional courage],
  [28], [the sentencing], [each offender receiving a sentence that matches the offence], [the title, justice, closure],
)

]

== D.4 Six from *Faceless*

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.4fr, 1.0fr, 2.25fr, 1.0fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The moment],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Use for],
  ),
  [29], [the market, opening], [the crowd around the place where Baby T's body was left], [the city's curiosity, the anonymity],
  [30], [the theft], [Fofo caught with Kabria's purse and rescued from the beating], [the hinge of the plot, mercy],
  [31], [Fofo's account], [the sale of Baby T, arranged by Kpakpo], [traffic in children, family],
  [32], [Maa Tsuru's room], [the mother's helplessness and her taking of the money], [poverty, complicity],
  [33], [Poison's territory], [the street lord's control of the children's economy], [power without office],
  [34], [the ending], [Fofo given a school uniform and a room], [the modest promise, the title answered],
)

]

== D.5 Six from *Lonely Days*

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.4fr, 1.0fr, 2.25fr, 1.0fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The moment],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Use for],
  ),
  [35], [Chapter 1], [the night of Ajumobi's death and the falling star], [grief, memory, portent],
  [36], [early], [the relatives' accusation that Yaremi caused the death], [custom, scapegoating],
  [37], [the cap-picking], [the three caps presented and all three refused], [choice, resistance],
  [38], [Segi's visit], [Woye taken to Olode for school], [the loss of company, kindness as cost],
  [39], [Alani's visit], [the bread and corned beef, and the departure the same day], [betrayal, the city],
  [40], [the ending], [the elders' sentence and Yaremi's refusal to move], [ostracism, ownership, the last stand],
)

]
