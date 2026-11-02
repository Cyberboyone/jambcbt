#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sixty one-line prompts with the answer beside each: twenty definitions, twenty
    dates and numbers, and twenty pairings of subject, institution and function.
    Cover the right-hand column with a sheet of paper and work down the list — ten
    seconds a line. Anything you cannot answer in ten seconds is a chapter to
    reread tonight.
  ]
]

#v(5pt)

== A.1 Twenty Definitions

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.15fr, 2.05fr),
  inset: (x: 6pt, y: 5.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer],
  ),
  [A system that divides power between a centre and component units, each supreme in its own sphere], [Federalism],
  [A system in which the centre delegates power to local authorities it can abolish], [A unitary system],
  [A league of states whose creature the central government is], [A confederation],
  [Governing through existing chiefs and traditional institutions], [Indirect rule],
  [A chief appointed by the British where no traditional ruler existed], [A warrant chief],
  [The union of the Northern and Southern Protectorates in 1914], [Amalgamation],
  [The demand by a people that they should govern themselves], [Nationalism],
  [The right of a limited electorate to elect representatives to a legislature], [The elective principle],
  [A government formed by two or more parties because none has a majority], [A coalition],
  [A clause that removes the courts' power to review a decree], [An ouster clause],
  [A law made by the federal military government], [A decree],
  [A law made by a state military administrator], [An edict],
  [The rule that federal appointments reflect Nigeria's diversity], [Federal character],
  [The principle that a producing area receives a share of the revenue from its resource], [Derivation],
  [The tier of government closest to the people], [Local government],
  [A statutory body owned by the state and run on commercial lines], [A public corporation],
  [The transfer of state ownership to private shareholders], [Privatisation],
  [The official who investigates complaints of maladministration], [The ombudsman],
  [The sum of a state's decisions towards other states in pursuit of its national interest], [Foreign policy],
  [The manipulation of constituency boundaries for political advantage], [Gerrymandering],
)
]

#v(4pt)

== A.2 Twenty Dates and Numbers

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.55fr, 2.65fr),
  inset: (x: 6pt, y: 5.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer],
  ),
  [The Sokoto Caliphate is founded], [1804],
  [Lagos is annexed by Britain], [1861],
  [The Royal Niger Company receives its charter], [1886],
  [The company's territory is transferred to the Crown], [1900],
  [The Northern and Southern Protectorates are amalgamated], [1914],
  [The Clifford Constitution introduces the elective principle], [1922],
  [The Aba women's war], [1929],
  [The Richards Constitution creates the regions], [1946],
  [The Macpherson Constitution brings Nigerians into the executive], [1951],
  [The Lyttleton Constitution makes Nigeria federal], [1954],
  [The federal election that produced the NPC–NCNC coalition], [1959],
  [Independence], [1 October 1960],
  [The Republican Constitution], [1963],
  [The first military coup], [15 January 1966],
  [The twelve states are created], [1967],
  [The civil war ends], [January 1970],
  [The FCT is created; nineteen states], [1976],
  [The first handover to civilian rule], [1 October 1979],
  [The second handover; the Fourth Republic begins], [29 May 1999],
  [The Electoral Act that introduced BIVAS], [2022],
)
]

#v(4pt)

== A.3 Twenty Pairings

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.8fr, 1.35fr, 1.3fr),
  inset: (x: 6pt, y: 5.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.1pt, weight: "bold", fill: white)[Subject],
    text(font: "DejaVu Sans", size: 8.1pt, weight: "bold", fill: white)[Belongs to],
    text(font: "DejaVu Sans", size: 8.1pt, weight: "bold", fill: white)[Or was],
  ),
  [Defence, currency, police], [Exclusive list], [federal only],
  [Education, health, agriculture], [Concurrent list], [both, federal prevails],
  [Chieftaincy, land, markets], [Residual list], [states only],
  [NNDP, 1923], [Herbert Macaulay], [the first party],
  [NCNC, 1944], [Nnamdi Azikiwe], [the first national party],
  [AG, 1951], [Obafemi Awolowo], [the western party],
  [NPC, 1951], [Ahmadu Bello], [the northern party],
  [NEPU, 1950], [Aminu Kano], [the radical northern party],
  [ECOWAS, 1975], [Treaty of Lagos], [West African community],
  [OAU, 1963], [Addis Ababa], [replaced by the AU in 2002],
  [AU, 2002], [Durban], [continental body],
  [OPEC, 1960], [Nigeria joined 1971], [oil producers' cartel],
  [ECOMOG, 1990], [Liberia], [ECOWAS military force],
  [BIVAS, 2022], [INEC], [fingerprint and face],
  [Public Complaints Commission], [the ombudsman], [investigates maladministration],
  [Code of Conduct Bureau], [asset declarations], [refers breaches to a tribunal],
  [Auditor-General], [public accounts], [reports to the National Assembly],
  [Udoji, 1974], [pay and structure], [public service reform],
  [Oronsaye, 2012], [agency rationalisation], [cost of governance],
  [1999 Constitution], [36 states and the FCT], [774 local governments],
)
]

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.0pt, weight: "bold", fill: jamb-green)[How to use the pairs in the last week]
  #v(2pt)
  #text(size: 9.8pt)[Work down the left column with the right covered. Mark every miss with a dot, and reread the chapter section beside that dot — not the whole chapter. A second pass over sixty lines takes twelve minutes, and the dots tell you which twelve minutes to spend.]
]
