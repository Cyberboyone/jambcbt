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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 3 OF 3],
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
      Volume 3: The Novel and Full Papers
    ]
    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      The prescribed text chapter by chapter — plot, character, theme, setting
      and style — then three timed papers in the CBT format, with a note on
      every exam-style option. Thirty-eight diagrams, thirty worked examples, and more
      than five hundred and fifty questions with the reasoning behind each answer.
    ]

    #v(4mm)

    #image("diagrams/cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ The Ten Marks Nobody Revises For]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          One sixth of the English paper comes from a single short novel, and
          the questions are decided by names, order and motive. A candidate who
          has made twelve chapter cards cannot be surprised by any of them.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ What Makes This Volume Different]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          The text is summarised as a fact file rather than retold as a story, and
          every wrong option in every paper is explained. Two full sixty-question
          papers and a forty-question novel paper are set against the clock.
        ]
      ],
    )

    #v(14mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Use of English • Volume 3 of 3
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

English is the only compulsory paper in the UTME. It is also the paper most often lost
by default: sixty questions, four options, no negative marking, and a candidate who
runs out of time on the comprehension passage surrenders ten marks without ever
seeing the question. The series splits the paper along the lines the syllabus already
uses, so that each volume can be worked in a fortnight.

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
  [*1*], [Structure and Lexis], [Word classes, concord, tense and voice, clauses and punctuation, modifiers, prepositions, connectives, synonyms, antonyms, confusables and idioms], [about 25],
  [*2*], [Comprehension, Summary and Oral English], [Passage technique, the question types, inference and tone, summary writing, the sounds of English, stress and rhyme], [about 25],
  [*3*], [The Novel and Full Papers], [The prescribed text — plot, character, theme, setting and style — and three timed papers in the CBT format], [about 10 + practice],
)

#v(6pt)

This volume carries the ten marks of the reading text and the whole apparatus of the
paper. The text itself is short — twelve chapters, about sixty pages — which is exactly
why it is worth finishing: it is the only part of the English paper with a closed
syllabus, and the only part where a candidate of average ability can score ten out of
ten by preparing rather than by reading well on the day.

#v(4pt)

#diagram-fig("diagrams/utme_weight.svg",
  "The sixty questions in a typical paper. The shaded blocks are the ones this volume teaches or rehearses; the rest belong to Volume 1.", width: 100%)

#concept-box("Which chapter of this book answers which kind of doubt")[
  + *“I have not read the novel and the exam is in four weeks.”* Chapter 1 sets the reading plan; Chapter 2 gives you the story in order; Appendix D is the fact file.
  + *“I have read it but I cannot remember names.”* Chapter 3 and Appendix E.
  + *“I can retell the story but the theme questions beat me.”* Chapter 4 and Appendix F.
  + *“I know the book; I keep running out of time.”* Chapter 6, then the two full papers.
]


// ============================================================================
// PAGE: THE TEXT AT A GLANCE
// ============================================================================
#pagebreak()

= The Text at a Glance

#table(
  columns: (1.15fr, 2.6fr),
  inset: 4.6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Title], [*The Lekki Headmaster*],
  [Author], [Kabir Alabi Garba — Nigerian journalist and teacher; the novel is his best-known work],
  [Form], [A novel in twelve chapters, about sixty pages, set in Lagos and told in the third person],
  [Setting], [Stardom Schools, Lekki, Lagos; with Beesway Group of Schools, Badagry, Ibadan and a London the reader never visits],
  [Protagonist], [Mr Adebepo Adewale — *Bepo* — principal of Stardom Schools for twenty-four years],
  [The question], [Should Bepo join his wife and children in the United Kingdom, or stay with the school he has built?],
  [The answer], [He boards, dreams of the slave ship at Badagry, and walks back into the school on Monday morning],
)

#v(5pt)

#table(
  columns: (0.45fr, 2.1fr, 3.3fr),
  inset: 4.2pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[In one line],
  ),
  [*1*], [Dusk], [Bepo breaks down at assembly and cannot say why],
  [*2*], [The Enticement], [He admits he is leaving for the United Kingdom],
  [*3*], [Migration Tales], [Friends and colleagues trade stories of those who have gone],
  [*4*], [A Case of Visa Denied], [A parent's family collapses over a DNA result],
  [*5*], [Snake in the Roof], [The cooperative's loans are capped after a scare],
  [*6*], [Ade as Well as Jide COMES vs. COME], [A teacher is nearly sacked for being right],
  [*7*], [Ritualists], [The night at Beesway that made him leave],
  [*8*], [Missions Unaccomplished], [The feud and the club he will not finish],
  [*9*], [Laughing Waterfalls], [The excursions end at Badagry and the slave trade],
  [*10*], [Passport Pains], [A passport, an agent and the Nigerian state],
  [*11*], [Point of No Return], [The school's farewell, and the shout he cannot explain],
  [*12*], […Dawn], [The dream at the airport, and the Monday morning return],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The two titles that matter are the first and the last. *Dusk* is a man losing the light; *Dawn* is the same man walking back into it. Every other chapter sits between them, and the questions are set from that middle.]

#v(10pt)

#concept-box("A note on the text, and on the year")[
  *The Lekki Headmaster* by Kabir Alabi Garba is the reading text JAMB prescribed for the 2026 UTME, and a reading text usually serves several sittings — *The Life Changer* ran from 2021 to 2025.

  If the board names a new text before your paper, Chapters 1 and 3–6 still teach the method that answers the ten questions, and Appendix D shows you how to build the same four-column fact file for any replacement in a week.
]

// ============================================================================
// PAGE: THE SIX CHAPTERS AT A GLANCE
// ============================================================================
#pagebreak()

= The Six Chapters at a Glance

#table(
  columns: (0.45fr, 1.45fr, 2.85fr, 0.55fr),
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
  [*1*], [The Reading Text in the Exam], [name the four question shapes, build the twelve chapter cards and kill three wrong options on sight], [10],
  [*2*], [Plot: Dusk to Dawn], [tell the story in order, place any event on the timeline and survive a sequence question], [8],
  [*3*], [Character and Characterisation], [sort every named character into a circle, state what each one does in the story, and answer a trait question from evidence], [6],
  [*4*], [Theme and Setting], [give the six themes with a scene behind each, and say what a setting carries], [5],
  [*5*], [Narrative Technique and Style], [name the narrator, read the frame, and explain a symbol or a proverb in two sentences], [5],
  [*6*], [The Full Paper], [run a sixty-question paper in forty minutes without leaving a blank], [4],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent papers. Chapters 2 and 3 matter most if time is short: between them they decide the fact and character questions, which are the majority of the ten.]

