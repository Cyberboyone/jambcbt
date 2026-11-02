#import "template.typ": *

#current-chapter.update("Chapter 2: The Types of Drama")

#pagebreak()

#chapter-opener(
  2,
  "The Types of Drama",
  subtitle: "Tragedy, Comedy, Tragicomedy, Farce, Melodrama, Satire and the Forms Outside the Four — plus the Shape of a Plot",
  syllabus-ref: "Section 2 • Types of Drama",
  utme-weight: "6 Qs a year",
  running: "The Types of Drama",
)

#focus-radar(
  objectives: (
    "Say what a script is and what a performance adds to it.",
    "Distinguish tragedy from comedy by the direction of the ending, not the amount of suffering.",
    "Define hamartia, hubris, catharsis, peripeteia and anagnorisis, and place them in a plot.",
    "Sort comedy into its four working kinds and say what each one does to its characters.",
    "Tell tragicomedy from farce and both from melodrama.",
    "Name the forms that sit outside the four main types, including the African performance tradition.",
    "Map any plot onto exposition, complication, climax and denouement.",
  ),
  hotspots: (
    "“A tragedy ends in death; a comedy ends in marriage” is the *direction test*: tragedy closes with the hero isolated or destroyed, comedy closes with a community enlarged (a wedding, a reconciliation, a return).",
    "A question that offers “the tragic hero dies” as a definition of tragedy is offering the *consequence*. The definition is that the hero moves from high standing to ruin through an action he cannot undo.",
    "“Hamartia” is an error of judgment or a flaw of character, not fate and not villainy. Distractors usually say “the hero's ambition”, which is a plausible *instance* of hamartia and therefore the hardest kind of trap.",
    "Peripeteia is the *reversal* of fortune; anagnorisis is the *recognition* that follows it. The paper swaps them roughly once every two years.",
    "“Farce” is comedy of situation with improbable contrivance; “melodrama” is serious action with simplified virtue and villainy and an orchestra of feeling. Both are often offered as “comedy” and “tragedy”.",
  ),
  trap-summary: "Two habits fail here. (1) Judging the type by the quantity of suffering rather than by the shape of the ending — *Othello* kills his wife and is still a tragedy, while *Measure for Measure* opens with a death sentence and is still a comedy. (2) Treating “modern drama” as a type; the absurd play and the radio play are *media and movements*, not genres.",
)

// ============================================================================
== 2.1 Drama Is Two Texts

A play exists twice. The first is the *script* — dialogue, stage directions, a list
of characters, a division into acts and scenes. The second is the *performance* — the
same words in bodies, in light, in time, in front of people who react. The paper tests
the first and assumes the second, which is why a question can ask what a stage
direction *contributes* and not merely what it says.

#rule-box("What the script supplies, and what the theatre adds")[
  + *The script supplies* the words, the order of events, the entrances and exits, and the description of place.
  + *The theatre adds* pace, tone of voice, silence, proximity, light, and the audience's shared response — everything that turns a line into an event.
  + *The exam expects you to reason from the script to the theatre.* "What would the audience see at this moment?" is a legitimate way to reach the effect of a stage direction.
]

#text(size: 9.4pt)[This double life is why drama is the most *public* of the three genres. A novel's narrator can tell you what a character is thinking; a play cannot, except through speech, gesture, or the odd convention of the soliloquy. Everything a playwright wants the audience to know must be *made visible or audible*. Hold that constraint in mind, and most questions about dramatic technique answer themselves.]

