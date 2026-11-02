#import "template.typ": *

#current-chapter.update("Appendix K: Thirty-Six Traps")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix K: Thirty-Six Traps]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Thirty-Six Traps]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The wrong answers the paper actually prints, in the words it prints them, with the
    reason each one looks right and the sentence that defeats it. Read one section a
    night in the last week.
  ]
]

#v(5pt)

== K.1 Traps in the Wording

#table(
  columns: (0.35fr, 1.95fr, 1.6fr, 1.7fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The option says],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Why it looks right],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The fix],
  ),
  [1], [“It emphasises the theme.”], [every device emphasises something], [name the theme and the emphasis],
  [2], [“It creates a picture.”], [images do create pictures], [say which sense, and what is now understood],
  [3], [“The writer uses simple language.”], [the passage may be plain], [name the diction and its effect],
  [4], [“It shows the character's feelings.”], [feelings are usually present], [say what the reader now sees about them],
  [5], [“It makes the poem musical.”], [rhyme and metre are musical], [say what the sound does to pace or sense],
  [6], [“It is a metaphor.” (for a simile)], [both compare], [look for *like* or *as* before naming],
  [7], [“It is a symbol.”], [symbols sound impressive], [point at the words; if you cannot, it is not a symbol],
  [8], [“The poet is angry.”], [the speaker may be], [separate persona from poet, and name the evidence],
)

== K.2 Traps in the Genres

#table(
  columns: (0.35fr, 1.95fr, 1.6fr, 1.7fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The option says],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Why it looks right],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The fix],
  ),
  [9], [“A tragedy is a play in which the hero dies.”], [the hero usually does], [define by standing, agency and the fall],
  [10], [“A comedy contains no serious issue.”], [comedies are funny], [the test is the enlarged ending],
  [11], [“The soliloquy is a long speech.”], [it usually is], [the test is being alone on stage],
  [12], [“The aside is a short soliloquy.”], [both are unheard], [the aside happens in company],
  [13], [“Dramatic irony is when something sad happens.”], [the audience feels it coming], [the test is superior knowledge],
  [14], [“The chorus is the narrator.”], [both comment], [the chorus is a group and often sings],
  [15], [“Melodrama is a kind of comedy.”], [it makes audiences laugh], [it is serious action with simplified virtue],
  [16], [“The play-within-a-play is a genre.”], [it has a name], [it is a device that comments on the main action],
)

== K.3 Traps in Prose and Poetry

#table(
  columns: (0.35fr, 1.95fr, 1.6fr, 1.7fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The option says],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Why it looks right],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The fix],
  ),
  [17], [“The narrator is the author.”], [the voice sounds like him], [the narrator is a construction],
  [18], [“First person means the author.”], [the pronoun is *I*], [first person means one account only],
  [19], [“Omniscient and limited are the same.”], [both enter minds], [count the minds entered],
  [20], [“Objective narration has no narrator.”], [there is no commentary], [it has a narrator who reports only action],
  [21], [“A round character is one who changes.”], [change feels like depth], [roundness is complexity; change is dynamic],
  [22], [“Setting is the scenery.”], [it is where things happen], [setting is pressure on the characters],
  [23], [“The theme is widowhood.”], [it is what the book is about], [a theme needs a verb],
  [24], [“Free verse is prose with short lines.”], [it has no metre], [the line breaks are chosen and meaningful],
  [25], [“Blank verse is free verse.”], [both are unrhymed], [blank verse keeps the metre],
  [26], [“A sonnet is any fourteen-line poem.”], [it usually is fourteen], [add pentameter and the turn],
  [27], [“Enjambment is a pause in the line.”], [both interrupt the line], [a pause inside the line is a caesura],
  [28], [“A symbol is a metaphor.”], [both carry meaning], [a symbol does not assert the comparison],
)

== K.4 Traps in the Devices

#table(
  columns: (0.35fr, 1.95fr, 1.6fr, 1.7fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The option says],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Why it looks right],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The fix],
  ),
  [29], [“Metonymy is a part for the whole.”], [that is a substitution], [part-for-whole is synecdoche],
  [30], [“Oxymoron and paradox are the same.”], [both contradict], [a phrase versus a statement],
  [31], [“Litotes is exaggeration.”], [both distort quantity], [litotes understates by denying the opposite],
  [32], [“Bathos is anticlimax.”], [both deflate], [one is stylistic, the other structural],
  [33], [“Alliteration repeats vowels.”], [both repeat sounds], [alliteration is initial consonants],
  [34], [“Assonance is rhyme.”], [both repeat vowels], [assonance is internal and need not rhyme],
  [35], [“A pun is a joke.”], [puns are funny], [a pun is two meanings in one word, and can be cruel],
  [36], [“Satire is mockery.”], [both laugh at someone], [satire implies a standard and aims to correct],
)

#v(5pt)

#concept-box("The one question that defeats most of these")[
  For any option that names a device, ask: *could this option be written about a different
  text?* If it could, it has not answered the question. The thirty-six traps above are all
  portable sentences, and portability is exactly what makes them wrong.
]

#v(4pt)

#shortcut-box("K.5 Four questions to ask of any option")[
  + *Is it a description?* If so, it is a distractor in a literature paper.
  + *Could it be written about another text?* If so, it has not answered this one.
  + *Does it name the author?* Unless the stem asks about the author, cut it.
  + *Does it state a consequence for the reader or audience?* If it does, it is probably the answer.
]
