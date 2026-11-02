#import "template.typ": *

#current-chapter.update("Chapter 8: Comparison and the Exam Hall")

#pagebreak()

#chapter-opener(
  8,
  "Comparison and the Exam Hall",
  subtitle: "The Shared Grid, the Three Comparative Stems, the Difference Sentence, and Forty Minutes Under a Clock",
  syllabus-ref: "Sections 1–5 • Comparison and Examination Technique",
  utme-weight: "5 Qs a year",
  running: "Comparison and the Exam Hall",
)

#focus-radar(
  objectives: (
    "Build a shared grid before writing a comparative answer.",
    "Recognise the three comparative stems and what each one wants.",
    "Write a difference sentence that does more than note a difference.",
    "Plan the forty minutes of the paper and defend the plan.",
    "Answer when you have read only one of the two texts named.",
    "Take a set of questions on comparison and timing.",
  ),
  hotspots: (
    "Comparison is not two descriptions in one paragraph; it is one claim tested on two texts.",
    "The *shared grid* has four columns: claim, text A, text B, verdict.",
    "“Which text is more …” always wants a criterion, and the criterion is the mark.",
    "The difference sentence has the form “both … but where A …, B …”.",
    "The clock is part of the assessment: forty questions in forty minutes means fifty-four seconds each, including the reading.",
  ),
  trap-summary: "Three failures. (1) Writing about A, then about B, and calling the join a comparison. (2) Ranking the texts by preference rather than by criterion. (3) Spending eleven minutes on the first five questions because they were about a text you had just revised.",
)

// ============================================================================
== 8.1 The Shared Grid

#diagram-fig("diagrams/ch08_compare.svg",
  "Four axes for a comparison. Choose one, and let it carry both texts: the axis you choose is already the claim.", width: 100%)

#table(
  columns: (1.05fr, 1.55fr, 1.55fr, 1.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Column],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example — grief],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it prevents],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it earns],
  ),
  [*Claim*], [both texts make grief public, and only one makes it powerful], [two summaries with no argument], [an arguable thesis],
  [*Text A*], [in *Lonely Days* the village converts grief into a procedure], [describing Yaremi's feelings], [a mechanism],
  [*Text B*], [in *Faceless* the city refuses to convert it, and the refusal is the death], [describing Fofo's sadness], [a contrast that is also a claim],
  [*Verdict*], [procedures can be fought; silence cannot], [a preference for one book], [a judgement with a reason],
)

#concept-box("The test of a comparison")[
  Cover the two middle columns. If the verdict still makes sense, the comparison was doing work. If the
  verdict collapses into “they are different”, the middle columns were two summaries standing next to
  each other.
]

// ============================================================================
== 8.2 The Three Comparative Stems

#table(
  columns: (1.35fr, 1.9fr, 1.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Stem],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it wants],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The sentence to write first],
  ),
  [*“Compare the treatment of X in A and B.”*], [one claim, two mechanisms, a verdict], [“Both texts treat X as a public matter, but where A …, B …”],
  [*“Which text presents X more effectively?”*], [a criterion, then the two texts tested against it], [“If effectiveness means …, then A …, because …”],
  [*“How far do A and B agree that …?”*], [agreement and disagreement, in proportion], [“They agree that …, but they disagree about who is responsible for it.”],
)

#shortcut-box("The difference sentence")[
  Learn four words: *both … but where …* . “Both texts make the child visible, but where *Faceless* makes
  her visible through an investigation, *Harvest of Corruption* makes her visible only at the sentencing.”
  The frame forces a shared ground and a real difference, which is exactly what the stem pays for.
]

// ============================================================================
== 8.3 Comparing Without a Second Text

The paper sometimes names two texts and you have read only one. This is not a disaster; it is a
technique problem.

#rule-box("The one-text protocol")[
  + Answer on the text you know, fully, and say what it does — do not apologise for the other.
  + Add the comparison at the level of *function*: “a text that does the opposite would have to …”.
  + If the question forces both, use the second text only for a single contrast, and keep it short.
  + Never invent a character or a scene. An invented example is worse than a missing one.
]

#trap-box("The invented quotation")[
  A fabricated line is the one error a marker cannot forgive, because it cannot be checked and it
  poisons every other quotation in the script. If you cannot recall the words, describe the moment:
  “the scene in which she tears the cloth” is worth more than a line you have made up.
]

#worked-example(
  1,
  "The difference sentence",
  [Which sentence compares two texts rather than describing them one after the other?

    A. *Lonely Days* is about a widow and *Faceless* is about a street child. \\
    B. Both novels show a woman trying to protect a child, but where Yaremi's village takes the child away by custom, Fofo's city takes her away by neglect. \\
    C. *Lonely Days* is set in a village, while *Faceless* is set in a city. \\
    D. Both novels are sad.],
  [
    *Step 1 — look for a shared ground.* B has one (“both show a woman trying to protect a child”) and then a difference with a mechanism in it.

    *Step 2 — test the difference.* A difference of *setting* (C) is a fact, not a reading. A difference of *means* — custom versus neglect — is a claim.

    *Step 3 — check the verdict's usefulness.* B's difference predicts the endings: one is refused, the other escapes. That is an essay.

    *Check.* Does B name both texts and use both? Yes, and it never lists them separately. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  2,
  "“More effective”",
  [“Which text presents the suffering of a child more effectively, *Faceless* or *Harvest of Corruption*?” What must the first sentence do?

    A. Name the text you prefer. \\
    B. Define what “effective” will mean in this answer. \\
    C. Summarise both plots. \\
    D. Say that both are effective.],
  [
    *Step 1 — notice the hidden noun.* “Effectively” is a judgement, and a judgement needs a criterion. Without one, the answer can only be preference.

    *Step 2 — choose the criterion.* B supplies one (“effective” might mean: the reader is made to feel the loss as a loss of a particular person). Every later sentence can then be measured.

    *Step 3 — reject.* A is preference; C is summary; D refuses the question.

    *Check.* Would the criterion let you concede a point to the other text and still reach a verdict? Yes. The answer is *B*.
  ],
  tier: "HARD",
)

