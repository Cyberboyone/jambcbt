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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 2],
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
      Volume 2: The Drama and the Prose — Two Plays, Three Novels, One Method
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      How the paper examines a set text and what a full answer looks like; the bank
      you build as you read; character as function and theme as a claim with evidence
      for and against; *Othello* and *Native Son* worked through in full; a dossier
      for each of the three African texts; and the comparison paragraph that carries
      the top-band marks. Twenty diagrams, eight chapter recaps, twenty-four worked
      examples, and four hundred and forty practice questions, each with the
      reasoning behind the answer.
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
          A set-text question is never "what happened in this scene". It is "what does
          this scene *do*, and how do these words do it". This volume makes that the
          first sentence of every answer.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Two Models, Three Dossiers]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Two texts are worked line by line as models of what full preparation looks
          like; three are given the dossier that turns a first reading into an
          examined one. The method is identical, and it is the method that is marked.
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
        JAMB CBT Master Study Series • Literature in English • Volume 2
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

Volume 1 taught the method on material you had never seen: the genres, the
types, the devices, and the four moves that answer any extract. This volume turns
that method on the prescribed list. The question changes from *what is this
doing* to *what is this doing here, in this text, at this point in the plot* — and
the evidence changes from the extract in front of you to a scene you are expected
to know.

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
  [*1*], [The Principles], [the three genres, the types, the techniques, the devices, and the unseen extract], [delivered],
  [*2*], [The Drama and the Prose], [the set-text section: method, models for *Othello* and *Native Son*, dossiers for *Harvest of Corruption*, *Faceless* and *Lonely Days*], [*this volume*],
  [*3*], [The Poems and the Mock Papers], [the five prescribed poems, a quotation bank, and four full 60-question papers], [in preparation],
)

#v(6pt)

#concept-box("Why the method comes before the texts")[
  A candidate who has read all five texts and cannot say what a scene *does* scores in
  the forties. A candidate who has read them once, built the bank, and practised the
  four question shapes scores in the sixties. The difference is not reading — it is
  preparation, and preparation has a shape that can be taught.
]

#v(4pt)

The 2026 list is *Harvest of Corruption* (Frank Ogodo Ogbeche) and *Othello*
(Shakespeare) for drama; *Faceless* (Amma Darko), *Lonely Days* (Bayo Adebowale)
and *Native Son* (Richard Wright) for prose. The five poems belong to Volume 3.
Nothing in this volume depends on which text the examiner chooses: the same four
shapes of question arrive in front of whichever one is set.

// ============================================================================
// PAGE: THE SUBJECT AT A GLANCE
// ============================================================================
#pagebreak()

= The Set-Text Section at a Glance

#text(size: 9.6pt)[The Literature paper is forty questions in forty minutes. Ten to fourteen of them come from the prescribed list, and they are the only questions whose evidence you are expected to have brought with you. The rest of the paper is Volume 1's territory, and this volume keeps it in view.]

#v(4pt)

#table(
  columns: (0.55fr, 1.55fr, 2.55fr, 0.7fr),
  inset: (x: 6pt, y: 5pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[What it gives you],
    text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: white)[Qs],
  ),
  [I], [1–4 · Method], [the four question shapes, the bank, character as function, theme as a claim with two columns], [12],
  [II], [5 · *Othello*], [a full model: two cities, three engines, the handkerchief, the women, the language, ten quotations], [8],
  [III], [6 · *Native Son*], [a full model: three books, four rooms, blindness, the trial, the ending], [7],
  [IV], [7 · The African texts], [a dossier for each: premise, cast grid, theme ledger, ten passages, twelve questions], [8],
  [V], [8 · Comparison], [one axis per paragraph, both texts evidenced, and the exam-hall routine], [5],
)

#v(6pt)

#concept-box("The one habit that separates the bands")[
  Name the *unit* before you answer. Not "in the play", but "in this scene, after the
  brawl". A set-text question is always anchored somewhere, and the candidate who
  locates the anchor has already half answered it.
]

// ============================================================================
// PAGE: THE EIGHT CHAPTERS
// ============================================================================
#pagebreak()

= The Eight Chapters at a Glance

