#import "template.typ": *

#current-chapter.update("Chapter 4: Prose: The Novel and the Story")

#pagebreak()

#chapter-opener(
  4,
  "Prose: The Novel and the Story",
  subtitle: "Point of View, Characterisation, Setting, Structure, the Types of Prose and the Marks That Style Earns",
  syllabus-ref: "Section 3 • Prose",
  utme-weight: "8 Qs a year",
  running: "Prose: The Novel and the Story",
)

#focus-radar(
  objectives: (
    "Explain what a narrator is, and why the narrator is never simply the author.",
    "Sort point of view into first person, third-person omniscient, limited and objective, and recognise free indirect style.",
    "Tell flat from round characters, and static from dynamic, with an example of each.",
    "Say what a setting establishes beyond geography.",
    "Recognise the common structures: chronological, episodic, in medias res, frame narrative, flashback.",
    "Name the main types of prose and the mark of each.",
    "Read style as evidence: diction, syntax, description against summary, showing against telling.",
  ),
  hotspots: (
    "“First person” is not the same as “the author”. The narrator may be a child, a servant or a liar, and the paper tests whether you can separate the voice from the writer.",
    "Omniscient means the narrator knows everything, including other minds. Limited means one mind. Objective means no minds — only what a camera could record. The three are constantly offered as if they were one.",
    "A *round* character is capable of surprise and contradiction; a *dynamic* character changes. The two words answer different questions and are often swapped in a stem.",
    "Setting questions are usually theme questions in disguise: a village where everyone knows everyone is not scenery, it is a system of surveillance.",
    "“Show, don't tell” is a description of method, not a virtue. A summary can be the right choice, and an exam option that calls all telling “bad writing” is wrong.",
  ),
  trap-summary: "Three habits. (1) Reading the narrator's opinions as the book's. (2) Treating a change of scene as a change of character. (3) Answering a structure question with a plot summary — the quiz asks *where* the story begins, not what happens first.",
)

// ============================================================================
== 4.1 The Narrator Is a Construction

Prose tells a story through a voice, and the voice is a device. Even when the voice
sounds like the author — reasonable, informed, sympathetic — it has been built to
produce an effect, and the paper expects you to treat it as built.

#rule-box("What every narrative voice decides")[
  + *What is told.* The narrator selects; the selection is the meaning.
  + *What is withheld.* Every narrator has a blind spot, and the blind spot is usually the book's subject.
  + *How it is judged.* A narrator can approve, sneer, excuse or refuse to comment, and each choice steers the reader.
]

#concept-box("Author, narrator, character")[
  The *author* wrote the book. The *narrator* tells it. A *character* lives in it. In
  first-person narration the narrator is also a character, which is why a first-person
  narrator can be wrong — and being wrong is often the point.
]

#text(size: 9.4pt)[A narrator who is wrong is called *unreliable*, and unreliability is one of the richest things a prose question can ask about. The signals are consistent: the narrator contradicts himself, other characters correct him, the reader can see what he cannot, or his account is visibly self-serving. When a stem quotes two incompatible statements from the same narrator and asks what they show, the answer is unreliability, not carelessness.]

// ============================================================================
== 4.2 Point of View

Point of view is the position from which the story is told. It decides what the reader
can know, and therefore what the reader can be made to feel.

#diagram-fig("diagrams/ch04_pov.svg",
  "The four positions. Each one draws the boundary of what the reader is allowed to know, and the boundary is the technique.", width: 100%)

#table(
  columns: (1.3fr, 1.9fr, 1.8fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Point of view],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What the reader may know],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is good at],
  ),
  [*First person*], [only what the “I” has seen, been told or guessed], [confession, intimacy, suspicion — the reader is trapped in one version],
  [*Third omniscient*], [everything: every mind, every room, every past], [panorama and judgment; the narrator can compare what characters cannot],
  [*Third limited*], [one character's mind, and the world as that mind receives it], [sympathy with a single centre of consciousness],
  [*Third objective*], [only speech and visible action — no minds at all], [drama without a commentator; the reader must infer everything],
)

#trap-box("Three distinctions the paper blurs")[
  *First person vs author.* The pronoun is the narrator's, not the writer's. An autobiographical novel is still a novel.

  *Omniscient vs limited.* If the narrator enters more than one mind, it is omniscient. One mind only, and it is limited — however much the narrator seems to know about the furniture.

  *Objective vs limited.* Objective narration reports only what could be filmed; limited narration reports thoughts. A passage with no thoughts at all, only dialogue and action, is objective.
]

