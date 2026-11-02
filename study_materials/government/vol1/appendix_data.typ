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
    Seven tables that hold the dated half of the paper in a form that can be revised in
    forty minutes: the constitutional chain, the military governments, the sections of
    the 1999 Constitution, the organs, the organisations, and the ten dates that decide
    the most questions. Read them the night before, and again in the twenty minutes
    before you enter the hall.
  ]
]

#v(5pt)

== D.1 The Six Chapters in Six Lines

#table(
  columns: (0.4fr, 1.35fr, 3.1fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Idea],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The one sentence that answers the chapter],
  ),
  [*1*], [The study of government], [A state has four elements, and government is only one of them],
  [*2*], [Constitutions], [The constitution is the rule about rules, and Nigeria has written six since 1922],
  [*3*], [The organs], [Three organs make, execute and interpret the law, and each can check the other two],
  [*4*], [Parties and elections], [A party wants to govern; a pressure group wants to be listened to],
  [*5*], [Citizenship and administration], [Who belongs, what they may claim, and who runs the machinery],
  [*6*], [Nigeria in the world], [Foreign policy begins at home and runs outward in circles],
)

== D.2 The Constitutional Chain

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.55fr, 1.25fr, 1.15fr, 2.35fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Constitution],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[One word],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it did],
  ),
  [*1922*], [Clifford], [elective], [four elected members — Lagos and Calabar — in a Legislative Council of 46],
  [*1946*], [Richards], [regional], [three regions, each with a House of Assembly; Cameroons attached to the East],
  [*1951*], [Macpherson], [ministerial], [a Council of Ministers with Nigerian members holding portfolios],
  [*1954*], [Lyttleton], [federal], [three regions plus the Federal Territory of Lagos; a federal Prime Minister],
  [*1960*], [Independence], [Westminster], [Prime Minister and Cabinet drawn from Parliament; the Queen as head of state],
  [*1963*], [Republican], [ceremonial President], [the Queen replaced by a Nigerian President chosen by the legislature],
  [*1979*], [Presidential], [executive President], [a President elected by the people; a bicameral National Assembly; the FCT],
  [*1999*], [Present], [restoration], [the 1979 model with amendments: 36 states, the FCT and 774 local government areas],
)
]

== D.3 Military Governments and State Creation

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.35fr, 0.85fr, 1.05fr, 1.95fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Government],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Years],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[States created],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Remembered for],
  ),
  [*Aguiyi-Ironsi*], [1966], [—], [Decree No. 34 abolished the regions; ended by the July counter-coup],
  [*Gowon*], [1966–75], [12 (1967)], [the civil war; “no victor, no vanquished”; the oil boom],
  [*Murtala / Obasanjo*], [1975–79], [19 (1976)], [the FCT at Abuja; the local government reform; the 1979 Constitution],
  [*Shagari*], [1979–83], [—], [the Second Republic, under the presidential Constitution],
  [*Buhari*], [1983–85], [—], [the December 1983 coup; the war against indiscipline],
  [*Babangida*], [1985–93], [21 (1987), 30 (1991)], [the annulled June 12 election; the 1989 Constitution never implemented],
  [*Abacha*], [1993–98], [36 (1996)], [the 1995 draft constitution; the transition cut short by his death],
  [*Abubakar*], [1998–99], [—], [the 1999 Constitution; handover on 29 May 1999],
)
]

== D.4 The Sections the Paper Quotes

#table(
  columns: (0.75fr, 2.15fr, 1.85fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it says],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question it answers],
  ),
  [*1*], [the Constitution is supreme; inconsistent law is void], [“Which law prevails?”],
  [*4*], [legislative power in the National Assembly], [“Who makes law?”],
  [*5*], [executive power in the President], [“Who executes?”],
  [*6*], [judicial power in the courts], [“Who interprets?”],
  [*7*], [a system of elected local government], [“Who guarantees local government?”],
  [*9*], [the procedure for amendment], [“How is the Constitution changed?”],
  [*14*], [sovereignty belongs to the people; federal character], [“Whose authority?” and “Why balanced appointments?”],
  [*33–46*], [fundamental rights and the right to apply to a High Court], [“Which rights are enforceable?”],
  [*48 and 49*], [the composition of the Senate and the House], [“How many members?”],
  [*130*], [the office of the President], [“Who is head of state and government?”],
  [*230*], [the Supreme Court], [“Which is the highest court?”],
  [*308*], [immunity of the President and Vice-President], [“Can a sitting President be sued?”],
)

