#import "template.typ": *

#current-chapter.update("Appendix F: The Definitions File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: The Definitions File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Definitions File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Seventy definitions, in one line each, in the order the chapters teach them. This is
    the page to read when a question offers two correct-sounding definitions and one of
    them is the definition of something else.
  ]
]

#v(5pt)

== F.1 The State, Government and Sovereignty

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.6fr, 2.6fr),
  inset: (x: 6pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*State*], [a community of people on a defined territory under a sovereign government],
  [*Nation*], [a people sharing a history, a culture or a language],
  [*Nation-state*], [a state whose borders roughly contain one nation],
  [*Society*], [the whole web of relationships among people, wider than the state],
  [*Government*], [the institution or institutions through which a state is ruled],
  [*Sovereignty*], [supreme authority internally and independence externally],
  [*Legal sovereignty*], [the authority to make the final law in a territory],
  [*Political sovereignty*], [the real capacity to command obedience],
  [*Popular sovereignty*], [the doctrine that all authority comes from the people],
  [*Legitimacy*], [the governed accept that a government has the right to rule],
  [*Mandate*], [the authority a government claims from its election victory],
  [*Constitutionalism*], [governing within the rules of the constitution],
  [*Rule of law*], [law supreme, applied equally, and applied by the ordinary courts],
  [*Separation of powers*], [the three functions of government in three organs],
  [*Checks and balances*], [each organ's power to restrain the others],
)
]

== F.2 Forms and Ideologies

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.6fr, 2.6fr),
  inset: (x: 6pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Democracy*], [government by the people, through free elections and the rule of law],
  [*Monarchy*], [rule by one hereditary head of state],
  [*Constitutional monarchy*], [a monarch who reigns but does not rule],
  [*Oligarchy*], [rule by a small group],
  [*Aristocracy*], [rule by a supposed best few],
  [*Plutocracy*], [rule by the wealthy],
  [*Theocracy*], [rule by religious authority under a sacred law],
  [*Dictatorship*], [one ruler or party without effective constitutional limits],
  [*Republic*], [a state whose head is not a hereditary monarch],
  [*Unitary system*], [all governmental power concentrated at the centre],
  [*Federalism*], [constitutional division of power between a centre and units],
  [*Confederation*], [a loose union of states that keep most of their powers],
  [*Capitalism*], [private ownership, profit motive and market allocation],
  [*Socialism*], [public ownership of the key means of production and planning],
  [*Communism*], [abolition of private property and class, in the Marxist end-point],
  [*Feudalism*], [land as the source of power, held for service and worked by a tied peasantry],
  [*Fascism*], [the nation and state above the individual, under one leader],
  [*Welfarism*], [a market economy with state-provided welfare],
)
]

== F.3 Constitutions and Federalism

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.6fr, 2.6fr),
  inset: (x: 6pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Constitution*], [the fundamental rules that create, empower and limit the organs],
  [*Written constitution*], [one codified document],
  [*Unwritten constitution*], [rules in statutes, conventions and cases],
  [*Rigid constitution*], [amendment requires a special procedure],
  [*Flexible constitution*], [amendment by ordinary legislation],
  [*Exclusive list*], [matters on which only the federation may legislate],
  [*Concurrent list*], [matters on which both federation and states may legislate],
  [*Residual list*], [matters left to the states alone],
  [*Covering the field*], [federal law prevails over an inconsistent state law on the concurrent list],
  [*Federal character*], [appointments must reflect the diversity of the federation],
  [*Derivation*], [13 per cent of mineral revenue paid to the producing states],
  [*Federation Account*], [the pool into which federal revenue is paid and from which it is shared],
  [*Indirect rule*], [colonial government through existing traditional rulers],
  [*Decolonisation*], [the transfer of power from colonial rule to elected government],
  [*Nationalism*], [the movement for independence and self-government],
)
]

