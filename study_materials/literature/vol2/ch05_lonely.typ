#import "template.typ": *

#current-chapter.update("Chapter 5: Lonely Days")

#pagebreak()

#chapter-opener(
  5,
  "Lonely Days",
  subtitle: "Bayo Adebowale — Kufi, the Widow's Road, and a Woman Who Refuses the Cap",
  syllabus-ref: "Section 3 • Prescribed Prose",
  utme-weight: "3 Qs a year",
  running: "Lonely Days",
)

#focus-radar(
  objectives: (
    "Place the novel: Kufi, a village in south-western Nigeria, and its customary order.",
    "Follow the fourteen chapters and the entrance verse.",
    "Hold the four widows apart, and say what each one's experience proves.",
    "Give the themes, with the scenes and the rituals that carry them.",
    "Read the technique: third person with passages of Yaremi's own voice, Yoruba diction, and the entrance verse.",
    "Answer the questions the paper asks about the rites, the suitors and the ending.",
  ),
  hotspots: (
    "Yaremi's husband is *Ajumobi*, a hunter, who dies of a short illness. The village suspects her; the novel's first cruelty is not the rite but the suspicion.",
    "The three other widows are *Dedewe*, *Fayoyin* and *Radeke*. Each is humiliated in a different way, and the differences are examinable: Radeke is called a liar for her dirge, Fayoyin is made to lick the libation, Dedewe is made to confess sins she did not commit.",
    "The three suitors are *Ayanwale*, *Olonade* and *Lanwa*. Lanwa's claim is the most sinister: he argues that as Ajumobi's half-brother he is entitled to inherit the widow.",
    "The *cap-picking ceremony* is the ritual in which a widow chooses a new husband. Yaremi attends and refuses to pick, which is the novel's central act of resistance.",
    "Yaremi earns her living by dyeing *taffeta* cloth in indigo, and her grandson *Woye* is her only company until he leaves for school.",
  ),
  trap-summary: "Three slips. (1) Treating the novel as a documentary about all widows, when it is the story of one woman who refuses and three who comply. (2) Getting the suitors' names wrong, or giving Lanwa's kinship claim to Ayanwale. (3) Missing the ending: she removes the widowhood garment and resolves to stay, and the novel's last movement is defiance, not despair.",
)

// ============================================================================
== 5.1 The World of the Novel

*Lonely Days* is set in *Kufi*, a village in the south-western part of Nigeria,
somewhere in Yoruba country. It is small enough that everyone knows the widow's
business, and poor enough that custom is the only social security there is. The
novel's village is not picturesque. It is a system of rules enforced by elders, and
the rules are hardest on women who have lost a husband.

#concept-box("What a village is, in this novel")[
  Kufi is a place where the roof leaks, the road to the river is muddy, and gossip
  does the work of a court. Every rite the novel describes is public, which is why
  humiliation is the point of it: the widow is not punished in private, she is
  displayed.
]

#text(size: 9.4pt)[The physical details matter because Adebowale uses them as evidence. The *widow's road* to the stream is neglected, muddy and long, and the widows must use it while other women use the good road. A path is a piece of infrastructure, and the novel turns it into a sentence about citizenship: the widow is a person with fewer rights of way.]

// ============================================================================
== 5.2 The Structure

The novel has *fourteen chapters* and an *entrance verse* — a twenty-five-line poem
that states the book's subject before the story begins. The verse is worth reading
twice: it is the novel's thesis in the author's own voice, and a question that asks
what the entrance verse does is asking why a novel about a village begins with a
poem about widowhood in general.