#worked-example(
  1,
  "Script and performance",
  [A stage direction reads: *The lights come up slowly on a single chair, centre stage. He does not sit.* What does the direction contribute that the dialogue alone could not?

    A. It tells the actor which chair to use \
    B. It creates expectation and then withholds its satisfaction, so the character's refusal becomes visible before he speaks \
    C. It shows that the play is set indoors \
    D. It tells the audience how long the scene will last],
  [
    *Step 1 — separate information from effect.* A and C are information: a chair, an interior. Information can be given in a novel by a sentence, so it cannot be the reason the direction exists.

    *Step 2 — find what only the stage can do.* The lights come up *slowly*, on *one* chair, and then the character does *not* sit. The audience is made to expect a seating and is denied it. That denial is an action, and it happens in silence.

    *Step 3 — name the effect and give it a consequence.* Expectation, then refusal, then the words. The refusal colours everything he then says.

    *Check.* If the observation could be made about the printed page without a theatre, it is not about performance. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.2 Tragedy

A tragedy is a play in which a person of standing is brought down by an action he
takes, and the audience is left with pity and fear rather than merely with a body on
the floor. The definition has three moving parts: *standing* (so that the fall is a
fall), *agency* (the hero does something), and *consequence* (the action cannot be
undone). A play with a corpse and no agency is a melodrama. A play with agency and no
standing is a domestic drama.

#diagram-fig("diagrams/ch02_drama_types.svg",
  "The four types arranged by the direction of the ending. Suffering is not the test; the shape of the close is.", width: 100%)

#table(
  columns: (1.15fr, 2.05fr, 1.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where it falls in the plot],
  ),
  [*Hamartia*], [the error of judgment or defect of character that starts the fall — not fate, and not simple wickedness], [early; the choice that sets the action going],
  [*Hubris*], [the overweening pride that makes the error possible — a species of hamartia, not a synonym for it], [before the turn],
  [*Peripeteia*], [the reversal of fortune, from good to bad], [the hinge of the play],
  [*Anagnorisis*], [the recognition — the hero understands what he has done, or who the other person is], [at or just after the reversal],
  [*Nemesis*], [the retribution that follows, often through the working of the hero's own act], [the falling action],
  [*Catharsis*], [the purging of pity and fear that the audience feels at the close], [the last scene, and after],
)

#concept-box("Classical and Shakespearean tragedy differ in one place")[
  In classical tragedy the reversal usually comes from *outside* the hero — fate, the
  gods, a prophecy fulfilled. In Shakespearean tragedy it comes from *inside* — the
  hero's own character supplies the rope. That is why a question can ask whether a
  given play is “classical” or “Shakespearean” and expect the answer to point at the
  source of the downfall rather than the century.
]

#text(size: 9.4pt)[Modern tragedy moves the same machinery down the social scale. Willy Loman in *Death of a Salesman* is a salesman, not a king, and his hamartia is a set of beliefs he cannot revise. The fall is smaller in status and no smaller in weight, which is exactly the point: the type is defined by the *shape* of the fall, not the rank of the faller.]

#worked-example(
  2,
  "Naming the moment",
  [A hero discovers that the man he has just killed is his father, and only then understands the prophecy he has spent the play avoiding. The discovery is

    A. hamartia \
    B. peripeteia \
    C. anagnorisis \
    D. nemesis],
  [
    *Step 1 — establish what is being described.* A piece of knowledge arrives. The hero now knows something he did not know a moment before. Knowledge arriving is recognition.

    *Step 2 — separate recognition from reversal.* The reversal is the change of fortune — he has killed his father and the throne is now polluted. The *understanding* of that fact is the recognition. The two often occur in the same scene, which is why the paper can test the difference.

    *Step 3 — eliminate the rest.* Hamartia is the earlier error, and nemesis is the punishment that follows. Neither names an act of knowing.

    *Check.* Ask "what does he now know, and did he know it before?" The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 2.3 Comedy

Comedy is not the absence of pain; it is the presence of a *society that survives*.
Its ending enlarges the community — a marriage, a reconciliation, a return to the
family — and its method is to make human folly visible without destroying the person
who commits it. The moment a comic character is ruined rather than corrected, the play
has stopped being a comedy, whatever it is called.

#table(
  columns: (1.25fr, 2.05fr, 1.8fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Its engine],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it laughs at],
  ),
  [*Romantic comedy*], [two lovers kept apart by a blocking figure until a marriage resolves the block], [obstacles, disguises and the folly of parents],
  [*Comedy of humours*], [characters dominated by one ruling temperament — greed, jealousy, melancholy], [the person who is only one thing],
  [*Comedy of manners*], [the wit and etiquette of a social class, tested in drawing rooms], [affectation, snobbery, the wrong word in the right room],
  [*Satire*], [ridicule directed at vice or folly with a corrective purpose], [the target, and by implication the audience that tolerates it],
)

