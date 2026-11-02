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

  #pad(x: 20mm, top: 9mm)[
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

    #v(5mm)

    #box(
      fill: rgb("#064E3B"),
      stroke: 1pt + rgb("#34D399"),
      radius: 20pt,
      inset: (x: 14pt, y: 5pt),
      text(font: "DejaVu Sans", size: 9.5pt, weight: "bold", fill: rgb("#A7F3D0"))[
        UNIFIED TERTIARY MATRICULATION EXAMINATION (UTME)
      ],
    )

    #v(3.5mm)

    #text(font: "DejaVu Sans", size: 38pt, weight: "bold", fill: white)[GOVERNMENT]
    #v(1.5mm)
    #text(font: "DejaVu Sans", size: 13.2pt, weight: "bold", fill: rgb("#34D399"))[
      Volume 2: The Nigerian Story — Emirs, Governors and Generals
    ]

    #v(2.5mm)
    #text(font: "DejaVu Sans", size: 9.9pt, fill: rgb("#E2E8F0"))[
      Pre-colonial administration and colonial rule, nationalism and the
      independence bargain, federalism in practice, thirty-three years of
      military politics, public administration, foreign policy, and the
      electoral machinery from the register to the petition. Seventeen
      diagrams, eight chapter recaps, thirty-two worked examples, and five
      hundred and twenty practice questions, each with the reasoning behind
      the answer and a note on every option.
    ]

    #v(3.5mm)

    #image("diagrams/gov2_cover_banner.svg", width: 100%)

    #v(3.5mm)

    #grid(
      columns: (1fr, 1fr),
      row-gutter: 7pt,
      column-gutter: 10pt,
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ Every Regime, in Order]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          Ironsi, Gowon, Murtala, Obasanjo, Shagari, Buhari, Babangida,
          Shonekan, Abacha, Abubakar — dated, explained, and tested in the
          order the examiner expects them.
        ]
      ],
      block(width: 100%, fill: rgb("#0F2942"), stroke: 0.8pt + rgb("#334155"), radius: 8pt, inset: 8pt)[
        #text(font: "DejaVu Sans", size: 9.3pt, weight: "bold", fill: rgb("#FCD34D"))[★ The Machinery, Named]
        #v(2pt)
        #text(font: "DejaVu Sans", size: 8.2pt, fill: rgb("#E2E8F0"))[
          The three lists and the 13 per cent derivation, INEC and BIVAS,
          the civil service and the Public Complaints Commission, ECOWAS and
          the AU — each drawn, placed and then tested.
        ]
      ],
    )

    #v(8mm)

    #line(length: 100%, stroke: 0.8pt + rgb("#334155"))
    #v(2.5mm)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      text(font: "DejaVu Sans", size: 8.6pt, fill: rgb("#94A3B8"))[
        JAMB CBT Master Study Series • Government • Volume 2
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

= Where This Volume Sits

Volume 1 taught the general machinery: what a state is, what a constitution does,
which organ holds which power, how parties and pressure groups work, who is a
citizen, and how Nigeria behaves abroad. This volume takes the Nigerian half of
that machinery and slows it down. It is the volume of *dates, regimes, lists and
institutions* — the material a candidate can recite badly and answer precisely.

#v(4pt)

#table(
  columns: (0.45fr, 1.6fr, 2.55fr, 0.75fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Syllabus part],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Chapter that carries it here],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Qs],
  ),
  [*I*], [Pre-colonial and colonial administration], [Chapter 1 and Chapter 2: the emirate, the Yoruba chieftaincy, the Igbo village republic, indirect rule, the warrant chiefs and the 1929 women's war], [about 4],
  [*II*], [Nationalism and constitutional development], [Chapter 3: the NNDP, NCNC, AG, NPC and NEPU; Clifford to Lyttleton; the 1959 coalition], [about 5],
  [*III*], [Federalism and military rule], [Chapters 4 and 5: the three lists, the revenue formula, state creation, the coups and the decrees], [about 8],
  [*IV*], [Public administration], [Chapter 6: the civil service, the corporations, local government and the ombudsman], [about 5],
  [*V*], [Foreign policy], [Chapter 7: the circles, the institutions and the instruments], [about 4],
  [*VI*], [Elections and electoral administration], [Chapter 8: the systems, INEC, the cycle, the 2022 Act and the petition], [about 5],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The counts are the average weight of each block in recent papers; they add to more than forty because the paper mixes the blocks and the mix moves from year to year. Learn the two heaviest — federalism and military rule — first.]

