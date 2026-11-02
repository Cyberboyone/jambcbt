#import "template.typ": *

#current-chapter.update("Chapter 3: Dramatic Technique")

#pagebreak()

#chapter-opener(
  3,
  "Dramatic Technique",
  subtitle: "Dialogue as Action, Soliloquy and Aside, Stage Directions, Dramatic Irony, the Visual Apparatus and the Frame Devices",
  syllabus-ref: "Section 2 • Dramatic Techniques",
  utme-weight: "6 Qs a year",
  running: "Dramatic Technique",
)

#focus-radar(
  objectives: (
    "Explain why dialogue on stage is a form of action rather than conversation.",
    "Tell a monologue, a soliloquy and an aside apart, and say what each one gives the audience.",
    "Read a stage direction for its effect, including directions that command silence.",
    "Define dramatic irony and distinguish it from verbal irony and suspense.",
    "Use costume, props, set, lighting and music as evidence.",
    "Recognise the frame devices: chorus, narrator, play-within-a-play, dumb show, direct address.",
    "Explain the work done by comic relief, contrast and the division into acts and scenes.",
  ),
  hotspots: (
    "“A soliloquy is spoken alone on stage; a monologue may be spoken in company.” The paper offers “a long speech” for both, which is true of neither definition.",
    "An aside is heard by the audience and not by the other characters — the distinction is *who is allowed to hear*, not length.",
    "Dramatic irony requires a *gap* between what a character knows and what the audience knows. A statement that is merely false is not irony; the audience must be in on the truth.",
    "Stage directions are evidence. A question that quotes *She does not answer* and asks what it shows is asking about silence as a dramatic action.",
    "“Play-within-a-play” is a device, not a genre. It comments on the main action, and the comment is usually the point.",
  ),
  trap-summary: "Three slips. (1) Treating every long speech as a soliloquy. (2) Calling any unhappy event “dramatic irony”. (3) Ignoring the non-verbal evidence — costume, prop and light — when a question has deliberately quoted it.",
)

// ============================================================================
== 3.1 Dialogue Is Action

On stage, people do things with words. A threat, a refusal, a joke that wounds, a
compliment that is really a warning — each changes the situation, and the change is
what the audience watches. Dialogue in a play is therefore not two characters
exchanging information; it is two characters *trying to move each other*.

#rule-box("Three questions to ask of any exchange")[
  + *Who has the power in this exchange, and does it change?* The character who controls the turn-taking usually controls the scene.
  + *What is being done to the other person?* Warned, shamed, flattered, stalled, exposed. Name the act, not the topic.
  + *What is not being said?* Drama lives on the unsaid, because the audience can see a character avoiding a subject that everyone in the room knows.
]

#table(
  columns: (1.15fr, 2.25fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Pattern],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it looks like on the page],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does],
  ),
  [*Stichomythia*], [short alternating lines, one after another], [turns conflict into a duel at speed],
  [*Interruption*], [a dash, a broken line, a speech that never finishes], [shows who cannot be allowed to speak],
  [*Repetition*], [a character repeats the other's word back], [refuses the other's framing of the situation],
  [*Silence*], [a question followed by a stage direction, not an answer], [gives the audience the answer the character withholds],
)

#worked-example(
  1,
  "What the exchange is doing",
  [A: *You will not go.* B: *I will.* A: *Then you will go without a father.* B: *I have one.* Which describes the movement of this exchange?

    A. It gives information about the family \
    B. B refuses A's authority and turns A's threat back on him \
    C. It shows that B is polite \
    D. It establishes the setting],
  [
    *Step 1 — identify the acts, not the topic.* A commands, B refuses, A threatens, B answers the threat with a claim that undercuts it. Four moves in four short lines.

    *Step 2 — see the turn.* The exchange begins with A in control and ends with B in control, because B's last line takes A's weapon — the father — and claims it.

    *Step 3 — test the distractors.* Information about the family is a by-product. Politeness is contradicted by the bare refusals. Setting is not mentioned at all.

    *Check.* Ask "who has the power at the end?" The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.2 Monologue, Soliloquy, Aside

These three are the paper's favourite confusion, and the differences are precise.

#diagram-fig("diagrams/ch03_speech_modes.svg",
  "Who speaks, who hears, and what the audience is given. The three modes differ in audience, not in length.", width: 100%)

