#import "template.typ": *

#current-chapter.update("Appendix H: Twenty Moves Worth Knowing")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Twenty Moves Worth Knowing]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty Moves Worth Knowing]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The whole volume in twenty lines, in the order they cost marks, with the chapter that teaches each one.
  ]
]

#v(5pt)

== H.1 The Twenty, in the Order They Cost Marks

#table(
  columns: (0.45fr, 2.7fr, 2.2fr, 0.5fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[In one example],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
  ),
  [1], [Read the questions before the passage], [four questions, four sentences to find], [1],
  [2], [Find the topic sentence], [first sentence, or the one after the figure], [1],
  [3], [Test an option by substitution], [put it back into the sentence], [1],
  [4], [Refuse a detail as a main idea], [true and too narrow], [1],
  [5], [Name the question type before answering], [detail, reference, tone…], [2],
  [6], [Scan for the key word], [a name appears once], [2],
  [7], [Substitute the noun for a pronoun], [*it* = the levy, not the council], [2],
  [8], [Mark EXCEPT, NOT, FALSE, LEAST], [three in, one out], [2],
  [9], [Recognise the four wrong-option shapes], [lifted, almost-true, invented, reversed], [2],
  [10], [Take one step only], [an inference is the writer's step], [3],
  [11], [Read tone from adjectives], [*at last*, *so-called*, *merely*], [3],
  [12], [Read irony from the contradiction], [praise the next clause withdraws], [3],
  [13], [Underline the noun in a summary instruction], [reasons, effects, causes], [4],
  [14], [Keep points, drop evidence], [delete and test the argument], [4],
  [15], [Count the words before stopping], [twenty means twenty], [4],
  [16], [Sort vowels by contrast, not symbol], [seat / sit, book / food], [5],
  [17], [Test voicing at the throat], [thin / then, fan / van], [5],
  [18], [Count syllables by vowel sounds], [comfortable is three], [5],
  [19], [Read stress backwards from the ending], [-tion, -ic, -ity], [6],
  [20], [Say the rhyme aloud], [night / light, never eight], [6],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The order is by cost, not by chapter. Moves 1 to 4 and 9 lose more marks between them than the other sixteen.]

== H.2 The Four Checks That Catch All Twenty

#table(
  columns: (1.2fr, 3.6fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Check],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What you do, in four words],
  ),
  [Order], [questions first, every time],
  [Evidence], [a sentence behind every answer],
  [One step], [no more than one],
  [Sound], [say it aloud],
)

#v(3pt)

#shortcut-box("How to use this appendix in the last week")[
  + Cover the second column and read the moves aloud.
  + Say the example from memory or mark the line.
  + Work down the table until you can do all twenty in four minutes.
  + Then stop. A move you can recite is worth more than a chapter you have read twice.
]

#v(4pt)

== H.3 A Move a Day for the Last Three Weeks

#table(
  columns: (0.8fr, 2.0fr, 2.0fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Move to rehearse],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How you know it is learned],
  ),
  [1–3], [moves 1 to 4], [you preview a passage without being told to],
  [4–6], [moves 5 to 9], [you name the option shape before you name the answer],
  [7–9], [moves 10 to 12], [you can point at the adjective that carries a tone],
  [10–12], [moves 13 to 15], [you can write a nineteen-word summary of any two paragraphs],
  [13–15], [moves 16 to 18], [you sort four words by sound without writing the symbols],
  [16–18], [moves 19 to 20], [you mark the stress on any word by reading it backwards],
)

#v(2pt)

#text(size: 9.6pt)[A move is learned when you do it without deciding to. Until then it is a rule you can recite and a habit you do not have — and the paper tests the habit.]

