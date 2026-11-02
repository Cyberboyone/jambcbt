#import "template.typ": *

#current-chapter.update("Appendix G: Comparison Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: Comparison Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Comparison Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Nine tables that put the confusable things side by side. Each one is a page you can
    photograph and revise from in a queue — which is the only kind of revision that
    happens in the last fortnight.
  ]
]

#v(5pt)

== G.1 The Three Genres

#table(
  columns: (1.05fr, 1.5fr, 1.5fr, 1.45fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Drama],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Prose],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Poetry],
  ),
  [*Arrives in*], [action, spoken by characters], [narration, through a voice], [compression, in lines],
  [*Evidence*], [dialogue, directions, costume, exits], [narrator, description, chapter order], [line, stanza, image, sound],
  [*Unit*], [the scene], [the chapter or paragraph], [the line],
  [*Question*], [who wants what, and who stops them?], [whose voice, and what does it hide?], [what is said twice — in words and in sound?],
  [*Danger*], [reading a play as a story], [reading the narrator as the author], [paraphrasing and ignoring form],
)

== G.2 The Drama Types

#table(
  columns: (1.0fr, 1.9fr, 1.6fr, 1.2fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Engine],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Ending],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Tell-tale sign],
  ),
  [*Tragedy*], [a hero's error and its consequences], [isolation or death], [the reversal and the recognition],
  [*Comedy*], [folly corrected, lovers united], [marriage or reunion], [an enlarged community],
  [*Tragicomedy*], [a real threat, carried to the edge], [earned survival], [fear, then allowed hope],
  [*Farce*], [improbable situation at speed], [a scramble resolved], [one sensible question would end it],
  [*Melodrama*], [persecuted virtue, unmasked villainy], [last-minute rescue], [characters who cannot contradict themselves],
  [*History*], [public crisis and private ambition], [the nation re-formed], [the state as a character],
  [*Morality*], [an allegory of the soul], [judgment], [characters named for abstractions],
  [*Absurd*], [the refusal of cause and effect], [no change], [circular dialogue; unexplained waiting],
)

== G.3 The Four Points of View

#table(
  columns: (1.15fr, 1.6fr, 1.4fr, 1.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Point of view],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Access],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Strengths],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Risks],
  ),
  [*First person*], [one account only], [intimacy, suspicion], [the reader is trapped in one version],
  [*Omniscient*], [every mind, every time], [panorama and judgment], [suspense is harder to sustain],
  [*Limited*], [one mind], [sympathy with a centre], [the world shrinks to one view],
  [*Objective*], [speech and action only], [drama without commentary], [motive must be inferred],
)

== G.4 Metre at a Glance

#table(
  columns: (0.9fr, 1.5fr, 1.6fr, 1.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Foot],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pattern],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Sound],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Typical use],
  ),
  [*Iamb*], [da-DUM], [walking, heartbeat], [the default of English verse; iambic pentameter],
  [*Trochee*], [DUM-da], [falling, chanting], [hymns, nursery rhyme, incantation],
  [*Anapaest*], [da-da-DUM], [galloping], [ballads, comic verse, swift narration],
  [*Dactyl*], [DUM-da-da], [rolling, declaiming], [epic, mock epic, oratory],
  [*Spondee*], [DUM-DUM], [weight], [a single foot, for emphasis only],
)

#text(size: 9.2pt)[Line lengths: *trimeter* three feet, *tetrameter* four, *pentameter* five, *hexameter* six. Name the foot and the count together — *iambic pentameter*, *trochaic tetrameter* — because either alone is half an answer.]

== G.5 The Sonnet Shapes

#table(
  columns: (1.25fr, 2.1fr, 1.8fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Rhyme scheme],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Turn],
  ),
  [*Petrarchan*], [*abbaabba* + *cdecde* (or *cdcdcd*)], [line 9: the sestet answers the octave],
  [*Shakespearean*], [*abab cdcd efef gg*], [line 13: the couplet turns or resolves],
  [*Spenserian*], [*abab bcbc cdcd ee*], [the linked quatrains delay the couplet],
)

