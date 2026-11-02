#import "template.typ": *
#import "_toc.typ": toc-rows

// Set before the cover, so the first inside page carries the right running head.
#current-chapter.update("Series Overview & Poem Strategy")

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
        text(font: "DejaVu Sans", size: 10pt, weight: "bold", fill: white)[VOLUME 3],
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
      Volume 3: The Poems and the Mock Papers
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      *Vanity*, *Ambush*, *The Anvil and the Hammer*, *Crossing the Bar* and *The
      Proud King*, worked line by line and section by section. For each poem: the
      situation, the movement stanza by stanza, the voice and form, the images that
      carry the argument, and the questions the paper actually asks. Sixteen
      diagrams, seven chapter recaps, twenty-eight worked examples, four full
      sixty-question papers, and six hundred and forty practice questions, each
      with a full solution.
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
          A poem question is never "what does this line mean". It is "what is this
          line doing at this point in this poem". Locate the stanza, then answer.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Five Poems, Four Papers]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Two African poems, two English lyrics and one long narrative in rhyme
          royal — then four papers at the length at which speed becomes a skill.
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
        JAMB CBT Master Study Series • Literature in English • Volume 3
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

The Literature paper is examined in one sitting and prepared in two habits. The
first habit is *applied*: read a passage you have never seen and say what it is
doing. The second is *retained*: a question that begins "In *Vanity*, the dead are"
is answerable only if you know the poem and what the dead are doing in it.

Volume 1 taught the first habit on unseen material. Volume 2 worked the prescribed
plays and novels. This volume does both jobs on the hardest section to cram: the
five poems, and then the four full papers that test all of it at speed.

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
  [*1*], [The Principles], [the three genres, drama and prose technique, poetry, devices, and the method for an unseen extract], [published],
  [*2*], [The Drama and the Prose], [the two prescribed plays and the three prescribed novels, worked through text by text], [published],
  [*3*], [The Poems and the Mock Papers], [the five prescribed poems line by line, a quotation bank, and four full papers at sixty questions], [this volume],
)

#v(4pt)

#concept-box("Why a poem is easier than a novel, and harder than it looks")[
  A poem of thirty lines can be learned in an evening, which is why candidates leave
  it late. But a poem is *dense*: every line is doing work, and the paper can ask
  about any of them. The five poems in this volume total a little over nine hundred
  lines, of which one poem is eight hundred and fifty. That is one evening's reading
  and six weeks of forgetting, unless the reading is organised — which is what the
  five passes in Chapter 1 are for.
]

// ============================================================================
== The Five Poems, and What Each One Is For

#table(
  columns: (1.5fr, 1.1fr, 2.0fr, 0.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Poem],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Form],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question it exists to ask],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Chapter],
  ),
  [*Vanity* \ (Birago Diop)], [lyric, free verse], [what happens to a people who stop listening to their dead], [2],
  [*Ambush* \ (Gbemisola Adeoti)], [lyric, four stanzas], [what a country does to the citizens who try to leave it behind], [3],
  [*The Anvil and the Hammer* \ (Kofi Awoonor)], [lyric, two stanzas], [whether a culture can be kept and changed at once], [4],
  [*Crossing the Bar* \ (Alfred, Lord Tennyson)], [elegy, four quatrains], [how to face death without pretending it is not death], [5],
  [*The Proud King* \ (William Morris)], [narrative, rhyme royal], [what a man is worth when his rank is taken away], [6],
)

#v(4pt)

#text(size: 9.5pt)[Read the third column as a thesis, not a summary. Every question the paper asks about a poem is a way of testing whether you can support that thesis with a line, a stanza or a turn. A candidate who knows the thesis but not the line can guess; a candidate who knows the line but not the thesis can only recognise.]

// ============================================================================
== What a Poem Chapter Contains

#grid(
  columns: (1fr, 1fr),
  row-gutter: 8pt,
  column-gutter: 12pt,
  block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-green)[The poem worked through]
    #v(3pt)
    #set text(size: 9.4pt)
    + The situation: who speaks, where, and to whom.
    + The movement, stanza by stanza, in a table, so that no turn is missed.
    + The voice and the form: line, metre, rhyme, stanza shape.
    + The images that carry the argument, and what each one is doing.
    + The themes, each with the lines that prove it.
  ],
  block(width: 100%, fill: jamb-light, stroke: 1pt + jamb-border, radius: 8pt, inset: 11pt)[
    #text(font: "DejaVu Sans", size: 9.4pt, weight: "bold", fill: jamb-navy)[The paper prepared for]
    #v(3pt)
    #set text(size: 9.4pt)
    + Four worked examples, one at each difficulty, each showing the elimination.
    + A two-minute set, with a note on every answer.
    + A forty-question drill, keyed and solved.
    + The traps that this particular poem attracts.
    + A recap card you can photograph and revise from in a queue.
  ],
)

