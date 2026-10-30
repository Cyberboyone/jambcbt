#import "template.typ": *

#current-chapter.update("Chapter 4: Summary: Finding the Points")

#pagebreak()

#chapter-opener(
  4,
  "Summary: Finding the Points, Then Writing Them",
  subtitle: "What a Summary Is, Which Sentences Carry the Points, What to Throw Away, How to Compress Without Losing the Sense, and How the Marks Are Given",
  syllabus-ref: "Sec. C • Summary",
  utme-weight: "5 Qs every year",
  running: "Summary",
)

#focus-radar(
  objectives: (
    "State what a summary is in four rules, and what it is not.",
    "Find the topic sentence of each paragraph and turn it into a point.",
    "Drop examples, quotations, figures and repetition without losing the argument.",
    "Join two points into one sentence inside a stated word limit.",
    "Write a point in your own words without changing its sense.",
    "Mark your own summary against the four headings the examiner uses.",
  ),
  hotspots: (
    "“In one sentence, state the writer's view on…” — one finite verb, and a claim rather than a list.",
    "“In not more than twenty words…” — twenty words, counted, and no padding such as *the writer says that*.",
    "“Summarise the reasons given for…” — reasons only; consequences belong to another question.",
    "“What does the writer suggest should be done?” — an action, not a diagnosis.",
    "A summary option that repeats a vivid example is a trap: the example is what a summary throws away first.",
  ),
  trap-summary: "Three slips. (1) Summarising the passage instead of answering the question — a summary question always names the part it wants. (2) Keeping the example because it is memorable: examples are the first thing to drop and the commonest thing to keep. (3) Spending the word limit on an opening formula — *the writer is of the opinion that* is six words that earn nothing.",
)

// ============================================================================
== 4.1 What a Summary Is

A summary is the passage with its evidence removed. It keeps the claims, the reasons and the conclusion; it drops the examples, the quotations, the figures and the repetition. It is written in your own words, it is shorter than the original, and it says what the writer says rather than what you think about it.

#diagram-fig("diagrams/ch04_rules.svg",
  "The four rules of a summary. Every mark on a summary question is awarded or lost against one of them.", width: 100%)

#rule-box("The four rules, and the one that costs most")[
  + *Shorter.* A summary is a fraction of the original — often one sentence, often twenty words.
  + *The same meaning.* No opinion, no extra facts, no change of emphasis.
  + *In your own words.* Lifting whole sentences loses expression marks; lifting one phrase is unavoidable and acceptable.
  + *Only the main points.* Examples are the commonest thing kept and the first thing that should go.
]

#concept-box("A summary question is a question first")[
  Most candidates lose summary marks before they write anything, by summarising the whole passage when the question asked for one thing. *Summarise the reasons the writer gives for the closure* is not the same task as *summarise the passage*. Read the instruction twice, underline the noun it wants — reasons, effects, suggestions, causes — and answer that noun. The rest of the passage is context, and context earns nothing.
]

// ============================================================================
== 4.2 Finding the Points

A point is a claim the passage needs. An example is evidence a claim needs. The two look alike on the page, and the difference is what happens if you delete them: delete a point and the argument breaks; delete an example and the argument still stands.

#diagram-fig("diagrams/ch04_keep_drop.svg",
  "What to keep and what to drop, with the reason in the third column. The test is always the same: does the argument survive without it?", width: 100%)

#shortcut-box("Four markers of an example")[
  + *for example*, *for instance*, *such as*, *including* — the sentence is support.
  + A date, a percentage or a figure — almost always support, unless the question asks for it.
  + A quotation with quotation marks — evidence, and evidence is detail.
  + A list of three or more items — the list is the writer's illustration, not his claim.
]

#diagram-fig("diagrams/ch04_method.svg",
  "The five moves of a summary answer. The count comes last, because compressing while you are still deciding what the points are produces neither.", width: 100%)

// ============================================================================
== 4.3 Writing the Points

Three things go wrong between finding the points and writing them: the sentence becomes a list, the words are the passage's rather than yours, and the answer runs past the limit.

#rule-box("Writing the answer")[
  + *One sentence, one verb.* If you have written two finite verbs joined by *and*, check whether the question allows two points.
  + *Join with a connector that carries meaning* — *because*, *so that*, *although*, *while* — not with *and* repeated.
  + *Your words, his sense.* Change the vocabulary, keep the claim.
  + *Count.* The limit is a mark scheme, not a suggestion.
  + *No opening formula.* Start with the point itself.
]

#trap-box("The summary that lists instead of claiming")[
  “The writer says that the roads are bad, that the drains are blocked, and that the council has no plan.” Three facts and no claim: this is a list dressed as a sentence. A summary of an argument needs the relation between the facts — *the council has no plan, which is why the roads and drains remain unrepaired*. The relation is the part that earns the mark, and it is the part a candidate in a hurry leaves out.
]

