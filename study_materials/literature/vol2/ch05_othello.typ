#import "template.typ": *

#current-chapter.update("Chapter 5: Othello")

#pagebreak()

#chapter-opener(
  5,
  "Othello: A Worked Model",
  subtitle: "The Whole Play in One Page, Act by Act, the Engine Named Iago, the Collapse of a Style, and the Verdict the Ending Demands",
  syllabus-ref: "Section 1 • Drama — Othello, William Shakespeare",
  utme-weight: "9 Qs a year",
  running: "Othello",
)

#focus-radar(
  objectives: (
    "Hold the play's five acts and what each one changes.",
    "Explain Iago's method as a mechanism rather than a motive.",
    "Trace the collapse of Othello's language across three speeches.",
    "Use the play's five themes without treating them separately.",
    "Answer the ending question with a verdict and a cost.",
    "Take a nine-question set on the play in four minutes.",
  ),
  hotspots: (
    "The play is built on a *gap in knowledge*: we know Iago's plan and Othello does not. Every irony runs through that gap.",
    "Iago's motive is not the point. Coleridge's “motiveless malignity” is a description of the effect, not an excuse to stop analysing.",
    "Othello's language is the play's argument: it is fluent, exotic and public at the start, and it fragments into repetition and command.",
    "Desdemona speaks in plain sentences that nobody treats as evidence. That is the play's quietest claim.",
    "The ending is a *judgement* question: the play asks what a man like Othello deserves, and answers with a kiss and a knife.",
  ),
  trap-summary: "Three failures. (1) Retelling the plot as though the examiner has not read it. (2) Claiming Iago is “jealous” and leaving it there. (3) Treating the last scene as justice rather than as the play's final argument about self-image.",
)

// ============================================================================
== 5.1 The Whole Play in One Page

#diagram-fig("diagrams/ch05_map.svg",
  "The five acts of *Othello* and what each one changes. A useful test of any answer: which act does it live in?", width: 100%)

#table(
  columns: (0.55fr, 1.9fr, 2.0fr, 1.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Act],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What changes],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it costs],
  ),
  [*1*], [the elopement is revealed; the Duke sends Othello to Cyprus], [a private marriage becomes a public mission], [Brabantio's trust, permanently],
  [*2*], [the storm; the brawl; Cassio demoted], [the soldier becomes a civilian], [Cassio's rank; Othello's wedding night],
  [*3*], [the temptation; the handkerchief; the eavesdropping], [suspicion becomes certainty without evidence], [Othello's peace of mind],
  [*4*], [the lodgings; the song; the strike], [public man becomes private executioner], [Desdemona's safety],
  [*5*], [the killing; Emilia's testimony; the arrest], [the truth arrives too late to save anyone], [everything, including the story Othello wanted],
)

#concept-box("The one-page test")[
  Cover the last two columns and say aloud what changes and what it costs in each act. If you can do
  that in ninety seconds, you know the play well enough to answer any set-text question about it. If
  you can only do the second column, you know the plot — and the plot is not what is examined.
]

// ============================================================================
== 5.2 The Engine Named Iago

#diagram-fig("diagrams/ch05_iago.svg",
  "Iago's method in three moves: he supplies the interpretation, he supplies the evidence, and he supplies the silence that makes both work.", width: 100%)

Iago does three things, in this order, and understanding the order is worth more than any
list of his motives.

#table(
  columns: (1.15fr, 2.35fr, 1.75fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where to find it],
  ),
  [*Interpretation*], [he tells Othello what a fact *means* before Othello can look at it], [“Look to your wife” — he plants the question before the handkerchief],
  [*Evidence*], [he arranges a scene that can be read as proof, and lets Othello read it], [the eavesdropping on Cassio's laughter about Bianca],
  [*Silence*], [he makes sure the one person who could explain is never asked], [Desdemona is never told what she is accused of],
)

#shortcut-box("What Iago never does")[
  Iago never lies about a *fact*. He lies about what a fact means, and he arranges coincidences. That is
  why he can say “I am not what I am” and still be believed: the play's world has no procedure for
  checking an interpretation.
]

