#import "template.typ": *

#current-chapter.update("Chapter 3: Tense, Aspect and Voice")

#pagebreak()

#chapter-opener(
  3,
  "Tense, Aspect and Voice",
  subtitle: "The Twelve Verb Forms, the Perfect Tenses, the Conditionals, Reported Speech and the Passive Voice",
  syllabus-ref: "Sec. A • Lexis and Structure",
  utme-weight: "5 Qs every year",
  running: "Tense, Aspect and Voice",
)

#focus-radar(
  objectives: (
    "Name the three times and the four aspects, and build any of the twelve forms from them.",
    "Choose between the simple past, the present perfect and the past perfect.",
    "Complete a first, second and third conditional without mixing their tenses.",
    "Move a sentence into reported speech, including the time words.",
    "Turn an active sentence into a passive one, and say when the passive is impossible.",
    "Recognise the auxiliary that carries the tense in a compound verb.",
  ),
  hotspots: (
    "“By the time we arrived, the meeting \_\_\_.” — *had begun*, because the perfect puts one past action before another.",
    "“If I \_\_\_ you, I would accept the offer.” — *were*, the subjunctive that survives in the second conditional.",
    "“She said she \_\_\_ the letter the day before.” — *had posted*, because a past reporting verb moves the tense back.",
    "“The results \_\_\_ yesterday.” — *were announced*, because the results cannot announce anything.",
    "“He has \_\_\_ in Lagos since 2019.” — *lived*, because *since* takes the present perfect, not the simple past.",
  ),
  trap-summary: "Three slips. (1) Mixing the halves of a conditional: *if it rains, we would stay* joins a present if-clause to a would-clause, and neither the first nor the second conditional allows it. (2) Using the simple past where the perfect is needed: *since 2019*, *already*, *just*, *yet* and *so far* all pull the present perfect. (3) Making a passive out of an intransitive verb: nothing can be *was arrived* or *was happened*, because those verbs have no object to promote.",
)

// ============================================================================
== 3.1 Time, Tense and Aspect

English has three times — past, present and future — and four aspects, which say how the action sits in that time: as a fact, as something in progress, as something finished but still relevant, or as something that has been going on continuously. Three times and four aspects give twelve forms, and every tense question in the paper is one cell of that grid.

#diagram-fig("diagrams/ch03_tense_grid.svg",
  "The twelve forms of the verb, built from three times and four aspects. Learn the grid by rows, because the paper almost always changes the aspect and keeps the time.", width: 100%)

#diagram-fig("diagrams/ch03_aspect.svg",
  "What the four aspects actually say. The perfect is not the past — it is the aspect of something finished whose result still matters.", width: 100%)

#concept-box("Aspect is not decoration")[
  + *Simple* reports a fact: she *writes* every day.
  + *Continuous* puts the action in progress at the time named: she *is writing* now.
  + *Perfect* says the action is finished but its result is still relevant: she *has written* three pages, and here they are.
  + *Perfect continuous* says the action has been running up to now: she *has been writing* since noon, and she is still at it.

  The difference between *she wrote* and *she has written* is not the time — both are past — but the connection to the present. That connection is what the paper is asking about when it offers both.
]

#rule-box("The four signals that pull the perfect")[
  + *since* + a point in time: he has lived here *since 2019*.
  + *for* + a period: he has lived here *for six years*.
  + *already, just, yet, ever, never, so far, recently*: I have *already* eaten; have you finished *yet*?
  + *by the time* + a past event: by the time we arrived, the film *had started*.

  With none of those signals, and a finished time such as *yesterday*, *last week* or *in 2020*, the simple past is the form: I *saw* him yesterday, never I have seen him yesterday.
]

#worked-example(
  1,
  "Since, for and the present perfect",
  [“He \_\_\_ in Lagos since 2019, and he \_\_\_ three houses there.” Options: lived / has built, has lived / has built, has lived / built, lived / built.],
  [
    *Step 1 — the first blank.* *Since 2019* is a point in the past that runs up to now, so the present perfect is required: he *has lived* in Lagos since 2019.

    *Step 2 — the second blank.* The three houses exist now, so the result is still relevant: he *has built* three houses. The simple past *built* would suggest a finished period with no connection to the present.

    *Step 3 — check the pair.* Both verbs describe a situation that began in the past and continues to matter, so both take the perfect.

    *Check.* Ask whether the sentence would still be true tomorrow: “He has lived in Lagos since 2019” remains true, which is the mark of the present perfect. The answer is *has lived / has built*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 3.2 The Past Forms and the Perfect

The past tense has four cells, and the one that causes the most damage is the past perfect — the tense that puts one past action before another past action.

#rule-box("Past simple, past continuous, past perfect")[
  + *Past simple* — a finished action at a finished time: I *wrote* the letter yesterday.
  + *Past continuous* — an action in progress at a past moment: I *was writing* when he called.
  + *Past perfect* — an action finished before another past action: I *had written* the letter before he arrived.
  + *Past perfect continuous* — an action running up to a past moment: I *had been writing* for an hour when he called.

  The past perfect is only used when there are *two* past events and the order between them matters. With one past event, the simple past is correct, which is why *I had written the letter yesterday* is wrong and *I wrote the letter yesterday* is right.
]

