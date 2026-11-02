#import "template.typ": *

#current-chapter.update("Appendix K: The Trap Catalogue and the Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: The Trap Catalogue and the Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Trap Catalogue and the Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Twenty traps that recur, the method for the thirty minutes in the hall, and the
    twenty-minute revision that fits before you walk in. Read the catalogue twice: once
    now, and once the night before the paper.
  ]
]

#v(5pt)

== K.1 The Twenty Traps

#[
  #set text(size: 8.3pt)
#table(
  columns: (0.35fr, 2.0fr, 2.5fr),
  inset: (x: 4.5pt, y: 3.4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*1*], [The constitution as an element of the state], [The elements are population, territory, sovereignty and government],
  [*2*], [Written means rigid], [The two tests are separate; Britain is unwritten and flexible],
  [*3*], [Sovereignty is shared in a federation], [Powers are shared; sovereignty is indivisible],
  [*4*], [A republic must be democratic], [Republic describes how the head is chosen, not how free the state is],
  [*5*], [1963 gave Nigeria an executive President], [1963 gave it a ceremonial President; 1979 gave it an executive one],
  [*6*], [Richards introduced the elective principle], [Clifford did, in 1922; Richards created the regions],
  [*7*], [Macpherson made Nigeria federal], [Lyttleton did, in 1954; Macpherson brought in ministers],
  [*8*], [The residual list is shared], [Residual belongs to the states alone; the concurrent list is shared],
  [*9*], [A state law prevails on the concurrent list], [The federal law prevails, by covering the field],
  [*10*], [The Senate has 360 members], [109 senators; 360 representatives],
  [*11*], [The President makes the law], [The legislature makes it; the President assents or vetoes],
  [*12*], [Judicial review is an appeal], [Review tests validity; an appeal tests a decision],
  [*13*], [A veto cannot be overridden], [Two-thirds of each House overrides it],
  [*14*], [A pressure group forms governments], [It influences; only a party contests power],
  [*15*], [A one-party system is a dominant-party system], [A legal ban makes it one-party; dominance permits competition],
  [*16*], [Naturalisation needs five years], [Fifteen years, with good character and local acceptance],
  [*17*], [Every constitutional right is enforceable], [Chapter IV is; Chapter II is not],
  [*18*], [The civil service is controlled only by the executive], [The legislature, courts, auditor-general and ombudsman all control it],
  [*19*], [The General Assembly decides sanctions], [The Security Council does],
  [*20*], [The AU replaced ECOWAS], [The AU replaced the OAU; ECOWAS is a regional community under it],
)
]

== K.2 The Method for the Thirty Minutes

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Minutes 0–2: read the paper, not the questions.* Note the number of items and the sections, and decide where the first pass will start.
  + *Minutes 2–18: the first pass.* Answer everything you know on sight. Do not stop at a question you cannot place — mark it and move. Forty items in sixteen minutes is forty seconds each, and the easy half takes twenty.
  + *Minutes 18–26: the second pass.* Return to the marked items. Use elimination: cross out the two options that cannot be right, and choose between the two that remain.
  + *Minutes 26–29: the sheet.* Transfer every answer, then check the numbering at 10, 20, 30 and 40. A slip in the transfer costs more marks than any topic gap.
  + *Minute 30: no blanks.* There is no negative marking. A guess is worth a quarter of a mark in expectation, and a blank is worth nothing.
]

#v(4pt)

#shortcut-box("Three questions to ask of any option")[
  + *Which organ?* If the option names a power, ask whether the organ that holds it is the one the question is about.
  + *Which list?* If the option names a subject, ask whether it is exclusive, concurrent or residual.
  + *Which word?* If two options are both true, the difference is one word — *only*, *all*, *not*, *must* — and that word decides the mark.
]

== K.3 The Twenty-Minute Revision

#table(
  columns: (0.55fr, 2.6fr, 1.9fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Read],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The test],
  ),
  [*0–5*], [Appendix D.7 — the ten dates], [say each year aloud with its one word],
  [*5–9*], [Appendix D.4 — the sections], [match section to organ without looking],
  [*9–13*], [Appendix I.1 and I.2 — unitary, federal, confederal; parliamentary and presidential], [name the deciding row],
  [*13–17*], [Appendix F.5 — citizenship and administration], [five routes, three controllers],
  [*17–20*], [Appendix K.1 — the twenty traps], [read the right-hand column only],
)

#v(4pt)

#text(size: 9.4pt)[The last twenty minutes are not for learning anything new. They are for putting the names back in order, so that a question which asks for "the constitution that introduced the elective principle" produces a year rather than a search. Everything read in those twenty minutes is already in the book; the revision is a reminder, not a first reading.]

== K.4 The Last Word

#concept-box("What the paper is really testing")[
  Government is not a memory test with a politics flavour. It is a test of whether you can
  place a power: which organ holds it, which list grants it, which section limits it, and
  which body can take it away. Every chapter in this book is built around that placement,
  and every question in the four hundred and forty is a rehearsal of it.

  A candidate who knows the placement can reason to an answer from four options; a candidate
  who has memorised the words can only recognise them. The difference in the hall is about
  eight marks, and eight marks is the difference between a course and a year.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Checklist for the morning: registration slip, pencil, eraser, a watch that is not a phone, water, and this appendix open at K.1 until the doors close.]
