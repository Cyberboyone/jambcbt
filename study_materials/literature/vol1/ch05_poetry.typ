#import "template.typ": *

#current-chapter.update("Chapter 5: Poetry: The Line and the Sound")

#pagebreak()

#chapter-opener(
  5,
  "Poetry: The Line and the Sound",
  subtitle: "The Line, Metre, Rhyme, Sound, Image and Symbol, the Types of Poem and the Reading Procedure",
  syllabus-ref: "Section 4 • Poetry",
  utme-weight: "5 Qs a year",
  running: "Poetry: The Line and the Sound",
)

#focus-radar(
  objectives: (
    "Explain why the line, rather than the sentence, is poetry's unit.",
    "Apply a six-step reading procedure to an unseen poem.",
    "Scan a line for its foot and its metre, and say what the metre does.",
    "Name the common rhyme schemes and the sound devices, and hear the difference.",
    "Distinguish image from symbol, and symbol from conceit.",
    "Identify the main types of poem from their defining marks.",
    "Read structure — stanza, turn, refrain — as argument.",
  ),
  hotspots: (
    "“Poetry is written in lines, not sentences.” A question that calls a free-verse poem “prose broken into short lines” is testing whether you know that a chosen line break is a device.",
    "Scanning: count the *stresses*, not the syllables. “Shall I compare thee to a summer's day” is five stresses — iambic pentameter — whatever the syllable count suggests.",
    "Rhyme scheme letters follow the *sound*, not the spelling: *move / love* is a full rhyme in older pronunciation, *cough / bough* is an eye rhyme.",
    "*Enjambment* runs the sense past the line end; *end-stopping* closes it. The paper offers “enjambment” for a full stop at the line end at least once a year.",
    "A symbol is not a metaphor. The metaphor says *this is that*; the symbol stands for something else without saying so, and the poem lets it accumulate.",
  ),
  trap-summary: "Three failures. (1) Paraphrasing the poem instead of reading its form. (2) Naming a device without its sound — “alliteration is used for emphasis” is worth nothing. (3) Ignoring the volta: in a sonnet, and in most short lyrics, the turn carries the argument.",
)

// ============================================================================
== 5.1 Poetry Is the Line

A novel is built of sentences and a play of speeches, but a poem is built of *lines*.
The line is a unit of sound and of time: it tells you where to pause, where to look
back, and where the sense is being held up or let go. Break the same words into
different lines and a different poem appears.

#rule-box("Four things a line break can do")[
  + *Complete* the sense, so the line ends like a sentence. This is end-stopping, and it makes the poem measured, formal, closed.
  + *Interrupt* the sense, so the reader is pulled across the break into the next line. This is enjambment, and it creates speed, suspense or unease.
  + *Isolate* a word, so the word is read twice — once in the sentence, once as an object on the page.
  + *Hold* a rhyme, so that the sound of the line end arrives before the sense does.
]

#text(size: 9.4pt)[Everything else in this chapter is a refinement of that one fact. Metre arranges the stresses inside the line; rhyme arranges the sounds at its end; the stanza arranges lines into groups; and the *turn* — the point at which the poem changes direction — is usually marked by a line break or a stanza break. When a question asks what a poem is *about*, the safest first answer is: read the line breaks.]

// ============================================================================
== 5.2 Reading a Poem in Six Steps

#diagram-fig("diagrams/ch05_reading_steps.svg",
  "The six-step procedure. Steps 1–3 can be done in a minute; steps 4–6 are where the marks are.", width: 100%)

#table(
  columns: (0.85fr, 1.55fr, 2.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Ask],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What you are looking for],
  ),
  [*1 Situation*], [who is speaking, to whom, and where?], [a persona, an addressee, a moment — often a single scene],
  [*2 Shape*], [how many stanzas, and how do they divide?], [stanzas of equal length suggest order; an odd short stanza suggests a turn],
  [*3 Turn*], [where does the poem change its mind?], [a *but*, a *yet*, a question, a change of tense, a new stanza],
  [*4 Image*], [which pictures carry the argument?], [the images that recur, and the ones that clash],
  [*5 Sound*], [what does the poem sound like, and where does the sound change?], [metre, rhyme, alliteration, hard or soft consonants],
  [*6 Statement*], [what does it now say that it could not say in prose?], [the theme, phrased as a sentence, with the form as part of it],
)

