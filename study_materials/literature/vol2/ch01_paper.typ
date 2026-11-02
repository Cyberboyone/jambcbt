#import "template.typ": *

#current-chapter.update("Chapter 1: How the Paper Examines a Set Text")

#pagebreak()

#chapter-opener(
  1,
  "How the Paper Examines a Set Text",
  subtitle: "The Four Shapes of Question, What a Mark Scheme Rewards, the Quotation Policy and the Four Errors That Cost Most",
  syllabus-ref: "Sections 1–2 • The Set-Text Block",
  utme-weight: "6 Qs a year",
  running: "How the Paper Examines a Set Text",
)

#focus-radar(
  objectives: (
    "Say what a set-text question is asking that an unseen question is not.",
    "Recognise the four shapes of question and the evidence each one wants.",
    "Write a 25–40 word answer with a name, a unit, a quotation and an effect.",
    "Quote six to ten words exactly, and embed the quotation in a sentence.",
    "Avoid the four errors that lose the most marks on the text block.",
    "Take a set-text block under time without losing the unseen questions.",
  ),
  hotspots: (
    "A *function* question is answered with a relationship (“the subplot makes the main marriage look like a choice”), never with a summary.",
    "An *effect* question asks what the audience now understands or feels, and the answer must name the words that produce it.",
    "A *judgement* question (“How far does the play persuade us …”) wants a claim *and* the strongest objection to it. One-sided answers cap out at half marks.",
    "Quotations are evidence, not decoration: six to ten words, embedded in your own sentence, and followed by the effect. A block quotation with no comment earns nothing.",
    "“In the play” is not an anchor. The unit is — “in the scene after the brawl”, “in Chapter 4, when the family is evicted”.",
  ),
  trap-summary: "Three habits. (1) Retelling the plot. (2) Naming a device without the evidence and the effect. (3) Answering a judgement question as if it were a fact question — “yes, the play shows this” is not a judgement, because it does not say how far, or at what cost.",
)

// ============================================================================
== 1.1 What Changes When the Text Is Prescribed

On an unseen extract, the paper gives you the evidence and asks what it does. On a
prescribed text, the paper assumes the evidence is already yours and asks you to
*select* it. That is a harder skill than it looks, because selection is invisible:
nothing on the page tells you which scene the examiner has in mind.

#rule-box("Three things a set-text question assumes")[
  + *You know the unit.* Not the whole play — the scene, the chapter, the speech. Every set-text stem is anchored somewhere, even when it does not say so.
  + *You can find the evidence without the book.* A quotation you have to hunt for is a quotation you will not use under time.
  + *You can say what the part does for the whole.* The examiner is not testing whether you remember; he is testing whether you can connect a moment to a design.
]

#text(size: 9.4pt)[This is why a summary is useless preparation and a bank is not. A summary tells you what happens in the order it happens; a bank tells you what each unit *does*, which is the only thing a question can ask about it. Chapter 2 builds the bank; this chapter is about the questions it has to answer.]

#concept-box("The difference in one pair of sentences")[
  *Unseen:* “The rain is described as a grey wall, which makes the change visible before it arrives.”

  *Set text:* “In the scene after the brawl, Othello's ‘*Chaos is come again*’ turns a private marriage into a public disorder, which is why the loss of the handkerchief can destroy it.”
]

// ============================================================================
== 1.2 The Four Shapes of Question

#diagram-fig("diagrams/ch01_shapes.svg",
  "The four shapes of a set-text question. Each one wants a different kind of evidence, and the commonest error is answering shape two with shape one's material.", width: 100%)

#table(
  columns: (1.0fr, 1.7fr, 2.4fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The stem],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What earns the mark],
  ),
  [*Fact*], [“Who says this line, and to whom?”], [the name and the unit, in as few words as possible],
  [*Function*], [“What is the function of the subplot?”], [a relationship between the part and the whole],
  [*Effect*], [“What is the effect of the repetition?”], [what the audience now understands, and the words that produce it],
  [*Judgement*], [“How far does the play persuade us that …?”], [a claim, the best objection, and a verdict],
)

#text(size: 9.4pt)[The shapes are hierarchical in difficulty but not in value: each is worth one mark. That is the quiet injustice of a multiple-choice paper — a candidate who can define *hamartia* earns the same mark as one who can weigh the ending of *Othello* — and it is also the reason a candidate should never spend four minutes on a judgement question when three fact questions are waiting behind it. Answer the cheap shapes first, bank the marks, and return to the expensive ones.]