#text(size: 9.4pt)[*Free indirect style* sits between the last two and is worth knowing by name. The narrator reports a character's thought in the third person and the past tense, without the “he thought” that would mark it: *She would not go. She had never gone, and she would not begin now.* The voice is the narrator's; the attitude is the character's. When a passage makes you unsure whether a judgment belongs to the teller or the character, that uncertainty is the technique.]

#worked-example(
  1,
  "Naming the point of view",
  [A passage reads: *He set the case down. The room was hot. He did not know whether she had heard him, and he did not ask.* The narration is

    A. first person \
    B. third-person omniscient \
    C. third-person limited \
    D. third-person objective],
  [
    *Step 1 — check the pronoun.* Third person, so first person is out.

    *Step 2 — look for thought.* "He did not know whether she had heard him" is inside his mind. Some minds are entered, so the narration is not objective.

    *Step 3 — count the minds.* Only his is entered; hers is closed. One mind, and therefore limited.

    *Check.* Enter one mind, limited; enter many, omniscient; enter none, objective. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.3 Characterisation

A character is built out of five kinds of material, and a question about
characterisation is a question about which material the writer chose.

#diagram-fig("diagrams/ch04_character.svg",
  "Characterisation: the five sources of evidence, and the two axes that classify the result.", width: 100%)

#table(
  columns: (1.2fr, 2.15fr, 1.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What the writer uses],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What the reader infers],
  ),
  [*Action*], [what the character does when it costs something], [values, courage, calculation],
  [*Speech*], [what and how he says it — idiom, register, silence], [education, class, self-control],
  [*Appearance*], [dress, bearing, the detail the narrator chooses], [self-image, status, history],
  [*Others' reports*], [what other characters say about him], [reputation, and the reporter's bias],
  [*Authorial comment*], [the narrator's own judgment, stated outright], [the book's attitude, which may be ironic],
)

#rule-box("Round and dynamic are different questions")[
  + *Flat or round?* Can the character surprise us? A flat character is built from one trait and stays inside it; a round character contradicts himself credibly.
  + *Static or dynamic?* Does the character change in the course of the book? A round character can be static, and a flat character can be dynamic.
  + *A foil* is a character placed beside another to make the difference visible — the patient sister beside the reckless one.
]

#text(size: 9.4pt)[*Showing* presents a character through action and speech and lets the reader conclude; *telling* states the conclusion in the narrator's voice. Neither is better in itself. Telling is fast and can be ironic — "a most generous man" written by a narrator who has just shown him counting the spoons is a judgment the reader is invited to reverse. That reversal is a favourite exam question.]

#worked-example(
  2,
  "Round, dynamic or both",
  [A shopkeeper is introduced as mean, cheats a customer in Chapter 2, and in the last chapter gives away his entire stock. He is best described as

    A. a flat, static character \
    B. a round, dynamic character \
    C. a flat, dynamic character \
    D. a foil],
  [
    *Step 1 — test for surprise.* The final act contradicts everything established. Whether the change is credible decides round from flat: if the earlier chapters planted the possibility, the character is round; a sudden unmotivated reversal is a flat character acting out of character.

    *Step 2 — test for change.* He has changed, so he is dynamic either way.

    *Step 3 — choose the best description.* The question offers "flat, dynamic" precisely because change alone does not make a character round. Since the reversal contradicts a single established trait without preparation, the safest description is a flat character who changes.

    *Check.* Change is one axis, complexity the other. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.4 Setting and Atmosphere

Setting is where and when, plus the social world that fills the place. Atmosphere is
the feeling the setting produces. A question rarely asks for either alone; it asks
what the setting *does*.

#table(
  columns: (1.1fr, 2.05fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Layer],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it supplies],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question it answers],
  ),
  [*Place*], [the physical world: market, compound, city, bush], [what the characters can do, and what they cannot escape],
  [*Time*], [period, season, hour of day], [what is possible, and what is already decided by history],
  [*Social world*], [custom, hierarchy, religion, the neighbours], [who has power, and what the community will forgive],
  [*Atmosphere*], [the feeling the place produces], [what the reader is prepared to fear or hope],
)

#concept-box("Setting as argument")[
  A village in which every wall has an ear is not a picturesque location; it is a
  system of surveillance, and the plot's secrets become acts of courage. Whenever a
  question asks about setting, translate it into a claim about *pressure*: what does
  this place make easy, and what does it make dangerous?
]

// ============================================================================
== 4.5 Plot and Structure

Prose can begin anywhere, and where it begins is a decision with consequences. The
same events told from the end produce suspense; told from the beginning, they produce
dread.

