#import "template.typ": *
#import "_toc.typ": toc-rows

// Set before the cover, so the first inside page carries the right running head.
#current-chapter.update("Series Overview & UTME Strategy Guide")

// ============================================================================
// COVER PAGE (Full-Bleed Single A4 Page)
// ============================================================================
#page(
  margin: 0pt,
  header: none,
  footer: none,
  fill: rgb("#07192F"),
)[
  #rect(width: 100%, height: 9mm, fill: jamb-bright)

  #pad(x: 20mm, top: 10mm)[
    #grid(
      columns: (56pt, 1fr, auto),
      column-gutter: 12pt,
      align: (left + horizon, left + horizon, right + horizon),
      box(
        radius: 11pt,
        clip: true,
        stroke: 1.5pt + rgb("#34D399"),
        image("../../../assets/icon.png", width: 52pt),
      ),
      [
        #text(font: "DejaVu Sans", size: 12.5pt, weight: "bold", fill: rgb("#34D399"))[JAMB CBT MASTER STUDY SERIES] \
        #v(2pt)
        #text(font: "DejaVu Sans", size: 9.2pt, fill: rgb("#CBD5E1"))[100% Official UTME Syllabus Aligned • High-Yield Exam Edition]
      ],
      box(
        fill: jamb-bright,
        radius: 6pt,
        inset: (x: 11pt, y: 6pt),
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 1],
      ),
    )

    #v(6mm)

    #box(
      fill: rgb("#064E3B"),
      stroke: 1pt + rgb("#34D399"),
      radius: 20pt,
      inset: (x: 14pt, y: 5pt),
      text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#A7F3D0"))[
        UNIFIED TERTIARY MATRICULATION EXAMINATION (UTME)
      ],
    )

    #v(4mm)

    #text(font: "DejaVu Sans", size: 34pt, weight: "bold", fill: white)[LITERATURE]
    #v(1mm)
    #text(font: "DejaVu Sans", size: 34pt, weight: "bold", fill: white)[IN ENGLISH]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 1: The Principles — Drama, Prose, Poetry and Unseen Appreciation
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      The three genres and the question each one sets, the types of drama and the
      shape of a plot, the techniques of the stage — soliloquy, aside, dramatic
      irony, stagecraft — the types of prose and every point of view, the types of
      poetry and a six-step method for reading a poem, and the full vocabulary of
      literary devices with the method for an unseen extract. Twenty diagrams, six
      chapter recaps, twenty-eight worked examples, and four hundred and seventy-nine
      practice questions, each with the reasoning behind the answer and a note on
      every option.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ The Question Behind the Question]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          A Literature question is never "what happens". It is "who is speaking,
          from where, in what form, and to what effect". This volume teaches that
          sentence until it is the first thing you write.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Devices Named and Used]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Sixty figures of speech in five families, each with the test that tells
          it from its neighbour — because the paper's favourite trap is two
          devices that sound alike and mean different things.
        ]
      ],
    )

    #v(10mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Literature in English • Volume 1
      ],
      text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#34D399"))[
        2026 Edition
      ],
    )
  ]
]

// ============================================================================
// PAGE: THE SERIES MAP
// ============================================================================
#pagebreak()

= The Literature Series, and Where This Volume Sits

Literature in English is the paper that cannot be crammed, and cannot be passed
by reading alone. It asks two things at once: *do you know the vocabulary* —
tragedy, aside, synecdoche, stream of consciousness — and *can you use it on a
text you have never seen*. A candidate who has memorised sixty definitions and
cannot apply one of them to four lines of an unseen poem scores in the twenties.
A candidate who has read nothing but can name what a line is doing scores in the
fifties.

This series is built around that split.

#v(4pt)

#table(
  columns: (0.5fr, 1.6fr, 2.3fr, 0.95fr),
  inset: (x: 6pt, y: 5pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[It covers],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Status],
  ),
  [*1*], [The Principles], [the three genres, the types, the techniques, the devices, and the unseen extract — syllabus sections 1 to 5], [*this volume*],
  [*2*], [The Drama and the Prose], [*Harvest of Corruption*, *Othello*, *Faceless*, *Lonely Days*, *Native Son*: plot, character, theme and technique, text by text], [in preparation],
  [*3*], [The Poems and the Mock Papers], [the five prescribed poems line by line, a quotation bank, and four full 60-question papers], [in preparation],
)

#v(6pt)

