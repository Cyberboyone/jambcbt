#import "template.typ": *

#current-chapter.update("Chapter 1: How a Poem Is Examined")

#pagebreak()

#chapter-opener(
  1,
  "How a Poem Is Examined",
  subtitle: "Five Passes, Four Question Shapes, the Stanza Table and the Unseen Poem",
  syllabus-ref: "Section 5 • Method",
  utme-weight: "10 Qs a year",
  running: "How a Poem Is Examined",
)

#focus-radar(
  objectives: (
    "Say what a poem question is testing, in one sentence.",
    "Apply the five passes — hear, turn, voice, image, argue — to any poem.",
    "Recognise the four shapes a poem question takes.",
    "Build a stanza table that turns a poem into a set of answerable positions.",
    "Read an unseen poem in five minutes without panic.",
    "Answer a comparison stem that names two poems.",
  ),
  hotspots: (
    "A poem question tests *position and function*: where the line is, and what it is doing there. A question that asks what a line means is nearly always answered by knowing what the stanza is for.",
    "The *turn* is the most examinable feature of any poem. In a short lyric it is usually one line; in *The Proud King* it is a scene. Find it and half the questions answer themselves.",
    "The *speaker is not the poet*. \"The poet says\" is a marker's warning sign; the poem has a persona, and the persona may be wrong, ironic or dying.",
    "The *tenor and the vehicle* of a metaphor are two separate answers. *Ambush* does not say the land is dangerous; it says the land is a whale, and the whale does a particular thing.",
    "An unseen poem is answerable from the page. Every question on it can be settled by looking at a line, a punctuation mark or a stanza break.",
  ),
  trap-summary: "Four habits fail. (1) Summarising the poem instead of locating the line. (2) Naming a device without saying what it does. (3) Confusing the poet's biography with the poem's argument. (4) Treating a narrative poem as a lyric, and hunting for a turn in every stanza instead of following the story.",
)

// ============================================================================
== 1.1 What a Poem Question Is Really Asking

A poem is the densest text in the paper. Thirty lines can hold an argument that would
take a novel a chapter to make, and the paper's job is to find out whether you can see
the argument being built. So the questions are not random. Almost every one of them is
asking one of three things:

#rule-box("The three demands a poem question can make")[
  + *What does the line say?* A fact question: the words, the image, the reference.
  + *What is the line doing?* A function question: establishing, complicating, turning, concluding.
  + *What does the line change?* A structure question: what the poem believed before this line and after it.
]

#text(size: 9.4pt)[The order is a ladder, and most candidates stop on the first rung. They can tell you that *Vanity* says the dead left their cries in the air and on the water, which is true and worth nothing on its own. The mark is in the second and third rungs: the dead have left their cries, *and that is why the living cannot be heard* — the poem's argument is a consequence, and the consequence is what the question tests.]

#concept-box("Why the paper loves a short poem")[
  An unseen lyric of twelve to twenty lines makes an ideal examination text: it is
  self-contained, it can be read twice in the exam hall, and it must make its whole
  argument in a small space. That is why the unseen section of the paper is almost
  always a lyric rather than an extract from a long poem. The same principle explains
  why the paper can ask about *any* line in a thirty-line poem, and why it treats
  *The Proud King* differently: with eight hundred and fifty lines, the questions
  attach to scenes and speeches, not to individual lines.
]

// ============================================================================
== 1.2 The Five Passes

#diagram-fig("diagrams/ch01_method.svg",
  "The five passes. The first two are done before you read a single note.", width: 100%)

#table(
  columns: (0.85fr, 1.5fr, 2.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pass],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you do],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it catches],
  ),
  [*1 Hear*], [read the poem aloud, slowly, once], [the rhythm and the places where the voice has to stop],
  [*2 Turn*], [mark the line or stanza where the poem changes direction], [questions about structure, which are the commonest hard questions],
  [*3 Voice*], [say who speaks, to whom, and in what tone], [questions that attribute a view to the poet which belongs to the speaker],
  [*4 Image*], [find the two or three images that carry the argument], [questions about metaphor, symbol and contrast],
  [*5 Argue*], [state the claim the whole poem is making, in one sentence], [questions that ask for the theme, or for the poem's attitude],
)

#text(size: 9.4pt)[The passes are sequential for a reason. Pass 2 depends on hearing the poem, because a turn is usually marked by a pause, a full stop or a change of tense, and none of those is visible if you read with your eyes only. Pass 5 depends on the images, because in a lyric the argument is usually carried by the images rather than stated — *Crossing the Bar* never uses the word "death", and *Ambush* never uses the word "state".]