#v(5pt)

#concept-box("Volume 1 and Volume 2: which book answers which doubt")[
  + *"What are the elements of a state?"* Volume 1, Chapter 1. Volume 2 assumes it.
  + *"Which constitution introduced the elective principle?"* Volume 2, Chapter 3 — 1922, the Clifford Constitution, and the answer is a date with a name attached.
  + *"What is the difference between exclusive and concurrent?"* Volume 1 defines it; Volume 2, Chapter 4 puts subjects on the lists and gives the conflict rule.
  + *"Who was the first military head of state?"* Volume 2, Chapter 5 — Ironsi, January 1966.
  + *"What does INEC do?"* Volume 2, Chapter 8, in full; Volume 1 gave the one-paragraph version.
  + *"How does a bill become law?"* Volume 1, Chapter 3. Volume 2 does not repeat it, and the paper still asks it.
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
  [This volume], [The Nigerian half of the syllabus: administration before 1900, colonial rule, nationalism, federalism, the military, the civil service, foreign policy and elections],
  [Core idea], [Nigeria is a bargain between units that did not want to be dominated — and every institution in the book exists to hold the bargain together],
  [The documents], [The 1999 Constitution, the Electoral Act 2022, the ECOWAS treaty, the AU Constitutive Act — quoted where the paper quotes them],
  [The diagrams], [The three pre-colonial systems, the colonial timeline, the party map of 1959, the three lists, the regime sequence, the administrative tiers, the concentric circles, the electoral cycle, and a recap card for every chapter],
)

#v(5pt)

#table(
  columns: (0.4fr, 1.65fr, 3.8fr),
  inset: 4.2pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[In one line],
  ),
  [*1*], [Pre-Colonial Administration], [Three systems, one question: who governs, and what limits the ruler?],
  [*2*], [Colonial Rule], [Indirect rule worked where a chief already ruled, and broke where none did],
  [*3*], [Nationalism and Independence], [Five parties, six constitutions, and a coalition that made a country],
  [*4*], [Federalism in Practice], [Three lists, thirty-six states, 774 councils and a 13 per cent formula],
  [*5*], [The Military in Politics], [Six coups, thirty-three years, and a centre built by decree],
  [*6*], [Public Administration], [A permanent service, a loss-making corporation and a council without money],
  [*7*], [Foreign Policy], [Africa as the centre-piece, and a voice that depends on the oil price],
  [*8*], [Elections and Administration], [A register, a ballot, a BIVAS and a petition — how a government is unmade],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The eight chapters follow the Nigerian story in time, and then follow the machinery outward: who ruled before the colonial state, how the colonial state was built, how it was dismantled, what replaced it, who runs it, how it speaks abroad, and how it is chosen. A candidate who reads them out of order will still pass; a candidate who reads them in order will remember the dates.]

#v(8pt)

#concept-box("A note on the syllabus, and on the dates")[
  The Nigerian sections of the UTME Government syllabus change slowly. What changes is the
  example: a new election, a new electoral act, a new chairman of INEC, a new set of states in
  the revenue formula.

  This volume therefore teaches the rule and fixes the date. Where a question turns on a year,
  the year is in Appendix D and repeated in the chapter; where it turns on an institution, the
  institution is in Appendix E; where it turns on a definition, the definition is in Appendix F.
  The chapters carry the reasoning that connects the three, because a date without a story is
  the first thing a candidate forgets in the hall.
]

// ============================================================================
// PAGE: THE EIGHT CHAPTERS AT A GLANCE
// ============================================================================

= The Eight Chapters at a Glance