#worked-example(
  1,
  "Iago's method, not his motive",
  [“In *Othello*, Iago is driven by jealousy.” Which comment on this sentence is most useful in an essay?

    A. It is true; Iago envies Cassio's promotion. \\
    B. It is true but incomplete; Iago also suspects Othello with Emilia. \\
    C. It confuses a possible motive with the play's mechanism, which works whether or not Iago is jealous. \\
    D. It is false; Iago feels nothing.],
  [
    *Step 1 — separate motive from method.* Motives explain *why* a character acts; mechanisms explain *how* the action works on the other characters. The sentence offers a motive and stops.

    *Step 2 — test the mechanism.* Iago's technique — supply the interpretation, supply the evidence, keep the witness silent — would work on any trusting man. That is what makes the play frightening, and it is independent of his reasons.

    *Step 3 — choose.* C names the confusion and supplies the better frame.

    *Check.* Does the answer let you write the next paragraph? C does, because it gives you three moves to trace. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 5.3 The Collapse of a Style

Othello's language is the play's clearest evidence, because it changes in front of us.
Three speeches, three stages.

#table(
  columns: (1.1fr, 2.15fr, 1.95fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The speech],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What the style shows],
  ),
  [*Fluent, public*], [“*She loved me for the dangers I had passed*”], [his eloquence is legal evidence; the Duke is persuaded by a story],
  [*Fracturing*], [“*Farewell the tranquil mind! farewell content!*”], [the sentence breaks into exclamation; the general's vocabulary is replaced by loss],
  [*Commanding*], [“*Put out the light, and then put out the light*”], [repetition replaces argument; he speaks as an executioner, not a husband],
)

#concept-box("Repetition as a symptom")[
  Track the word *honest* through the play. It is said of Iago more than any other word in the text,
  and every time it is said the irony deepens. A candidate who can trace one word's career has a
  better answer than one who quotes ten speeches and traces nothing.
]

#worked-example(
  2,
  "Reading a quotation for a mechanism",
  [“*Put out the light, and then put out the light.*” Which reading names a mechanism rather than a mood?

    A. Othello is very sad here. \\
    B. The repetition shows he is confused. \\
    C. The same words do two jobs in one line — one literal, one a death sentence — so that murder sounds like housekeeping. \\
    D. Shakespeare repeats words for emphasis.],
  [
    *Step 1 — ask what the line does.* It uses one phrase twice. The first use is the lamp; the second is Desdemona.

    *Step 2 — name the relation.* C names the double employment of the same words and the effect: murder becomes an ordinary act of tidying.

    *Step 3 — reject the alternatives.* A and B name feelings; D names a device without saying what it does.

    *Check.* Would the reading survive a question asking about language and violence? C would. The answer is *C*.
  ],
  tier: "HARD",
)

// ============================================================================
== 5.4 The Five Themes in This Play