#trap-box("Had went, had saw, had wrote")[
  The past perfect is *had* plus the past participle, never *had* plus the past tense. The correct forms are *had gone*, *had seen*, *had written*, *had taken*, *had begun*. If you can say the three forms of the verb in order, you already have the answer: go, went, gone.
]

#worked-example(
  2,
  "Two past events and the order between them",
  [“When we reached the station, the train \_\_\_.” Options: has left, had left, left, was leaving.],
  [
    *Step 1 — count the past events.* There are two: reaching the station, and the train's departure. One happened before the other.

    *Step 2 — decide the order.* The train left first, so its verb takes the past perfect: *had left*.

    *Step 3 — eliminate.* *Has left* is present perfect and cannot sit beside a past event. *Left* would make the two events simultaneous. *Was leaving* would mean the train was in the act of leaving, which contradicts “when we reached”.

    *Check.* Reverse the sentence: “The train had left before we reached the station.” The word *before* makes the order explicit, and the past perfect is the only form that carries it.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.3 The Future and the Conditionals

Future time has no special verb form in English; it is built from *will*, *shall*, *be going to* and the present continuous. The examiner tests the future mostly through the conditionals, where the tense in the *if*-clause decides the tense in the main clause.

#diagram-fig("diagrams/ch03_conditionals.svg",
  "The four conditionals. The tense never mixes across the comma, and knowing which type a sentence is decides the answer before you read the options.", width: 100%)

#rule-box("The conditional ladder")[
  + *Zero* — if + present, present: if you heat ice, it melts. General truth.
  + *First* — if + present, will + base: if it rains, we will stay. A real possibility.
  + *Second* — if + past, would + base: if I were rich, I would travel. Unreal now.
  + *Third* — if + had + participle, would have + participle: if I had known, I would have come. Unreal then.

  The subjunctive survives in the second conditional: *if I were you*, not *if I was you*, in formal writing.
]

#worked-example(
  3,
  "The third conditional",
  [“If the team \_\_\_ harder, it \_\_\_ the match.” Options: trained / would win, had trained / would have won, trained / would have won, had trained / would win.],
  [
    *Step 1 — decide whether the sentence is about now or then.* The match is over, so the sentence imagines a different past. That is the third conditional.

    *Step 2 — fill the if-clause.* The third conditional takes *had* plus the past participle: *had trained*.

    *Step 3 — fill the main clause.* The matching main clause is *would have* plus the participle: *would have won*. Mixing *had trained* with *would win* produces a sentence that starts in the past and ends in the present.

    *Check.* The pair *had … would have …* appears twice in the sentence, once on each side of the comma, which is the signature of the third conditional.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.4 Reported Speech

When the reporting verb is in the past, everything inside the quotation moves back one step. When it is in the present, nothing moves at all — and that difference is the whole of the rule.

#diagram-fig("diagrams/ch03_reported.svg",
  "Reported speech: what moves back when the reporting verb is past. Time words move with the tense, and forgetting them is the second most common error in the section.", width: 100%)

#shortcut-box("One step back, and no further")[
  Move the tense back exactly one step: present → past, past → past perfect, will → would, can → could, may → might, must → had to. Then move the time words: now → then, today → that day, tomorrow → the next day, yesterday → the day before, here → there, this → that.
]

#trap-box("Said that he is coming")[
  If the reporting verb is past — *he said* — the reported clause cannot stay in the present, even when the situation is still true. “He said he *is* coming” is wrong in formal written English; “he said he *was* coming” is right. The only exception is a permanent truth: “The teacher said that water boils at 100 °C.”
]

// ============================================================================
== 3.5 The Passive Voice

The passive turns the object of a sentence into its subject. It exists because the doer is unknown, unimportant or obvious — and because the examiner wants to see whether you can rebuild a sentence without losing its tense.

#diagram-fig("diagrams/ch03_active_passive.svg",
  "Turning an active sentence into the passive in four moves. The auxiliary carries the tense and the main verb becomes the past participle.", width: 100%)

