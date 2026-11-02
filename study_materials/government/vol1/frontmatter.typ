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

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[GOVERNMENT]
    #v(2mm)
    #text(font: "DejaVu Sans", size: 13.4pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 1: The State, the Constitution and the Organs of Government
    ]

    #v(3mm)
    #text(font: "DejaVu Sans", size: 10.1pt, fill: rgb("#E2E8F0"))[
      The state and its elements, forms of government and the ideologies, the
      constitution and the Nigerian constitutional chain, federalism and the
      three legislative lists, the legislature, the executive and the judiciary,
      parties, pressure groups and elections, citizenship and fundamental rights,
      public administration and local government, and Nigeria in the world — with
      a model answer in every chapter. Eighteen diagrams, six chapter recaps,
      thirty worked examples, and four hundred and forty practice questions,
      each with the reasoning behind the answer and a note on every option.
    ]

    #v(4mm)

    #image("diagrams/gov_cover_banner.svg", width: 100%)

    #v(4mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Who Has the Power]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Every Government question is a question about power: which organ holds
          it, which list grants it, which section limits it, and which body can
          take it away. This volume teaches the map, then makes you use it.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Every Institution Named]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          The National Assembly with its 109 and 360 seats, the Supreme Court and
          the courts beneath it, INEC, the Federal Character Commission, the
          ombudsman, ECOWAS and the United Nations — each drawn, placed and then
          tested.
        ]
      ],
    )

    #v(12mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(3mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Government • Volume 1
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

= The Government Series, and Where This Volume Sits

Government is the paper that separates a candidate who has memorised the words
from one who can place them. "Separation of powers" is six syllables that every
candidate can repeat; the marks are won by the one who can say which organ
appoints the Chief Justice, which one can remove a president, and which section of
which constitution says so. The volume is built to make that placement automatic.

#v(4pt)

#table(
  columns: (0.5fr, 1.5fr, 2.4fr, 0.8fr),
  inset: 5.5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Syllabus part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where this volume teaches it],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Questions],
  ),
  [*I*], [Elements of government], [Chapters 1 and 3 to 5: the state, forms and ideologies, constitutions, the three organs, parties, pressure groups, elections, citizenship, public administration], [about 26],
  [*II*], [Political development in Nigeria], [Chapter 2 and the Nigerian half of every other chapter: pre-colonial administration, colonial rule, nationalism, the constitutional chain, military rule, federalism], [about 8],
  [*III*], [Foreign policy], [Chapter 6: the determinants, the objectives, the Africa centre-piece, the instruments], [about 3],
  [*IV*], [International organisations], [Chapter 6: the UN and its organs, the AU, ECOWAS, the Commonwealth, OPEC], [about 3],
)

#v(6pt)

This volume carries all four parts of the syllabus, because the paper does not
respect the boundary between them: a question on federalism will name the 1999
Constitution, and a question on the constitution will name the National Assembly.
Where the syllabus says *Nigerian government*, the Nigerian case is in the chapter
beside the general principle, not pushed into a separate book.

#v(4pt)

#diagram-fig("diagrams/gov_weights.svg",
  "The forty questions of a typical Government paper, chapter by chapter. Chapters 1, 3 and 4 carry the largest blocks; Chapter 6 is small but certain.", width: 88%)

#concept-box("Which chapter of this book answers which kind of doubt")[
  + *"I know the definition of a state but not the four elements."* Chapter 1, section 1.2 — population, territory, sovereignty and government, and what each one rules out.
  + *"The constitutions are just dates to me."* Chapter 2, section 2.3. Six constitutions, and the one sentence that changed in each.
  + *"Separation of powers and checks and balances sound the same."* Chapter 3, section 3.1 — the first divides the work, the second polices it.
  + *"A pressure group is just a party without a name."* Chapter 4, section 4.3. The difference is one sentence long, and the examiner asks it every year.
  + *"Citizenship by registration and by naturalisation confuse me."* Chapter 5, section 5.1 — marriage and descent on one side, fifteen years of residence on the other.
  + *"Foreign policy is names and dates."* Chapter 6, section 6.2 — the concentric circles turn the names into a system you can reason with.
]

// ============================================================================
// PAGE: THE SUBJECT AT A GLANCE
// ============================================================================

= The Subject at a Glance

