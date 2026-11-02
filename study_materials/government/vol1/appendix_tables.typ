#import "template.typ": *

#current-chapter.update("Appendix I: The Comparison Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: The Comparison Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Comparison Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Ten tables built for the "distinguish" question: two systems, one row each, and the one
    feature that decides between them. Read across, never down.
  ]
]

#v(5pt)

== I.1 Unitary, Federal and Confederal

#table(
  columns: (1.15fr, 1.75fr, 1.75fr, 1.15fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Unitary],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Federal],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Confederal],
  ),
  [*Where power sits*], [at the centre], [divided between centre and units], [with the units],
  [*Who creates whom*], [the centre creates the regions], [each level is constitutional], [the units create the centre],
  [*Secession*], [not permitted], [not permitted], [permitted in principle],
  [*Example*], [Britain, France, Ghana], [Nigeria, the USA, India], [the Articles of Confederation, the EU in part],
)

== I.2 Parliamentary and Presidential

#table(
  columns: (1.15fr, 2.4fr, 2.2fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Parliamentary],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Presidential],
  ),
  [*Who governs*], [the Prime Minister and a Cabinet drawn from the legislature], [the President, separately elected],
  [*Head of state*], [a monarch or ceremonial president], [the President],
  [*Ministers*], [must be members of the legislature], [may not sit in the legislature],
  [*Removal*], [a vote of no confidence], [impeachment for misconduct],
  [*Example*], [Britain, India, Canada], [Nigeria, the USA, Brazil],
)

== I.3 The Two Executives in the Exam

#table(
  columns: (1.6fr, 2.0fr, 2.1fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If the answer is parliamentary],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If the answer is presidential],
  ),
  [“The executive is drawn from …”], [the legislature], [a separate election],
  [“The head of government is …”], [the Prime Minister], [the President],
  [“The government falls when …”], [it loses a confidence vote], [the President is impeached],
  [“Ministers are …”], [members of parliament], [appointed from outside],
)

== I.4 The Party Systems

#table(
  columns: (1.1fr, 1.65fr, 1.65fr, 1.65fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[One-party],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Two-party],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Multi-party],
  ),
  [*Choice*], [none], [two alternatives], [several],
  [*Government*], [one party always], [alternation], [single party or coalition],
  [*Merit*], [stability], [clear majority and opposition], [representation of minorities],
  [*Demerit*], [no opposition], [polarisation], [instability, coalitions],
  [*Nigeria*], [never in the Fourth Republic], [PDP–APC alternation], [18 parties on the 2023 ballot],
)

== I.5 The Electoral Systems

#table(
  columns: (1.1fr, 1.8fr, 1.8fr, 1.3fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Effect],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Where used],
  ),
  [*First past the post*], [highest vote in a single-member seat], [strong majorities; wasted votes], [Nigeria, Britain, USA],
  [*Proportional representation*], [seats by share of the vote], [fair to small parties; coalitions], [Germany, Israel, South Africa],
  [*Second ballot*], [a run-off without a majority], [majority legitimacy; two rounds], [France],
  [*Mixed member*], [constituencies plus a proportional top-up], [combines the two], [Germany, New Zealand],
  [*Single transferable vote*], [preferential voting in multi-member seats], [proportional and personal], [Ireland, Malta],
)

== I.6 Party and Pressure Group

#table(
  columns: (1.2fr, 2.2fr, 2.2fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Political party],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pressure group],
  ),
  [*Aim*], [to win power and govern], [to influence policy],
  [*Method*], [nominates candidates; contests elections], [lobbies, petitions, strikes, litigation],
  [*Scope*], [a broad programme], [one interest or one cause],
  [*Accountable to*], [the electorate], [its members],
  [*Example*], [APC, PDP, Labour], [NLC, NBA, ASUU],
)

== I.7 The Routes to Citizenship

#table(
  columns: (1.2fr, 2.3fr, 2.1fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Route],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The test],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The trap],
  ),
  [*Birth*], [born in Nigeria to an indigenous parent or grandparent], [residence is not the test],
  [*Descent*], [born abroad to a Nigerian parent], [being born abroad is not disqualifying],
  [*Registration*], [marriage to a citizen; or Nigerian descent], [it is not naturalisation],
  [*Naturalisation*], [fifteen years' residence and good character], [five years is the trap],
  [*Honorary*], [conferred by the President], [no residence required],
)

== I.8 The Courts

#table(
  columns: (1.4fr, 2.2fr, 2.0fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Court],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Jurisdiction],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Appeals to],
  ),
  [*Supreme Court*], [final appeals; constitutional interpretation], [none],
  [*Court of Appeal*], [appeals from the High Courts; presidential petitions], [the Supreme Court],
  [*Federal High Court*], [federal matters: revenue, companies, immigration], [the Court of Appeal],
  [*State High Court*], [general civil and criminal jurisdiction; rights applications], [the Court of Appeal],
  [*Magistrate and district courts*], [lesser civil and criminal matters], [the High Court],
  [*Sharia and customary courts*], [personal and customary law], [the High Court],
)

== I.9 The Organisations

#table(
  columns: (1.1fr, 0.75fr, 0.9fr, 2.5fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Organisation],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Founded],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Members],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What Nigeria gets from it],
  ),
  [*United Nations*], [1945], [193], [a global voice, peacekeeping roles, and a non-permanent Council seat],
  [*African Union*], [2002], [55], [continental leadership and a platform for African positions],
  [*ECOWAS*], [1975], [15], [regional markets, a Commission in Abuja, and the lead in regional security],
  [*Commonwealth*], [1949], [56], [technical cooperation, scholarships and election observation],
  [*OPEC*], [1960], [12], [a voice in the oil market and a quota that supports the price],
)

== I.10 The Five Command Words in Practice

#table(
  columns: (1.0fr, 2.3fr, 2.3fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Verb],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The option that earns the mark],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The option that loses it],
  ),
  [*Define*], [genus plus difference, no example], [a list of examples],
  [*State the function of*], [what the organ does], [what the organ is made of],
  [*Distinguish*], [the single difference, named], [two definitions with no comparison],
  [*Explain*], [a cause and a consequence], [a description of the institution],
  [*Which is NOT*], [the odd one out], [the three that are true, answered as if the question were positive],
)
