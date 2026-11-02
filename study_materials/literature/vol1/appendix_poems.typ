#import "template.typ": *

#current-chapter.update("Appendix E: The Five Poems — A Preparation Worksheet")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Five Poems — A Preparation Worksheet]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Five Poems: A Preparation Worksheet]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Volume 1 teaches the method; Volume 3 applies it to each prescribed poem line by
    line. What follows is the bridge — the nine questions to answer about each poem,
    in writing, before Volume 3 is opened.
  ]
]

#v(5pt)

== E.1 What the Paper Can Ask About a Prescribed Poem

Four kinds of question, and each one requires a different kind of preparation.

#table(
  columns: (1.2fr, 2.2fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it sounds like],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What you must have ready],
  ),
  [*Form*], [“The poem is best described as …”], [its type, its stanza shape, its metre or free-verse status],
  [*Voice*], [“The speaker's attitude to X is …”], [who speaks, to whom, at what moment],
  [*Device*], [“The device in line 3 is …”], [a named device, its evidence, its effect],
  [*Theme*], [“The poem is chiefly concerned with …”], [a theme sentence, and the images that carry it],
)

// ============================================================================
== E.2 The Nine Questions to Answer in Writing

For each of the five poems, answer these nine on one side of A4. Do not consult
anything while you write; consult afterwards, and correct in a second colour.

#rule-box("The nine")[
  + *Type.* Lyric, ode, elegy, ballad, dramatic monologue, free verse — and the evidence for calling it that.
  + *Situation.* Who speaks, to whom, where, and at what moment?
  + *Shape.* How many stanzas, of how many lines, and what does the shape do?
  + *Turn.* Where does the poem change direction, and what marks the change?
  + *Three images.* The three you would quote if you were allowed three.
  + *Two devices.* One from the sound family and one from the comparison or statement family.
  + *Tone.* Two adjectives, and the words in the poem that justify each.
  + *Theme.* One sentence with a verb in it.
  + *One quotation.* Six to ten words you can reproduce exactly, and will use in an answer.
]

#table(
  columns: (1.6fr, 1.3fr, 2.4fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Poem],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Poet],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question to begin with],
  ),
  [*Vanity*], [Birago Diop], [what does the poem do with the border between the living and the dead?],
  [*Ambush*], [Gbemisola Adeoti], [who or what is lying in wait, and for whom?],
  [*The Anvil and the Hammer*], [Kofi Awoonor], [which two forces are named in the title, and which one the poem chooses?],
  [*Crossing the Bar*], [Alfred, Lord Tennyson], [what is the crossing, and who is the Pilot?],
  [*The Proud King*], [William Morris], [what does the king learn, and at what cost?],
)

#concept-box("Why the title is the first question")[
  A title is an interpretation the poet offers before the poem begins. *The Anvil and the
  Hammer* tells you that the poem is about two forces and their relation; *Crossing the Bar*
  tells you that the subject will be approached through a voyage. Answer the title question
  first and the poem's argument usually arrives with it.
]

// ============================================================================
== E.3 What to Do With a Poem You Cannot Place

Candidates lose marks on prescribed poems not because they have not read them but
because they cannot recall them under pressure. Two procedures fix that.

#shortcut-box("The five-line reconstruction")[
  + Write the *title* and the *poet*.
  + Write the *situation* in one line: who speaks, to whom, about what.
  + Write the *turn*: what changes, and where.
  + Write the *last line* as nearly as you can.
  + Then, and only then, look at the poem and correct the four lines.
]

#trap-box("Three ways to lose marks on a set poem")[
  *Confusing the poet with the speaker.* “Awoonor is angry with his father” is a claim about a persona, not about a man.

  *Quoting from memory without checking.* A misquoted line is worse than a described one; the examiner can see that you have not checked.

  *Answering with the story.* A poetry question about *The Proud King* wants the devices that carry the lesson, not a summary of the lesson.
]

// ============================================================================
== E.4 The Worksheet

#table(
  columns: (0.35fr, 2.6fr, 1.9fr),
  inset: (x: 5pt, y: 7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Your answer],
  ),
  [1], [Type, with evidence], [],
  [2], [Situation: speaker, listener, moment], [],
  [3], [Shape: stanzas and line lengths], [],
  [4], [The turn, and what marks it], [],
  [5], [Three images worth quoting], [],
  [6], [One sound device, with its effect], [],
  [7], [One comparison or statement device, with its effect], [],
  [8], [Tone: two adjectives, with the words that justify them], [],
  [9], [Theme as a sentence, and one quotation], [],
)

#v(4pt)

#text(size: 9.2pt)[Copy this grid five times — once per poem — and fill it from memory. A grid you can fill without the text is the difference between recognising a poem and knowing it. Volume 3 prints the same nine questions answered for each poem, so your grid becomes a revision comparison rather than a first attempt.]

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[E.5 If you have five minutes before the paper]
  #v(3pt)
  #text(size: 9.8pt)[
    Do not reread a poem. Write the title, the poet's name, the situation, and the turn —
    four lines per poem, twenty lines in all. What you can reconstruct in five minutes is
    what you actually know; what you cannot reconstruct, no amount of rereading in the
    queue will supply.
  ]
]
