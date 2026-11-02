#import "template.typ": *

#current-chapter.update("Appendix H: Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight answers of the length a mark scheme rewards, each printed beside the
    half-answer it replaces. Read the second column, cover it, and write your own
    before you read it again.
  ]
]

#v(5pt)

#concept-box("The shape being modelled")[
  Every model below uses the same three-part shape: *the name*, *the evidence*, *the
  effect* — and the effect is always written as a sentence about the reader or the
  audience. Nothing else in this appendix needs to be memorised.
]

#table(
  columns: (0.55fr, 1.55fr, 2.35fr, 1.55fr),
  inset: (x: 4.5pt, y: 4.4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The extract],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The half-answer],
  ),
  [1], [“The road lay down like a patient animal.”], [Comment on the effect of the comparison.], [“It is a simile.”],
  [2], [“She does not answer. She goes on folding the cloth.”], [What does the stage direction contribute?], [“She is quiet.”],
  [3], [“The crown has not spoken since Tuesday.”], [Identify the figure and explain it.], [“It is a metaphor.”],
  [4], [A first-person narrator says: “I have never lied to my wife.” Then: “I told her the meeting ran late.”], [What do the two statements reveal?], [“He is a liar.”],
  [5], [“They gave me a flag and a name, / and a grave that was not mine.”], [Comment on the effect of the repetition and the turn.], [“It shows sadness.”],
  [6], [A play opens with *A chair. A door. Rain.*], [What is the effect of the opening?], [“It describes the set.”],
  [7], [A novel's chapter ends: “Nobody asked him again.”], [Comment on the closing sentence.], [“It ends the chapter.”],
  [8], [“Not a bad day's work,” says the foreman, after the wall collapses.], [Identify the device and its effect.], [“It is irony.”],
)

#v(5pt)

== H.1 The Eight, Answered

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[1 — SIMILE, WITH A CONSEQUENCE]
  #v(3pt)
  #text(size: 9.8pt)[
    The simile compares the road to a *patient animal*, and the patience is the point: the
    road is alive, enduring and submissive, so the journey feels like something the
    travellers are permitted rather than something they choose. The comparison also makes
    the landscape a participant, which prepares the reader for a journey that will test them.
  ]
]

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[2 — SILENCE AS ACTION]
  #v(3pt)
  #text(size: 9.8pt)[
    The direction performs a refusal without a word: she has been asked something and answers
    by returning to ordinary work. The audience sees the decision in her hands, and the
    domesticity of the folding makes the refusal look practised — she has done this before.
    The effect is that her silence is louder than the question, and the scene's power passes
    to her even though she says nothing.
  ]
]

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[3 — METONYMY, NOT METAPHOR]
  #v(3pt)
  #text(size: 9.8pt)[
    *The crown* stands for the monarch by association rather than by comparison: no similarity
    is asserted and nothing is said to *be* anything else. The substitution lets the sentence
    speak about an institution and a person at once, so the silence becomes both a personal
    refusal and a constitutional one — which is more damaging, and more difficult to answer.
  ]
]

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[4 — THE UNRELIABLE NARRATOR]
  #v(3pt)
  #text(size: 9.8pt)[
    The two statements cannot both be true, and the narrator does not notice. The juxtaposition
    is the technique: the reader supplies the contradiction the narrator cannot see, and the
    effect is that everything he says afterwards is read with suspicion. The self-deception
    matters because it is ordinary — a small, domestic lie rather than a crime — which makes
    the narrator recognisable and therefore more disturbing.
  ]
]

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[5 — REPETITION AND THE TURN]
  #v(3pt)
  #text(size: 9.8pt)[
    The repeated formula sets up an expectation of gifts and then delivers deprivations: a flag
    and a name, then a grave that is not his. The turn falls on *and a grave that was not mine*,
    where the syntax of giving is used to take something away, and the effect is an accumulating
    irony — each gift excludes the speaker further, so the poem's generosity becomes the
    instrument of his dispossession.
  ]
]

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[6 — A SET THAT WITHHOLDS]
  #v(3pt)
  #text(size: 9.8pt)[
    Three nouns and no verb: the set is stated as facts and the audience is given nothing to do
    with them except wait. The rain adds an outside that nobody in the scene can control, which
    prepares the audience for a household under pressure. The effect is expectation without
    information — the cheapest and most reliable opening a playwright has.
  ]
]

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[7 — A CLOSING SENTENCE]
  #v(3pt)
  #text(size: 9.8pt)[
    The passive construction removes the person who might have asked, and the negative removes
    the possibility of the question being put again. The chapter therefore closes on a
    foreclosure rather than a conclusion: the reader is left with the sense that a chance has
    gone by, which is the loss the chapter has been quietly building.
  ]
]

#v(5pt)

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: (left: 3pt + jamb-green),
  inset: (x: 10pt, y: 8pt),
  radius: 4pt,
)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[8 — LITOTES, NOT IRONY]
  #v(3pt)
  #text(size: 9.8pt)[
    *Not a bad day's work* is litotes: the praise is delivered by denying its opposite, and the
    denial is absurd in the circumstances. The effect is not the foreman's approval but his
    insulation — he has found a way of speaking about a disaster that costs him nothing, and the
    reader's anger is directed at the habit of speech rather than at the man.
  ]
]

#v(6pt)

#rule-box("What all eight have in common")[
  + *One device named*, never a list.
  + *One piece of evidence*, quoted in the fewest possible words.
  + *One effect sentence* that names a consequence for the reader, the audience or the argument.
  + *No paraphrase* of the extract, and no summary of the plot.
]

#v(4pt)

== H.2 Three Sentences to Stop Writing

#table(
  columns: (2.0fr, 3.0fr),
  inset: (x: 6pt, y: 6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 0.8pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Instead of],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Write],
  ),
  [“It emphasises the theme.”], [“It makes the reader feel X about Y, because the words do Z.”],
  [“The writer uses imagery.”], [“The image of the … makes … visible, so the reader understands ….”],
  [“This shows the character's feelings.”], [“The character's refusal to … shows the reader what he cannot say.”],
)

#text(size: 9.1pt)[Each replacement forces a consequence into the sentence. That is the whole difference between an answer that names and an answer that argues — and it is worth two marks a paper, which is the difference between a good score and a competitive one.]
