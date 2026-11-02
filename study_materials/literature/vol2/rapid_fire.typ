#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sixty one-line prompts with the answer beside each: fifteen terms of criticism,
    fifteen techniques of staging and narration, fifteen text facts the paper returns
    to, and fifteen claims worth remembering. Cover the right-hand column with a sheet
    of paper and work down the list at ten seconds a line.
  ]
]

#v(5pt)

== A.1 Fifteen Terms of Criticism

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Theme], [what a text says about its subject, phrased as a claim],
  [Topic], [what a text is about, still without an argument],
  [Unit], [the scene or chapter a question anchors to],
  [Function], [what the part does for the whole],
  [Turn], [what has changed by the last line of a unit],
  [Foil], [a near-parallel whose difference makes the hero legible],
  [Confidant], [the figure who receives speech the hero cannot make public],
  [Witness], [the figure who sees, reports, and is changed by reporting],
  [Chorus], [the figure or body that speaks the world's judgement],
  [Arc], [the change in what a character will risk],
  [Counter-evidence], [the moment that resists your claim and must be answered],
  [Verdict], [the judgement a comparison reaches],
  [Motif], [a recurring image or phrase that gathers meaning],
  [Subtext], [what the words imply rather than state],
  [Criterion], [the standard by which “more effective” is judged],
)

]

== A.2 Fifteen Techniques

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Soliloquy], [a speech alone on stage, revealing inward thought],
  [Aside], [a remark the audience hears and the company does not],
  [Dramatic irony], [the audience knows what a character does not],
  [Stage direction], [the playwright's control of what is seen beyond dialogue],
  [Tableau], [a still grouping used to make a picture of a relationship],
  [Free indirect discourse], [third-person narration carrying a character's idiom],
  [Withholding], [the information the narration refuses to give],
  [In medias res], [starting inside the action, before explanation],
  [Frame narrative], [a story told inside another story's telling],
  [Dramatic question], [the uncertainty that keeps an audience watching],
  [Climax], [the point at which the central want can no longer be avoided],
  [Peripeteia], [the reversal of fortune],
  [Denouement], [the unknotting after the reversal],
  [Catharsis], [the purging of pity and fear],
  [Comic relief], [release of tension that sharpens the serious by contrast],
)

]

== A.3 Fifteen Text Facts

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Iago's rank], [ancient, or ensign],
  [Cassio's rank], [lieutenant, and he loses it in the brawl],
  [Who gives Iago the handkerchief], [Emilia, to please her husband],
  [Who finds the handkerchief first], [Emilia, in Desdemona's chamber],
  [Where the play's second half is set], [Cyprus],
  [The three books of *Native Son*], [Fear, Flight, Fate],
  [Who employs Bigger], [the Dalton family, who also own his mother's building],
  [The lawyer who defends Bigger], [Boris Max],
  [The city of *Harvest of Corruption*], [Jacassa],
  [The Minister's office], [External Relations],
  [The hotel in *Harvest of Corruption*], [Madam Hoha's Akpara Hotel],
  [The NGO in *Faceless*], [MUTE],
  [The slum in *Faceless*], [Sodom and Gomorrah],
  [The village of *Lonely Days*], [Kufi],
  [The rite Yaremi refuses], [the cap-picking ceremony],
)

]

== A.4 Fifteen Claims Worth Remembering

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Love in *Othello*], [what love becomes when it is asked to produce evidence],
  [Iago's method], [supply the interpretation, supply the appearance of proof, keep the witness silent],
  [Desdemona's speech], [plain sentences that nobody treats as evidence],
  [Othello's style], [a public fluency that collapses into exclamation and command],
  [Race in *Native Son*], [visibility without recognition],
  [The Daltons], [charity and rent drawn from the same income],
  [The furnace], [the house's system for consuming what it cannot acknowledge],
  [The ending of *Native Son*], [recognition granted, hope withheld],
  [Corruption in *Harvest*], [an employment agency that recruits what it will consume],
  [Justice in *Harvest*], [possible only because one officer is not for sale],
  [The title *Faceless*], [the girl no one recognised, and every child with no record],
  [The ending of *Faceless*], [one child saved where a system cannot be],
  [Custom in *Lonely Days*], [a procedure that turns private grief into public business],
  [Yaremi's refusal], [ownership of a name the village wants to reassign],
  [Comparison], [one claim tested on two texts and resolved in a verdict],
)

]
