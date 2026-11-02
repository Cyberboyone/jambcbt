#import "template.typ": *

#current-chapter.update("Chapter 3: Character")

#pagebreak()

#chapter-opener(
  3,
  "Character: Maps, Functions, Contrasts",
  subtitle: "The Five-Question Map, the Six Functions, Paired Contrasts, and What an Arc Actually Is",
  syllabus-ref: "Section 2 • Character and Characterisation",
  utme-weight: "6 Qs a year",
  running: "Character",
)

#focus-radar(
  objectives: (
    "Fill the five-question character map for any named figure.",
    "Name the six functions a character can perform and match each to a text.",
    "Use contrast pairs to say what a text is arguing, not merely who is present.",
    "Distinguish an arc from a change of mood.",
    "Answer “how is X presented” without retelling X's story.",
    "Take a set of questions on character without drifting into plot.",
  ),
  hotspots: (
    "A *want* is a verb phrase in the present tense of the scene, not an adjective. “Ambitious” is a label; “wants the lieutenancy” is a want.",
    "The *function* is what the text loses without the character — the test that separates a person from a device.",
    "Contrast pairs do the arguing. Ask what the pairing *claims*, not what the two characters are like.",
    "An arc needs three points: what the character wants at the start, what they learn or refuse to learn, and what it costs.",
    "“Presented as” invites method as well as summary: the words, the staging, the company they keep.",
  ),
  trap-summary: "Two failures. (1) Answering character questions with adjectives — kind, cruel, jealous — which are labels rather than evidence. (2) Treating minor characters as decoration and therefore having nothing to say when a question lands on Bianca, Emilia, Bessie or Fofo.",
)

// ============================================================================
== 3.1 The Five-Question Map

#diagram-fig("diagrams/ch03_character.svg",
  "The five-question map. Each question produces a sentence you can use; a character you cannot map is a character you have only met.", width: 100%)

#table(
  columns: (1.35fr, 2.05fr, 1.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What a good answer looks like],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What a weak answer sounds like],
  ),
  [What do they *want*?], [“Desdemona wants to be believed when she says she is faithful.”], [“She is innocent.”],
  [What *obstructs* them?], [“A world in which her word needs a witness.”], [“Iago.”],
  [What do they *do* about it?], [“She keeps asking to be heard, and dies still asking.”], [“She suffers.”],
  [What can they not *say*?], [“That her marriage was an act of defiance she cannot regret.”], [“Nothing.”],
  [What does the text *lose* without them?], [“The proof that innocence is not protection.”], [“A main character.”],
)

#concept-box("Why five, and not two")[
  Exam answers fail at question three, not question one. Every candidate can say what a character
  wants; the marks are in what they *do* about it and what they *cannot say*, because those are the
  places where the text's design becomes visible. Fill five and you have an answer; fill two and
  you have a description.
]

// ============================================================================
== 3.2 The Six Functions

A character can do more than one of these at once, and most of the interesting ones do.
Naming the function is the fastest route from “who is this?” to “why are they here?”.

#table(
  columns: (1.05fr, 1.85fr, 1.95fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where to see it in the set texts],
  ),
  [*Protagonist*], [carries the want the text is organised around], [Othello's need for proof; Bigger's need to be *somebody*],
  [*Antagonist*], [opposes that want, but need not be a villain], [Iago opposes love with evidence; the Daltons oppose Bigger with kindness],
  [*Foil*], [a near-parallel whose difference makes the hero legible], [Cassio, who loses rank and asks to be restored; Jan, who is guilty and can say so],
  [*Confidant*], [receives speech the hero cannot say in public], [Emilia receives Desdemona's marriage; Boris receives Bigger's fear],
  [*Witness*], [sees and reports, and is changed by it], [Emilia again — she names the lie and pays for it],
  [*Chorus*], [speaks the world's judgement, or the text's frame], [the Venetian state; the newspaper voices of Chicago],
)

#shortcut-box("The deletion test")[
  Remove the character and ask what the text can no longer do. If the answer is “nothing”, the
  character is furniture. If the answer is “we could not see the cost”, or “the hero would have
  no one to talk to”, you have found the function — and that sentence is worth a mark.
]