#concept-box("Why the principles come first")[
  Roughly two-thirds of a Literature paper is decided before the examiner names a
  text: the genre questions, the device questions, the "what is the effect of
  this line" questions and the unseen extract. Those are what this volume
  teaches, and they are the marks a candidate can secure whatever the
  prescribed list turns out to be. The texts change; the method does not.
]

#v(6pt)

The 2026 prescribed list, for the record, is *Harvest of Corruption* (Frank
Ogodo Ogbeche) and *Othello* (Shakespeare) for drama; *Faceless* (Amma Darko),
*Lonely Days* (Bayo Adebowale) and *Native Son* (Richard Wright) for prose; and
five poems — *Vanity* (Birago Diop), *Ambush* (Gbemisola Adeoti), *The Anvil and
the Hammer* (Kofi Awoonor), *Crossing the Bar* (Tennyson) and *The Proud King*
(Morris). Volume 2 and Volume 3 take them one at a time. This volume teaches you
how to read anything, which is what the unseen section demands and what the set
texts reward.

// ============================================================================
// PAGE: THE SUBJECT AT A GLANCE
// ============================================================================
#pagebreak()

= The Subject at a Glance

#text(size: 9.6pt)[The syllabus is five sections, and the paper draws on all five in every sitting. The weights below are what the questions actually do, not what the syllabus promises.]

#v(4pt)

#table(
  columns: (0.4fr, 1.5fr, 2.6fr, 0.8fr),
  inset: (x: 6pt, y: 5pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[§],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What it asks],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Ch.],
  ),
  [1], [Drama], [types (tragedy, comedy, tragicomedy, melodrama, farce, opera); techniques (characterisation, dialogue, flashback, mime, costume, music and dance, décor, acts and scenes, soliloquy and aside); the prescribed plays], [2–3],
  [2], [Prose], [types (novel, novella, short story; biography, autobiography, memoir; faction); narrative technique (point of view, characterisation, language); textual analysis (theme, plot, setting, socio-political context); the prescribed novels], [4],
  [3], [Poetry], [types (sonnet, ode, lyric, elegy, ballad, panegyric, epic, blank verse); devices (imagery, sound, diction, persona); appreciation (theme, relevance, style); the prescribed poems], [5],
  [4], [General Literary Principles], [the terms the paper defines and applies: foreshadowing, suspense, theatre, monologue, dialogue, soliloquy, symbolism, protagonist, antagonist, satire, stream of consciousness, synecdoche, metonymy], [6],
  [5], [Literary Appreciation], [unseen passages and extracts from drama, prose and poetry — the section no amount of set-text revision reaches], [6],
)

#v(6pt)

#concept-box("The one skill under all five")[
  Every section asks the same question in a different costume: *what is the
  writer doing with this, and how do you know?* A definition without an
  application earns half a mark; an application without a name earns half a
  mark. The full mark is the two together — "it is a metaphor, and it turns an
  abstract fear into something with a weight you could carry".
]

// ============================================================================
// PAGE: THE SIX CHAPTERS
// ============================================================================
#pagebreak()

= The Six Chapters at a Glance

#diagram-fig("diagrams/weights.svg",
  "The forty questions, by chapter. Principles and devices — Chapters 1 and 6 — carry more marks than any single set text.", width: 100%)

#v(2pt)

#table(
  columns: (0.4fr, 1.55fr, 2.5fr, 0.6fr),
  inset: (x: 6pt, y: 4.5pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it teaches],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Qs],
  ),
  [*1*], [What Literature Is, and How the Paper Tests It], [the three genres; the four levels of reading; the five sections; how a literary answer is marked; the vocabulary of value], [4],
  [*2*], [Drama: the Types and the Shape of a Play], [tragedy, comedy, tragicomedy, melodrama, farce, opera; plot structure; the unities; acts and scenes], [6],
  [*3*], [Drama: Technique on the Page and on the Stage], [characterisation; dialogue; soliloquy, aside and monologue; dramatic irony; flashback and mime; costume, décor, music and dance; stage directions], [6],
  [*4*], [Prose: Types and Narrative Technique], [novel, novella, short story; biography, autobiography, memoir, faction; the five points of view; round, flat, foil, stock; plot, setting, socio-political context], [8],
  [*5*], [Poetry: Types and the Reading Method], [sonnet, ode, lyric, elegy, ballad, panegyric, epic, blank verse; metre, rhyme and stanza; persona and tone; a six-step reading], [5],
  [*6*], [Literary Devices and Unseen Appreciation], [the five families of device; sixty figures of speech; three ironies; sound devices; the four moves on an unseen extract], [11],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[The weights are typical, not fixed. A sitting that leans on the prescribed texts moves three or four questions from Chapter 6 into Chapters 2 to 5; the method is the same and the revision order is not.]

