#import "template.typ": *

#current-chapter.update("Appendix I: Comparison Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Comparison Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Comparison Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Seven tables for the questions that ask you to distinguish two things. Read across a row,
    not down a column: the examiner's options are almost always two items from the same row.
  ]
]

#v(5pt)

== I.1 The Three Pre-Colonial Systems

#text(size: 7.7pt)[
#table(
  columns: (1.0fr, 1.7fr, 1.75fr, 1.7fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Emirate],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Yoruba],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Igbo],
  ),
  [Head], [the emir, under the caliph], [the Oba, with the Oyomesi], [no single head],
  [Council], [emirate council of title holders], [Oyomesi, led by the Bashorun], [council of elders and title holders],
  [Court], [Alkali courts under Sharia], [the Oba's court], [elders, oracles and the assembly],
  [Check], [the council and the caliph's power to depose], [the Oyomesi could reject the Alaafin], [consensus, age grades and the assembly],
  [Army], [under the emir], [under the Are-Ona-Kakanfo], [age grades and village levies],
  [Colonial use], [the base of indirect rule], [adapted indirect rule], [warrant chiefs and the 1929 war],
)
]

#v(3pt)
#text(font: "DejaVu Sans", size: 8.2pt, fill: jamb-muted)[The row to memorise is *Check*: it is the row that answers “what limited the ruler?” and it is the row the paper turns into a question.]

#v(4pt)

== I.2 Indirect Rule in the North and the East

#text(size: 7.9pt)[
#table(
  columns: (1.35fr, 2.2fr, 2.2fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[North],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[East],
  ),
  [Existing authority], [emir, district head, village head], [councils of elders and title societies],
  [British instrument], [the Native Authority], [the warrant chief],
  [Court], [Alkali courts retained], [native courts under warrant chiefs],
  [Legitimacy], [high, because the emir was already accepted], [low, because the warrant had no basis in custom],
  [Crisis], [the 1903 conquest, then accommodation], [the 1929 women's war],
  [Result], [a preserved hierarchy under supervision], [clan councils, and a lasting distrust of the chiefs],
)
]

#v(4pt)

== I.3 Four Constitutions in Four Lines

#text(size: 7.8pt)[
#table(
  columns: (0.6fr, 1.4fr, 2.55fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it created],
  ),
  [1960], [parliamentary], [a Prime Minister responsible to parliament, a Governor-General, three regions and Lagos],
  [1963], [parliamentary republic], [a Nigerian President in place of the Queen, a Supreme Court and the Mid-West],
  [1979], [presidential], [an executive President, a bicameral legislature, 19 states and the FCT],
  [1999], [presidential], [the current frame: 36 states, the FCT, 774 local governments and Chapter IV rights],
)
]

#v(4pt)

== I.4 Military and Civilian Government

#text(size: 7.8pt)[
#table(
  columns: (1.3fr, 2.1fr, 2.1fr),
  inset: (x: 5pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Military],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Civilian],
  ),
  [Source of law], [decrees and edicts], [Acts and laws made by legislatures],
  [Constitution], [suspended], [in force],
  [Legislature], [dissolved], [elected and sitting],
  [Courts], [ouster clauses and special tribunals], [ordinary courts with review],
  [Removal], [only by another coup], [by election or impeachment],
  [Accountability], [to the head of state], [to the legislature, courts and voters],
  [Rights], [detention without trial], [Chapter IV rights, enforceable in court],
)
]

#v(4pt)

== I.5 First Past the Post and Proportional Representation

#text(size: 7.8pt)[
#table(
  columns: (1.35fr, 2.05fr, 2.05fr),
  inset: (x: 5pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[First past the post],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Proportional representation],
  ),
  [Constituency], [one member per constituency], [multi-member, usually a party list],
  [Winner], [the most votes, no majority needed], [seats in proportion to votes],
  [Strength], [simple, and usually a clear government], [fair to small parties],
  [Weakness], [wasted votes and exaggerated majorities], [coalitions and weaker local ties],
  [Used in Nigeria], [National Assembly and state houses], [not used for federal elections],
)
]

#v(4pt)

== I.6 The Five Organisations

#text(size: 7.6pt)[
#table(
  columns: (0.95fr, 0.65fr, 1.65fr, 2.1fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Membership],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Nigeria's use of it],
  ),
  [ECOWAS], [1975], [West African states], [free movement, ECOMOG, the regional market],
  [OAU / AU], [1963 / 2002], [African states], [decolonisation, mediation, peacekeeping],
  [UN], [1945], [almost every state], [peacekeeping, the Security Council seat, the specialised agencies],
  [Commonwealth], [voluntary], [mostly former British territories], [consultation, observation, suspension and return],
  [OPEC], [1960], [oil-exporting states], [quotas and price diplomacy],
)
]

#v(4pt)

== I.7 The Civil Service and the Public Corporation

#text(size: 7.8pt)[
#table(
  columns: (1.3fr, 2.1fr, 2.1fr),
  inset: (x: 5pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Civil service],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Public corporation],
  ),
  [Legal basis], [a department of the executive], [a statute creating a separate body],
  [Head], [the permanent secretary, under the minister], [a board and a chief executive],
  [Funds], [appropriation from the treasury], [its own revenue, with subsidies],
  [Staff], [civil servants under the commission], [its own employees],
  [Accountability], [the minister, the legislature and the auditor], [the board, the minister and the auditor],
  [Reform], [Udoji, Phillips, Ayida, Oronsaye], [commercialisation, privatisation, deregulation],
)
]

#v(4pt)

#concept-box("How to use a comparison table in the hall")[
  When two options look alike, they are almost always a row from one of these tables. Ask which column the stem describes, and the row will decide the answer. This is faster than recalling the chapter, and it is the reason the tables are printed rather than summarised.
]