== G.6 The Device Pairs

#table(
  columns: (1.35fr, 1.85fr, 1.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The pair],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[First],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Second],
  ),
  [*Metonymy / synecdoche*], [association — *the crown*], [part for whole — *all hands*],
  [*Simile / metaphor*], [*like* or *as*], [asserted identity],
  [*Paradox / oxymoron*], [a contradictory sentence], [a contradictory phrase],
  [*Bathos / anticlimax*], [a collapse in the writing], [a let-down in the arrangement],
  [*Verbal / dramatic irony*], [the speaker means the opposite], [the audience knows more],
  [*Personification / zoomorphism*], [human qualities to a thing], [animal qualities to a person],
  [*Apostrophe / personification*], [address to the absent], [qualities given to the non-human],
  [*Connotation / denotation*], [associations carried], [the literal meaning],
)

== G.7 The Prose Types

#table(
  columns: (1.3fr, 2.4fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Its mark],
  ),
  [*Novel*], [long prose fiction with plot, characters and world], [breadth of lives and years],
  [*Novella*], [prose fiction between story and novel], [one situation developed to its limit],
  [*Short story*], [a single episode with a turn], [compression and a reframing close],
  [*Bildungsroman*], [a novel of formation], [the self is the subject],
  [*Picaresque*], [the adventures of a rogue], [episodes; survival by wit],
  [*Epistolary*], [told in letters or documents], [voices without a narrator],
  [*Allegory*], [narrative with a systematic second meaning], [the second level is sustained],
  [*Fable*], [short tale with a stated moral], [the moral is delivered],
  [*Satire*], [prose that ridicules with a corrective aim], [an implied standard],
  [*Magical realism*], [the impossible reported as ordinary], [nobody in the book is surprised],
)

== G.8 The Structure Options

#table(
  columns: (1.2fr, 2.05fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Effect],
  ),
  [*Chronological*], [events in order], [clarity; time felt as weight],
  [*In medias res*], [opens in the middle], [immediate involvement],
  [*Flashback*], [the past interrupts], [the present is judged],
  [*Frame*], [a story inside a story], [the telling colours the tale],
  [*Episodic*], [linked episodes, often a journey], [range at the cost of tension],
  [*Circular*], [the ending returns to the opening], [the world unchanged, the self not],
)

== G.9 Character on Two Axes

#table(
  columns: (1.15fr, 1.85fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Static],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Dynamic],
  ),
  [*Flat*], [one trait, no change — the comic servant], [one trait, reversed — the miser who gives],
  [*Round*], [many traits, no change — the wise elder], [many traits, changed — the bildungsroman hero],
)

#concept-box("How to use the tables in the exam")[
  A comparison table is a machine for turning a vague stem into a specific answer. If a
  question asks *how the extract differs from a novel*, run down the *Evidence* row of G.1;
  if it asks *why the ending matters*, run down the *Ending* column of G.2. The rows are
  the questions the paper asks, which is why they are in this order.
]

#v(4pt)

== G.10 The Four Comparisons the Paper Actually Asks For

#table(
  columns: (1.35fr, 1.85fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The stem],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The table],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The row you need],
  ),
  [“How does this differ from a novel?”], [G.1], [*Evidence*],
  [“Why does the play end this way?”], [G.2], [*Ending*],
  [“Whose account are we reading?”], [G.3], [*Access*],
  [“What is the effect of the line's length?”], [G.4], [*Sound*],
)

#v(4pt)

== G.11 The Three-Minute Revision Route

#table(
  columns: (0.55fr, 2.3fr, 2.15fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 0.8pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Minute],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Look at],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Cover the right-hand column],
  ),
  [1], [G.1 and G.2], [recite the *Ending* and *Question* rows],
  [2], [G.3 and G.6], [recite the four points of view and four device pairs],
  [3], [G.4 and G.5], [recite the five feet and the three sonnet schemes],
)
