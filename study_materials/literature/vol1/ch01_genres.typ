#import "template.typ": *

#current-chapter.update("Chapter 1: What Literature Is")

#pagebreak()

#chapter-opener(
  1,
  "What Literature Is, and How the Paper Tests It",
  subtitle: "The Three Genres, the Four Levels of Reading, How a Literary Answer Is Marked, the Vocabulary of Value and the Question Types",
  syllabus-ref: "Sections 1–5 • The Frame",
  utme-weight: "4 Qs a year",
  running: "What Literature Is",
)

#focus-radar(
  objectives: (
    "Define literature and say what separates it from information.",
    "Name the three genres and the question each one sets.",
    "Apply the four levels of reading to any extract.",
    "Say what a mark scheme rewards in a literary answer, and what it ignores.",
    "Distinguish theme from subject, tone from mood, and style from diction.",
    "Recognise the six question types the paper reuses.",
  ),
  hotspots: (
    "“Literature differs from a newspaper report because …” — the answer is *form*: literature organises language so that the way it is said carries meaning. The option that says “it is fiction” is the trap, since a memoir is literature and a fabricated news story is not.",
    "“The three genres are …” — drama, prose and poetry. The option that offers “fiction and non-fiction” is describing the *divisions of prose*, not the genres.",
    "“The subject of a text is …” — what it is about; “the theme” is what it says about that. A stem that asks for the theme and offers the topic is the commonest two-mark loss in the paper.",
    "“Tone is the writer's attitude; mood is the reader's feeling.” A question that offers “the mood is bitter” for a tone question is offering a near-miss.",
    "“The persona is …” — the voice in the text. The option naming the author is always wrong unless the question has actually named the author.",
  ),
  trap-summary: "Three slips. (1) Treating *subject* and *theme* as synonyms. (2) Calling the author the speaker. (3) Believing that naming a device is an answer — the mark scheme wants the effect, and a device named without an effect scores nothing on the second half of the question.",
)

// ============================================================================
== 1.1 What Literature Is, and What It Is Not

Literature is language organised so that *the way something is said* is part of
what is meant. That is the whole definition, and every question in the paper is a
consequence of it. A timetable can be rewritten in different words without loss;
a line of poetry cannot. Change “the dark is generous” to “the darkness is kind”
and a poem has been damaged, because the sound, the rhythm and the association
were carrying meaning that the paraphrase has dropped.

#rule-box("The three tests of a literary text")[
  + *Form carries meaning.* The line break, the stanza, the stage direction and the paragraph are not packaging; they are part of the argument.
  + *Language is chosen, not merely used.* A novelist's sentence can be rewritten; a good novelist's sentence resists it. The resistance is what the paper asks you to describe.
  + *The reader is asked to do work.* Literature does not state its point and move on; it arranges evidence and leaves the judgment to you — which is why "what is the effect" is a fair question and "what is the moral" is usually a bad one.
]

Literature is therefore not the same as *fiction*. A memoir, an autobiography and a
biography are all literature when the writing does the work; a fabricated news story
is not literature, however untrue it is. Nor is literature the same as *difficulty*:
a ballad written in plain words can be more literary than a paragraph of jargon. The
distinction the paper tests is always the same one — has the language been *made*,
or merely *used*?

#concept-box("Literature and the other subjects")[
  History asks what happened. Philosophy asks what follows. Literature asks *how it
  is put*, and what the putting does. That is why a Literature answer is never
  "because it is true" and always "because of the way it is written".
]

#worked-example(
  1,
  "What makes a text literary",
  [Which of the following best explains why a poem is literature and a news report of the same event is not?

    A. The poem is not true \
    B. The poem is shorter \
    C. The poem organises language so that its form carries meaning \
    D. The poem is written by a poet],
  [
    *Step 1 — test the definition.* Literature is language organised so that the *way* it is said is part of what is meant. Look for the option that names form and meaning together.

    *Step 2 — eliminate on the wrong tests.* Truth is not the test: a memoir is literature and a fabricated report is not. Length is not the test: a two-line epigram can be literature and a three-volume report need not be. The writer's occupation is not the test either.

    *Step 3 — keep the definition.* Only *C* describes the organisation of language and the work the form does.

    *Check.* If the test were truth, no novel could be literature; if it were length, a haiku could not be. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.2 The Three Genres

A *genre* is a family of texts that share a way of arriving at the reader. There are
three in the syllabus, and the paper never lets you forget which one you are in,
because the genre decides what kind of evidence is available.

#diagram-fig("diagrams/ch01_genres.svg",
  "The three genres and the question each one sets. A genre is not a topic; it is the way the words arrive — in action, in narration, or in compression.", width: 100%)

