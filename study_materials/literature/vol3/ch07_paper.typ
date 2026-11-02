#import "template.typ": *

#current-chapter.update("Chapter 7: The Sixty-Question Paper")

#pagebreak()

#chapter-opener(
  7,
  "The Sixty-Question Paper",
  subtitle: "Shape, Order, Timing, and the Three Stems That Decide the Mark",
  syllabus-ref: "Section 7 • Examination Technique",
  utme-weight: "the whole paper",
  running: "The Sixty-Question Paper",
)

#focus-radar(
  objectives: (
    "Describe the sixty-question paper section by section.",
    "Decide the order of attack before the clock starts.",
    "Budget the sixty minutes, including the review.",
    "Recognise the three stems that decide most marks: the quotation stem, the function stem and the comparison stem.",
    "Use the answer sheet so that no mark is lost to mechanics.",
    "Mark a paper properly, and convert the score into a plan.",
  ),
  hotspots: (
    "Sixty questions, sixty minutes, one mark each, no negative marking. The arithmetic is the strategy: *never leave a blank*.",
    "The unseen poem comes *first* in all four papers, because it is printed and can be read cold. Do it first, and bank the marks before the recall begins.",
    "The poem sections are in a fixed order — *Vanity*, *Ambush*, *Anvil*, *Crossing*, *Proud King* — which lets you decide an order that suits you without hunting through the paper.",
    "A quotation stem is a location question in disguise. Find the stanza, and the answer is usually the line's function in that stanza.",
    "A comparison stem needs a relation, not two descriptions. If your reasoning could be said of one poem alone, it is not a comparison.",
  ),
  trap-summary: "Five slips. (1) Spending twelve minutes on the unseen poem. (2) Reading all sixty stems first. (3) Leaving blanks. (4) Changing answers on a hunch at the end. (5) Marking a paper by score alone, without reading the solutions to the ones you got right by luck.",
)

// ============================================================================
== 7.1 The Shape of the Paper

#diagram-fig("diagrams/ch07_paper_map.svg",
  "The paper at a glance: 12 unseen, 48 on the prescribed poems, 60 minutes.", width: 100%)

#table(
  columns: (1.45fr, 0.62fr, 2.5fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Qs],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it tests],
  ),
  [Unseen poem], [12], [reading a lyric cold: situation, turn, image, tone, form],
  [*Vanity*], [10], [the six stanzas, the dead, the shift from "if" to "since"],
  [*Ambush*], [10], [the three predators, the pun, the last stanza],
  [*The Anvil and the Hammer*], [10], [the forge, the sewing, the two cultures, the sea],
  [*Crossing the Bar*], [8], [the four quatrains, the bar, the Pilot, the tone],
  [*The Proud King*], [10], [the twelve scenes, the boast, the cry, the angel, the frame],
  [Total], [*60*], [sixty minutes; one mark each; no negative marking],
)

#text(size: 9.4pt)[The sections are unequal on purpose. *Crossing the Bar* is sixteen lines and yields eight questions; *The Proud King* is eight hundred and fifty lines and yields ten. The paper rewards the short poems with density and the long poem with scene-recognition, and a candidate who prepares the short poems as *quotations* and the long one as *scenes* is preparing in the shape the paper examines.]

// ============================================================================
== 7.2 The Order of Attack

#shortcut-box("The order that works, in four moves")[
  + *The unseen poem (questions 1–12).* Eight to ten minutes. Read twice, answer in order, do not linger.
  + *The three short poems (Vanity, Ambush, Anvil).* Twenty minutes. These are the marks you have prepared hardest.
  + *Crossing the Bar and The Proud King.* Twenty minutes. The long poem's questions are scene-recognition and should be quick.
  + *The review.* Ten minutes. Every blank filled; every changed answer justified by a line.
]

#text(size: 9.4pt)[The order is a default, not a rule. If *Vanity* is the poem you know best, do it first and let the easy marks settle you. What is not optional is the last move: ten minutes of review is worth more than ten minutes of extra thought on question 47, because review catches the misreads that a tired candidate makes in the final third.]

#concept-box("Why blanks are the only unforgivable error")[
  There is no negative marking. A blank is a certain zero; a guess is a one-in-four
  chance and, if you can eliminate one option, a one-in-three chance. In a sixty-question
  paper, five blanks left at the end cost on average more than a whole grade boundary.
  Fill every blank in the last two minutes, even if the reason is only that the option
  "sounds like the poem".
]

// ============================================================================
== 7.3 The Timing

