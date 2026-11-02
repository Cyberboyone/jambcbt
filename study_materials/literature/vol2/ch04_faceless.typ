#import "template.typ": *

#current-chapter.update("Chapter 4: Faceless")

#pagebreak()

#chapter-opener(
  4,
  "Faceless",
  subtitle: "Amma Darko — Accra, the Street and the Three Books of an Investigation",
  syllabus-ref: "Section 3 • Prescribed Prose",
  utme-weight: "3 Qs a year",
  running: "Faceless",
)

#focus-radar(
  objectives: (
    "Place the novel: Accra, the market, the slum and the middle-class household.",
    "Follow the three books, and say what each one is investigating.",
    "Hold the household of Maa Tsuru apart from the household of Kabria.",
    "Give the themes, with the scenes and the relationships that prove them.",
    "Read the narrative technique: two worlds, one investigation, a radio chorus.",
    "Answer the questions the paper asks about Baby T's death and Fofo's survival.",
  ),
  hotspots: (
    "The body is found behind a *Rasta hairdressing kiosk* at *Agbogbloshie* market. It is found there, and the assumption that she was a *kayayoo* — a northern market porter — is enough to stop anyone looking for her name.",
    "The killer is *Onko*, the co-tenant who first abused Baby T and later found her again as a client. *Kpakpo* is the mother's lover, who abused and sold her; *Poison* is the street lord who controls what the children earn.",
    "The post-mortem gives a fatal head injury and a handprint on the right cheek, which tells Kabria the attacker was *left-handed* — the detail that turns gossip into a case.",
    "MUTE is a non-governmental organisation that documents the lives of neglected women and children. *Kabria* is its programme officer; *Dina* is its head; *Sylv Po* is the radio presenter, not a member of MUTE.",
    "Fofo is fourteen, and she survives: the novel ends with her taken in, while Odarley is left on the street. That is why the book is not nihilistic and not sentimental at once: it is a story about one child who is reached, and about the many who are not.",
  ),
  trap-summary: "Three slips. (1) Giving the murder to Poison, who is violent but is not the one who kills her. (2) Confusing Maa Tsuru's two men — *Kwei*, the husband who left, and *Kpakpo*, the lover who abused and sold her daughter. (3) Calling Kabria a journalist; she works for an NGO, and the radio belongs to Sylv Po.",
)

// ============================================================================
== 4.1 The World of the Novel

*Faceless* is set in *Accra*, in three places that never quite meet: the market at
*Agbogbloshie*, where the body is found; *Sodom and Gomorrah*, the slum where
Maa Tsuru's family lives; and the middle-class neighbourhood where Kabria lives with
her husband and three children. The distance between the second and the third is a
twenty-minute drive and an unbridgeable difference in what a childhood is.

#table(
  columns: (1.35fr, 4.05fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Place],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it does in the novel],
  ),
  [*Agbogbloshie market*], [the public world, where a death becomes a rumour and a rumour becomes a story],
  [*Sodom and Gomorrah*], [the slum, where the family's poverty is visible and its privacy is not],
  [*Maami Broni's house*], [the brothel, where Baby T is sold and where she dies],
  [*Kabria's home*], [the contrast: three children, a husband, a car, and a mother who has the time to ask],
)

#text(size: 9.4pt)[The contrast is not decoration. Darko needs a reader who lives in Kabria's world to be able to enter Fofo's, and the novel's technique is to move the reader physically between them until the distance becomes a moral fact rather than a piece of geography.]

#diagram-fig("diagrams/ch04_faceless_books.svg",
  "Three books, three questions. Each book answers one and hands the next one on.", width: 100%)

// ============================================================================
== 4.2 The Three Books

#table(
  columns: (0.55fr, 2.5fr, 2.0fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Book],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it establishes],
  ),
  [*One*], [Fofo is nearly raped by Poison in the slum and escapes to Odarley; she learns that Baby T's body has been found and that Poison has threatened her mother; she meets Kabria at the market when she tries to steal her purse and is rescued from the crowd], [the street as a place with its own economy and its own violence],
  [*Two*], [Kabria's household and MUTE; Maa Tsuru's history — the curse, Kwei, Kpakpo, the abuse of Baby T, the sale to Maami Broni; Fofo is taken into MUTE's care], [the family history that produced the death],
  [*Three*], [the investigation: the mortuary report, the radio appeals through Sylv Po, the handprint, Poison, Maami Broni's call and disappearance, Onko's suicide, Fofo's rescue and Odarley's], [the truth, and the limit of what can be proved],
)

#text(size: 9.4pt)[The order is deliberately not chronological. The novel begins with a death and a street, then goes back to explain the household, then forward to solve the case. A question that asks why the novel withholds Maa Tsuru's history until Book Two is asking about *suspense and judgment*: the reader meets Fofo first, and therefore believes her before hearing the family's story.]

// ============================================================================
== 4.3 The Characters

#diagram-fig("diagrams/ch04_faceless_map.svg",
  "The investigation and the accused. MUTE is small, the accused are few, and the cost is a child.", width: 100%)

