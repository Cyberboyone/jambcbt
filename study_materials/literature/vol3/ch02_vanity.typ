#import "template.typ": *

#current-chapter.update("Chapter 2: Vanity")

#pagebreak()

#chapter-opener(
  2,
  "Vanity",
  subtitle: "Birago Diop — Six Stanzas and the Word That Answers Them",
  syllabus-ref: "Section 4 • Prescribed Poems",
  utme-weight: "4 Qs a year",
  running: "Vanity",
)

#focus-radar(
  objectives: (
    "Place the poem: Diop, Senegal, Négritude, and the oral tradition behind the verse.",
    "Follow the six stanzas and say what each one adds.",
    "Hear the voice: a collective 'we' that accuses itself.",
    "Read the images: the beggars, the large mouths, the tumour, the dead and their signs.",
    "Give the themes, with the lines that prove them.",
    "Answer the questions the paper asks about repetition, tone and the word 'since'.",
  ),
  hotspots: (
    "The poem is *six stanzas*, of uneven length, in free verse, and it is built almost entirely out of *rhetorical questions* and *repetition*. That form is the answer to most of its questions.",
    "*'Gently, gently'* opens stanza one and returns in stanza six. The return is the poem's structure: the same gesture, now too late.",
    "The *dead* are not a metaphor for memory. In the poem's belief they are agents: they come, they speak, they leave their cries in the world, and they can refuse to answer.",
    "*'In the air, on the water'* is the poem's map of the world, and it is repeated. The signs the dead left are in the elements, which is why the living cannot escape them.",
    "The turn is the word *since* in the last stanza: the poem moves from *if* (a possibility) to *since* (a settled fact), and that grammar is the poem's verdict.",
  ),
  trap-summary: "Four slips. (1) Reading the poem as a simple lament, when it is an accusation. (2) Saying the poem is about slavery, when the poem names no historical event and speaks of the dead and their signs. (3) Missing the shift from 'if' to 'since'. (4) Treating the repeated questions as decoration rather than as the poem's method.",
)

// ============================================================================
== 2.1 The Poem and Its World

*Birago Diop* (1906–1989) was Senegalese: a veterinary surgeon by training, a
diplomat by career, and one of the writers who built the *Négritude* movement with
Léopold Sédar Senghor. His best-known work in prose is the collection of tales he
adapted from the griot Amadou Koumba; his poetry is collected in *Leurres et Lueurs*
(1960). *Vanity* — *Vanité* in the French — belongs to that body of writing, and it
carries the two things Diop is known for: the rhythms of the spoken tale, and the
traditional belief that the dead remain part of the community.

#concept-box("The dead who are still in the room")[
  In the West African tradition Diop writes from, the dead are not absent. They are
  the *ancestors*, and a community is made of the living, the dead and the unborn.
  The dead are owed remembrance, and they can withdraw it. This is the belief the
  poem assumes without arguing for it; a reader who takes "our Dead" as a figure of
  speech for "the past" will miss why the poem treats their silence as a punishment.
]

#text(size: 9.4pt)[The poem's English title is doing work. *Vanity* here is not the vanity of a mirror; it is the older sense — emptiness, futility, a thing done for nothing. The poem is about a grief that arrives too late to be useful: the people weep and cry, and no one hears, because the time for hearing was earlier. That is what makes the title a judgement rather than a description.]

#rule-box("Three facts that settle most questions")[
  + *Form:* six stanzas, around thirty lines, free verse — no metre, no rhyme.
  + *Method:* rhetorical questions, anaphora ("If we …", "What …"), and the repeated "gently, gently".
  + *Belief:* the dead are present, owed attention, and capable of leaving their cries behind them.
]

// ============================================================================
== 2.2 The Movement

#diagram-fig("diagrams/ch02_vanity_shape.svg",
  "Six stanzas, one question repeated five ways, and a verdict in the last.", width: 100%)

#table(
  columns: (0.55fr, 1.45fr, 2.05fr, 1.2fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Stanza],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The line to know],
  ),
  [*1*], [the people imagine telling their story gently], [opens with a possibility; establishes the "we"], ["Sad complaining voices of beggars"],
  [*2*], [the people cry out their torments], [raises the volume; the images become physical], ["our large mouths / Shaped by the laughter of big children"],
  [*3*], [the questions turn from eyes to heart and ear], [moves from being seen to being heard], ["grows in us like a tumour"],
  [*4*], [the dead arrive and speak in their clumsy voices], [the cause of the failure is introduced], ["When our Dead come with their Dead"],
  [*5*], [the dead have left their cries in air, water and earth], [the consequence: the signs remain, the people do not read them], ["where they have traced their signs"],
  [*6*], [since we did not listen, no one will listen to us], [the verdict: "since" replaces "if"], ["What ear to our sobbing hearts?"],
)

#text(size: 9.4pt)[The table is the poem's argument in six steps. Notice the direction: the stanzas do not get louder, they get *quieter* and more final. Stanza one is hypothetical ("if we tell"); stanza six is retrospective ("and since we did not understand"). Between those two grammar constructions the whole poem happens.]