#table(
  columns: (1.3fr, 0.75fr, 2.55fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The rule],
  ),
  [Read the unseen poem twice], [2], [no pencil the first time; pencil the second],
  [Answer the unseen section], [7], [one question every 35 seconds; move on at 40],
  [The three short poems], [20], [the fastest section; these are recall and function],
  [Crossing the Bar and The Proud King], [20], [scene-recognition; do not re-read the poem],
  [Review and fill blanks], [9], [every blank filled; every change justified],
  [Hand over], [2], [check the answer sheet numbering against the question numbers],
)

#text(size: 9.4pt)[The budget is 55 minutes of work and 5 minutes of margin, because the clock in the hall is not the clock in your head. A candidate who plans to use all sixty minutes will be writing question 58 when the invigilator calls five minutes, and will lose the review. Plan to finish at fifty-five.]

#trap-box("The three timing errors")[
  *The unseen poem that eats twelve minutes.* Two readings and one pass through the questions is eight to ten minutes. If a question resists, take the best elimination and move.

  *The long poem that eats twenty-five.* *The Proud King* questions name scenes. If you find yourself re-reading a stanza to answer a scene question, you have misread the stem — it is asking which scene, not what the stanza means.

  *The end-game panic.* Changing four answers in the last two minutes without a reason is how a 52 becomes a 48. Change an answer only when you can name the line that proves the first choice wrong.
]

// ============================================================================
== 7.4 The Three Stems

#table(
  columns: (1.2fr, 2.05fr, 1.9fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Stem],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it looks like],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The move],
  ),
  [*Quotation*], ["The line 'X' occurs in"], [locate the stanza; then check the option against the stanza's content],
  [*Function*], ["The line 'X' serves mainly to"], [name the job: opens, contrasts, delays, turns, concludes],
  [*Comparison*], ["Unlike *Vanity*, *Ambush* treats …"], [state the relation first, then the evidence from both],
)

#rule-box("The three-step routine for any stem")[
  + *Underline the poem and the stanza reference.* If the stem names neither, the options will.
  + *Say the stanza's job in one word.* Opens, develops, turns, concludes.
  + *Eliminate two, then choose between the survivors on evidence.* The evidence is a word in the line, not a feeling about the poem.
]

#text(size: 9.4pt)[The function stem is the commonest and the most misunderstood. It does not ask what the line *means*; it asks what the line *does*. A line can mean something beautiful and do nothing, and a line can be plain and do everything. The mark is in the verb: *introduces*, *contrasts*, *intensifies*, *qualifies*, *concludes*. An option that only paraphrases the line is usually a distractor.]

// ============================================================================
== 7.5 The Answer Sheet

#table(
  columns: (1.55fr, 2.45fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Habit],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Why it matters],
  ),
  [Answer on the sheet as you go, not in a block at the end], [a block transfer is the commonest mechanical disaster in CBT; one misalignment costs ten marks],
  [Circle the question number on the sheet when you skip], [a skipped question is invisible on a screen and easy to forget],
  [Use the on-screen strike-out if the centre provides one], [it turns a four-way choice into a two-way choice without extra writing],
  [Check the numbering every ten questions], [ten is the length at which a slip becomes invisible],
  [Never leave the hall early], [the last five minutes of review are the cheapest marks in the paper],
)

// ============================================================================
== 7.6 Marking a Paper Properly

#shortcut-box("The four-column review")[
  After each paper, list four things: *wrong and understood*, *wrong and not understood*,
  *right by luck*, *right and certain*. The first list is a five-minute fix; the second
  is a chapter to reread; the third is the most dangerous, because luck will not repeat;
  the fourth is your secure base. A score of 45 with six lucky guesses is a weaker 45
  than a score of 45 with none.
]

#table(
  columns: (1.1fr, 0.9fr, 2.4fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Score],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Band],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What to do next],
  ),
  [54–60], [secure], [keep the papers ticking over; move to Appendix I's last seven days],
  [46–53], [strong], [the wrong answers are usually function or comparison stems; drill those],
  [36–45], [working], [re-read the stanza tables; one poem a day for a week],
  [26–35], [weak], [the plot and the quotations first; the papers after, not before],
  [0–25], [foundation], [Chapters 1–2 again, then *Vanity* and *Crossing the Bar* only; add poems one at a time],
)

// ============================================================================
== 7.7 Four Decisions, Worked

