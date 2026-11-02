#import "template.typ": *

#current-chapter.update("Appendix E: The Institutions File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Institutions File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Institutions File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every body this volume names, with what it does and the one question it answers. A
    Government paper is full of institutions, and most of the marks are lost by a candidate
    who knows the name but not the function.
  ]
]

#v(5pt)

== E.1 The Nigerian Institutions

#[
  #set text(size: 8.3pt)
#table(
  columns: (1.35fr, 2.25fr, 1.7fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question it answers],
  ),
  [*National Assembly*], [makes law, appropriates, oversees, confirms, amends the Constitution], [“Who makes the law and the budget?”],
  [*Federal Executive Council*], [the President and ministers, advising and deciding policy], [“Who executes?”],
  [*Supreme Court*], [final appeals; constitutional interpretation], [“Which court has the last word?”],
  [*Court of Appeal*], [appeals from the High Courts and election tribunals], [“Where does a presidential petition go?”],
  [*Federal High Court*], [federal jurisdiction: revenue, companies, immigration], [“Which court hears a federal matter?”],
  [*National Judicial Council*], [recommends and disciplines judges], [“Who protects judicial independence?”],
  [*Federal Judicial Service Commission*], [advises on appointments to the federal courts], [“Who appoints judges?”],
  [*Independent National Electoral Commission*], [registers parties and voters, conducts elections, announces results], [“Who runs the election?”],
  [*Federal Character Commission*], [ensures appointments reflect national diversity], [“Why is this appointment balanced?”],
  [*Revenue Mobilisation, Allocation and Fiscal Commission*], [advises on the revenue formula and salaries of officials], [“How is the Federation Account shared?”],
  [*Federal Civil Service Commission*], [appoints, promotes and disciplines federal civil servants], [“Who hires the civil service?”],
  [*Auditor-General of the Federation*], [audits public accounts and reports to the National Assembly], [“Who checks how money was spent?”],
  [*Public Complaints Commission*], [the ombudsman: investigates administrative injustice], [“Who investigates the ministry?”],
  [*Code of Conduct Bureau*], [asset declarations and conflict-of-interest rules for public officers], [“What must a public officer declare?”],
  [*National Human Rights Commission*], [investigates rights complaints and visits detention centres], [“Who investigates a rights abuse?”],
  [*Central Bank of Nigeria*], [monetary policy, currency and the banking system], [“Who controls money?”],
  [*Federal Inland Revenue Service*], [collects federal taxes], [“Who collects company tax?”],
  [*National Population Commission*], [the census and population data], [“Where do population figures come from?”],
)
]

== E.2 The International Institutions

#[
  #set text(size: 8.3pt)
#table(
  columns: (1.35fr, 2.25fr, 1.7fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question it answers],
  ),
  [*UN General Assembly*], [debates and recommends; one vote per state], [“Where is every state equal?”],
  [*UN Security Council*], [decides on peace and security; sanctions and force], [“Who can authorise a sanction?”],
  [*UN Secretariat*], [administers the UN under the Secretary-General], [“Who runs the UN?”],
  [*ECOSOC*], [coordinates the specialised agencies], [“Who coordinates WHO and UNESCO?”],
  [*International Court of Justice*], [decides disputes between states], [“Who judges two states?”],
  [*Trusteeship Council*], [supervised trust territories; suspended in 1994], [“Which organ finished its work?”],
  [*AU Assembly*], [the heads of state of the Union], [“Who decides AU policy?”],
  [*AU Peace and Security Council*], [conflict prevention and peace missions], [“Who sends an AU mission?”],
  [*ECOWAS Authority*], [the heads of state of the Community], [“Who decides an ECOWAS intervention?”],
  [*ECOWAS Commission*], [the secretariat, in Abuja], [“Where is ECOWAS run from?”],
  [*ECOWAS Court of Justice*], [interprets the treaty], [“Who interprets ECOWAS law?”],
  [*ECOMOG*], [the Community's monitoring group and intervention force], [“Who fought in Liberia?”],
  [*Commonwealth Secretariat*], [technical cooperation and observation missions], [“Who observes a Commonwealth election?”],
  [*OPEC Conference*], [sets production quotas], [“Who decides the oil quota?”],
)
]

== E.3 The Bodies That Check the Civil Service

#table(
  columns: (1.35fr, 2.15fr, 1.9fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Limit],
  ),
  [*National Assembly*], [appropriation, questions, committees], [cannot appoint or dismiss an official],
  [*President and ministers*], [appointment, direction, discipline], [must act within the Public Service Rules],
  [*Courts*], [judicial review of administrative acts], [cannot run the ministry],
  [*Auditor-General*], [annual audit and report], [reports; does not prosecute],
  [*Public Complaints Commission*], [ombudsman investigation], [recommends; cannot order],
  [*Code of Conduct Bureau*], [asset declaration and conduct rules], [only for public officers],
)

#concept-box("How to answer an institution question you have half-forgotten")[
  + *Ask what the verb is.* Register, conduct, audit, investigate, advise, appoint, interpret — each verb belongs to one kind of body.
  + *Ask which tier.* Federal, state or local: a question about market tolls cannot have a federal answer.
  + *Ask which organ.* If the answer is a court, the institution will have judges; if it is administrative, it will have a commission.
  + *Then eliminate the two options with the wrong verb.* The Government paper rarely hides the answer in the name; it hides it in the function.
]
