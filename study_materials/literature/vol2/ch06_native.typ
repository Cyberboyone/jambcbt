#import "template.typ": *

#current-chapter.update("Chapter 6: Native Son")

#pagebreak()

#chapter-opener(
  6,
  "Native Son: A Worked Model",
  subtitle: "Three Books in One Page, the Machine of the City, the Style That Narrates a Fear, and the Ending That Refuses Comfort",
  syllabus-ref: "Section 1 • Prose — Native Son, Richard Wright",
  utme-weight: "8 Qs a year",
  running: "Native Son",
)

#focus-radar(
  objectives: (
    "Hold the three books and what each one changes.",
    "Explain how the Dalton household completes rather than interrupts the city.",
    "Analyse free indirect discourse as the novel's instrument of sympathy and judgement.",
    "Use the novel's five themes without separating them.",
    "Answer the ending question without deciding whether Bigger is a hero.",
    "Take an eight-question set on the novel in four minutes.",
  ),
  hotspots: (
    "The three books are *Fear*, *Flight* and *Fate*, and each one is a different kind of space: the kitchenette, the streets, the cell.",
    "The Daltons are Bigger's *landlords* as well as his employers. The novel's argument is in that coincidence.",
    "The rat in the opening is a description of Bigger's condition, not a decoration.",
    "The narration gives us Bigger from inside and judges him from outside at the same moment — the double voice is the style.",
    "The ending gives Bigger recognition, not absolution, and the difference is the answer to most questions about it.",
  ),
  trap-summary: "Three failures. (1) Reading the killing of Mary as the novel's central act when the central act is Bigger noticing that he is *seen*. (2) Calling Bigger a hero or a monster, when the novel makes both words unusable. (3) Ignoring the third book, which contains the argument.",
)

// ============================================================================
== 6.1 Three Books in One Page

#diagram-fig("diagrams/ch06_map.svg",
  "The three books of *Native Son* and the space each one happens in. The novel changes room in order to change what can be said.", width: 100%)

#table(
  columns: (1.0fr, 1.9fr, 1.95fr, 1.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Book],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The action],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What changes],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Space],
  ),
  [*One: Fear*], [the rat, the relief office, the Dalton house, the killing of Mary], [a boy who was nobody becomes a man with a secret], [the kitchenette, then the big house],
  [*Two: Flight*], [the furnace, the ransom note, Bessie, the newspapers, the chase], [the secret becomes a story that other people write], [the streets and the rooftops],
  [*Three: Fate*], [arrest, trial, Max, the cell], [he is spoken about until he speaks], [the cell and the courtroom],
)

#concept-box("Why the rooms matter")[
  The kitchenette is too small for a family; the Dalton house is too large for one blind woman;
  the cell is exactly the size of one person. The novel moves Bigger through three scales of space
  in order to show that none of them was built to hold him.
]

// ============================================================================
== 6.2 The Machine of the City

#diagram-fig("diagrams/ch06_arc.svg",
  "The arc of the novel: fear, flight, fate — and the moment of recognition that the trial cannot reach.", width: 100%)

The novel's social argument is made by *coincidence*, and the largest coincidence is that
the family who employs Bigger also collects his mother's rent.