#table(
  columns: (0.95fr, 1.45fr, 1.75fr, 1.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Genre],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How it arrives],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The evidence you may quote],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question it sets],
  ),
  [*Drama*], [in action, by characters who speak and do], [dialogue, stage directions, costume, décor, exits and entrances], [who wants what, and who stops them?],
  [*Prose*], [in narration, through a teller], [the narrator's words, description, dialogue inside the narration, structure of chapters], [whose voice tells it, and what does the voice hide?],
  [*Poetry*], [in compression, in lines], [the line, the stanza, the image, the sound, the turn of argument], [what is said twice — once in words, once in sound?],
)

#text(size: 9.4pt)[The table is worth memorising as a *procedure*. When an extract appears, the first question you ask is not "what does it mean" but "which column am I in" — and the answer changes everything that follows.]

#worked-example(
  2,
  "Placing an extract",
  [A passage begins: *Enter ORUNMI, weeping; she sets down the calabash and speaks to no one.* Which genre is this, and what tells you so?

    A. Prose, because it is written in sentences \
    B. Drama, because of the stage direction and the entrance \
    C. Poetry, because it uses imagery \
    D. Prose, because it describes a character's feelings],
  [
    *Step 1 — look for the evidence of form.* *Enter* is a stage direction; *weeping* is a piece of stage business; *speaks to no one* tells an actor what to do. None of these can occur in a novel.

    *Step 2 — test the distractors.* "Written in sentences" is true of all three genres. Imagery occurs in every genre, so it identifies nothing. Describing feelings is what prose does, but a stage direction is decisive evidence that no prose can produce.

    *Step 3 — name the genre and the evidence.* Drama, and the evidence is the theatrical apparatus itself.

    *Check.* Ask what an actor would need. If the answer is "instructions", it is drama. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 1.3 The Four Levels of Reading

Most candidates read at two levels and answer at two levels. The paper rewards four.
The levels are cumulative: you cannot reach the third without the first, and an
answer that jumps to the fourth without the second is a guess dressed as an
argument.

#diagram-fig("diagrams/ch01_levels.svg",
  "Four levels of reading. Most answers stop at the figurative level; the marks for structure and evaluation are the ones left on the table.", width: 100%)

#table(
  columns: (1.05fr, 1.6fr, 2.25fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Level],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The question it asks],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What an answer sounds like],
  ),
  [*1 Literal*], [who does what, where, to whom?], [“A widow refuses to leave her husband's compound, and the elders press her to.”],
  [*2 Figurative*], [what does the image suggest?], [“The compound is described as a *garment* — something worn and then put off, which makes the marriage a covering rather than a bond.”],
  [*3 Structural*], [how is it built, and why in this order?], [“The extract delays the elders' demand until after her refusal, so the reader has already taken her side when the pressure arrives.”],
  [*4 Evaluative*], [how well does it work, and at what cost?], [“The image is exact, but it also makes her grief a matter of clothing, which is the novel's limit as well as its power.”],
)

#concept-box("Why level 3 is the examiner's favourite")[
  Structure is the level most candidates never reach, and the level a set question
  can test most cleanly. Where the extract *begins* and *ends*, what is withheld and
  for how long, which voice closes the scene — all of these are facts about the text
  that a candidate can point at, and all of them are invisible to a reader who is
  only following the story.
]

#worked-example(
  3,
  "Climbing from literal to structural",
  [A novel's chapter opens with a description of a market, then moves to a private conversation, and closes with a single sentence of unattributed speech. Which level of reading does the observation "the chapter ends by refusing to say who is speaking" belong to?

    A. Literal \
    B. Figurative \
    C. Structural \
    D. Evaluative],
  [
    *Step 1 — name what the observation is about.* It is not about what happens (literal), and it is not a comparison or an image (figurative). It is about the *arrangement* of the chapter — where the unattributed sentence falls.

    *Step 2 — check it against the fourth level.* Evaluation would say whether the refusal *works*. The observation only registers the fact of the arrangement, so it stops one level short.

    *Step 3 — place it.* Order, placement and withheld information are structure.

    *Check.* Ask "could I point at this in the text?" If yes, and it concerns position rather than meaning, it is structural. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.4 How a Literary Answer Is Marked

A Literature mark scheme is built from three parts, and a full answer supplies all
three. The parts are not equal in length; they take about a sentence each.

#rule-box("The three parts of a full answer")[
  + *The name.* The device, the type, the technique — the word the syllabus uses.
  + *The evidence.* The words in the text that carry it, quoted or closely pointed at.
  + *The effect.* What it does to the reader, the audience or the argument.
]

#text(size: 9.4pt)[A candidate who writes only the name has done a definition. A candidate who writes the name and the evidence has done comprehension. Only the third part — the effect — proves that the device was understood rather than spotted, and it is the part the options in a multiple-choice paper are designed to separate.]

#table(
  columns: (1.35fr, 1.6fr, 1.95fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The answer],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it supplies],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Why it falls short],
  ),
  [“The poet uses a metaphor.”], [the name only], [it could describe a thousand poems, so it distinguishes nothing],
  [“The poet calls the city a *stone lung*.”], [the name and the evidence], [it shows you found it, not that you know what it does],
  [“The city is a *stone lung*: an organ that breathes for others and is itself never healed, which makes the city both necessary and diseased.”], [name, evidence and effect], [—],
)