// ============================================================================
== 2.3 The Voice and the Form

The poem says *we* from its first line to its last, and it never names itself except in
one phrase: "blind deaf and unworthy Sons". That phrase is the key to the voice. The
speaker is not an observer criticising a people; he is inside the "we", confessing with
them. That is why the poem can accuse and mourn in the same breath.

#table(
  columns: (1.1fr, 2.0fr, 1.8fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Where it appears],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
  ),
  [*Free verse*], [throughout], [keeps the poem close to speech, so that it sounds like a plea rather than a performance],
  [*Rhetorical questions*], ["Who then will hear …?", "What eyes …?", "What heart …?", "What ear …?"], [turn the reader into the one being asked, and make the absence of an answer the point],
  [*Anaphora*], ["If we …", "What …", "In the air, on the water"], [builds the incantatory rhythm of a lament],
  [*Repetition with variation*], ["gently, gently" in stanzas one and six], [marks the passage of time and the failure to change],
  [*Enjambment*], ["Shaped by the laughter of big children / What eyes will watch"], [makes the questions run into each other, so the pressure never lifts],
  [*Direct address to no one*], [the whole poem], [the missing listener is the poem's subject],
)

#concept-box("Why there is no rhyme")[
  A rhyme scheme would make the poem sound finished, and *Vanity* is deliberately
  unfinished: it ends on a question it does not answer. Free verse lets the poem keep
  the shape of an appeal — a voice rising, repeating itself, and stopping. The
  repetitions do the work that rhyme does in a formal lyric: they hold the poem
  together and mark its stages.
]

// ============================================================================
== 2.4 The Images

#table(
  columns: (1.15fr, 1.85fr, 1.9fr),
  inset: (x: 4.4pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Image],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it compares],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
  ),
  [*"voices of beggars"*], [the people's speech to the speech of begging], [makes their appeal humiliating: a beggar is heard only if someone chooses to give],
  [*"large mouths / Shaped by the laughter of big children"*], [the people's open mouths to children's mockery], [the mouth is open but the sound is ridiculous; the powerful are the children],
  [*"grows in us like a tumour"*], [anger to a growth], [makes the anger internal, bodily and self-destroying — it is not a weapon but an illness],
  [*"plaintive throats"*], [the throat as the organ of complaint], [locates the failure in the body: the instrument of speech is damaged],
  [*"clumsy voices"*], [the dead's speech to awkwardness], [the dead are not majestic; they are clumsy, which makes their neglect worse],
  [*"In the air, on the water"*], [the elements as a record], [the dead have written in the world; the living are illiterate in their own landscape],
  [*"blind deaf and unworthy Sons"*], [the living as children], [the poem's one self-description, and it names three failures at once],
)

#trap-box("Two misreadings of the tumour")[
  *"The tumour is the dead's anger."* No: the line says the anger *grows in us* — the tumour is the living people's own bitterness, which destroys them from inside.

  *"The tumour is a disease of the throat."* It is a simile for anger, placed in the throat to connect the emotion to the organ of speech. Read it as a physical image of a spiritual condition, not as a medical diagnosis.
]

// ============================================================================
== 2.5 The Themes

#table(
  columns: (1.05fr, 2.2fr, 1.95fr),
  inset: (x: 4.5pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The claim the poem makes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The lines that prove it],
  ),
  [*Cultural loss*], [a people who abandon their tradition lose the ability to be heard], ["And since we did not understand our dead"],
  [*The ancestors*], [the dead remain present, and their neglect has consequences], ["When our Dead come with their Dead"],
  [*Guilt and confession*], [the fault is the community's own, and the poem says "we"], ["blind deaf and unworthy Sons"],
  [*The vanity of late regret*], [weeping after the failure changes nothing], ["If we weep, gently, gently"],
  [*Silenced speech*], [the powerful do not hear, and the powerless cannot make them], ["Sad complaining voices of beggars"],
  [*Memory and landscape*], [the world itself records what the people forget], ["In the air, on the water, where they have traced their signs"],
)

#text(size: 9.4pt)[The themes are not separate. Cultural loss is the cause, silenced speech is the symptom, the vanity of late regret is the title, and the landscape is the witness. A strong answer moves between them in that order, because the poem does: it begins with speech, diagnoses the cause in stanza four, and ends with the failure to be heard.]

// ============================================================================
== 2.6 Technique

#rule-box("Four techniques, and what each one buys")[
  + *Rhetorical question.* Nine of them, and not one is answered. The form enacts the poem's subject: a people who ask and are not answered.
  + *Repetition.* "gently, gently" twice; "In the air, on the water" twice; "What eyes", "What heart", "What ear" in sequence. Repetition turns a statement into a litany.
  + *Simile and metaphor.* "like a tumour"; "voices of beggars"; "large mouths". The poem argues by comparing, not by asserting.
  + *The shift from "if" to "since".* A grammatical turn that carries the whole verdict, and the single most examinable feature of the poem.
]

