#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 The First Twenty

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.60pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [“The clinic's fridge failed on Friday, and by Monday two hundred doses had been wasted.” The passage implies that], [the doses depended on the fridge],
    [Which of these belongs in a summary?], [the writer's conclusion],
    [An option that keeps the passage's words and swaps cause for effect is], [a reversal],
    [The stress in *refugee* falls on the], [last syllable],
    [“What he did not do was listen.” The sentence is best described as], [a judgement delivered as a fact],
    [A reference question is answered by], [substituting a noun for the pronoun],
    [A candidate with three minutes left and two passages unread should], [answer the questions from the questions themselves],
    [The vowel in *cup* is], [/ʌ/],
    [A summary drops a quotation because], [it is evidence for a point that is kept],
    [Which pair are homophones?], [fair / fare],
    [Two points in a summary are best joined by], [a connector that carries the relation],
    [A candidate who reads the passage before the questions], [spends time on detail the questions never ask for],
    [Which pair of words rhyme?], [light / sight],
    [“The committee toured the streets once and recommended a further report.” The sentence's effect is], [contempt for procedural delay],
    [In *She has never written to the chairman*, the strongest stress is on], [never],
    [Which word rhymes with *go*?], [so],
    [The first thing to read in a comprehension passage is], [the questions and their options],
    [A summary must not contain], [the reader's opinion],
    [In which word is the *h* silent?], [hour],
    [Which word is stressed on the final syllable?], [cigaRETTE],
  )
]

#pagebreak()

== A.2 The Second Twenty

Twenty more, in the same format. If a line takes longer than twenty seconds, the chapter to reread is the one printed in your head beside it — write the number down and treat the list as a revision order, not a score.

#[
  #set text(size: 8.4pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 5.60pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [In which word is the *k* silent?], [know],
    [“They” in a passage refers to], [a plural noun that fits when substituted],
    [The stress in *biology* falls on the], [second syllable],
    [A syllable is built on], [a vowel sound],
    [“The levy is announced a week before collection, so traders cannot plan.” The relation between the clauses is], [cause and effect],
    [“A triumph of presentation: twelve charts and not one comparable figure.” The colon introduces], [the evidence that makes the praise ironic],
    [“What he did not do was listen.” The sentence's force comes from], [a negation used as a judgement],
    [Marking a passage as you read is useful because], [questions can be answered by returning to a marked sentence],
    [Which of the following is a statement, not an inference?], [The market closed at noon.],
    [In which word is the *k* silent?], [knife],
    [The stress in *economy* falls on the], [second syllable],
    [“In one sentence.” An answer of two separate sentences], [breaks the instruction],
    [Which word is stressed on the first syllable?], [HAPpy],
    [In *The clinic had no agreed method*, the phrase *no agreed method* is], [the claim],
    [A candidate who answers a NOT question with the first familiar option has probably chosen], [a statement that is in the passage],
    [In which word is the *b* silent?], [climb],
    [“He reminded them, twice.” The word *twice* suggests], [insistence that may be excessive],
    [The stress in *hospital* falls on the], [first syllable],
    [The intonation of *Do you have the form?* is], [rising],
    [“Four hundred farmers within a day's walk.” The phrase answers], [how many farmers supply it?],
  )
]


Three lines that are worth more than a fourth reading of the list: an answer you had to work out is not yet an answer you know; the chapter beside the line is where to go, not the page; and a line you miss twice in a fortnight is a gap in the *chapter*, not in your memory of the list.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[THE TWENTY-SECOND RULE]
  #v(4pt)
  #text(size: 10.1pt)[
    Twenty seconds is chosen because it is roughly the time a CBT question gives you. If a line here takes longer, you will not have it in the hall either — not because you never learned it, but because it is not yet automatic. Read the chapter, redo the drill question on that line, then come back to the list and time yourself again on the same line only.
  ]
]