#table(
  columns: (1.15fr, 2.6fr),
  inset: 4.6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Paper], [Government, UTME — forty questions in thirty minutes],
  [Section], [Arts and social sciences; compulsory for Law, Political Science, Public Administration and most Arts courses],
  [Marks], [Forty questions, one mark each; no negative marking; about 45 seconds a question],
  [Core idea], [Power is granted, divided and limited by a constitution — and every question is about who holds it and where it stops],
  [The parts], [Part I elements of government, Part II Nigerian political development, Part III foreign policy, Part IV international organisations — all four in this volume],
  [The documents], [The 1999 Constitution, the Electoral Act, the ECOWAS treaty, the UN Charter — each quoted where the paper quotes it],
  [The diagrams], [The elements of the state, forms of government, the ideology spectrum, the constitution matrix, the constitutional timeline, the three lists, separation of powers, the court hierarchy, party systems, electoral systems, citizenship routes, local government, the concentric circles, the UN and ECOWAS organs],
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
  [*1*], [The Study of Government], [A state has four elements, and government is only one of them],
  [*2*], [Constitutions and Constitutional Development], [The constitution is the rule about rules, and Nigeria has written six],
  [*3*], [The Organs of Government], [Three organs make, execute and interpret the law — and each can check the other two],
  [*4*], [Parties, Pressure Groups and Elections], [A party wants to govern; a pressure group wants to be listened to],
  [*5*], [Citizenship, Rights and Public Administration], [Who belongs, what they may claim, and who runs the machinery],
  [*6*], [Nigeria in the International Community], [Foreign policy begins at home and runs outward in circles],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The six chapters follow the order in which the paper builds its questions: what a state is, what a constitution does, who exercises the power, how the people choose them, who belongs and who administers, and how the state behaves abroad. A candidate who skips a chapter finds the next one half-written.]

#v(10pt)

#concept-box("A note on the syllabus, and on the year")[
  The UTME Government syllabus has changed very little for a decade: the elements of
  government, the Nigerian political development, foreign policy and international
  organisations. What changes is the example — a new election, a new chairman of
  INEC, a new secretary-general of the Commonwealth.

  This book therefore teaches the rule and names the example. Where a question turns
  on a date, the date is in Appendix D; where it turns on an institution, the
  institution is in Appendix E; where it turns on a definition, the definition is in
  Appendix F. The chapters carry the reasoning that connects the three.
]

// ============================================================================
// PAGE: THE SIX CHAPTERS AT A GLANCE
// ============================================================================

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
  [*1*], [The Study of Government], [separate state, nation, society and government; place any regime on the ruler-limits axis; define each ideology; and state the rule of law in three parts], [4],
  [*2*], [Constitutions and Constitutional Development], [classify a constitution on both tests; name what each Nigerian constitution introduced; put a power on the exclusive, concurrent or residual list], [3],
  [*3*], [The Organs of Government], [give the functions of each organ, distinguish parliamentary from presidential, and trace an appeal from a magistrate to the Supreme Court], [4],
  [*4*], [Parties, Pressure Groups and Elections], [give the functions of a party, name a party system, distinguish a pressure group from a party, and compare two electoral systems], [4],
  [*5*], [Citizenship, Rights and Public Administration], [name the five routes to citizenship, list the rights in Chapter IV, and describe how the civil service is controlled], [3],
  [*6*], [Nigeria in the International Community], [state the determinants of foreign policy, draw the concentric circles, and place each organisation on the map], [2],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The weight is the average number of questions the topic has carried in recent papers. Chapters 1, 3 and 4 hold twelve of the twenty questions between them: if time is short, those are the three to finish, and Chapters 2, 5 and 6 are then read as the finishing school for the Nigerian and international questions.]

#v(6pt)

== The Moves That Carry the Government Marks

