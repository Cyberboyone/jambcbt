#import "template.typ": *

#current-chapter.update("Appendix K: The Exam-Day Playbook")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: The Exam-Day Playbook]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Exam-Day Playbook]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[How to spend the forty minutes, what to carry in your head, and what to do when a question will not open. The knowledge is in the six chapters; this is what turns the knowledge into a score.]
]

#v(4pt)

== K.1 The Three Passes

#table(
  columns: (1.1fr, 1.6fr, 3.1fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pass],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Time],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you do],
  ),
  [First], [about 24 min], [Answer every question you recognise on sight. If the method is not clear within ten seconds, flag it and move on. Leave no blank anywhere: a guess is worth a quarter of a mark on average, a blank is worth nothing],
  [Second], [about 12 min], [Return to the flagged questions. Write down the knowns, choose a row of the formula map, and compute. Estimate the size of the answer before you look at the options],
  [Third], [about 4 min], [Check that every question has an answer, that the units in the option match what was asked, and that no decimal point has slipped a place],
)

*Why three passes beat one.* A hard question costs two minutes the first time, when the mind is holding twenty other questions; the same question costs forty seconds on the second pass, when the easy marks are already banked. The order in which you answer is a strategy, not a measure of ability.

== K.2 Calculator Discipline

#table(
  columns: (2.0fr, 3.6fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),
  [Work in degrees, not radians], [every angle in this volume is in degrees, and a sine taken in the wrong mode is wrong by a factor that looks plausible],
  [Convert before you compute], [millimetres to metres, nano to $10^(-9)$, mega to $10^6$ — do it in the same line, not from memory],
  [Keep one more digit than you need], [rounding at every step turns $19.4°$ into $19°$ and then into a wrong option],
  [Check the power of ten last], [compute the digits, then count the zeroes; a factor of 10 is the commonest pure-arithmetic error],
)

== K.3 The Numbers to Carry in Your Head

These are worth knowing without a calculator, because they turn a computation into a check.

#table(
  columns: (2.2fr, 1.4fr, 2.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The check it gives you],
  ),
  [$sin 30°$], [$0.50$], [half of anything at 30°],
  [$sin 45°$], [$0.71$], [the critical angle of a medium of index 1.41],
  [$sin 60°$], [$0.87$], [the cosine of 30°],
  [$sin 42°$], [$0.67$], [the critical angle of glass],
  [$sin 49°$], [$0.75$], [the critical angle of water],
  [$sqrt(2)$, $sqrt(3)$], [$1.41$, $1.73$], [resonance and prism arithmetic],
  [$1\/1.33$, $1\/1.5$], [$0.75$, $0.67$], [apparent depth, critical angle],
)

== K.4 The Last Ten Minutes

+ Read the Question Map of the mock you last sat. The chapter with the most ticks is the one to look at.
+ Read Appendix J. Twelve traps in two minutes is the best return in the book.
+ Read your own Error Log. It is written in your words about your mistakes, and nothing else in the volume is.

Do *not* start a new chapter, and do not try a new past paper. The last ten minutes are for the mistakes you have already made, not for the material you have not yet met.

== K.5 The Rest of the Series

This is Volume 2 of four. Volume 1 covers measurement, motion, forces, energy, circular motion and the properties of matter. Volume 3 carries electricity, magnetism and the modern physics topics. Volume 4 is the revision volume: the full paper bank, the model answers and the examination plan.

The four volumes share one structure — the same chapter pattern, the same drill format, the same key appendix — so that the fourth volume is a return to a place you already know rather than a new book to learn. A candidate who has worked through Volume 2 has not only learned about waves, sound and light; they have learned how this series expects them to study.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The last word]
  #v(3pt)
  #text(size: 9.8pt)[
    Physics rewards the candidate who asks *what is happening* before *which formula*. Every chapter in this volume opened with a picture and closed with a summary for exactly that reason. In the hall, draw the picture: a wave, a ray, a mirror, a boundary. The formula follows the picture far more reliably than the picture follows the formula.
  ]
]
