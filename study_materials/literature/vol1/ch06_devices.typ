#import "template.typ": *

#current-chapter.update("Chapter 6: Devices and the Unseen Passage")

#pagebreak()

#chapter-opener(
  6,
  "Devices and the Unseen Passage",
  subtitle: "The Comparison, Sound and Statement Families — and the Procedure That Answers Any Extract in Fifty Seconds",
  syllabus-ref: "Section 5 • Literary Devices and Unseen Appreciation",
  utme-weight: "11 Qs a year",
  running: "Devices and the Unseen Passage",
)

#focus-radar(
  objectives: (
    "Explain what a device is for, in one sentence that does not use the word “emphasis”.",
    "Sort any device into the comparison, sound or statement family.",
    "Distinguish the pairs the paper keeps swapping: simile from metaphor, metonymy from synecdoche, paradox from oxymoron, bathos from anticlimax.",
    "Name the sound devices by the sound they make, not by the letters they repeat.",
    "Apply the five-question procedure to an unseen prose, drama or poetry extract.",
    "Avoid the four answer types that earn nothing.",
  ),
  hotspots: (
    "A device is a *way of making the reader do something*, and the something is the answer. “It emphasises” is not an effect; it is a placeholder.",
    "Metonymy substitutes an associate: *the crown* for the monarchy. Synecdoche substitutes a part for the whole: *all hands* for the crew. The paper swaps them roughly every year.",
    "Paradox is a statement that seems contradictory and is true; oxymoron is a two-word collision (*bitter sweet*). Both are offered for one another.",
    "Bathos is a fall from the sublime to the trivial; anticlimax is a structural let-down. Both are deflationary, and only one is a joke about language.",
    "“The writer uses imagery to create a picture.” Pictures are not effects. Say which sense, which image, and what the reader now understands.",
  ),
  trap-summary: "Two habits and one superstition. The habits: naming without effect, and finding a device in every line. The superstition: that the unseen passage must contain an obscure figure. Most unseen questions are answered by plain reading plus one named device with a real effect.",
)

// ============================================================================
== 6.1 What a Device Is For

A literary device is a technique that changes what the reader has to *do*. A
metaphor makes the reader carry a comparison across two things; an enjambment makes
the reader hurry; a refrain makes the reader hear the same words again with new
weight. The device is not the ornament — it is the work.

#diagram-fig("diagrams/ch06_device_families.svg",
  "The three families. Every device in the syllabus belongs to one of them, and the family tells you what kind of effect to look for.", width: 100%)

#rule-box("The three families")[
  + *Comparison* — the device puts two things together and asks the reader to transfer meaning from one to the other: simile, metaphor, personification, conceit, metonymy, synecdoche.
  + *Sound* — the device works on the ear before the mind: alliteration, assonance, consonance, onomatopoeia, rhyme, rhythm, repetition.
  + *Statement* — the device works by saying more, less or other than it means: hyperbole, litotes, irony, paradox, oxymoron, euphemism, pun, satire.
]

#text(size: 9.4pt)[The families are diagnostic. If a question quotes a line and asks "what is the effect", decide the family first: a comparison asks you to say *what is transferred*; a sound device asks you to say *what the ear learns*; a statement device asks you to say *what is meant beyond what is said*. That single step turns a vague answer into a specific one.]

// ============================================================================
== 6.2 The Comparison Family

#table(
  columns: (1.15fr, 2.05fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Device],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How to hear it],
  ),
  [*Simile*], [a comparison using *like* or *as*], [“the road lay down like a patient animal”],
  [*Metaphor*], [a comparison that asserts identity], [“the city is a stone lung”],
  [*Personification*], [an object or abstraction given human qualities], [“the wind wept”],
  [*Conceit*], [an elaborate, extended comparison, often strained], [a lover as a pair of compasses, held across a whole poem],
  [*Apostrophe*], [address to the absent, dead or inanimate], [“O Death, be not proud”],
  [*Metonymy*], [an associate stands for the thing], [*the crown*, *the pen*, *the bench*],
  [*Synecdoche*], [a part stands for the whole, or the whole for a part], [*all hands on deck*, *a roof over my head*],
)

#trap-box("Metonymy and synecdoche")[
  *Synecdoche* is a relation of *part to whole*: hands are part of a crew, a roof is part of a
  house. *Metonymy* is a relation of *association*: the crown is not part of a monarch, it is
  worn by one. If you can say "part of", it is synecdoche; if you can only say "connected
  with", it is metonymy.
]