#table(
  columns: (2.3fr, 0.3fr, 2.1fr, 0.3fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [A state has four elements; government is one of them], [1], [The legislature makes, the executive executes, the judiciary interprets], [3],
  [A written constitution is not necessarily rigid], [2], [A pressure group influences; a party contests], [4],
  [Clifford 1922 introduced the elective principle], [2], [FPTP: the winner needs only a plurality], [4],
  [Richards 1946 created the regions], [2], [Registration is marriage or descent; naturalisation is fifteen years], [5],
  [Lyttleton 1954 made Nigeria federal], [2], [Dual citizenship is permitted in Nigeria], [5],
  [Federal law prevails on the concurrent list], [2], [The civil service is permanent, anonymous and impartial], [5],
  [1999: 36 states, the FCT and 774 LGAs], [2], [Africa is the centre-piece of Nigeria's foreign policy], [6],
  [The Supreme Court is the final court of appeal], [3], [The Security Council has five permanent members with a veto], [6],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The number in the narrow column is the chapter that teaches the move. A move you cannot place in its chapter is a move you will not recognise in the hall.]

// ============================================================================
// PAGE: HOW TO USE
// ============================================================================
#current-chapter.update("How to Use This Book")

== How to Use This Book

Every chapter is built in the same order, and the order is the method:

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Exam radar.* The syllabus objectives, the high-yield areas and the three traps that cost the most marks.
  + *The teaching sections.* The definition, the diagram, then the question the examiner writes from it.
  + *Five worked examples.* Two foundation, two UTME standard, one JAMB challenge — each ending in a *Check* line that tests the answer a second way.
  + *Recap card and "in one breath".* The whole chapter on one page, and the same chapter in a paragraph you can recite.
  + *Two-minute set.* Four questions in the style of the CBT engine, with the key and a note on every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#concept-box("The conventions this book uses")[
  + *The constitution.* Unless another is named, "the Constitution" means the Constitution of the Federal Republic of Nigeria 1999 (as amended), and a section number refers to it.
  + *The organs.* *Legislature*, *executive* and *judiciary* are the three arms; *Parliament* means the Westminster model and *National Assembly* means Nigeria's.
  + *The parties.* Party names are given as at the 2023 general election; where a question turns on an older party, the year is given with it.
  + *The dates.* A date in the text is a fact the paper can ask; a date in a question is part of the question. Appendix D holds every date this book uses, in order.
  + *The names.* Where a question needs a name — a Chief Justice, a chairman of INEC — the book gives the office rather than the person, because the person changes and the office does not.
]

#v(6pt)

#trap-box("Four habits that decide the Government marks")[
  *1 · Find the organ.* Every question about a power is really asking which of the three arms exercises it — and the answer is in the verb: makes, executes, interprets.

  *2 · Find the list.* Every question about a federal power is asking whether the subject sits on the exclusive, the concurrent or the residual list. Say the list before you look at the options.

  *3 · Separate the two tests.* Written is not rigid; federal is not presidential; a republic is not a democracy. The examiner writes one option for each confusion.

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
  [Papers 1–2], [Two forty-question papers, timed at thirty minutes, with full solutions], [After Chapter 6, then a week later],
  [Appendices A–C], [Rapid-fire pairs, the 120-question bank, every key in one place], [Once the chapters are done],
  [Appendices D–K], [Dates, institutions, definitions, model answers, planner, comparison tables, the Nigeria file, traps and playbook], [While working, then the last six weeks],
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
  [The state and the elements of government], [4], [3], [Chapter 1],
  [Constitutions and federalism], [4], [3], [Chapters 2 and 5],
  [The organs of government], [5], [4], [Chapter 3],
  [Parties, pressure groups and elections], [5], [4], [Chapter 4],
  [Citizenship, rights and administration], [4], [3], [Chapter 5],
  [Nigerian political development], [8], [6], [Chapter 2, and the Nigerian case notes throughout],
  [Foreign policy and international organisations], [6], [4], [Chapter 6],
  [Current affairs and general knowledge], [4], [3], [Appendix J, and the drill items marked *current*],
)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The blocks are mixed on the screen rather than separated, and the counts shift slightly from year to year. What does not shift is the arithmetic: forty questions, thirty minutes, forty-five seconds each, and no penalty for a wrong answer.]

#v(3pt)

#concept-box("The score that gets you in")[
  + *Forty questions, thirty minutes, no negative marking.* Four options, one right answer, and no penalty for a wrong one — so there is never a reason to leave a box empty.
  + *Aim above your course, not at it.* Cut-offs move. A candidate targeting 250 needs about 30 of 40 in Government; a candidate targeting 300 needs about 35.
  + *Twenty of the forty are institutions and organs.* They are the ones this volume makes certain, and most of them can be answered from the verb in the question.
]

#v(6pt)

== The Five Command Words