#shortcut-box("The one-minute version")[
  Read the last two lines first. Then read the first two. The distance between them is
  the poem's argument, and everything in the middle is the bridge. This is why so many
  exam poems can be answered from their opening and closing couplets alone — and why
  the middle is where the discriminating questions live.
]

// ============================================================================
== 5.3 The Types of Poem

#table(
  columns: (1.15fr, 2.05fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Its mark],
  ),
  [*Lyric*], [a short poem of personal feeling, spoken by one voice], [intimacy, song, a single mood],
  [*Ode*], [a formal lyric addressed to a person, object or idea], [elevated address, and a structure of praise],
  [*Elegy*], [a poem of mourning, usually for a named person], [grief, praise, and consolation attempted],
  [*Dirge*], [a song of mourning performed at a funeral], [ritual repetition, refrain, communal grief],
  [*Sonnet*], [fourteen lines in iambic pentameter, with a turn], [Petrarchan 8 + 6; Shakespearean 4 + 4 + 4 + 2],
  [*Ballad*], [a narrative poem in short stanzas, often sung], [story by dialogue and refrain; a single incident],
  [*Epic*], [a long narrative poem on a heroic scale], [a hero, a nation, an elevated style, interventions of the gods],
  [*Mock epic*], [an epic's machinery applied to a trivial subject], [the joke is the disproportion],
  [*Dramatic monologue*], [a speech by a character at a critical moment, overheard], [one voice, a silent listener, self-revelation],
  [*Pastoral*], [country life presented as simpler and better], [shepherds, seasons, the city as a contrast],
  [*Free verse*], [poetry without regular metre or rhyme], [the line break is the only measure, and must work harder],
  [*Praise poem / oriki*], [a naming poem that celebrates a person by epithets], [accumulated titles, and the subject's essence in names],
)

#concept-box("Blank verse is not free verse")[
  *Blank verse* is unrhymed but metred — almost always iambic pentameter — and it is the
  medium of Shakespeare's plays and of Milton. *Free verse* has neither rhyme nor regular
  metre. The two are confused in the paper because both are "unrhymed", which is the one
  thing they share.
]

// ============================================================================
== 5.4 Metre and Rhythm

Metre is the pattern of stressed and unstressed syllables in a line. English verse is
built from *feet*, and a foot has two or three syllables with one main stress.

#diagram-fig("diagrams/ch05_metre.svg",
  "The five feet, and the line lengths named by the number of feet. Scan by stress, not by syllable.", width: 100%)

#table(
  columns: (1.05fr, 1.35fr, 2.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Foot],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Pattern],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Hear it in],
  ),
  [*Iamb*], [unstressed + stress (da-DUM)], [“Shall I / compare / thee to / a sum- / mer's day”],
  [*Trochee*], [stress + unstressed (DUM-da)], [“Ty-ger! / Ty-ger! / burn-ing / bright”],
  [*Anapaest*], [unstressed + unstressed + stress (da-da-DUM)], [“in the night, in the dark, in the storm”],
  [*Dactyl*], [stress + unstressed + unstressed (DUM-da-da)], [“Half a league, / half a league, / half a league onward”],
  [*Spondee*], [stress + stress], [“Slow, slow, / sad, sad” — used for weight, never for a whole line],
)

#rule-box("Naming a line in three moves")[
  + *Count the feet.* Five feet is pentameter, four is tetrameter, three is trimeter, six is hexameter.
  + *Name the dominant foot.* Iambic pentameter, trochaic tetrameter, anapaestic trimeter.
  + *Then say what the pattern does when it breaks.* A spondee in an iambic line slows it; a missing stress leaves a gap the reader falls into.
]

#text(size: 9.4pt)[A metre is a *norm*, and the meaning lives in the deviations. A regular iambic line can sound like a heartbeat or a march; a line with the stress displaced sounds like a stumble, and a poem about grief will stumble on purpose. When a question asks what the metre contributes, the answer is never “it makes the poem musical” — it is what the regularity does to the reader, and what the irregularities do to the regularity.]

