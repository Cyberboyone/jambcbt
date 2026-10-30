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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 2 OF 3],
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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[USE OF ENGLISH]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: Comprehension, Summary and Oral English
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Passage technique, the eight question types, inference and tone, summary
      writing, and the sounds, stress and rhythm of English — with 30 reviewed
      diagrams, 30 worked examples and a note on every exam-style option.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ High-Yield Areas of Focus]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Reading the questions before the passage, the negation question,
          the reference question, and the five sound pairs the oral section
          reuses every year. Between them they carry most of this volume's
          marks, and none of them needs a dictionary.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ What Makes This Volume Different]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every passage question is followed by the sentence that answers it,
          and every summary by the points it was marked against. The wrong
          options get a note of their own, so a mistake teaches you something.
        ]
      ],
    )

    #v(16mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Use of English • Volume 2 of 3
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

= The English Series, and Where This Volume Sits

English is the only compulsory paper in the UTME, and it is the one candidates most often lose marks on without noticing: sixty questions in forty minutes, and about a third of them are decided by a passage rather than by a rule. This series splits the paper along the lines the syllabus already uses, so that each volume can be worked in a fortnight.

#v(4pt)

#table(
  columns: (0.5fr, 1.5fr, 2.4fr, 0.8fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it covers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
  ),
  [*1*], [Structure and Lexis], [Word classes, concord, tense and voice, clauses and punctuation, modifiers, prepositions, connectives, synonyms, antonyms, confusables and idioms], [about 30],
  [*2*], [Comprehension, Summary and Oral English], [Passage technique, summary writing, vowels and consonants, stress, intonation, rhymes and the sound of English], [about 25],
  [*3*], [The Novel and Full Papers], [The prescribed text, character and theme questions, plus full-length papers in the CBT format], [about 5],
)

#v(6pt)

This volume carries the part of the paper that cannot be learned by memorising: a passage, two summaries and the sound system. It is worth roughly a quarter of the sixty questions, and it is the quarter where method beats knowledge — a candidate who previews the questions before reading the passage will beat a better reader who does not. That is why every chapter here is a procedure rather than a list.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "Where the sixty English questions sit in a typical paper. The three sections this volume teaches are shaded; the other two belong to Volumes 1 and 3.", width: 82%)

#concept-box("How to read the weights")[
  These are averages from recent papers — a guide to where an hour of revision returns the most marks, not a promise about your paper. The number to remember is that about twenty-three of the sixty questions are comprehension, summary or oral forms, and that all twenty-three are answered by a procedure you can rehearse.
]

#v(6pt)

= The Six Chapters at a Glance

#table(
  columns: (0.5fr, 1.45fr, 2.65fr, 0.7fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[By the end of it you can],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Qs],
  ),
  [*1*], [Reading for the Main Idea], [preview the questions, skim for the topic sentence and answer from the sentence, not from memory], [10],
  [*2*], [The Question Types], [name the type of any comprehension question and go straight to the sentence that answers it], [6],
  [*3*], [Inference, Tone and Attitude], [tell an inference from an assumption, and read a tone from the writer's adjectives], [4],
  [*4*], [Summary], [find the points, drop the examples, and write them inside the word limit], [5],
  [*5*], [The Sounds of English], [sort the vowels and consonants by sound, and spot the silent letters], [5],
  [*6*], [Stress, Intonation and Rhyme], [place the stress, choose the tune and pick the rhyming word], [4],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the chapter has carried in recent papers. Chapters 1 and 4 are the two to finish first if time is short: between them they carry fifteen of the twenty-three.]

#v(6pt)

== The Moves That Carry the Paper

#table(
  columns: (2.1fr, 0.3fr, 1.9fr, 0.3fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Read the questions before the passage], [1], [Substitute the noun for the pronoun], [2],
  [The answer is a sentence, not a memory], [1], [Mark EXCEPT and NOT before the options], [2],
  [A detail is never the main idea], [1], [Substitute the noun for the pronoun], [2],
  [Inference is a step the writer took], [3], [A summary keeps topic sentences], [4],
  [Tone lives in the adjectives], [3], [Drop examples, quotations and figures], [4],
  [Vowels are paired by contrast], [5], [Read the word backwards from its ending], [6],
  [Silent letters hide the sound], [5], [Rhyme runs from the stressed vowel], [6],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The number in the narrow column is the chapter that teaches the move. A move you cannot place in its chapter is a move you will not recognise in the hall.]

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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • USE OF ENGLISH VOLUME 2]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, each with five worked examples, a recap card and a two-minute set, plus two full papers and eleven appendices. The page numbers are printed into this list, so you can turn straight to a section without hunting for it.]

#v(5pt)

#let rows = toc-rows.filter(r => r.at(0) == 1 or not (
  r.at(1).contains("Answer Key") or r.at(1).contains("Complete Solutions") or r.at(1).starts-with("Trap ")
))