#table(
  columns: (1.15fr, 2.15fr, 1.75fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does in the novel],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it shows],
  ),
  [*The Dalton rent*], [the family's poverty is income for the family that hires him], [charity and profit are the same transaction],
  [*The relief office*], [Bigger is processed into the job that destroys him], [the system's help is a route, not a rescue],
  [*The newspapers*], [they manufacture a story Bigger then has to live inside], [the public writes the criminal before the court does],
  [*The trial*], [Max explains Bigger's life; Bigger is not asked], [explanation and understanding are not the same],
)

#shortcut-box("The two sentences to memorise")[
  “The Daltons own the building Bigger's family cannot afford”; and “the newspapers describe Bigger
  before he has spoken.” Both sentences turn a plot detail into an argument, and both can be quoted
  in almost any essay on the novel's politics.
]

#worked-example(
  1,
  "Coincidence as argument",
  [Why does the novel make the Daltons Bigger's landlords?

    A. To show that they are kind people. \\
    B. To show that the family's charity and its profit come from the same source. \\
    C. To make the plot more complicated. \\
    D. To show that Bigger is unlucky.],
  [
    *Step 1 — treat coincidence as design.* In a novel this controlled, a coincidence is a claim. The question is what the claim is.

    *Step 2 — test the options.* A is contradicted by the novel's tone; C and D explain nothing. B names a relation — the same money is charity in one room and rent in another.

    *Step 3 — connect to the ending.* Because the Daltons are landlords, Max's defence can argue that Bigger's crime was produced by a system that the Daltons profit from, which is precisely what the court cannot hear.

    *Check.* Does the answer require the whole novel? Yes — that is how you know it is a structural claim. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 6.3 The Double Voice

*Native Son* is narrated in the third person, but the third person leans into Bigger's
head and then steps back out of it. The technique is called free indirect discourse, and
it does two things at once: it makes us feel what Bigger feels, and it lets the novel
judge him without a narrator saying so.

#table(
  columns: (1.35fr, 2.05fr, 1.65fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Effect],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How it is made],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Why it matters],
  ),
  [*Claustrophobia*], [sentences that stay in one room and one head], [the reader shares the trap],
  [*Sympathy*], [his fear is reported from inside, in his vocabulary], [we cannot dismiss him as a case],
  [*Judgement*], [the narration withdraws at the moments of violence], [we see the act as well as the fear],
)

#concept-box("The withdrawal")[
  At the moments when Bigger is most violent, the prose becomes most external — the camera steps
  back and records. That withdrawal is the novel's moral instrument: it refuses to make the killing
  either glamorous or explicable, and it refuses to let us stop feeling for him either.
]

#worked-example(
  2,
  "Reading the double voice",
  [A passage reports Bigger's fear in his own words but keeps the past tense and the third person. What does this technique achieve?

    A. It proves the narrator is Bigger. \\
    B. It gives us Bigger's experience and a standpoint outside it at the same time. \\
    C. It makes the novel hard to read. \\
    D. It shows that Bigger is unreliable.],
  [
    *Step 1 — name the technique.* Third person, past tense, but with the character's idiom and knowledge: free indirect discourse.

    *Step 2 — name the double effect.* Inside and outside at once — sympathy plus judgement. Only B says both.

    *Step 3 — reject the near-misses.* A mistakes free indirect discourse for first person; D mistakes a technique for a character flaw.

    *Check.* Could you support B with two moments — one where the prose is inside, one where it steps back? Yes. The answer is *B*.
  ],
  tier: "HARD",
)

// ============================================================================
== 6.4 The Five Themes in This Novel

#table(
  columns: (1.2fr, 2.05fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The novel's claim],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The resisting moment],
  ),
  [Race and visibility], [to be Black in this city is to be seen constantly and recognised never], [Bigger is recognised by Max, at the end, and it changes nothing legally],
  [Fear], [fear is not an emotion the characters have but a structure they live inside], [Bigger's moments of exhilaration after the killing],
  [Violence], [violence is what happens when a life has no other way of making a mark], [Bessie's death is a choice, not a necessity],
  [The city], [the city is a machine for sorting people by address], [the brief solidarity of the poolroom],
  [Religion], [the church offers Bigger a story in which his suffering is rewarded later], [his mother's faith is genuine, not merely an opiate],
)

#trap-box("Hero or monster?")[
  The question is a trap, because the novel makes both words unusable. Bigger is capable of
  calculation and murder, and he is also the product of a machine that never offered him a
  way to be seen. Answer with the *relation*: the novel makes sympathy and condemnation
  simultaneous, which is why the trial cannot resolve it.
]

// ============================================================================
== 6.5 The Ending

#rule-box("The last pages, in three moves")[
  + *Max explains.* He offers the court a sociological account of Bigger's life, and it is accurate and useless.
  + *Bigger speaks.* He says he did not know he was alive until he felt things hard enough to kill for.
  + *Nothing is commuted.* The recognition is real and the sentence stands, and the novel refuses to trade one for the other.
]