#table(
  columns: (0.95fr, 1.35fr, 1.05fr, 1.2fr, 1.45fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Mode],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Who speaks],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Who hears],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Length],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What the audience gains],
  ),
  [*Monologue*], [one character, others may be present], [everyone on stage], [long, but not fixed], [a case argued in public],
  [*Soliloquy*], [one character, alone], [the audience only], [long], [the private mind, unedited],
  [*Aside*], [one character, among others], [the audience only], [a line or two], [a judgment the speaker dare not voice],
)

#trap-box("The three tests")[
  *Are other characters present?* If yes, it cannot be a soliloquy, however long it is.

  *Can the others hear it?* If not, it is an aside, however short — and asides are often the most revealing lines in the scene.

  *Is it an argument or a confidence?* A monologue argues a case to those present; a soliloquy thinks aloud. That is why soliloquies so often change the speaker's mind mid-speech.
]

#text(size: 9.4pt)[A soliloquy is not a diary entry. It is a scene in which a mind is shown *working* — hesitating, reversing, deciding — and the audience watches the decision being made. When a question asks what a soliloquy contributes, the answer is almost always that it makes a private process visible, and that it commits the character in front of witnesses who cannot answer back.]

#worked-example(
  2,
  "Naming the mode",
  [During a dinner scene, a character turns to the audience and says, *They will never guess what I have in my pocket*, then resumes the conversation. The line is

    A. a soliloquy \
    B. an aside \
    C. a monologue \
    D. a stage direction],
  [
    *Step 1 — check the company.* Others are present and the scene continues around the line, so it is not a soliloquy.

    *Step 2 — check who hears.* The other characters do not hear, and the audience is addressed directly. That is the defining condition of an aside.

    *Step 3 — check the length.* A short line dropped into company is typical of the aside; length is not the test, but it corroborates.

    *Check.* Ask "who is allowed to hear this?" The answer is *B*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 3.3 Stage Directions, Silence and Business

A stage direction is the playwright's only way of writing into the script what the
audience will *see* rather than hear. It is therefore never neutral: it is either
setting up an expectation, undercutting a line, or carrying an action that the
dialogue cannot state.

#concept-box("The revealing direction")[
  Directions fall into four working kinds: *entrance and exit* (who arrives, and who
  is left with whom), *business* (what is done with an object), *manner* (how a line is
  spoken: *sharply*, *as if to herself*), and *silence* (*She does not answer*; *A pause*).
  The fourth kind does the most work in an exam, because it can only be explained by
  what the silence protects.
]

#text(size: 9.4pt)[*Business* is the technical term for stage action with an object — a hand on a door, a cup set down, a letter folded twice. Business is useful precisely because it can contradict speech: a character who says he does not care while straightening the same photograph for the third time is telling the audience the truth with his hands. When a question quotes an action of this kind, the answer is always about the *contradiction*.]

#shortcut-box("Reading a direction in four seconds")[
  + *Highlight the negative.* "Does not", "never", "without answering" — the refusal is the action.
  + *Locate the object.* Which prop is being touched, and by whom?
  + *Ask who is watching.* A gesture seen by one character and not another is a piece of plot.
  + *Then write the effect as a sentence about the audience, not the actor.*
]

#worked-example(
  3,
  "What the silence carries",
  [A stage direction reads: *He holds out the letter. She looks at it, then at him, and goes on folding the cloth.* What does the direction chiefly convey?

    A. She has not seen the letter \
    B. Her refusal is deliberate, and it is expressed as ordinary work \
    C. She cannot read \
    D. The letter is unimportant],
  [
    *Step 1 — read the sequence.* She looks at the letter, then at him — so she has seen both — and then continues with the cloth. The order rules out inattention.

    *Step 2 — interpret the return to work.* Folding the cloth is domestic, repetitive and entirely ordinary. Setting it beside the letter makes the refusal visible without a word.

    *Step 3 — state the effect.* The audience sees a decision taken in a gesture, and sees how much it costs her to keep her hands steady.

    *Check.* If the option requires her not to have seen what she plainly sees, it is wrong. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.4 Dramatic Irony, Suspense and Foreshadowing

Irony is a gap between what is said and what is meant, or between what is known and
what is true. Drama can open that gap in three places, and the paper names all three.

#diagram-fig("diagrams/ch03_irony.svg",
  "Three ironies. Only the third requires a stage: the audience knows what the character does not.", width: 100%)