#toc-two-column(rows, cols: 2, compact: true)

#current-chapter.update("How to Use This Book")
#pagebreak()

// ============================================================================
// PAGE: HOW TO USE
// ============================================================================
== How to Use This Book

Every chapter is built in the same order, and the order is the method:

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Exam radar.* The syllabus objectives, the high-yield areas and the three traps that cost the most marks.
  + *The teaching sections.* The rule, then the example, then the sentence the examiner uses to break the rule.
  + *Five worked examples.* Two foundation, two UTME standard, one JAMB challenge — each ending in a *Check* line that tests the answer a second way.
  + *Recap card and “in one breath”.* The whole chapter on one page, and the same chapter in a paragraph you can recite.
  + *Two-minute set.* Four questions in the style of the CBT engine, with the key and a note on every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#concept-box("The conventions this book uses")[
  + Standard written English is the target — the English of a Nigerian broadsheet and of the UTME, not the English of the playground.
  + A *method* is printed in the green RULE box, the mistake the examiner is banking on is in the red JAMB TRAP box, and a definition the examiner quotes back at you is in the blue CONCEPT box.
  + Numbers, names and spellings follow the Nigerian norm: *Adaeze*, *Chidi*, *Lagos*, *naira*, and British spellings such as *colour*, *centre*, *practise* (verb) and *practice* (noun).
  + “Not an option” means the form does not exist in standard English, not that it is uncommon.
  + Where two answers look possible, the note says why one of them loses. That note is the part worth reading twice.
]

#v(6pt)

#trap-box("Four habits that decide an English score")[
  *1 · Read the questions before the passage.* Reading the passage first is the single most expensive habit in the paper: it fills your head with detail the questions will never ask for.

  *2 · Answer from the sentence, not from memory.* Every comprehension answer has one sentence behind it. Find the sentence, read it twice, then choose.

  *3 · Mark the negative word.* EXCEPT, NOT, FALSE and LEAST turn a question inside out, and they are set in the same size as every other word on the screen.

  *4 · Never leave a blank.* There is no negative marking, and a quarter of the questions you guess will be right. In a sixty-question paper that is fifteen marks.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Where a section is marked with a green bar and the word RULE, it is a statement the examiner quotes back at you; where it is marked JAMB TRAP, it is the mistake the examiner is banking on. Both are worth more than their length in the chapter.]

#v(8pt)

== Where Everything Is

The chapters are the teaching; the back half of the book is the practice and the reference.

#v(2pt)

#table(
  columns: (1.55fr, 2.55fr, 1.2fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[When to use it],
  ),
  [Chapters 1–6], [Five worked examples, a recap card, a four-question set and a forty-question drill per chapter], [First pass, then wherever a drill shows a gap],
  [Mocks 1 and 2], [Two forty-question papers, timed, with full solutions and a question map], [After Chapter 3, then a week later],
  [Appendices A–C], [Rapid-fire pairs, the 120-question bank, every key and the score log], [Once the chapters are done],
  [Appendices D–K], [Passage bank, sound chart, glossary, planner, twenty moves, summary models, traps, playbook], [While working, then the last six weeks],
)

#v(4pt)

#text(size: 9.6pt)[A note on order. Do not read the book from the first page to the last and then start the drills: the drills are the reading. Work a chapter, sit its drill the same week, and let the solutions send you back to the one section you skimmed. The mock papers exist to mix the chapters, because the examination mixes them — a rule you can apply in isolation but not under a mixed paper is not yet learned.]

#v(6pt)

== The Paper, in Numbers

#table(
  columns: (1.9fr, 1.0fr, 1.1fr, 1.6fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where this volume covers it],
  ),
  [Comprehension], [about 10], [8], [Chapters 1–3 of this volume],
  [Summary], [about 5], [4], [Chapter 4 of this volume],
  [Oral forms], [about 8], [4], [Chapters 5–6 of this volume],
  [Lexis and structure], [about 30], [20], [Volume 1],
  [The prescribed novel], [about 7], [4], [Volume 3],
)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The counts shift from year to year and the sections are mixed on the screen rather than separated. What does not shift is the proportion: about a quarter of the paper is comprehension, summary or oral forms — and unlike the rest, every question in that quarter is answered by a procedure rather than by a fact.]

#v(3pt)

#concept-box("The score that gets you in")[
  + *60 questions, 40 minutes, no negative marking.* Four options, one right answer, and no penalty for a wrong one — so there is never a reason to leave a box empty.
  + *Aim above your course, not at it.* Cut-offs move. A candidate targeting 250 needs about 45 of 60 in English; a candidate targeting 300 needs about 52.
  + *The paper is a percentage, not a ranking.* English is marked out of 100 whichever way the questions fall, so a lost question costs the same wherever it sits.
]
