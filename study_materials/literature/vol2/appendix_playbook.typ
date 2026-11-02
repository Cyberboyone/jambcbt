#import "template.typ": *

#current-chapter.update("Appendix J: The Exam-Day Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    What to do the night before, in the first two minutes, in the middle thirty-six, and
    in the last two. Nothing here is a trick; everything here is a procedure, and a
    procedure survives nerves better than an intention does.
  ]
]

#v(5pt)

== J.1 The Night Before

#rule-box("Four things, and then stop")[
  + Read *Appendix I* — the twenty traps — once, slowly.
  + Recite *Appendix G* — five texts on one page — twice, covering the last two columns.
  + Write the four-part frame on a card: *unit, name, evidence, effect*.
  + Sleep. A candidate who has done the work and slept beats a candidate who has done the work and not slept.
]

#text(size: 9.6pt)[Do not read a text you have not read before, and do not start a new set of questions. The night before is for retrieval, not acquisition: everything you learn after ten o'clock is bought at the price of the sleep that would have made the rest available.]

== J.2 The First Two Minutes

#table(
  columns: (0.65fr, 3.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Time],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you do],
  ),
  [0:00–0:40], [check the paper: number of questions, any instruction about sections],
  [0:40–1:20], [read the stems only, not the options, and mark the four or five you can answer on sight],
  [1:20–2:00], [write the frame on the question paper: unit, name, evidence, effect],
)

#concept-box("Why read the stems first")[
  The stems tell you what the paper is *about*; the options tell you what it is *testing*.
  Reading the stems first gives the whole paper a shape, and a shaped paper is much harder
  to panic about than an unshaped one.
]

== J.3 The Middle Thirty-Six

#table(
  columns: (1.05fr, 3.15fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pass],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you do],
  ),
  [*First pass*], [answer everything you recognised in the first two minutes; do not stop on anything],
  [*Second pass*], [the set-text questions: anchor to a unit, choose the option that names a function rather than a feeling],
  [*Third pass*], [the unseen extract: read the questions before the passage, then the passage twice],
  [*Fourth pass*], [anything left; if two options remain, prefer the specific over the general],
)

#trap-box("The two-option rule")[
  When two options remain, the more *specific* one is usually right, and the one that names
  a *feeling* is usually a distractor. A mark scheme rewards the option that mentions the
  scene, the technique or the consequence; the option that says “the character is sad”
  is almost always the near-miss.
]

== J.4 The Last Two Minutes

#shortcut-box("Do these four things in order")[
  + Fill every blank. There is no negative marking, and a guess has a one-in-four chance.
  + Check that the answer positions match the question numbers, one block at a time.
  + Change at most two answers, and only where you can name the reason.
  + Close the paper and stop. Reopening it invites the panic you have just spent forty minutes avoiding.
]

== J.5 Five Rules That Survive Nerves

#table(
  columns: (0.55fr, 3.65fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Rule],
  ),
  [*1*], [Answer the stem's verb. If it says *function*, do not summarise; if it says *how far*, do not agree absolutely.],
  [*2*], [Anchor everything to a unit. A claim that fits the whole text fits no question in particular.],
  [*3*], [Never end on a quotation. The words are the proof; the effect is the mark.],
  [*4*], [Prefer the specific option to the general one, and the consequence to the feeling.],
  [*5*], [Bank the cheap marks first, fill every blank, and let the clock be the examiner rather than the enemy.],
)

#pagebreak()

== J.6 The Last Seven Days

#table(
  columns: (0.95fr, 2.85fr, 0.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What to do],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Time],
  ),
  [*−7*], [both papers, one in the morning and one in the evening; mark them the same day], [80 min],
  [*−6*], [the two papers' wrong answers, re-read against Appendix C and the chapter named in each solution], [40 min],
  [*−5*], [Appendix D: the forty quotation targets, recited aloud, six words at a time], [30 min],
  [*−4*], [Appendix F: three of the eight plans, written from memory in note form], [40 min],
  [*−3*], [the 120-question bank in two sittings of sixty; log both scores], [50 min],
  [*−2*], [Appendix A: sixty pairs at ten seconds a line, twice], [25 min],
  [*−1*], [Appendix I and Appendix J only; nothing new, and an early night], [30 min],
)

#v(4pt)

#block(width: 100%, breakable: false, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[One last thing]
  #v(3pt)
  #text(size: 10.1pt)[
    The paper is not a test of how much you remember; it is a test of what you can do with
    what you remember in fifty-four-second units. Everything in this book — the frame, the
    bank, the ledger, the dossiers, the plans — exists to make those fifty-four seconds
    productive. If you can say what a scene does, name the words that do it, and say what
    the audience now understands, you can answer any question the paper will set. Go and
    do that forty times.
  ]
]