#worked-example(
  3,
  "The ending, weighed",
  [“The ending of *Native Son* offers Bigger no hope.” How far do you agree? Which sentence opens the strongest answer?

    A. I agree; he is sentenced to death, so there is no hope. \\
    B. I disagree; Max promises to appeal. \\
    C. The ending withholds legal hope and grants recognition, and the novel's argument is that these are different goods. \\
    D. The ending is sad.],
  [
    *Step 1 — split the word “hope”.* Legal hope, social hope and personal recognition are three different things; a good answer distinguishes them rather than choosing a side.

    *Step 2 — test the options.* A collapses them. B offers a procedural detail as though it were a theme. C distinguishes, which is what “how far” rewards.

    *Step 3 — connect to evidence.* “*I didn't know I was really alive*” supports the recognition half; the sentence supports the legal half.

    *Check.* Does C leave you something to argue against? Yes — a reader could say recognition without hope is a consolation prize. The answer is *C*.
  ],
  tier: "HARD",
)

// ============================================================================
== 6.6 The Two-Minute Set

#mcq(1, [The three books of *Native Son* are], [Crime, Trial, Appeal], [Childhood, Youth, Age], [Winter, Spring, Summer], [Fear, Flight, Fate])

#mcq(2, [The Daltons matter structurally because they are], [Bigger's landlords as well as his employers], [kind employers only], [members of the church], [friends of Max])

#mcq(3, [Free indirect discourse in the novel gives the reader], [only Bigger's view], [only the narrator's view], [Bigger's experience and an external standpoint at once], [a newspaper's view])

#mcq(4, [The furnace is best read as], [a piece of domestic equipment], [the house's system for consuming what it cannot acknowledge], [a symbol of warmth], [a clue for the police])

#mcq(5, [The ending's recognition matters because], [it saves Bigger's life], [it proves Max right], [it gives him a self that the trial cannot use], [it ends the novel quickly])

#answer-key-grid(("D", "A", "C", "B", "C"))

#answer-notes((
  ("A", [Fear, Flight, Fate: the three titles are also the three spaces — kitchenette, street, cell.]),
  ("B", [The family's rent is the Daltons' income, which makes charity and profit one transaction.]),
  ("C", [Inside and outside at once: sympathy plus judgement, which is the novel's moral instrument.]),
  ("B", [The furnace is where the house puts what it cannot admit into the household.]),
  ("B", [Recognition is not acquittal. The novel separates the two on purpose.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: three books, the machine of the city, the double voice.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    *Native Son* is three books — Fear, Flight, Fate — and three spaces: the kitchenette that is too small for a family, the streets that publish Bigger before he speaks, and the cell that is exactly the size of one person. Its social argument is made by coincidence: the Daltons employ Bigger and collect his mother's rent, so their kindness and their profit are the same money, and the relief office that finds him the job is part of the same machine. The narration is third person that leans into Bigger's head and steps back out of it, which gives the reader his fear and a standpoint outside it at once; at the moments of violence the prose withdraws, and that withdrawal is the novel's moral instrument. The themes — race and visibility, fear, violence, the city, religion — are all versions of one claim: that a life with no way of being recognised will find a way of making a mark. The ending grants recognition and withholds hope, and refuses to trade one for the other.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Name the three books and the space of each.],
  [Explain the Dalton rent in one sentence that makes an argument.],
  [Say what free indirect discourse does, in one sentence with two effects in it.],
  [Quote six to ten words from the last book.],
  [Write the first sentence of an answer to “Bigger is a monster.”]
))

#concept-box("Carry this into Chapter 7")[
  Two texts have now been modelled in full — one drama, one prose — and both were read with the
  same method. Chapter 7 applies the method to the three African texts at dossier length, so that
  no prescribed text is left without a row, a function list and five quotations.
]

#include "drill_ch06.typ"
