#import "template.typ": *

#current-chapter.update("Appendix F: Definitions")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Definitions]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Definitions]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Fifty-nine definitions in the words the examiner accepts. Each is one sentence, because
    the paper asks for a definition and not for an essay; the chapter reference beside each
    tells you where the reasoning lives.
  ]
]

#v(5pt)

#[
  #set text(size: 7.9pt)
#table(
  columns: (1.25fr, 3.55fr, 0.65fr),
  inset: (x: 5pt, y: 3.5pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Ch.],
  ),
  [State], [a political community with a population, a territory, a government and sovereignty], [1],
  [Nation], [a people bound by common history, culture or language, with or without a state], [1],
  [Society], [the whole web of relationships among a people, older and wider than the state], [1],
  [Government], [the institution through which a state is ruled], [1],
  [Sovereignty], [supreme authority within a territory and independence from external control], [1],
  [Legitimacy], [the acceptance by the governed that a government has the right to rule], [1],
  [Constitution], [the body of rules by which a state is governed, written or unwritten], [3],
  [Constitutionalism], [the practice of governing within the limits the constitution sets], [3],
  [Federalism], [a division of power between a central government and component units, each supreme in its own sphere], [4],
  [Unitary system], [a system in which the centre delegates power to local authorities it can abolish], [4],
  [Confederation], [a league of states whose central government is their creature], [4],
  [Exclusive list], [the subjects on which only the National Assembly may legislate], [4],
  [Concurrent list], [the subjects on which both the federation and a state may legislate], [4],
  [Residual list], [the subjects not named in the other two lists, left to the states], [4],
  [Federal character], [the rule that federal institutions reflect Nigeria's diversity], [4],
  [Derivation], [the principle that a producing area shares the revenue from its resource], [4],
  [Fiscal federalism], [the division of taxing and spending powers between levels of government], [4],
  [Separation of powers], [the division of governmental functions among legislature, executive and judiciary], [5],
  [Checks and balances], [the powers each organ has to restrain the others], [5],
  [Rule of law], [the supremacy of law over every person and institution, including the government], [5],
  [Pre-colonial administration], [the systems of rule that existed before colonial conquest], [1],
  [Emirate], [a province of the Sokoto Caliphate governed by an emir under the caliph], [1],
  [Caliphate], [the supreme Islamic polity uniting the emirates under the caliph at Sokoto], [1],
  [Oyomesi], [the seven senior chiefs of Oyo who could reject the Alaafin], [1],
  [Ozo], [an Igbo title society conferring prestige and a voice in the assembly], [1],
  [Acephalous], [without a single centralised ruler, as in the Igbo village republic], [1],
  [Indirect rule], [governing a colony through existing chiefs and institutions under supervision], [2],
  [Warrant chief], [a man appointed by the British to act as chief where no traditional ruler existed], [2],
  [Amalgamation], [the 1914 union of the Northern and Southern Protectorates], [2],
  [Elective principle], [the right of a limited electorate to elect representatives], [3],
  [Nationalism], [the demand by a people that they should govern themselves], [3],
  [Coalition], [a government of two or more parties formed because none has a majority], [3],
  [Opposition], [the party or parties outside the government, organised to criticise and replace it], [3],
  [Ouster clause], [a clause in a decree removing the courts' power to review it], [5],
  [Decree], [a law made by the federal military government], [5],
  [Edict], [a law made by a state military administrator], [5],
  [Special tribunal], [a military court set up outside the ordinary courts to try civilians], [5],
  [Public corporation], [a statutory body owned by the state and run on commercial lines], [6],
  [Privatisation], [the transfer of state ownership to private shareholders], [6],
  [Commercialisation], [requiring a publicly owned enterprise to cover its costs], [6],
  [Deregulation], [removing legal barriers to private participation in a sector], [6],
  [Ombudsman], [an official who investigates complaints of maladministration], [6],
  [Civil service], [the permanent officials who advise ministers and administer departments], [6],
  [Anonymity], [the rule that the minister, not the official, defends policy in public], [6],
  [Permanence], [the continuity of the service through changes of government], [6],
  [Impartiality], [equal service to whichever party is in power], [6],
  [Foreign policy], [a state's decisions towards other states in pursuit of its national interest], [7],
  [National interest], [the security, prosperity and prestige of the state], [7],
  [Afrocentrism], [the placing of Africa at the centre of Nigeria's foreign policy], [7],
  [Non-alignment], [the refusal to join either Cold War bloc], [7],
  [Concentric circles], [the model of Nigerian policy running outward from the national interest to the world], [7],
  [Election], [a formal procedure by which eligible citizens choose their rulers], [8],
  [First past the post], [the system in which the candidate with the most votes in a constituency wins], [8],
  [Proportional representation], [the system that allocates seats in proportion to votes], [8],
  [BIVAS], [the Bimodal Voter Accreditation System, verifying fingerprint and face], [8],
  [Election petition], [the challenge to the validity of an election result, heard by a tribunal], [8],
  [Free and fair election], [one in which the voter chooses without fear or payment and the rules apply equally], [8],
  [Gerrymandering], [the manipulation of constituency boundaries for political advantage], [8],
  [Delimitation], [the drawing of constituency boundaries for elections], [8],
)
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[If a definition in the paper is longer than one sentence, the examiner is offering you a description and asking you to name the term. Read the whole option, not the first clause.]