== F.4 Organs, Parties and Elections

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.6fr, 2.6fr),
  inset: (x: 6pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Legislature*], [the organ that makes law],
  [*Executive*], [the organ that executes law and formulates policy],
  [*Judiciary*], [the organ that interprets law and adjudicates],
  [*Bicameral*], [a legislature of two chambers],
  [*Veto*], [the executive's refusal to assent to a bill],
  [*Impeachment*], [the legislature's removal of an executive or judge for misconduct],
  [*Judicial review*], [a court's power to void an act inconsistent with the Constitution],
  [*Ultra vires*], [beyond the powers conferred, and therefore void],
  [*Delegated legislation*], [law made by a subordinate body under an Act],
  [*Political party*], [an organised group seeking power through elections],
  [*Cadre party*], [a small, elite-led party],
  [*Mass party*], [a party with a large membership and branches],
  [*Party system*], [the pattern formed by the parties that seriously compete],
  [*Pressure group*], [an organised group seeking influence without office],
  [*Franchise*], [the right to vote],
  [*First past the post*], [the candidate with the highest vote wins the seat],
  [*Proportional representation*], [seats in proportion to votes],
  [*Gerrymandering*], [manipulating constituency boundaries for advantage],
  [*Public opinion*], [the views of the adult population on public questions],
)
]

== F.5 Citizenship, Administration and the World

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.6fr, 2.6fr),
  inset: (x: 6pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Citizenship*], [legal membership of a state, with rights and duties],
  [*Naturalisation*], [citizenship by residence — fifteen years in Nigeria],
  [*Registration*], [citizenship by marriage or descent, on application],
  [*Fundamental rights*], [the Chapter IV rights a court will enforce],
  [*Directive principles*], [the Chapter II objectives the courts will not enforce],
  [*Ombudsman*], [an official who investigates administrative injustice],
  [*Civil service*], [the permanent, impartial officials who administer the state],
  [*Anonymity*], [officials do not publicly defend policy; the minister does],
  [*Public corporation*], [a statutory body with legal personality providing a service],
  [*Local government*], [the third tier: 774 elected councils],
  [*Foreign policy*], [a state's external action in pursuit of national interest],
  [*National interest*], [security, prosperity and influence],
  [*Africa centre-piece*], [the doctrine that Africa is the first circle of Nigeria's interest],
  [*Concentric circles*], [Nigeria, West Africa, Africa, the world],
  [*Non-alignment*], [refusal to join either Cold War bloc],
  [*Diplomacy*], [the conduct of relations by negotiation through missions],
  [*Veto (UN)*], [the permanent members' power to block a Council resolution],
  [*ECOMOG*], [ECOWAS's monitoring group and intervention force],
)
]

#shortcut-box("The three definitions most often confused")[
  + *Legitimacy and legality.* A government can be legal and illegitimate, or illegal and legitimate. Legality is about how it came to power; legitimacy is about whether the governed accept it.
  + *A written constitution and a rigid one.* Britain's is unwritten and flexible; a written constitution can be either rigid or flexible. The two tests are answered separately.
  + *A pressure group and a party.* Both influence; only the party contests power. If the organisation nominates candidates, it is a party, whatever it calls itself.
]

#v(8pt)

== F.6 Four Definitions to Carry into an Answer

#text(size: 9.2pt)[A definition earns marks when it has two parts: the class the thing belongs to, and the difference that separates it from the other members of that class. Learn these four as sentences, not as phrases; a phrase cannot be marked as a definition.]

#v(3pt)

#table(
  columns: (1.05fr, 3.0fr, 1.35fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The sentence to write],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The difference it draws],
  ),
  [*State*], [A state is a community of people living on a defined territory under a government that has the authority to make and enforce law without external control.], [territory plus sovereignty; a nation needs neither],
  [*Sovereignty*], [Sovereignty is the supreme authority to make law within a territory and the independence to act externally without the permission of another state.], [the internal and the external face],
  [*Legitimacy*], [Legitimacy is the acceptance by the governed that a government has the right to rule, whether or not it came to power lawfully.], [acceptance, not legality],
  [*Federalism*], [Federalism is a system in which a written constitution divides power between a central government and regional governments, each of which is supreme in its own list.], [the division is constitutional, not administrative],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The pattern holds for every term in F.1 to F.5: name the class (“a system in which…”, “the authority to…”), then the difference (“…rather than”, “…whether or not”). A definition that supplies only the class is a description; only the difference, a comparison.]
