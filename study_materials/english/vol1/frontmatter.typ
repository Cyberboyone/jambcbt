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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 1 OF 3],
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
      Volume 1: Structure and Lexis
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      Word classes, concord, tense and voice, clauses and punctuation,
      modifiers and connectives, and the lexis questions — with 34 reviewed
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
          Concord, the pronoun after a preposition, and the verb form after an
          auxiliary. Between them they account for more than half of the
          lexis and structure questions, and all three are decided by a rule
          you can learn in a morning.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ What Makes This Volume Different]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every rule is followed by the sentence the examiner uses to break
          it. The wrong options get a note of their own, so a mistake teaches
          you something instead of only costing a mark.
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
        JAMB CBT Master Study Series • Use of English • Volume 1 of 3
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

English is the only compulsory paper in the UTME, and it is the one candidates most often lose marks on without noticing: sixty questions in forty minutes, most of them decided by a single rule rather than by a passage. This series splits the paper along the lines the syllabus already uses, so that each volume can be worked in a fortnight.

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

This volume carries the largest single block of the paper. Lexis and structure is worth roughly half of the sixty questions, and unlike comprehension it has no passage to hide behind: each question stands alone, and each one is decided by a rule. That is good news. A passage can be read badly on a bad morning; a rule cannot.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "Where the sixty English questions sit in a typical paper. Lexis and structure is half the paper, which is why it gets a volume of its own.", width: 82%)

#concept-box("How to read the weights")[
  These are averages from recent papers — a guide to where an hour of revision returns the most marks, not a promise about your paper. The number to remember is that about thirty of the sixty questions are lexis and structure, and about ten of those thirty turn on one of three rules: concord, the pronoun after a preposition, and the verb form after an auxiliary.
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
  [*1*], [Word Classes], [name the class of any word from its job, and give the plural and the possessive of any noun], [6],
  [*2*], [Concord], [match every subject to its verb, including the fractions, the collectives and the -s nouns], [6],
  [*3*], [Tense, Aspect and Voice], [choose the right form of the verb, and turn an active sentence into a passive one], [5],
  [*4*], [Clauses and Punctuation], [count the clauses in a sentence, name its type, and repair a comma splice], [5],
  [*5*], [Modifiers and Connectives], [place an adjective, an adverb and a connective where the sentence needs them], [4],
  [*6*], [Lexis], [choose the synonym and the antonym that fit the sentence, and tell the confusables apart], [6],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the chapter has carried in recent papers. Chapters 2 and 6 are the two to finish first if time is short.]

#v(6pt)

== The Rules That Carry the Paper

#table(
  columns: (2.1fr, 0.3fr, 1.9fr, 0.3fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Subject and verb agree in number], [2], [A mass noun has no plural], [1],
  [A preposition is followed by the object form], [1], [Have, has, had take the participle], [1],
  [Each, every, either, neither are singular], [2], [Defining clauses take no commas], [4],
  [A fraction follows the noun after of], [2], [Two clauses need more than a comma], [4],
  [The passive needs a transitive verb], [3], [Comparatives are never doubled], [5],
  [Present goes with will, past with would], [3], [A synonym must fit the sentence], [6],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The number in the narrow column is the chapter that teaches the rule. A rule you cannot place in its chapter is a rule you will not recognise in the hall.]

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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • USE OF ENGLISH VOLUME 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, each with five worked examples, a recap card and a two-minute set. The page numbers are printed into this list, so you can turn straight to a section without hunting for it.]

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
  + A *rule* is printed in the green RULE box, the word the examiner is banking on is in the red JAMB TRAP box, and a definition the examiner quotes back at you is in the blue CONCEPT box.
  + Numbers, names and spellings follow the Nigerian norm: *Adaeze*, *Chidi*, *Lagos*, *naira*, and British spellings such as *colour*, *centre*, *practise* (verb) and *practice* (noun).
  + “Not an option” means the form does not exist in standard English, not that it is uncommon.
  + Where two answers look possible, the note says why one of them loses. That note is the part worth reading twice.
]

#v(6pt)

#trap-box("Four habits that decide an English score")[
  *1 · Read the whole sentence before you look at the options.* Most wrong answers are right for the word and wrong for the sentence.

  *2 · Decide what the blank is doing before you decide what goes in it.* A noun frame takes a noun, an adverb frame takes an adverb, and no amount of vocabulary rescues the wrong class.

  *3 · Trust the shortest correct answer.* The CBT engine offers long, formal-sounding options because they look more like an examination. The key is usually the plain one.

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
  [Appendices D–K], [Word bank, grammar map, glossary, planner, twenty rules, guided writing, traps, playbook], [While working, then the last six weeks],
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
  [Comprehension], [about 10], [8], [Volumes 1 and 2],
  [Summary], [about 4], [4], [Volume 2],
  [Lexis and structure], [about 30], [20], [Chapters 1–6 of this volume],
  [Oral forms], [about 8], [4], [Volume 2],
  [The prescribed novel], [about 8], [4], [Volume 3],
)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The counts shift from year to year and the sections are mixed on the screen rather than separated. What does not shift is the proportion: half of the paper is lexis and structure, which is what this volume teaches, and it is the half that repetition can make certain.]

#v(3pt)

#concept-box("The score that gets you in")[
  + *60 questions, 40 minutes, no negative marking.* Four options, one right answer, and no penalty for a wrong one — so there is never a reason to leave a box empty.
  + *Aim above your course, not at it.* Cut-offs move. A candidate targeting 250 needs about 45 of 60 in English; a candidate targeting 300 needs about 52.
  + *The paper is a percentage, not a ranking.* English is marked out of 100 whichever way the questions fall, so a lost question costs the same wherever it sits.
]