#worked-example(
  4,
  "Which answer earns the second mark",
  [A line reads: *the road lay down like a patient animal.* Which comment would a mark scheme reward most?

    A. The line contains a simile. \
    B. The road is compared to an animal. \
    C. The simile makes the road seem alive and submissive, so the journey feels like something the travellers are permitted rather than something they choose. \
    D. The writer uses figurative language to describe the road.],
  [
    *Step 1 — count the parts in each option.* A gives the name only. B gives the name and a paraphrase of the evidence. D gives a vague family name ("figurative language") which is the weakest of all. C gives the name, the effect, and a consequence for the travellers.

    *Step 2 — ask which one could be wrong.* A, B and D are true of almost any simile; they cannot be marked wrong, and that is exactly why they earn nothing. C makes a claim that the words support and that another reader could dispute.

    *Step 3 — choose.* The mark scheme rewards the option that could be argued with.

    *Check.* If the option would fit any text, it does not fit this one. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 1.5 The Vocabulary of Value

Five pairs of words do most of the work in a Literature paper. They are not
synonyms, and every one of them has been the subject of a question.

#table(
  columns: (0.95fr, 1.9fr, 2.05fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The pair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The distinction],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The test],
  ),
  [*Subject / theme*], [what it is about, and what it says about that], [a phrase for the subject ("widowhood"); a sentence for the theme ("a community punishes the woman it claims to protect")],
  [*Tone / mood*], [the writer's attitude, and the feeling produced in the reader], [tone is an adjective you would use about a person; mood is what the room feels like afterwards],
  [*Style / diction*], [the whole manner of the writing, and the choice of words within it], [diction is one decision; style is the pattern of many decisions],
  [*Speaker / poet*], [the voice inside the text, and the person who wrote it], [the speaker may be a murderer, a child or a corpse; the poet is none of these],
  [*Story / plot*], [the events in the order they happened, and the order the text tells them], [ask what the text withholds, and for how long — that gap is the plot],
)

#trap-box("The three near-misses the paper loves")[
  *Subject offered as theme.* A stem asks for the theme and an option gives the topic. The topic has no verb in it; the theme does.

  *Mood offered as tone.* "The tone of the passage is gloomy" is wrong when the *mood* is gloomy and the tone is, say, resigned or sardonic. Ask whose feeling is being named.

  *Style offered as diction.* "The style is simple" is a claim about the whole manner; "the diction is monosyllabic" is a claim about the words. The paper swaps them.
]

