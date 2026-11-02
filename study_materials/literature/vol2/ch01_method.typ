#import "template.typ": *

#current-chapter.update("Chapter 1: How a Set Text Is Examined")

#pagebreak()

#chapter-opener(
  1,
  "How a Set Text Is Examined",
  subtitle: "The Six Moves, the Four Question Shapes, the Scene Card and the Revision That Actually Works",
  syllabus-ref: "Sections 2–3 • Method",
  utme-weight: "12 Qs a year",
  running: "How a Set Text Is Examined",
)

#focus-radar(
  objectives: (
    "Say what a set-text question is testing, in one sentence.",
    "Apply the six moves — place, locate, name, quote, effect, check — to any stem.",
    "Recognise the four shapes a set-text question takes.",
    "Build a scene card that turns reading into recall.",
    "Use a quotation as evidence rather than as decoration.",
    "Avoid the four answers that lose set-text marks.",
  ),
  hotspots: (
    "A set-text question almost always has a *location* and a *judgment*. The location is the scene; the judgment is what the scene does. Distractors usually get the judgment right and the location wrong, or the reverse.",
    "“Who says this?” is a location question with a name attached. If two characters could plausibly say it, the stem will contain a detail that only one of them could know.",
    "“What does X reveal about Y?” is answered by a *scene*, not by an adjective. An option that offers only an adjective (“she is kind”) is nearly always wrong.",
    "The paper tests the text, not the author's life. A biography option is a distractor unless the stem names the writer.",
    "Quotations are evidence, so a stem that quotes half a line is asking you to complete the context, not to identify the play.",
  ),
  trap-summary: "Four habits fail. (1) Answering from a summary rather than the text. (2) Confusing characters who share a function. (3) Choosing the thematic option when the stem asked for the scene. (4) Reading the options before deciding which scene the stem points at.",
)

// ============================================================================
== 1.1 What a Set-Text Question Is Really Asking

Every question about a prescribed text has the same skeleton. Something happens in
a particular place in the text; the question asks what that something *shows*. The
paper is therefore testing two things at once — whether you know where the moment
falls, and whether you can say what it is doing there.

#rule-box("The anatomy of a set-text stem")[
  + *A moment.* A quotation, a paraphrase, or a description of a scene.
  + *A relation.* Who is speaking to whom, or acting on whom.
  + *A demand.* What it reveals, why it matters, what it leads to.
  + *Four options, of which three are plausible.* The three are built from real features of the text — the right theme, the wrong scene; the right character, the wrong motive; the right judgment, the wrong reason.
]

#text(size: 9.4pt)[Because the distractors are *made from the text*, a candidate who half-knows the book is in more danger than one who does not know it at all: recognition feels like knowledge. The defence is the same every time — locate the moment before you evaluate a single option. That is why this chapter's first move is called *place* and its second is called *locate*.]

// ============================================================================
== 1.2 The Six Moves

#diagram-fig("diagrams/ch01_method.svg",
  "The six moves. The first two cost ten seconds and decide the other four.", width: 100%)

#table(
  columns: (0.8fr, 1.35fr, 2.6fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Move],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question you ask],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it eliminates],
  ),
  [*1 Place*], [which text, which genre, which writer?], [options that belong to another text],
  [*2 Locate*], [which act, scene, book or chapter?], [options that describe the right event at the wrong point],
  [*3 Name*], [which character, device or term does the stem mean?], [options that swap two characters who share a function],
  [*4 Evidence*], [what are the words that carry it?], [options that assert what the text does not say],
  [*5 Effect*], [what does it do to the reader or the audience?], [options that describe without arguing],
  [*6 Check*], [does the option answer the stem that was asked?], [the right answer to a different question],
)

#concept-box("Why move 6 catches so many")[
  The paper frequently offers a true statement that answers a neighbouring question:
  the scene *does* show that Othello is jealous, but the stem asked what the
  handkerchief proves. A true sentence is not automatically an answer, and the last
  ten seconds of a question are best spent re-reading the stem rather than the option.
]

// ============================================================================
== 1.3 The Four Shapes

#table(
  columns: (1.0fr, 2.0fr, 1.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What the stem looks like],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you must supply],
  ),
  [*Fact*], [“The play opens in …”, “X is married to …”], [the setting and the relation — pure recall, ten seconds],
  [*Scene*], [“When X says …, what has just happened?”], [the position of the line, and who is present],
  [*Character*], [“X's attitude to Y is best described as …”], [a scene that shows the attitude, and the words that carry it],
  [*Theme or technique*], [“The handkerchief functions as …”, “The trial scene shows …”], [the device or the theme, plus what it does in the plot],
)

