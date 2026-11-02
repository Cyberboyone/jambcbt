#import "template.typ": *

#current-chapter.update("Appendix J: Thirty Traps")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: Thirty Traps]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Thirty Traps]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every item here is an error that candidates actually make on these five texts. Read
    the left-hand column, cover the right, and see whether you would have walked into it.
  ]
]

#v(5pt)

== J.1 Names and Roles

#[
  #set text(size: 8.6pt)
#table(
  columns: (2.3fr, 2.6fr),
  inset: (x: 5pt, y: 3.7pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The correction]),
  [Thinking Ochuole is the innocent friend], [Ochuole recruits; Ogeyi warns. The two names are the play's first distinction.],
  [Making Odili the honest policeman], [Odili is the bought judge. Yakubu is the honest officer; Inaku investigates.],
  [Giving the vouchers to Yakubu], [Mr Ayo, the clerical assistant, supplies the vouchers.],
  [Making Lanwa a drummer], [Lanwa is the kinsman who claims inheritance. Ayanwale is the drummer.],
  [Making Olonade a relative], [Olonade is a suitor who boasts; the kinship claim belongs to Lanwa.],
  [Confusing Dedewe and Radeke], [Dedewe confesses; Radeke sings the dirge that is called a lie.],
  [Giving the libation to Dedewe], [Fayoyin licks the libation. Three widows, three humiliations.],
  [Making Britten the prosecutor], [Britten investigates, Buckley prosecutes, Max defends.],
  [Making Max the State's Attorney], [Max is the defence; Buckley is the State's Attorney.],
  [Giving Jan Erlone the lawyer's role], [Jan is Mary's boyfriend and a Communist organiser.],
  [Confusing Cassio and Roderigo], [Cassio is the lieutenant who is demoted; Roderigo is the suitor who is used.],
  [Making Bianca Desdemona's maid], [Bianca is a courtesan in Cyprus; Emilia is the attendant.],
  [Giving Emilia the handkerchief to hide], [She finds it and gives it to Iago, which is why her confession matters.],
  [Making Maami Broni the mother], [Maa Tsuru is the mother; Maami Broni keeps the brothel.],
  [Confusing Kpakpo and Onko], [Kpakpo sells the child; Onko kills her and kills himself.],
)
]

== J.2 Scenes and Sequence

#[
  #set text(size: 8.6pt)
#table(
  columns: (2.3fr, 2.6fr),
  inset: (x: 5pt, y: 3.7pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The correction]),
  [Saying Aloho is jailed and dies in prison], [She is released, resigns, and dies in childbirth at home.],
  [Making the arrest the play's turning point], [The acquittal is the turn: it teaches her what the system is.],
  [Putting the temptation scene in Act 2], [It is Act 3 scene 3; Act 2 is the brawl and the demotion.],
  [Making Cassio's brawl the turning point], [The brawl is the precondition; the temptation is the turn.],
  [Saying Othello kills Desdemona with a sword], [He smothers her; the sword is used on himself.],
  [Making Iago kill Desdemona], [Othello kills her, and Iago kills Emilia and Roderigo.],
  [Saying the Turkish fleet lands], [A storm destroys it; the war ends before the plot begins.],
  [Saying Bigger plans to kill Mary], [The killing is accidental: the intent was silence.],
  [Making Bessie's death the accident], [Bessie's death is deliberate; Mary's is the accident.],
  [Saying Bigger is acquitted], [He is convicted and sentenced to death.],
  [Saying Onko is tried], [He kills himself, and the case closes without a trial.],
  [Saying Fofo is rescued and Odarley too], [Only Fofo is taken in; Odarley is left, and the novel insists on it.],
  [Saying Yaremi marries Lanwa at the end], [She refuses all three suitors and removes the widow's garment.],
  [Saying Yaremi leaves Kufi], [She stays, which is what makes the ending a defiance rather than an escape.],
  [Placing Yaremi's refusal in private], [The cap-picking is public, before elders and suitors, which is why it is political.],
)
]

== J.3 Reading and Technique

#[
  #set text(size: 8.6pt)
#table(
  columns: (2.3fr, 2.6fr),
  inset: (x: 5pt, y: 3.7pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The correction]),
  [Choosing the theme when the stem asks for the scene], [Locate first, judge second. A true sentence can answer a different question.],
  [Answering from a film], [Adaptations change scene order and who is present, and the paper asks about the text.],
  [Reading the options before locating], [Recognition is not knowledge; locate the moment, then read.],
  [Confusing the writer with a character], [Biography enters only when the stem names the writer.],
  [Calling every recurring object a symbol without a function], [A symbol has a job in the plot; name the job.],
  [Offering an adjective as a character answer], [An attitude needs a scene. Kind is not an answer; the roof repair is.],
  [Treating stage directions as decoration], [They carry place and presence, which is exactly what scene questions test.],
  [Treating free indirect style as first person], [The narration stays third person and takes on a character's mind.],
  [Ignoring the entrance verse in Lonely Days], [It states the thesis before the story, and questions about it are questions about the novel's argument.],
  [Treating the three book titles of Native Son as labels], [Fear, Flight and Fate are the structure; a question about them is a question about the plot.],
)
]