#diagram-fig("diagrams/weights.svg",
  "Where the set-text marks sit. The three African texts share the largest block because three of the five texts are African.", width: 100%)

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
  [*1*], [How the Paper Examines a Set Text], [what changes when a text is prescribed; the four shapes of question; what a mark scheme rewards; the quotation policy; the four errors that cost most], [6],
  [*2*], [The Bank: Building Your Own], [the scene row and the chapter row; the cast grid; the ten passages; how to review a bank in the last week], [5],
  [*3*], [Character: Maps, Functions, Contrasts], [the five-question map; the six functions; what a contrast pairing claims; arcs; answering “how is X presented”], [6],
  [*4*], [Theme: The Ledger], [topic against claim; the four-column ledger; the five ledgers the texts share; counter-evidence; the four-sentence paragraph], [5],
  [*5*], [*Othello*: A Worked Model], [the five acts and what each changes; Iago's three moves; the collapse of a style; the play's five themes; the ending as judgement], [9],
  [*6*], [*Native Son*: A Worked Model], [Fear, Flight and Fate; the machine of the city; the double voice of the narration; five themes; the ending's recognition], [8],
  [*7*], [The Three African Texts: Dossiers], [*Harvest of Corruption*, *Faceless*, *Lonely Days*: world, spine, cast, five moments and three claims per text], [8],
  [*8*], [Comparison and the Exam Hall], [the shared grid; the three comparative stems; the one-text protocol; forty minutes and the four passes], [5],
)

#v(4pt)



// ============================================================================
// PAGE: THE MOVES
// ============================================================================
#pagebreak()

== The Moves That Carry the Set-Text Marks

#table(
  columns: (1.5fr, 2.9fr, 0.95fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The move],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it sounds like in an answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it is worth],
  ),
  [*Anchor the unit.*], [“In the scene after the brawl, Cassio …” — the answer begins by locating itself.], [1–2 a paper],
  [*Name the function.*], [“The subplot exists to make the main marriage look like a choice rather than a fate.”], [2–3 a paper],
  [*Quote six words.*], [“*the green-eyed monster* — the metaphor makes jealousy a creature with an appetite.”], [2–3 a paper],
  [*Say what it costs.*], [“The ending is not sad because he dies; it is sad because the reputation he dies for was never his.”], [1–2 a paper],
  [*Hold the other side.*], [“The play invites us to blame Iago, but the general supplies every conclusion.”], [1 a paper],
)

#v(5pt)

#trap-box("The four errors that cost the most")[
  *Retelling.* A paragraph of plot earns nothing that a clause of function would not have earned faster.

  *Naming without evidencing.* “Shakespeare uses dramatic irony” is a label, not an answer, unless the next clause says what the audience knows and the character does not.

  *Quoting from memory.* A misquoted line is worse than a described one, because it tells the examiner you have not checked.

  *Judging a character as a person.* “Iago is evil” is a moral verdict; “Iago's function is to convert Othello's love into evidence” is a literary one.
]

// ============================================================================
// PAGE: HOW TO USE
// ============================================================================
#pagebreak()

== How to Use This Book

#table(
  columns: (1.25fr, 2.45fr, 1.6fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[If you have],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Do],
  ),
  [ten weeks], [Chapters 1–8 in order, one a week, with the drills], [build one dossier a fortnight, starting with the text you know least],
  [six weeks], [Chapters 1–4 in weeks 1–2, the models in 3–4, the dossiers in 5, comparison in 6], [one mock a week from week 3],
  [a fortnight], [Chapter 1, Chapter 8, and Appendix A daily], [both papers under time; mark them the same evening],
  [a week], [Appendix D (the quotation bank) and Appendix J (the playbook)], [the four passes in Chapter 8],
  [a night], [Appendix J, and the ten sentences in it], [sleep, and read nothing new],
)

#v(5pt)

#rule-box("The three passes over a text")[
  + *First pass — read it as a reader.* No notes, no pencil, no stopping. You are finding out what happens and whether you care.
  + *Second pass — read it as a candidate.* One row per scene or chapter in the bank, one quotation per unit, and a mark on every passage you would want to quote.
  + *Third pass — read it as an examiner.* Take the twelve questions at the end of the dossier and answer them in note form, without the text. Whatever you cannot answer is the fourth pass.
]

// ============================================================================
// PAGE: WHERE EVERYTHING IS
// ============================================================================
#pagebreak()

== Where Everything Is

