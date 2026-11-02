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
    The Nigerian facts the paper assumes: the four republics, the heads of state, the
    thirty-six states and their zones, the composition of the National Assembly and the
    elections that changed the country. Numbers and dates only — the reasoning is in the
    chapters.
  ]
]

#v(5pt)

== J.1 The Four Republics

#table(
  columns: (0.9fr, 0.9fr, 1.2fr, 2.4fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Republic],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Years],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Constitution],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it is remembered for],
  ),
  [*First*], [1963–66], [1963 Republican], [a ceremonial President replaced the Queen; the regions and the Mid-West],
  [*Second*], [1979–83], [1979 Presidential], [an executive President; the FCT; five parties; ended by the 1983 coup],
  [*Third*], [1993], [1989 (never implemented)], [the June 12 election annulled; the interim government of three months],
  [*Fourth*], [1999–], [1999 Constitution], [36 states, 774 councils, a bicameral National Assembly and a presidential executive],
)

== J.2 Heads of State and Government

#[
  #set text(size: 8.3pt)
#table(
  columns: (1.5fr, 0.9fr, 1.3fr, 1.55fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Years],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Office],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Remembered for],
  ),
  [*Tafawa Balewa*], [1960–66], [Prime Minister], [independence; a pragmatic foreign policy],
  [*Nnamdi Azikiwe*], [1963–66], [President (ceremonial)], [the first President of the republic],
  [*Aguiyi-Ironsi*], [1966], [Head of the Federal Military Government], [Decree No. 34; the unitary experiment],
  [*Yakubu Gowon*], [1966–75], [Head of State], [the civil war; twelve states; the oil boom],
  [*Murtala Mohammed*], [1975–76], [Head of State], [radical foreign policy; the FCT; state creation],
  [*Olusegun Obasanjo*], [1976–79], [Head of State], [the 1979 Constitution and the handover],
  [*Shehu Shagari*], [1979–83], [President], [the Second Republic; the 1983 election],
  [*Muhammadu Buhari*], [1983–85], [Head of State], [the December 1983 coup; the war against indiscipline],
  [*Ibrahim Babangida*], [1985–93], [Head of State], [21 and 30 states; the annulled June 12 election],
  [*Ernest Shonekan*], [1993], [Head of the Interim National Government], [three months between military regimes],
  [*Sani Abacha*], [1993–98], [Head of State], [the 1995 draft constitution; 36 states in 1996],
  [*Abdulsalami Abubakar*], [1998–99], [Head of State], [the 1999 Constitution and the handover],
  [*Olusegun Obasanjo*], [1999–2007], [President], [the Fourth Republic; debt relief in 2005],
  [*Umaru Yar'Adua*], [2007–10], [President], [the rule-of-law doctrine; died in office],
  [*Goodluck Jonathan*], [2010–15], [President], [the 2015 handover after defeat],
  [*Muhammadu Buhari*], [2015–23], [President], [two terms; the 2019 re-election],
  [*Bola Tinubu*], [2023–], [President], [the 2023 election; the removal of the fuel subsidy],
)
]

== J.3 The Thirty-Six States and the Federal Capital Territory

#[
  #set text(size: 7.9pt)
#table(
  columns: (1.1fr, 1fr, 1fr, 1fr, 1fr),
  inset: (x: 4pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[North Central],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[North East],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[North West],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[South East],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[South-South and South West],
  ),
  [Benue \ Kogi \ Kwara \ Nasarawa \ Niger \ Plateau \ *FCT*], [Adamawa \ Bauchi \ Borno \ Gombe \ Taraba \ Yobe], [Jigawa \ Kaduna \ Kano \ Katsina \ Kebbi \ Sokoto \ Zamfara], [Abia \ Anambra \ Ebonyi \ Enugu \ Imo], [South-South: Akwa Ibom, Bayelsa, Cross River, Delta, Edo, Rivers \ South West: Ekiti, Lagos, Ogun, Ondo, Osun, Oyo],
)
]

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[Six zones, thirty-six states and one Federal Capital Territory. The six zones are not constitutional units — they have no government of their own — but the paper uses them for the federal character questions and for the spread requirement in a presidential election.]

