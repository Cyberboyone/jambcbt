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
    Every body this volume names, with what it does and how its head is chosen. The
    examiner rarely asks for a definition of an institution; he asks which body does a
    job, and the answer is decided by a single line in this table.
  ]
]

#v(5pt)

== E.1 The Nigerian Institutions

#[
  #set text(size: 7.7pt)
#table(
  columns: (1.55fr, 0.75fr, 2.4fr, 1.35fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[From],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Head],
  ),
  [Independent National Electoral Commission], [1998], [registers voters and parties, delimits constituencies, runs federal and state elections and declares results], [chairman, appointed on the Council of State's advice and confirmed by the Senate],
  [State independent electoral commission], [state law], [runs local government elections in the state], [chairman appointed by the governor],
  [Federal Character Commission], [1996], [monitors the federal character principle in appointments and distribution of posts], [executive chairman],
  [Revenue Mobilisation, Allocation and Fiscal Commission], [1993], [recommends the revenue formula and reviews the salaries of public officers], [chairman],
  [Federation Account Allocation Committee], [statutory], [shares the Federation Account among the three tiers], [chaired by the Minister of Finance],
  [Federal Civil Service Commission], [constitutional], [appoints, promotes and disciplines federal civil servants], [chairman],
  [Public Complaints Commission], [1975], [investigates maladministration and recommends remedies], [chief commissioner],
  [Code of Conduct Bureau], [1979], [receives asset declarations; refers breaches to the tribunal], [chairman],
  [Code of Conduct Tribunal], [1979], [tries breaches of the code of conduct], [chairman],
  [Auditor-General of the Federation], [constitutional], [audits the public accounts and reports to the National Assembly], [Auditor-General],
  [Economic and Financial Crimes Commission], [2003], [investigates and prosecutes economic and financial crime], [executive chairman],
  [Independent Corrupt Practices Commission], [2000], [investigates and prosecutes corruption in public office], [chairman],
  [Bureau of Public Enterprises], [1999], [implements the privatisation and commercialisation programme], [director-general],
  [National Assembly], [1999], [makes law, appropriates, ratifies treaties and oversees the executive], [Senate President and Speaker],
  [Supreme Court], [1963], [final court of appeal; settles disputes between the levels of government], [Chief Justice of Nigeria],
  [Election petitions tribunal], [Electoral Act], [hears petitions against National Assembly, state and governorship elections], [chairman of the tribunal],
)
]

#v(4pt)

== E.2 The International Bodies

#[
  #set text(size: 7.8pt)
#table(
  columns: (1.35fr, 0.75fr, 2.05fr, 1.9fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Founded],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Nigeria's place],
  ),
  [ECOWAS], [1975], [West African integration, free movement, peace and security], [a founder; the largest contributor; ECOMOG's backbone],
  [African Union], [2002], [continental integration, peace and security, the AfCFTA framework], [a founder of the OAU in 1963; a leading member],
  [United Nations], [1945], [peace and security, development, human rights, specialised agencies], [a member since 1960; non-permanent Council seat in 1994–95],
  [Commonwealth], [voluntary], [consultation, technical cooperation, election observation], [a member since 1960; suspended 1995–99],
  [OPEC], [1960], [coordinates oil production and prices], [a member since 1971],
  [Non-Aligned Movement], [1961], [a Cold War refusal of bloc membership], [a member during the Cold War],
  [ECOMOG], [1990], [ECOWAS's military force for peace enforcement], [supplied most troops in Liberia and Sierra Leone],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[Where a body's founding date is “constitutional” or “statutory”, the paper usually asks for its function rather than its year. Where a year is given, the paper can ask for it — and does.]
]

#v(5pt)

#trap-box("Four institutions the paper deliberately confuses")[
  *1 · INEC and the state electoral commissions.* INEC runs federal and state elections; the state commission runs local government elections. A question about council polls is testing the state body.

  *2 · The Public Complaints Commission and the EFCC.* The ombudsman investigates maladministration and recommends; the EFCC investigates crime and prosecutes. Neither is a court.

  *3 · The Code of Conduct Bureau and the Code of Conduct Tribunal.* The Bureau receives declarations and refers a breach; the Tribunal tries it. One investigates, the other adjudicates.

  *4 · RMAFC and FAAC.* The Commission recommends the formula; the Committee shares the money under it. The first is a constitutional body, the second an inter-governmental committee.
]

#v(4pt)

#concept-box("How to answer an institution question in ten seconds")[
  Read the verb in the stem. If it is *registers*, the answer is INEC or the Federal Civil Service Commission, depending on whether the object is a voter or a civil servant. If it is *recommends*, it is RMAFC. If it is *shares*, it is FAAC. If it is *investigates*, it is the ombudsman, the EFCC or the ICPC, depending on whether the subject is maladministration, financial crime or corruption. The verb is doing most of the work.
]