#worked-example(
  1,
  "Naming the comparison",
  [*The bench has been silent since the verdict.* The italicised word is an example of

    A. simile \
    B. personification \
    C. metonymy \
    D. synecdoche],
  [
    *Step 1 — test whether a comparison is stated.* No *like* or *as*, and no assertion that one thing is another, so it is not simile or metaphor.

    *Step 2 — test the substitution.* *Bench* stands for the judges. Is a bench a part of a judge? No — it is what they sit on, and what they are associated with. That is metonymy, not synecdoche.

    *Step 3 — check personification.* Silence is attributed to the bench, which looks like personification; but "the bench has been silent" means the judges have not spoken, so the figure is the substitution, not the humanising.

    *Check.* Association, not part-for-whole. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.3 The Statement Family

These devices work by *managing the distance between what is said and what is meant* —
saying more, saying less, saying the opposite, or saying two incompatible things at
once.

#table(
  columns: (1.15fr, 2.05fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Device],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What the reader must do],
  ),
  [*Hyperbole*], [deliberate exaggeration], [discount the excess and feel the pressure behind it],
  [*Litotes*], [understatement by denying the opposite — *not unkind*], [restore the strength the denial removes],
  [*Irony*], [the meaning is the reverse of the words], [hear the second meaning under the first],
  [*Sarcasm*], [irony with a sting, aimed at a person], [register the wound],
  [*Paradox*], [a statement that seems self-contradictory and is true], [hold both halves until they reconcile],
  [*Oxymoron*], [two contradictory words joined — *bitter sweet*], [feel the collision inside one phrase],
  [*Euphemism*], [a mild term for a harsh thing — *passed on*], [notice what is being softened, and for whom],
  [*Pun*], [a word played on its two meanings], [catch both senses at once],
  [*Satire*], [ridicule with a corrective aim], [identify the target and the standard being used to judge it],
)

#shortcut-box("Paradox, oxymoron, irony — in one breath")[
  *Paradox* is a sentence that contradicts itself and is true. *Oxymoron* is a phrase of two
  words that fight. *Irony* is a meaning that reverses the words. If the contradiction is in
  the grammar, it is paradox; if it is in the adjective and the noun, it is oxymoron; if it is
  in the speaker's intention, it is irony.
]

#text(size: 9.4pt)[*Litotes* deserves a second look because candidates miss it. It is understatement by negation — "she was not displeased" for "she was delighted". The effect is not weakness but a kind of knowing restraint, and it is often used by narrators who want to seem fair while being devastating.]

// ============================================================================
== 6.4 The Sound Family

Sound devices are the easiest to spot and the easiest to write about badly. The rule
is simple: name the sound, then say what the ear learns that the eye does not.

#table(
  columns: (1.15fr, 2.05fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Device],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What repeats],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it typically does],
  ),
  [*Alliteration*], [initial consonants], [binds words, and can hiss, hammer or lull],
  [*Assonance*], [vowel sounds], [slows the line and gives it a hum],
  [*Consonance*], [final consonants], [gives a hard edge or a soft close],
  [*Onomatopoeia*], [sound imitated by the word], [puts the noise in the reader's mouth],
  [*Rhyme*], [end sounds], [closes lines and makes promises],
  [*Rhythm*], [patterned stress], [sets a pace — march, heartbeat, stumble],
  [*Repetition*], [a word or phrase], [insists, and changes with each return],
  [*Parallelism*], [a grammatical pattern], [makes two ideas weigh the same],
  [*Antithesis*], [opposed ideas in balanced clauses], [makes a contrast feel inevitable],
  [*Refrain*], [a whole line, at intervals], [turns the poem into a ritual],
)

#worked-example(
  2,
  "What the sound is doing",
  [*The thick thorns thrust through the threadbare thatch.* The dominant device, and its effect, is

    A. assonance, which makes the line musical \
    B. alliteration of *th*, which makes the line heavy and laborious, like the work described \
    C. simile, comparing thorns to thatch \
    D. hyperbole, exaggerating the size of the thorns],
  [
    *Step 1 — identify the repetition.* *th* recurs at the start of four stressed words: thick, thorns, thrust, threadbare, thatch. That is alliteration.

    *Step 2 — describe the sound physically.* *th* is a fricative made with the tongue between the teeth: it slows the mouth and thickens the line. Five of them make the line laborious.

    *Step 3 — connect sound to sense.* The labour of saying it imitates the labour described — thrusting through thorns.

    *Check.* Name the sound, then the body's experience of it. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 6.5 The Structure Family

Structural devices arrange the text in time, and their effects are about *pace,
expectation and emphasis*.

#table(
  columns: (1.15fr, 2.05fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Device],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How it is built],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does],
  ),
  [*Climax*], [items or tensions arranged in ascending force], [the last item lands hardest],
  [*Anticlimax*], [the expected high point is deflated], [the reader's preparation is wasted on purpose],
  [*Bathos*], [a fall from the sublime to the trivial within the writing], [the grandeur collapses into comedy],
  [*Juxtaposition*], [two scenes or images placed side by side], [each measures the other],
  [*Foreshadowing*], [a detail that will matter later], [plants knowledge the reader cannot yet use],
  [*Flashback*], [a scene from earlier interrupts], [the present is explained and judged],
  [*Suspense*], [information withheld or delayed], [the reader is made to wait],
  [*Frame*], [a story inside a story], [the telling situation colours the tale],
)