#table(
  columns: (1.2fr, 1.85fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Effect],
  ),
  [*Chronological*], [events in the order they happen], [clarity and accumulation; time is felt as weight],
  [*In medias res*], [the story opens in the middle of the action], [immediate involvement; the past arrives as explanation],
  [*Flashback*], [a scene from earlier interrupts the present], [the present is judged by what is revealed],
  [*Frame narrative*], [a story told inside another story], [the teller's situation colours the tale],
  [*Episodic*], [loosely linked episodes, often a journey], [range and variety at the cost of tension],
  [*Circular*], [the ending returns to the opening], [the world is unchanged, and the character is not],
)

#shortcut-box("Reading a chapter as a unit")[
  + *Where does it begin?* In speech, in description, or in the middle of an action — each opening sets a different expectation.
  + *What does it withhold, and until when?* The withheld fact is the chapter's engine.
  + *Where does it end?* The last sentence is a decision about what the reader carries into the next chapter.
  + *What has changed by the end?* If nothing has, the chapter is establishing rather than advancing, and saying so is a legitimate answer.
]

#text(size: 9.4pt)[*Motif* is a recurring image or phrase that accumulates meaning. A motif is not a symbol with a fixed key: it works by repetition, and each appearance revises the last. When a question asks why an image recurs, the answer must describe the *change* across the recurrences, not just the image itself.]

// ============================================================================
== 4.6 The Types of Prose

#table(
  columns: (1.2fr, 2.0fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Its mark],
  ),
  [*Novel*], [a long prose fiction with a plot, characters and a world], [breadth: several lives, several years],
  [*Novella*], [a prose fiction between the short story and the novel], [one situation, developed to its limit],
  [*Short story*], [a single episode with a turn], [compression, and an ending that reframes the whole],
  [*Bildungsroman*], [a novel of formation — childhood to maturity], [the self is the subject, and time is the plot],
  [*Picaresque*], [the adventures of a rogue in episodes], [the hero survives by wit; the world is a series of rooms],
  [*Epistolary*], [told in letters or documents], [voices without a narrator, and gaps between the letters],
  [*Allegory*], [a story whose figures stand for ideas], [the second meaning is systematic, not occasional],
  [*Fable*], [a short tale with animals and a stated moral], [the moral is delivered, not implied],
  [*Satire*], [prose that ridicules with a corrective aim], [the target is named or unmistakable],
  [*Magical realism*], [the impossible reported as ordinary], [the fantastic is not explained and not wondered at],
)

#concept-box("Non-fiction is prose too")[
  Biography, autobiography, memoir, diary, travel writing and the personal essay belong
  to the prose genre, and they use the same machinery: a narrator, a point of view, a
  structure, a style. A question may quote a memoir and expect the same analysis you
  would give a novel — the difference is the contract with the reader, not the technique.
]

// ============================================================================
== 4.7 Style: The Marks a Paragraph Earns

Style is the sum of choices at the level of the sentence. In an exam, four of those
choices are worth naming.

#table(
  columns: (1.05fr, 2.1fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Choice],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What to look at],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it can show],
  ),
  [*Diction*], [short or long words, abstract or concrete, dialect or standard], [education, class, urgency, distance],
  [*Syntax*], [long periodic sentences or short paratactic ones; fragments], [breathlessness, ritual, a mind breaking down],
  [*Description vs summary*], [scene at length, or years in a clause], [what the book wants you to live through, and what it wants you to know],
  [*Dialogue in prose*], [how speech is reported — direct, indirect, unpunctuated], [immediacy, and the narrator's distance from the speaker],
)

#trap-box("Three style answers that earn nothing")[
  *“The writer uses simple language.”* Simple for whom? Name the diction and its effect.

  *“The sentences are long.”* Length is a fact; the effect of length is the answer.

  *“The description appeals to the senses.”* Which sense, in which phrase, and what does it make the reader feel? Unspecified sensory language is the commonest empty answer in the paper.
]