#v(6pt)

== The Moves That Carry the Ten Marks

#table(
  columns: (2.3fr, 0.3fr, 2.1fr, 0.3fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Learn the twelve chapter titles in order], [2], [Read the whole option, not its first half], [1],
  [Place the event before you read the options], [2], [A trait needs an action behind it], [3],
  [The flashback is narrated later than it happened], [2], [A theme needs a scene, not a subject], [4],
  [Match the actor to the action, not the chapter], [1], [A symbol is what it does, not what it is], [5],
  [Every named character has a function], [3], [No blanks: a guess is worth a quarter], [6],
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • USE OF ENGLISH VOLUME 3]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, each with five worked examples, a recap card and a two-minute set; three timed papers; and eleven appendices including the chapter-by-chapter fact file. Page numbers are printed into this list.]

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
  + *The teaching sections.* The rule, the example from the text, then the question the examiner writes from it.
  + *Five worked examples.* Two foundation, two UTME standard, one JAMB challenge — each ending in a *Check* line that tests the answer a second way.
  + *Recap card and “in one breath”.* The whole chapter on one page, and the same chapter in a paragraph you can recite.
  + *Two-minute set.* Four questions in the style of the CBT engine, with the key and a note on every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#concept-box("The conventions this book uses")[
  + Chapter and section numbers refer to the novel's twelve chapters, not to this book's.
  + A *fact* is something the text states; an *inference* is something the text forces. The notes always say which one a question is asking for.
  + Quotations are kept short and given in single quotation marks; spelling follows the Nigerian edition, so *japa*, *owambe*, *iru* and *egusi* are printed as the novel prints them.
  + Naira and sterling are written as the novel writes them: ₦400,000 a month at Stardom, £3,600 a month in the United Kingdom.
  + “Not supported” means the text does not say it, which is not the same as “false”. Most wrong options are not supported.
]

#v(6pt)

#trap-box("Four habits that decide the reading-text marks")[
  *1 · Do not re-read the novel; revise the file.* The ten questions are decided by names, order and motive — exactly what a chapter card holds.

  *2 · Read the whole option.* Three of the five wrong-option shapes turn on the second half of the sentence.

  *3 · Answer from the chapter, not from the film in your head.* A candidate who “remembers” is usually remembering a summary someone else wrote.

  *4 · Never leave a blank.* There is no negative marking, and a quarter of the questions you guess will be right.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Where a section is marked with a green bar and the word RULE, it is a statement the examiner quotes back at you; where it is marked JAMB TRAP, it is the mistake the examiner is banking on.]

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
  [Papers 1–2], [Two sixty-question papers, timed, with full solutions and a question map], [After Chapter 6, then a week later],
  [The Novel Paper], [Forty questions on the text alone, for the last fortnight], [Twice, in the final month],
  [Appendices A–C], [Rapid-fire pairs, the 120-question bank, every key and the score log], [Once the chapters are done],
  [Appendices D–K], [Fact file, cast, quotations and glossary, planner, twenty moves, model answers, traps, playbook], [While working, then the last six weeks],
)

#v(4pt)

#text(size: 9.6pt)[A note on order. Do not read the book from the first page to the last and then start the drills: the drills are the reading. Work a chapter, sit its drill the same week, and let the solutions send you back to the one section you skimmed. The papers exist to mix the chapters, because the examination mixes them.]

#v(6pt)

== The Paper, in Numbers

#table(
  columns: (1.9fr, 1.0fr, 1.1fr, 1.6fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Block],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where this volume covers it],
  ),
  [Comprehension passage], [5], [5], [Chapter 6 and both papers],
  [Cloze passage], [10], [6], [Chapter 6 and both papers],
  [The reading text], [10], [4], [Chapters 1–5 of this volume],
  [Sentence interpretation], [5], [3], [Volume 1],
  [Antonyms and synonyms], [10], [5], [Volume 1],
  [Sentence completion and grammar], [10], [8], [Volume 1],
  [Oral forms], [10], [4], [Volume 2],
)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The blocks are mixed on the screen rather than separated, and the counts shift slightly from year to year. What does not shift is the arithmetic: the reading text is one sixth of the paper, and it is the sixth with a closed and short syllabus.]

#v(3pt)

#concept-box("The score that gets you in")[
  + *60 questions, about 40 minutes, no negative marking.* Four options, one right answer, and no penalty for a wrong one — so there is never a reason to leave a box empty.
  + *Aim above your course, not at it.* Cut-offs move. A candidate targeting 250 needs about 45 of 60 in English; a candidate targeting 300 needs about 52.
  + *Ten questions are the cheapest ten on the paper.* They come from a book of about sixty pages, and they reward the candidate who made notes over the candidate who reads well.
]