#table(
  columns: (0.4fr, 1.4fr, 3.0fr, 0.5fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[By the end of it you can],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Qs],
  ),
  [*1*], [Pre-Colonial Administration], [describe the emirate, the Yoruba chieftaincy and the Igbo village republic, and say what checked each ruler], [3],
  [*2*], [Colonial Rule], [give the date of annexation and amalgamation, explain indirect rule, and say why it failed in the east], [4],
  [*3*], [Nationalism and Independence], [place five parties by date and leader, give the change each constitution made, and explain the 1959 coalition], [5],
  [*4*], [Federalism in Practice], [put a subject on the right list, state the conflict rule, and give the state and council figures], [5],
  [*5*], [The Military in Politics], [recite the regimes in order, define decree and ouster clause, and give the two handover dates], [4],
  [*6*], [Public Administration], [name the tiers, the canons and the reforms, and distinguish the ombudsman from the prosecutor], [5],
  [*7*], [Foreign Policy], [draw the circles, date ECOWAS, the OAU and the AU, and give one example of each instrument], [4],
  [*8*], [Elections and Administration], [name the systems, trace the cycle, explain BIVAS, and say where a petition is filed], [5],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Chapters 3, 4 and 8 carry fifteen of the forty questions between them. If time is short, those are the three to finish; Chapters 1, 2, 5, 6 and 7 are then read as the finishing school for the institutional questions.]

#v(6pt)

== The Moves That Carry the Nigerian Marks

#table(
  columns: (2.35fr, 0.3fr, 2.05fr, 0.3fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [The emir ruled with a council, not alone], [1], [Clifford 1922 introduced the elective principle], [3],
  [The Igbo village republic had no single ruler], [1], [Richards 1946 created the regions], [3],
  [Indirect rule needed a chief to rule through], [2], [Lyttleton 1954 made Nigeria federal], [3],
  [The warrant chiefs were imposed where none existed], [2], [The 1959 election produced an NPC–NCNC coalition], [3],
  [Lagos was annexed in 1861; the country amalgamated in 1914], [2], [Federal law prevails on a concurrent matter], [4],
  [The 1929 women's war began in Aba], [2], [36 states, the FCT and 774 local governments], [4],
  [Ironsi was the first military head of state], [5], [13 per cent of oil revenue goes by derivation], [4],
  [Nigeria returned to civilian rule in 1979 and 1999], [5], [Africa is the centre-piece of foreign policy], [7],
  [An ouster clause removes the court's jurisdiction], [5], [ECOWAS was founded in 1975], [7],
  [The civil service is permanent, anonymous and impartial], [6], [BIVAS verifies fingerprint and face], [8],
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
  + *Four worked examples.* One foundation, two UTME standard, one JAMB challenge — each broken into the steps that produce the answer.
  + *Recap card and "in one breath".* The whole chapter on one page, and the same chapter in a paragraph you can recite.
  + *Two-minute set.* Four questions in the style of the CBT engine, with the key and a note on every option.
  + *The drill.* Forty questions with full solutions. Attempt all forty before you look at the key.
]

#v(6pt)

#concept-box("The conventions this book uses")[
  + *The constitution.* Unless another is named, "the Constitution" means the Constitution of the Federal Republic of Nigeria 1999 (as amended), and a section number refers to it.
  + *The years.* A year in the text is a fact the paper can ask; a year in a question is part of the question. Appendix D holds every date this book uses, in order.
  + *The regimes.* Military heads of state are given by surname and date of accession, because the paper asks for both — "Gowon, 1966", not "General Gowon".
  + *The parties.* Party names are given as at the 2023 general election; where a question turns on an older party, the year is given with it.
  + *The institutions.* Where a question needs a name — a chairman of INEC, a secretary-general of the UN — the book gives the office rather than the person, because the person changes and the office does not.
]

#v(6pt)

#trap-box("Four habits that decide the Nigerian marks")[
  *1 · Fix the date first.* The Nigerian questions are dated: 1861, 1914, 1922, 1946, 1954, 1960, 1963, 1966, 1975, 1979, 1999. A candidate who knows the sequence can eliminate two options before reading the stem.

  *2 · Ask which list.* Every question about a federal power is asking whether the subject sits on the exclusive, the concurrent or the residual list. Say the list before you look at the options.

  *3 · Separate the pair.* Indirect rule is not direct rule; a decree is not an edict; anonymity is not impartiality; the ombudsman is not the prosecutor. The examiner writes one option for each confusion.

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
  [Chapters 1–8], [Four worked examples, a recap card, a four-question set and a forty-question drill per chapter], [First pass, then wherever a drill shows a gap],
  [Papers 1–2], [Two forty-question papers, timed at thirty minutes, with full solutions], [After Chapter 8, then a week later],
  [Appendices A–C], [Rapid-fire pairs, the 120-question bank, every key in one place], [Once the chapters are done],
  [Appendices D–K], [Dates, institutions, definitions, model answers, planner, comparison tables, the Nigeria file, traps and playbook], [While working, then the last six weeks],
)

