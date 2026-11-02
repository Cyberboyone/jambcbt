#import "template.typ": *

#current-chapter.update("Chapter 3: Othello")

#pagebreak()

#chapter-opener(
  3,
  "Othello",
  subtitle: "William Shakespeare — Venice, Cyprus, the Handkerchief, and the Anatomy of a Manipulation",
  syllabus-ref: "Section 2 • Prescribed Drama",
  utme-weight: "4 Qs a year",
  running: "Othello",
)

#focus-radar(
  objectives: (
    "Place the play: Venice and Cyprus, and what each place allows.",
    "Follow the five acts, and name the scene in which each turning point falls.",
    "Hold the characters apart, including the three whose functions are easily confused.",
    "Give the play's themes with the scenes that prove them.",
    "Read the imagery: the handkerchief, the animals, the light and the dark.",
    "Answer the questions the paper asks about jealousy, race and Iago's method.",
  ),
  hotspots: (
    "The handkerchief is Othello's first gift to Desdemona, embroidered with strawberries, and it came to him from his mother. It is the play's proof-machine: once Iago has it, he can manufacture evidence out of nothing.",
    "Iago's motive is deliberately under-supplied. He offers several — passed over for promotion, suspicion that Othello slept with Emilia — and the play refuses to settle on one, which is why “Iago is motivated by jealousy” is a weak option and “Iago's motives are multiple and unproven” is a strong one.",
    "The temptation scene is Act 3 scene 3, not Act 2. The brawl, the demotion and the suggestion of an affair come earlier; the poisoning happens in 3.3.",
    "Desdemona is smothered, not stabbed. Othello stabs himself. Emilia is stabbed by Iago. Roderigo is killed by Iago. The play's violence is almost entirely Iago's, executed by other hands.",
    "Cassio is made governor of Cyprus at the end — the man whose reputation was destroyed is the one who inherits the state.",
  ),
  trap-summary: "Three slips. (1) Placing the temptation in the wrong act. (2) Saying Othello is jealous by nature, when the play shows a man who says he is “not easily jealous” being made jealous by art. (3) Treating Iago as a motiveless devil, when the play supplies several motives and refuses to confirm any of them — which is a more accurate and more examinable point.",
)

// ============================================================================
== 3.1 The World of the Play

The play begins in *Venice*, a city of law, money and reputation, and moves to
*Cyprus*, a garrison island at war. The move matters. Venice is a place where a
marriage can be defended in front of a duke; Cyprus is a place where there is no
duke, no senate and no father — only soldiers, wine and time. Iago's method needs
privacy, and the play gives it to him by taking everyone to an island.

#rule-box("Two places, two kinds of order")[
  + *Venice.* Brabantio's house, the Duke's council chamber, the Sagittary inn. Speech is public and legal; accusations are answered in front of authority.
  + *Cyprus.* A harbour, a guardroom, a garden, a bedchamber. Speech becomes private, and what cannot be proved in public is whispered in private.
  + *The sea.* The storm that destroys the Turkish fleet removes the external enemy and leaves the characters with nothing to do but watch each other.
]

#text(size: 9.4pt)[The war ends before the plot begins. The Turkish fleet is scattered in Act 2, and the play's remaining three acts are a peacetime tragedy — which is exactly the point. Othello is a general without a war, and a man with time on his hands is a man Iago can work on.]

// ============================================================================
== 3.2 The Five Acts

#diagram-fig("diagrams/ch03_othello_arc.svg",
  "The fall, act by act. The steepest drop is between the handkerchief and the fit.", width: 96%)