#worked-example(
  1,
  "Scanning a line",
  [*The curfew tolls the knell of parting day.* How many metrical feet, and of what kind?

    A. four iambs \
    B. five iambs \
    C. five trochees \
    D. six anapaests],
  [
    *Step 1 — mark the stresses.* THE cur-FEW tolls the KNELL of PART-ing DAY. Five beats fall on *curfew*, *tolls*, *knell*, *parting*, *day*.

    *Step 2 — group into feet.* The cur- | few tolls | the knell | of part- | ing day. Each foot moves from a lighter syllable to a heavier one, which is the iamb.

    *Step 3 — name it.* Five feet, iambic: iambic pentameter.

    *Check.* Five stresses, five feet, duh-DUM pattern. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "What the metre is doing",
  [A poem about a death is written in strict iambic pentameter, but one line breaks off after three feet. The effect of the short line is most likely

    A. a printing error \
    B. the pattern faltering, so that the line enacts the loss it describes \
    C. a change of subject \
    D. a sign that the poem is free verse],
  [
    *Step 1 — treat the metre as a promise.* Regular pentameter sets an expectation that the poem will keep time.

    *Step 2 — read the break against the promise.* A line that stops after three feet leaves two beats missing, and the reader feels the gap — which is exactly what bereavement feels like.

    *Step 3 — say it as a sentence about the reader.* The form falters, and the reader falters with it. This is not decoration; it is the argument.

    *Check.* An irregularity in a regular poem is a decision. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.5 Rhyme and Sound

Rhyme is the repetition of sound at the end of lines. It organises the poem into
patterns, and it also makes promises: the first rhyme-word tells the reader to expect
a partner, and the delay before the partner arrives is a small suspense.

#table(
  columns: (1.15fr, 2.0fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Example],
  ),
  [*Full rhyme*], [the stressed vowel and what follows are identical], [*day / away*],
  [*Slant rhyme*], [the sounds are close but not identical], [*moon / stone*],
  [*Eye rhyme*], [spelling matches, sound does not], [*cough / bough*],
  [*Internal rhyme*], [a rhyme inside a line, or between the middle and the end], [“The grave man lent his hand”],
  [*Masculine rhyme*], [the final syllable is stressed], [*today / away*],
  [*Feminine rhyme*], [the stress falls before the last syllable], [*shaking / breaking*],
)

#table(
  columns: (1.2fr, 2.3fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Sound device],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does to the line],
  ),
  [*Alliteration*], [repeats an initial consonant — binds words together and can make a line hiss or stumble],
  [*Assonance*], [repeats a vowel sound — slows the line and gives it a hum],
  [*Consonance*], [repeats a final consonant — makes a hard or a soft edge],
  [*Onomatopoeia*], [the word imitates the sound — *hiss*, *clang*, *whisper*],
  [*Euphony*], [a run of soft sounds, so the line flows],
  [*Cacophony*], [a run of harsh sounds, so the line jars],
  [*Refrain*], [a line or phrase repeated at intervals — turns the poem into a ritual or a burden],
)

#trap-box("Rhyme scheme letters")[
  Label by *sound*, one letter per new rhyme: *abab* for alternating, *aabb* for couplets,
  *abba* for enclosed rhyme, *abab cdcd efef gg* for the Shakespearean sonnet. A word that
  repeats exactly is not a new rhyme, and a word that only looks alike — *cough / bough* —
  is an eye rhyme and takes a different letter.
]

// ============================================================================
== 5.6 Image, Symbol and Figure

An *image* is language that appeals to the senses. A *symbol* is an object that stands
for something beyond itself, and a *conceit* is an elaborate, extended comparison that
the poem sustains and tests.

#table(
  columns: (1.05fr, 2.05fr, 1.8fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question it answers],
  ),
  [*Image*], [sensory language, usually visual but often tactile or auditory], [what does the reader see, hear or feel?],
  [*Symbol*], [a concrete thing that carries an abstract meaning], [what does the object stand for, and how do we know?],
  [*Conceit*], [an extended, surprising comparison developed through the poem], [how far is the comparison pushed, and where does it break?],
  [*Personification*], [an abstraction or object given human qualities], [what does the humanising make it capable of?],
  [*Apostrophe*], [address to someone absent, dead or inanimate], [who is being spoken to, and why can they not answer?],
  [*Pathetic fallacy*], [nature given the feelings of the scene], [what does the weather agree with?],
)