#table(
  columns: (1.05fr, 2.45fr, 1.5fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The line that defines them],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Function],
  ),
  [*Fofo*], [fourteen, disguised as a boy, tough enough to survive and young enough to be saved], [protagonist and witness],
  [*Baby T*], [the sister whose death the novel investigates; abused, sold, and killed], [the absent centre],
  [*Maa Tsuru*], [the mother who believes she is cursed and behaves as though it were true], [the failure that is also a victim],
  [*Kabria*], [a MUTE programme officer with three children and a car called Creamy], [the investigator and the contrast],
  [*Dina*], [the head of MUTE, who turns an organisation into a shelter], [institutional conscience],
  [*Adade*], [Kabria's husband, an architect who does not see the work she does at home], [the domestic parallel],
  [*Sylv Po*], [a radio presenter whose phone-in turns a private death into a public case], [the media],
  [*Poison*], [the street lord who controls the slum's toilets, its girls and its silence], [predatory power],
  [*Maa Tsuru's men*], [*Kwei* the husband who left, *Kpakpo* the lover who stayed and sold her daughter], [abandonment and exploitation],
  [*Onko*], [the co-tenant who abused Baby T, found her again as a client, and killed her], [the killer],
  [*Maami Broni*], [the brothel keeper who bought Baby T and later telephoned the radio to hide her identity], [commercial complicity],
  [*Odarley*], [Fofo's friend, still on the street at the end], [the survivor who is not saved],
)

#concept-box("Why the novel is called *Faceless*")[
  Every institution in the novel sees a category rather than a child: the market sees
  a *kayayoo*, the police see a case, the brothel sees stock, and the neighbours see a
  cursed family. Baby T is faceless in life, and her death is an attempt to keep her
  faceless. The investigation is literally an attempt to give her a face — a name,
  a mother, a history and a killer.
]

// ============================================================================
== 4.4 The Themes

#table(
  columns: (1.05fr, 2.2fr, 1.95fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The claim the novel makes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The scenes that prove it],
  ),
  [*Parental neglect*], [children are on the street because the adults who should keep them have given up], [Fofo's leaving; Maa Tsuru's sale of Baby T; Odarley's mother],
  [*Child abuse*], [the abuser is almost always someone the child has been taught to trust], [Kpakpo; Onko; the neighbours' silence],
  [*Poverty*], [poverty does not cause cruelty, but it removes every alternative to it], [Sodom and Gomorrah; the toilets controlled by Poison; the bread-only diet],
  [*Gender*], [girls are the cheapest thing in the slum and the least protected], [the brothel; Poison's attempted rape; Fofo's disguise as a boy],
  [*Superstition*], [the belief in a curse gives the family an explanation and the community an excuse], [Maa Tsuru's birth; the neighbours' talk],
  [*Betrayal*], [the people who should protect are the people who sell], [Kpakpo; Maami Broni; Onko],
  [*Rescue and responsibility*], [one child can be saved by an institution that refuses to look away], [MUTE; Sylv Po's phone-in; Fofo's training],
)

#text(size: 9.4pt)[The novel is careful not to make poverty an excuse. Maa Tsuru is a victim of a superstition and of two men, and she is also the woman who sold her daughter. Both statements are true at once, and a question that asks for her character wants both halves of the answer.]

// ============================================================================
== 4.5 Technique

#rule-box("Four technical choices that carry the novel")[
  + *Two worlds, alternating.* The narrative moves between the slum and Kabria's household, and the movement itself is the argument.
  + *Delayed explanation.* Baby T's story arrives in Book Two, after the reader has already met Fofo and seen the body — so sympathy precedes judgment.
  + *The radio as chorus.* Sylv Po's phone-in turns private grief into public evidence, and Maami Broni's hoax call shows how easily a public story can be poisoned.
  + *The domestic detail as contrast.* Creamy the car, the school run and the three children are comic and serious at once: they measure how much time a mother needs in order to notice a child.
]

#concept-box("The clue that solves the case")[
  The post-mortem reports a handprint on the right cheek. Kabria realises that both
  sisters carry the same mark, and that a left-handed attacker would leave it. The
  clue is small, physical and easy to miss — which is the novel's point about
  detection: the truth is not hidden in a grand revelation, it is in a bruise that
  somebody finally reads.
]

// ============================================================================
== 4.6 Four Worked Questions