#text(size: 9.4pt)[*Anticlimax* is a structural disappointment; *bathos* is a stylistic collapse. A play that builds to a duel and ends with a servant announcing dinner has produced an anticlimax. A sentence that describes a death and then mentions the smell of the gravy has produced bathos. Both deflate, but only one is a joke about the writing itself.]

// ============================================================================
== 6.6 The Unseen Passage

Nine or ten questions a year come from an extract you have never read. The extract may
be prose, drama or poetry, and the procedure is the same for all three.

#diagram-fig("diagrams/ch06_unseen_steps.svg",
  "The unseen procedure. Step 4 is the one that separates candidates: the effect must name what the reader now knows or feels.", width: 100%)

#rule-box("The five-question procedure")[
  + *What genre, and what does that let me quote?* Action, narration or compression.
  + *Who speaks, to whom, and in what situation?* The persona, the listener and the moment.
  + *What changes between the first line and the last?* Attitude, knowledge, power or mood.
  + *Which one device carries that change?* One is enough, if the effect is exact.
  + *How would I say the effect in a sentence about the reader?* "It makes the reader …" is the shape of a full answer.
]

#trap-box("Four answers that earn nothing")[
  *The device name alone.* "There is a metaphor." Naming is step three of five.

  *The paraphrase.* "The writer says the road is long." That is comprehension, not appreciation.

  *The universal effect.* "It emphasises the theme." Which theme, emphasised how, for whom?

  *The invented device.* "There is a symbol of death." If you cannot point at the words, there is no device, and a wrong name loses the mark that a plain description would have kept.
]

#worked-example(
  3,
  "An unseen prose extract",
  [*The bus stopped where the road ended. Ahead, the track went on without them, and the driver would not take it. “You will walk from here,” he said, and would not look at them again.* The driver's behaviour chiefly conveys

    A. that the bus is broken \
    B. that the journey has reached the limit of the mechanical world, and the refusal is also a refusal of responsibility \
    C. that the passengers are late \
    D. that the driver is tired],
  [
    *Step 1 — read the last sentence first.* He will not look at them again. That is shame or avoidance, and it is the strongest signal in the passage.

    *Step 2 — read the refusal against the detail.* The road ends; the track goes on. The bus cannot continue because the world it belongs to has ended. The refusal to look is the refusal to be a witness to what comes next.

    *Step 3 — choose the option that explains both facts.* Only one connects the limit of the road with the driver's avoidance.

    *Check.* A mechanical fault would not explain the averted eyes. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "An unseen drama extract",
  [*AMA: You have come for the child. \
  CHIEF: I have come for what is mine. \
  AMA: Then you have come for nothing, and you may carry nothing home.* The exchange is chiefly built on

    A. a long speech and a reply \
    B. repetition and antithesis, which turn the argument into a contest of claims \
    C. comic relief \
    D. a soliloquy],
  [
    *Step 1 — notice the pattern.* "You have come for" is repeated twice, and the third line answers with "come for nothing". The repetition is the structure.

    *Step 2 — notice the balance.* *What is mine* against *nothing*; *come* against *carry nothing home*. The clauses are weighed against each other: that is antithesis.

    *Step 3 — name the effect.* The stichomythic pattern turns the exchange into a duel of claims, and Ama's line wins it by turning the Chief's own formula against him.

    *Check.* Repetition plus balance, inside short lines. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "An unseen poem",
  [*They gave me a flag and a name, \
  and a grave that was not mine. \
  They gave me a song to sing at the gate, \
  and the gate was shut.* The repetition of “They gave me” chiefly produces

    A. a list of gifts \
    B. an accumulating irony, since each gift turns out to be a deprivation \
    C. a rhyme scheme \
    D. comic exaggeration],
  [
    *Step 1 — track the repetition.* Four gifts, each introduced the same way, which sets up an expectation of generosity.

    *Step 2 — read what each gift is worth.* A flag and a name, a grave that is not his, a song to sing at a shut gate. Every gift excludes him further.

    *Step 3 — name the structure.* The expectation and the fulfilment diverge, which is irony — and it accumulates with each line, so it is structural rather than a single verbal turn.

    *Check.* The pattern promises and the content denies. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.7 The Device Catalogue, Sorted

#table(
  columns: (1.2fr, 1.2fr, 1.2fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Comparison],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Sound and structure],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Statement],
  ),
  [simile \ metaphor \ personification \ conceit \ apostrophe], [alliteration \ assonance \ consonance \ onomatopoeia \ rhyme \ rhythm], [hyperbole \ litotes \ irony \ sarcasm \ paradox],
  [metonymy \ synecdoche \ transferred epithet \ symbol \ image], [repetition \ parallelism \ antithesis \ refrain \ climax], [oxymoron \ euphemism \ pun \ satire \ innuendo],
  [allegory \ fable \ pathetic fallacy \ zoomorphism], [anticlimax \ bathos \ juxtaposition \ foreshadowing \ suspense], [malapropism \ cliché \ archaism \ colloquialism \ register],
)