#worked-example(
  1,
  "From label to want",
  [A candidate writes: “Emilia is a loyal and brave woman.” Rewrite the observation as a mapped want.

    A. Emilia is loyal, which she shows by helping Desdemona. \\
    B. Emilia wants to please her husband, then wants the truth told, and cannot have both. \\
    C. Emilia is a minor character who dies at the end. \\
    D. Emilia is braver than Desdemona.],
  [
    *Step 1 — diagnose the sentence.* “Loyal and brave” are adjectives, and adjectives cannot be quoted. Nothing in the sentence can be pointed at in the text.

    *Step 2 — find the conflict inside the character.* Emilia's two wants are genuinely incompatible: to keep Iago's favour she must hand over the handkerchief; to keep her honesty she must reveal it.

    *Step 3 — keep the version with a conflict.* Only B produces a want, an obstacle and a cost in one line, and every clause of it can be evidenced.

    *Check.* Could you write the same sentence about another character? You could not: the conflict is Emilia's alone. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.3 Contrasts: What a Pairing Claims

A contrast is not a comparison of personalities. It is an argument the text makes by
placing two figures where they can be seen together.

#table(
  columns: (1.25fr, 1.55fr, 2.45fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The difference],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What the pairing claims],
  ),
  [Othello / Cassio], [one loses his name and cannot recover it; one loses his rank and asks], [that reputation is a story others tell about you],
  [Desdemona / Emilia], [one obeys and is destroyed; one disobeys and is destroyed], [that obedience is not protection],
  [Iago / Othello], [the same suspicion, but one demands proof and one manufactures it], [that the difference between trust and paranoia is who supplies the evidence],
  [Bigger / Jan], [both guilty, but only one can speak his guilt], [that confession is a privilege of the powerful],
  [Bigger / Mary], [one is invisible to the world, one is invisible to herself], [that blindness has two directions],
  [Mary / Bessie], [one is killed by accident, one on purpose], [that the text weighs intent, and finds the law does not],
)

#trap-box("Do not write “X is the opposite of Y”")[
  Opposition is the least interesting thing about a pair. What the pairing *claims* is the mark-earning
  sentence. “Cassio is the opposite of Othello” earns nothing; “Cassio's pleading shows that a reputation
  can be recovered, and Othello's shows that it cannot, which is what the play means by honour” earns the
  whole question.
]

#worked-example(
  2,
  "Reading a contrast pair",
  [In *Native Son*, Bigger and Jan are both implicated in Mary's death. Which statement about the pairing would an examiner reward?

    A. Jan is a better person than Bigger. \\
    B. Bigger is a criminal and Jan is a victim. \\
    C. Jan can say what he has done and be heard; Bigger cannot, and the trial shows which of the two the court can imagine. \\
    D. Jan and Bigger are both young men.],
  [
    *Step 1 — reject the moral verdict.* Options A and B rank the characters. Ranking is what a reader does; a critic asks what the text does with them.

    *Step 2 — reject the trivial similarity.* D is true and empty; it could appear in a summary.

    *Step 3 — choose the claim about speech and hearing.* C describes a structural difference — who can speak, who is believed — and it predicts the ending, where Bigger is spoken *about* by everyone.

    *Check.* Does the sentence explain why the book puts them in the same room? C does; the others merely compare. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.4 Arcs, and What “Developed” Means

A character arc is a change in what a character is willing to *do*, not a change of mood.
Three points make an arc: the initial want, the pressure that forces a choice, and the
consequence the character accepts or refuses.

#table(
  columns: (1.05fr, 1.75fr, 1.6fr, 1.05fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Wants at the start],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Forced choice],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Cost accepted],
  ),
  [Othello], [to be trusted and to trust], [believe the handkerchief or the wife], [his own name],
  [Bigger], [to be somebody, to be seen], [confess, or be spoken for], [his life, and his fear],
  [Ada (in dossier form)], [to choose her own husband], [leave, or stay and be shamed], [her place in the house],
  [Fofo], [to be looked after], [trust Aziza or sell what she knows], [her childhood],
)

#concept-box("“Developed” is a false friend")[
  A character who changes their mind has not necessarily changed. Look for a change in *behaviour under
  pressure*: what they are now willing to lose. Othello does not develop — he is talked out of a self he
  never securely had — and saying so is a stronger answer than claiming he “grows”.
]

// ============================================================================
== 3.5 Answering “How Is X Presented?”