#shortcut-box("The ten-second version, for the exam hall")[
  + *Where does it start?* The situation in the first two lines.
  + *Where does it turn?* The "but", the "yet", the "and since", the new stanza.
  + *Where does it end?* The last two lines, which usually state or refuse the conclusion.
]

// ============================================================================
== 1.3 The Four Shapes

#table(
  columns: (1.0fr, 2.0fr, 1.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What the stem looks like],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you must supply],
  ),
  [*Fact*], ["In *Vanity*, the dead have left their cries in …"], [the image, the list, the reference — pure recall, fifteen seconds],
  [*Function*], ["The line 'X' serves mainly to …"], [the job the line does in its stanza: it introduces, contrasts, delays or concludes],
  [*Voice and tone*], ["The speaker's attitude to the dead is best described as …"], [two adjectives and the words that support them],
  [*Form and theme*], ["The repetition of 'gently' suggests …", "The poem's structure moves from …"], [the effect of the pattern, and the argument the pattern makes],
)

#text(size: 9.4pt)[The shapes are ranked by cost. Fact questions are free marks if the poem is secure. Function questions are the majority, and they are won by the stanza table. Voice and theme questions separate candidates, because they require a judgment *and* the words that support it. A candidate who has learned the themes but not the lines can only choose the option that sounds most like a study guide, which is exactly what the paper's distractors are written to resemble.]

// ============================================================================
== 1.4 The Stanza Table

The stanza table is the poem's equivalent of the scene card in Volume 2. It has one row
per stanza and four columns, and it is written from memory after the second reading.

#rule-box("The four columns")[
  + *Stanza.* The number, and the first two or three words, so you can find it again.
  + *What happens.* The content in one clause — not a summary of the meaning.
  + *What it does.* The function: opens, develops, turns, concludes.
  + *The line.* Six to ten words you can quote, exact.
]

#text(size: 9.4pt)[A six-stanza lyric becomes six rows; *Crossing the Bar* becomes four; *The Proud King* becomes twelve or fifteen scenes rather than stanzas, because a narrative poem moves in episodes. The table is short enough to be rewritten in five minutes before an exam, and writing it is the revision: a candidate who can rebuild the table from memory can answer a function question about any row in it.]

#worked-example(
  1,
  "A fact question on form",
  [*Crossing the Bar* is written in

    A. blank verse \\
    B. four quatrains rhyming ABAB \\
    C. rhyme royal stanzas \\
    D. free verse],
  [
    *Step 1 — count.* The poem has sixteen lines in four groups of four.

    *Step 2 — check the rhyme.* Each quatrain rhymes line one with line three, and line two with line four — *star* with *bar*, *me* with *sea*.

    *Step 3 — eliminate.* Blank verse is unrhymed, so it is not the answer; rhyme royal is a seven-line stanza used by *The Proud King*; free verse has no fixed pattern at all.

    *Check.* Four quatrains, ABAB, is the form. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "A function question",
  [In *Ambush*, the line "all Peters with petered out desires" functions mainly to

    A. name the fishermen
    B. pun on the name of the disciple and on the verb "to peter out", so that failure is built into the language
    C. introduce a new character
    D. change the rhyme scheme],
  [
    *Step 1 — locate.* It is the last line of stanza one, after the image of the empty ships.

    *Step 2 — unpack the words.* "Peter" is the fisherman disciple who denied Christ and who, in the gospel, goes back to fishing; "to peter out" means to dwindle to nothing.

    *Step 3 — test the options.* The fishermen are already named by "fishers"; there is no new character; and the poem has no rhyme scheme to change.

    *Check.* The line makes failure a pun, which is why it is quoted so often. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "A voice question",
  [The speaker of *Vanity* speaks for

    A. the poet in his own person
    B. a collective "we" who have failed to listen to their dead
    C. the dead themselves
    D. a colonial administrator],
  [
    *Step 1 — count the pronouns.* The poem says "we", "our", "us" throughout, and only once names a group: "blind deaf and unworthy Sons".

    *Step 2 — decide the relation.* The speaker includes himself in the failure; he is not accusing a separate group from outside.

    *Step 3 — eliminate.* The dead speak only in reported cries, and no administrator appears anywhere in the poem.

    *Check.* The voice is a collective confession, which is why it can accuse and mourn at once. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "A theme question",
  [The structure of *The Anvil and the Hammer* is best described as

    A. a story with a beginning, middle and end
    B. a problem stated in stanza one and a resolution prayed for in stanza two
    C. a list of images with no argument
    D. a dialogue between two speakers],
  [
    *Step 1 — count the stanzas.* Two, of ten and twelve lines.

    *Step 2 — state what each does.* The first describes being caught between two cultures; the second asks the fathers to sew the old days so they can be worn under the new garment.

    *Step 3 — test the options.* There is no narrative, no list without a claim, and only one speaker.

    *Check.* Problem, then prayer for a resolution: that is the shape. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 1.5 The Unseen Poem in Five Minutes

#shortcut-box("The procedure, timed")[
  + *Read once, aloud if you can.* Thirty to sixty seconds. Do not annotate.
  + *Read again, with a pencil.* Mark the turn; mark any repeated word; mark the last two lines. Ninety seconds.
  + *Write the three-line summary.* Who speaks, what happens, what changes. One minute.
  + *Answer the questions in order, but locate first.* Every stem points at a stanza; find it before you read the options.
  + *Return to the last two lines for any question about tone or theme.* A lyric usually tells you its own argument at the end.
]

#text(size: 9.4pt)[The commonest disaster with an unseen poem is reading the questions first. The questions are written to be answerable only after the poem has been read, and reading them first fills the mind with four plausible options for every stem, which is precisely the condition in which a reader stops reading and starts guessing. Read the poem twice; then read the questions once.]

// ============================================================================
== 1.6 The Comparison Stem

A comparison question names two poems and asks for a difference, a similarity, or a
judgement. It is worth preparing for because the wording is predictable.

#table(
  columns: (1.55fr, 2.35fr, 1.35fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The stem],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it wants],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The trap],
  ),
  ["Both poems are about X. How do they differ?"], [one sentence on the shared subject, then the difference in attitude or method], [describing each poem separately and never comparing],
  ["Which poem treats X more hopefully?"], [a judgement, then the evidence from both], [choosing the poem you like better],
  ["Compare the use of Y in A and B."], [the device in A, the device in B, then what the difference does], [naming the device in both and stopping there],
  ["'Both poems are protests.' Discuss."], [agree in part, then show where one poem is doing something else], [agreeing with the quotation and proving it twice],
)

