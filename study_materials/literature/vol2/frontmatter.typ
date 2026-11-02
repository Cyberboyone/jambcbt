#import "template.typ": *
#import "_toc.typ": toc-rows

// Set before the cover, so the first inside page carries the right running head.
#current-chapter.update("Series Overview & Set-Text Strategy")

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
      Volume 2: The Drama and the Prose — Five Set Texts Worked Through
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      *Harvest of Corruption* and *Othello* scene by scene; *Faceless*, *Lonely
      Days* and *Native Son* book by book. For each text: the plot in order, a
      character ledger, the themes with the scenes that prove them, the technique
      the writer uses, and the questions the paper actually asks. Eighteen
      diagrams, six chapter recaps, twenty-four worked examples, and four hundred
      and forty practice questions, each with a full solution.
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
          A set-text question is never "what happens". It is "who does this, in
          which scene, and what does the doing cost". Every chapter here is built
          around that sentence.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Five Texts, One Method]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Place, locate, name, quote, effect, check. The same six moves answer a
          question on a Nigerian play, a Shakespeare tragedy, a Ghanaian novel, a
          Yoruba village novel and an American protest novel.
        ]
      ],
    )

    #v(9mm)

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

The Literature paper has two halves that are examined in one paper and prepared in
two different ways. The first half asks you to *apply*: read a passage you have
never seen and say what it is doing. The second asks you to *know*: a question
that begins "In *Othello*, the handkerchief is" is answerable only if you have
read the play and understood what the handkerchief does.

Volume 1 taught the first half. This volume teaches the second.

#v(3pt)

#table(
  columns: (0.42fr, 1.55fr, 2.55fr, 0.95fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Vol.],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Status],
  ),
  [*1*], [The Principles], [the three genres, drama types and technique, prose technique, poetry, devices, and the method for an unseen extract], [published],
  [*2*], [The Drama and the Prose], [the two prescribed plays and the three prescribed novels, worked through text by text, with the questions each one attracts], [this volume],
  [*3*], [The Poems and the Mock Papers], [the five prescribed poems line by line, a quotation bank, and four full papers at sixty questions], [next],
)

#v(4pt)

#concept-box("Why the set texts cannot be left to the last month")[
  A candidate can improve an unseen extract by learning a method in a fortnight. A
  candidate cannot learn five texts in a fortnight — but can lose all five in one,
  by confusing Ochuole with Ogeyi, or Bigger's second victim with his first. The
  set-text questions are the cheapest marks in the paper *if* the plot and the names
  are secure, and the most expensive if they are not.
]

// ============================================================================
== The Five Texts, and What Each One Is For

#table(
  columns: (1.5fr, 1.1fr, 2.0fr, 1.0fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Text],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Genre],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question it exists to ask],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Chapter],
  ),
  [*Harvest of Corruption* \ (Frank Ogodo Ogbeche)], [play], [what corruption costs the person who is invited into it], [2],
  [*Othello* \ (William Shakespeare)], [play], [how a good man is talked into destroying what he loves], [3],
  [*Faceless* \ (Amma Darko)], [novel], [who is responsible when a child is sold, used and killed], [4],
  [*Lonely Days* \ (Bayo Adebowale)], [novel], [what a community does to a woman who refuses its terms], [5],
  [*Native Son* \ (Richard Wright)], [novel], [what a society makes a man do, and then punishes him for], [6],
)

#v(4pt)

#text(size: 9.5pt)[Read the fourth column as a thesis, not a summary. Every question the paper asks about a set text is a way of testing whether you can support that thesis with a scene, a line or a character. A candidate who knows the thesis but not the scene can guess; a candidate who knows the scene but not the thesis can only recognise.]

// ============================================================================
== What a Set-Text Chapter Contains

#grid(
  columns: (1fr, 1fr),
  row-gutter: 8pt,
  column-gutter: 12pt,
  block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[The text worked through]
    #v(3pt)
    #set text(size: 9.4pt)
    + The world of the text: setting, period, and the pressure it puts on the characters.
    + The plot in order, in a table, so that no scene is missing and no scene is out of place.
    + The characters, with the one line that defines each.
    + The themes, each with the two or three scenes that prove it.
    + The technique: narrative voice, structure, imagery, stagecraft.
  ],
  block(width: 100%, fill: jamb-light, stroke: 1pt + jamb-border, radius: 8pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[The paper prepared for]
    #v(3pt)
    #set text(size: 9.4pt)
    + Four worked examples, one at each difficulty, each showing the elimination.
    + A two-minute set, with a note on every answer.
    + A forty-question drill, keyed and solved.
    + The traps that this particular text attracts.
    + A recap card you can photograph and revise from in a queue.
  ],
)

#v(4pt)

#text(size: 9.5pt)[The order matters. The plot table is not there to be memorised as a list; it is there so that when a question quotes a line, you know which scene it belongs to in under five seconds. That is the whole skill of a set-text paper: *location before interpretation*.]

// ============================================================================
== How to Use This Book