#worked-example(
  1,
  "Which sentence is the point?",
  [Read the passage, then answer the question.

    #v(3pt)
    #block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 9pt)[
      #text(size: 9.7pt)[The town's water is unfit to drink for two reasons. The boreholes were sunk too close to the latrines, and the council has never tested them since. In 2019 a sample from the school borehole grew a colony that the laboratory refused to name.]
    ]

    #v(3pt)
    In one sentence, state the two reasons the writer gives.

    A. The water is unfit to drink because the boreholes are near latrines and have never been tested. \
    B. In 2019 a sample from the school borehole grew an unnamed colony. \
    C. The town's water is unfit to drink. \
    D. The council should test the boreholes.],
  [
    *Step 1 — read the instruction.* It asks for *the two reasons*, so the answer must contain both of them and nothing else.

    *Step 2 — find the points.* The first sentence announces two reasons; the second gives them: the boreholes are too close to the latrines, and they have never been tested. The third sentence is evidence.

    *Step 3 — test the options.* B is the example from 2019 — true, memorable and a detail. C is the claim the reasons support, not the reasons. D is a recommendation the passage never makes. A contains both reasons, joins them with *and*, and adds nothing.

    *Step 4 — count.* A is sixteen words, well inside a twenty-word limit, and carries no opening formula.

    *Check.* Delete the 2019 sentence from the passage and A still stands; delete either half of A and the answer is incomplete. The answer is *A*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The example that looks like a point",
  [Read the passage, then answer the question.

    #v(3pt)
    #block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 9pt)[
      #text(size: 9.7pt)[The market's levy has risen three times in two years, and each rise has been announced a week before it was collected. Traders cannot plan a season on a week's notice, so many have stopped buying in bulk. A trader who buys a hundred tubers in April must know what the levy will be in June; she cannot, and so she buys fifty.]
    ]

    #v(3pt)
    Which sentence states the writer's main point?

    A. The levy has risen three times in two years. \
    B. Traders cannot plan on a week's notice, so they buy less. \
    C. A trader buys a hundred tubers in April. \
    D. The levy is announced a week before it is collected.],
  [
    *Step 1 — the shape.* The first sentence gives facts, the second gives the claim, and the third illustrates it with a trader and a number.

    *Step 2 — the point.* The claim is that short notice destroys planning, and planning is what bulk buying requires.

    *Step 3 — the options.* A and D are the facts in the first sentence, split in two. C is the illustration, complete with its number. B is the claim, and it is the sentence the third sentence exists to support.

    *Step 4 — the test.* Delete B and the passage has two facts and an anecdote with no argument. Delete C and nothing is lost but the arithmetic.

    *Check.* The point is the sentence the example serves. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "Two points, one sentence, twenty words",
  [Read the passage, then answer the question.

    #v(3pt)
    #block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 9pt)[
      #text(size: 9.7pt)[The council closed the motor park because the land had been sold. No alternative site was provided, so the buses now load on the highway, and the highway has no lay-by. Since the closure, two pedestrians have been knocked down at the same corner.]
    ]

    #v(3pt)
    In not more than twenty words, summarise the effects of closing the motor park.

    A. The council sold the land and did not provide another site for the buses. \
    B. Buses now load on a highway with no lay-by, and two pedestrians have been knocked down. \
    C. Closing the park has forced buses onto a highway without a lay-by, endangering pedestrians. \
    D. Two pedestrians were knocked down at the same corner after the closure.],
  [
    *Step 1 — the noun in the instruction.* It asks for *effects*, not causes. The sale of the land is the cause, so A is the wrong half of the passage however true it is.

    *Step 2 — the effects.* Buses load on the highway; the highway has no lay-by; two pedestrians have been knocked down.

    *Step 3 — test.* B lists two effects and stops at the number — and a list of effects is not a summarised effect. D gives one effect only. A gives the cause. C compresses all three effects into one claim, with *endangering pedestrians* doing the work of the two accidents.

    *Step 4 — count.* C is fourteen words, inside the limit, and contains no opener.

    *Check.* Does C cover every effect sentence in the passage? The loading, the missing lay-by and the danger are all present. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "In your own words, not the writer's",
  [Read the passage, then answer the question.

    #v(3pt)
    #block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 9pt)[
      #text(size: 9.7pt)[The clinic's records are kept in four exercise books, one for each nurse, and no two books agree. A child vaccinated in January can be vaccinated again in March. The books are not the problem; the clinic has never been given one agreed way of recording a patient.]
    ]

    #v(3pt)
    Which option best summarises the passage in the writer's sense but in different words?

    A. The clinic keeps its records in four exercise books, one for each nurse, and no two books agree. \
    B. Because the clinic has no single agreed method of recording patients, its records conflict and a child can be vaccinated twice. \
    C. A child vaccinated in January can be vaccinated again in March. \
    D. The clinic should buy a computer.],
  [
    *Step 1 — what the instruction adds.* This question asks for the writer's sense *in different words*, so an option that repeats the passage is disqualified even if it is accurate.

    *Step 2 — the claim.* The last sentence is the claim: no agreed method of recording.

    *Step 3 — test.* A is a lift of the first sentence — accurate, and disqualified by the instruction. C is a detail, lifted. D is a recommendation the writer never makes. B restates the claim in new vocabulary (*no single agreed method*) and keeps the consequence, which is what a summary does.

    *Step 4 — check the sense.* Does B say the same thing as the last sentence, with the evidence compressed into *records conflict*? It does, and no word in B is copied from the passage except *clinic*, *records* and *patients*, which cannot be avoided.

    *Check.* Accurate and paraphrased, rather than accurate and lifted. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "The summary that keeps the wrong half",
  [Read the passage, then answer the question.

    #v(3pt)
    #block(width: 100%, fill: jamb-light, stroke: 0.6pt + jamb-border, radius: 5pt, inset: 9pt)[
      #text(size: 9.7pt)[For eleven years the council has promised a lorry park. The file has moved between three departments and been lost once. Meanwhile the traders have built their own order on a stretch of roadside, marked out with stones, and it works: loading takes twenty minutes instead of two hours, and no lorry has blocked the market gate since March. The council's answer, when it came, was to clear the stones.]
    ]

    #v(3pt)
    In one sentence, summarise what the passage says about the traders.

    A. The traders have built a working roadside order while the council has failed for eleven years. \
    B. The council's file has moved between three departments and been lost once. \
    C. Loading now takes twenty minutes instead of two hours. \
    D. The council cleared the stones, so the traders lost their park.],
  [
    *Step 1 — the instruction's noun.* It asks about *the traders*, so the answer must be about them — their order, its success, and what happened to it.

    *Step 2 — the points about the traders.* They built an order marked with stones; it works (twenty minutes instead of two hours); the council cleared it.

    *Step 3 — the options.* B is about the council's file: true, and about the wrong subject. C is the measurement of the success, a detail inside the point. D is about the council's action and adds a consequence (*lost their park*) the passage does not report. A puts the traders' achievement against the council's failure, which is what the passage is organised to show.

    *Step 4 — coverage.* Does A account for the stones, the twenty minutes and the clearing? It accounts for the achievement and the contrast; the clearing is the council's answer and is the next sentence in the argument, but the question asked what the passage says about the traders.

    *Check.* The subject of the instruction is the traders, and A is the only option whose subject is the traders' achievement rather than a fact about them. The answer is *A*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/ch04_marks.svg",
  "Where the marks on a summary question go. Content marks are counted first, and a word limit is a mark scheme rather than a suggestion.", width: 100%)

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: summary.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A summary is the passage with its evidence removed: it keeps the claims, the reasons and the conclusion, and drops the examples, the quotations, the figures and the repetition. Read the instruction twice and underline the noun it wants — reasons, effects, causes, suggestions — because a summary that answers a different noun earns nothing however well it is written. A point is a sentence the argument needs; an example is a sentence a point needs, and the test is what happens when you delete it. Write one sentence with one verb, join the points with a connector that carries meaning, use your own vocabulary and the writer's sense, and count the words before you stop. Never open with *the writer says that*: six words of formula, and six words are a third of the limit.
  ]
]