Every question in the paper asks you to do one of five things, and the verb tells you which. A candidate who reads the verb before the topic answers faster than one who reads the topic first.

#table(
  columns: (1.15fr, 2.0fr, 2.15fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The verb],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the option must be],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where the mark is lost],
  ),
  [*Define*], [a definition with no example attached], [choosing the option that illustrates rather than defines],
  [*State the function of*], [what the organ does, in the organ's own verb], [naming the organ's powers instead of its functions],
  [*Distinguish*], [the difference, not the two definitions], [writing both definitions and never naming the gap],
  [*Explain*], [a cause and a consequence], [describing the institution instead of accounting for it],
  [*Which is NOT*], [the odd one out], [answering the three that are true and forgetting the negative — underline the NOT before reading the options],
)

== The Syllabus, Covered

#text(size: 9.4pt)[Every topic on the four parts of the UTME Government syllabus appears in this volume. The table names the chapter and, where a topic is narrow enough, the section. Nothing is left out, and nothing is taught twice for the sake of filling a page.]

#v(3pt)

#[
  #set text(size: 8.3pt)
#table(
  columns: (2.15fr, 2.65fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Meaning and scope of government], [Chapter 1, sections 1.1 and 1.2],
  [The state, the nation and society], [Chapter 1, section 1.2],
  [Types and forms of government], [Chapter 1, section 1.3],
  [Political ideologies], [Chapter 1, section 1.4],
  [Constitution and constitutionalism], [Chapter 2, sections 2.1 and 2.2],
  [Rule of law, separation of powers, checks and balances], [Chapter 1, section 1.5; Chapter 3, section 3.1],
  [Organs and arms of government], [Chapter 3, in full],
  [Federalism and the legislative lists], [Chapter 2, section 2.5],
  [Citizenship and fundamental rights], [Chapter 5, sections 5.1 and 5.2],
  [Political parties and party systems], [Chapter 4, sections 4.1 and 4.2],
  [Pressure groups], [Chapter 4, section 4.3],
  [Elections and electoral systems], [Chapter 4, section 4.4],
  [Public opinion and the media], [Chapter 4, section 4.5],
  [Pre-colonial administration and imperialist penetration], [Chapter 2, section 2.3],
  [Decolonisation and nationalism], [Chapter 2, section 2.3],
  [Constitutional development in Nigeria], [Chapter 2, sections 2.3 and 2.4],
  [Post-independence institutions and military rule], [Chapter 2, sections 2.4 and 2.6],
  [Public administration, the civil service and local government], [Chapter 5, sections 5.3 and 5.4],
  [Foreign policy and its determinants], [Chapter 6, sections 6.1 and 6.2],
  [International organisations], [Chapter 6, section 6.4],
)
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[The syllabus is taught in the order in which a paper is most likely to ask it, which is not quite the order in which it is printed: the general principle first, then the Nigerian application of it, then the world beyond Nigeria.]

#v(8pt)

== What the Syllabus Leaves Out

#text(size: 9.4pt)[Three things are deliberately outside the table above, and each of them costs marks every year.]

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *The dates.* The syllabus says *constitutional development*; the paper says *which constitution introduced the elective principle*. Appendix D holds every date in one ordered table, with the one change each constitution made.
  + *The institutions.* The syllabus says *elections*; the paper asks which body registers parties and conducts the poll. Appendix E names every institution this book uses, with what it does and who heads it.
  + *The current example.* The syllabus says *foreign policy*; the paper names a summit, a secretary-general or a peacekeeping mission. Appendix J keeps the Nigerian file current, and the drill marks the few items that turn on a recent event.
]

#v(4pt)

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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • GOVERNMENT VOLUME 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Six chapters, two timed papers and eleven appendices, with the page numbers printed into this list.]

#v(5pt)

// The printed contents keeps every chapter and paper heading and every numbered
// teaching section (1.1, 2.3, 4.5 …). It drops the appendix sub-rows and the
// paper's own section rows, which would otherwise push the list onto a second
// page without telling a reader anything the appendix headings do not.
#let rows = toc-rows.filter(r => r.at(0) == 1 or (
  r.at(1).len() > 3
  and (r.at(1).at(0) in "0123456789" or r.at(1).at(0) in "ABCDEFGHIJK")
  and r.at(1).at(1) == "."
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