#concept-box("The three-word discipline")[
  Every comparison answer needs a *whereas*, a *but* or a *while*. If your sentence
  could be written about one poem alone, it is not a comparison; it is a description
  with a second poem attached. The examiners mark the relation, not the two halves.
]

// ============================================================================
== 1.7 Method in the Exam Hall — a Two-Minute Set

#mcq(1, [The first pass over a poem is], [to read it aloud], [to read the questions], [to count the stanzas], [to look up the poet])

#mcq(2, [The "turn" of a poem is], [its last line], [the point where it changes direction], [its rhyme scheme], [the title])

#mcq(3, [A stanza table records, for each stanza, what happens, what it does and], [the rhyme], [a line you can quote], [the poet's dates], [the number of feet])

#mcq(4, [The speaker of a poem is], [always the poet], [a voice constructed by the poet], [always a character in the poem], [the reader])

#answer-key-grid(("A", "B", "B", "B"))

#answer-notes((
  ("A", [Reading aloud is the only way to hear the pauses that mark the turn; the questions come after two readings, never before.]),
  ("B", [The turn is where the poem changes direction — often marked by "but", "yet", "and since", a new stanza, or a change of tense.]),
  ("B", [The fourth column holds six to ten words you can quote, because a function question is answered with evidence.]),
  ("B", [The persona is a construction. "The poet says" is a marker's warning sign; the poem has a speaker, and the speaker may be wrong.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the five passes, the turn, the voice and the rule.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A poem question tests position and function: where a line sits, and what it is doing there. The five passes are hear, turn, voice, image and argue, and the first two are done before any note is read. The turn is the most examinable feature of a short lyric and the most examinable scene of a long narrative. The speaker is a construction, not the poet, and the tenor of a metaphor is not its vehicle. The four question shapes are fact, function, voice and tone, and form and theme; function questions are the majority and the stanza table is the instrument that answers them. An unseen poem is read twice before the questions are read once, and every question on it can be settled from the page. A comparison stem needs a "whereas" in the answer, or it is not a comparison.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Say the five passes in order, and what each one catches.],
  [Mark the turn in a poem you have not seen before, and say how you knew.],
  [Build a four-row stanza table for a four-stanza poem from memory.],
  [Distinguish the speaker from the poet in one sentence.],
  [Name the four question shapes and the cost of each.],
  [Write one comparison sentence containing the word "whereas".]
))

#concept-box("Carry this into Chapter 2")[
  *Vanity* is the shortest poem in the volume and the one most often misread as a
  simple lament. It is not: it is a poem that asks a question five times and then
  answers it with a word — *since*. Chapter 2 is about that word.
]

#include "drill_ch01.typ"