== D.5 The Organs at a Glance

#table(
  columns: (1.0fr, 1.55fr, 1.55fr, 1.55fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Organ],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[In Nigeria],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Its check on another organ],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The check on it],
  ),
  [*Legislature*], [National Assembly: 109 senators, 360 representatives], [confirms ministers; can impeach the President], [presidential veto; judicial review],
  [*Executive*], [President, Vice-President, ministers], [vetoes bills; appoints judges], [override by two-thirds; confirmation by the Senate],
  [*Judiciary*], [Supreme Court, Court of Appeal, High Courts], [strikes down unconstitutional acts], [appointment and removal procedures; discipline by the NJC],
)

== D.6 The International Organisations

#table(
  columns: (1.25fr, 0.85fr, 1.25fr, 2.3fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Organisation],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Founded],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Membership],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The fact the paper asks],
  ),
  [*United Nations*], [1945], [193], [six principal organs; a Security Council of 15, five permanent with a veto],
  [*Commonwealth*], [modern form 1949], [56], [voluntary; can suspend but cannot bind; Nigeria suspended 1995–99],
  [*OPEC*], [1960], [12], [production quotas; Nigeria joined in 1971],
  [*OAU*], [1963], [32 founding], [replaced by the AU in 2002; headquarters in Addis Ababa],
  [*ECOWAS*], [1975], [15], [Treaty of Lagos; Commission in Abuja; ECOMOG],
  [*African Union*], [2002], [55], [replaced the OAU; Peace and Security Council],
  [*AfCFTA*], [2018], [54 signatories], [secretariat in Accra; trading began in 2021],
)

== D.7 The Ten Dates That Decide Questions

#[
  #set text(size: 8.4pt)
#table(
  columns: (0.55fr, 2.1fr, 2.1fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*1922*], [the elective principle], [Clifford],
  [*1946*], [the regions], [Richards],
  [*1951*], [Nigerian ministers], [Macpherson],
  [*1954*], [federalism and the Federal Territory of Lagos], [Lyttleton],
  [*1960*], [independence, 1 October], [the Westminster model],
  [*1963*], [the republic], [a Nigerian President replaces the Queen],
  [*1967*], [the first twelve states], [Gowon],
  [*1976*], [nineteen states and the FCT], [Murtala–Obasanjo],
  [*1979*], [the executive presidency], [the Second Republic],
  [*1999*], [the present Constitution], [the Fourth Republic],
)
]

== D.8 When the Stem Hides the Year

#text(size: 9.2pt)[The examiner rarely writes a year and asks what happened. The harder habit is the reverse: a stem describes an event and expects the year. Read the description first, name the constitution or the event to yourself, and only then reach for the date.]

#v(3pt)

#table(
  columns: (2.35fr, 0.55fr, 2.1fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The stem describes…],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Name it, and the date follows],
  ),
  [the first elective principle in Nigeria], [*1922*], [Clifford; four elected seats, three in Lagos and one in Calabar],
  [the division of the south into regions], [*1946*], [Richards; north, west and east, with a central legislature],
  [the first Nigerian ministers], [*1951*], [Macpherson; twelve ministers drawn from the regional houses],
  [the federation, and Lagos as federal territory], [*1954*], [Lyttleton; the regions gained their own governors],
  [the Queen ceases to be head of state], [*1963*], [the republic; Nnamdi Azikiwe becomes President],
  [the states first outnumber the regions], [*1967*], [Gowon creates twelve states and ends the four-region structure],
  [the seat of government moves to Abuja], [*1991*], [the FCT was created in 1976; the move came in December 1991],
  [Nigeria joins the oil exporters' club], [*1971*], [OPEC, two years after the civil war ended],
  [the election the military annulled], [*1993*], [12 June; Babangida's interim government followed],
  [the military hands over for the last time], [*1999*], [29 May; the Fourth Republic and the present Constitution],
)

#v(4pt)

#shortcut-box("The four mnemonics that carry the dates")[
  + *1922–46–51–54*: the vote, the regions, the ministers, the federation. Say them as four words and the year follows.
  + *60–63*: independent, then a republic — three years apart, and the second changed the head of state, not the head of government.
  + *67–76–87–91–96*: the states, in fives and tens — 12, 19, 21, 30, 36.
  + *75–02*: ECOWAS at Lagos, the AU at Addis Ababa — the two organisations that carry Nigeria's first two circles.
]
