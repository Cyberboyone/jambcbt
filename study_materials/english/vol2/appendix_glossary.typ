#import "template.typ": *

#current-chapter.update("Appendix F: Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary of Comprehension and Oral Forms]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty terms, each with the meaning the paper assumes and the chapter that teaches it.
  ]
]

#v(5pt)

#table(
  columns: (1.5fr, 3.6fr, 0.5fr),
  inset: (x: 4.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Meaning as the paper uses it],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
  ),
  [Topic sentence], [the sentence that makes a paragraph's claim], [1],
  [Skim], [read the first and last sentence of each paragraph], [1],
  [Scan], [look for one key word across the passage], [1],
  [Preview], [read the questions and options before the passage], [1],
  [Main idea], [the claim every paragraph supports], [1],
  [Detail], [a stated fact that supports a claim], [1],
  [Coverage], [the test that an answer is supported by every paragraph], [1],
  [Direct detail], [a question answered by one stated fact], [2],
  [Vocabulary in context], [a question about a word's sense in its clause], [2],
  [Reference], [a question about what a pronoun stands for], [2],
  [Negation question], [a question containing EXCEPT, NOT, FALSE or LEAST], [2],
  [Lifted detail], [a wrong option that repeats a passage sentence], [2],
  [Almost-true], [a wrong option with one word changed], [2],
  [Invention], [a wrong option the passage never commits itself to], [2],
  [Reversal], [a wrong option that swaps cause and effect], [2],
  [Stated], [in the words of the passage], [3],
  [Implied], [a conclusion the passage's words force], [3],
  [Assumed], [neither stated nor forced — the invention trap], [3],
  [Inference], [a conclusion the writer has already drawn], [3],
  [Tone], [the writer's attitude, carried by word choice], [3],
  [Attitude], [tone with a target — a person, group or thing], [3],
  [Irony], [saying the opposite of what is meant], [3],
  [Hyperbole], [deliberate exaggeration], [3],
  [Metaphor], [saying one thing is another], [3],
  [Personification], [giving a thing human action], [3],
  [Summary], [the passage with its evidence removed], [4],
  [Point], [a sentence the argument needs], [4],
  [Word limit], [a maximum, and part of the mark scheme], [4],
  [Paraphrase], [the writer's sense in your own words], [4],
  [Phoneme], [a sound that changes a word's meaning], [5],
  [Minimal pair], [two words differing in one phoneme], [5],
  [Homophone], [two words sounding alike, spelled differently], [5],
  [Voicing], [vibration of the vocal cords], [5],
  [Diphthong], [one syllable gliding from one vowel to another], [5],
  [Syllable], [one beat of a word, built on one vowel sound], [5],
  [Silent letter], [a letter written and not pronounced], [5],
  [Stress], [the loudest syllable of a word], [6],
  [Intonation], [the tune of a sentence], [6],
  [Rhyme], [identical sound from the stressed vowel onward], [6],
)

#v(6pt)

== F.2 Nine Pairs the Paper Confuses

#table(
  columns: (1.5fr, 1.4fr, 2.5fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The difference],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Example],
  ),
  [Fact / inference], [the first is in the words, the second follows from them], [he left at noon / he had finished],
  [Inference / assumption], [the second is a step the writer never took], [the street was empty / the traders were angry],
  [Tone / attitude], [attitude has a target], [critical / critical of the council],
  [Main idea / title], [a sentence against a phrase], [the council has failed the market / a failed market],
  [Detail / example], [an example is a detail offered as evidence], [the park was promised in 2014],
  [Summary / paraphrase], [a paraphrase keeps one sentence's sense; a summary keeps the argument], [—],
  [Phoneme / letter], [one is sound, the other is writing], [/θ/ against th],
  [Stress / intonation], [one belongs to a word, the other to a sentence], [PHO-to-graph / rising tune],
  [Rhyme / homophone], [a rhyme shares the end of a sound, a homophone shares all of it], [night / light · knight / night],
)

#v(2pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The paper rarely asks you to define these terms. It uses them in the stem of a question — “choose the option that states the writer's attitude towards the council” — and a candidate who confuses the pair answers the wrong question correctly.]
