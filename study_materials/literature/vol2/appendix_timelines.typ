#import "template.typ": *

#current-chapter.update("Appendix G: Plot Timelines")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: Plot Timelines]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Plot Timelines]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Five timelines on one spread each: the order of events in the text's own arrangement,
    numbered so that a quotation can be located by its position. Learn the numbers, not
    the prose.
  ]
]

#v(5pt)

== G.1 Harvest of Corruption — Thirteen Moves

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.42fr, 3.1fr, 1.75fr),
  inset: (x: 4.4pt, y: 3.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Event],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Causal job]),
  [1], [Aloho, a graduate, cannot find work and meets Ochuole], [the door],
  [2], [Ogeyi warns her about Ochuole's reputation], [the ignored warning],
  [3], [Ochuole takes her to Chief Ade-Amaka at the Akpara Hotel], [the introduction],
  [4], [She is appointed protocol officer], [the cover],
  [5], [She travels with documents and an unexamined package], [the errand],
  [6], [Customs officers arrest her at the airport with cocaine], [the trap],
  [7], [Chief buys Justice Odili and the Commissioner of Police], [the corruption revealed],
  [8], [The case is struck out for want of evidence], [the acquittal that teaches her],
  [9], [She resigns, and discovers she is pregnant], [the private cost],
  [10], [She refuses an abortion, goes home, and dies in childbirth], [the harvest taken in person],
  [11], [Ogeyi reports Chief to ACP Yakubu; Inaku investigates], [the counter-move],
  [12], [Ayo supplies the vouchers for 1.2 billion naira], [the proof],
  [13], [The trial and the graded sentences], [the public harvest],
)
]

== G.2 Othello — Five Acts

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.72fr, 3.0fr, 1.55fr),
  inset: (x: 4.4pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Act],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it sets up]),
  [1], [Iago and Roderigo wake Brabantio; the Duke hears the elopement; Othello is sent to Cyprus], [the grievance, the marriage and the journey],
  [2], [The storm destroys the Turkish fleet; Cassio is drunk, brawls and is demoted], [the opportunity, and Cassio's ruin],
  [3], [Iago tempts Othello; Desdemona pleads for Cassio; the handkerchief is planted], [the turn of the play],
  [4], [The eavesdropping on Bianca; Othello strikes Desdemona; the willow scene], [the collapse made public],
  [5], [Roderigo and Cassio attacked; Desdemona killed; Emilia's confession; Othello's death], [the cost, and the truth too late],
)
]

== G.3 Faceless — The Story in Order

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.42fr, 3.1fr, 1.75fr),
  inset: (x: 4.4pt, y: 3.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Event],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it establishes]),
  [1], [Maa Tsuru's household: Kwei has left, Kpakpo is the lover], [the family broken from inside],
  [2], [Fofo is on the street, disguised as a boy], [survival and invisibility],
  [3], [Baby T is abused and sold], [the traffic in children],
  [4], [Baby T is killed by Onko, who commits suicide], [the crime without a trial],
  [5], [The body is found behind the Rasta kiosk and taken for a kayayoo], [the category],
  [6], [Fofo goes to MUTE and meets Kabria], [the institutional door],
  [7], [Kabria, Dina, Vickie and Aggie disagree about what can be done], [the limits of help],
  [8], [Sylv Po broadcasts the story; Maami Broni telephones and disappears], [publicity without justice],
  [9], [The handprint on the right cheek points to a left-handed man], [the proof],
  [10], [Fofo is taken in; Odarley is not], [the partial rescue],
)
]

== G.4 Lonely Days — Fourteen Chapters in Six Movements

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.0fr, 2.85fr, 1.45fr),
  inset: (x: 4.4pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Movement],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Function]),
  [Entrance verse], [widowhood named as a shared condition], [the thesis],
  [Chapters 1–3], [Ajumobi's death, the suspicion, the widow's road], [the world and its machinery],
  [Chapters 4–7], [Woye, the farm, the roof, the moonlight night], [the private life the rites interrupt],
  [Chapters 8–10], [the trade, the suitors, the elders' plan], [the pressure to remarry],
  [Chapters 11–12], [Segi's visit; Woye leaves for school; the refusal], [the choice made public],
  [Chapters 13–14], [the threats; the removal of the widow's garment], [the cost and the defiance],
)
]

== G.5 Native Son — Three Books

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.9fr, 3.0fr, 1.3fr),
  inset: (x: 4.4pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Book],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Function]),
  [Fear], [the rat; the pool hall; Blum's store; the Dalton job; Mary's death; the furnace], [the condition],
  [Flight], [the newspapers; the ransom note; Britten; the rooftops; Bessie's death; the capture], [the action],
  [Fate], [the confession; Max; the trial and the two speeches; the sentence; the cell], [the judgment],
)
]