#table(
  columns: (1.15fr, 1.55fr, 2.7fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If you have],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[And do],
  ),
  [three months], [every chapter in order], [one text a fortnight, one drill a week, one paper a month],
  [six weeks], [the plots and character tables first], [one text a week; the drill the day after each],
  [three weeks], [the plot tables, the themes and the quotation bank], [Appendix A daily, and both papers],
  [one week], [Appendix F and Appendix J], [the two-minute sets and the traps, one text a day],
)

#v(3pt)

#shortcut-box("The one habit that separates a good set-text score from a poor one")[
  After each scene or chapter, close the book and write *three lines*: who wanted
  something, who stopped them, and what it cost. Three lines a scene is about
  twenty minutes a text, and it converts a novel you have read into a text you can
  answer questions about — which are different things.
]

// ============================================================================
== Where Everything Is

#table(
  columns: (1.25fr, 2.6fr, 0.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Page],
  ),
  [Chapter 1], [the method: how a question on a set text is built, and how to answer it in fifty seconds], [7],
  [Chapter 2], [*Harvest of Corruption*: plot, characters, themes, technique, traps], [21],
  [Chapter 3], [*Othello*: the five acts, the characters, the imagery, the questions], [36],
  [Chapter 4], [*Faceless*: the three books, the investigation, the themes], [50],
  [Chapter 5], [*Lonely Days*: Kufi, the widow's rites, Yaremi's refusal], [64],
  [Chapter 6], [*Native Son*: Fear, Flight, Fate, and the trial], [78],
  [Papers], [two forty-question mock papers, each followed by a key and a note on every question], [92],
  [Appendix A], [sixty rapid-fire pairs: text to character, character to line], [107],
  [Appendix B], [the 120-question master bank], [109],
  [Appendix C], [every key in the volume, with score bands], [126],
  [Appendix D], [the character index, text by text], [130],
  [Appendix E], [the theme ledger: which theme, in which text, proved by which scene], [133],
  [Appendix F], [the quotation bank, with what each quotation is for], [135],
  [Appendix G], [the plot timelines on one page each], [137],
  [Appendix H], [eight model answers beside the half-answer they replace], [139],
  [Appendix I], [the eight-week plan, the last seven days and the four-week version], [142],
  [Appendix J], [thirty traps, in the paper's own words], [144],
  [Appendix K], [the exam-day playbook], [146],
)

#text(size: 9.2pt)[The page numbers above are taken from this printing. The Contents page that follows is generated from the finished PDF at build time, so it gives the exact page of every heading and sub-heading, including the ones this table leaves out.]

// ============================================================================
== The Paper, in Numbers

#table(
  columns: (1.9fr, 0.7fr, 2.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The paper],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Number],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it means for you],
  ),
  [Questions], [40], [one mark each, no negative marking, forty minutes],
  [Set-text questions], [about 12], [three to four per prescribed text, in an average year],
  [Unseen questions], [about 10], [Volume 1's territory; this volume's chapters still teach the method],
  [Terms and devices], [about 10], [definitions and identifications that need no text at all],
  [Context questions], [about 8], [who said it, in what circumstances, and why it matters],
  [Time per set-text question], [40 sec], [location is the skill: find the scene, then answer],
)

#v(3pt)

#trap-box("The four ways a candidate loses set-text marks")[
  *Confusing two characters with similar functions* — Ochuole and Ogeyi, Dedewe and Radeke, Cassio and Roderigo. The paper builds distractors out of exactly this.

  *Answering from the film, or from a summary.* The questions ask what the text does, in words. A remembered adaptation will mislead you on scene order and on who is present.

  *Quoting loosely.* "The handkerchief is a symbol of love" is weak; "the handkerchief is the proof Iago manufactures, which is why its loss is fatal" is an answer.

  *Reading the theme into every option.* A question about a scene wants the scene. Theme is the answer only when the stem asks for it.
]

// ============================================================================
== The Syllabus, Covered

#table(
  columns: (0.38fr, 2.2fr, 1.35fr, 1.4fr),
  inset: (x: 4.5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[§],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The syllabus asks for],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Taught in],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Status],
  ),
  [2], [the prescribed drama texts: plot, character, theme, dramatic technique], [Chapters 2–3], [covered],
  [3], [the prescribed prose texts: plot, character, theme, narrative technique], [Chapters 4–6], [covered],
  [1, 4, 5], [the genres, poetry and unseen appreciation], [Volume 1, and the method in Chapter 1], [Volume 1],
  [—], [the five prescribed poems], [Volume 3], [next volume],
)

#v(4pt)

#text(size: 9.3pt)[This volume covers the set texts of sections 2 and 3 in full, and re-teaches the answer method in Chapter 1 because half of the set-text questions are method questions wearing a quotation. Volume 3 will take the poems and add the longer papers.]

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#current-chapter.update("Table of Contents")

#pagebreak()
#hide[#heading(level: 1, outlined: true)[Table of Contents]]

#v(2pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[
  Every chapter, paper and appendix, with the page on which it begins. The numbers
  are generated from the finished PDF, so they are exact.
]

#v(8pt)

#toc-two-column(toc-rows, cols: 2, compact: true, dense: true)