#rule-box("The passive, tense by tense")[
  + *Present simple:* the ball *is kicked*. *Past simple:* the ball *was kicked*. *Future:* the ball *will be kicked*.
  + *Present perfect:* the ball *has been kicked*. *Past perfect:* the ball *had been kicked*.
  + *Continuous:* the ball *is being kicked*, *was being kicked*.
  + With a modal: the ball *can be kicked*, *must be kicked*, *should have been kicked*.

  Only a *transitive* verb has a passive. Sleep, arrive, happen, occur, consist and resemble take no object, so they have no passive — *was happened* and *was arrived* are always wrong options.
]

#worked-example(
  4,
  "Active to passive without losing the tense",
  [Turn into the passive: “The technician had repaired the generator before the rain started.”],
  [
    *Step 1 — find the object.* *The generator* receives the action, so it becomes the new subject.

    *Step 2 — keep the tense.* The original verb is past perfect, *had repaired*, so the passive needs *had been* plus the participle: *had been repaired*.

    *Step 3 — decide about the agent.* The technician is known but unimportant to the meaning, so the agent can be dropped, or kept with *by*: “The generator had been repaired by the technician before the rain started.”

    *Check.* The passive must keep both clauses in step: the second clause stays *before the rain started*, because the passive changes only the first. A version that changes both clauses has changed more than the voice.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "Where the passive is impossible",
  [Which of these sentences cannot be turned into the passive? (a) The students answered the questions. (b) The baby slept peacefully. (c) The chef cooked the rice. (d) The company paid the workers.],
  [
    *Step 1 — test each verb for an object.* *Answered* takes *the questions*; *cooked* takes *the rice*; *paid* takes *the workers*. All three are transitive, so all three have a passive.

    *Step 2 — test (b).* *Slept* takes no object: you cannot sleep something. The verb is intransitive.

    *Step 3 — confirm.* There is no object to promote to subject, so “peacefully was slept by the baby” is not English.

    *Check.* Ask “what did the verb act on?” If the answer is nothing, there is no passive. That is the same test that decides whether a verb can take a passive in the first place.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: tense, aspect and voice.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Three times and four aspects make the twelve verb forms, and the aspect is what the paper actually tests: simple states a fact, continuous puts it in progress, perfect says it is finished but still relevant, perfect continuous says it is still running. The perfect is pulled by *since*, *for*, *already*, *just*, *yet*, *so far* and *by the time*, while a finished time such as *yesterday* pulls the simple past. The past perfect exists only to put one past action before another, and it is always *had* plus the past participle. The four conditionals never mix their halves — present with *will*, past with *would*, *had* with *would have* — and the second conditional keeps the subjunctive *if I were*. A past reporting verb moves the tense back one step and the time words with it. The passive is object to subject, *be* in the same tense, and the past participle, and it exists only for transitive verbs.
  ]
]

== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [By the time the chairman arrived, the members \_\_\_ the agenda.], [have discussed], [had discussed], [discussed], [are discussing])
#mcq(2, [If I \_\_\_ you, I would take the offer without hesitation.], [am], [was], [were], [had been])
#mcq(3, [The letter \_\_\_ by the secretary before the meeting began.], [has been typed], [had been typed], [was typing], [had typed])
#mcq(4, [She has lived in Abuja \_\_\_ 2018.], [for], [from], [since], [during])

#answer-key-grid(("B", "C", "B", "C"))

#answer-notes((
  ("B", [two past events, and the discussion happened first: had discussed. Have discussed is present perfect and cannot follow a past arrival.]),
  ("C", [the second conditional keeps the subjunctive were, even though the meaning is singular and present. Was is heard in speech but is not the answer in formal written English.]),
  ("B", [the letter cannot type itself, so the passive is needed, and the typing happened before the meeting began, so the tense is past perfect: had been typed.]),
  ("C", [since takes a point in time and pulls the present perfect. For would need a period — for six years — and from does not sit with the perfect at all.]),
))

#chapter-checklist("Before you leave Chapter 3", (
  [Build any of the twelve forms from a time and an aspect.],
  [Say when the present perfect is required and when the simple past is.],
  [Complete a first, second and third conditional.],
  [Move a quoted sentence into reported speech, time words included.],
  [Turn an active sentence into a passive one without changing its tense.],
  [Name three verbs that cannot be made passive, and say why.],
))

#concept-box("Carry this into Chapter 4")[
  Tense tells you what the verb is doing inside its clause; Chapter 4 asks how the clauses themselves are put together. A sentence with the right tense in every clause can still be wrong if the clauses are joined with a comma, and that is where the next chapter begins.
]

#include "drill_ch03.typ"