== J.4 The National Assembly and the Courts

#table(
  columns: (1.45fr, 1.0fr, 2.55fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Size],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Composition and term],
  ),
  [*Senate*], [109], [three senators for each of the 36 states plus one for the FCT; four years],
  [*House of Representatives*], [360], [one member per federal constituency, by population; four years],
  [*Supreme Court*], [22], [the Chief Justice and 21 justices; seven sit as the quorum],
  [*Court of Appeal*], [—], [the President of the Court of Appeal and justices of the court],
  [*State House of Assembly*], [—], [one member per state constituency; the state's legislature],
  [*Local government council*], [774], [an elected chairman and councillors in each local government area],
)

== J.5 The Elections That Changed the Country

#table(
  columns: (0.65fr, 1.55fr, 2.8fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What happened],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why it is remembered],
  ),
  [*1964*], [the federal election], [the crisis that preceded the 1966 coups],
  [*1979*], [the first presidential election of the Second Republic], [five parties; Shagari elected],
  [*1983*], [the second general election], [widely disputed; the December coup followed],
  [*1993*], [the June 12 presidential election], [annulled; the deepest legitimacy crisis of the military era],
  [*1999*], [the first election of the Fourth Republic], [Obasanjo elected; the military handed over],
  [*2007*], [Yar'Adua elected], [the first transfer from one civilian president to another],
  [*2003*], [Obasanjo re-elected], [the first sitting President returned for a second term in the Fourth Republic],
  [*2011*], [Jonathan elected], [a Vice-President who completed a term won one of his own],
  [*2015*], [Buhari defeated an incumbent], [the first opposition victory at the federal level],
  [*2019*], [Buhari re-elected], [a sitting President returned for a second term],
  [*2023*], [Tinubu elected], [three main candidates; the ruling party retained the presidency],
)

#concept-box("The six facts to carry into the hall")[
  + *Thirty-six states and the FCT; 774 local government areas.*
  + *A Senate of 109 and a House of Representatives of 360.*
  + *A Supreme Court of the Chief Justice and 21 justices.*
  + *1999: the Constitution, restored from the 1979 model.*
  + *1976: the FCT, and a uniform system of local government.*
  + *1999–2023: a Fourth Republic in which power changed hands at the federal level in 2015, when an opposition candidate defeated a sitting President.*
]

#v(8pt)

== J.6 The Ten Questions the Nigeria File Answers

#text(size: 9.2pt)[Most Nigerian-government questions are answered by one row of one table in this appendix. The habit worth building is to name the table before you start writing, because the table decides the shape of the answer.]

#v(3pt)

#table(
  columns: (2.15fr, 0.85fr, 2.5fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The paper asks],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Go to],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The answer in one line],
  ),
  [When the regions appeared], [J.1], [1946, under the Richards Constitution],
  [Which republic Nigeria is in], [J.1], [the Fourth, from 29 May 1999],
  [How many states, and when], [J.2], [12 in 1967, 19 in 1976, 21 in 1987, 30 in 1991, 36 in 1996],
  [Who the first executive President was], [J.2], [Shehu Shagari, 1979],
  [How many states each zone holds], [J.3], [seven in the north-west; five in the south-east; six elsewhere],
  [How the National Assembly is composed], [J.4], [109 senators and 360 representatives],
  [What the courts are, in order], [J.4], [Supreme Court, Court of Appeal, High Court, then the others],
  [Which election changed the country], [J.5], [2015, the first opposition victory at the federal level],
  [How many local government areas], [J.4], [774, guaranteed by section 7],
  [What the Fourth Republic has done], [J.1, J.5], [six elections, one handover of party power, no military return],
)
