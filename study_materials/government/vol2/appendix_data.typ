#import "template.typ": *

#current-chapter.update("Appendix D: The Dates File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Dates File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Dates File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Four tables that hold the dated half of the paper in a form that can be revised in
    thirty minutes: the chronology, the constitutional chain with the one change each
    constitution made, the numbers a candidate must not guess, and the ten dates that
    decide the most questions. Read them the night before, and again in the twenty
    minutes before you enter the hall.
  ]
]

#v(5pt)

== D.1 The Chronology, 1804 to 2023

#[
  #set text(size: 7.9pt)
#table(
  columns: (0.75fr, 3.55fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What happened],
  ),
  [1804], [Usman dan Fodio founds the Sokoto Caliphate after the jihad against the Hausa kingdoms],
  [1851], [The British bombard Lagos],
  [1861], [Lagos is annexed as a British colony],
  [1884–85], [The Berlin Conference sets the rules for the partition of Africa],
  [1886], [The Royal Niger Company receives its charter under Sir George Goldie],
  [1897], [The British expedition against Benin; the city is burnt and the bronzes removed],
  [1900], [The company's territory is transferred to the Crown; Lugard becomes High Commissioner of the north],
  [1903], [The Sokoto Caliphate is defeated; the north is brought under British rule],
  [1906], [Lagos Colony and the Southern Protectorate are merged],
  [1914], [The Northern and Southern Protectorates are amalgamated under Lugard],
  [1917], [The Native Revenue Ordinance extends direct taxation to the south],
  [1922], [The Clifford Constitution introduces the elective principle],
  [1929], [The Aba women's war against taxation and the warrant chiefs],
  [1944], [The NCNC is formed],
  [1945], [The general strike; the Second World War ends],
  [1946], [The Richards Constitution creates the three regions],
  [1950], [The NEPU is founded],
  [1951], [The Macpherson Constitution; the AG and the NPC are formed],
  [1953], [Enahoro's self-government motion; the Kano riots; the London conference],
  [1954], [The Lyttleton Constitution establishes the federation],
  [1957], [Balewa becomes the first Nigerian Prime Minister; Ghana becomes independent],
  [1958], [The London conference settles the independence constitution],
  [1959], [The federal election; the NPC–NCNC coalition is formed],
  [1960], [Independence, 1 October; Nigeria joins the United Nations],
  [1961], [The plebiscites: the Southern Cameroons joins Cameroon, the Northern Cameroons stays in Nigeria],
  [1963], [The Republican Constitution; the Mid-Western Region is created],
  [1966], [The January coup and the July counter-coup],
  [1967], [Twelve states are created; the civil war begins],
  [1970], [The civil war ends in January],
  [1971], [Nigeria joins OPEC],
  [1975], [Murtala Muhammed overthrows Gowon; ECOWAS is founded],
  [1976], [Murtala is assassinated; the FCT is created; nineteen states; the local government reform],
  [1979], [The 1979 Constitution; the handover to Shagari and the Second Republic],
  [1983], [The 1983 election; the Buhari coup of 31 December],
  [1985], [Babangida overthrows Buhari],
  [1986], [The Structural Adjustment Programme],
  [1987], [Twenty-one states],
  [1990], [The attempted coup of April 1990],
  [1991], [Thirty states; the capital moves to Abuja],
  [1993], [The June 12 election is annulled; the interim government; Abacha takes power],
  [1995], [The 1995 Constitution is adopted but never implemented; Nigeria is suspended from the Commonwealth],
  [1996], [Thirty-six states],
  [1998], [Abacha dies in June; Abubakar takes over; INEC is established],
  [1999], [The 1999 Constitution; the handover of 29 May; the Fourth Republic],
  [2007], [The first transfer from one elected president to another],
  [2015], [The first transfer of power from a ruling party to an opposition party],
  [2019], [Nigeria signs the African Continental Free Trade Area agreement],
  [2022], [The Electoral Act introduces BIVAS and electronic transmission],
  [2023], [The general election: the first nationwide use of BIVAS],
)
]

#v(4pt)

== D.2 The Constitutional Chain, and the One Change in Each

#[
  #set text(size: 7.9pt)
#table(
  columns: (0.8fr, 1.0fr, 3.3fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The one change it made],
  ),
  [1922], [Clifford], [the elective principle, with three Lagos seats and one Calabar seat],
  [1946], [Richards], [the three regions: North, West and East, with the Cameroons attached to the East],
  [1951], [Macpherson], [Nigerians enter the executive as ministers with portfolios],
  [1954], [Lyttleton], [a federal division of power; Lagos becomes a federal territory],
  [1960], [Independence], [a parliamentary system with a Prime Minister and a Governor-General],
  [1963], [Republican], [a Nigerian President replaces the Queen; the Supreme Court is created],
  [1979], [Second Republic], [an executive presidency, a bicameral legislature and the FCT],
  [1999], [Fourth Republic], [the current frame: 36 states, the FCT and 774 local governments],
)

#v(2pt)
#text(font: "DejaVu Sans", size: 8.2pt, fill: jamb-muted)[Two constitutions are often forgotten. The 1989 Constitution was promulgated but never implemented, and the 1995 Constitution was adopted by Abacha's government and never brought into force. A question that asks how many constitutions Nigeria has had usually wants the implemented ones, so say which count you are giving.]
]

#v(4pt)

== D.3 The Numbers

#[
  #set text(size: 8.0pt)
#table(
  columns: (2.3fr, 1.0fr, 2.5fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Number],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Watch out for],
  ),
  [States], [36], [the FCT is not a state],
  [Local government areas], [774], [not 768 or 776],
  [Senators], [109], [three per state plus one for the FCT],
  [House of Representatives], [360], [single-member constituencies],
  [National Assembly], [469], [109 + 360],
  [Regions in 1954], [3], [North, West and East],
  [States in 1967], [12], [the regions abolished],
  [States in 1976], [19], [the FCT created the same year],
  [States in 1991], [30], [nine created at once],
  [Derivation share], [13 %], [paid to the oil-producing states],
  [Presidential spread], [25 %], [in two-thirds of the states and the FCT],
  [State creation threshold], [two-thirds], [of the states and of each house],
  [Petition filing window], [21 days], [judgment within 180 days],
  [Constitution amendment], [two-thirds], [of each house and of the state houses],
)
]

#v(4pt)

== D.4 The Ten Dates That Decide the Most Questions

#[
  #set text(size: 8.3pt)
#table(
  columns: (0.85fr, 3.45fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Why it matters],
  ),
  [1914], [the amalgamation: the country's territorial birth certificate],
  [1922], [the elective principle: the first elections],
  [1946], [the regions: the structure that federalism inherits],
  [1954], [the federal settlement: centre, regions and Lagos],
  [1960], [independence: the parliamentary frame],
  [1963], [the republic: a Nigerian head of state],
  [1966], [the first coup: the military enters politics],
  [1967], [twelve states: the regions abolished],
  [1979], [the executive presidency and the first handover],
  [1999], [the Fourth Republic: the frame examined today],
)

#v(3pt)
#text(size: 9.4pt)[If a question offers two of these dates as options, the stem is almost always testing the *difference* between them — amalgamation against regions, regions against federation, independence against republic. Name the difference before you choose.]
]