// ============================================================================
// PAGE: THE MOVES THAT CARRY THE MARKS
// ============================================================================
#pagebreak()

== The Moves That Carry the Literature Marks

#text(size: 9.4pt)[Six habits separate a candidate who scores in the forties from one who scores in the twenties. None of them is knowledge; all of them are technique, and all of them can be learned in a fortnight.]

#v(4pt)

#table(
  columns: (1.25fr, 2.55fr, 1.5fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The move],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What it means in practice],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The mark it recovers],
  ),
  [*Name the genre first.*], [Before reading the options, decide whether the extract is drama, prose or poetry. The genre narrows the possible answers by half: a stage direction is never the answer to a poetry question.], [1–2 questions a paper],
  [*Quote the words.*], [Every claim about a device points at the words that carry it. "The alliteration of the *s* sounds" is an answer; "there is alliteration" is a guess.], [the difference between two adjacent options],
  [*Say what it does.*], [Finish the sentence with the effect: it slows the line, it exposes the speaker, it makes the abstraction physical. A device named and not used earns nothing.], [3–4 questions a paper],
  [*Follow the turn.*], [Find the word — *but*, *yet*, *till*, *then* — where the extract changes direction. Half the "tone" questions are answered at that hinge.], [2–3 questions a paper],
  [*Distrust the absolute.*], [Options containing *always*, *never*, *proves* and *only* are usually wrong in Literature, where the answer is a matter of degree and evidence.], [1–2 questions a paper],
  [*Answer the question asked.*], ["What is the effect" is not "what is the theme"; "who is speaking" is not "who is the poet". The commonest lost mark is a correct sentence to the wrong question.], [2–3 questions a paper],
)

#v(6pt)

#trap-box("The four confusions the paper is built on")[
  *Speaker and poet.* The "I" of a poem is the persona, not the author. A question that asks who is speaking wants the voice in the text.

  *Theme and subject.* The subject is what the text is about; the theme is what it says about it. "Widowhood" is a subject; "a community punishes the woman it claims to protect" is a theme.

  *Irony and sarcasm.* Sarcasm is one kind of verbal irony — the cruel kind. A question offering "sarcasm" for a gap between what the audience knows and what the character knows is offering the wrong irony.

  *Metonymy and synecdoche.* Synecdoche puts a part for the whole ("all hands on deck"); metonymy puts an associate for the thing ("the crown" for the monarchy). The paper tests the difference every year.
]

// ============================================================================
// PAGE: HOW TO USE
// ============================================================================
#current-chapter.update("How to Use This Book")
#pagebreak()

== How to Use This Book

Every chapter is built in the same order, and the order is the method:

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Exam radar.* The syllabus objectives, the high-yield areas and the traps that cost the most marks.
  + *The teaching sections.* The definition, then the example, then the diagram, then the distinction the examiner draws.
  + *Five worked examples.* Two foundation, two UTME standard, one JAMB challenge — each ending in a *Check* line that names the reason.
  + *Recap card and "in one breath".* The whole chapter on one page, and the same chapter in a paragraph you can recite.
  + *Two-minute set.* Four questions in the style of the CBT engine, with the key and a note on every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#concept-box("The vocabulary this book insists on")[
  + *Text* is the words on the page; *reader* is you; *author* is the person who wrote it, and is never the same as the speaker.
  + *Genre* is the form (drama, prose, poetry); *mode* is the manner (tragic, comic, satiric); *period* is the fashion of the time.
  + *Device* is a named technique; *effect* is what it does to a reader; *meaning* is what the text says. An answer that gives all three is a full answer.
  + *Extract* is a short passage lifted for a question; *context* is where it sits in the whole work. A question that says "in this extract" is not asking about the rest of the book.
]

#v(6pt)

#shortcut-box("The thirty seconds before you answer anything")[
  + *Read the stem twice.* Literature stems turn on one word: *not*, *mainly*, *suggests*, *the effect of*, *the speaker's attitude*. Underline it.
  + *Read all four options before choosing.* The first plausible option is the commonest trap; the paper puts a near-miss at A and the answer at C.
  + *Eliminate on genre and on absolutes.* Two options usually break the genre rule or use an absolute; that leaves a coin toss instead of a guess.
]