#table(
  columns: (0.45fr, 2.6fr, 2.0fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Act],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it establishes],
  ),
  [*1*], [Iago and Roderigo wake Brabantio; the elopement is discovered; the Duke hears the case and lets Desdemona go with Othello; Iago advises Roderigo to follow], [the marriage is legitimate, and Iago's hatred is declared],
  [*2*], [The storm destroys the Turkish fleet; Cassio is demoted after a drunken brawl that Iago engineers; Iago advises Cassio to appeal through Desdemona], [the instrument is placed: Cassio's suit gives Iago his “evidence”],
  [*3*], [Cassio presses Desdemona; Iago begins the poisoning; Desdemona drops the handkerchief, Emilia gives it to Iago, and Othello demands proof], [the temptation scene; the proof is manufactured],
  [*4*], [Iago stages a conversation with Cassio about Bianca for Othello to overhear; Othello strikes Desdemona and falls into a fit; Lodovico arrives from Venice], [the public collapse; the private decision],
  [*5*], [Roderigo is killed by Iago; Othello smothers Desdemona; Emilia reveals the truth and is stabbed; Othello stabs himself; Cassio governs Cyprus], [the truth arrives one scene too late],
)

#text(size: 9.4pt)[Two scenes carry more marks than the other three acts combined. Act 3 scene 3 — the temptation — is where the language changes and Othello begins to repeat Iago's words back to him. Act 5 scene 2 — the murder — is where the play's imagery of light and darkness closes, in the line *Put out the light, and then put out the light.*]

#concept-box("Double time")[
  The play runs on two clocks. The action on stage takes a few days, but the
  characters talk as though months have passed — Cassio's suit, the supposed affair,
  Lodovico's arrival. Shakespeare needs the long time for a marriage to sour and the
  short time for the audience not to notice the impossibility. If a question asks
  why the play feels rushed in Act 4, the answer is that it is deliberately
  compressed: the audience must feel the speed of a jealousy that has no evidence.
]

// ============================================================================
== 3.3 The Characters

#table(
  columns: (1.0fr, 2.5fr, 1.65fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The line that defines them],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Function],
  ),
  [*Othello*], [a Moorish general whose confidence is borrowed from his profession and his reputation], [the fallen hero],
  [*Desdemona*], [a Venetian senator's daughter who chooses the man rather than the city], [the innocent who is made evidence],
  [*Iago*], [an ensign who explains himself too often to be telling the truth], [the manipulator],
  [*Emilia*], [Iago's wife, Desdemona's attendant, and the play's final witness], [the truth-teller who pays with her life],
  [*Cassio*], [a Florentine lieutenant whose reputation is his fortune], [the decoy],
  [*Roderigo*], [a wealthy fool in love with Desdemona, and Iago's purse], [the money and the alibi],
  [*Brabantio*], [a senator who believes his daughter has been stolen by magic], [the law and the prejudice of Venice],
  [*The Duke*], [the authority that resolves the marriage and then disappears], [the limit of public order],
  [*Bianca*], [Cassio's mistress, used to make a conversation look like adultery], [the unwitting prop],
  [*Lodovico*], [the Venetian envoy whose arrival measures how far Othello has fallen], [the state's witness],
)

#diagram-fig("diagrams/ch03_othello_web.svg",
  "Iago's method: four handles, one hand. Each handle is a weakness the victim already has.", width: 100%)

#text(size: 9.4pt)[The web is the play's engine. Iago never invents a desire; he finds one and pulls. Roderigo wants Desdemona, Cassio wants his rank, Othello wants certainty, and Emilia wants to please her husband. The tragedy is that none of the four is a sin, and all four are enough.]

// ============================================================================
== 3.4 The Themes

#table(
  columns: (1.05fr, 2.2fr, 1.9fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The claim the play makes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The scenes that prove it],
  ),
  [*Jealousy*], [it is not a temperament but a technique — something done to a person by someone who knows where to press], [3.3; 4.1; the fit],
  [*Appearance and reality*], [the honest man is the villain, and the proof is a piece of cloth], [“honest Iago”; the handkerchief],
  [*Race and otherness*], [Venice needs Othello's sword and cannot accept his marriage], [1.1; 1.3; Brabantio's “nature erring”; the animal imagery],
  [*Reputation*], [a name is worth more than the truth, and both are easily lost], [Cassio's “reputation, reputation”; the brawl],
  [*Love and trust*], [love without knowledge is a gamble, and Othello stakes everything on one throw], [1.3; the reunion in Cyprus; 5.2],
  [*Women and obedience*], [the play contrasts a daughter's duty, a wife's obedience and a servant's loyalty], [Emilia's speech on wives; Desdemona's “obedient”],
  [*Deception*], [evil succeeds by being plausible, not by being strong], [Iago's asides; the staged eavesdropping],
)

#concept-box("The play's most examinable sentence")[
  Othello says he is “not easily jealous” and is made jealous in a single afternoon.
  That contradiction is the play. If jealousy were his nature, Iago would be
  unnecessary; if it were entirely Iago's art, Othello would be innocent. The
  tragedy requires both, and a good answer says so in one sentence.
]

// ============================================================================
== 3.5 Imagery and Language

#table(
  columns: (1.1fr, 2.2fr, 1.85fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Image],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Where it appears],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it carries],
  ),
  [*Animals*], [“an old black ram”, “the beast with two backs”, “goats and monkeys”], [the language of race, and Othello's own surrender to it],
  [*Light and dark*], [“Put out the light”, the lamp before the murder], [the murder as a blackout, and Desdemona as the light],
  [*The handkerchief*], [3.3 and 4.1], [love turned into evidence; a mother's gift turned into a prosecutor's exhibit],
  [*The sea and the storm*], [2.1], [the war that ends, and the weather that judges],
  [*Poison and medicine*], [“the Moor is of a free and open nature”, “drop poison in his ear”], [Iago's method described in his own metaphor],
  [*The green-eyed monster*], [3.3], [jealousy named as a creature that feeds on what it is given],
)

#rule-box("Three language facts the paper can ask about")[
  + *Othello's verse collapses.* He begins in the elevated, exotic speech of Act 1 and ends in broken prose and repetition — “the handkerchief” said again and again.
  + *Iago speaks in prose when he plots* and in verse when he performs. The switch is a stage direction in itself.
  + *Desdemona's speech is simple and direct,* which is why her lines are the hardest to quote impressively and the easiest to quote accurately.
]