#concept-box("Symbol or metaphor?")[
  A metaphor asserts: *the city is a stone lung*. A symbol does not assert; it presents
  the object and lets it gather meaning. In *Crossing the Bar*, the bar is not said to be
  death — it is the sandbar at the harbour mouth, and it becomes death by the poem's use
  of it. That difference is testable: a question that quotes a stated comparison is asking
  about metaphor, and a question that asks what an object *comes to stand for* is asking
  about symbol.
]

// ============================================================================
== 5.7 Form, Structure and Tone

Structure is the arrangement of the poem's parts, and it is the level at which most
candidates have nothing to say. Three features repay attention.

#rule-box("Three structural features")[
  + *The stanza.* Equal stanzas suggest order, balance and argument; an irregular stanza suggests speech, breath or disorder. A poem that shortens its stanzas is a poem that is running out of time.
  + *The volta, or turn.* The moment the argument changes direction — in a sonnet, usually at line 9 (Petrarchan) or line 13 (Shakespearean). Marked by *but*, *yet*, *then*, or by a question.
  + *The refrain.* Repetition that returns changed. Ask what has happened between the first and last appearance, because that difference is the poem's plot.
]

#table(
  columns: (1.0fr, 1.3fr, 2.5fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Form],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where the turn falls],
  ),
  [*Petrarchan sonnet*], [octave *abbaabba* + sestet *cdecde*], [line 9: the sestet answers the octave],
  [*Shakespearean sonnet*], [three quatrains *abab cdcd efef* + couplet *gg*], [line 13: the couplet turns or resolves],
  [*Ballad stanza*], [four lines, *abcb*, alternating four and three stresses], [each stanza closes on the unrhymed line, which carries the shock],
  [*Couplet*], [two rhymed lines], [the second line completes or undercuts the first],
)