// ============================================================================
// PAGE: WHERE EVERYTHING IS
// ============================================================================
== Where Everything Is

#text(size: 9.4pt)[The chapters are the teaching; the back half of the book is the rehearsal.]

#v(3pt)

#table(
  columns: (1.35fr, 2.55fr, 1.4fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[When to use it],
  ),
  [Chapters 1–6], [Five worked examples, a recap card, a four-question set and a forty-question drill each], [First pass, then wherever a drill shows a gap],
  [Papers 1 and 2], [Two forty-question papers in the proportions of the real paper, with full solutions and a question map], [After Chapter 4, then again a week later],
  [Appendix A], [Sixty rapid-fire pairs: term to definition, device to example], [Ten minutes a day, in the last month],
  [Appendix B], [The 120-question master bank, twenty a chapter], [A fortnight after each chapter],
  [Appendix C], [Every key in the volume, with score bands and a score log], [Immediately after each sitting],
  [Appendices D–K], [The device catalogue, the genre tables, the glossary, model answers, the planner, the unseen workbook, the trap catalogue and the playbook], [While working, then the final six weeks],
)

#v(5pt)

#text(size: 9.2pt)[A note on order. Do not read the book from the first page to the last and then start the drills: the drills *are* the reading. Work a chapter, sit its drill the same week, and let the solutions send you back to the one distinction you skimmed. The papers mix the chapters because the examination mixes them — a chapter you can do in isolation but not inside a mixed paper is not yet finished.]

#v(6pt)

#concept-box("If you have only two weeks")[
  Read Chapter 6 first — devices and the unseen extract carry eleven questions and
  teach the vocabulary every other chapter uses. Then Chapter 1, for the frame.
  Then sit both papers, mark them, and return only to the chapters named by the
  misses. That is a defensible two-week plan, and it beats a cover-to-cover read
  by a wide margin.
]

// ============================================================================
// PAGE: THE PAPER IN NUMBERS
// ============================================================================
#pagebreak()

== The Paper, in Numbers

#v(2pt)

#table(
  columns: (1.7fr, 1.0fr, 2.5fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Fact],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Number],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What it means for you],
  ),
  [Questions in the paper], [*40*], [one mark each; there is no negative marking, so no box is ever left empty],
  [Time allowed], [*40 minutes*], [about a minute a question, which is why the method has to be automatic],
  [Syllabus sections], [*5*], [drama, prose, poetry, general principles, literary appreciation],
  [Questions on the set texts], [*10–14*], [a quarter to a third — the rest is principles, devices and unseen work],
  [Questions on unseen extracts], [*8–12*], [the section that rewards method over memory],
  [Device questions], [*6–9*], [the single most predictable block in the paper],
  [Questions this book practises], [*440*], [240 drill, 80 paper, 120 bank — each with a note on every option],
)

#v(6pt)

#concept-box("How the paper is marked, and how to mark yourself")[
  + *35–40* — 300-plus territory. The paper is secure; work on speed and on the last two unseen questions.
  + *28–34* — the vocabulary is there and the application is not. Reread Chapter 6 and redo the unseen workbook.
  + *20–27* — half the paper is being lost to the genre and device questions. Drill Appendix A daily for two weeks.
  + *Below 20* — the method is missing rather than the knowledge. Reread Chapter 1 and Chapter 6, then sit Paper 1 cold again.
]

== The Five Command Words

#text(size: 9.4pt)[Literature is marked on the verb. The five below cover almost every stem, and each one wants a different shape of answer.]

#v(3pt)

#table(
  columns: (0.95fr, 2.15fr, 2.05fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[The verb],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What the option must be],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Where the mark is lost],
  ),
  [*Identify*], [the exact name of the device or type], [naming the family instead of the member — "a figure of speech" for "a metaphor"],
  [*Describe*], [what is in the text, in the text's own terms], [importing a reading the extract does not support],
  [*Explain*], [why it is there and what it does], [restating the device instead of its effect],
  [*Compare*], [a stated point of similarity and a stated difference], [two descriptions with no relation drawn between them],
  [*Discuss*], [a claim, the evidence for it and the limit of it], [agreeing with the stem in different words],
)

// ============================================================================
// PAGE: SYLLABUS COVERED
// ============================================================================
#pagebreak()

== The Syllabus, Covered

