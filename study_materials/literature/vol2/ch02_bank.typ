#import "template.typ": *

#current-chapter.update("Chapter 2: The Bank")

#pagebreak()

#chapter-opener(
  2,
  "The Bank: Building Your Own",
  subtitle: "One Row Per Scene or Chapter, the Cast Grid, the Ten Passages, and How to Review a Bank in the Last Week",
  syllabus-ref: "Sections 1–2 • Preparation",
  utme-weight: "5 Qs a year",
  running: "The Bank",
)

#focus-radar(
  objectives: (
    "Explain why a bank is better preparation than a summary.",
    "Write a scene row and a chapter row in the four columns.",
    "Build a cast grid of wants, obstacles and functions.",
    "Choose ten passages per text and mark them so they can be found again.",
    "Review a bank in the last week without rereading the whole text.",
    "Take a set of questions on preparation without confusing it with knowledge.",
  ),
  hotspots: (
    "The bank has four columns: *unit, who, turn, quote*. A row without a turn is a row that has not been thought about.",
    "A scene row is five words of event, not a paragraph: if you cannot compress it, you have not understood it.",
    "The cast grid records a *want* and an *obstacle* per character, plus the *function* — what the text loses without them.",
    "Ten passages per text, numbered in the margin of your copy, is the whole of the quotation policy in practice.",
    "Review means covering the right-hand columns and reciting, not rereading the rows.",
  ),
  trap-summary: "Three failures. (1) Building the bank in the last week instead of during the first reading. (2) Recording events rather than turns. (3) Copying somebody else's bank — a bank you did not build is a summary with better headings.",
)

// ============================================================================
== 2.1 Why a Bank, Not a Summary

A summary answers the question “what happens?”. The paper never asks it. The bank
answers the question “what does this unit do?”, which is the question every set-text
stem is a version of — and it answers it in a form you can revise from.

#table(
  columns: (1.15fr, 2.15fr, 1.9fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[A summary],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[A bank],
  ),
  [*Records*], [events, in order], [units, with what each one does],
  [*Answers*], [“what happens next?”], [“what changes here, and why does it matter?”],
  [*Built*], [after reading, from memory], [during reading, in the margin],
  [*Revised by*], [rereading the summary], [covering the columns and reciting],
  [*Fails when*], [the question asks about design], [never — the design is what it records],
)

#concept-box("The five-word rule")[
  Compress each scene to five words before you write anything else. *The handkerchief is
  found. The brawl costs Cassio. The letter arrives too late.* A unit you cannot compress
  is a unit you have read but not understood, and the five-word attempt tells you which
  one it is.
]

// ============================================================================
== 2.2 The Scene Row

#diagram-fig("diagrams/ch02_bank.svg",
  "The four columns of a bank row. One row per scene or chapter, four columns, and the turn is the column that does the work.", width: 100%)

#table(
  columns: (0.95fr, 1.55fr, 2.1fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Column],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What goes in it],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it is used for],
  ),
  [*Unit*], [act and scene, or chapter number, plus five words], [anchoring an answer in the exam],
  [*Who*], [who is present, and what each one wants in this unit], [function and character questions],
  [*Turn*], [what has changed by the last line], [effect and judgement questions],
  [*Quote*], [six to ten words, exact], [evidence in every shape of answer],
)

#text(size: 9.4pt)[A drama row is written per *scene*, because a scene is the unit a playwright builds and the unit a question anchors to. A prose row is written per *chapter*, because chapters are the novelist's divisions and the paper follows them. Where a chapter has two movements — a public scene and a private one — write two rows and number them 4a and 4b. The bank is allowed to be untidy; it is not allowed to be vague.]