#text(size: 9.4pt)[The questions are worth counting because their number is the argument. A poem that asked one question could be answered; a poem that asks nine, in six stanzas, and answers none, is demonstrating that the answer is no longer available. When a question asks "why does the poem end with a question?", the answer is that the question is the point: the last stanza asks who will listen, and the reader's silence is the reply.]

// ============================================================================
== 2.7 Four Worked Questions

#worked-example(
  1,
  "The situation",
  [The people in *Vanity* are

    A. celebrating a harvest
    B. trying to be heard, and failing
    C. preparing for war
    D. mourning a single death],
  [
    *Step 1 — locate.* Stanza one: "If we tell … Who then will hear our voices without laughter".

    *Step 2 — name the situation.* They want to speak and expect to be laughed at.

    *Step 3 — eliminate.* There is no harvest, no war and no single death in the poem; the dead appear collectively in stanza four.

    *Check.* The poem is about a failure of hearing. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The turn",
  [The word that marks the poem's turn from possibility to verdict is

    A. "gently"
    B. "since"
    C. "tumour"
    D. "laughter"],
  [
    *Step 1 — recall the shape.* Stanzas one to five are built on "if" and "when"; the last stanza begins "And since we did not understand our dead".

    *Step 2 — explain the grammar.* "If" leaves the outcome open; "since" treats the failure as settled.

    *Step 3 — eliminate.* "Gently" is a refrain, "tumour" an image, "laughter" a symptom.

    *Check.* The verdict is carried by one conjunction. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The image",
  [The anger of the people is compared to

    A. a river
    B. a tumour growing in the throat
    C. a beggar's voice
    D. a child's laughter],
  [
    *Step 1 — find the simile.* "Which grows in us like a tumour / In the black depth of our plaintive throats".

    *Step 2 — read it exactly.* The tumour grows *in us*, and specifically in the throat, the organ of speech.

    *Step 3 — eliminate.* The beggar and the children are separate images in stanzas one and two; there is no river.

    *Check.* The image makes the anger self-consuming and speech-related. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The title",
  [The title *Vanity* is best explained by the fact that

    A. the people are proud of their appearance
    B. the people's weeping and crying come too late to change anything
    C. the poet is vain about his art
    D. the dead were proud in their lifetime],
  [
    *Step 1 — take the older sense.* Vanity means futility, a thing done for nothing, as in "vanity of vanities".

    *Step 2 — apply it to the poem.* The last stanza offers weeping and crying as a response to a failure that has already happened.

    *Step 3 — eliminate.* There is no mirror, no boast about art, and no description of the dead as proud.

    *Check.* The title judges the lateness of the grief. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 2.8 Two-Minute Set

#mcq(1, [Vanity is written in], [rhyme royal], [free verse], [blank verse], [a sonnet form])

#mcq(2, [The poem's speaker uses the pronoun], ["I" throughout], ["we" throughout], ["they" throughout], ["you" throughout])

#mcq(3, [The dead have left their cries], [in the grave], [in the air, on the water and on the earth], [in the temple], [in the poem only])

#mcq(4, [The last stanza asks], [who will listen to the people now], [who created the world], [where the dead have gone], [when the rains will come])

#answer-key-grid(("B", "B", "B", "A"))

#answer-notes((
  ("B", [Six stanzas of uneven length, no metre and no rhyme: free verse held together by repetition.]),
  ("B", [The collective voice is the poem's method; the speaker includes himself among the "blind deaf and unworthy Sons".]),
  ("B", [The signs are in the elements — "In the air, on the water, where they have traced their signs" — which is why the landscape is a record.]),
  ("A", [The final question is "What ear to our sobbing hearts?", which is a question about hearing, and it is left unanswered.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: form, situation, the dead, the verdict and the theme.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Birago Diop's *Vanity* is a free-verse lyric in six uneven stanzas, spoken by a collective "we" who imagine telling their story and then discover that nobody will listen. The poem moves from "if we tell" to "if we cry" to "what heart will listen", and then to the dead, who come with their own dead and speak in clumsy voices. The living were deaf to them, and the dead have left their cries in the air, on the water, in the earth — signs the living cannot read, because they are "blind deaf and unworthy Sons". The last stanza turns the grammar from "if" to "since": the failure is settled, and the weeping that follows is too late to be heard. The images do the arguing: beggars' voices, large mouths shaped by children's laughter, anger growing like a tumour in the throat, plaintive throats, clumsy voices. The themes are cultural loss, the presence of the ancestors, collective guilt, the vanity of late regret and the silencing of the powerless; the technique is repetition, rhetorical question and the shift from possibility to verdict.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Name the poet, the country and the movement.],
  [Give the form in one sentence: stanzas, lines, metre, rhyme.],
  [Say what each of the six stanzas does.],
  [Quote four phrases exactly, including one with "gently" and one with "signs".],
  [Explain the turn from "if" to "since".],
  [Explain the title in one sentence.]),
)

#concept-box("Carry this into Chapter 3")[
  *Vanity* accuses a people of not listening. *Ambush* accuses a country of not letting
  them speak at all — and it does so with three animals and a pun. Chapter 3 is the
  same method with a harder voice: a single observer, a present tense, and a land that
  is waiting.
]

#include "drill_ch02.typ"