// ============================================================================
== 1.6 The Six Question Types

Every question in the paper is one of six shapes. Learn the shapes and the paper
stops surprising you, because the shape tells you where in the extract to look.

#table(
  columns: (1.15fr, 1.85fr, 1.95fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The shape],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What the stem looks like],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where to look],
  ),
  [*Definition*], [“The term ‹blank› is best defined as …”], [the syllabus term in Appendix F; the answer is the genus plus the difference],
  [*Identification*], [“The device used in line 4 is …”], [the smallest unit — the word or phrase, not the sentence],
  [*Interpretation*], [“The line suggests that …”], [the image and the clause that qualifies it],
  [*Effect*], [“The effect of the repetition is to …”], [the change between the first and the last repetition],
  [*Context*], [“The speaker's attitude to her father is …”], [what the extract says and what it conspicuously does not],
  [*Evaluation*], [“The passage is chiefly concerned with …”], [the last sentence, which usually states the theme the passage has been building],
)

#shortcut-box("The two-minute scan for any extract")[
  + *Read the last line first.* It usually names the theme; everything before it is the evidence.
  + *Count the turns.* A *but*, a *yet* or a *till* marks the hinge of the argument, and most "tone" questions live on one side of it.
  + *Then read the stem twice and underline its verb.* Identify, describe, explain or compare — the verb tells you how long the answer in your head needs to be.
]

// ============================================================================
== 1.7 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [Literature is best distinguished from other kinds of writing by], [its subject matter], [the way its form carries meaning], [its length], [the fame of its author])

#mcq(2, [The three genres of literature are], [fiction, non-fiction and drama], [drama, prose and poetry], [tragedy, comedy and farce], [novel, novella and short story])

#mcq(3, [The theme of a literary work is], [the subject it is about], [what it says about its subject], [the setting in which it occurs], [the number of characters it contains])

#mcq(4, [The voice that speaks in a poem is called the], [narrator], [persona], [author], [character])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Form carrying meaning is the definition. Subject matter is shared with history and journalism, length proves nothing, and the author's fame is irrelevant to the text.]),
  ("B", [Drama, prose and poetry are the genres. Fiction and non-fiction divide prose, tragedy and comedy are types of drama, and novel, novella and short story are types of prose fiction.]),
  ("B", [The theme is a statement the text makes; the subject is what it is about. Setting and character count are elements, not themes.]),
  ("B", [The persona is the voice constructed in the poem. The narrator is the prose term, the author is the writer, and a character is a person in the text.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the genres, the levels of reading and the shape of a literary answer.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Literature is language organised so that the way it is said carries meaning, which is why a paraphrase damages a poem and not a timetable, and why fiction is not the test — a memoir can be literature and a fabricated report cannot. There are three genres, and each brings its own evidence: drama arrives in action, so you may quote stage directions, costume and entrances; prose arrives in narration, so you may quote the narrator and the order of chapters; poetry arrives in compression, so the line, the stanza and the sound are evidence. Read at four levels — literal, figurative, structural, evaluative — and note that most candidates stop at the second, where the marks for arrangement and judgment are still waiting. A full answer has three parts: the name, the evidence and the effect, and it is the third that a mark scheme pays for. Keep five pairs apart: subject from theme, tone from mood, style from diction, speaker from poet, story from plot. And recognise the six shapes of question, because the shape tells you where in the extract to look.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Define literature in one sentence, and say why truth and length are not the tests.],
  [Name the three genres and the evidence each one allows you to quote.],
  [Run the four levels of reading on a paragraph you have not seen before.],
  [Write a three-part answer — name, evidence, effect — for one device in that paragraph.],
  [Distinguish subject from theme, tone from mood, and speaker from poet.],
  [Name the six question shapes and say where each one sends you in the text.],
))

#concept-box("Carry this into Chapter 2")[
  Drama is the genre the paper asks about most often, because it is the one whose
  machinery is visible on the page: the stage direction, the aside, the exit. The next
  chapter takes it apart — the types of play and the shape of a plot — and Chapter 3
  returns to the techniques with which a playwright turns a script into an evening in
  a theatre.
]

#include "drill_ch01.typ"