#worked-example(
  1,
  "Recognising the shape",
  [“In *Othello*, what is the function of the Bianca episode?” The question is asking for

    A. the plot of the episode \\
    B. the relationship between the episode and the play's central action \\
    C. Bianca's biography \\
    D. the act and scene in which it occurs],
  [
    *Step 1 — read the noun.* *Function* is the operative word. It asks what the part does for the whole, not what happens inside it.

    *Step 2 — eliminate the shapes that are not asked.* A is a summary, C is a fact about a character, and D is a fact about location. Each could be true and none would answer the question.

    *Step 3 — choose the relationship.* The episode with Bianca matters because it shows the same handkerchief being asked for by a second woman, which turns a token of love into a piece of evidence in a case about fidelity — that is a relationship between a small scene and the play's central action.

    *Check.* If the answer could be given without mentioning the play's design, it is not a function answer. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.3 What a Mark Scheme Rewards

A set-text answer in this paper is short — a multiple-choice option, or a sentence
or two in the written sections of other examining bodies. The shape of a full answer
is the same at every length.

#rule-box("The four-part answer, in 25–40 words")[
  + *The unit.* Where in the text we are, in three or four words.
  + *The name — or the act.* What is being done: a device, a choice, a structural move.
  + *The evidence.* Six to ten words, quoted, embedded in your sentence.
  + *The effect.* What the audience or reader now understands, and at what cost.
]

#table(
  columns: (1.65fr, 1.15fr, 2.7fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The answer],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it supplies],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Why it falls short],
  ),
  [“Iago is jealous of Othello.”], [a character note], [true of the whole play and of no scene in particular; nothing is evidenced],
  [“Iago says he hates the Moor.”], [a paraphrase of the evidence], [it reports what Iago says without saying what the speech does],
  [“In the first scene Iago tells Roderigo that he hates the Moor, which recruits the audience into a conspiracy against the general before the general has appeared.”], [unit, act, evidence, effect], [—],
)

#text(size: 9.4pt)[The third answer is long by the standards of a multiple-choice option and short by the standards of an essay. What it has — and the first two do not — is the final clause: *which recruits the audience* is a claim about what the words do. That clause is the mark.]

#worked-example(
  2,
  "Choosing the answer with an effect",
  [Which comment on *Othello* would a mark scheme reward most?

    A. Iago is the villain of the play. \\
    B. Iago's first soliloquy tells the audience his plan before Othello knows there is one. \\
    C. Iago's first soliloquy makes the audience accomplices: we know the plan, and knowing it turns every later compliment into a threat. \\
    D. Shakespeare uses soliloquy in *Othello*.],
  [
    *Step 1 — count the parts.* A is a character note, D is a label with no evidence, and B gives evidence and a fact about knowledge but stops there.

    *Step 2 — look for a consequence.* Only C says what the knowledge *does* — it turns compliments into threats, which is an effect on the audience rather than a fact about the plot.

    *Step 3 — check that it could be argued with.* A reader could dispute whether “accomplices” is the right word, and that disputability is the sign of an interpretive claim.

    *Check.* If the option would fit any play with a scheming villain, it has not answered this one. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.4 The Quotation Policy

Quotations are the currency of the text block, and most candidates carry the wrong
change: long, half-remembered, and unconnected to a claim. The policy that works in
an exam is short and strict.

#table(
  columns: (1.15fr, 2.1fr, 1.95fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Why],
  ),
  [*Six to ten words*], [the shortest run that is unmistakably the text], [a long quotation invites a misquote and eats the time you need for the effect],
  [*Embedded*], [the quotation is part of your sentence, not a display], [“Othello calls the handkerchief ‘*a trifle*’” reads as an argument; a dropped block quotation reads as a note],
  [*Exact or paraphrased*], [if you are unsure of the words, describe the line and do not quote it], [a wrong quotation is evidence of not checking, which costs more than the quotation earns],
  [*One per point*], [two quotations in one sentence is one too many], [the second adds length, not proof],
  [*Followed by the effect*], [never end a sentence on a quotation], [a quotation with no consequence is an ornament],
)

#concept-box("Ten quotations, not fifty")[
  A candidate needs about ten quotations for a play and eight for a novel — one per
  major unit, chosen because each can be made to do several jobs. A quotation that can
  only answer one question is a luxury; a quotation like “*the green-eyed monster*” can
  carry a question about imagery, about jealousy, about Iago's method, or about the
  difference between Iago's language and Othello's.
]

