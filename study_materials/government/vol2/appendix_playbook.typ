#import "template.typ": *

#current-chapter.update("Appendix K: Traps and Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: Traps and Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Traps and Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The twenty mistakes that cost the most marks, each with the correction, and the routine
    for the thirty minutes in the hall. The traps are arranged in the order of the chapters,
    so the appendix doubles as a final revision of the whole volume.
  ]
]

#v(5pt)

== K.1 The Twenty Traps

#text(size: 7.8pt)[
#table(
  columns: (0.35fr, 1.9fr, 2.55fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.26pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The correction],
  ),
  [1], [calling every pre-colonial society a kingdom], [the Igbo village republic had no single ruler; the emirate and the Yoruba kingdom did],
  [2], [saying indirect rule was the same everywhere], [it was adapted to the north, the west and the east, and failed where no ruler existed],
  [3], [confusing the 1851 bombardment with the 1861 annexation], [1851 is the attack, 1861 the annexation],
  [4], [confusing the 1900 transfer with the 1914 amalgamation], [1900 ends the company's rule, 1914 unites the protectorates],
  [5], [calling the NCNC the first party], [the NNDP of 1923 was first; the NCNC of 1944 was the first national party],
  [6], [saying Richards introduced federalism], [Richards created the regions; Lyttleton made the federation in 1954],
  [7], [treating the 1959 election as a single-party victory], [no party had a majority, so the NPC and NCNC formed a coalition],
  [8], [confusing 1960 with 1963], [1960 is independence; 1963 is the republic],
  [9], [putting police on the concurrent list], [the Nigeria Police Force is exclusive],
  [10], [saying a state law prevails on a concurrent matter], [the federal law prevails to the extent of the inconsistency],
  [11], [giving the wrong number of local governments], [774, not 768 or 776],
  [12], [confusing state creation with local government creation], [the National Assembly creates states; the state house of assembly creates councils],
  [13], [saying Ironsi was overthrown in January 1966], [he took power in January and was killed in July],
  [14], [treating June 12 as an election that produced a government], [it was annulled; Shonekan's interim government followed],
  [15], [calling a decree an edict], [a decree is federal, an edict is made by a state military administrator],
  [16], [confusing anonymity with impartiality], [anonymity is public silence, impartiality is political neutrality],
  [17], [saying the ombudsman prosecutes], [the Public Complaints Commission investigates and recommends],
  [18], [saying Nigeria joined OPEC at its founding], [OPEC was founded in 1960; Nigeria joined in 1971],
  [19], [saying INEC runs local government elections], [state independent electoral commissions do],
  [20], [saying a petition goes to the High Court], [it goes to the election petitions tribunal, and the presidential petition to the Court of Appeal],
)
]

#v(4pt)

== K.2 The Thirty Minutes

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Minutes 0–2: scan.* Read the first word of every question. Mark the ones you know on sight with a tick and the ones you do not with a dot.
  + *Minutes 2–18: harvest.* Answer every ticked question. Do not stop to reason about a dotted one; the easy marks come first.
  + *Minutes 18–26: work.* Return to the dotted questions. Use elimination: strike the two options you can disprove, then choose between the two that remain.
  + *Minutes 26–29: sweep.* Answer every remaining question. There is no negative marking, so an empty box is a certain loss and a guess is a one-in-four gain.
  + *Minute 29–30: check.* Check that the answer sheet matches the numbers, and that no answer sits on the wrong line.
]

#v(4pt)

#trap-box("The three habits that lose marks after the knowledge is there")[
  *1 · Reading the stem too fast.* “Which is NOT” and “except” reverse the question. Underline the negative before you look at the options.

  *2 · Answering the option that is true but does not answer the stem.* In Government, three options are often true statements. The mark goes to the one that answers the question asked.

  *3 · Changing an answer without a reason.* A second thought is worth acting on only when it produces a fact. If it produces only doubt, keep the first answer.
]

#v(4pt)

== K.3 If You Have One Week

#text(size: 8.2pt)[
#table(
  columns: (0.9fr, 3.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Work],
  ),
  [1], [Chapters 1 and 2, the figures and the two drills],
  [2], [Chapter 3 and Appendix D; the drill],
  [3], [Chapter 4 and the three lists; the drill],
  [4], [Chapter 5 and the regime table; the drill],
  [5], [Chapters 6 and 7, the canons and the circles; both drills],
  [6], [Chapter 8 and Appendix K; the drill, then Paper 1],
  [7], [Paper 2, marked; Appendix A with the answers covered; sleep early],
)
]

#v(4pt)

#concept-box("The last thing to read")[
  If you read only one page in the last hour, read Appendix D.4 — the ten dates. If you read two, add the twenty traps in K.1. They are the two pages that convert a half-learned chapter into a mark, because they are the two pages the examiner writes his options from.
]