#worked-example(
  1,
  "The blank at the end",
  [There are two minutes left, and six questions on the sheet are still blank. What is
    the correct course?

    A. Leave them blank rather than guess \
    B. Fill all six from your best elimination \
    C. Answer only the two you are sure of \
    D. Ask the invigilator for more time],
  [
    *Step 1 — recall the marking rule.* There is no negative marking: one mark for a right answer, nothing for a wrong one.

    *Step 2 — price the choices.* A blank scores zero with certainty; an eliminated guess scores something like one in three.

    *Step 3 — act.* Fill all six, fastest first, and do not re-read the passages.

    *Check.* The answer is *B*, and the arithmetic is the whole reason.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The function stem",
  [A stem reads: "The line 'the road becomes a rumour' serves mainly to …" Which option
    is written in the form the paper wants?

    A. say that the road is rumoured to exist \
    B. suggest that darkness has made the road uncertain, so that the waiting becomes a kind of hearsay \
    C. contain a metaphor \
    D. describe the weather],
  [
    *Step 1 — read the verb.* "Serves mainly to" asks for a job, not a translation.

    *Step 2 — eliminate.* A rewrites the line without a function; C names a device and stops; D answers a different question.

    *Step 3 — choose.* B names the effect — uncertainty, hearsay — and ties it to the poem's subject, waiting.

    *Check.* The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The comparison stem",
  [A stem reads: "Both *Vanity* and *Ambush* present speech that fails. The difference is
    that …" Which answer earns the mark?

    A. *Vanity* is about dead people and *Ambush* is about animals \
    B. *Vanity* blames the people's own deafness, whereas *Ambush* blames a land that waits in ambush \
    C. both poems are African \
    D. *Vanity* is free verse and *Ambush* has four stanzas],
  [
    *Step 1 — find the relation.* The stem supplies "both" and asks for a difference, so the answer needs a *whereas*.

    *Step 2 — test the options.* A mistakes vehicle for tenor; C is true but not a difference in the argument; D is true but is form, not cause.

    *Step 3 — check B.* It states the shared subject, then divides the blame — the poem's own distinction.

    *Check.* The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "The triage",
  [You have spent twelve minutes on the unseen poem and there are thirty minutes left
    for forty-eight questions. What is the best response?

    A. Return to the unseen poem and perfect it \
    B. Move to the prescribed poems immediately and answer at speed, returning only if time allows \
    C. Abandon the paper \
    D. Answer the remaining questions in reverse order],
  [
    *Step 1 — do the arithmetic.* Forty-eight questions in thirty minutes is under forty seconds each: fast but possible, because they are recall and scene-recognition.

    *Step 2 — protect the marks.* The unseen section is already answered; the marks still available are in the poems.

    *Step 3 — eliminate.* Perfecting the unseen risks a whole section; abandoning is absurd; reverse order saves nothing.

    *Check.* The answer is *B*, and the lesson is the budget in 7.3.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 7.8 The Four Papers, and How to Use Them

#table(
  columns: (0.7fr, 1.55fr, 2.45fr),
  inset: (x: 4.6pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Paper],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Its unseen poem],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is for],
  ),
  [*1*], ["The Last Bus"], [a first full paper; straightforward stems, generous clues],
  [*2*], ["Market Day"], [harder unseen; more function stems than fact],
  [*3*], ["The Well"], [the comparison paper; at least three relation stems],
  [*4*], ["Harmattan"], [the hardest; close-reading stems and two trap-laden tours],
)

#text(size: 9.2pt)[Use them in order, one a week, each timed at sixty minutes, each marked the same day with the four-column review. The solutions to every question are printed after the key, and they are written to be read, not skimmed: the sentence after each answer is the reason the distractors were written the way they were.]

#concept-box("A note on the unseen poems in this volume")[
  The four unseen poems that open the papers are written for this book. They are not
  from the prescribed list and they are not by the prescribed poets, and that is the
  point: they are printed so that the reading method can be practised on a poem no
  one has seen before. Treat them exactly as the paper would: read twice, mark the
  turn, then answer.
]

// ============================================================================
== 7.9 Two-Minute Set

#mcq(1, [The paper has], [40 questions in 40 minutes], [60 questions in 60 minutes], [80 questions in 90 minutes], [50 questions in 50 minutes])

#mcq(2, [The number of unseen-poem questions is], [8], [10], [12], [15])

#mcq(3, [A blank answer costs], [half a mark], [one mark], [nothing], [two marks])

#mcq(4, [The comparison stem is answered by], [describing both poems], [stating a relation and supporting it from both poems], [choosing the better poem], [quoting the title])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [Sixty questions, sixty minutes, one mark each, no negative marking — the arithmetic is the strategy.]),
  ("C", [Twelve unseen questions open every paper, on a poem printed with it.]),
  ("B", [There is no negative marking, so a blank is a certain zero; a guess is a chance at a mark.]),
  ("B", [The relation first — *whereas*, *but*, *while* — then the evidence from both poems.]),
))

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: the six sections, the clock, the three stems and the sheet.", width: 76%)

#chapter-checklist("Before you leave Chapter 7", (
  [Draw the paper's six sections and their question counts from memory.],
  [Write your own sixty-minute budget, in minutes.],
  [Name the three stems and the move each one requires.],
  [State the rule about blanks, and the reason for it.],
  [Describe the four-column review.],
  [Say which paper you will sit first, and why.]),
)

#include "drill_ch07.typ"