The stem is short and the trap is large. “Presented” asks for *method*: the words, the
company, the staging, the sequence. The four-part frame from Chapter 1 applies, with one
adjustment: the *name* in second place should be a technique or a structural choice, not
an adjective.

#rule-box("The character-answer frame")[
  + *Unit.* The scene or chapter, named.
  + *Presentation.* The technique — how the text makes us see them (their speech, their company, a stage direction, a narrator's aside).
  + *Evidence.* Six to ten exact words.
  + *Effect.* What we now understand, and at whose expense.
]

#worked-example(
  3,
  "The presentation question",
  [“How does Shakespeare present Emilia in Act 5?” Which opening sentence answers the stem best?

    A. Emilia is a brave woman who stands up to Iago. \\
    B. In Act 5 Shakespeare presents Emilia as a woman who has been talking to the wrong person all along. \\
    C. In Act 5, Emilia's loyalty is transferred from her husband to her mistress, and the transfer costs her her life. \\
    D. Act 5 is the last act, and Emilia dies in it.],
  [
    *Step 1 — test for method.* “Presented” wants a relationship between character and technique. B and C both name a movement; A names a quality; D names a fact of plot.

    *Step 2 — test for a claim.* C asserts something arguable — that loyalty is transferred, and that the transfer is fatal. B is a joke that says nothing about method.

    *Step 3 — choose.* C can be supported from three moments: the handkerchief confession, the public accusation, and the dying repetition. It is the sentence a paragraph can grow from.

    *Check.* Would the sentence survive being read aloud in a marked script? C would; A would be marked as description. The answer is *C*.
  ],
  tier: "HARD",
)

// ============================================================================
== 3.6 The Two-Minute Set

#mcq(1, [A character's *want* is best written as], [an adjective], [a quotation], [a plot summary], [a verb phrase naming what they are trying to get in this scene])

#mcq(2, [The deletion test asks], [what the text can no longer do without them], [whether the character is likeable], [how many lines they speak], [whether they appear in the first act])

#mcq(3, [A contrast pair earns marks when it], [ranks the two characters], [names their ages], [states what the pairing claims], [lists their scenes])

#mcq(4, [A character arc is a change in], [mood], [what the character is willing to do and to lose], [the number of their appearances], [their vocabulary])

#mcq(5, [“Presented as” most nearly asks about], [the character's history], [the actor's performance], [method — the choices that make us see them a certain way], [the author's view])

#answer-key-grid(("D", "A", "C", "B", "C"))

#answer-notes((
  ("B", [Adjectives cannot be quoted and cannot be evidenced; a want can be pointed at in the text.]),
  ("B", [The function is what the text loses. Line-counts and likeability are not tests of anything.]),
  ("B", [The pairing is an argument. Ranking characters is what a reader does, not what a critic does.]),
  ("B", [Mood changes and character does not. The arc is measured by what the figure will now risk.]),
  ("B", [Presentation is method: staging, speech, company, sequence. It is not biography or performance.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the five questions, the six functions, the contrast claim.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Character questions are failed with adjectives. The five-question map replaces them: what the figure wants in this unit, what obstructs the want, what they do about it, what they cannot say, and what the text loses without them. The last of the five is the function, and the deletion test finds it. Six functions cover the set texts — protagonist, antagonist, foil, confidant, witness, chorus — and the interesting figures perform two at once, as Emilia is both confidante and witness. Contrast pairs are arguments rather than comparisons: the question is not what Othello and Cassio are like but what the play claims by putting them side by side, which is that a reputation can be recovered by one man and not by another. An arc is a change in what a character will risk, measured at three points — the initial want, the forced choice, the cost accepted — and a character who merely changes his mind has not changed. “How is X presented” asks for method: the technique in second place, the evidence in third, the effect in fourth.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Fill the five-question map for two characters from different texts.],
  [Name the function of three minor characters, using the deletion test.],
  [Write one contrast sentence that states a claim rather than a difference.],
  [Mark the three points of one character's arc.],
  [Rewrite one adjective-only sentence as a presented-as sentence.]
))

#concept-box("Carry this into Chapter 4")[
  Character is the visible half of theme. The wants and obstacles you have just mapped are the
  evidence for the ledger in the next chapter — and a theme you cannot attach to a want is a
  topic, not an argument.
]

#include "drill_ch03.typ"
