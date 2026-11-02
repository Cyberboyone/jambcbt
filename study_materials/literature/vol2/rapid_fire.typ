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
    Sixty one-line prompts with the answer beside each: twenty on plot and setting,
    sixteen on characters and their functions, twelve scenes the paper keeps returning
    to, and twelve pairs it keeps swapping. Cover the right-hand column with a sheet of
    paper and work down the list — ten seconds a line. Anything you cannot answer in ten
    seconds is a chapter to reread tonight.
  ]
]

#v(5pt)

== A.1 Twenty on Plot and Setting

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
  [The country of *Harvest of Corruption*], [Jacassa, with its capital at Jabu],
  [The hotel where Aloho meets the Minister], [the Akpara Hotel, owned by Madam Hoha],
  [Aloho's job title before the trip], [protocol officer],
  [What Aloho carries abroad], [cocaine, placed in her luggage without her knowledge],
  [Who arrests her], [customs officers at the airport],
  [Why the case collapses], [it is struck out for want of evidence, after the judge and the police are bought],
  [The two officers on the side of the case], [ACP Yakubu and Inspector Inaku],
  [Who supplies the vouchers], [Mr Ayo, a clerical assistant: 1.2 billion naira],
  [How Aloho dies], [in childbirth, after refusing an abortion],
  [The city of *Othello*'s first act], [Venice],
  [The island of the remaining four acts], [Cyprus],
  [What destroys the Turkish fleet], [a storm],
  [Desdemona's father], [Brabantio],
  [The city of *Faceless*], [Accra],
  [Where the body is found], [behind a Rasta hairdressing kiosk at Agbogbloshie market],
  [What the dead girl is first taken for], [a kayayoo, a head porter],
  [The village of *Lonely Days*], [Kufi, in the south-west of Nigeria],
  [Yaremi's husband and his trade], [Ajumobi, a hunter],
  [The city of *Native Son*], [Chicago, in the late 1930s],
  [The three books of *Native Son*], [Fear, Flight, Fate],
)
]

== A.2 Sixteen on Characters and Functions

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function in one line]),
  [Ochuole, in *Harvest*], [the recruiter, who turns a school connection into a transaction],
  [Ogeyi, in *Harvest*], [the voice of reason who becomes the witness],
  [Chief Ade-Amaka, in *Harvest*], [the principal beneficiary and the play's largest sentence],
  [Iago, in *Othello*], [the manipulator who never does the visible deed himself],
  [Cassio, in *Othello*], [the honest lieutenant whose promotion begins the plot],
  [Emilia, in *Othello*], [the attendant whose confession releases the truth and costs her life],
  [Roderigo, in *Othello*], [the dupe who pays for a promise and is killed for his silence],
  [Fofo, in *Faceless*], [the sister who survives by disguise and asks the institution for help],
  [Maa Tsuru, in *Faceless*], [the mother whose love is real and whose protection fails],
  [Onko, in *Faceless*], [the abuser who kills and then removes himself from judgment],
  [Kabria, in *Faceless*], [the professional who insists that a dead child has a history],
  [Yaremi, in *Lonely Days*], [the widow who keeps her mourning and refuses the remarriage],
  [Lanwa, in *Lonely Days*], [the kinsman who argues that a widow is inheritable property],
  [Max, in *Native Son*], [the lawyer who explains Bigger to a court that has decided],
  [Bessie, in *Native Son*], [the second victim, and the one Bigger chooses],
)
]

== A.3 Twelve Scenes the Paper Returns To

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Scene],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it proves]),
  [The appointment at the Akpara Hotel], [that the job is a cover and the favour is a purchase],
  [The acquittal in *Harvest*], [that the system can be bought, which is worse than the arrest],
  [The courtroom ending of *Harvest*], [that the harvest is graded by participation],
  [Iago and Roderigo outside Brabantio's house], [that the play begins in accusation and racial disgust],
  [Cassio's brawl on the night of the celebration], [that a small vice can be converted into a large plot],
  [The temptation scene, Act 3 scene 3], [that jealousy can be manufactured out of a pause and a cloth],
  [The willow scene], [that the tragedy is domestic before it is violent],
  [The market kiosk in *Faceless*], [that the city classifies a poor child before it identifies her],
  [The radio phone-in], [that publicity is not justice],
  [The cap-picking ceremony], [that refusal is a public act with a public cost],
  [The furnace in *Native Son*], [that the evidence and the symbol are the same object],
  [The newsreel], [that the official story of a black life is told by people outside it],
)
]

== A.4 Twelve Pairs the Paper Keeps Swapping

#[
  #set text(size: 8.1pt)
#table(
  columns: (1.55fr, 2.65fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The pair],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How to keep them apart]),
  [Ochuole and Ogeyi], [Ochuole offers the job; Ogeyi warns against it],
  [Odili and Yakubu], [Odili is the bought judge; Yakubu is the unbribable officer],
  [Inaku and Ayo], [Inaku investigates; Ayo keeps the vouchers that make it provable],
  [Iago and Roderigo], [Iago plans; Roderigo pays and is killed],
  [Cassio and Roderigo], [Cassio is the lieutenant who is ruined; Roderigo is the suitor who is used],
  [Emilia and Bianca], [Emilia is the wife who tells the truth; Bianca is the mistress who is joked about],
  [Brabantio and Lodovico], [Brabantio is the father who dies of the marriage; Lodovico is Venice's witness],
  [Fofo and Baby T], [Fofo survives and is rescued halfway; Baby T is the body at the kiosk],
  [Kpakpo and Onko], [Kpakpo sells the child; Onko kills her and kills himself],
  [Maa Tsuru and Maami Broni], [Maa Tsuru is the mother; Maami Broni keeps the brothel],
  [Dedewe and Radeke], [Dedewe confesses; Radeke's dirge is called a lie],
  [Mary Dalton and Bessie Mears], [Mary is killed by accident; Bessie is killed on purpose],
)
]

#v(4pt)

#shortcut-box("How to use the pairs in the last fortnight")[
  + Cover the right-hand column and go down the list in *one pass*, marking each line known, shaky or blank.
  + Reread only the shaky and blank lines, then cover them again *the same day*.
  + Do the whole appendix in ten minutes at the start of a study session: recall first, reading second.
]
