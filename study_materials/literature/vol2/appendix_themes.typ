#import "template.typ": *

#current-chapter.update("Appendix E: The Theme Ledger")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Theme Ledger]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Theme Ledger]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Fourteen themes, each with a claim phrased so that it could be an answer, and the
    scene that proves it. Use the middle column for the sentence and the right-hand
    column for the evidence: a theme without a scene is a guess.
  ]
]

#v(5pt)

== E.1 The Fourteen Themes

#table(
  columns: (0.95fr, 1.55fr, 1.55fr, 1.55fr),
  inset: (x: 4.2pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[The claim],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Harvest / Othello],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Faceless / Lonely / Native],
  ),
  [*Corruption*], [a system with roles, not a single villain], [the appointment, the acquittal and the graded sentences], [Faceless: the institutions with no slot for a name],
  [*Poverty*], [it does not cause crime; it removes the alternatives to it], [Aloho's unemployment], [Lonely: the trade that buys the refusal; Native: the one-room flat],
  [*Betrayal*], [it comes from inside the household or the friendship], [Ochuole's introduction], [Faceless: Kpakpo; Native: Bigger and Bessie],
  [*Jealousy*], [a technique of manipulation before it is a feeling], [Othello: the temptation scene], [Native: the fear that drives the first killing],
  [*Appearance and reality*], [the honest man is the plotter; the charity is the rent], [Iago called honest throughout], [Faceless: the kayayoo label; Harvest: the protocol officer title],
  [*Race*], [a structure of seeing, not a set of insults], [the black ram and the thick lips], [Native: the newsreel, the press, Britten's questions],
  [*Patriarchy*], [the community polices a woman's body through custom], [Othello: the public blow], [Lonely: the rites and the cap],
  [*Resistance*], [one public refusal can be a whole politics], [Emilia's confession], [Lonely: the cap-picking refusal],
  [*Justice*], [the trial explains a life and then ends it], [Harvest: the courtroom ending], [Native: Max's speech and the sentence],
  [*Loneliness*], [it is produced socially, not suffered privately], [Othello: the isolation of the general], [Lonely: the empty compound; Faceless: the street child],
  [*Duty and reputation*], [a name is worth more than comfort to those who have one], [Cassio's lament], [Harvest: the clerk who keeps the vouchers],
  [*Tradition and change*], [custom is defended by the people who profit from it], [Venice's law against the marriage], [Lonely: the elders' threat],
  [*Guilt and conscience*], [the person who tells the truth pays for it], [Emilia], [Faceless: Kabria's partial rescue; Harvest: Ogeyi's report],
  [*Violence*], [it is the only power the powerless are permitted], [Othello's murder of Desdemona], [Native: the rat, Mary, Bessie],
)

== E.2 Three Theme Sentences That Score

#concept-box("Say the claim, then the scene")[
  *On corruption.* Ogbeche's play argues that corruption is a system with graded roles rather than the vice of one man, and the proof is the ending, where the sentences are proportioned to the part each character played: twenty-five years for the Minister, twenty for the judge and the commissioner, ten for the recruiter and the hotel keeper, five for the clerk.

  *On jealousy.* Shakespeare makes jealousy a technique before he makes it an emotion: Iago manufactures it out of a pause, a repetition and a piece of cloth, and the temptation scene shows the manufacture step by step, which is why Othello's jealousy is a demonstration rather than a temperament.

  *On invisibility.* Darko's novel argues that a poor child becomes visible only when an institution has a use for her, and it proves the claim structurally: Fofo is seen as a boy, Baby T as a kayayoo, and only the handprint on the right cheek forces the city to treat one dead girl as a particular person.
]

#trap-box("The theme answer that loses the mark")[
  A sentence such as *the play shows that corruption is bad* is true, empty and unmarkable. The paper pays for *which* corruption, *how* it works, and *what scene* proves it. Write the claim with a verb of argument in it — argues, exposes, converts, withholds — and then name the scene.
]
