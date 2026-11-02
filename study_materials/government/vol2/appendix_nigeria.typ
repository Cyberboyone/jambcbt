#import "template.typ": *

#current-chapter.update("Appendix J: The Nigeria File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Nigeria File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Nigeria File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The stable facts — the geography, the units, the zones, the membership and the numbers —
    in one place. Where a fact changes with a new administration, the file gives the office
    and tells you to check the holder rather than printing a name that will be out of date.
  ]
]

#v(5pt)

== J.1 The Country

#text(size: 8.0pt)[
#table(
  columns: (1.55fr, 3.4fr),
  inset: (x: 5pt, y: 4.1pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Fact],
  ),
  [Independence], [1 October 1960, from Britain],
  [Republic], [1 October 1963],
  [Capital], [Abuja, since 1991; Lagos before that],
  [States], [36, plus the Federal Capital Territory],
  [Local government areas], [774],
  [Geopolitical zones], [six: North-Central, North-East, North-West, South-East, South-South, South-West],
  [Land borders], [Benin, Niger, Chad and Cameroon],
  [Coastline], [the Gulf of Guinea, in the Atlantic],
  [Currency], [the naira, issued by the Central Bank of Nigeria],
  [Official language], [English; Hausa, Yoruba and Igbo are the major indigenous languages],
  [Legislature], [National Assembly: 109 senators and 360 representatives],
  [Highest court], [the Supreme Court],
  [Oil], [discovered at Oloibiri in 1956; OPEC member since 1971],
  [Population], [the largest in Africa; the census figures are disputed, which is itself a political fact],
)
]

#v(4pt)

== J.2 The Six Zones and Their States

#text(size: 7.8pt)[
#table(
  columns: (1.15fr, 3.7fr),
  inset: (x: 5pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Zone],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[States],
  ),
  [North-Central], [Benue, Kogi, Kwara, Nasarawa, Niger, Plateau, plus the Federal Capital Territory],
  [North-East], [Adamawa, Bauchi, Borno, Gombe, Taraba, Yobe],
  [North-West], [Jigawa, Kaduna, Kano, Katsina, Kebbi, Sokoto, Zamfara],
  [South-East], [Abia, Anambra, Ebonyi, Enugu, Imo],
  [South-South], [Akwa Ibom, Bayelsa, Cross River, Delta, Edo, Rivers],
  [South-West], [Ekiti, Lagos, Ogun, Ondo, Osun, Oyo],
)
]

#v(3pt)
#text(font: "DejaVu Sans", size: 8.2pt, fill: jamb-muted)[The zones are not units of government; they have no legislature and no budget. They are a convention for sharing appointments and revenue, and the paper uses them when it asks which zone a state belongs to.]

#v(4pt)

== J.3 The Organisations, and the Year Nigeria Joined

#text(size: 8.0pt)[
#table(
  columns: (1.65fr, 0.9fr, 2.4fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.28pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Organisation],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nigeria since],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What membership is for],
  ),
  [United Nations], [1960], [peacekeeping, development finance, the specialised agencies],
  [Commonwealth], [1960], [consultation and technical cooperation],
  [OAU, now the AU], [1963], [African unity, decolonisation and mediation],
  [OPEC], [1971], [oil prices and production quotas],
  [ECOWAS], [1975], [regional integration and free movement],
  [Non-Aligned Movement], [1960s], [a Cold War refusal of bloc membership],
  [AfCFTA], [2019], [a continental market for goods and services],
)
]

#v(4pt)

== J.4 The Offices, Not the Names

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  The paper asks which office does a job, and the office outlives the person. Learn these pairs, and check the current holder only if a question or your teacher asks for a name.

  #v(3pt)
  + *President and Commander-in-Chief* — the head of state and government, elected for four years, at most two terms.
  + *Vice-President* — the President's running mate, elected on the same ticket.
  + *Senate President* — presides over the Senate, third in the line of succession.
  + *Speaker* — presides over the House of Representatives.
  + *Chief Justice of Nigeria* — head of the judiciary and of the Supreme Court.
  + *Chairman of INEC* — appointed on the Council of State's advice and confirmed by the Senate.
  + *Governor* — the head of a state, elected for four years, at most two terms.
  + *Minister of the FCT* — administers the Federal Capital Territory, appointed by the President.
]

#v(4pt)

#trap-box("Three “current affairs” traps in the Nigeria file")[
  *1 · The capital.* Abuja became the capital in 1991; it was *decided* in 1976. A stem that says “created” is asking for 1976, and one that says “moved” is asking for 1991.

  *2 · The number of states at each creation.* Twelve in 1967, nineteen in 1976, twenty-one in 1987, thirty in 1991, thirty-six in 1996. A question that offers 19 for 1967 is testing the sequence, not the arithmetic.

  *3 · The zones.* They are not states and they are not a tier of government. A question that calls a zone a “tier” is false, however familiar the phrase “the six geopolitical zones” sounds.
]

#v(4pt)

#concept-box("The file in one paragraph")[
  Nigeria became independent on 1 October 1960, a republic on 1 October 1963, and moved its capital from Lagos to Abuja in 1991. It has 36 states and the Federal Capital Territory, 774 local government areas, a National Assembly of 109 senators and 360 representatives, and a Supreme Court at the top of the judiciary. Its six zones are conveniences for sharing, not units of government. It joined the United Nations and the Commonwealth in 1960, helped found the OAU in 1963, joined OPEC in 1971, and helped found ECOWAS in 1975. Its oil was discovered at Oloibiri in 1956, and its economy remains dependent on it — which is the link between the Nigeria file and the foreign-policy chapter.
]