#worked-example(
  3,
  "Embedding a quotation",
  [Which sentence uses a quotation best?

    A. “*Put out the light, and then put out the light.*” \\
    B. Othello says: “Put out the light, and then put out the light.” This is important. \\
    C. Othello's “*Put out the light*” makes the murder a piece of housekeeping, which is why the scene is horrifying rather than heroic. \\
    D. Othello talks about light before he kills Desdemona.],
  [
    *Step 1 — check the first two.* A is a quotation with no sentence around it, and B follows it with “this is important”, which states the need for a comment instead of making one.

    *Step 2 — check D.* It is a paraphrase with no evidence and no effect: true, and worth nothing.

    *Step 3 — check C.* Six words, embedded, and followed by a claim about what they do — the murder becomes domestic, and the horror comes from the disproportion between the act and its language.

    *Check.* A quotation should be the subject of your sentence, not a separate line. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 1.5 The Four Errors That Cost Most

#table(
  columns: (1.1fr, 2.05fr, 2.05fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The error],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it looks like],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The repair],
  ),
  [*Retelling*], [three sentences of plot and one of comment], [invert the ratio: one clause of what happens, three of what it does],
  [*Labelling*], [“Shakespeare uses dramatic irony here”], [add the gap: who knows what, and who does not],
  [*Misquoting*], [a line remembered approximately, offered as exact], [quote less, or describe the line instead],
  [*Moralising*], [“Iago is an evil man and deserves punishment”], [convert the verdict into a function: what does the play use him to show?],
)

#trap-box("The judgement question, and why it is failed politely")[
  A stem beginning *How far …* is asking for a proportion. “Yes” is not an answer, and
  “no” is not either. The answer has the shape: *the play persuades us that X in this
  respect, but not in that one, because …*. Candidates who write a confident yes earn
  the first half of the mark and lose the second, and they lose it politely, which is
  why they never find out why.
]

// ============================================================================
== 1.6 The Set Text in the Exam Hall — a Two-Minute Set

#mcq(1, [A set-text question differs from an unseen question chiefly because it], [is harder], [assumes the evidence is already yours and asks you to select it], [is worth more marks], [uses longer extracts])

#mcq(2, [A question asking for “the function of the subplot” wants], [the names of its characters], [a relationship between the part and the whole], [a summary of the subplot], [the act in which it begins])

#mcq(3, [The best length for a quotation in an exam answer is], [as long as possible], [six to ten words], [one word], [a whole speech])

#mcq(4, [A stem beginning “How far does the play persuade us …” requires], [a yes or a no], [a plot summary], [a claim, the best objection, and a verdict], [a character sketch])

#answer-key-grid(("D", "A", "C", "B"))

#answer-notes((
  ("B", [The evidence is assumed rather than supplied, so the skill tested is selection and connection. Difficulty, length and marks are incidental.]),
  ("B", [Function is relational. A summary, a cast list and an act number could all be accurate and none of them would say what the part does.]),
  ("B", [Six to ten words are unmistakable and can be embedded in a sentence. Long quotations invite misquotation and crowd out the effect.]),
  ("B", [“How far” asks for a proportion, so the answer must weigh both sides before it concludes. A bare yes or no answers a different question.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the four shapes and the four-part answer.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    An unseen question gives you the evidence and asks what it does; a prescribed-text question assumes the evidence and asks you to select it — which is harder, because nothing on the page tells you which scene the examiner has in mind. Every set-text stem is one of four shapes. A fact question wants a name and a unit. A function question wants a relationship between a part and the whole, never a summary. An effect question wants what the audience now understands, and the words that produce it. A judgement question wants a claim, the strongest objection and a verdict — “how far” is a proportion, and a bare yes answers a different question. The full answer is four parts in twenty-five to forty words: the unit, the name or the act, six to ten words of exact quotation embedded in the sentence, and the effect. Quotations are evidence, not decoration, and a sentence never ends on one. The four errors are retelling, labelling, misquoting and moralising — and each has a repair that costs a clause.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Say what a set-text question assumes that an unseen question does not.],
  [Name the four shapes and the evidence each one wants.],
  [Write a four-part answer about a scene you know, in under forty words.],
  [Embed one quotation in a sentence and end the sentence on its effect.],
  [Say why “Iago is evil” is not a literary answer.]
)))

#concept-box("Carry this into Chapter 2")[
  The four shapes are only answerable if you have something to select from. The next
  chapter builds that something: one row per scene or chapter, one quotation per row,
  and a cast grid that turns a cast list into a set of wants and obstacles.
]

#include "drill_ch01.typ"