#table(
  columns: (1.2fr, 2.0fr, 1.8fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The gap],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Example in a play],
  ),
  [*Verbal irony*], [the speaker means the opposite of the words], [“How kind of you to come” said to a man who has ruined the evening],
  [*Situational irony*], [the outcome reverses the expectation], [the firefighter's house burns down; the peacemaker starts the war],
  [*Dramatic irony*], [the audience knows what the character does not], [the audience has seen the letter; the character proposes without it],
)

#text(size: 9.4pt)[Dramatic irony is the most powerful of the three because it converts the audience into accomplices. The character speaks in good faith and the house winces, and the wince is the point: the audience is made to feel the coming disaster before it arrives. *Suspense* is the same knowledge used to hold attention; *foreshadowing* is the planting of that knowledge, often by an image or a small action that only makes sense later.]

#trap-box("What dramatic irony is not")[
  It is not simply a sad event. It is not a coincidence. It is not the audience being surprised. It requires *superior knowledge held by the audience and withheld from a character*, and if a question's option does not mention that gap, it is not dramatic irony.
]

#worked-example(
  4,
  "Which irony",
  [The audience has watched the servant poison the wine. The host raises the cup and says, *To my guest — the truest friend I have.* The line is an example of

    A. verbal irony \
    B. situational irony \
    C. dramatic irony \
    D. comic relief],
  [
    *Step 1 — identify what the audience knows.* They saw the poison. The host does not know.

    *Step 2 — identify what the words mean.* The host means his compliment; he is not being sarcastic. So it is not verbal irony, whatever the audience hears in it.

    *Step 3 — name the structure.* Superior knowledge on the audience's side, ignorance on the character's, is dramatic irony.

    *Check.* If the speaker is sincere and the audience is not fooled, the irony is dramatic. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.5 The Visual Apparatus

Costume, props, set, lighting and music are part of the text's meaning, and a
question that names one of them is asking you to read it as evidence.

#table(
  columns: (0.95fr, 2.2fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it can establish without a word],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question it usually answers],
  ),
  [*Costume*], [rank, period, self-image, change of fortune], [how has the character changed since Act 1?],
  [*Props*], [ownership, memory, the object that carries the argument], [why does this object keep returning?],
  [*Set*], [space, confinement, exposure, the world outside], [what does the room allow and forbid?],
  [*Lighting*], [focus, secrecy, the shift from public to private], [what is being hidden, and from whom?],
  [*Music and song*], [mood, ritual, commentary, the presence of a community], [what does the song say that the dialogue will not?],
  [*Mime and dance*], [action without words, ceremonial time], [what is being performed rather than said?],
  [*Tableau*], [a frozen arrangement of bodies that states the play's argument], [who is standing, and who is kneeling?],
)

#concept-box("Costume as a plot in miniature")[
  A change of costume is a change of status, and a play that dresses a character
  twice has told you the story of his rise or fall without a line of dialogue. Ask
  what the character wore when he had power, and what he wears when he has lost it;
  the difference is the theme in cloth.
]

// ============================================================================
== 3.6 Frame Devices

A frame device puts something *around* the action — a commentator, a second play, a
narrator — so that the audience is given an attitude to the action rather than left
alone with it. Every frame device is a form of commentary, and commentary is what the
paper rewards you for noticing.

#table(
  columns: (1.2fr, 2.0fr, 1.8fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Device],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does to the audience],
  ),
  [*Chorus*], [a group that speaks outside the action], [supplies the judgment the characters cannot be trusted to make],
  [*Narrator-commentator*], [a single figure who introduces and interprets], [frames the story as a tale being told, not merely shown],
  [*Play-within-a-play*], [a performance staged inside the play], [doubles the main action so that its meaning becomes visible],
  [*Dumb show*], [a silent staged action before the main scene], [plants the plot in the audience's mind without words],
  [*Masque*], [a spectacle of music and dance inside the play], [interrupts the action with a world of order or illusion],
  [*Direct address*], [a character speaks to the house], [breaks the fourth wall and admits the audience as a party],
)

#text(size: 9.4pt)[The play-within-a-play deserves special care, because it usually *accuses*. When a character stages a story in front of another character, he is showing that person a picture of his own crime; the inner play is the outer play's argument in miniature, and the reaction of the watched character is the evidence.]

// ============================================================================
== 3.7 Contrast, Pace and Comic Relief

A playwright controls not only what happens but how fast, and beside what.