== 4.4 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [“The levy has risen three times, each rise announced a week before collection. Traders cannot plan a season on a week's notice, so many buy less.” The main point is that], [the levy has risen three times], [short notice prevents traders from planning], [traders buy fifty tubers], [the levy is collected weekly])

#mcq(2, [In a summary question, the first thing to drop is], [the conclusion], [the writer's reason], [an example], [the main claim])

#mcq(3, [“In not more than twenty words, summarise the effects of the closure.” Which opening wastes words?], [Closing the park], [The writer is of the opinion that], [Buses now], [Because the park closed])

#mcq(4, [A summary that says “the roads are bad, the drains are blocked, and the council has no plan” is weak because it], [is too short], [lists facts without the relation between them], [uses the writer's words], [contains a date])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [the claim is the relation between the notice and the planning; the three rises are the fact that sets it up. A is that fact, C is the illustration, and D is a rule the passage never states.]),
  ("C", [an example is evidence, and evidence goes first. The conclusion (A) and the reason (B) are the substance of the summary, and the claim (D) is the one thing that must survive.]),
  ("B", [*the writer is of the opinion that* is six words that carry no information. A, C and D all begin with the point itself, which is what the limit is for.]),
  ("B", [a summary of an argument needs the relation — the council's lack of a plan explains the roads and drains. A is not the fault; C is not necessarily a fault; D is irrelevant to the sentence.]),
))

#chapter-checklist("Before you leave Chapter 4", (
  [State the four rules of a summary and the one that costs most marks.],
  [Find the topic sentence of three paragraphs and say why each is a point.],
  [Drop an example from a passage and show that the argument survives.],
  [Compress two points into one sentence of twenty words or fewer.],
  [Rewrite a passage sentence in your own words without changing its sense.],
  [Mark your own summary against content, organisation, expression and mechanics.]),
)

#concept-box("Carry this into Chapter 5")[
  Four chapters have worked on meaning. Chapter 5 changes the subject to sound: the vowels and consonants the paper asks you to sort, the pairs that differ by one feature, and the spellings that hide the sound they are supposed to carry.
]

#include "drill_ch04.typ"