#table(
  columns: (1.1fr, 2.3fr, 2.0fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Movement],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it establishes],
  ),
  [*Entrance verse*], [widowhood named as a shared condition, in a voice that is not Yaremi's], [the novel's thesis, before any character speaks],
  [*Chapters 1–3*], [Ajumobi's death, the suspicion, the loneliness, the widows' road], [the social world and its machinery],
  [*Chapters 4–7*], [Woye, the farm, the leaking roof, the memory of Ajumobi, the moonlight night], [the private life the rites interrupt],
  [*Chapters 8–10*], [Yaremi's trade and generosity; the three suitors; the elders' plan for a cap-picking], [the pressure to remarry],
  [*Chapters 11–12*], [Segi's visit and advice; Woye's departure for school; the refusal], [the choice, made in public],
  [*Chapters 13–14*], [the elders' threats; the removal of the widowhood garment], [the cost, and the defiance],
)

#text(size: 9.4pt)[The novel's time is slow and its incidents are small — a roof, a market trip, a child's game. That is a technique, not a failure of plot. A story about a woman being pressured by a whole village needs the pressure to accumulate quietly, and Adebowale builds it out of errands, visits and conversations rather than confrontations.]

// ============================================================================
== 5.3 The Characters

#table(
  columns: (1.05fr, 2.4fr, 1.55fr),
  inset: (x: 4.5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Character],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The line that defines them],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Function],
  ),
  [*Yaremi*], [a widow in her early fifties, a taffeta dyer, generous, stubborn and alone], [protagonist; the refusal],
  [*Ajumobi*], [her husband, a hunter and farmer, boastful, ambitious, and dead nine months before the story opens], [the absence the novel is built on],
  [*Woye*], [her grandson, who pounds taffeta with her and leaves for school], [company, and its loss],
  [*Segi*], [her eldest daughter, married at Olode, who tells her not to remarry], [the daughter who authorises the refusal],
  [*Wura*], [her daughter, married to the blacksmith called Sokoti], [the family scattered by marriage],
  [*Alani*], [her only son, a carpenter in Ibadan, too busy to come], [the son who cannot help],
  [*Dedewe*], [a widow forced to confess sins she did not commit], [compliance under pressure],
  [*Fayoyin*], [a widow made to lick the libation], [ritual as humiliation],
  [*Radeke*], [a widow whose dirge is called a lie], [grief disbelieved],
  [*Ayanwale*], [a drummer and wood-carver, one of the three suitors], [the suitor as performer],
  [*Olonade*], [a suitor who boasts of what he can provide], [the suitor as salesman],
  [*Lanwa*], [Ajumobi's half-brother, who claims the widow as inheritance], [the suitor as property claim],
  [*Uncle Deyo*], [Ajumobi's friend, who repairs the roof], [the one kindness in the village],
)

#diagram-fig("diagrams/ch05_four_widows.svg",
  "Four widows, four ways of surviving. Only one refuses, and the novel is her story.", width: 100%)

// ============================================================================
== 5.4 The Rites

#diagram-fig("diagrams/ch05_kufi_flow.svg",
  "What Kufi asks of a widow, and where Yaremi stops.", width: 100%)