#text(size: 9.2pt)[Every objective in the official outline is taught in one of the six chapters. The mapping below is the audit: if an objective is not on this page, it is not in the paper either.]

#v(3pt)

#table(
  columns: (1.35fr, 2.6fr, 0.75fr),
  inset: (x: 6pt, y: 4.6pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Objective],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it is taught],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
  ),
  [Types of drama and their features], [2.1 to 2.4, and the type table in 2.2], [2],
  [Dramatic techniques and stage directions], [3.1 to 3.6, and the technique tables in 3.2 and 3.5], [3],
  [Theme, plot and setting of a play], [2.5 to 2.6], [2],
  [Styles of selected playwrights], [3.6, and the comparison tables in Appendix G], [3],
  [Types of prose], [4.1 to 4.2], [4],
  [Narrative technique and point of view], [4.3 to 4.4], [4],
  [Characterisation], [4.5], [4],
  [Theme, plot, setting and socio-political context of a novel], [4.6], [4],
  [Types of poetry], [5.1 to 5.4], [5],
  [Poetic devices: imagery, sound, diction, persona], [5.5 to 5.7], [5],
  [Appreciation: theme, relevance, style], [5.8, and the whole of 6.5], [5–6],
  [Literary terms and figures of speech], [6.1 to 6.4, and Appendix D], [6],
  [Unseen passages and extracts], [6.5 to 6.6, and Appendix J], [6],
)

#v(6pt)

== What the Syllabus Leaves Out

#text(size: 9.2pt)[Three things candidates study that the paper does not reward, and one it rewards that nobody teaches.]

#v(3pt)

#table(
  columns: (1.5fr, 2.9fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Studied, but not asked],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Why, and what to do instead],
  ),
  [The author's biography], [The paper asks about the text, not the life. A fact about the writer is never the answer unless the question names the writer.],
  [Long quotations memorised verbatim], [It asks you to recognise and to explain, not to recite. Learn one short quotation per scene or chapter, and learn what it does.],
  [Plot summary for its own sake], [A summary is a means to an argument about character or theme; a question that asks for the plot asks for its *shape*, not its events.],
)

#v(4pt)

#concept-box("The one thing nobody teaches, and the paper always asks")[
  *Effect.* Every device question has a second half — what the device does to the
  reader — and most candidates never write it. Practise the sentence until it is
  automatic: "It is a [device], and it makes the [reader] feel [something]." Fill three blanks and
  you have answered the hardest question type in the paper.
]

#v(4pt)

== The First Week, in Five Moves

#table(
  columns: (0.5fr, 2.15fr, 2.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why this move, and not another],
  ),
  [1], [Read the paper in numbers, page 8], [a plan built on the wrong proportions wastes the fortnight it took to build],
  [2], [Chapter 1, and its drill], [the vocabulary of value decides what every later answer is *about*],
  [3], [Appendix A, section A.1, cover and recall], [twenty definitions, ten minutes, and the terms stop arriving as strangers],
  [4], [Chapter 2, sections 2.1–2.4], [the four types carry the drama questions, and drama is the genre the paper asks most about],
  [5], [Mock Paper 1, in one sitting], [a score now is worth ten points of guesswork about where you stand],
)

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#current-chapter.update("Table of Contents")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Table of Contents]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 9pt,
  inset: 13pt,
)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • LITERATURE IN ENGLISH VOLUME 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, two timed papers and eleven appendices, with the page numbers printed into this list.]

#v(5pt)

// Every chapter and paper heading, and every numbered section — the teaching
// sections and the appendix sub-rows alike. The drill and key rows are dropped
// because their headings sit beside the chapter they belong to.
#let rows = toc-rows.filter(r => r.at(0) == 1 or (
  r.at(1).len() > 3
  and (r.at(1).at(0) in "0123456789" or r.at(1).at(0) in "ABCDEFGHIJK")
  and r.at(1).at(1) == "."
  and not r.at(1).contains("Practice Drill")
  and not r.at(1).contains("in the Exam Hall")
  and not r.at(1).contains("Complete Solutions")
  and not r.at(1).contains("Answer Key")
  and not r.at(1).starts-with("Section ")
  and not r.at(1).contains("Score Log")
  and not r.at(1).contains("Rough Work")
  and not r.at(1).contains("How This Paper Is Marked")
  and not r.at(1).contains("Where the Missed Marks")
))

#toc-two-column(rows, cols: 2, compact: true, dense: true)
