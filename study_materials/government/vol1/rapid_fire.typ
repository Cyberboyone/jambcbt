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
    dates and numbers, and twenty pairings of organ, list and function. Cover the
    right-hand column with a sheet of paper and work down the list — ten seconds a
    line. Anything you cannot answer in ten seconds is a chapter to reread tonight.
  ]
]

#v(5pt)

== A.1 Twenty Definitions

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [State], [a people on a defined territory under a sovereign government],
  [Nation], [a people sharing a history, culture or language],
  [Society], [the whole web of relationships among people, wider than the state],
  [Government], [the machinery through which a state is ruled],
  [Sovereignty], [supreme authority inside a territory and independence outside it],
  [Legitimacy], [acceptance by the governed that a government has the right to rule],
  [Mandate], [the authority a government claims from its election victory],
  [Constitution], [the fundamental rules that create, empower and limit the organs of government],
  [Constitutionalism], [the practice of governing within the rules of the constitution],
  [Rule of law], [the law is supreme, applies equally, and is applied by the ordinary courts],
  [Separation of powers], [the three functions of government in three separate organs],
  [Checks and balances], [the powers each organ holds to restrain the others],
  [Federalism], [constitutional division of power between a centre and constituent units],
  [Unitary system], [all governmental power concentrated at the centre],
  [Delegated legislation], [law made by a subordinate body under powers given by an Act],
  [Judicial review], [the courts' power to declare an act inconsistent with the Constitution],
  [Electoral system], [the rules that turn votes into seats],
  [Franchise], [the right to vote],
  [Pressure group], [an organised group seeking to influence policy without seeking office],
  [Foreign policy], [a state's actions abroad in pursuit of its national interest],
)
]

== A.2 Twenty Dates and Numbers

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Clifford Constitution], [1922 — the elective principle],
  [Richards Constitution], [1946 — the regions],
  [Macpherson Constitution], [1951 — Nigerian ministers],
  [Lyttleton Constitution], [1954 — federation and the Federal Territory of Lagos],
  [Independence], [1 October 1960],
  [Republic], [1963 — the Queen replaced by a Nigerian President],
  [1979 Constitution], [executive President, and the Federal Capital Territory],
  [1999 Constitution], [the Constitution now in force],
  [States], [36, plus the Federal Capital Territory],
  [Local government areas], [774],
  [Senate], [109 — three per state plus one for the FCT],
  [House of Representatives], [360],
  [Supreme Court justices], [the Chief Justice and 21 others],
  [Amendment], [section 9 — two-thirds of each House and two-thirds of the states],
  [Supremacy], [section 1],
  [Fundamental rights], [Chapter IV, sections 33 to 46],
  [Federation Account formula], [worked out by the Revenue Mobilisation, Allocation and Fiscal Commission],
  [Derivation], [13 per cent of mineral revenue to the producing states],
  [ECOWAS], [1975, Treaty of Lagos],
  [United Nations], [1945, San Francisco],
)
]

== A.3 Twenty Organ, List and Function Pairs

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Defence], [exclusive list],
  [Currency and coinage], [exclusive list],
  [Citizenship], [exclusive list],
  [Police], [exclusive list],
  [Education], [concurrent list],
  [Health], [concurrent list],
  [Agriculture], [concurrent list],
  [Chieftaincy], [residual list],
  [Local government], [residual list],
  [Markets and motor parks], [residual list],
  [Makes law], [legislature],
  [Executes law], [executive],
  [Interprets law], [judiciary],
  [Confirms ministers], [Senate],
  [Approves the budget], [National Assembly],
  [Declares an Act void], [the courts],
  [Conducts federal elections], [INEC],
  [Investigates administrative injustice], [Public Complaints Commission],
  [Advises on revenue sharing], [RMAFC],
  [Polices federal character], [Federal Character Commission],
)
]

== A.4 The Seven-Day Rapid-Fire Plan

#text(size: 9.6pt)[Sixty pairs are not a reading list; they are a seven-day drill. One table a day for three days, then two mixed passes, then the two days before the paper on the pairs you missed.]

#table(
  columns: (0.6fr, 2.2fr, 2.4fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What to do],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The test of success],
  ),
  [*1*], [A.1 definitions, covered column, twice], [fifty-five of sixty in ten minutes],
  [*2*], [A.2 dates and numbers, twice], [every date within a decade],
  [*3*], [A.3 organ and list pairs, twice], [no list confused with another],
  [*4*], [A.1 and A.3 mixed, written answers], [forty correct in eight minutes],
  [*5*], [A.2 alone, written, with the years], [no year more than one out],
  [*6*], [the missed items only, rewritten as questions], [every miss answered aloud],
  [*7*], [all sixty, cold, in fifteen minutes], [fifty or more, and the misses copied into the planner],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The rule that governs the week: a pair you cannot answer in ten seconds is not known, whatever it feels like. The paper gives you forty-five seconds a question, and a recalled fact takes three; the ten-second rule leaves room for the reading and the elimination, and nothing for the search.]

#v(8pt)

== A.5 From Pair to Question

#text(size: 9.2pt)[A pair reaches the paper as a name to supply, a name to match to its work, or a description that hides both. Four shapes cover the sixty.]

#v(3pt)

#table(
  columns: (1.05fr, 2.1fr, 1.75fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The pair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question it becomes],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where the wrong options come from],
  ),
  [*State / government*], [“The institution through which a state exercises its authority is the…”], [*nation* and *society*, the state's two neighbours],
  [*1946 / Richards*], [“The constitution that first divided Nigeria into regions was the…”], [*Clifford, 1922*, the constitution before it],
  [*109 / 360*], [“The Senate of the National Assembly consists of…”], [“360”, the House figure; “108”, three per state and no FCT],
  [*Veto*], [“The permanent members' power to block a Council resolution is called…”], [*abstention*, *sanction* — other Council actions],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[No wrong option is nonsense: each is a real term from the same family. That is why a pair has to be learned with its neighbours — the state with the nation and the society, the Senate with the House, the veto with abstention.]