#table(
  columns: (1.2fr, 2.2fr, 1.9fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Rite],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it requires],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it means],
  ),
  [*The shaved head*], [the widow's hair is cut to the scalp], [grief made visible, and beauty removed],
  [*The black cloth*], [a widow's garment worn for the period of mourning], [a uniform that marks her as unavailable and suspect],
  [*The widow's road*], [widows use the neglected path to the stream], [a second-class citizenship, enforced daily],
  [*The confession*], [the widow must deny, publicly, that she caused the death], [suspicion converted into ritual],
  [*The libation*], [drinking or licking a ceremonial offering to prove innocence], [the body used as evidence],
  [*The cap picking*], [the widow chooses a new husband from the suitors], [remarriage presented as a duty, not a choice],
  [*Ostracism*], [the threat that follows refusal], [the community's final sanction],
)

#trap-box("Two misreadings of the rites")[
  *“The rites are simply tradition, and tradition is neutral.”* The novel shows them distributing pain unequally: the widow shaves her head, the community keeps its hair.

  *“Yaremi refuses all tradition.”* She keeps her mourning; she keeps her husband's house; she refuses the *remarriage*, not the grief. The distinction is the character.
]

// ============================================================================
== 5.5 The Themes

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
  [*Widowhood*], [it is a social demotion disguised as a ritual], [the shaved head; the widow's road; the cap picking],
  [*Loneliness*], [freedom and solitude arrive together, and neither is simple], [the empty compound; Woye's departure; the monologues to Ajumobi],
  [*Patriarchy*], [men resent a woman who can live without them], [the suitors; the elders' threats; the men's talk about her “self-conceit”],
  [*Resistance*], [a single refusal can be a whole politics], [the cap-picking scene; the removal of the garment],
  [*Tradition and change*], [custom is not static; it is defended by people who benefit from it], [the elders; Segi's advice; Alani's absence],
  [*Economic independence*], [a woman with her own trade can afford to refuse], [the taffeta dyeing; the market at Oyedeji; her generosity],
  [*Grief and memory*], [the dead remain a presence, and the living argue with them], [the monologues; the moonlight night; Ajumobi's plans],
)

#concept-box("Why her trade matters to the argument")[
  Yaremi dyes and sells taffeta, and the novel shows her doing it. That is not local
  colour: a woman who earns can refuse a husband, and a woman who cannot must accept
  one. The economic detail is the condition that makes the novel's central act
  possible, which is why a question about the taffeta is a question about freedom.
]

// ============================================================================
== 5.6 Technique

#rule-box("Four techniques")[
  + *Third person, with passages of first person.* The narrator tells most of the story, but Yaremi's own voice takes over in the passages of memory and address to Ajumobi.
  + *The monologue to the dead.* Yaremi speaks to Ajumobi, and the novel lets the reader hear both the love and the accusation in the same speech.
  + *Yoruba diction.* Words and customs are used without translation, which keeps Kufi a place rather than an example.
  + *The entrance verse.* A twenty-five-line poem in the author's voice states the theme before the characters can qualify it, so the reader begins the story already convinced.
]

#text(size: 9.4pt)[The mixture of voices is the novel's most examinable technical feature. A question that asks why the narrative shifts into Yaremi's voice is asking about *interiority*: the village sees a widow, and the novel's shifts let the reader see a woman. Every time the narration returns to the third person, the social view returns with it.]

// ============================================================================
== 5.7 Four Worked Questions

#worked-example(
  1,
  "The village",
  [The novel is set in

    A. Jabu \\
    B. Kufi \\
    C. Accra \\
    D. Olode],
  [
    *Step 1 — place the text.* Adebowale's novel is set in a Yoruba village in the south-west of Nigeria.

    *Step 2 — distinguish the other names.* Olode is where Segi lives with her husband; Jabu belongs to *Harvest of Corruption*; Accra to *Faceless*.

    *Step 3 — confirm.* Kufi is the village, and the novel's whole social argument depends on its smallness.

    *Check.* The setting is the first fact to secure about any set text. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The suitors",
  [Which suitor claims Yaremi as an inheritance because he is Ajumobi's half-brother?

    A. Ayanwale \\
    B. Olonade \\
    C. Lanwa \\
    D. Deyo],
  [
    *Step 1 — recall the three.* Ayanwale the drummer, Olonade the boaster, and Lanwa the kinsman.

    *Step 2 — identify the claim.* Lanwa argues that a brother inherits a dead brother's property, and that the widow is part of the property.

    *Step 3 — eliminate.* Deyo is not a suitor at all — he is Ajumobi's friend who repairs the roof, and the paper uses him as a distractor for exactly that reason.

    *Check.* The kinship claim belongs to Lanwa. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The ritual",
  [At the cap-picking ceremony, Yaremi

    A. chooses Ayanwale \\
    B. refuses to pick a cap, and therefore a husband \\
    C. is prevented from attending \\
    D. picks a cap for her daughter],
  [
    *Step 1 — locate the scene.* The ceremony is organised by the elders and the extended family to settle her future.

    *Step 2 — recall the action.* She attends, and declines to pick. The refusal is public, which is why it is a defiance rather than a preference.

    *Step 3 — rule out the alternatives.* She is present, so C is wrong; and the whole point is that no man is chosen, so A and D are wrong.

    *Check.* The scene is the novel's centre because it converts a private decision into a public act. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The ending",
  [The novel closes with Yaremi

    A. marrying Lanwa to keep her house \\
    B. leaving Kufi for her parents' village \\
    C. removing her widowhood garment and resolving to remain \\
    D. dying of grief],
  [
    *Step 1 — locate the last movement.* The elders have threatened her property and her place; the pressure is at its height.

    *Step 2 — recall the final image.* She takes off the widow's cloth. The garment was the mark of her status, and removing it is a claim to a different one.

    *Step 3 — distinguish resolve from flight.* The novel's last note is determination, not departure or death, and that is why it is read as a feminist ending rather than a tragic one.

    *Check.* The ending is an act, not an event that happens to her. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.8 Two-Minute Set

#mcq(1, [Yaremi's husband was], [a blacksmith], [a hunter], [a drummer], [a carpenter])

#mcq(2, [Yaremi earns her living by], [farming yams], [dyeing taffeta], [selling fish], [teaching])

#mcq(3, [The widow who is accused of singing a lying dirge is], [Dedewe], [Fayoyin], [Radeke], [Segi])

#mcq(4, [Yaremi's only companion for much of the novel is], [Alani], [Woye], [Deyo], [Ayanwale])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [Ajumobi is a hunter and farmer, and his boasting about his hunting is one of the ways the novel makes him vivid after his death.]),
  ("B", [She dyes taffeta in indigo and sells it at Oyedeji market; the trade is what makes her refusal economically possible.]),
  ("C", [Radeke sings the widow's song of innocence and the villagers call her a liar. Dedewe is made to confess, and Fayoyin to lick the libation.]),
  ("B", [Her grandson Woye pounds taffeta with her and keeps her company until Segi takes him to school at Olode.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the place, the rites, the refusal and the price.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Adebowale sets his novel in Kufi, a Yoruba village in the south-west of Nigeria, and organises it into an entrance verse and fourteen chapters. Yaremi, a widow in her early fifties, has lost her husband Ajumobi, a hunter, after a short illness; the village suspects her, and the novel's first cruelty is the suspicion rather than the rite. The rites follow: the shaved head, the black cloth, the neglected widow's road to the stream, the public confession, the libation, and finally the cap-picking ceremony at which a widow must choose a new husband. Three other widows — Dedewe, Fayoyin and Radeke — comply and are humiliated in different ways; Yaremi refuses, turning down Ayanwale, Olonade and Lanwa, the last of whom claims her as his brother's inheritable property. She earns her living by dyeing taffeta, which is what makes the refusal possible, and she is alone except for her grandson Woye, who eventually leaves for school. The elders threaten her property and her place in the village, and the novel closes with her removal of the widowhood garment and her resolve to stay. Its themes are widowhood, loneliness, patriarchy, resistance, tradition and change, economic independence, and grief; its technique is a third person that yields to Yaremi's own voice, a Yoruba diction, and an entrance verse that states the argument before the story can complicate it.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Name the village, the husband, the trade and the grandson.],
  [List the rites in the order the novel presents them.],
  [Distinguish the three other widows by the humiliation each suffers.],
  [Name the three suitors and the claim Lanwa makes.],
  [Say what happens at the cap-picking ceremony, and why it is public.],
  [Explain how the ending resolves the question of the garment.]
))

#concept-box("Carry this into Chapter 6")[
  Kufi punishes a woman for refusing a custom. Chicago punishes a man for a crime
  he did commit and cannot explain. The last chapter takes the method to the novel
  with the largest historical weight in the syllabus — and the one whose questions
  most often turn on *why* rather than *who*.
]

#include "drill_ch05.typ"