// ============================================================================
== 8.4 Forty Minutes

#table(
  columns: (0.95fr, 2.5fr, 1.65fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Minutes],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What you do],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why],
  ),
  [0–2], [read the whole paper; mark the three easiest set-text questions], [the first marks are the cheapest and they calm the clock],
  [2–18], [unseen passages, then the fact questions on set texts], [recognition is faster than argument],
  [18–34], [the function, effect and judgement questions], [they need the time you have just banked],
  [34–38], [every blank filled; no question left empty], [there is no negative marking, so a blank is a certain loss],
  [38–40], [check that the answer sheet matches the question numbers], [misalignment is the commonest avoidable loss],
)

#concept-box("Fifty-four seconds")[
  Forty questions in forty minutes is fifty-four seconds each, reading included. That number is the
  single most useful fact in this chapter: it means a question that has taken ninety seconds must be
  answered, guessed and left, because the next one is already late.
]

// ============================================================================
== 8.5 What to Do When the Clock Wins

#shortcut-box("The last five minutes")[
  + Fill every blank. A guess has a one-in-four chance; a blank has none.
  + Prefer the option that names a *function* over the one that names a *feeling*.
  + Prefer the option that is *specific to the text* over the one that would fit any text.
  + Never change more than two answers in the last minute; the first instinct is right more often than the panic is.
]

#trap-box("Three exam-hall habits that cost marks")[
  *Reading the stem twice and the options once.* The options carry the trap; read them all before choosing.

  *Choosing the longest option because it looks like the work of a careful examiner.* Length is not accuracy, and the longest option is often a near-miss with a qualifying clause bolted on.

  *Leaving a judgement question until the end and then rushing it.* A judgement question answered in ten seconds is a guess with extra words.
]

#worked-example(
  3,
  "Timing under pressure",
  [You are at question 31 with nine minutes left and four questions unmarked. What is the best plan?

    A. Read the remaining questions carefully and answer three well. \\
    B. Answer all remaining questions quickly, then return to any that seemed hard. \\
    C. Leave them; the earlier answers are safer. \\
    D. Go back and check questions 1–10 first.],
  [
    *Step 1 — count the cost.* Four blanks cost four certain marks. Three careful answers may earn three, and the fourth would be a guess anyway.

    *Step 2 — test B.* Answering all four quickly banks four chances and leaves time to revisit — strictly better than leaving one blank.

    *Step 3 — reject C and D.* C accepts a certain loss; D spends the remaining minutes on questions that are already answered.

    *Check.* Is there a negative marking rule that would change this? There is not. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 8.6 The Two-Minute Set

#mcq(1, [A comparative answer differs from two descriptions because it], [is longer], [names the authors], [uses more quotations], [tests one claim on both texts and reaches a verdict])

#mcq(2, [“Which text is more effective” first requires], [a criterion for effectiveness], [a preference], [a summary], [a quotation from each])

#mcq(3, [The difference sentence has the form], [“A is about … and B is about …”], [“A is better than B”], [“both … but where A …, B …”], [“A and B are similar”])

#mcq(4, [With forty questions in forty minutes, the time per question is about], [30 seconds], [54 seconds], [90 seconds], [2 minutes])

#mcq(5, [In the last minute, the worst action is], [guessing], [leaving a blank], [changing every answer], [checking the numbering])

#answer-key-grid(("D", "A", "C", "B", "C"))

#answer-notes((
  ("B", [A comparison is one claim tested twice; two descriptions standing side by side never meet.]),
  ("B", [Effectiveness is a judgement, and a judgement without a criterion is a preference.]),
  ("B", [The frame forces a shared ground and a real difference, which is what the stem pays for.]),
  ("B", [Forty minutes over forty questions is fifty-four seconds each, reading included.]),
  ("B", [A blank is a certain loss; a guess is a chance. Changing everything in panic is the worst of both.]),
))

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: the shared grid, three stems, forty minutes.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A comparison is one claim tested on two texts and resolved in a verdict, and the shared grid — claim, text A, text B, verdict — is what keeps it from becoming two descriptions standing side by side. Three stems cover the ground: compare the treatment of X, which wants one claim and two mechanisms; which text is more effective, which wants a criterion before anything else; and how far the texts agree, which wants agreement and disagreement in proportion. The difference sentence is “both … but where A …, B …”, and it forces a shared ground and a real difference into one line. If you have read only one of the two texts, answer that one fully and compare at the level of function, and never invent a quotation: a described moment is worth more than a fabricated line. Forty questions in forty minutes is fifty-four seconds each, so bank the cheap marks first, answer every blank, and spend the last minutes on the answer sheet rather than on second thoughts.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [Build a shared grid on a theme that two texts share.],
  [Write three difference sentences, one for each comparative stem.],
  [Define “effective” in a way you could defend for a whole answer.],
  [Write your own forty-minute plan, with four checkpoints.],
  [Take one mixed set under a clock and record the time per question.]
))

#concept-box("Carry this into the papers")[
  Everything in the first eight chapters now has to survive a clock. The two mock papers that follow are
  built to the real proportions — forty questions, forty minutes — and each is followed by a key with a
  note on every option, so that the clock and the method can be practised together.
]

#include "drill_ch08.typ"