// ============================================================================
== 3.6 Four Worked Questions

#worked-example(
  1,
  "The prop",
  [The handkerchief matters because

    A. it is worth a great deal of money \\
    B. it was Othello's first gift to Desdemona, and its possession can be made to prove adultery \\
    C. it belonged to Brabantio \\
    D. it is the sign of Cassio's rank],
  [
    *Step 1 — locate the object.* It is the strawberry-spotted handkerchief Othello gave Desdemona, which came to him from his mother.

    *Step 2 — trace its movements.* Desdemona drops it; Emilia picks it up and gives it to Iago; Iago plants it in Cassio's lodgings; Cassio gives it to Bianca; Othello sees Bianca with it.

    *Step 3 — say what it does.* Nothing in the play proves adultery, but the handkerchief lets Iago *appear* to prove it, which is enough for Othello.

    *Check.* Its power is evidentiary, not financial or heraldic. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The turn",
  [The temptation of Othello takes place in

    A. Act 2 scene 3, after the brawl \\
    B. Act 3 scene 3, after Desdemona has promised to plead for Cassio \\
    C. Act 4 scene 1, during the fit \\
    D. Act 5 scene 2, before the murder],
  [
    *Step 1 — establish the precondition.* Desdemona's promise gives Iago his material: her advocacy looks like partiality.

    *Step 2 — find the scene.* That promise is made at the end of 3.3's opening movement, and Iago begins his work in the same scene — “Did Michael Cassio, when you wooed my lady, know of your love?”

    *Step 3 — distinguish.* 2.3 is the brawl that removes Cassio; 4.1 is where the poison has already worked and Othello is reduced to eavesdropping and a fit.

    *Check.* The turn is the long central scene. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Iago's motive",
  [Iago's hatred of Othello is presented in the play as

    A. a single clear motive: Cassio's promotion \\
    B. entirely motiveless malice, with no reason given \\
    C. a set of overlapping and unproven suspicions, of which the promotion is one \\
    D. a political quarrel with the Duke],
  [
    *Step 1 — collect the evidence.* He says he was passed over for lieutenant; he says he suspects Othello with Emilia; he says he loves Desdemona himself; and he says “I hate the Moor” without a reason.

    *Step 2 — weigh it.* The play supplies several motives and confirms none, which is why single-motive answers fail.

    *Step 3 — choose the formulation that matches.* Overlapping, unproven and partly confessed is the accurate description, and it is the one that survives a question about his soliloquies.

    *Check.* B is too absolute — reasons *are* given — and A and D are too simple. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "The close",
  [At the end of the play, Cassio is

    A. executed for the death of Roderigo \\
    B. made governor of Cyprus \\
    C. returned to Venice in disgrace \\
    D. killed by Iago],
  [
    *Step 1 — locate the final scene.* Othello, told the truth by Emilia, stabs himself; Iago is taken; Cassio is left standing.

    *Step 2 — recall the disposition.* Othello's last act is to ask that Cassio's worth be remembered, and Lodovico names Cassio governor.

    *Step 3 — eliminate.* Roderigo's death is blamed on Iago, Cassio's reputation is restored rather than ruined, and Iago is arrested rather than killed.

    *Check.* The man whose name was destroyed inherits the state. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.7 Two-Minute Set

#mcq(1, [Othello is a], [Venetian senator], [Moorish general in the Venetian service], [Duke of Cyprus], [Florentine lieutenant])

#mcq(2, [Iago's rank is], [lieutenant], [ensign], [governor], [senator])

#mcq(3, [Desdemona is killed by], [poison], [a sword], [being smothered], [a fall])

#mcq(4, [Emilia's role in the catastrophe is], [she plants the handkerchief], [she tells Othello the truth about the handkerchief and Iago], [she urges Othello to kill Desdemona], [she escapes with Roderigo])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [He is a Moorish general serving Venice — a soldier the state needs and a foreigner it distrusts, which is the play's political tension. Cassio is the Florentine lieutenant.]),
  ("B", [Iago is Othello's ancient, or ensign. Cassio holds the lieutenancy that Iago wanted, which is the first motive he offers.]),
  ("C", [Othello smothers her in Act 5 scene 2. Desdemona briefly revives to speak, which makes the scene's cruelty worse, not less.]),
  ("B", [Emilia's testimony turns the plot: she explains the handkerchief and names her husband, and is stabbed for it. She does not plant it — she finds it and gives it to Iago.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the machine, the object, the turn and the close.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Shakespeare moves the play from Venice, where law and reputation govern, to Cyprus, where a garrison has nothing to do but watch itself — and the move is what makes Iago's method possible, because slander needs privacy. In Act 1 the marriage is defended and approved; in Act 2 the Turkish fleet is destroyed and Cassio is demoted after a drunken brawl Iago engineers; in Act 3 Cassio's suit gives Iago his material, Desdemona drops the handkerchief, Emilia hands it to her husband, and Othello is tempted into demanding proof; in Act 4 the proof is staged and Othello strikes his wife and falls into a fit; in Act 5 Roderigo and Emilia die, Othello smothers Desdemona and stabs himself, and Cassio — the man whose reputation was destroyed — is made governor. The handkerchief is the play's proof-machine: a gift from Othello's mother, embroidered with strawberries, which becomes evidence of adultery without proving anything. The themes are jealousy as technique rather than temperament, appearance against reality, race, reputation, love without knowledge, and the position of women — and the play's central sentence is Othello's claim that he is not easily jealous, made by a man who is destroyed in an afternoon.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Name the two settings and say what each allows.],
  [Place the temptation, the demotion and the fit in their acts.],
  [Trace the handkerchief through five hands.],
  [Give three of Iago's motives, and say why the play does not settle on one.],
  [Say who kills whom, and who is left standing.],
  [Quote one line of Othello's and one line of Iago's, and say what each reveals.]
))

#concept-box("Carry this into Chapter 4")[
  A play can show you a mind from the outside; a novel can put you inside one. The
  next chapter turns to *Faceless*, where the mystery is not who is speaking but who
  has been allowed to remain anonymous — and where an institution rather than a
  villain does the detective work.
]

#include "drill_ch03.typ"
