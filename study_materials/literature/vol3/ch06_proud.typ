#import "template.typ": *

#current-chapter.update("Chapter 6: The Proud King")

#pagebreak()

#chapter-opener(
  6,
  "The Proud King",
  subtitle: "William Morris — the Boast, the Beggar and the Angel on the Throne",
  syllabus-ref: "Section 4 • Prescribed Poems",
  utme-weight: "4 Qs a year",
  running: "The Proud King",
)

#focus-radar(
  objectives: (
    "Place the poem: Morris, *The Earthly Paradise*, 1868–70, and the medieval story he borrows.",
    "Tell the story in the right order, in twelve scenes.",
    "Keep the characters apart: Jovinian, the angel, the queen, Duke Peters, the ranger, the old priest.",
    "Read the images: the hart, the river, the clothes, the kennel, the throne.",
    "Give the themes, with the scenes that prove them.",
    "Answer the questions on rhyme royal, irony and the poem's ending.",
  ),
  hotspots: (
    "The poem is *narrative*, not lyric: it tells a story in the third person, in *rhyme royal* stanzas (ababbcc). There are about eight hundred and fifty lines, and the paper examines it by *scene*, never by stray line.",
    "The boast is the engine: Jovinian says he has no need of temple or priest because he is a god while he lives. Everything after that is the working out of the boast.",
    "The *angel* takes the king's place, not his life. That is the poem's central invention: the punishment is to be *seen as nobody* while someone else is seen as you.",
    "The *old priest* is the only person who recognises him, and only after the cry. Recognition in this poem is moral, not visual.",
    "The ending is double: the angel returns the kingdom, and thirty years later the grey-headed king has the story written into the archives. Morris adds that he does not know whether the next king was chastised in his turn.",
  ),
  trap-summary: "Four slips. (1) Calling the poem a ballad or a lyric — it is a narrative in rhyme royal. (2) Thinking the angel is a dream or a hallucination; the poem presents him as real and as a better king. (3) Confusing the two 'kings' — the true Jovinian and the angel who wears his face. (4) Missing the frame: the story is told thirty years later, from the archives.",
)

// ============================================================================
== 6.1 The Poem and Its World

*William Morris* (1834–1896) was a poet, a designer, a printer and a socialist, and one
of the busiest men of the Victorian age. *The Earthly Paradise* (1868–70) is a long
frame-narrative in the manner of Chaucer and Boccaccio: a company of wanderers, unable
to find the earthly paradise, settle in an unknown western land and tell stories to
pass the time, month by month. *The Proud King* is one of those tales. Its argument, in
Morris's own summary at the head of the poem, is a king blinded by pride who denies
that God has any share in him, and is answered by losing everything that makes him a
king.

#concept-box("A story inside a story inside a story")[
  Morris's poem has three layers. The outermost is *The Earthly Paradise* itself, a
  frame of wanderers telling tales. Inside that is the tale of Jovinian, told by one
  of the wanderers. Inside that is the poem's own ending, in which the king, thirty
  years on, has the story written into his archives — so that the tale we are reading
  is, within the fiction, a document the king commissioned. A question that asks
  "who tells the story?" is asking about this architecture, and the answer is not
  "Morris".
]

#text(size: 9.4pt)[The medieval source is a well-known exemplum — a story told to make a moral point — about a ruler who is humbled by being replaced. Morris does not invent the plot; he invents the *treatment*: the rhyme royal stanza, the slow scenes, the precise domestic detail (the kennel, the porter, the ranger's household) and the long, patient ending. The examinable difference between Morris and his source is the thing he adds: the angel who rules *well*, and the king who learns to be a subject in his own kingdom.]

#rule-box("Three facts that settle most questions")[
  + *Form:* narrative poem in rhyme royal — seven-line stanzas rhymed ababbcc, iambic pentameter.
  + *Length:* about eight hundred and fifty lines; it is the longest text in this volume by far.
  + *Structure:* the boast, the loss, the wanderings, the recognition, the restoration, the frame.
]

// ============================================================================
== 6.2 The Argument, in Twelve Scenes

The paper examines this poem by scene, so the table below is the chapter's most
important page. Learn the *order*, not the wording: a question that names a scene and
asks what happens next can be answered from the sequence alone.