#concept-box("Transferred epithet and zoomorphism")[
  A *transferred epithet* moves an adjective from the person it belongs to onto the thing
  beside him — "he lay in a sleepless bed". The bed is not sleepless; he is. *Zoomorphism*
  describes a human being in animal terms, and it is the reverse of personification: "he
  barked his orders" makes a man a dog, where "the wind wept" makes wind a man.
]

// ============================================================================
== 6.8 Devices in the Exam Hall — a Two-Minute Set

#mcq(1, [*The crown has not spoken since Tuesday.* The figure is], [synecdoche], [metonymy], [personification], [litotes])

#mcq(2, [*The room was not unpleasant.* The figure is], [hyperbole], [litotes], [oxymoron], [euphemism])

#mcq(3, [*Parting is such sweet sorrow.* The phrase contains], [a paradox and a simile], [an oxymoron], [a litotes], [an apostrophe])

#mcq(4, [A fall from the sublime to the trivial within a sentence is], [anticlimax], [bathos], [irony], [suspense])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The crown is associated with the monarch, not a part of him: metonymy. Synecdoche would need a part-for-whole substitution, and nothing is personified.]),
  ("B", [Understatement by denying the opposite is litotes. Hyperbole exaggerates, oxymoron collides two words, and euphemism softens a harsh fact.]),
  ("B", [Sweet sorrow joins two contradictory words, which is oxymoron. A paradox would need a whole contradictory statement.]),
  ("B", [A stylistic collapse inside the writing is bathos; an anticlimax is a structural let-down in the plot's arrangement.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the three families, the four pairs to keep apart, and the unseen procedure.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A device is a way of making the reader do something, and the something is the answer. Every device belongs to one of three families: comparison (simile, metaphor, personification, conceit, apostrophe, metonymy, synecdoche), sound (alliteration, assonance, consonance, onomatopoeia, rhyme, rhythm, repetition, parallelism, antithesis, refrain), or statement (hyperbole, litotes, irony, sarcasm, paradox, oxymoron, euphemism, pun, satire). Keep the four pairs apart: synecdoche is part-for-whole and metonymy is association; paradox is a contradictory sentence and oxymoron a contradictory phrase; bathos is a stylistic collapse and anticlimax a structural deflation; alliteration repeats consonants, assonance vowels. The unseen passage is answered by five questions — genre, speaker and situation, what changes, which device carries the change, and how to say the effect as a sentence about the reader. Four answers earn nothing: the device name alone, the paraphrase, the universal effect, and the invented device. A wrong name loses the mark that a plain description would have kept.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Say what a device is for without using the word "emphasis".],
  [Sort ten devices into the three families from memory.],
  [Distinguish metonymy from synecdoche, and paradox from oxymoron.],
  [Name the sound device in a line you have not seen, and say what the ear learns.],
  [Run the five-question procedure on one prose, one drama and one poetry extract.],
  [List the four answers that earn nothing.]
))

#concept-box("Carry this into the papers")[
  Everything from here on is application. The two mock papers that follow are built from
  the same six chapters, in the paper's proportions, and each is followed by a key with a
  note on every question. Take them under time before you read anything else in this book.
]

#include "drill_ch06.typ"