#rule-box("Three instruments of pace")[
  + *Comic relief.* A light scene placed after a tense one. It is not an interruption; it raises the tension by letting the audience feel how much there is to lose.
  + *Contrast.* A scene of domestic happiness beside a scene of public ruin, so that each is measured by the other.
  + *Act and scene division.* A break is a decision about where to stop, and what the audience is left holding during the interval is the question the second half must answer.
]

#text(size: 9.4pt)[Comic relief is so called because it *relieves* — it lifts the pressure for a moment so that the next pressure can be felt. The gravediggers in *Hamlet* are the standard example: their jokes about death occur immediately before a funeral, and they make the funeral unbearable rather than comfortable.]

#worked-example(
  5,
  "The function of the light scene",
  [A tragedy places a scene of servants gossiping about their masters immediately after the hero's public disgrace and immediately before his wife's death. The scene most likely functions to

    A. give the actors a rest \
    B. relieve tension so that the next catastrophe is felt more sharply \
    C. show that the servants are the real protagonists \
    D. provide historical information],
  [
    *Step 1 — note the position.* After a disgrace and before a death. Position is the first clue to function.

    *Step 2 — name what the scene does to the audience.* It lowers the guard, domesticates the household, and makes the coming death happen in a place the audience has just been laughing in.

    *Step 3 — choose the effect, not the convenience.* Actors' rest and historical information are by-products; the placement is too deliberate to be either.

    *Check.* A comic scene placed at the worst moment is relief, and relief is a heightening. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.8 Technique in the Exam Hall — a Two-Minute Set

#mcq(1, [A speech delivered by a character alone on stage is a], [monologue], [soliloquy], [aside], [dialogue])

#mcq(2, [The device by which the audience knows more than a character does is], [verbal irony], [situational irony], [dramatic irony], [foreshadowing])

#mcq(3, [A character's short remark to the audience, unheard by those on stage, is], [an aside], [a soliloquy], [a chorus], [a dumb show])

#mcq(4, [A play staged inside a play usually serves to], [lengthen the evening], [comment on the main action by parallel], [introduce the setting], [replace the chorus])

#answer-key-grid(("B", "C", "A", "B"))

#answer-notes((
  ("B", [Alone on stage, heard by the audience only, is a soliloquy. A monologue may have listeners, an aside is a short remark in company, and dialogue requires two speakers.]),
  ("C", [Superior knowledge on the audience's side is dramatic irony. Verbal irony is a gap in meaning, situational irony a reversal of outcome, and foreshadowing the planting of information.]),
  ("A", [Unheard by the other characters, and short: an aside. A soliloquy requires the stage to be empty of other characters.]),
  ("B", [An inner play doubles the outer one and makes its meaning visible. Its length and setting are incidental, and a chorus has nothing to do with it.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the speech modes, the three ironies and the frame devices.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    On a stage, dialogue is action: characters warn, refuse, flatter and expose each other, and the audience watches the balance of power shift line by line. Three speech modes are defined by who hears them, not by length — a monologue is heard by those on stage, a soliloquy by the audience alone with the speaker, an aside by the audience while others are present and deaf to it. Stage directions are evidence, and the most revealing kind commands silence: *She does not answer* can only be explained by what the silence protects, while business with an object can contradict the words spoken over it. Irony opens a gap in one of three places — between words and meaning (verbal), between expectation and outcome (situational), or between the audience's knowledge and the character's (dramatic); only the third needs a stage. Costume, props, set, light and music all carry meaning without speech, and a change of costume is a change of status. Frame devices — chorus, narrator-commentator, play-within-a-play, dumb show, masque, direct address — put an attitude around the action, so the audience is given a judgment and not merely a story. And pace is an instrument: comic relief is placed to heighten, contrast to measure, and the act break to leave the audience holding a question.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Name the three speech modes and the test that separates them.],
  [Read one stage direction for the action it carries rather than the information it gives.],
  [Define dramatic irony in a sentence that mentions the audience and the character.],
  [Say what a change of costume can show that dialogue cannot.],
  [Explain what a play-within-a-play does to the audience's understanding.],
  [Give the function of comic relief without using the word "comic"],
))

#concept-box("Carry this into Chapter 4")[
  Prose has none of the stage's apparatus — no light, no costume, no actor's pause. It
  has something else: a *narrator*, and a narrator can be trusted, limited, mad or
  absent. Chapter 4 turns to the novel and the story, where the question is not who
  hears the aside but who is telling the tale at all.
]

#include "drill_ch03.typ"
