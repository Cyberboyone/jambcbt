#import "template.typ": *

#current-chapter.update("Appendix J: The Trap Catalogue")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Trap Catalogue]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Trap Catalogue]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Thirty wrong options, each with the face it wears and the single move that kills it. This is the appendix to read in the last week, when the knowledge is fixed and the only thing left to lose is judgement.]
]

#v(5pt)

#shortcut-box("The three-second audit")[
  + *Absolute word?* *Always*, *never*, *only*, *every*, *all* — find the exception or drop the option.
  + *Subject and verb?* Locate the subject, then check the verb; the nearest noun is usually the trap.
  + *Question's last five words?* If the option answers a different question, it does not matter that it is true.
]

#v(4pt)

== J.4 Build Your Own

#text(size: 9.6pt)[The catalogue above is general. Yours should be particular. For every question you miss in the six drills and the three papers, write one line in a notebook under three headings: the option you chose, the option that was right, and the move you should have made. After twenty lines you will find that you own four or five traps, not thirty — and those four or five are the ones this appendix should have been written about.]

#v(3pt)

== J.1 The Reading Text

#table(
  columns: (1.45fr, 2.1fr, 2.1fr, 0.45fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Trap],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it looks],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How to kill it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Ch.],
  ),
  [Wrong chapter], [a real event, placed one chapter early or late], [place the event on the twelve-card line before you look at the options], [2],
  [Wrong name], [a real character attached to an event they were not in], [ask *who was in the room*, not *who is in the book*], [3],
  [True irrelevance], [a statement true of the novel that does not answer the question], [read the question's last five words aloud], [3],
  [Half-truth], [a first clause that is right and a second that is invented], [judge the second clause first], [3],
  [Overstatement], [*always*, *never*, *only*, *every*], [find the one exception the novel supplies], [3],
  [Reversal], [the right facts with the cause and the effect swapped], [ask what made what happen], [4],
  [Inverted motive], [the right action with the wrong reason], [match the action to the character's interest], [3],
  [Title swap], [two chapter titles exchanged], [the first and last titles are fixed in memory; so are 5, 6, 9 and 10], [2],
  [Number drift], [₦95 million for ₦250,000, or £10,000 for £3,600], [learn the six figures in Appendix D and nothing else in numbers], [5],
  [Symbol flattened], [the image offered as a decoration], [a symbol keeps its literal place; test whether the option lets it], [4],
)

#v(3pt)

== J.2 The Passages

#table(
  columns: (1.45fr, 2.1fr, 2.1fr, 0.45fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Trap],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it looks],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How to kill it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Ch.],
  ),
  [Lifted phrase], [the passage's own words with the sense changed], [the words are not the answer; the clause is], [1],
  [Almost-true], [one word changed], [compare the option to the sentence word by word], [1],
  [Too broad], [a claim wider than the passage's], [find the limit the writer sets — *in this market*, *here*], [1],
  [Too narrow], [a detail offered as the main idea], [coverage: does every paragraph support it?], [1],
  [Opposite tone], [contemptuous where the writer is wry], [adjectives and verbs, never the topic], [1],
  [Moraliser], [an option that tells you what ought to be done], [the writer's argument is not your advice], [3],
  [Echo], [an option that repeats a word from the question and adds no idea], [if it adds nothing, it answers nothing], [6],
  [Reference slip], [*it* attached to the nearest noun instead of the right one], [substitute and test the sentence], [1],
  [Register break], [a formal blank with a colloquial option], [read the sentence's neighbours, not the blank], [6],
  [Connector error], [cause offered where the relation is contrast], [name the relation before you look], [6],
)

#v(3pt)

== J.3 The Oral and Grammar Blocks

#table(
  columns: (1.45fr, 2.1fr, 2.1fr, 0.45fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Trap],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it looks],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How to kill it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Ch.],
  ),
  [Spelling lure], [a sound judged by the letters], [say the word; *comfortable* has three beats, not five], [6],
  [Near vowel], [/ɪ/ offered for /i:/ in *ship* and *sheep*], [the pair is the commonest oral question in the paper], [6],
  [Voicing], [/θ/ and /ð/ in the same question], [*think* is voiceless; *those* is voiced], [6],
  [Stress shift], [the stress of *photograph* offered for *photographer*], [the ending *-tion* and *-phy* families move the stress], [6],
  [Emphasis misread], [the stressed word taken as the topic], [ask which false claim the stress is correcting], [6],
  [Silent letter], [a letter pronounced in the distractor], [*b* after *m*, *k* before *n*, *l* before *k*, *w* before *r*], [6],
  [Concord decoy], [the nearest noun offered as the subject], [find the subject first, then read the options], [6],
  [Tense decoy], [present perfect with *yesterday*], [a finished time word kills the perfect], [6],
  [Preposition decoy], [a preposition that sounds right], [learn the fixed pairs: *accused of*, *married to*, *prefer to*], [6],
  [Frame decoy], [*than* for *when*, *when* for *than*], [*hardly … when*, *no sooner … than* — two frames, four words], [6],

  [Countable decoy], [*less* offered with a plural count noun], [*fewer* pupils, *less* noise — count against mass], [6],
  [Article decoy], [*a* where the noun is specific], [ask whether the reader knows which one], [6],
  [Phrasal swap], [*put off* for *put out*, *take after* for *take up*], [learn each phrasal verb with one sentence of your own], [6],
  [Idiom literalised], [a proverb read as a description of the scene], [a proverb always argues; ask what it argues for], [5],
  [Double negative], [*hardly no*, *never nothing*], [two negatives make a positive in standard English], [6],
  [*Since* and *for*], [a period where a point is needed], [*since* a date, *for* a length of time], [6],
  [Comparative decoy], [comparative for three things, superlative for two], [count the things before you count the syllables], [6],
  [Question tag], [the tag agreeing with the wrong subject or tense], [the tag copies the auxiliary and reverses the sign], [6],
)
