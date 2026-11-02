#import "template.typ": *

#current-chapter.update("Chapter 4: Theme")

#pagebreak()

#chapter-opener(
  4,
  "Theme: The Ledger",
  subtitle: "Topic, Claim and Counter-Evidence; the Five Ledgers the Set Texts Share; and How to Argue a Theme in Four Sentences",
  syllabus-ref: "Section 2 • Themes and Issues",
  utme-weight: "5 Qs a year",
  running: "Theme",
)

#focus-radar(
  objectives: (
    "Turn a topic into a claim in one move.",
    "Keep a ledger of four columns for each theme.",
    "Name the counter-evidence that makes a theme arguable.",
    "Recognise the five themes the set texts share, and how each text inflects them.",
    "Answer a theme question without listing scenes.",
    "Take a set of questions on theme without confusing it with plot.",
  ),
  hotspots: (
    "A *topic* is a noun: jealousy, race, power. A *claim* is a sentence with a verb and a subject the text is arguing about.",
    "The ledger's fourth column is *counter-evidence*, and it is the column that separates a 55 from a 75.",
    "The same theme takes a different shape in each text: love in *Othello* is evidence, love in *Faceless* is a debt.",
    "“The theme of the novel is poverty” cannot be argued. “The novel argues that poverty is a room with no door” can.",
    "A theme answer needs three units, not ten: three well-chosen moments beat a tour of the whole text.",
  ),
  trap-summary: "Two failures. (1) Naming a topic and calling it a theme. (2) Supplying only evidence that supports your claim, so that the answer reads as a prosecution with the defence absent.",
)

// ============================================================================
== 4.1 Topic Is Not Theme

#diagram-fig("diagrams/ch04_ledger.svg",
  "From topic to claim to ledger. The claim is a sentence the text can be shown to argue; the ledger is the four columns that prove it.", width: 100%)

#table(
  columns: (1.35fr, 2.15fr, 1.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Topic],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Claim],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What makes it arguable],
  ),
  [Jealousy], [Jealousy in *Othello* is not an emotion but a method: it is what happens when love is asked for proof.], [it names a mechanism, not a feeling],
  [Race], [In *Native Son*, race is a room whose walls are other people's fear.], [it says what race *does*, not that it exists],
  [Power], [In *Harvest of Corruption*, power is a debt collected in advance.], [it predicts who will be ruined],
  [Poverty], [In *Faceless*, poverty is not a lack of money but a lack of witnesses.], [it explains why the child is not found],
  [Gender], [In *Lonely Days*, marriage is a room a woman is asked to furnish and forbidden to leave.], [it can be tested against the ending],
)

#concept-box("The verb test")[
  Read your sentence and underline the verb. If the verb is *is*, *has* or *shows*, you have probably
  written a topic with decoration. If the verb is *argues*, *turns*, *converts*, *costs*, *refuses* or
  *requires*, you are close to a claim.
]

// ============================================================================
== 4.2 The Ledger

#table(
  columns: (1.1fr, 1.75fr, 1.6fr, 1.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Column],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What goes in it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example — love in *Othello*],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it earns marks],
  ),
  [*Claim*], [one sentence, with a verb that argues], [love survives only where it is not asked to prove itself], [it can be wrong, and therefore it can be argued],
  [*Units*], [three, chosen for range], [the elopement; the temptation scene; the willow scene], [range shows the theme is structural, not local],
  [*Evidence*], [six to ten exact words per unit], [“*She loved me for the dangers I had passed*”], [quotation is what cannot be faked],
  [*Counter*], [the moment that resists your claim], [Othello's tenderness in Cyprus], [conceding it makes the verdict credible],
)

#shortcut-box("Three units, one arc")[
  Choose one unit from the *establishing* movement, one from the *pressure*, one from the *cost*. A theme
  argued across those three is proved structural, which is the highest thing a theme answer can prove.
]

// ============================================================================
== 4.3 The Five Ledgers the Set Texts Share