#worked-example(
  1,
  "The discovery",
  [Baby T's body is found

    A. in her mother's house \\
    B. behind a hairdressing kiosk at Agbogbloshie market \\
    C. in the sea at Accra \\
    D. in Maami Broni's brothel],
  [
    *Step 1 — locate the opening.* The novel begins with the body behind the Rasta hairdressing salon at the market.

    *Step 2 — note what the placement does.* The body is *moved* there, and the rumour that she was a kayayoo is spread to stop anyone tracing her.

    *Step 3 — eliminate.* She dies in Maami Broni's house, which is precisely why the body is dumped elsewhere.

    *Check.* The discovery site and the death site are different, and the difference is the plot. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The killer",
  [Baby T is killed by

    A. Poison, the street lord \\
    B. Kpakpo, her mother's lover \\
    C. Onko, the co-tenant who had abused her and later came to her as a client \\
    D. Maami Broni, the brothel keeper],
  [
    *Step 1 — separate the roles.* Kpakpo abuses and sells her; Maami Broni buys and houses her; Poison controls the street and the brothel's muscle.

    *Step 2 — find the scene.* At the brothel, Onko — the neighbour who first abused her — is brought in as a client. She refuses him, and in the violence that follows her head is struck.

    *Step 3 — note the aftermath.* Onko kills himself after the death, which the novel uses as a confession without a trial.

    *Check.* Three men exploit her; one kills her. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The investigator",
  [Kabria's interest in the case comes from her work as

    A. a police detective \\
    B. a newspaper reporter \\
    C. a programme officer of a non-governmental organisation \\
    D. a lawyer for the accused],
  [
    *Step 1 — identify the employer.* MUTE, an NGO that documents the lives of neglected women and children.

    *Step 2 — distinguish the media figure.* The radio presenter is Sylv Po; Kabria's organisation uses his programme but is not part of it.

    *Step 3 — rule out the official roles.* She has no powers of arrest and no court role, which is why the novel's justice is partial.

    *Check.* The option must name the NGO and her position. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The ending",
  [At the end of the novel, Fofo

    A. returns to the street with Odarley \\
    B. dies of her injuries \\
    C. is rehabilitated and begins training, while Odarley remains on the street \\
    D. is adopted by Maami Broni],
  [
    *Step 1 — locate the close.* Book Three ends with Fofo in MUTE's care and preparing for a trade.

    *Step 2 — read the qualification.* The novel does not save the street; it saves one child, and it says so by leaving Odarley where she was.

    *Step 3 — eliminate.* Fofo does not die, does not return, and is not adopted by the woman who bought her sister.

    *Check.* The ending is a partial rescue, and the partiality is the point. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.7 Two-Minute Set

#mcq(1, [The novel is set in], [Lagos], [Accra], [Jabu], [Kufi])

#mcq(2, [Fofo's disguise is], [a school uniform], [a boy's clothes], [a nurse's apron], [a widow's cloth])

#mcq(3, [MUTE is], [a political party], [a non-governmental organisation], [a newspaper], [a police unit])

#mcq(4, [The novel's title refers to], [the anonymity imposed on the poor], [a mask worn at a festival], [the faceless statue in Accra], [Baby T's injuries])

#answer-key-grid(("B", "B", "B", "A"))

#answer-notes((
  ("B", [Accra, in Ghana. Lagos is Nigerian, Jabu belongs to *Harvest of Corruption* and Kufi to *Lonely Days*.]),
  ("B", [She dresses as a boy to avoid Poison and his gang, which is also why Kabria initially takes her for a boy at the market.]),
  ("B", [MUTE documents the lives of neglected women and children and takes Fofo into care. It has no powers of arrest.]),
  ("A", [The title names the condition the novel investigates: a child can die and remain unknown, because every institution sees a category instead of a person.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the death, the household, the investigation and the survivor.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Darko's novel is set in Accra and moves between three worlds — the market at Agbogbloshie, the slum called Sodom and Gomorrah, and the middle-class household of Kabria — and the movement is the argument. Baby T's body is found behind a hairdressing kiosk at the market, dumped there and passed off as a kayayoo so that nobody will look for her name. Fofo, her fourteen-year-old sister, survives the street by dressing as a boy and by the friendship of Odarley; she meets Kabria when she tries to steal her purse and is saved from the crowd. Book Two explains the household: Maa Tsuru believes she is cursed, her husband Kwei left, her lover Kpakpo abused Baby T and sold her to Maami Broni's brothel, and Onko, the co-tenant who first abused her, later came to her as a client and killed her. Book Three is the investigation: MUTE, Sylv Po's radio phone-in, the mortuary report and the handprint on the right cheek that points to a left-handed attacker. The themes are parental neglect, child abuse, poverty, gender, superstition, betrayal and the possibility of rescue. The novel ends with Fofo rehabilitated and training — and Odarley still on the street, because the rescue is partial and the novel knows it.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Name the three worlds of the novel and what each does.],
  [Say where the body is found, and what the city assumes about her.],
  [Distinguish Kpakpo, Onko, Poison and Maami Broni by what each does.],
  [Name the clue that turns the case, and explain what it proves.],
  [Say what MUTE is and who works there.],
  [Explain the title in one sentence, using the novel's institutions.]
))

#concept-box("Carry this into Chapter 5")[
  *Faceless* investigates a death in a city. *Lonely Days* investigates a life in a
  village where nothing is hidden and nothing is forgiven. The next chapter is the
  quietest text in the syllabus and the one with the sharpest social argument.
]

#include "drill_ch04.typ"