#trap-box("Comedy, farce, satire — the three doors out")[
  *Farce* leaves the room by *situation*: doors, coincidences, mistaken identities, speed. The characters are not criticised; they are simply overwhelmed.

  *Satire* leaves the room by *judgment*: the laughter has a direction and a victim outside the play as well as inside it.

  *Comedy of manners* leaves the room by *speech*: the wit is the action, and a character who cannot speak well is already defeated.
]

#text(size: 9.4pt)[A single play can use all three doors — *The Importance of Being Earnest* is farce in its plot, satire in its targets and comedy of manners in every line. When a stem asks "the play is best described as", it is asking which door the play *chiefly* leaves by, and the answer is the one the ending depends on.]

// ============================================================================
== 2.4 Tragicomedy, Farce and Melodrama

Between tragedy and comedy sits *tragicomedy*: a play in which the threat of disaster
is real and the ending is nonetheless a survival. It is not a mixture by accident. The
form is deliberate — a serious action is carried to the edge of ruin and then turned,
so the audience feels the relief of a escape it did not expect.

#diagram-fig("diagrams/ch02_plot_curve.svg",
  "The plot curve of a five-act play: exposition, complication, climax, falling action, denouement — with the reversal marked where the curve turns.", width: 96%)

#table(
  columns: (1.05fr, 1.55fr, 2.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The material],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The tell-tale sign],
  ),
  [*Tragicomedy*], [serious threat, survivable ending], [the audience is made afraid, then allowed to hope, and the hope is honoured],
  [*Farce*], [improbable situations at speed], [the plot would collapse if one character asked one sensible question],
  [*Melodrama*], [virtue persecuted, villainy unmasked], [characters are wholly good or wholly bad, and the music tells you which],
)

#rule-box("The three-question type test")[
  + *Where does it end?* Death or isolation → tragedy. Marriage, reunion, survival → comedy or tragicomedy.
  + *Is the threat real?* If the danger is genuine and the escape is earned, the play is a tragicomedy. If the danger is a contrivance, it is farce.
  + *Are the characters capable of contradiction?* Melodrama's characters are not; they are positions rather than people.
]

// ============================================================================
== 2.5 The Forms Outside the Four

Not every play fits the four types, and the syllabus names the ones that do not.

#table(
  columns: (1.2fr, 1.7fr, 2.1fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Form],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Its mark],
  ),
  [*History play*], [dramatised chronicle of a reign or a national crisis], [public events carry the private plot; the nation is a character],
  [*Morality play*], [an allegory in which abstractions walk as people], [the characters are named for what they are: Everyman, Fellowship, Good Deeds],
  [*Miracle play*], [a dramatised episode from scripture or the lives of the saints], [the source is doctrine, and the audience already knows the ending],
  [*Masque*], [a courtly entertainment of spectacle, music and dance], [the spectacle is the point; the words serve the scenery],
  [*Absurd play*], [a play that refuses cause and effect, and often plot itself], [circular dialogue, unexplained waiting, characters who cannot remember],
  [*Radio play*], [written for the ear alone], [every effect must be audible: sound cues replace the set],
  [*Closet drama*], [a play written to be read, not staged], [long speeches, little stage business, and an indifference to the physical stage],
)

#concept-box("Why the absurd play is not a comedy")[
  The absurd play often makes an audience laugh, and it is still not a comedy, because
  its ending enlarges nothing. Beckett's *Waiting for Godot* ends where it began, with
  two men still waiting; nothing has been corrected and no community has formed. Laughter
  is a response, not a definition.
]

