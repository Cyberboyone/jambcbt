#import "template.typ": *

#current-chapter.update("Appendix F: The Quotation Bank")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: The Quotation Bank]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Quotation Bank]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sixteen exact quotations from *Othello*, three from *Native Son*, and a third
    section for the texts where an exact quotation is not required: the phrase, the
    scene and the fact that will carry an answer instead.
  ]
]

#v(5pt)

== F.1 Othello — Sixteen Exact Quotations

#table(
  columns: (1.65fr, 1.05fr, 2.2fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Quotation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Speaker and place],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it proves],
  ),
  [“I am not what I am.”], [Iago, Act 1 scene 1], [the play's thesis about appearance, spoken by the man who profits from it],
  [“An old black ram / Is tupping your white ewe.”], [Iago to Brabantio, Act 1 scene 1], [that racial disgust is the first weapon used, before any fact is established],
  [“I hate the Moor.”], [Iago, Act 1 scene 3], [the motive stated as a bare fact, which makes the later reasons sound like additions],
  [“Reputation, reputation, reputation!”], [Cassio, Act 2 scene 3], [that a name is property to the man who has one, and a joke to the man who does not],
  [“O, beware, my lord, of jealousy; / It is the green-eyed monster.”], [Iago, Act 3 scene 3], [the warning that is also the instruction, and the play's central metaphor],
  [“Farewell the tranquil mind! farewell content!”], [Othello, Act 3 scene 3], [the moment the soldier's identity gives way to the husband's fear],
  [“I am your own for ever.”], [Iago, Act 3 scene 3], [the false oath that seals the temptation, spoken by the man who owns nothing],
  [“The handkerchief!”], [Othello, Act 3 scene 4], [that a piece of cloth has become the whole case],
  [“Sing willow, willow, willow.”], [Desdemona, Act 4 scene 3], [forsaken love, sung by a woman who does not yet know she has been forsaken],
  [“Put out the light, and then put out the light.”], [Othello, Act 5 scene 2], [the distinction between a lamp that can be relit and a life that cannot],
  [“She was too fond of her most filthy bargain.”], [Emilia, Act 5 scene 2], [the plain speech that breaks the tragedy's rhetoric and names the marriage],
  [“Demand me nothing. What you know, you know.”], [Iago, Act 5 scene 2], [the refusal to explain, which is the last cruelty of the character],
  [“Speak of me as I am; nothing extenuate.”], [Othello, Act 5 scene 2], [the self-portrait that the audience is asked to accept or refuse],
  [“One that loved not wisely but too well.”], [Othello, Act 5 scene 2], [the line the paper quotes most, and the line most often misread as an excuse],
  [“I kiss'd thee ere I kill'd thee.”], [Othello, Act 5 scene 2], [the union of tenderness and murder that the play has been building],
  [“The object poisons sight; / Let it be hid.”], [Lodovico, Act 5 scene 2], [Venice's response: concealment rather than understanding],
)

== F.2 Native Son — Three Exact Quotations

#table(
  columns: (1.95fr, 3.0fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Quotation],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it proves, and where to use it],
  ),
  [“Fear”, “Flight”, “Fate”], [the three book titles, and the whole structure of the novel in three words],
  [“I didn't want to kill!”], [Bigger to Max: the difference between intent and result, which is the novel's moral centre],
  [“But what I killed for, I am.”], [Bigger's last claim: identity produced by the crime, and the paradox the novel ends on],
)

== F.3 When You Cannot Quote Exactly

A set-text question rarely requires a quotation. It requires *evidence*, and evidence can
be a phrase, a scene or a fact. The table below gives the sentence to use when the exact
words will not come.

#table(
  columns: (1.05fr, 1.5fr, 2.55fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Text],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Cite this],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The sentence that carries it],
  ),
  [*Harvest of Corruption*], [the protocol officer title; “for want of evidence”; the graded sentences], [The appointment makes her a courier, and the acquittal, not the arrest, is the play's turn.],
  [*Faceless*], [the kayayoo label; the handprint on the right cheek; the Rasta kiosk], [The city has a category for the body before it has a name for the girl.],
  [*Lonely Days*], [the widow's road; the cap-picking; the shaved head], [The rites distribute pain unequally, and the cap is the moment the distribution is refused.],
  [*Native Son*], [the rat; the furnace; the newsreel; the two deaths], [Mary is killed by panic and Bessie by calculation, and the novel is built on the difference.],
  [*Othello*], [the handkerchief; the temptation scene; the willow scene], [Iago manufactures the proof out of a pause and a piece of cloth, and the play shows the manufacture.],
)

#shortcut-box("The three-second quotation test")[
  + If you can say the *speaker, the scene and what it does*, you do not need the exact words.
  + If you can say the words but not the scene, you are reciting and not answering.
  + If the option offers a quotation you do not recognise, check the *place* first: a real line in the wrong scene is a classic distractor.
]