#v(4pt)

#text(size: 9.6pt)[A note on order. Do not read the book from the first page to the last and then start the drills: the drills are the reading. Work a chapter, sit its drill the same week, and let the solutions send you back to the one section you skimmed. The papers exist to mix the chapters, because the examination mixes them.]

#v(6pt)

== The Paper, in Numbers

#table(
  columns: (1.95fr, 1.0fr, 1.1fr, 1.55fr),
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
  [Pre-colonial and colonial administration], [3], [2], [Chapters 1 and 2],
  [Nationalism and constitutional development], [5], [4], [Chapter 3],
  [Federalism and the lists], [5], [4], [Chapter 4],
  [Military rule and political development], [4], [3], [Chapter 5],
  [Public administration and local government], [5], [4], [Chapter 6],
  [Foreign policy and international organisations], [4], [3], [Chapter 7],
  [Elections and electoral administration], [5], [4], [Chapter 8],
  [Current affairs and general knowledge], [4], [3], [Appendix J, and the drill items marked *current*],
  [Mixed revision], [5], [3], [Papers 1 and 2, Appendix B],
)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The blocks are mixed on the screen rather than separated, and the counts shift slightly from year to year. What does not shift is the arithmetic: forty questions, thirty minutes, forty-five seconds each, and no penalty for a wrong answer.]

#v(3pt)

#concept-box("The score that gets you in")[
  + *Forty questions, thirty minutes, no negative marking.* Four options, one right answer, and no penalty for a wrong one — so there is never a reason to leave a box empty.
  + *Aim above your course, not at it.* Cut-offs move. A candidate targeting 250 needs about 30 of 40 in Government; a candidate targeting 300 needs about 35.
  + *Half of the forty are Nigerian institutions and dates.* They are the ones this volume makes certain, and most of them can be answered from the date or the list in the stem.
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

#text(size: 9.4pt)[Every Nigerian topic on the UTME Government syllabus appears in this volume. The table names the chapter and, where a topic is narrow enough, the section. Nothing is left out, and nothing is taught twice for the sake of filling a page.]

#v(3pt)

#[
  #set text(size: 8.3pt)