#table(
  columns: (1.0fr, 1.55fr, 1.55fr, 1.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[*Othello*],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[*Native Son*],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The African three],
  ),
  [*Love and trust*], [love destroyed by the demand for proof], [love as an idea Bigger cannot afford], [marriage as contract in *Lonely Days*; affection as risk in *Faceless*],
  [*Race and visibility*], [the Moor who is needed and not believed], [invisibility as a structural condition], [corruption as a system that sees only money],
  [*Power*], [military rank as a mask], [the law as a machine for naming], [the state as a ledger of favours],
  [*Poverty*], [not central, but present in the soldier's wage], [the rat, the rent, the furnace], [the price of a child in *Faceless*],
  [*Gender and silence*], [Desdemona and Emilia are heard at the cost of life], [Mary is heard by no one who can help], [the widow, the daughter, the wife in the dossiers],
)

#trap-box("“The theme is …”")[
  A sentence beginning “The theme is” has already lost the argument, because it announces a topic. Begin
  instead “The play argues that …”, or “What the novel makes visible is …”. The opening clause sets the
  register for the whole answer.
]

#worked-example(
  1,
  "Claim or topic?",
  [Which sentence is a theme claim rather than a topic?

    A. The theme of the play is jealousy. \\
    B. In *Othello*, jealousy is what love becomes when it is asked to produce evidence. \\
    C. Jealousy appears throughout the play in many scenes. \\
    D. Iago makes Othello jealous and this causes tragedy.],
  [
    *Step 1 — apply the verb test.* A has *is*; C has *appears*; D has *makes*. Only B has a verb that argues — *becomes* — and it names a mechanism.

    *Step 2 — test for falsifiability.* Could a critic disagree with B? Yes: one might argue that Othello's jealousy precedes the evidence. That disagreement is exactly what an essay needs.

    *Step 3 — choose.* B can be supported, qualified and judged. The others can only be agreed with.

    *Check.* Does the sentence tell you which scenes to use? B does: the temptation scene, the handkerchief, the eavesdropping. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.4 Counter-Evidence

An essay that only accuses is a prosecution without a defence. The counter-evidence column
is where you admit the moment that resists you, and then explain why your claim survives it.

#table(
  columns: (1.45fr, 2.0fr, 1.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Claim],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Counter-evidence],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[How the claim survives],
  ),
  [Othello is destroyed by a need for proof], [he refuses proof when it is offered — Desdemona's plain denial], [the refusal shows the need is for a *kind* of proof: one that confirms him],
  [Bigger is a victim of a system], [he chooses to kill Bessie, and the choice is his], [the system explains the choice without excusing it, which is the novel's argument],
  [Corruption is systemic in *Harvest*], [individuals do resist, and briefly succeed], [their success is short and their cost is total],
)

#concept-box("The concession sentence")[
  Learn one sentence of concession and use it once per essay: *“It might be objected that …, but that
  objection actually strengthens the claim, because …”* Concession is not weakness; it is the moment a
  marker decides you can be trusted with a judgement.
]

// ============================================================================
== 4.5 Arguing a Theme in Four Sentences

#rule-box("The four-sentence paragraph")[
  + *Claim.* One sentence, arguable, with a verb that argues.
  + *Unit and evidence.* Name the scene and give six to ten exact words.
  + *Reading.* Say what the words do — the mechanism, not the mood.
  + *Concession and return.* Admit the resisting moment, then say why the claim holds.
]