#diagram-fig("diagrams/ch06_proud_arc.svg",
  "The arc: pride, loss, wandering, recognition, restoration, and the story written down.", width: 100%)

#table(
  columns: (0.45fr, 1.75fr, 2.4fr),
  inset: (x: 4.2pt, y: 3.7pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Scene],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Why it matters],
  ),
  [*1*], [Jovinian boasts that he needs no temple and no priest, and that he is a god while he lives], [the poem's cause; every later scene is a consequence],
  [*2*], [he scorns the land his forebears won, calling it fit for the kennel of his dogs], [the pride is not only theological but dynastic: he despises his own inheritance],
  [*3*], [he hunts alone, follows a hart, and comes to a river], [the hart leads him away from his court and his clothes — the poem's machinery],
  [*4*], [he bathes, and while he is in the water his clothes and horse are taken], [the loss is literal: to be a king is to be dressed and mounted],
  [*5*], [he goes to the ranger's gate, and the porter mocks him and refuses him], [the first denial; the lowest servant does not know him],
  [*6*], [the ranger's household takes him for a madman], [the denial spreads upward through the household],
  [*7*], [Duke Peters, who had served him, denies him], [his own nobility fails to recognise him; rank does not guarantee insight],
  [*8*], [at the palace the queen and the lords deny him], [the worst denial: the person closest to him cannot see him],
  [*9*], [he lives as a beggar and a servant, and learns what the poor receive], [the education of the king; the poem's moral centre],
  [*10*], [he cries out to God — "O Lord God, give me back myself again!"], [the turn: the cry is not for the crown but for the self],
  [*11*], [the old priest recognises him, and the angel on the throne is revealed], [recognition comes from the one who knew him as a soul, not as a rank],
  [*12*], [the angel returns the kingdom, and thirty years later the grey-headed king has the tale written into the archives], [the frame closes; the story becomes a document and a warning],
)

#text(size: 9.4pt)[Scene 10 is the poem's hinge, and the wording matters: he asks for *himself*, not for his kingdom. A king who asked for his crown back would have learned nothing; a man who asks for his own self back has understood that the crown was never the thing that was lost. Every question about the poem's moral turns on that distinction.]

#diagram-fig("diagrams/ch06_proud_chain.svg",
  "The chain of cause: the boast makes the loss necessary, and the loss makes the recognition possible.", width: 100%)

// ============================================================================
== 6.3 The Characters

#table(
  columns: (1.15fr, 2.55fr, 0.95fr),
  inset: (x: 4.4pt, y: 4.0pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Who they are, and the one thing they do],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Scene],
  ),
  [*Jovinian*], [the proud king; boasts that he is a god while he lives, loses his identity, begs, repents and is restored], [1–12],
  [*The angel*], [the figure in white with wings who takes the king's place, rules better than he did, and returns the kingdom], [4–11],
  [*The queen*], [Jovinian's wife, who denies him at the palace; her denial is the poem's cruellest because it is the most intimate], [8],
  [*Duke Peters*], [a noble who had served the king, fails to recognise him and jails him], [7],
  [*The ranger*], [keeper of the forest; his household is the first to refuse the king shelter], [5–6],
  [*The porter*], [the lowest servant, who mocks the king at the ranger's gate; the first denial in the poem], [5],
  [*The old priest*], [the one who recognises Jovinian, and only after the cry; recognition is moral, not visual], [11],
  [*The new king*], [the ruler who follows Jovinian, about whom Morris says he does not know whether God chastised him in his turn], [12],
)

#concept-box("Two men with one face")[
  The poem's most difficult idea is that the angel is not a disguise worn by an
  impostor. He is the king *as the kingdom sees him* — the public person, the rank,
  the face on the coin — and that person rules well. Jovinian's fault was to think
  that the public person was himself. The poem's punishment is to let him meet the
  public person from outside, as a beggar at the gate, and to discover that the
  kingdom can get along perfectly well without the man inside the clothes.
]

// ============================================================================
== 6.4 The Images

#table(
  columns: (1.2fr, 1.75fr, 1.9fr),
  inset: (x: 4.4pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Image],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it stands for],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Where it appears],
  ),
  [*The clothes*], [rank, identity, the public self], [taken at the river; returned at the end],
  [*The horse*], [power and mobility — the king's ability to go where he likes], [taken with the clothes],
  [*The hart*], [the object of the hunt, and the lure that leads him away from his court], [scene 3],
  [*The river*], [the place of bathing, nakedness and loss; a boundary], [scene 4],
  [*The kennel*], [what he calls his forebears' land — the depth of his contempt], [scene 2],
  [*The gate*], [the threshold where identity is tested, and where it fails], [scenes 5, 8],
  [*The beggar's rags*], [the truth of the human condition beneath rank], [scene 9],
  [*The throne*], [the seat that makes a man a king, and that can hold someone else], [scenes 10–12],
  [*The archives*], [memory, record, and the story's own frame], [scene 12],
)

#trap-box("The kennel line")[
  The line about the kennel of his dogs is often quoted as if it were a piece of
  self-deprecation. It is the opposite. Jovinian is saying that the land his
  ancestors won is fit only to be a dog-house — a contempt aimed at his own line, and
  therefore at the source of his own rank. The poem's irony is that he ends the story
  sleeping in worse places than a kennel.
]

// ============================================================================
== 6.5 The Themes

#table(
  columns: (1.1fr, 2.15fr, 1.9fr),
  inset: (x: 4.5pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The claim the poem makes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The scene that proves it],
  ),
  [*Pride and its punishment*], [a man who thinks he is a god is made to live as the lowest of men], [scenes 1–9],
  [*Humility*], [only the humble are fit to rule], [the angel's judgment, scene 11],
  [*Identity and rank*], [a man is not his office; strip the office and the man remains], [scenes 4–8],
  [*Recognition*], [those who love the rank cannot see the man; the priest sees the soul], [scenes 5–11],
  [*Repentance*], [the turn is a cry for the self, not for the crown], [scene 10],
  [*Divine justice and mercy*], [the punishment is severe but it is not final], [scenes 10–12],
  [*The power of story*], [the tale is written down so that it will be remembered], [scene 12],
  [*The corruption of power*], [even a good king must be warned, and the next one may not be], [scene 12],
)

#text(size: 9.4pt)[The themes are a single argument with a beginning and an end. Pride is the cause; loss of identity is the punishment; begging is the education; the cry is the turn; recognition is the reward; and the archive is the moral — a story told so that the next king will not have to learn it the same way. Morris's final sentence, that he does not know whether God chastised the new king in his turn, is the poem's last irony: the story is a warning, and warnings can be ignored.]

// ============================================================================
== 6.6 Technique

#rule-box("Four techniques, and what each one buys")[
  + *Rhyme royal.* Seven lines, ababbcc, iambic pentameter. The couplet at the end of each stanza is a small closing, which is why the poem can move scene by scene without losing shape.
  + *Narrative in the third person.* The poem never enters Jovinian's mind for long; it watches him, which makes the humiliation objective — we see him at the gate, and we are not told how to feel.
  + *Irony.* The king who called himself a god is refused by a porter. The man who despised his ancestors' land ends with no land at all. The throne is occupied by someone who deserves it.
  + *Symbol and frame.* Clothes, gate, throne and archive carry the meaning; the frame at the end turns the poem into a document, and the document into a warning.
]

