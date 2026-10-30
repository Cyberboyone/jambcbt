#import "template.typ": *

#current-chapter.update("Appendix J: The Twelve Traps, Worked")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Twelve Traps, Worked]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Traps, Worked]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twelve sentences, each built to catch a candidate who knows the rule and applies it too quickly. For each one: the sentence, the wrong answer the trap is fishing for, why it is wrong, and the key.]
]

#v(4pt)

#text(size: 9.8pt)[A trap is not a hard question. It is an easy question whose obvious answer is wrong. The twelve below are drawn from the drills and papers in this volume, and between them they account for most of the avoidable losses in the lexis and structure section. Work them in order: each one names the rule it is breaking, and the twelfth sends you back to the first.]

#v(4pt)

#trap-box("Trap 1 — the noun nearest the verb")[
  *“The list of names of the successful candidates were pasted.”* The trap answer is *were*, because *candidates* sits next to the verb. The subject is *list*, singular, and every of-phrase is a passenger: *was*. Bracket everything from *of* to the end and read the sentence again.
]

#trap-box("Trap 2 — the plural that is singular")[
  *“The news are worse than we expected.”* The trap is the -s ending. News, physics, mathematics, economics and politics are singular: *is*. The mirror trap is *police*, *cattle* and *people*, which are plural whatever the sentence suggests.
]

#trap-box("Trap 3 — the polite pronoun")[
  *“Between you and I, the plan will fail.”* The trap is that *I* sounds more formal. Between is a preposition, and a preposition takes the object form: *me*. Formality is not a grammatical argument.
]

#trap-box("Trap 4 — the auxiliary that takes the past tense")[
  *“She has wrote three letters.”* The trap is that *wrote* is a real past form and sounds natural. After have, has or had the verb is the participle: *written*. Say the three forms aloud — write, wrote, written — and take the third.
]

#trap-box("Trap 5 — the comma that looks like a pause")[
  *“The rain stopped, we left at once.”* The trap is that the sentence sounds right when read aloud. Two independent clauses need a full stop, a semicolon or a conjunction: *The rain stopped; we left at once.* Reading aloud tests the rhythm, not the grammar.
]

#trap-box("Trap 6 — the synonym that is stronger")[
  *“The teacher's candid remark upset the board.”* The trap option is *rude*, which is a consequence of candour rather than its meaning. The key is *honest*. A synonym question asks for the same idea, not for the effect of the idea.
]

#trap-box("Trap 7 — the -ly word that is an adjective")[
  *“Which of these is NOT an adverb: friendly?”* The trap is the -ly ending. Friendly, lovely, lonely and silly describe nouns, so they are adjectives: *friendly* is the answer. The -ly test runs from adjective to adverb, never backwards.
]

#trap-box("Trap 8 — the collective that splits")[
  *“The committee have reached a decision, and its members have been informed.”* The trap is that *members* in the second clause makes the whole sentence feel plural. The committee, in the first clause, is one body and takes *has*. The possessive *its* confirms it.
]

#trap-box("Trap 9 — the double comparison")[
  *“This route is more shorter than the other.”* The trap is that *more* sounds formal. Short takes *-er*, so the word is simply *shorter*. More better, most tallest and more easier are all the same error.
]

#trap-box("Trap 10 — the missing subject")[
  *“Walking to school, the rain began.”* The trap is that the sentence reads smoothly. A participial phrase must open with the doer: *Walking to school, I was caught in the rain.* Smoothness is not correctness.
]

#trap-box("Trap 11 — the tense that mixes across the comma")[
  *“If it rains, we would stay at home.”* The trap is that both halves are individually correct. The first conditional pairs a present if-clause with *will*; *would* belongs to the second conditional, with a past if-clause.
]

#trap-box("Trap 12 — the literal idiom")[
  *“He decided to bury the hatchet with his rival.”* The trap option is *hide a weapon*, which is what the words say. The idiom means to end a quarrel. Every idiom question offers its literal reading, and the literal reading is always wrong.
]

#v(4pt)

== J.13 The Four Checks, With All Twelve

#text(size: 9.8pt)[Every trap above is caught by one of four checks. Run them in order on any sentence you are unsure of: they take three seconds, and they look for four different faults rather than reading the same sentence again.]

#table(
  columns: (1.3fr, 2.3fr, 2.0fr, 0.5fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Check],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ask],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Catches],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Traps],
  ),
  [Bracket], [what is the head of the subject?], [the of-phrase and the collective noun], [1, 2, 8],
  [Count], [how many clauses can stand alone?], [the splice and the missing subject], [5, 10],
  [Name], [what job is the word doing here?], [the -ly adjective and the pronoun case], [3, 7],
  [Complete], [what form follows the auxiliary or the comma?], [the participle, the comparison and the conditional], [4, 6, 9, 11, 12],
)

#v(3pt)

#concept-box("How to use this appendix in the last week")[
  + Read one trap a night, and write the repaired sentence from memory the next morning.
  + On the last day, read only the *Catches* column of J.13 and recite the four questions.
  + If you have time for one more thing after that, it is Appendix E.2 — the ten rules that carry the most marks. Between the two, they cover the paper.
]

#v(4pt)

== J.14 Six Sentences to Repair Tonight

#table(
  columns: (2.1fr, 1.9fr, 0.5fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Sentence],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Repair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Trap],
  ),
  [The list of members have been pasted], [The list of members has been pasted], [1],
  [The police has arrested the thief], [The police have arrested the thief], [2],
  [Between you and I, the plan is weak], [Between you and me, the plan is weak], [3],
  [She has wrote to the chairman], [She has written to the chairman], [4],
  [The scheme failed, the villagers returned to the stream], [The scheme failed; the villagers returned to the stream], [5],
  [He decided to let the cat out of the bag by accident], [He revealed the secret by accident], [12],
)

#v(2pt)

#shortcut-box("The one-minute version of this appendix")[
  + Bracket the phrase between the subject and its verb; the verb agrees with what is left.
  + Say the long form after have, has and had; it must be the third form of the verb.
  + Name the job of every pronoun after a preposition; it is the object form.
  + Count the clauses; two that stand alone need more than a comma.
  + Read any idiom as a single word, never word by word.
]