#table(
  columns: (1.25fr, 2.75fr, 1.7fr),
  inset: (x: 6pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[It holds],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[When to use it],
  ),
  [Chapters 1–4], [the method: question shapes, the bank, character, theme], [in the first month, and again in the last week],
  [Chapters 5–6], [the two full models, scene by scene], [while you read the plays and the Wright novel],
  [Chapter 7], [the three dossiers, with their twelve questions each], [as you read each African text, and again in the last fortnight],
  [Chapter 8], [comparison, timing, the exam hall], [the week before the paper],
  [Papers 1–2], [two 40-question mocks in the paper's proportions], [from week 3, one a fortnight],
  [Appendix A], [60 rapid-fire pairs: text to author, character to function, quotation to speaker], [ten minutes a day],
  [Appendix B], [the 120-question bank, fifteen a chapter], [after each chapter],
  [Appendix D], [the quotation bank: forty quotations, who says them, and what they do], [the last fortnight],
  [Appendix E], [the glossary of criticism: the terms this volume uses and the paper defines], [as a dictionary],
  [Appendix F], [eight essay plans in the paper's shapes], [before any essay practice],
  [Appendix G], [the five texts on one page: author, form, setting, cast, themes], [the last week],
  [Appendix H], [the ten-week plan and the score log], [from the first day],
  [Appendix I], [the traps, in the paper's own words], [the last week],
  [Appendix J], [the exam-day playbook], [the morning of the paper],
)

// ============================================================================
// PAGE: THE PAPER IN NUMBERS
// ============================================================================
#pagebreak()

== The Paper, in Numbers

#table(
  columns: (1.9fr, 1.35fr, 2.35fr),
  inset: (x: 6pt, y: 4.6pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The number],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The figure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means for you],
  ),
  [Questions in the paper], [40], [one mark each, no negative marking, forty minutes],
  [Questions on the set texts], [10–14], [the block this volume is built for],
  [Questions on unseen extracts], [8–12], [Volume 1's territory; do not let it slip],
  [Questions on terms and principles], [14–20], [the cheapest marks in the paper],
  [Prescribed texts], [5], [two plays, three novels — and only one question each, most sittings],
  [Minutes per question], [1], [anything over ninety seconds is a flagged question],
  [Words in a good set-text answer], [25–40], [a name, a unit, a quotation, an effect],
  [Questions in this volume], [440], [240 drills, 80 mock, 120 bank],
)

#v(5pt)

== The Four Command Words

#table(
  columns: (1.1fr, 2.5fr, 2.1fr),
  inset: (x: 6pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The word],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it asks for],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The answer's shape],
  ),
  [*Identify*], [name the thing, with the smallest piece of evidence that fixes it], [“the handkerchief, in the scene after the brawl”],
  [*Describe*], [say what is there, in order, without judging it], [two or three clauses, no adjectives of approval],
  [*Explain*], [give the reason or the mechanism], [“because”, and then a consequence],
  [*Comment on / How far*], [make a claim, support it, and hold the other side], [claim, evidence, objection, verdict],
)

// ============================================================================
// PAGE: SYLLABUS COVERED
// ============================================================================
#pagebreak()

== The Syllabus, Covered

#table(
  columns: (2.15fr, 1.5fr, 0.6fr, 0.95fr),
  inset: (x: 6pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The syllabus asks for],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Taught in],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Qs],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Status],
  ),
  [Drama: the prescribed plays, their themes, characters and techniques], [5, 7], [8], [covered],
  [Prose: the prescribed novels, narrative technique and textual analysis], [6, 7], [10], [covered],
  [Characterisation, dialogue, soliloquy and aside as they appear in the set texts], [3, 5, 7], [4], [covered],
  [Plot, setting and socio-political context], [2, 6, 7], [4], [covered],
  [Comparative treatment of two texts], [8], [3], [covered],
  [Literary appreciation of unseen extracts], [1, 8, and Volume 1], [6], [revision only],
  [Poetry and the prescribed poems], [Volume 3], [—], [Volume 3],
)

#v(5pt)

== What This Volume Leaves Out

#table(
  columns: (1.85fr, 2.9fr),
  inset: (x: 6pt, y: 4.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Left out],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why, and where to get it],
  ),
  [The full vocabulary of devices], [it is Volume 1, Chapters 1 and 6, and it is assumed here rather than retaught],
  [The five poems], [Volume 3, which takes each poem line by line and adds a quotation bank],
  [The poems' contexts and the poets' other work], [the paper does not ask about the poet's life, and a fact about it is never the answer],
  [Film and stage versions], [useful, and never evidence: quote the text, not a production],
  [Retellings of the three African texts], [deliberate. Chapter 7 gives the dossier that makes a first reading examinable; a summary read instead of the book is a summary of somebody else's reading],
)

#v(5pt)

// ============================================================================
// PAGE: FIRST WEEK
// ============================================================================
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
  [1], [Chapter 1 and its drill], [the four question shapes decide what every later answer contains],
  [2], [Chapter 2, and start the bank for one text], [a bank begun on day two is finished by week four; one begun in week eight is never finished],
  [3], [Appendix A, sections A.1 and A.2], [authors, forms and settings, ten minutes, and the list stops being a blur],
  [4], [Chapter 3, and fill the cast grid for that text], [character as function is the fastest route into a text you have read once],
  [5], [Mock Paper 1, in one sitting], [a score now is worth ten points of guessing about where you stand],
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
  radius: 9pt,
  inset: (x: 14pt, y: 10pt),
)[
  #grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    [
      #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • LITERATURE IN ENGLISH VOLUME 2]
      #v(3pt)
      #text(font: "DejaVu Sans", size: 16pt, weight: "bold", fill: white)[Contents]
    ],
    text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#CBD5E1"))[every chapter, paper and appendix • one page],
  )
]

#v(6pt)

#toc-two-column(toc-rows, cols: 2, compact: true, dense: true)