#table(
  columns: (1.15fr, 2.1fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The play's claim],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The resisting moment],
  ),
  [Love and trust], [love survives only where it is not asked to prove itself], [Othello's tenderness on arrival in Cyprus],
  [Race], [Othello is indispensable and unassimilable at once], [the Duke's pragmatic acceptance in Act 1],
  [Power], [rank is a costume, and the man inside is smaller than the costume], [Othello's authority in the brawl scene is real],
  [Gender], [a woman's plain speech is not accepted as evidence], [Emilia is believed — but only after the deaths],
  [Self-image], [Othello kills the man he thinks he has become, not the woman he thinks she is], [his last speech is a return to the storyteller of Act 1],
)

#worked-example(
  3,
  "The ending as judgement",
  [“Othello's suicide is an act of justice.” How far do you agree? Which sentence is the best *first* sentence of an answer?

    A. I agree, because he killed an innocent woman. \\
    B. I disagree, because suicide is always wrong. \\
    C. Othello's death is not justice but the last performance of the man who needed an audience, and the play makes us watch it as such. \\
    D. Othello dies in the last scene of the play.],
  [
    *Step 1 — test the register.* The stem asks *how far*, so it wants a proportion and a verdict, not a thumbs-up.

    *Step 2 — test the sentence.* C makes a claim that can be argued both ways: it can be supported by the speech (“*Speak of me as I am*”), and resisted by the argument that self-punishment is the only justice available to him.

    *Step 3 — reject.* A and B moralise without evidence. D is plot.

    *Check.* Does C tell you what the essay will do? It does: show the performance, then weigh the justice. The answer is *C*.
  ],
  tier: "HARD",
)

// ============================================================================
== 5.5 The Play in Four Sentences

#rule-box("A model paragraph, dissected")[
  *Claim:* Othello does not become jealous; he is taught a method of reading. \\
  *Unit and evidence:* In Act 3 scene 3, Iago's “*Look to your wife*” arrives before any evidence, and Othello's “*Why, why is this?*” shows a man searching for a meaning he has already been given. \\
  *Mechanism:* The question is planted as an interpretation, so that everything afterwards — the handkerchief, the eavesdropping — is evidence for a verdict already reached. \\
  *Concession:* It might be objected that Othello demands proof, but the proof he demands is the kind Iago has taught him to accept.
]

// ============================================================================
== 5.6 The Two-Minute Set

#mcq(1, [Iago's method works because he], [tells lies about facts], [is a better soldier], [threatens Othello], [supplies interpretations and arranges coincidences])

#mcq(2, [Othello's language in Act 3 is marked by], [exclamation and repetition replacing argument], [prose], [long legal speeches], [rhymed couplets])

#mcq(3, [The play's central irony depends on], [Cassio's drinking], [the Duke's judgement], [the audience knowing more than Othello], [Bianca's jealousy])

#mcq(4, [Desdemona's plain speech matters because], [it is poetic], [nobody treats it as evidence], [it is comic], [it is in prose])

#mcq(5, [The handkerchief functions as], [a love token only], [a stage prop with no meaning], [an object whose meaning is supplied by whoever holds it], [proof of Cassio's guilt])

#answer-key-grid(("D", "A", "C", "B", "C"))

#answer-notes((
  ("B", [Iago rarely lies about facts; he lies about their meaning, and he stages coincidences.]),
  ("C", [The style fractures: exclamation and repetition take the place of the fluent public sentence.]),
  ("A", [The audience holds Iago's plan; Othello does not. Every irony runs through that gap.]),
  ("B", [Her sentences are clear and are not heard. The play's claim is about what counts as evidence.]),
  ("B", [The handkerchief means whatever the person holding it says it means — which is Iago's method in miniature.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: five acts, three moves, three stages of a style.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    *Othello* is five acts and five changes: a private marriage becomes a public mission, a soldier becomes a civilian, suspicion becomes certainty without evidence, a public man becomes a private executioner, and the truth arrives too late to save anyone. Iago works in three moves — he supplies the interpretation before the fact, he arranges a scene that can be read as evidence, and he keeps the one person who could explain silent. He almost never lies about a fact, which is why “honest Iago” is the play's most repeated and most ironic phrase. Othello's language is the play's argument: fluent and public in Act 1, fractured into exclamation in Act 3, reduced to repetition and command in Act 5, so that murder sounds like housekeeping. Desdemona's plain sentences are never accepted as evidence, which is the play's quietest claim about gender. The ending is a judgement question, and the best answers weigh the performance against the justice rather than choosing one.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Say what changes and what it costs in each of the five acts.],
  [Explain Iago's three moves without using the word “jealous”.],
  [Quote six to ten words from each of the three stages of Othello's style.],
  [State the play's claim about gender in one sentence.],
  [Write the first sentence of an answer to “Othello's suicide is an act of justice.”]
))

#concept-box("Carry this into Chapter 6")[
  The same method now moves to prose, where the evidence is a narrator rather than a stage. Watch for
  the difference: in *Othello* we see what characters do; in *Native Son* we are told what Bigger feels,
  and the telling is itself the thing to analyse.
]

#include "drill_ch05.typ"
