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
    Sixty one-line prompts with the answer beside each: twenty definitions, twelve
    forms, sixteen devices and twelve pairs that the paper keeps swapping. Cover the
    right-hand column with a sheet of paper and work down the list — ten seconds a
    line. Anything you cannot answer in ten seconds is a chapter to reread tonight.
  ]
]

#v(5pt)

== A.1 Twenty Definitions

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
  [Literature], [language organised so that the way it is said carries meaning],
  [Genre], [a family of texts sharing a way of reaching the reader],
  [Theme], [what a text says about its subject, phrased as a claim],
  [Subject], [what a text is about],
  [Tone], [the writer's attitude to the subject],
  [Mood], [the feeling produced in the reader],
  [Persona], [the voice constructed within a text],
  [Diction], [the choice of words],
  [Style], [the pattern of choices that makes a writer's manner],
  [Structure], [the arrangement of a text's parts],
  [Plot], [events in the order the text presents them],
  [Story], [events in the chronological order they happened],
  [Setting], [place, time and social world, as pressures on the characters],
  [Motif], [an image or phrase that recurs and gathers meaning],
  [Symbol], [a concrete thing carrying unstated abstract meaning],
  [Dramatic irony], [the audience knows what a character does not],
  [Hamartia], [the error of judgment that begins a tragic fall],
  [Catharsis], [the audience's purging of pity and fear],
  [Enjambment], [the sense running past the line end],
  [Dramatic monologue], [a character's speech to a silent listener at a critical moment],
)
]

#v(9pt)

#pagebreak()

== A.2 Twelve Forms

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Form],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Its defining mark]),
  [Tragedy], [a person of standing falls through an action he cannot undo],
  [Comedy], [an ending that enlarges the community],
  [Tragicomedy], [a real threat survived by an earned escape],
  [Farce], [improbable situation at speed],
  [Melodrama], [simplified virtue and villainy, with a rescue],
  [Sonnet], [fourteen pentameter lines with a turn],
  [Elegy], [a poem of mourning, with praise and attempted consolation],
  [Ballad], [a narrative song in short stanzas, often with a refrain],
  [Ode], [a formal lyric addressed to a person, object or idea],
  [Epic], [a long heroic narrative with a nation at stake],
  [Bildungsroman], [a novel of formation from childhood to maturity],
  [Allegory], [a story with a systematic second meaning],
)
]

== A.3 Sixteen Devices

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.5fr, 2.7fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Device],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[A line to remember it by]),
  [Simile], [“the road lay down *like* a patient animal”],
  [Metaphor], [“the city *is* a stone lung”],
  [Personification], [“the wind wept”],
  [Apostrophe], [“O Death, be not proud”],
  [Metonymy], [“the crown has not spoken”],
  [Synecdoche], [“all hands on deck”],
  [Hyperbole], [“I have told you a thousand times”],
  [Litotes], [“she was not displeased”],
  [Oxymoron], [“bitter sweet”],
  [Paradox], [“the child is father of the man”],
  [Pun], [“ask for me tomorrow, and you shall find me a grave man”],
  [Euphemism], [“he passed on”],
  [Alliteration], [“the thick thorns thrust through”],
  [Assonance], [“the low moan of the horn”],
  [Onomatopoeia], [“the clang of the gate”],
  [Refrain], [a line returning at intervals, changed by what has happened between],
)
]

#v(9pt)

== A.4 Twelve Pairs the Paper Keeps Swapping

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.55fr, 2.65fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The pair],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The difference in one line]),
  [Metonymy / synecdoche], [association versus part-for-whole],
  [Simile / metaphor], [*like* or *as* versus asserted identity],
  [Paradox / oxymoron], [a contradictory sentence versus a contradictory phrase],
  [Bathos / anticlimax], [a collapse in the writing versus a let-down in the arrangement],
  [Tone / mood], [the writer's attitude versus the reader's feeling],
  [Subject / theme], [the topic versus the claim made about it],
  [Flat / dynamic], [no surprise versus change],
  [Soliloquy / aside], [alone on stage versus in company but unheard],
  [Blank verse / free verse], [metred and unrhymed versus neither],
  [Dramatic / verbal irony], [the audience's knowledge versus the speaker's meaning],
  [Round / dynamic], [capable of contradiction versus changed by events],
  [Frame / flashback], [a story containing a story versus a scene from earlier interrupting],
)
]

#v(8pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[How to use this appendix]
  #v(3pt)
  #text(size: 9.9pt)[
    Ten minutes a day for the last three weeks. Cover the right column, work down a
    section, mark what you missed, and reread only the section you missed. Do not
    read the whole appendix twice — the pairs you know are wasting your time, and the
    four you do not know are the only four that will change your score.
  ]
]

#v(4pt)

== A.5 Twelve Half-Lines Worth Recognising

#[
  #set text(size: 8.1pt)
#table(
  columns: (2.6fr, 1.6fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The half-line],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it signals]),
  [*the dark is generous*], [a paradox that will be qualified],
  [*not unkind*], [litotes, and a narrator being careful],
  [*all hands*], [synecdoche, and a crew rather than a person],
  [*the crown*], [metonymy, and an institution speaking],
  [*O Death*], [apostrophe, and a poem addressing what cannot answer],
  [*like a patient animal*], [simile, and a landscape made submissive],
  [*bitter sweet*], [oxymoron, and a feeling with two sides],
  [*I have told you*], [hyperbole when it is followed by a number],
  [*they gave me*], [repetition that will turn into irony],
  [*still, still*], [a refrain, and a grief that will not move],
  [*and yet*], [the volta's commonest signal],
  [*nobody asked*], [a closing passive that forecloses the story],
)
]