#worked-example(
  2,
  "Building the paragraph",
  [Which version of the third sentence — the *reading* — actually explains a mechanism?

    A. This shows that Othello is very jealous here. \\
    B. The repetition turns his wife's word into a thing that can be examined, which is exactly what he has asked Iago for. \\
    C. Shakespeare uses repetition for emphasis. \\
    D. This is a very powerful moment in the play.],
  [
    *Step 1 — ask what a mechanism is.* A mechanism names a *relation*: word to word, or word to action. A names a feeling; C names a device; D names an effect on the reader and no cause.

    *Step 2 — test B.* “Turns his wife's word into a thing” names a conversion — speech into object — and connects it to the demand for evidence. That is a mechanism, and it can be shown in the next sentence.

    *Step 3 — choose.* B advances the argument; the others decorate it.

    *Check.* Could the sentence appear in an essay on a different play? B could not. The answer is *B*.
  ],
  tier: "HARD",
)

#worked-example(
  3,
  "Choosing the counter-evidence",
  [Your claim is that *Faceless* treats poverty as a lack of witnesses. Which counter-evidence most needs answering?

    A. The novel contains several poor characters. \\
    B. Some characters do try to help the child. \\
    C. The novel is set in a city. \\
    D. The child is a minor character.],
  [
    *Step 1 — define counter-evidence.* It must be a moment in the text that a reader could offer *against* your claim. A, C and D are facts with no bearing on it.

    *Step 2 — test B.* People try to help, and their help fails. That is the strongest objection: if help exists, the lack is not of witnesses.

    *Step 3 — answer it.* The help fails because the helpers have no standing — they cannot make the child *count*. The novel distinguishes goodwill from witness, which is the claim.

    *Check.* Does answering B make the essay better? It makes it arguable. The answer is *B*.
  ],
  tier: "HARD",
)

// ============================================================================
== 4.6 The Two-Minute Set

#mcq(1, [A theme claim differs from a topic because it], [is shorter], [can be disagreed with and defended], [appears in the title], [names a character])

#mcq(2, [The ledger's fourth column holds], [the page numbers], [the author's biography], [counter-evidence — the moment that resists the claim], [quotations])

#mcq(3, [Three units for a theme paragraph should be chosen from], [the same scene], [the beginning of the text only], [the chapters you remember best], [the establishing movement, the pressure and the cost])

#mcq(4, [A concession sentence makes an essay], [weaker], [credible, because it shows the claim has been tested], [less accurate], [longer])

#mcq(5, [“This shows that the character is sad” fails because it], [misquotes], [names a feeling instead of a mechanism], [is too short], [uses the wrong tense])

#answer-key-grid(("D", "A", "C", "B", "C"))

#answer-notes((
  ("B", [A claim can be contested and defended; a topic can only be agreed with.]),
  ("C", [The fourth column is the objection, and answering it is what separates a strong essay from a prosecution.]),
  ("C", [Range across the arc is what proves a theme structural rather than local.]),
  ("D", [Concession is a test of confidence; an essay with no objection reads as unexamined.]),
  ("B", [A feeling is not a mechanism. The reading sentence must name how the words work.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: topic, claim, ledger, counter-evidence.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A topic is a noun and a claim is a sentence, and the difference is a verb: *is* and *shows* name topics, while *becomes*, *converts*, *costs* and *refuses* make claims. The ledger holds four columns — claim, three units chosen for range across the establishing movement, the pressure and the cost, six to ten exact words of evidence per unit, and the counter-evidence that resists the claim. The fourth column is the one that earns the top band, because an essay with no objection in it reads as a prosecution. The set texts share five ledgers — love and trust, race and visibility, power, poverty, gender and silence — but each text inflects them differently, so the theme is never the same theme twice. The paragraph is four sentences: claim, unit and evidence, mechanism, concession and return. A reading sentence names a relation, never a mood.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Turn three topics into claims, using a verb that argues.],
  [Fill a four-column ledger for one theme in one text.],
  [Write a concession sentence, and the sentence that answers it.],
  [Choose three units that span the arc of a text.],
  [Take one theme question and answer it in exactly four sentences.]
))

#concept-box("Carry this into Chapter 5")[
  Everything so far has been method. Chapter 5 applies it to a single play, act by act, so that
  the method can be seen doing its work on a text you will be examined on.
]

#include "drill_ch04.typ"
