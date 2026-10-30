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
  "C", "B", "C", "A", "C", "D", "B", "C", "B", "B",
  "C", "C", "A", "B", "B", "A", "B", "D", "B", "B",
  "C", "C", "B", "C", "B", "B", "C", "B", "A", "A",
  "C", "A", "B", "B", "B", "C", "B", "A", "C", "B",
))

== C.2 Mock Examination 2

#answer-key-grid((
  "B", "A", "A", "B", "B", "D", "B", "C", "A", "A",
  "B", "C", "B", "D", "C", "C", "C", "B", "C", "B",
  "C", "C", "B", "A", "C", "A", "B", "C", "D", "B",
  "A", "A", "D", "B", "B", "C", "D", "B", "C", "A",
))

== C.3 The Chapter Self-Checks

#table(
  columns: (0.45fr, 2.9fr, 1.1fr),
  inset: 5pt,
  align: (center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chapter],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Key]),
  [1], [Wave Motion], [D C B B],
  [2], [Sound], [D A C B],
  [3], [Reflection and Mirrors], [B B B D],
  [4], [Refraction and Total Internal Reflection], [C A B B],
  [5], [Lenses and Optical Instruments], [B C C B],
  [6], [Colour and the Electromagnetic Spectrum], [D C D A],
)

== C.4 The End-of-Chapter Drills

=== Drill for Chapter 1 — Wave Motion

#answer-key-grid((
  "A", "B", "D", "C", "B", "D", "B", "C", "B", "D",
  "C", "A", "A", "C", "A", "D", "A", "B", "A", "D",
  "B", "B", "B", "A", "D", "A", "D", "C", "C", "A",
  "D", "B", "D", "C", "B", "A", "B", "C", "D", "C",
))

=== Drill for Chapter 2 — Sound

#answer-key-grid((
  "B", "D", "D", "C", "C", "A", "D", "B", "D", "B",
  "B", "B", "D", "D", "A", "A", "D", "C", "C", "C",
  "D", "A", "B", "A", "A", "C", "B", "A", "B", "B",
  "A", "A", "B", "D", "C", "A", "D", "A", "C", "A",
))

=== Drill for Chapter 3 — Reflection and Mirrors

#answer-key-grid((
  "C", "D", "C", "D", "D", "C", "B", "C", "B", "A",
  "D", "C", "A", "D", "A", "A", "B", "A", "B", "A",
  "C", "B", "B", "C", "B", "D", "C", "C", "B", "B",
  "A", "D", "D", "C", "C", "A", "B", "A", "C", "B",
))

=== Drill for Chapter 4 — Refraction and Total Internal Reflection

#answer-key-grid((
  "C", "D", "D", "B", "C", "C", "A", "D", "D", "C",
  "C", "D", "C", "A", "C", "B", "D", "C", "D", "D",
  "C", "A", "D", "C", "B", "B", "B", "A", "D", "B",
  "A", "A", "B", "B", "D", "D", "B", "A", "B", "C",
))

=== Drill for Chapter 5 — Lenses and Optical Instruments

#answer-key-grid((
  "B", "A", "D", "A", "A", "D", "C", "C", "B", "A",
  "C", "C", "A", "D", "B", "B", "B", "C", "D", "C",
  "A", "C", "B", "A", "A", "D", "D", "D", "C", "D",
  "C", "A", "D", "A", "C", "B", "B", "C", "D", "B",
))

=== Drill for Chapter 6 — Colour and the Electromagnetic Spectrum

#answer-key-grid((
  "C", "A", "D", "D", "A", "B", "D", "D", "B", "C",
  "A", "A", "D", "D", "B", "D", "B", "C", "B", "B",
  "B", "A", "B", "B", "D", "C", "B", "A", "C", "A",
  "B", "A", "D", "D", "B", "D", "A", "C", "C", "C",
))

== C.5 The Master Bank

#answer-key-grid((
  "B", "C", "A", "D", "B", "A", "C", "A", "D", "A",
  "C", "D", "B", "A", "B", "C", "A", "D", "C", "B",
  "C", "A", "B", "D", "A", "C", "B", "A", "D", "C",
  "B", "D", "A", "B", "B", "A", "B", "C", "C", "A",
  "B", "D", "A", "C", "B", "A", "D", "B", "C", "A",
  "B", "C", "D", "A", "B", "C", "A", "D", "B", "C",
  "A", "C", "B", "D", "C", "A", "B", "D", "A", "C",
  "B", "A", "C", "C", "B", "A", "B", "D", "B", "A",
  "C", "B", "A", "D", "B", "C", "A", "B", "D", "C",
  "A", "B", "C", "D", "A", "B", "C", "A", "D", "B",
  "D", "A", "B", "C", "A", "D", "C", "B", "A", "D",
  "B", "C", "A", "B", "D", "C", "A", "D", "B", "C",
))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARKING IN ONE MINUTE]
  #v(3pt)
  #text(size: 9.6pt)[Each block is laid out in the order the questions are printed, ten to a line. Count the wrong answers, subtract from the total, and write the score at the top of the paper — a score you write down is a score you can improve, and one you only remember is not.]
]

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
  #text(size: 9.6pt)[Four lines tell you what to do next. A score that climbs four papers running means the method is working — keep the pace and stop adding material. A score that flat-lines means you are drilling the same chapter over and over; move. A score that falls after a good run usually means speed, not knowledge: time yourself on one paper and check whether the last ten questions are the ones you lost. And a single line far above the rest is not a fluke to be proud of — it is the paper you sat when you were fresh, and the retest will tell you the truth.]
]
