#import "template.typ": *

#current-chapter.update("Appendix D: Spelling and Sounds")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Spelling and Sounds]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Spelling and Sounds]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight spelling rules, forty words candidates misspell, the silent letters by position, and the homophone pairs the paper uses.
  ]
]

#v(5pt)

== D.1 Eight Spelling Rules That Still Hold

#table(
  columns: (0.4fr, 2.2fr, 2.0fr, 1.6fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Exception],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Example],
  ),
  [1], [i before e except after c], [either, neither, seize, weight], [belief, receive],
  [2], [drop the final e before a vowel suffix], [noticeable, courageous], [hope → hoping],
  [3], [keep the final e before a consonant suffix], [truly, argument, wholly], [hope → hopeful],
  [4], [double a final consonant after one short vowel], [visit → visited], [stop → stopped],
  [5], [change y to i after a consonant], [say → said, day → daily is regular], [carry → carried],
  [6], [-ful has one l, -ly is added to the whole word], [—], [beautiful, hopeful, really],
  [7], [-cede, -ceed, -sede], [supersede is the only -sede], [precede, proceed, exceed],
  [8], [British -ise/-our/-re in this book], [—], [organise, colour, centre],
)

#v(3pt)

#text(size: 9.6pt)[Rule four is the one the paper tests most: *begin → beginning*, *prefer → preferred*, *travel → travelled* (British), but *visit → visited* because the stress is not on the last syllable.]

== D.2 Forty Words Candidates Misspell

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [accommodate], [achievement], [acquaintance], [aggressive],
  [apparent], [argument], [beginning], [believe],
  [business], [committee], [comparative], [conscience],
  [definitely], [dependent], [disappear], [embarrass],
  [environment], [existence], [independent], [maintenance],
  [necessary], [noticeable], [occasion], [occurrence],
  [parallel], [parliament], [perseverance], [possession],
  [preferred], [privilege], [pronunciation], [questionnaire],
  [recommend], [referred], [rhythm], [separate],
  [successful], [surprise], [tomorrow], [until],
)

#v(2pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Four of the same row are in Section D.4. The paper does not ask you to spell these words in isolation; it puts them in a sentence and asks which of four spellings is right, which is why reading them aloud is worth more than copying them out.]

== D.3 Silent Letters, by Position

#table(
  columns: (0.7fr, 1.5fr, 2.8fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Letter],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Silent when],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Words],
  ),
  [b], [before t, or after m at the end], [debt, doubt, subtle, climb, comb, thumb, lamb],
  [k], [before n at the start], [know, knee, knife, knock, knot],
  [w], [before r at the start], [write, wrong, wrist, wrap, wreck],
  [l], [before k, m or f], [walk, talk, chalk, calm, palm, half, calf],
  [h], [in a few borrowed words], [hour, honest, heir, ghost, khaki],
  [g], [before n at the end, and in final -gm], [sign, design, reign, foreign, phlegm],
  [t], [in -sten and -ften], [listen, fasten, castle, often],
  [n], [after m at the end], [autumn, column, hymn, solemn],
)

#v(2pt)

#trap-box("The silent letter is not a spelling accident")[
  Every silent letter was once pronounced, which is why the patterns are regular and worth learning by position. The examiner chooses *walk* rather than *lamp* for the same reason he chooses *though* rather than *go*: the letter is written and the sound is not.
]

== D.4 The Homophone Pairs

#table(
  columns: (1.1fr, 1.1fr, 2.6fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The distinction in one line],
  ),
  [bear / bare], [fair / fare], [the animal against the adjective, the market against the price],
  [knight / night], [write / right], [the silent letter marks the homophone, not the sound],
  [peace / piece], [break / brake], [a state against a part, a pause against a mechanism],
  [weather / whether], [there / their], [the noun against the conjunction, place against possession],
  [practice / practise], [advice / advise], [noun with c, verb with s — the same rule twice],
  [stationary / stationery], [principal / principle], [standing still against paper, the head against the rule],
)