#worked-example(
  3,
  "The turn in a sonnet",
  [In a Petrarchan sonnet the octave laments a death and the sestet begins *But grief is not the whole of what we owe*. The line is doing what?

    A. repeating the octave's argument \
    B. marking the volta, where the poem changes direction \
    C. completing the rhyme scheme \
    D. introducing a new character],
  [
    *Step 1 — locate the line.* It opens the sestet, which is exactly where the Petrarchan turn falls.

    *Step 2 — read the signal.* *But* is a conjunction of reversal, and "not the whole" qualifies everything the octave has said.

    *Step 3 — name the function.* The poem does not abandon grief; it sets a limit on it, and the argument moves from mourning to obligation.

    *Check.* Position plus a reversal word is a volta. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Tone and the persona",
  [A poem about a failed harvest is spoken by a farmer who jokes about his neighbours' pity. The tone is best described as

    A. sentimental \
    B. defiant or wry, using humour to refuse pity \
    C. indifferent \
    D. angry at the weather],
  [
    *Step 1 — separate what happens from how it is told.* A failed harvest invites lament; the farmer jokes instead.

    *Step 2 — interpret the joke.* Humour about pity is a refusal of pity. The farmer is defending his dignity, which makes the tone wry or defiant rather than sad.

    *Step 3 — rule out the near-misses.* Sentimental would mean the poem asks for our tears; indifferent would mean he does not care; anger at the weather would have to be visible in the language.

    *Check.* Ask what attitude the speaker is taking to his own situation. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  5,
  "The symbol at work",
  [A poem describes a wall that the neighbours rebuild every year, and never explains what the wall means. The wall most likely functions as

    A. a metaphor, because the poem compares it to something \
    B. a symbol, because its meaning is carried by the poem's use of it rather than stated \
    C. personification, because walls cannot build themselves \
    D. a simile, because the poem says what it is like],
  [
    *Step 1 — check for an assertion.* The poem never says "the wall is our hatred"; it describes the labour of rebuilding.

    *Step 2 — check for accumulation.* The yearly rebuilding gives the object meaning by repetition, which is how a symbol works.

    *Step 3 — distinguish the figures.* A metaphor would state the comparison; a simile would use *like* or *as*; personification would give the wall human action. None is present.

    *Check.* Unstated but patterned meaning is a symbol. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 5.8 Poetry in the Exam Hall — a Two-Minute Set

#mcq(1, [A line of five iambic feet is called], [iambic tetrameter], [iambic pentameter], [trochaic pentameter], [anapaestic hexameter])

#mcq(2, [The continuation of a sentence past the end of a line is], [a caesura], [enjambment], [end-stopping], [a refrain])

#mcq(3, [A fourteen-line poem in iambic pentameter with a turn is], [an ode], [an elegy], [a sonnet], [a ballad])

#mcq(4, [In a Shakespearean sonnet the turn usually falls at], [line 5], [line 9], [line 13], [line 14])

#answer-key-grid(("B", "B", "C", "C"))

#answer-notes((
  ("B", [Five feet, iambic: pentameter names the count and iamb the foot. Tetrameter would be four, and the other two misname the foot or the count.]),
  ("B", [Running the sense past the line end is enjambment; a caesura is a pause inside the line, and end-stopping is the opposite of enjambment.]),
  ("C", [Fourteen pentameter lines with a turn is the sonnet. An ode is a formal lyric of address, an elegy a poem of mourning, and a ballad a narrative song.]),
  ("C", [The Shakespearean sonnet is three quatrains and a couplet, and the couplet's turn falls at line 13; line 9 is the Petrarchan turn.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the six reading steps, the five feet and the sonnet shapes.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A poem is built of lines, not sentences, and the line break is the first device: it can close the sense (end-stopping), pull it across (enjambment), isolate a word, or hold a rhyme. Read an unseen poem in six steps — situation, shape, turn, image, sound, statement — and read the last two lines first, because the distance between the opening and the close is the poem's argument. Know the types by their marks: lyric, ode, elegy, dirge, sonnet, ballad, epic, mock epic, dramatic monologue, pastoral, free verse and the praise poem. Scan by stress rather than syllable, naming the foot (iamb, trochee, anapaest, dactyl, spondee) and the count (tetrameter, pentameter), then say what the regularity does and what the irregularities do to it. Rhyme organises sound into patterns and makes promises; alliteration, assonance, consonance, onomatopoeia and refrain work on the ear. Image is sensory language, symbol is unstated meaning carried by an object, and conceit is a comparison pushed to its limit. Structure is stanza, volta and refrain — and the volta is where the marks are.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Explain what a line break can do that a full stop cannot.],
  [Run the six-step procedure on four lines you have never seen.],
  [Scan a pentameter line and mark its stresses.],
  [Name four types of poem by their defining marks, without using the word "about"],
))

#concept-box("Carry this into Chapter 6")[
  Poetry gave you the line; the devices chapter gives you the whole toolkit and then
  takes the toolkit away, because the unseen passage does not tell you what to look for.
  Chapter 6 is the longest in the book for that reason: it is where the vocabulary has to
  become a habit rather than a list.
]

#include "drill_ch05.typ"

#concept-box("After the drill — the scan in your hand")[
  A metre question is worth one mark and costs ten seconds if you scan by stress. Take
  four lines from any poem in this book, mark the stressed syllables with a pencil, and
  count the feet. Do it once a day for a week and the scan becomes automatic — which is
  the only way it will be available to you in a hall with forty questions and forty
  minutes.
]

#v(4pt)

== 5.9 The Chapter in One Table

#table(
  columns: (1.35fr, 2.25fr, 1.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 0.8pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If the question says],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Look at],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Then say],
  ),
  [“the line break”], [where the sense closes or runs on], [end-stopping or enjambment, and what it does to pace],
  [“the metre”], [the stresses, foot and count], [the norm, then what the irregularities do to it],
  [“the rhyme”], [the last sound of each line], [the scheme, and whether the rhyme is full, slant or eye],
  [“the stanza”], [the shape, and any stanza that breaks it], [order, or a poem running out of room],
  [“the turn”], [a *but*, a question, a new stanza], [the volta, and what has changed across it],
  [“the repetition”], [the first and last appearance], [what has changed between them],
  [“the title”], [the word the poem insists on], [the interpretation offered before the poem begins],
  [“the last line”], [the final image, and what it refuses to explain], [the statement the poem has earned],
  [“the free verse”], [the length of the lines, and where they shorten], [the rhythm chosen instead of metre],
)
