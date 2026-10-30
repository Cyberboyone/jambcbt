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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Twelve mistakes, each with the wrong answer it produces and the move that prevents it. If you have one hour before the paper, read this appendix and Appendix K.
  ]
]

#v(4pt)

== J.1 Reading the Passage First

#trap-box("Trap 1 — the passage before the questions")[
  *The wrong answer:* you read four hundred words, remember the vivid detail, and choose it.

  *The repair:* read the four questions and their options first. They are the only thing that tells you which four sentences of the passage matter.

  *The note:* this is the single most expensive habit in the paper, and it is the only one that can be fixed in a week.
]

== J.2 The True Detail

#trap-box("Trap 2 — the true statement")[
  *The wrong answer:* an option that appears word for word in paragraph three, offered on a question about the whole passage.

  *The repair:* ask what the question wanted. If it wanted a claim covering every paragraph, a detail is wrong however true it is.

  *The note:* three of the four options on a main-idea question are details. The key is the only one that needs the whole passage.
]

== J.3 The Lifted Phrase

#trap-box("Trap 3 — the familiar wording")[
  *The wrong answer:* the option that repeats the passage's striking phrase, chosen because it feels like the passage.

  *The repair:* familiarity is evidence of nothing. Find the sentence and compare it with the option word by word.

  *The note:* the examiner chooses the striking phrase precisely because it is the phrase you will remember instead of the claim.
]

== J.4 The Almost-True

#trap-box("Trap 4 — one word changed")[
  *The wrong answer:* the passage's sentence with *most* turned into *all*, or *may* into *will*.

  *The repair:* read the option against the sentence, not against your memory of the sentence. One word is enough to make a true statement false.
]

== J.5 The Reasonable Invention

#trap-box("Trap 5 — the sensible statement")[
  *The wrong answer:* a statement that is true of the world, sensible, and absent from the passage.

  *The repair:* every answer has a sentence. Point at it or discard the option.

  *The note:* inventions feel right because they agree with what you already believe; that is why the paper uses them.
]

== J.6 The Reversal

#trap-box("Trap 6 — cause and effect swapped")[
  *The wrong answer:* the passage's own words with the *because* reversed — the delay blamed for the report instead of the report for the delay.

  *The repair:* find the connector and ask which side of it each fact sits on.
]

== J.7 The Unmarked NOT

#trap-box("Trap 7 — the negation question answered forwards")[
  *The wrong answer:* the first familiar option, on a question that asked which statement is NOT in the passage.

  *The repair:* mark the negative word before you read a single option, and check each option *in* or *out*.
]

== J.8 The Assumption Dressed as an Inference

#trap-box("Trap 8 — two steps instead of one")[
  *The wrong answer:* a conclusion you reached after the passage's conclusion, on a question that asked what the passage implies.

  *The repair:* one step, and the words that force it must be in the passage.
]

== J.9 The Tone Matched to the Subject

#trap-box("Trap 9 — bad subject, angry writer")[
  *The wrong answer:* *critical* or *alarmed* chosen because the passage is about corruption, when the writer's sentences are flat and controlled.

  *The repair:* read the adjectives, not the topic. *As usual* and *a committee* are the evidence, not the subject matter.
]

== J.10 The Literal Irony

#trap-box("Trap 10 — praise read as praise")[
  *The wrong answer:* *admiring*, because the passage says *a triumph*.

  *The repair:* read the clause after the praise. If it withdraws the praise, the tone is ironic.
]

== J.11 The Summary of the Wrong Noun

#trap-box("Trap 11 — answering a question nobody asked")[
  *The wrong answer:* a competent summary of the whole passage when the instruction asked for *the effects*.

  *The repair:* underline the noun in the instruction — reasons, effects, causes, suggestions — and answer that noun.
]

== J.12 The Sound Read From the Spelling

#trap-box("Trap 12 — the letter mistaken for the sound")[
  *The wrong answer:* *eight* chosen as a rhyme for *night* because the two words are spelled alike.

  *The repair:* say the words aloud. Rhyme and vowel identity are properties of sound, and English spelling is not a guide to either.
]

#v(4pt)

== J.13 The Four Checks, With All Twelve

#table(
  columns: (1.6fr, 0.6fr, 2.6fr),
  inset: 4.5pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Check],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Traps],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you do],
  ),
  [The order check], [1, 7], [questions and options first; the negative word marked before the options],
  [The evidence check], [2, 3, 5, 6], [every answer has a sentence; point at it or discard the option],
  [The one-step check], [8, 9, 10], [one step for inference; adjectives for tone; the clause after the praise for irony],
  [The sound check], [4, 11, 12], [one word changed is enough; the instruction's noun rules the summary; say the word aloud],
)

#v(3pt)

#text(size: 9.6pt)[Four checks, twelve traps. A candidate who runs all four on every question finishes the paper with about three minutes to spare — and spends those three minutes on the questions the checks flagged rather than on the whole paper.]

#v(4pt)

== J.14 Six Questions to Repair Tonight

#table(
  columns: (2.4fr, 1.8fr, 0.6fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What the candidate did],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The repair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Trap],
  ),
  [read the passage, then the questions], [questions and options first], [1],
  [chose a true sentence from paragraph three], [asked what the question wanted], [2],
  [chose the option with the passage's phrase in it], [found the sentence and compared word by word], [3],
  [answered a NOT question with a familiar option], [marked the negative word first], [7],
  [took two steps and called it an inference], [one step, with the words that force it], [8],
  [chose *admiring* for a passage that says *a triumph*], [read the clause after the praise], [10],
)

#v(2pt)

#shortcut-box("The one-minute version of this appendix")[
  + Questions before passage; the negative word before the options.
  + Every answer has a sentence; point at it or discard the option.
  + One step only, and the adjectives carry the tone.
  + The instruction's noun rules the summary; the count decides the last mark.
  + Say the word aloud: rhyme, stress and vowel are sound, not spelling.
]

