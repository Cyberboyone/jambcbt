#import "template.typ": *

#current-chapter.update("Appendix H: The Eight-Week Plan")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix H: The Eight-Week Plan]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Eight-Week Plan]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    One chapter a week, its drill on the Saturday, and the papers left for the last fortnight.
    Twelve hours a week is enough if the hours are timed.
  ]
]

#v(6pt)

== H.1 The Weeks

#table(
  columns: (0.5fr, 1.35fr, 1.45fr, 1.25fr, 1.65fr),
  inset: (x: 5pt, y: 3.0pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Back matter],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The week's one job],
  ),
  [1], [1 — The Scope of Agriculture], [Chapter 1 drill, timed], [Appendix F, A–F; A.1], [draw the branches of agriculture from memory],
  [2], [2 — Rocks and Soil], [Chapter 2 drill], [Appendix D.2, I.1], [sketch and label the soil profile],
  [3], [3 — Fertility and Fertiliser], [Chapter 3 drill], [Appendix D.3], [the six calculations, written out],
  [4], [4 — Land Preparation], [Chapter 4 drill], [Appendix I.5–I.7], [the sequence of operations, in order],
  [5], [5 — Propagation and Nursery], [Chapter 5 drill], [Appendix E.2], [the seed and cutting table, recited],
  [6], [6 — Pests, Diseases and Weeds], [Chapter 6 drill], [Appendix I.8], [the pest–crop–control table],
  [7], [7 — The Crops of Nigeria], [Chapter 7 drill], [Appendix D.4–D.5], [the crop map, by belt],
  [8], [8 — Harvest, Storage, Marketing], [Chapter 8 drill, then Paper 1], [Appendix J], [Paper 1 marked; every miss named],
)

== H.2 The Week in Hours

#table(
  columns: (1.2fr, 0.7fr, 2.4fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Block],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Hours],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens in it],
  ),
  [Read], [4], [the chapter, with a pencil; mark every table and every rule box],
  [Recite], [2], [the recap card and the checklist, aloud, with the book closed],
  [Drill], [2], [forty questions in forty-five minutes, then mark and re-work every miss],
  [Recall], [2], [Appendix A, A.1–A.3; the definitions and the numbers],
  [Write], [2], [one model answer from Appendix G, from memory, then compare],
)

#v(4pt)

#text(size: 9.4pt)[
  Twelve hours is the plan, not the ceiling. If a week slips, cut the recall block, never the
  drill: the drill is what turns reading into marks.
]

#pagebreak(weak: true)

== H.3 The Last Fortnight

#table(
  columns: (0.6fr, 1.35fr, 2.3fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Task],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Rule],
  ),
  [1], [Paper 1, 40 questions in 30 minutes], [no notes, no phone, one sitting],
  [2], [mark Paper 1; list every miss by chapter], [a miss is a chapter, not a question],
  [3], [the missed chapters' drills again], [only the missed chapters],
  [4], [Paper 2, 40 questions in 30 minutes], [the same conditions],
  [5], [mark Paper 2; compare the two papers], [the same chapter missed twice is the priority],
  [6], [Appendix B, 120 questions, untimed], [accuracy before speed],
  [7], [Appendix B, the missed 30, timed], [speed on the weak ground],
  [8], [Appendix A, all sixty pairs], [three passes, the dotted rows only],
  [9], [Appendix D and I, read straight through], [the numbers and the comparisons],
  [10], [Appendix J, the trap file], [name each trap before you read the correction],
  [11], [all eight recap cards, aloud], [with the book closed],
  [12], [Paper 1 again], [target: ten marks better],
  [13], [the two weakest drills], [nothing new],
  [14], [rest; read the checklists only], [no new material the day before],
)

== H.4 What to Do When the Mark Will Not Move

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[THE THREE DIAGNOSES]
  #v(3pt)
  #text(size: 9.7pt)[
    *If the misses cluster in one chapter,* the chapter was read and not used. Re-read the recap
    card, then do the drill again before touching anything else.
  ]
  #v(3pt)
  #text(size: 9.7pt)[
    *If the misses are spread evenly,* the problem is the vocabulary. Spend a week on Appendix A
    and F and nothing else; a candidate who knows the names can often reason to the answer.
  ]
  #v(3pt)
  #text(size: 9.7pt)[
    *If the misses are in the calculations,* the problem is the formula, not the arithmetic.
    Write the six formulas of Appendix D.1 on a card and carry it until each one is automatic.
  ]
  #v(3pt)
  #text(size: 9.7pt)[
    *If the misses are in the last ten questions of a paper,* the problem is time. Practise the
    40-question sets with a clock, and learn to leave a question that will not open and return to
    it at the end.
  ]
]

#pagebreak(weak: true)
