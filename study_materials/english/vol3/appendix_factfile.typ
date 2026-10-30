#import "template.typ": *

#current-chapter.update("Appendix D: The Novel Fact File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Novel Fact File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Novel Fact File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twelve chapters, one row each: what happens, and what the chapter establishes. Read the column on the right when you revise; read the column in the middle when you have forgotten who was where.]
]

#v(5pt)

== D.1 The Twelve Chapters

#table(
  columns: (0.45fr, 1.35fr, 3.0fr, 2.1fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Title],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it establishes],
  ),
  [1], [*Dusk*],
  [Bepo breaks down at the morning assembly, drops the microphone and is heard to say *Save me, O God!* The vice principal asks a teacher to dismiss the pupils; the MD arrives at half past nine.],
  [The decision has already been taken, and its cost is public before its cause is known.],
  [2], [*The Enticement*],
  [Five days later the staff are told. Seri's calls and the UK offer are set out: a teaching post at about £3,600 a month against his ₦400,000 here.],
  [The offer is real and the reasons for it are rational; the reader is made to feel the pull.],
  [3], [*Migration Tales*],
  [The staff trade stories of those who have gone: the banker who now drives a cab, the nurse's rota, the two-million-naira loan that left with Mr Nku.],
  [Migration is neither romance nor simple folly; it has a wage, a cost and a casualty list.],
  [4], [*A Case of Visa Denied*],
  [Mrs Ignatius's family collapses during a visa process when a DNA result shows that Favour is not her husband's child. Favour remains at the school.],
  [The family is the first thing a migration breaks, long before the flight is booked.],
  [5], [*Snake in the Roof*],
  [The MD suspects fraud when staff cars appear on school land. The accounts show a cooperative of about ₦95 million; the board caps any loan at ₦250,000.],
  [The school's real fear is a staff rich enough to leave and compete.],
  [6], [*Ade as Well as Jide COMES vs. COME*],
  [At Open Day a parent demands that Mr Fafore be sacked for a sentence he marked wrong. The sentence is correct; Bepo defends the teacher to the MD's face.],
  [A school is answerable to its parents — and must still be able to tell one of them she is wrong.],
  [7], [*Ritualists*],
  [The memory of Beesway: a cow buried alive for the school's success, and a director who could not be corrected. Fruitful Future, Bepo's own venture, failed on economics rather than on principle.],
  [The temptation is not money but results without labour.],
  [8], [*Missions Unaccomplished*],
  [The prefect election and the Banky–Tosh feud: an insult about Tosh's father, a public apology, a lawsuit, and Bepo as patron of the Invention Club.],
  [The school is a small state, and its politics rehearse the country's.],
  [9], [*Laughing Waterfalls*],
  [The excursion programme: Ikogosi Warm Springs, the National War Museum, the Ooni's palace, and Badagry — the Akran's palace, the First Storey Building, and the Point of No Return.],
  [Heritage is not decoration; the coast is where the novel's argument about leaving begins.],
  [10], [*Passport Pains*],
  [Ibadan: the NIN desk, the network failures, the queue, the agent, and about ₦100,000 to move the file along.],
  [The state is an obstacle course, and the migrant pays it in cash and in days.],
  [11], [*Point of No Return*],
  [The farewell week: songs, drama, a staff–student match, a debate, the MD's account of Bepo's appointment, a cheque for \$10,000, and the drama club's Badagry dance, at which he shouts *Noooo!*],
  [The school names what it is losing, and Bepo hears his own decision out loud for the first time.],
  [12], [*…Dawn*],
  [Saturday: the bags, the food for London, the car sold to the accountant for ₦1.5 million, the landlord's Honda Pilot, the airport, the dream of seven million at the Point of No Return, the shout, the tap on the shoulder — and then Monday, and the walk back through the gate.],
  [The frame closes: dusk becomes dawn, and the mission is completed by staying.],
)

#v(4pt)

#concept-box("The one-sentence plot")[
  A headmaster who has decided to emigrate discovers, across twelve chapters and one night at an airport, that the work he is leaving is the work he was made for — and comes back to it.
]

== D.2 The Numbers

#table(
  columns: (2.7fr, 1.5fr, 2.6fr),
  inset: (x: 4.5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Amount],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it belongs to],
  ),
  [Bepo's salary], [₦400,000 a month], [Stardom Schools],
  [The UK teaching post], [about £3,600 a month], [the offer that starts everything],
  [Seri's nursing pay], [about £10,000 a month], [the case for leaving, in one line],
  [The cooperative's purse], [about ₦95 million], [discovered in Chapter 5],
  [The cap on a loan], [₦250,000], [the board's answer to the purse],
  [Mr Nku's loan], [₦2 million], [taken abroad and never repaid],
  [The prefect forms], [₦50,000, ₦40,000, ₦25,000], [head boy, deputy, other posts],
  [Chief Didi Ogba's case], [₦2.5 billion], [thirty-six months of detention],
  [The passport file], [about ₦100,000], [what the queue costs in cash],
  [The car], [₦1.5 million], [sold to the school accountant],
  [The parting cheque], [\$10,000], [the MD, at the farewell],
  [The flight-change fine], [\$100], [paid at the airport],
  [The enslaved in the dream], [seven million], [the Point of No Return],
)

#v(4pt)

#trap-box("Two numbers the paper likes to swap")[
  + The *cooperative's purse* is about ₦95 million; the *cap on one loan* is ₦250,000. An option that gives the purse as the cap is a size trap.
  + Bepo earns *₦400,000 a month*; the UK post pays *about £3,600 a month*. An option that gives £10,000 as the post's pay has confused the post with Seri's nursing salary.
  + The car sells for *₦1.5 million*; the parting cheque is *\$10,000*. Both are "about a million and a half" in naira terms, which is exactly why the paper will put them in the same question.
]

== D.3 Five Scenes to Describe in One Sentence

#text(size: 9.6pt)[If you can describe these five in one sentence each, you can answer most of the ten reading-text questions without opening the book.]

+ *The assembly.* Bepo breaks down at the microphone and the vice principal keeps the school moving until the MD arrives.
+ *The Open Day row.* A parent demands a teacher's dismissal for a sentence that is right, and the principal defends him.
+ *The board's cap.* The MD's suspicion of fraud finds a healthy cooperative instead, and the board caps its loans to keep the staff from leaving.
+ *Badagry.* The excursion ends at the Point of No Return, and the slave trade becomes the image of every departure.
+ *The airport.* Bepo dreams of the museum and the seven million, wakes, and then goes back to the school on Monday to finish what he started.

#v(3pt)

#trap-box("The one detail that decides several questions")[
  Bepo does not refuse the flight at the airport; he boards, and returns on the Monday. An option that has him turn back at the gate is a sequence error dressed as an interpretation.
]
