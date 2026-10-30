#import "template.typ": *

#current-chapter.update("Appendix F: Glossary of Terms")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary of Terms]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary of Terms]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty-four terms, each with the meaning the paper assumes and the chapter that teaches it. If a question uses a word you cannot define, the definition is the first mark you have lost.]
]

#v(5pt)

== F.1 The Novel

#table(
  columns: (1.45fr, 3.55fr, 0.45fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Meaning as the paper uses it],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
  ),
  [Plot], [the sequence of events and the causes that connect them], [2],
  [Subplot], [a secondary story carried alongside the main one], [2],
  [Exposition], [the material that sets the scene before the action starts], [2],
  [Climax], [the point at which the decision can no longer be avoided], [2],
  [Resolution], [the settlement after the climax], [2],
  [Flashback], [a scene from the past placed inside a later chapter], [2],
  [Foreshadowing], [a detail that prepares a later event without naming it], [2],
  [Frame], [a first and last chapter that enclose the story], [2],
  [Protagonist], [the character whose decision the story follows], [3],
  [Antagonist], [whatever opposes the protagonist, whether a person or a habit], [3],
  [Foil], [a character whose contrast defines another], [3],
  [Characterisation], [the means by which a character is made: action, speech, others' reports], [3],
  [Motivation], [the reason a character acts as they do], [3],
  [Theme], [a claim the novel makes and supports, not a subject it mentions], [4],
  [Motif], [a recurring object, word or image that gathers meaning], [4],
  [Symbol], [an object that stands for an idea and keeps its literal place in the story], [4],
  [Setting], [place and time, and the values that go with them], [4],
  [Atmosphere], [the feeling a setting produces], [4],
  [Point of view], [the position from which the story is told], [5],
  [Limited narration], [narration confined to what one character knows], [5],
  [Omniscient narration], [narration that knows every character's mind], [5],
  [Tone], [the writer's attitude, carried by word choice], [5],
  [Irony], [a gap between what is said and what is meant, or between expectation and event], [5],
  [Proverb], [a fixed saying used to compress an argument], [5],
  [*Japa*], [emigration in search of a better life — the novel's own word for its theme], [4],
)

#v(3pt)

== F.2 The Paper

#table(
  columns: (1.45fr, 3.55fr, 0.45fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Meaning as the paper uses it],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ch.],
  ),
  [Comprehension], [the block that tests whether you can read a passage for its claim], [1],
  [Cloze], [a passage with words removed, to be restored from sense and grammar], [6],
  [Summary], [the passage's claims in your own words, without examples or quotations], [6],
  [Paraphrase], [the same sense in different words], [6],
  [Synonym], [a word nearest in meaning in the given clause], [6],
  [Antonym], [a word opposite in meaning], [6],
  [Collocation], [the words a word habitually keeps company with], [6],
  [Concord], [agreement between subject and verb], [6],
  [Register], [the level of formality a passage or a blank requires], [6],
  [Inference], [a conclusion the passage forces but does not state], [6],
  [Assumption], [a conclusion the passage neither states nor forces — the invention trap], [6],
  [Main idea], [the claim every paragraph of the passage supports], [1],
  [Distractor], [a wrong option built to be attractive], [6],
  [Negation question], [a question containing EXCEPT, NOT or LEAST], [6],
  [Phoneme], [a single sound that distinguishes one word from another], [6],
  [Syllable], [one beat of a word, built on one vowel sound], [6],
  [Stress], [the beat a word falls on, marked in this book in capitals], [6],
  [Schwa], [the weak vowel in an unstressed syllable, written /ə/], [6],
  [Homophone], [words that sound alike and are spelled differently], [6],
  [Rhyme], [agreement of sound from the stressed vowel onwards], [6],
  [Emphatic stress], [the word a speaker leans on to correct or contrast], [6],
)

#v(4pt)

#trap-box("The three definitions the paper tests directly")[
  + *Theme* is a claim, not a subject. “Migration” is a subject; “migration can be reasonable and still be a loss” is a theme. An option that offers one word is almost always the distractor.
  + *Symbol* keeps its literal place. The Point of No Return is a real site at Badagry before it is an image of leaving; an option that turns it into “a mere metaphor” has thrown away half the answer.
  + *Inference* is forced; *assumption* is not. If you had to add information from outside the passage to reach the option, it is an assumption, and the answer is elsewhere.
]

#v(4pt)

#concept-box("Three words the paper uses in their technical sense")[
  + *Register* is not a school book; it is the level of formality a sentence keeps. A blank in a formal paragraph cannot be filled with a slang word however well it fits the sense.
  + *Concord* is not agreement in opinion; it is agreement in number and person between subject and verb.
  + *Stress* is not emphasis in an argument; it is the beat a word falls on, and it can be marked, counted and predicted.
]