#table(
  columns: (2.15fr, 2.65fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [Pre-colonial administration: the emirate, the Yoruba and the Igbo systems], [Chapter 1, sections 1.1 to 1.4],
  [The checks on a traditional ruler], [Chapter 1, section 1.5],
  [Colonial rule: annexation, amalgamation and indirect rule], [Chapter 2, sections 2.1 to 2.3],
  [The warrant chiefs and the 1929 women's war], [Chapter 2, section 2.4],
  [The colonial economy and its legacies], [Chapter 2, section 2.5],
  [Nationalism and the nationalist leaders], [Chapter 3, sections 3.1 and 3.2],
  [The constitutional chain, 1922 to 1963], [Chapter 3, section 3.3],
  [The 1959 election and the independence bargain], [Chapter 3, section 3.4],
  [Federalism, the three lists and the conflict rule], [Chapter 4, sections 4.1 and 4.2],
  [State creation, 1967 to 1996], [Chapter 4, section 4.3],
  [Revenue allocation and federal character], [Chapter 4, sections 4.4 and 4.5],
  [Local government as the third tier], [Chapter 4, section 4.5 and Chapter 6, section 6.5],
  [Military rule: the coups, the regimes and the decrees], [Chapter 5, sections 5.1 to 5.4],
  [The consequences of military rule], [Chapter 5, section 5.5],
  [The civil service: structure, canons and reforms], [Chapter 6, sections 6.1 to 6.3],
  [Public corporations and privatisation], [Chapter 6, section 6.4],
  [Accountability institutions], [Chapter 6, section 6.6],
  [Foreign policy and its determinants], [Chapter 7, sections 7.1 and 7.2],
  [ECOWAS, the AU, the UN, the Commonwealth and OPEC], [Chapter 7, section 7.2],
  [Elections, INEC and the electoral cycle], [Chapter 8, sections 8.1 to 8.4],
  [Free and fair elections, the 2022 Act and the petition], [Chapter 8, sections 8.5 and 8.6],
)
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[The syllabus is taught in the order in which the Nigerian story happened, and then in the order in which the paper is likely to ask it: the past first, then the machinery, then the world beyond Nigeria.]

#v(8pt)

== What the Syllabus Leaves Out

#text(size: 9.4pt)[Three things are deliberately outside the table above, and each of them costs marks every year.]

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *The dates.* The syllabus says *constitutional development*; the paper says *which constitution introduced the elective principle*. Appendix D holds every date in one ordered table, with the one change each constitution made.
  + *The institutions.* The syllabus says *elections*; the paper asks which body registers parties and conducts the poll, and what the 2022 Act changed. Appendix E names every institution this book uses, with what it does and who heads it.
  + *The judgement.* The syllabus says *military rule*; the paper asks for two achievements and two failures. Appendix H gives model answers of the length the paper wants, and Appendix K gives the phrases that turn a list into an answer.
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
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: rgb("#A7F3D0"))[JAMB CBT MASTER SERIES • GOVERNMENT VOLUME 2]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 17pt, weight: "bold", fill: white)[Contents]
]

#v(3pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Eight chapters, two timed papers and eleven appendices, with the page numbers printed into this list.]

#v(5pt)

// The printed contents keeps every chapter and paper heading and every numbered
// teaching section (1.1, 2.3, 4.5 …). It drops the appendix sub-rows and the
// paper's own section rows, which would otherwise push the list onto a second
// page without telling a reader anything the appendix headings do not.
#let rows = toc-rows.filter(r => r.at(0) == 1 or (
  r.at(1).len() > 3
  and r.at(1).at(0) in "12345678"
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

#let clean-title(t) = {
  if t.starts-with("Chapter ") and t.contains(": ") { t.split(": ").at(1) } else { t }
}

#let trunc(t, n: 46) = {
  if t.len() <= n { return t }
  let words = t.split(" ")
  let out = words.at(0)
  for w in words.slice(1) {
    if out.len() + 1 + w.len() <= n { out = out + " " + w } else { break }
  }
  out + "…"
}

#let toc-cells(rs) = rs.map(r => (
  if r.at(0) == 1 {
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: jamb-navy)[#trunc(clean-title(r.at(1)), n: 42)]
  } else {
    text(font: "DejaVu Sans", size: 6.8pt, fill: jamb-slate)[#trunc(clean-title(r.at(1)), n: 50)]
  },
  text(font: "DejaVu Sans", size: 6.8pt, fill: jamb-muted)[#r.at(2)],
)).flatten()

#let half = calc.ceil(rows.len() / 2)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 22pt,
  table(
    columns: (1fr, auto),
    inset: (x: 1pt, y: 1.55pt),
    stroke: none,
    align: (left + horizon, right + horizon),
    ..toc-cells(rows.slice(0, half)),
  ),
  table(
    columns: (1fr, auto),
    inset: (x: 1pt, y: 1.55pt),
    stroke: none,
    align: (left + horizon, right + horizon),
    ..toc-cells(rows.slice(half)),
  ),
)