#text(size: 9.4pt)[The shapes are ranked by cost. Fact questions are free marks if the names are secure. Scene questions are the majority, and they are won by the plot table. Character and theme questions are the ones that separate candidates, because they require you to hold a scene and a judgment at the same time.]

// ============================================================================
== 1.4 The Scene Card

A scene card is three lines written from memory after you finish a scene or a
chapter. It is the cheapest revision instrument in the book, and it converts a text
you have read into a text you can answer questions about.

#rule-box("The three lines")[
  + *Who wanted what.* The desire that drives the scene — not the topic.
  + *What stopped them, or what it cost.* The obstacle, the price, or the reversal.
  + *The line you would quote.* Six to ten words, exact, and the reason you chose it.
]

#text(size: 9.4pt)[Twenty-five scene cards is a play; thirty is a novel. Written on one side of A5, they are a revision pack of a hundred and sixty lines that contains the plot, the characters and the quotations at once — and writing them is itself the revision, which is why copying somebody else's cards does nothing.]

#worked-example(
  1,
  "Fact, from the opening",
  [In *Harvest of Corruption*, Aloho's search for work is complicated from the start by

    A. her refusal to leave her home town \
    B. the reputation of the schoolmate who offers to help her \
    C. her brother's opposition to government work \
    D. her lack of a university degree],
  [
    *Step 1 — place the text.* This is Ogbeche's play, set in the ministries of Jacassa, and the question is a fact question about the opening.

    *Step 2 — recall the situation.* Aloho has finished her national service and has no job. She meets Ochuole, an old schoolmate, who offers to speak to the Minister on her behalf — and Ogeyi warns her that Ochuole's reputation makes the offer dangerous.

    *Step 3 — eliminate.* Aloho is a graduate, so D is wrong; she has come to the city to look for work, so A is wrong; and her brother Okpotu appears much later, so C is wrong.

    *Check.* The complication is the helper's character, not the heroine's qualifications. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Locating a scene",
  [In *Othello*, Iago first suggests that Desdemona has been unfaithful in

    A. Act 1, scene 1, outside Brabantio's house \\
    B. Act 3, scene 3, after Desdemona has pressed Othello to reinstate Cassio \\
    C. Act 2, scene 3, during the drinking that costs Cassio his rank \\
    D. Act 4, scene 1, when Othello falls into a fit],
  [
    *Step 1 — place the idea.* Iago's slander has to have a motive and an opportunity; both arrive in Cyprus, which rules out Venice (A).

    *Step 2 — locate the turn.* The temptation scene is Act 3 scene 3: Desdemona has just promised to help Cassio, and Iago uses her advocacy as the first piece of "evidence".

    *Step 3 — distinguish the neighbouring scenes.* C is the brawl that supplies Cassio's demotion, which is the *precondition*; D is the consequence, when the poison has already worked.

    *Check.* The first suggestion is the temptation scene, not the demotion and not the fit. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Character, with evidence",
  [In *Faceless*, Kabria's investigation is best described as

    A. a journalist's search for a story \\
    B. a mother's private revenge \\
    C. an NGO officer's insistence that a dead street child has a name and a history \\
    D. a police inquiry into prostitution],
  [
    *Step 1 — place the character.* Kabria is a programme officer at MUTE, not a journalist — the radio presenter is Sylv Po, and the confusion between the two is the trap in A.

    *Step 2 — locate the motive.* She takes up Fofo's case after the body is found, and her interest is in the child's history rather than in a prosecution she cannot conduct.

    *Step 3 — test the remaining options.* Revenge (B) is wrong because Kabria has no personal loss; a police inquiry (D) is wrong because MUTE has no powers of arrest.

    *Check.* The option must name her role and her aim together. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Theme or technique",
  [In *Native Son*, the rat that Bigger kills in the opening scene functions to

    A. show that the family is poor \\
    B. establish the violence of Bigger's world before he commits any crime \\
    C. introduce Vera \\
    D. provide comic relief],
  [
    *Step 1 — place the scene.* It is the first page of Book One, before the relief job and before Mary Dalton.

    *Step 2 — ask what the scene does in the structure.* It establishes a world in which killing is ordinary, so that the later killing is prepared for rather than sprung on the reader.

    *Step 3 — distinguish fact from function.* Poverty (A) is true and is not the function; Vera (C) is present but not introduced by the rat; comic relief (D) is impossible in the scene's register.

    *Check.* The function is structural: the first page foreshadows the novel's violence. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 1.5 Using a Quotation

A quotation in a multiple-choice answer is not decoration; it is the thing that
makes the answer checkable. Three rules govern its use.

#table(
  columns: (1.2fr, 2.45fr, 1.65fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The test],
  ),
  [*Short*], [six to ten words is enough to identify a moment], [if you need twenty words, you do not know the line],
  [*Exact*], [a misquoted line is worse than a described one], [can you say it without the book?],
  [*Working*], [the quotation must do something in your answer], [does removing it change the answer?],
)

#text(size: 9.4pt)[Learn two quotations per text rather than twenty. One should be a line a character says at the moment of decision, and one should be a line about the character. Everything else you can paraphrase, and paraphrase is safer under pressure than a half-remembered quotation.]

// ============================================================================
== 1.6 Revising a Text in Four Passes

#shortcut-box("The four passes, and what each one is for")[
  + *Pass 1 — the plot, cold.* Read the whole text once, without notes, for the story. A text read for notes is a text half-read.
  + *Pass 2 — the plot table.* Fill in the chapter's plot table from memory, then correct it. This is where the text becomes answerable.
  + *Pass 3 — the scenes.* Write a scene card for the six scenes a question is most likely to quote.
  + *Pass 4 — the questions.* Do the drill, and read the solution to every question, including the ones you answered correctly.
]

#trap-box("The four answers that lose set-text marks")[
  *The true-but-irrelevant option.* It describes the text correctly and answers a different question. Re-read the stem last.

  *The right theme, the wrong scene.* The option names a genuine theme of the text and attaches it to a moment that does not carry it.

  *The swapped character.* Two characters share a function, and the option gives the other one's action.

  *The adaptation.* A remembered film or summary places a scene differently, or gives a line to the wrong speaker. Answer from the printed text.
]

// ============================================================================
== 1.7 Method in the Exam Hall — a Two-Minute Set

#mcq(1, [A set-text question is best answered by first], [reading all four options carefully], [deciding which text and which scene the stem points at], [recalling the author's biography], [choosing the longest option])

#mcq(2, [If a stem quotes half a line of dialogue, the question is chiefly testing], [your memory of the play's title], [your knowledge of who says it, to whom, and in what circumstances], [your knowledge of the playwright's life], [your ability to scan poetry])

#mcq(3, [A scene card contains], [a summary of the whole text], [who wanted what, what it cost, and the line you would quote], [a list of characters], [the author's dates])

#mcq(4, [The commonest reason a plausible set-text option is wrong is that it], [contradicts the text], [answers a neighbouring question rather than the one asked], [is too long], [uses a quotation])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Place and locate decide the rest. Reading options first lets three plausible statements start competing before you know which scene is in question.]),
  ("B", [Half a line is a location marker; the marks are for knowing the speaker, the listener and the situation, which together fix the meaning.]),
  ("B", [Three lines: desire, cost and a quotation. A summary of the whole text is what you are trying to avoid needing.]),
  ("B", [Distractors are built to be true of the text and false to the stem, which is why the stem must be re-read after the options.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the six moves, the four shapes and the distractor test.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A set-text question has a moment, a relation and a demand, and its three wrong options are made out of the text itself — the right theme at the wrong scene, the right character with the wrong motive, the right judgment for the wrong reason. Answer with six moves: place the text and the genre, locate the act or chapter, name the character or device the stem means, find the words that carry it, say what it does to the reader or audience, and check that the option answers the stem that was asked. Four shapes recur: fact, scene, character and theme-or-technique, in ascending order of cost. Build the text into recall with scene cards — three lines per scene, written from memory: who wanted what, what it cost, and the line you would quote. Two quotations per text is enough if one is a line spoken at a decision and the other a line about the character. And revise in four passes: the plot cold, the plot table from memory, six scene cards, then the drill — reading the solution to every question, including the ones you got right.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Say what the three wrong options of a set-text question are usually made from.],
  [Run the six moves on one quotation from any text in this book.],
  [Name the four question shapes and the cost of each.],
  [Write three scene cards from a text you have read.],
  [Explain why a misquotation is worse than a paraphrase.],
  [List the four answers that lose set-text marks.]
))

#concept-box("Carry this into Chapter 2")[
  The method is now fixed. Chapter 2 applies it to the play that is closest to the
  candidate's own world — a ministry, a hotel and a courtroom in a country called
  Jacassa — and the closeness is the difficulty: it is easy to answer from
  experience rather than from the text.
]

#include "drill_ch01.typ"