#worked-example(
  3,
  "What short sentences do",
  [A paragraph describing a fire consists of eleven sentences, the longest seven words: *The roof fell. Nobody moved. Then the shouting began.* The syntax chiefly produces

    A. confusion \
    B. speed and shock, so that the reader experiences the event as it happened \
    C. humour \
    D. formality],
  [
    *Step 1 — name the feature precisely.* Not "simple language" — short sentences, minimal subordination, one clause each.

    *Step 2 — connect form to experience.* Short sentences take less time to read, so the reading time imitates the event's speed. The absence of connectives removes explanation, which is what shock feels like.

    *Step 3 — check the alternatives.* Confusion would need broken syntax or unclear reference; humour and formality have no support in the lines.

    *Check.* Ask what the reader's experience of time is. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Setting and pressure",
  [A novel sets its story in a village where “no door was ever shut in daylight”. The setting chiefly establishes

    A. the architecture of the village \
    B. a community in which privacy is impossible, so secrecy becomes the plot's engine \
    C. the period of the story \
    D. the wealth of the villagers],
  [
    *Step 1 — read the detail as a rule, not a fact.* Open doors are a custom, and a custom is a constraint on behaviour.

    *Step 2 — translate the constraint into pressure.* If no door is shut, nothing can be hidden indoors; every secret must be kept in public, which is far harder and more dangerous.

    *Step 3 — prefer the answer that names the pressure.* Architecture, period and wealth are background facts; only one option explains what the detail does to the characters.

    *Check.* Setting questions are theme questions: what does this place make easy, and what does it make dangerous? The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  5,
  "The function of a frame",
  [A novel opens with an old man telling a story to a child, and the story then occupies the rest of the book. The frame chiefly

    A. delays the plot \
    B. sets the tale in a situation of memory and instruction, so the reader reads it as a lesson being passed on \
    C. shows that the old man is the author \
    D. provides a happy ending],
  [
    *Step 1 — identify the device.* A tale inside a telling situation is a frame narrative.

    *Step 2 — ask what the frame adds.* It supplies a present-day listener and a teller with a purpose. The tale is now addressed to someone, which makes it a lesson rather than merely a story.

    *Step 3 — reject the near-misses.* Delay is a side effect; the teller is not the author; and a frame can hold any ending, happy or not.

    *Check.* Ask "who is the story for, inside the book?" The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.8 Prose in the Exam Hall — a Two-Minute Set

#mcq(1, [A novel narrated by a servant who misunderstands his master's affairs is told in], [the third person omniscient], [the first person, by an unreliable narrator], [the third person objective], [free indirect style])

#mcq(2, [A narrator who enters the minds of several characters is], [limited], [objective], [omniscient], [unreliable])

#mcq(3, [A character built on a single trait, who does not change, is], [round and dynamic], [flat and static], [round and static], [a foil])

#mcq(4, [A novel that begins in the middle of the action begins], [in medias res], [with a frame narrative], [episodically], [circularly])

#answer-key-grid(("B", "C", "B", "A"))

#answer-notes((
  ("B", [First person, because the servant narrates; unreliable, because his misunderstanding is the gap the reader sees through. Omniscient and objective both require a third-person teller, and free indirect style is a technique inside third person.]),
  ("C", [More than one mind entered is omniscience. Limited enters one, objective enters none, and unreliability is a separate question about trust.]),
  ("B", [One trait and no change: flat and static. A foil is defined by its relation to another character, not by its complexity.]),
  ("A", [In the middle of things is in medias res. A frame narrative wraps a story in another, an episodic plot proceeds by episodes, and a circular one returns to its opening.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the four points of view, the two character axes and the six structures.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Prose tells a story through a voice, and the voice is a construction: the author wrote the book, the narrator tells it, and a character lives in it. Point of view decides what the reader may know — first person confines us to one account, third-person omniscient opens every mind, third-person limited enters one, third-person objective enters none and reports only what could be filmed; free indirect style borrows a character's attitude without quotation marks, and an unreliable narrator is one whose account the reader can see through. Character is built from action, speech, appearance, others' reports and authorial comment, and it is classified on two separate axes: flat or round asks whether the character can surprise us, static or dynamic asks whether he changes. Setting is not scenery but pressure — what a place makes easy and what it makes dangerous — and atmosphere is the feeling it produces. Structure is a decision about where to begin: chronological, in medias res, flashback, frame, episodic or circular, each with its own effect on suspense. The types of prose run from novel and novella to fable, allegory, satire, the bildungsroman and magical realism, and non-fiction uses the same machinery with a different contract. Style is the sum of sentence-level choices: diction, syntax, description against summary, and the handling of dialogue.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Separate author, narrator and character in one sentence each.],
  [Name the four points of view and the knowledge each one allows.],
  [Explain what makes a narrator unreliable, with two signals.],
  [Classify a character on both axes — flat or round, static or dynamic.],
  [Turn a setting into a statement about pressure.],
  [Name four structures and the effect of each.],
  [Say what short sentences can do that long ones cannot.]
))

#concept-box("Carry this into Chapter 5")[
  Prose has grammar to hold it together; poetry has the line. The next chapter takes the
  smallest unit of the art — the line, the foot, the sound — and shows why a question
  about metre is really a question about meaning.
]

#include "drill_ch04.typ"
