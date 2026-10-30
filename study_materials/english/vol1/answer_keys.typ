#import "template.typ": *

#current-chapter.update("Appendix C: Consolidated Answer Keys")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix C: Consolidated Answer Keys]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX C]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Consolidated Answer Keys]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every key in the volume, in one place. If you photocopy one part of this book, photocopy this: it lets you mark any paper in under a minute.]
]

#v(5pt)

== C.1 Mock Examination 1

#answer-key-grid((
  "D", "C", "B", "A", "D", "B", "C", "A", "D", "B",
  "C", "A", "D", "A", "B", "C", "B", "A", "C", "D",
  "A", "B", "C", "D", "C", "D", "A", "B", "C", "A",
  "D", "B", "A", "C", "D", "B", "D", "B", "A", "C",
))

== C.2 Mock Examination 2

#answer-key-grid((
  "B", "D", "A", "C", "C", "D", "A", "B", "B", "C",
  "D", "A", "C", "D", "A", "B", "B", "C", "A", "D",
  "B", "A", "D", "C", "B", "C", "D", "A", "A", "D",
  "B", "C", "C", "B", "A", "D", "A", "C", "B", "D",
))

== C.3 The Master Bank

#answer-key-grid((
  "A", "C", "B", "D", "D", "A", "B", "C", "B", "C",
  "A", "D", "C", "A", "B", "D", "D", "B", "A", "C",
  "D", "B", "C", "A", "D", "C", "B", "A", "A", "B",
  "C", "D", "B", "C", "A", "D", "A", "D", "B", "C",
  "D", "C", "A", "B", "A", "C", "D", "B", "A", "C",
  "D", "B", "B", "A", "D", "C", "C", "A", "D", "B",
  "D", "B", "C", "A", "B", "D", "A", "C", "B", "A",
  "D", "C", "B", "A", "D", "C", "D", "C", "B", "A",
  "D", "C", "A", "B", "B", "D", "A", "C", "D", "A",
  "B", "C", "A", "D", "B", "C", "D", "B", "A", "C",
  "D", "B", "A", "C", "A", "B", "D", "C", "D", "A",
  "B", "C", "C", "D", "B", "A", "D", "C", "A", "B",
))

== C.4 The Chapter Self-Checks

#table(
  columns: (0.45fr, 3.0fr, 1.1fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Key]),
  [1], [Word Classes], [B C D A],
  [2], [Concord], [B C D B],
  [3], [Tense, Aspect and Voice], [B C B C],
  [4], [Clauses and Punctuation], [C B B C],
  [5], [Modifiers and Connectives], [C C B B],
  [6], [Lexis], [B C B B],
)

== C.5 The Six Chapter Drills

=== Drill for Chapter 1 — Word Classes

#answer-key-grid((
  "C", "A", "A", "C", "C", "D", "C", "B", "B", "B",
  "C", "D", "A", "B", "A", "D", "D", "A", "B", "B",
  "B", "A", "C", "D", "B", "B", "D", "D", "C", "B",
  "C", "C", "A", "A", "C", "C", "A", "C", "A", "A",
))

=== Drill for Chapter 2 — Concord

#answer-key-grid((
  "C", "C", "A", "C", "B", "B", "D", "C", "D", "C",
  "D", "A", "B", "D", "B", "C", "A", "A", "D", "B",
  "C", "B", "C", "D", "D", "A", "D", "D", "B", "A",
  "C", "B", "D", "A", "B", "D", "C", "B", "D", "B",
))

=== Drill for Chapter 3 — Tense, Aspect and Voice

#answer-key-grid((
  "C", "B", "C", "D", "D", "C", "B", "C", "D", "A",
  "D", "A", "B", "A", "A", "A", "B", "B", "D", "A",
  "B", "B", "B", "C", "A", "D", "C", "C", "D", "B",
  "A", "D", "D", "C", "A", "D", "D", "A", "C", "B",
))

=== Drill for Chapter 4 — Clauses and Punctuation

#answer-key-grid((
  "A", "C", "D", "C", "C", "B", "B", "A", "C", "C",
  "A", "B", "B", "A", "A", "B", "D", "D", "B", "D",
  "A", "A", "A", "C", "B", "A", "D", "B", "D", "C",
  "C", "A", "B", "D", "D", "A", "B", "D", "C", "D",
))

=== Drill for Chapter 5 — Modifiers and Connectives

#answer-key-grid((
  "B", "C", "B", "D", "B", "D", "A", "D", "A", "D",
  "C", "A", "A", "C", "C", "B", "A", "C", "B", "B",
  "C", "B", "A", "C", "D", "D", "C", "C", "A", "B",
  "A", "B", "D", "B", "D", "D", "D", "C", "D", "A",
))

=== Drill for Chapter 6 — Lexis

#answer-key-grid((
  "B", "A", "D", "A", "C", "C", "D", "C", "A", "A",
  "A", "B", "D", "B", "B", "D", "C", "A", "B", "B",
  "B", "A", "D", "A", "A", "C", "A", "D", "D", "C",
  "D", "D", "C", "D", "A", "D", "C", "B", "C", "B",
))

== C.6 The Score Log

#text(size: 9.9pt)[A key you never use is a list of letters. Mark the paper, write the number down, and write beside it the one chapter that cost you the most marks — that sentence is what you revise next, not the chapter you enjoyed.]

#v(2pt)

#table(
  columns: (1.0fr, 1.6fr, 0.8fr, 0.6fr, 1.6fr, 2.2fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, center + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[%],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Costliest chapter],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What I will do before the next one],
  ),
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
  [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)], [#v(13pt)],
)

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[READING YOUR OWN LOG]
  #v(3pt)
  #text(size: 9.6pt)[Four lines tell you what to do next. A score that climbs four papers running means the method is working — keep the pace and stop adding material. A score that flat-lines means you are drilling the same chapter over and over; move. A score that falls after a good run usually means speed, not knowledge: time yourself on one paper and check whether the last ten questions are the ones you lost. And the chapter column is the one that matters most — a score can rise while the same chapter keeps appearing, which means you are getting better at the rest of the syllabus and leaving one hole open.]
]

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[WHAT THE KEYS ARE FOR]
  #v(3pt)
  #text(size: 9.5pt)[A key is a measuring instrument, not an answer sheet. The point of marking is not the number at the top of the page but the pattern underneath it: which chapter keeps appearing in the miss column, which kind of question — the graph, the unit conversion, the two-step calculation — keeps catching you. Mark once, write the pattern down, and revise the pattern. The second sitting of the same paper should feel like a different paper.]
]

