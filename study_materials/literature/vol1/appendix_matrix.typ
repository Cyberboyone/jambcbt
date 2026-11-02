#import "template.typ": *

#current-chapter.update("Appendix F: The Syllabus, Mapped")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: The Syllabus, Mapped]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Syllabus, Mapped]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every section of the Literature syllabus, where this volume teaches it, how many
    questions it has carried, and the exact terms the syllabus names — so that nothing
    in the paper can arrive unnamed.
  ]
]

#v(5pt)

== F.1 Section by Section

#table(
  columns: (0.35fr, 2.0fr, 1.15fr, 0.6fr, 0.95fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[§],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The syllabus asks for],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Taught in],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Qs],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Status],
  ),
  [1], [General principles: literature and its genres, the levels of reading and the terms of value], [1.1–1.5], [4], [covered],
  [2], [Drama: types (tragedy, comedy, tragicomedy, farce, melodrama) and dramatic techniques], [2.1–2.7, 3.1–3.7], [6], [covered],
  [3], [Prose: the novel and the short story, narrative technique, characterisation, setting], [4.1–4.7], [8], [covered],
  [4], [Poetry: types (sonnet, ode, lyric, elegy, ballad, panegyric, epic, blank verse) and devices of sound and imagery], [5.1–5.7], [5], [covered],
  [5], [Literary appreciation: unseen passages and extracts from the three genres], [6.6, and Appendix J], [6], [covered],
)

#text(size: 9.3pt)[The question counts in the fourth column are the working weights this volume is built to: they reproduce the proportions of the paper rather than an equal split, because prose and unseen appreciation together carry roughly a third of the marks. A candidate who revises the chapters in the order of their weights is revising in the order of the marks.]

// ============================================================================
== F.2 The Terms the Syllabus Names

These are the terms a definition question can use. If you cannot give a one-line
definition of every one of them, the chapter beside it is the chapter to reread.

#table(
  columns: (1.3fr, 2.55fr, 1.35fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 0.8pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The one-line definition],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Chapter],
  ),
  [*Tragedy*], [a person of standing falls through an action he cannot undo], [2.2],
  [*Comedy*], [a play whose ending enlarges the community], [2.3],
  [*Tragicomedy*], [a real threat survived by an earned escape], [2.4],
  [*Farce*], [comedy of improbable situation at speed], [2.4],
  [*Melodrama*], [serious action with simplified virtue and villainy], [2.4],
  [*Satire*], [ridicule with a corrective aim], [2.3, 6.3],
  [*Hamartia*], [the error of judgment that begins the fall], [2.2],
  [*Hubris*], [overweening pride], [2.2],
  [*Peripeteia*], [the reversal of fortune], [2.2],
  [*Anagnorisis*], [the recognition of what has been done], [2.2],
  [*Catharsis*], [the audience's purging of pity and fear], [2.2],
  [*Soliloquy*], [a speech delivered alone on stage], [3.2],
  [*Monologue*], [a long speech with others present], [3.2],
  [*Aside*], [a short speech heard by the audience only], [3.2],
  [*Dramatic irony*], [the audience knows what a character does not], [3.4],
  [*Stage direction*], [the playwright's instruction for action, manner or silence], [3.3],
  [*Narrator*], [the constructed voice that tells a narrative], [4.1],
  [*Point of view*], [the position from which a narrative is told], [4.2],
  [*Omniscient*], [a narrator who enters every mind], [4.2],
  [*Limited*], [a narrator confined to one mind], [4.2],
  [*Objective*], [a narrator who reports only speech and action], [4.2],
  [*Free indirect style*], [a character's attitude in the narrator's third person], [4.2],
  [*Characterisation*], [the building of a character from action, speech and report], [4.3],
  [*Flat / round*], [incapable of surprise / capable of contradiction], [4.3],
  [*Static / dynamic*], [unchanged / changed by events], [4.3],
  [*Foil*], [a character placed to contrast with another], [4.3],
  [*Setting*], [place, time and social world as pressure], [4.4],
  [*Structure*], [the arrangement of a text's parts], [4.5, 5.7],
  [*Motif*], [a recurring image that gathers meaning], [4.5],
  [*Line*], [the unit of composition in poetry], [5.1],
  [*Metre*], [a pattern of stressed and unstressed syllables], [5.4],
  [*Foot*], [a metrical unit of two or three syllables], [5.4],
  [*Iambic pentameter*], [five iambic feet in a line], [5.4],
  [*Blank verse*], [unrhymed iambic pentameter], [5.4],
  [*Free verse*], [poetry without regular metre or rhyme], [5.4],
  [*Rhyme scheme*], [the pattern of end rhymes, lettered by sound], [5.5],
  [*Enjambment*], [the sense running past the line end], [5.1],
  [*Caesura*], [a pause inside a line], [5.1],
  [*Volta*], [the turn of a poem's argument], [5.7],
  [*Sonnet*], [fourteen pentameter lines with a turn], [5.3],
  [*Ode*], [a formal lyric addressed to a person, object or idea], [5.3],
  [*Elegy*], [a poem of mourning], [5.3],
  [*Ballad*], [a narrative song in short stanzas], [5.3],
  [*Epic*], [a long heroic narrative with a nation at stake], [5.3],
  [*Dramatic monologue*], [a character's speech to a silent listener], [5.3],
  [*Persona*], [the voice constructed within a text], [5.2],
  [*Imagery*], [language that appeals to the senses], [6.2],
  [*Simile*], [a comparison using *like* or *as*], [6.2],
  [*Metaphor*], [a comparison asserting identity], [6.2],
  [*Personification*], [human qualities given to the non-human], [6.2],
  [*Metonymy*], [an associate stands for the thing], [6.2],
  [*Synecdoche*], [a part stands for the whole], [6.2],
  [*Hyperbole*], [deliberate exaggeration], [6.3],
  [*Litotes*], [understatement by denying the opposite], [6.3],
  [*Paradox*], [a contradictory statement that is true], [6.3],
  [*Oxymoron*], [two contradictory words joined], [6.3],
  [*Euphemism*], [a mild term for a harsh thing], [6.3],
  [*Alliteration*], [repetition of initial consonants], [6.4],
  [*Assonance*], [repetition of vowel sounds], [6.4],
  [*Consonance*], [repetition of final consonants], [6.4],
  [*Onomatopoeia*], [a word imitating the sound it names], [6.4],
  [*Refrain*], [a line repeated at intervals], [6.4],
)

#trap-box("The three terms candidates define by example instead of by meaning")[
  *Irony.* “It is when you say something but you mean something else” is a description of one kind — verbal irony — and it leaves out the dramatic and situational kinds. Define the gap, then name the three places it can open.

  *Symbol.* “It is a thing that represents another thing” is circular. Add *concrete, and carrying a meaning the text does not state*.

  *Satire.* “It is when you mock someone” is mockery, not satire. The corrective aim and the implied standard are what make the term.
]