#worked-example(
  1,
  "Writing a scene row",
  [Which is the best bank row for the scene in which Cassio is demoted?

    A. Cassio gets drunk and fights Roderigo; Othello dismisses him. \\
    B. Act 2 scene 3 — the brawl. Who: Cassio, Montano, Roderigo, Iago, Othello. Turn: a soldier becomes a civilian. Quote: “*reputation, reputation, reputation!*” \\
    C. Act 2. Iago is clever here and Cassio is foolish. \\
    D. The scene where Cassio loses his job and Iago pretends to help.],
  [
    *Step 1 — test the four columns.* Only B has a unit, the people and their wants, a turn and a quotation. A has the unit and the event but no turn and no quote.

    *Step 2 — test the turn.* “A soldier becomes a civilian” says what has changed and why it matters to the rest of the play.

    *Step 3 — test the quotation.* Six words, exact, and usable in a question about reputation, about Cassio's weakness, or about Iago's method.

    *Check.* A row without a turn cannot answer an effect question. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.3 The Chapter Row

A novel's chapters are longer than a play's scenes, and the bank has to allow for
that. The four columns stay; what changes is the *who* column, which becomes a short
list of what the chapter does to each major character.

#table(
  columns: (1.25fr, 1.85fr, 2.1fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The chapter does this],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[You write],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Example],
  ),
  [introduces a place], [name it, and the pressure it applies], [“the Dalton house: space that watches”],
  [introduces a person], [one want, one obstacle], [“Mary: wants to be seen as ordinary”],
  [raises the stakes], [what is now impossible to undo], [“the furnace has been lit”],
  [withholds], [what the chapter refuses to tell us], [“we do not hear Bigger's account of the night”],
)

#concept-box("The withheld column")[
  Add a fifth column, in pencil, for what the chapter *refuses* to say. It is the column
  that answers the hardest questions — the ones beginning “How does the writer make us
  feel …” — because withholding is how prose produces suspense and sympathy at once.
]

// ============================================================================
== 2.4 The Cast Grid and the Ten Passages

#table(
  columns: (1.0fr, 1.55fr, 1.55fr, 1.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Name],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Wants],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Obstacle],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Function],
  ),
  [Othello], [to be loved and to be trusted], [his own need for proof], [the general whose language collapses into Iago's],
  [Iago], [to have the general's ear], [his rank, and his own account of himself], [the engine that converts love into evidence],
  [Desdemona], [to be heard], [a world that speaks for her], [the play's proof that innocence is not protection],
  [Emilia], [to please her husband, then to tell the truth], [her fear and her loyalty], [the voice that names the lie at the cost of her life],
)

#text(size: 9.2pt)[Three of the four rows above are in this book's own words and one is quoted; the grid is more useful when the *wants* are your own sentences, because a want you have phrased is a want you can argue about.]

#shortcut-box("The ten passages")[
  + *One from the opening unit*, because it sets the world.
  + *One from each of the three or four turns*, because that is where the questions cluster.
  + *One speech longer than ten lines*, because long speeches are where language questions live.
  + *One quiet scene*, because the quiet ones are where character questions live.
  + *The last page*, because endings carry the judgement questions.
]

#worked-example(
  2,
  "Choosing a passage to mark",
  [You may mark only ten passages in your copy. Which is the weakest choice?

    A. The first scene, where the world is established \\
    B. A long speech in which the hero's language changes \\
    C. A scene you enjoyed but cannot connect to a theme \\
    D. The final scene, where the cost is counted],
  [
    *Step 1 — apply the rule.* The ten passages are chosen for the questions they can answer. A, B and D each answer several: world, language, judgement.

    *Step 2 — test C.* Enjoyment is not a criterion. A scene that cannot be connected to a theme or a character's function will not be asked about, and if it is asked about you can answer it from the bank row.

    *Step 3 — choose.* The ten slots are scarce; each must earn its place by the questions it can carry.

    *Check.* Would this passage answer three different stems? If not, it is not one of the ten. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.5 Reviewing the Bank

A bank is reviewed by *covering*, not by reading. The right-hand columns are the
answers; the left-hand column is the prompt.

#rule-box("The fifteen-minute review")[
  + Cover everything except the *unit* column. Say aloud what happens, what changes, and the quotation.
  + Uncover. Mark with a tick, a dash or a cross: knew it, half knew it, did not know it.
  + Reread only the dashed and crossed rows — the ticks are wasting your time.
  + Do this once a week for four weeks. The bank shrinks as the ticks grow, and by the last week it is four rows.
]

#trap-box("Two ways a bank goes wrong")[
  *Too long.* A row of forty words is a paragraph in disguise. If the row does not fit a line, cut it until it does — the cutting is the thinking.

  *Too late.* A bank built in the last fortnight is a rereading with extra steps. The bank is built during the first reading, and it is the only thing that makes a second reading cheap.
]

