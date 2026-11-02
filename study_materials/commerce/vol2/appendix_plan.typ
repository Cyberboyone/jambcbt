#import "template.typ": *

#current-chapter.update("Appendix G: The Six-Week Plan")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: The Six-Week Plan]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Six-Week Plan]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    A week-by-week route through the volume at forty-five minutes a day, with a
    compressed version for candidates who start late. The plan assumes no teacher and
    no timetable: only the book, a pen and a clock.
  ]
]

#v(5pt)

== G.1 The Daily Block

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Ten minutes — recall.* Yesterday's rapid-fire pairs, out loud, with the right column covered.
  + *Twenty-five minutes — the chapter.* One section at a time, with the worked example covered and attempted before it is read.
  + *Ten minutes — the drill.* The end-of-chapter questions, marked at once, with a wrong-answer log written in your own words.
  + *The rule of the block:* the drill is not optional. Reading without testing produces the feeling of knowledge and not the fact of it.
]

#v(4pt)

#concept-box("Why the wrong-answer log matters more than the reading")[
  + *A log is a list of your own errors,* not the book's. It is the only document in your revision that is about you.
  + *Write the reason, not the answer.* "I took the reserve for the loan" is worth more than "₦800,000".
  + *Reread the log every Sunday.* Three errors of the same kind are one gap, and one gap can be closed in an evening.
]

#v(6pt)

== G.2 The Six Weeks

#table(
  columns: (0.55fr, 1.55fr, 1.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Week],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The chapters],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The test at the end of it],
  ),
  [1], [Chapters 1 and 2 — money, then the banking system], [Drills 1 and 2, timed at twenty minutes each; then the multiplier, five times over, from memory],
  [2], [Chapters 3 and 4 — insurance, then the physical aids], [Drills 3 and 4; one claim under the average clause written out in full, with the base named],
  [3], [Chapters 5 and 6 — advertising, then the marketing mix], [Drills 5 and 6; one five-mark answer on the four Ps, written under a clock],
  [4], [Chapters 7 and 8 — the international bodies, then management and e-commerce], [Drills 7 and 8; the organisation table from memory, then checked],
  [5], [Full Paper 1, marked and solved; Appendix A out loud daily], [Paper 1 under thirty minutes; every miss traced to a section and reread],
  [6], [Full Paper 2; Appendix H; Appendix F], [Paper 2 under thirty minutes; the trap self-test; four model answers rewritten from memory],
)

#v(5pt)

== G.3 If You Start Late

#table(
  columns: (0.75fr, 1.9fr, 1.4fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Time left],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What to do],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What to leave out],
  ),
  [Four weeks], [Two chapters a week, both drills, Paper 1 in week 3], [the written model answers in Appendix F, until week 4],
  [Two weeks], [One chapter a day, the drill only, then both papers back to back], [the appendix tables; use Appendix A instead],
  [One week], [Appendix A, Appendix H, then a paper every other day], [everything else — a week is for recall, not for reading],
  [Three days], [Appendix A twice a day, Appendix H once, and one paper timed], [all new material],
  [The night before], [Appendix I, and sleep], [the book],
)

#v(5pt)

== G.4 The Progress Tracker

#table(
  columns: (1.35fr, 0.75fr, 0.75fr, 0.85fr, 1.1fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Drill],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Score /40],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Second try],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The section I reread],
  ),
  [Drill 1 — Money], [], [], [], [],
  [Drill 2 — Banking], [], [], [], [],
  [Drill 3 — Insurance], [], [], [], [],
  [Drill 4 — The aids], [], [], [], [],
  [Drill 5 — Advertising], [], [], [], [],
  [Drill 6 — The mix], [], [], [], [],
  [Drill 7 — The bodies], [], [], [], [],
  [Drill 8 — Management], [], [], [], [],
  [Paper 1], [], [], [], [],
  [Paper 2], [], [], [], [],
  [Bank, block A], [], [], [], [],
  [Bank, block B], [], [], [], [],
)

#v(3pt)

#text(size: 8.6pt)[Fill this in with a pen, not in your head. A score that is not written down becomes a memory of a score, and a memory flatters. The last column is the one that matters: a drill marked and not followed by a reread has tested you and taught you nothing.]

#v(5pt)

== G.5 The Last Ten Days, Day by Day

#table(
  columns: (0.5fr, 1.55fr, 1.95fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The block],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The check],
  ),
  [10], [Chapters 1 and 2, the two drills], [every miss in the multiplier, recomputed by hand],
  [9], [Chapter 3, Drill 3], [one claim under average, from a blank page],
  [8], [Chapters 4 and 5, Drills 4 and 5], [the aid-to-obstacle table, written from memory],
  [7], [Chapter 6, Drill 6], [the four Ps applied to a product of your choice, in five lines],
  [6], [Chapters 7 and 8, Drills 7 and 8], [the organisation table: body, function, one word],
  [5], [Paper 1, timed], [mark it, log it, sleep on it],
  [4], [Paper 2, timed], [the four Ps and the Fund-and-Bank answers rewritten from memory],
  [3], [Appendix A, both directions; Appendix H], [the trap self-test, marked out of ten],
  [2], [Appendix E, one table at a time], [the classification test: name the category before answering],
  [1], [Appendix I, then stop], [pack the pen, the card and the watch; no new material],
)

#v(4pt)

#trap-box("The plan fails in one predictable way")[
  The candidate reads a chapter, feels that he understands it, and skips the drill because the drill might show him that he does not. Every week in which the drill is skipped costs more than a week of reading can repay. The plan is built so that *the test comes before the reread*: only the score tells you which section to open again.
]