// ============================================================================
== 2.6 African Drama and the Performance Tradition

African drama arrives at the script from a different direction. Its roots are in
*performance* — ritual, festival, masquerade, storytelling with a responding audience —
and the script is a later layer on top of that. The consequences for the exam are
specific and testable.

#rule-box("Four features that African drama brings to the page")[
  + *Total theatre.* Song, dance, drum, mime and speech are not decoration around the action; they *are* the action.
  + *The narrator-commentator.* A figure outside the story — the dirge-singer, the praise-singer, the chorus — who comments on it, so the audience is addressed and not merely shown.
  + *Audience participation.* Call and response, direct address, and a visible audience are built into the form.
  + *The communal protagonist.* The crisis belongs to a household or a village, so the "hero" may be a family, a lineage or a town rather than an individual.
]

#text(size: 9.4pt)[This is why a question about African drama so often turns on the presence of *music* or of a *commentator*. Neither is a flaw in stagecraft: both are the inheritance of a form in which the performance was never silent, and the audience was never a stranger.]

#worked-example(
  3,
  "Reading a chorus",
  [In a play, a group of villagers comments in song on the actions of the chief, and the song contradicts what the chief has just said. The device is best described as

    A. a soliloquy \
    B. a chorus functioning as commentator \
    C. comic relief \
    D. an aside],
  [
    *Step 1 — identify the group and its relation to the action.* They are outside the main action, they speak together, and they comment on a character's words. That is a chorus.

    *Step 2 — note the function.* The song contradicts the chief. A chorus that contradicts is not merely decorative; it is judging, and it gives the audience a reading of the chief's speech that the chief cannot control.

    *Step 3 — dismiss the near-misses.* A soliloquy is one person alone; an aside is one line to the audience; comic relief is a joke placed to relieve tension. None of the three is a group commenting in song.

    *Check.* Ask "who is speaking, and to whom about whom?" The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.7 Plot: The Shape of the Action

*Story* is the events in the order they happened. *Plot* is the events in the order the
play gives them, with what it withholds and for how long. Two plays can tell the same
story and have entirely different plots, which is why "plot" questions are really
questions about arrangement.

#table(
  columns: (1.15fr, 2.0fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What is established],
  ),
  [*Exposition*], [the situation is displayed before it is disturbed], [who wants what, and what stands in the way],
  [*Complication*], [the obstacle is engaged, and a second obstacle arrives], [that the problem is not simple],
  [*Climax*], [the highest point of tension, where the outcome is decided], [which way the play will go],
  [*Falling action*], [the consequences arrive], [what the decision cost],
  [*Denouement*], [the knot is untied, and the world is re-formed], [what the play now leaves standing],
)

#shortcut-box("Aristotle's unities, and what they are really for")[
  *Unity of action* — one plot, with everything contributing to it. This is the one still enforced; a subplot must echo the main plot, not merely fill the stage.

  *Unity of time* — the action falls within a single day, or close to it. *Unity of place* — one location. Both are conventions, and both are routinely broken; a question that says "Aristotle insisted on all three without exception" is false.
]

#text(size: 9.4pt)[A *subplot* is not a decoration. In a well-made play it doubles the main plot — two marriages instead of one, two fathers and two disobedient children — so that the audience can see the same mistake made twice, once to be punished and once to be forgiven. When a question asks for the function of a subplot, the answer is almost always *commentary by parallel*.]