#concept-box("Why rhyme royal suits this poem")[
  Rhyme royal was Chaucer's stanza — the stanza of *Troilus and Criseyde* and of the
  *Canterbury Tales* — and Morris uses it to place his poem in a medieval English
  line. The form is also a machine for narrative: seven lines are long enough to carry
  a scene and short enough to close it, and the final couplet gives every stanza a
  little click of completion. Eight hundred and fifty lines of it is a deliberate
  archaism, and the archaism is the point: Morris is telling an old story in an old
  way, about a pride that is always new.
]

// ============================================================================
== 6.7 Four Worked Questions

#worked-example(
  1,
  "The boast",
  [Jovinian's boast is that

    A. he will conquer the neighbouring kingdom
    B. he has no need of temple or priest, being a god while he lives
    C. his queen is the most beautiful in the world
    D. he will build a new palace],
  [
    *Step 1 — locate the boast.* It is the poem's opening sin, in the first scenes.

    *Step 2 — recall the wording.* "What need have I for temple or for priest, / Am I not God, whiles that I live at least".

    *Step 3 — eliminate.* No conquest, no beauty contest and no building programme is the boast.

    *Check.* The sin is theological pride. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The mechanism",
  [Jovinian loses his identity because

    A. he is wounded in a battle
    B. his clothes and horse are taken while he bathes, and an angel takes his place
    C. the queen banishes him
    D. he gives the kingdom away],
  [
    *Step 1 — follow the plot.* He hunts alone, follows the hart to the river, bathes, and comes out to find his clothes and horse gone.

    *Step 2 — add the second half.* At the palace, an angel wears his face and sits on his throne.

    *Step 3 — eliminate.* There is no battle, no banishment by the queen, and no gift of the kingdom.

    *Check.* The loss is literal and supernatural at once. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The turn",
  [The words that mark Jovinian's repentance are

    A. "Am I not God?"
    B. "O Lord God, give me back myself again!"
    C. "the kennel of my dogs"
    D. "I know not"],
  [
    *Step 1 — locate the cry.* It comes after the wanderings and before the recognition.

    *Step 2 — read it closely.* He asks for *himself*, not for his kingdom — which is what makes it repentance rather than complaint.

    *Step 3 — eliminate.* The boast is the sin; the kennel is the scorn; "I know not" is the narrator's phrase about the next king.

    *Check.* The cry is the poem's hinge. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The frame",
  [The poem ends with

    A. the angel's death
    B. the king, thirty years later, having the story written into the archives
    C. the queen's apology
    D. a battle for the throne],
  [
    *Step 1 — recall the last movement.* The angel returns the kingdom and Jovinian rules again.

    *Step 2 — recall the final scene.* Thirty years on, the grey-headed king has the tale written down in the king's archives.

    *Step 3 — eliminate.* No death of the angel, no apology scene and no battle closes the poem.

    *Check.* The ending makes the poem a document. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.8 Two-Minute Set

#mcq(1, [The Proud King is written in], [blank verse], [rhyme royal], [free verse], [ballad metre])

#mcq(2, [The king's name is], [Peters], [Jovinian], [Jovian], [John])

#mcq(3, [The figure who takes the king's place is], [a duke], [an angel], [the queen], [a beggar])

#mcq(4, [The only person who recognises the king is], [the queen], [the old priest], [Duke Peters], [the porter])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Seven-line stanzas rhymed ababbcc in iambic pentameter: Chaucer's stanza, chosen for its medieval associations.]),
  ("B", [Jovinian — the name is the one Morris uses, and it is the name the angel also claims when he takes the throne.]),
  ("B", [The angel in white with wings, who rules better than Jovinian did and returns the kingdom when the king repents.]),
  ("B", [The old priest, and only after Jovinian's cry — recognition in the poem is moral rather than visual.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the boast, the loss, the gate, the cry, the angel and the archive.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    William Morris's *The Proud King*, from *The Earthly Paradise* (1868–70), is a narrative poem of about eight hundred and fifty lines in rhyme royal — seven-line stanzas rhymed ababbcc. Jovinian, a king blinded by pride, boasts that he needs no temple or priest because he is a god while he lives, and scorns the land his forebears won as fit only for the kennel of his dogs. Hunting alone, he follows a hart to a river, bathes, and has his clothes and horse taken; an angel takes his place on the throne. He is refused at the ranger's gate by the porter, taken for a madman by the ranger's household, denied by Duke Peters, and finally denied by the queen and the lords at his own palace. He lives as a beggar, learns what the poor receive, and cries out, "O Lord God, give me back myself again!" — asking for himself, not his crown. The old priest recognises him; the angel, revealed in white with wings, returns the kingdom, saying that only the humble are fit to rule. Thirty years later the grey-headed king has the tale written into the archives, and Morris adds that he does not know whether the next king was chastised in his turn. The themes are pride, humility, identity and rank, recognition, repentance, divine justice and the power of story.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Name the poet, the collection and the stanza form.],
  [Recite the twelve scenes in order.],
  [Quote the boast and the cry exactly.],
  [Say what the kennel line reveals about Jovinian.],
  [Explain why the priest recognises him and the queen does not.],
  [Say what the frame adds that the story alone would not.]),
)

#concept-box("Carry this into Chapter 7")[
  You now have five poems and four papers. Chapter 7 is the only chapter in the volume
  about *nothing but the paper*: its shape, its order, its timing, and the three
  question types that the four mock papers are built to train. Read it once before the
  first paper and once after the second.
]

#include "drill_ch06.typ"