#worked-example(
  3,
  "Which row answers the question?",
  [A question asks: “How does the text present the cost of loyalty?” Which bank row is most useful?

    A. Act 2 scene 1 — the arrival in Cyprus. Who: Othello, Desdemona, Cassio. Turn: the war is over. Quote: “*Our wars are done*”. \\
    B. Act 5 scene 2 — Emilia's testimony. Who: Emilia, Othello, Iago. Turn: loyalty to her mistress costs her her life. Quote: “*I will speak as liberal as the north*”. \\
    C. Act 1 scene 1 — the street. Who: Iago, Roderigo, Brabantio. Turn: the marriage is made public. Quote: “*the beast with two backs*”. \\
    D. Act 4 scene 2 — the willow scene. Who: Desdemona, Emilia. Turn: Desdemona asks Emilia to wrap her in her wedding sheets. Quote: “*lay on my bed my wedding sheets*”.],
  [
    *Step 1 — read the stem's two words.* “Cost” and “loyalty”. The row must record a loyalty and a price.

    *Step 2 — test the rows.* A records an arrival, C records a scandal, D records a foreboding. Only B names a loyalty (Emilia's to Desdemona) and a cost (her life) in the same turn.

    *Step 3 — check the quotation.* Six words, exact, and usable in an answer about loyalty, about gender, or about who is believed.

    *Check.* Would you need a second row? Yes — but B is the row the question is asking for, and the others are rows for other questions. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.6 The Bank in the Exam Hall — a Two-Minute Set

#mcq(1, [A bank is better than a summary because it records], [events in order], [the number of pages], [the author's biography], [what each unit does, and what changes in it])

#mcq(2, [The four columns of a bank row are], [unit, who, turn, quote], [plot, theme, setting, style], [author, date, title, genre], [act, scene, line, page])

#mcq(3, [A row without a turn is], [complete], [the best kind], [unfinished, because nothing has been said about what changes], [only for poetry])

#mcq(4, [The ten marked passages should be chosen for], [how much you enjoyed them], [the questions they can answer], [their length], [their position in the text])

#answer-key-grid(("D", "A", "C", "B"))

#answer-notes((
  ("B", [The bank records function and change. A summary records sequence, and the paper does not ask about sequence.]),
  ("B", [Unit, who, turn and quote: four columns, each answering a different shape of question.]),
  ("B", [The turn is what the unit does; without it the row is an event and cannot answer an effect or function question.]),
  ("B", [The slots are scarce, so each passage must be able to carry several stems. Enjoyment is not a criterion.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the four columns and the review routine.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A summary answers “what happens”, which the paper never asks; a bank answers “what does this unit do”, which every set-text stem is a version of. One row per scene or chapter, in four columns: the unit, who is present and what each wants, what has changed by the last line, and six to ten exact words. The turn is the column that does the work, because a row without a turn has not been thought about. A drama bank is written per scene and a prose bank per chapter, with 4a and 4b where a chapter moves from public to private, and a fifth pencil column for what the chapter refuses to say. The cast grid records a want, an obstacle and a function per character; the function is what the text loses without them. Ten passages per text, chosen for the questions they can carry rather than for pleasure — one from the opening, one from each turn, one long speech, one quiet scene, the last page. Review by covering the right-hand columns and reciting, once a week, rereading only the rows you half knew.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Write one scene row and one chapter row, in the four columns.],
  [Compress three scenes to five words each.],
  [Fill three rows of a cast grid with wants, obstacles and functions.],
  [Choose ten passages for a text you know, and say why each is there.],
  [Run the fifteen-minute review on four rows.]
))

#concept-box("Carry this into Chapter 3")[
  The cast grid is the bank's shortest column and its most useful. The next chapter takes
  the four words in it — wants, obstacle, function — and turns them into answers to the
  character questions the paper actually sets.
]

#include "drill_ch02.typ"