#worked-example(
  4,
  "Where in the plot",
  [A play's first act establishes a household in debt; the second introduces a creditor's demand; the third brings the demand to a head and the debtor tears up the bond. The tearing of the bond is

    A. the exposition \
    B. the climax \
    C. the denouement \
    D. the falling action],
  [
    *Step 1 — trace the tension.* It rises through the demand and reaches its height when the debtor must decide. The tearing is the decision.

    *Step 2 — test the alternatives.* The exposition is over by the end of the first act. The denouement is what happens *after* the decision has been taken. The falling action is the arrival of consequences, which cannot precede the act that has consequences.

    *Step 3 — place it.* The highest point of tension, where the outcome is decided, is the climax.

    *Check.* Ask "could anything still go either way immediately before this moment?" If yes, and afterwards no, it is the climax. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.8 Drama in the Exam Hall — a Two-Minute Set

#mcq(1, [A tragedy is best defined as a play in which], [the hero dies], [a person of standing is brought down by an action he takes], [the ending is sad], [the gods punish a wicked man])

#mcq(2, [The reversal of a hero's fortune is called], [hamartia], [hubris], [peripeteia], [catharsis])

#mcq(3, [A play that ends with a marriage has most likely been], [a tragedy], [a comedy], [a history play], [a morality play])

#mcq(4, [A character who is wholly good or wholly bad, in a plot of persecuted virtue, belongs to], [farce], [melodrama], [satire], [tragicomedy])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [Standing plus agency plus irreversible consequence. Death is a frequent result, not the definition; a sad ending is not enough; and the gods punishing a wicked man removes the hero's agency altogether.]),
  ("C", [Peripeteia is the reversal. Hamartia is the error that causes it, hubris the pride behind the error, catharsis the purging at the close.]),
  ("B", [Marriage is comedy's habitual close because it enlarges the community. Tragedy closes in isolation, a history play in public consequence, and a morality play in a soul's judgment.]),
  ("B", [Simplified virtue and villainy in serious action is melodrama. Farce is improbable situation; satire directs ridicule at folly; tragicomedy keeps its characters capable of contradiction.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the four types, the six tragic terms and the five stages of a plot.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Drama is two texts at once — the script with its words and directions, and the performance with its bodies, light and time — which is why every question about stagecraft can be answered by asking what the audience would see. A tragedy takes a person of standing, gives him an action he cannot undo, and leaves the audience with pity and fear; its machinery runs hamartia, hubris, peripeteia, anagnorisis, nemesis, catharsis, in that order. A comedy ends by enlarging the community, and its four working kinds are romantic comedy, comedy of humours, comedy of manners and satire. Between them sits tragicomedy, which makes the danger real and then lets the characters survive it. Farce works by improbable situation, melodrama by simplified virtue and villainy, and neither is a synonym for comedy or tragedy. Outside the four sit the history play, the morality and miracle plays, the masque, the absurd play, the radio play and the closet drama. African drama brings total theatre, the narrator-commentator, audience participation and a communal protagonist. And under all of it is the plot: story is the order events happened, plot is the order the play gives them.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Say what a stage direction supplies that dialogue cannot.],
  [Define tragedy by its three moving parts, and say why "the hero dies" is not the definition.],
  [Place hamartia, peripeteia, anagnorisis and nemesis on a plot in the right order.],
  [Tell the four kinds of comedy apart, and say which one a given ending depends on.],
  [Distinguish tragicomedy from farce, and farce from melodrama, in one sentence each.],
  [Name four features African drama brings to the script.],
  [Map a play you know onto exposition, complication, climax, falling action and denouement.],
))

#concept-box("Carry this into Chapter 3")[
  Knowing that a play is a tragedy tells you what happens. Knowing *how* the playwright
  makes it happen — through the aside, the soliloquy, the pause before the exit — is what
  the next chapter is for. The questions there are finer and the marks the same, so the
  candidate who has the techniques has the cheaper marks.
]

#include "drill_ch02.typ"

#concept-box("After the drill — the three corrections worth making")[
  If you missed more than four questions, they will almost certainly cluster in one of
  three places: the ending test (tragedy or comedy), the reversal vocabulary
  (peripeteia against anagnorisis), or the forms outside the four. Reread only the
  section those questions came from, then redo the drill's last ten questions.
]