#v(4pt)

#text(size: 9.5pt)[The order matters. The stanza table is not there to be recited; it is there so that when a question quotes half a line, you know which stanza it comes from in under five seconds. That is the whole skill of a poem paper: *locate the stanza before you interpret the line*.]

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
  [three months], [every chapter in order], [one poem a fortnight, one drill a week, one paper a fortnight],
  [six weeks], [the stanza tables and the quotation bank], [one poem a week; the drill the day after each],
  [three weeks], [Chapters 1–6 quickly, then the papers], [one paper every four days, marked and solved],
  [one week], [Appendix A and Appendix D], [the rapid-fire pairs daily; two papers, timed],
)

#v(3pt)

#shortcut-box("The one habit that separates a good poem score from a poor one")[
  Read the poem aloud twice before you read a single note. The first reading tells
  you what happens; the second tells you where it turns. Almost every question on a
  prescribed poem is answerable from those two readings plus the stanza table — and
  almost every wrong answer comes from reading the notes instead of the poem.
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
  [Chapter 1], [the method: five passes, four question shapes, and how a poem answer is marked], [7],
  [Chapter 2], [*Vanity*: the six stanzas, the dead, and the verdict of "since"], [21],
  [Chapter 3], [*Ambush*: three predators, one road, and the pun on Peter], [35],
  [Chapter 4], [*The Anvil and the Hammer*: the forge, the sewing, and cultural syncretism], [49],
  [Chapter 5], [*Crossing the Bar*: the voyage, the Pilot, and the elegy of acceptance], [63],
  [Chapter 6], [*The Proud King*: the boast, the fall, the beggar and the angel], [77],
  [Chapter 7], [the sixty-question paper: shape, order, timing, and the comparison stem], [92],
  [Papers], [four sixty-question mock papers, each followed by a key and a solution on every question], [106],
  [Appendix A], [sixty rapid-fire pairs: poem to line, line to poem], [146],
  [Appendix B], [the 120-question master bank], [148],
  [Appendix C], [every key in the volume, with score bands], [165],
  [Appendix D], [the quotation bank, poem by poem], [171],
  [Appendix E], [the verse-terms glossary the poems actually use], [174],
  [Appendix F], [metre and form: a scansion table for every poem], [176],
  [Appendix G], [the five poems on one page each], [178],
  [Appendix H], [eight model answers beside the half-answer they replace], [180],
  [Appendix I], [the eight-week plan and the last seven days], [183],
  [Appendix J], [thirty traps, in the paper's own words], [185],
  [Appendix K], [the exam-day playbook], [187],
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
  [Questions], [60], [one mark each, no negative marking, sixty minutes],
  [Poem questions], [about 20], [four to five per prescribed poem, in an average year],
  [Unseen questions], [about 12], [a poem you have never seen, with questions on form and effect],
  [Terms and devices], [about 8], [definitions and identifications that need no text at all],
  [Comparison questions], [1–3], [a stem that names two poems and asks for the difference],
  [Time per poem question], [50 sec], [locate the stanza, then answer],
)

#v(3pt)

#trap-box("The four ways a candidate loses poem marks")[
  *Confusing the poem with its subject.* *Crossing the Bar* is not about boats, and *Ambush* is not about animals. The vehicle is the animal; the tenor is the state.

  *Quoting loosely.* "The land is a whale" is weak; "the land is a whale that swallows the sinker with hook, line and bait — the whole apparatus of fishing, not just the fish" is an answer.

  *Reading the theme into every option.* A question about a line wants the line. Theme is the answer only when the stem asks for it.

  *Answering the unseen poem from memory of a prescribed one.* The unseen poem is printed precisely so that it can be answered from the page.
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
  [4], [the prescribed poems: subject, form, imagery, tone and theme], [Chapters 2–6], [covered],
  [7], [poetic devices and their effects], [each chapter's technique section, and Appendix E], [covered],
  [5, 6], [unseen poetry and the appreciation question], [Chapter 1, then the unseen section of every paper], [covered],
  [—], [examination technique at full length], [Chapter 7, the four papers, Appendices I–K], [covered],
)

#v(3pt)

#text(size: 9.3pt)[This volume is the last of the three, and it is built to be used last: the method chapter assumes Volume 1's vocabulary, and the papers assume all five poems. If you are starting here, read Chapter 1 twice and treat the papers as teaching material for the first fortnight.]

// ============================================================================
// PAGE: TABLE OF CONTENTS
// ============================================================================
#pagebreak()

= Table of Contents

#text(size: 9.5pt)[
  Every chapter, paper and appendix, with the page on which it begins. The numbers
  are generated from the finished PDF, so they are exact.
]

#v(6pt)

#toc-two-column(toc-rows, cols: 2, compact: false, dense: true)
