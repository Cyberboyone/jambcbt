#import "template.typ": *

#current-chapter.update("Appendix H: Eight Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Eight Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Eight Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight questions from the papers, each with the half-answer most candidates write,
    the answer that earns the mark, and the one move that makes the difference.
  ]
]

#v(4pt)

#text(size: 9.2pt)[The difference between these pairs is never length. In every case the model answer does one thing the half-answer does not: it *names the function* and *quotes the word* that carries it. Read the pairs as demonstrations of that single move.]

== H.1 On Vanity

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. What does the title Vanity mean?*

    *Half-answer:* It means the people are proud of themselves.

    *Model:* Vanity here means futility rather than conceit. The people's weeping comes after they have already failed to hear their dead — "And since we did not understand our dead" — so the grief of the last stanza cannot undo the loss. The title judges the lateness of the mourning, not the people's self-regard.],
  [the model takes the older sense of the word, then proves it from the last stanza's grammar],
)

== H.2 On Ambush

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. Comment on the use of "blue Peter" in stanza one.*

    *Half-answer:* Blue Peter is a flag on the ships.

    *Model:* Blue Peter is the maritime signal that a vessel is about to sail, and the poem flies it over "empty ships". The signal announces a departure that cannot happen, so the stanza's image of defeat is carried by an irony in the language itself — the same irony that the triple pun on Peter and petered out completes three lines later.],
  [the model knows the term precisely and then reads the contradiction in the scene],
)

== H.3 On The Anvil and the Hammer

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. What does the poem ask of the past?*

    *Half-answer:* The poet wants to keep the old ways.

    *Model:* The poem asks for the past to be sewn *under* the new garment, not worn instead of it. The preposition does the arguing: the old days are to be hidden, supporting and held against the skin, which is why the request is made to the fathers as a craft and not to God as a miracle. The final image of the sea, holding every river's sound, confirms that the mixture is not a loss.],
  [the model answers with the preposition, because that is where the poem's politics live],
)

== H.4 On Crossing the Bar

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. Describe the tone of Crossing the Bar.*

    *Half-answer:* The tone is sad because the poet is going to die.

    *Model:* The tone is calm acceptance with hope. The speaker answers a summons he calls "clear", prays for a tide "too full for sound and foam", and asks that there be no sadness at his embarkation. The one blunt line — "And after that the dark!" — is immediately followed by the hope of seeing his Pilot "face to face". Nothing in the poem resists the crossing, which is why "sad" is too simple and "fearful" is wrong.],
  [the model names the attitude in three words and then lets three quotations prove each part],
)

== H.5 On The Proud King

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. Why does the priest recognise the king when the queen does not?*

    *Half-answer:* Because the priest is a good man and the queen is not.

    *Model:* The poem makes recognition moral rather than visual. The queen knows the king as a rank, and the rank has been taken; the priest knows him as a soul, which is why he sees him only after the cry "give me back myself again". The order matters: Jovinian must ask for himself before anyone can recognise him, and the one who recognises him is the one whose sight was never fixed on the throne.],
  [the model explains the *order* of the scenes, which is what a scene question is really testing],
)

== H.6 A comparison answer

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. Both Vanity and Ambush present a people whose speech fails. How do the poems differ?*

    *Half-answer:* Vanity is about dead people and Ambush is about animals.

    *Model:* Both poems present speech that fails, but they place the cause differently. In Vanity the failure is the people's own deafness — "since we did not understand our dead" — so the poem is a confession spoken in the first person plural. In Ambush the failure is external: the whale takes the line, the tiger takes the road, the hawk takes the air, and the land waits "patiently" for anyone who turns towards the shore. Vanity therefore accuses the community, whereas Ambush accuses the country, and that difference in blame is the difference between a lament and a siege.],
  [the model says *whereas* and then explains what the difference means],
)

== H.7 An unseen-poem answer

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. What is the effect of the last two lines of the unseen poem?*

    *Half-answer:* They are a sad ending.

    *Model:* The last two lines give the failure a content instead of a consolation: the buckets are "empty, and the evening in them". The syntax puts the emptiness first and then fills it with light and time, so the poem ends on dignity rather than on loss, and the grandmother's sentence — "a dry well is still a well" — is answered by an image rather than argued with.],
  [the model quotes the exact words and shows how the syntax produces the effect],
)

== H.8 A form answer

#table(
  columns: (3.35fr, 1.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question and answers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The move],
  ),
  [*Q. Why is rhyme royal an appropriate form for The Proud King?*

    *Half-answer:* Because it rhymes.

    *Model:* Rhyme royal is seven lines rhymed ababbcc in iambic pentameter, and its closing couplet gives every stanza a small completion. That is exactly what a narrative of twelve scenes needs: each stanza can carry a scene and close it, so the poem can move from the boast to the gate to the cry without losing shape. The form is also Chaucer's, which places Morris's old story in an old English tradition — an archaism that suits a tale about a pride that is always new.],
  [the model describes the stanza, then says what its shape makes possible],
)

#concept-box("The one move, stated plainly")[
  A half-answer names a thing. A model answer names the thing, quotes the word that carries
  it, and says what the word is doing at that point in the poem. That is the whole difference,
  and it is worth practising on the eight pairs above until the pattern is automatic.
]
