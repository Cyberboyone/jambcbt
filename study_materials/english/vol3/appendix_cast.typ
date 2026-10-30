#import "template.typ": *

#current-chapter.update("Appendix E: Cast and Relationships")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: Cast and Relationships]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Cast and Relationships]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every named person the paper can ask about, with the one thing each is in the book to do. Learn the third column and the character questions answer themselves.]
]

#v(5pt)

== E.1 The School

#table(
  columns: (1.5fr, 1.6fr, 2.9fr, 0.5fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Post],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What they are in the book for],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
  ),
  [Adebepo Adewale], [principal, called Bepo], [the novel's centre; his decision is the plot, and his voice is the novel's argument], [all],
  [Mrs Ibidun Gloss], [managing director], [the founder's daughter; she can be wrong and can be told so, which is the school's health], [1, 6, 11],
  [Mrs Grace Apeh], [vice principal], [takes charge of the assembly when Bepo cannot, and calls the MD], [1],
  [Chief Mrs Solape Bayo], [chairman of the board, the MD's mother], [supplies the proverb of the snake in the roof and the cap on loans], [5],
  [Mr Jeremi Amos], [accountant], [produces the cooperative's accounts; drives to the airport with the others], [5, 12],
  [Mr Fafore], [English teacher], [nearly sacked for marking a correct sentence wrong — the grammar row], [6],
  [Mr Audu], [fine-art teacher], [the staff room's comic, whose jokes tell the truth], [2, 6],
  [Mr Oyelana], [CRS teacher], [one of the staff room's steady presences], [2, 6],
  [Mr Ope Wande], [physics teacher, pastor], [called in to counsel Bepo after the breakdown], [1],
  [Mr Justus Anabel], [chemistry teacher], [dismisses the assembly on the vice principal's instruction], [1],
  [Mr Ayesoro], [government teacher], [moved out after a parent's complaint about his lessons], [4],
  [Mrs Beke Egbin], [counsellor], [stays with Bepo after the assembly], [1],
  [Mrs Titi], [school nurse], [offers him a handkerchief while the pupils watch], [1],
  [Jombo], [guard], [the gate; the school's threshold in small], [1, 12],
  [Tai], [agent], [moves the passport file along for a price], [10],
)

#v(3pt)

== E.2 The Families and the Parents

#table(
  columns: (1.5fr, 1.6fr, 2.9fr, 0.5fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Relation],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What they are in the book for],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
  ),
  [Seri], [Bepo's wife], [a nurse in the United Kingdom; her case for his joining her is material, patient and running out], [2, 12],
  [Nike], [daughter], [one of the two reasons the offer is real], [2, 12],
  [Kike], [daughter], [the other], [2, 12],
  [Chief David Aje], [the late founder], [hired Bepo twenty-four years earlier; named at the farewell], [11],
  [Mr Ogunwale], [Bepo's landlord], [drives him to the airport in his Honda Pilot], [12],
  [Mrs Ignatius], [Favour's mother], [her family is broken by a DNA result during a visa process], [4],
  [Mr Ibe Ignatius], [Favour's father — in law], [the DNA result that removes Favour from his family], [4],
  [Mrs Mary Ladele], [Bibi's mother], [complains about a teacher's lesson and ends his time at Stardom], [4],
  [Chief Didi Ogba], [Tosh's father], [detained thirty-six months over ₦2.5 billion; the feud's fuse], [8],
  [Mr Guta], [a parent], [carries the complaint that leads to the Open Day row], [6],
  [Mr Ogo], [a parent at Fruitful Future], [offers ₦35,000 for a rite, and withdraws his child when it is refused], [7],
)

#v(3pt)

== E.3 The Wider Cast

#table(
  columns: (1.5fr, 1.6fr, 2.9fr, 0.5fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Post or place],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What they are in the book for],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
  ),
  [Mr Egi Meko], [director, Beesway], [the owner who cannot be corrected, among the men with the cow], [7],
  [Mr Nku], [a teacher who left], [took a two-million-naira cooperative loan abroad with him], [3],
  [Sola], [a former colleague abroad], [one of the voices in the migration tales], [3],
  [Jare], [a banker who emigrated], [the humiliation of the fall from a profession], [3],
  [Hope], [a migrant], [the tale that keeps the staff room arguing], [3],
  [Banky], [pupil], [the insult, the apology and the lawsuit], [8],
  [Tosh], [pupil, Chief Ogba's son], [the target of the insult, and the lawsuit's reason], [8],
  [Favour], [pupil, SSS2], [the child at the centre of Chapter 4], [4],
  [Bibi], [pupil], [the nightmares that end a teacher's posting], [4],
  [Angel], [pupil], [one of the named children of the school], [8, 11],
  [Ikenna Egbu], [pupil], [one of the named children of the school], [8, 11],
)

#v(4pt)

#concept-box("The four names the paper confuses")[
  + *Gloss and Apeh.* Gloss is the managing director, the founder's daughter; Apeh is the vice principal who takes over the assembly.
  + *Bayo and Gloss.* Chief Mrs Solape Bayo chairs the board and is Mrs Gloss's mother. The board's caution and the MD's authority are in one family, which is why the cap on loans is obeyed.
  + *Fafore and Ayesoro.* Fafore is the English teacher defended over a correct sentence; Ayesoro is the government teacher moved out after a complaint. One is saved by the principal's courage, the other is not.
  + *Ogo and Ogba.* Ogo offers the rite at Fruitful Future; Ogba is Tosh's father, detained over ₦2.5 billion.
]

== E.4 Four Questions the Cast Answers

+ *Why does the school survive Bepo's collapse?* Because Apeh can run an assembly and Gloss can be telephoned.
+ *Why is the cooperative capped?* Because the board, led by Solape Bayo, fears a staff rich enough to leave.
+ *Why is the grammar row important?* Because Fafore is right and Gloss is wrong, and the school survives being told so.
+ *Why does the novel need Ogba and Ogo?* Because parents bring the country's corruption and its hunger for shortcuts through the gate.

#v(3pt)

== E.5 The Character Map in Six Lines

#table(
  columns: (1.25fr, 3.9fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Line],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Who stands on it],
  ),
  [The man who must decide], [Bepo, and behind him Seri and the girls],
  [The institution that can correct him], [Gloss, Apeh and the board under Solape Bayo],
  [The colleague who is nearly sacrificed], [Fafore, saved by the principal's courage],
  [The owner who cannot be corrected], [Egi Meko at Beesway, and Ogo with his rite],
  [The parents who bring the country in], [Ogba, Ladele, Ignatius and Guta],
  [The place that makes the argument], [Badagry, and the Point of No Return],
)
