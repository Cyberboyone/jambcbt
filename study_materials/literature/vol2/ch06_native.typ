#import "template.typ": *

#current-chapter.update("Chapter 6: Native Son")

#pagebreak()

#chapter-opener(
  6,
  "Native Son",
  subtitle: "Richard Wright — Chicago, the Furnace, and a Crime That Has to Be Explained",
  syllabus-ref: "Section 3 • Prescribed Prose",
  utme-weight: "3 Qs a year",
  running: "Native Son",
)

#focus-radar(
  objectives: (
    "Place the novel: Chicago's South Side in the 1930s, and the conditions Wright insists on.",
    "Follow the three books — Fear, Flight, Fate — and what each one is for.",
    "Hold the two deaths apart and give the motive for each.",
    "Name the institutions that handle Bigger, and say what each one sees instead of him.",
    "Read the technique: free indirect style, the newsreel and newspaper inserts, and the courtroom speech.",
    "Answer the questions the paper asks about motive, race, and the ending.",
  ),
  hotspots: (
    "*Three books:* Fear, Flight, Fate. The book titles are the plot.",
    "*Two deaths, two motives:* *Mary Dalton* is killed accidentally, smothered to stop her making a sound while her blind mother stands at the bedroom door; *Bessie Mears* is killed deliberately, with a brick, because she knows too much.",
    "*Mrs. Dalton is blind.* The novel's most quoted irony: the one person in the room who cannot see colour is the one whose approach forces the killing.",
    "*Jan Erlone* is Mary's boyfriend, a Communist, and is the man the police first charge. He later becomes one of the few whites who treats Bigger as a person.",
    "*Max* is the Jewish lawyer who defends Bigger and explains him; *Buckley* is the State's Attorney who needs him convicted. *Britten* is the private investigator Dalton hires.",
    "*Bigger's family* is his mother, his brother Buddy, and his sister Vera. They live in one room, and the novel opens with a rat.",
  ),
  trap-summary: "Three slips. (1) Saying Bigger “murdered Mary” without qualification — the killing is accidental in intent and the novel's whole argument needs that distinction. (2) Confusing Max with Buckley, or Jan with Britten. (3) Missing that the last book is a trial with a *speech* in it, and the speech is where the novel does its thinking.",
)

// ============================================================================
== 6.1 The World of the Novel

*Native Son* is set in *Chicago* in the late 1930s. The South Side is segregated
housing, poor food, relief payments and cold; the Dalton house is a mansion a bus
ride away, in a white neighbourhood. Wright uses geography as an argument. Bigger
travels between two worlds, and the distance between them is a measurement of the
city's arrangement rather than of his ability.

#concept-box("The rat")[
  The novel opens with Bigger hunting a rat in a one-room apartment with his brother
  and sister. He kills it, and the whole scene is oversized: the animal is described
  as if it were dangerous game. The scene is a scale model of the book that follows —
  a small room, a hunted creature, a household that needs the kill, and a boy who is
  praised for it.
]

#text(size: 9.4pt)[The material details are the novel's evidence, and the paper asks about them because Wright makes them do work. The *relief* is why Mrs. Thomas needs Bigger to take the job. The *rent* is why the family cannot move. The *rent-fixing* is Mr. Dalton's philanthropy, which the novel lets his mother describe as generosity and Max describe as a way of holding the ghetto in place. Bigger's father was killed in a race riot in the South, and the family came north for a promised life that the novel shows arriving as one room and a rat.]

// ============================================================================
== 6.2 The Structure

#diagram-fig("diagrams/ch06_bigger_arc.svg",
  "Fear, Flight, Fate: three books, three versions of the same boy in the same city.", width: 100%)

#table(
  columns: (1.0fr, 2.35fr, 1.85fr),
  inset: (x: 4.5pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Book],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it establishes],
  ),
  [*Book One — FEAR*], [the rat; the pool hall with Gus, Jack, G.H. and Doc; the plan to rob Blum's store; the job with the Daltons; the drive with Mary and Jan; the killing of Mary; the beheading and the furnace], [a boy with no way out, and a city that has already decided his worth],
  [*Book Two — FLIGHT*], [the newsreel and the newspapers; the note demanding money; Britten and the interrogation; the flight across the rooftops; Bessie's death], [the machinery of detection, and the second death that is not an accident],
  [*Book Three — FATE*], [the capture; the confession; the grand jury; Max's visits; the trial and the speech; the sentence; the cell], [the courtroom as the place where a life is explained, and then ended],
)

#text(size: 9.4pt)[The book titles repay a close look. *Fear* is the condition Bigger lives in before anything happens. *Flight* is what he does, and it is also what flight means to a city that reads a black boy running as a confession. *Fate* is what the trial turns the first two into: not an event but a nature. Wright's structure makes the same point twice — first as experience, then as argument.]

// ============================================================================
== 6.3 The Characters

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
  [*Bigger Thomas*], [twenty, poor, angry, and aware that the city has priced him in advance], [protagonist; the accused],
  [*Mrs. Thomas*], [his mother, religious and exhausted, who begs him to take the job], [the family's need],
  [*Buddy*], [his younger brother], [the family Bigger cannot support],
  [*Vera*], [his sister, who wants to be a nurse and is ashamed of the flat], [respectability, and its cost],
  [*Gus, Jack, G.H., Doc*], [the pool-hall friends, who plan the Blum robbery], [the peer world and its dead ends],
  [*Mr. Dalton*], [the landlord and philanthropist who owns the South Side tenements], [liberalism that profits from the problem],
  [*Mrs. Dalton*], [his blind wife], [the witness who cannot see],
  [*Mary Dalton*], [the daughter, a Communist sympathiser, who is killed], [the victim whose death is an accident],
  [*Jan Erlone*], [Mary's boyfriend, a Communist, first charged with the crime], [the white ally who is also an outsider],
  [*Bessie Mears*], [Bigger's girlfriend, who is killed deliberately], [the second death, and the one the novel will not let us call an accident],
  [*Britten*], [the private investigator hired by Dalton], [the investigation as racial sorting],
  [*Buckley*], [the State's Attorney], [the prosecution as a political performance],
  [*Max*], [the Jewish lawyer who defends Bigger], [the novel's attempt to explain him],
)

#diagram-fig("diagrams/ch06_native_web.svg",
  "Who sees Bigger, and what each one sees instead of him.", width: 100%)

// ============================================================================
== 6.4 The Two Deaths

This is the part of the novel the paper returns to most, and the part students most
often blur.

#table(
  columns: (0.95fr, 1.75fr, 1.35fr, 1.55fr),
  inset: (x: 4.2pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[  ],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Mary Dalton],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Bessie Mears],
    text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[Why the pair matters],
  ),
  [*Intent*], [none — he smothers her to silence her], [deliberate — he strikes her with a brick], [the novel's moral centre is the gap between them],
  [*Method*], [a pillow, in her bedroom], [a brick, in an empty building], [one is panic, one is calculation],
  [*Witness*], [Mrs. Dalton, who is blind], [no one], [the killing that is seen is the one that cannot be seen],
  [*Body*], [beheaded with a hatchet and burned in the furnace], [thrown down an airshaft], [both are disposed of as if they were not people],
  [*Aftermath*], [the newspapers call him a monster], [the newspapers barely notice her], [Wright's point about which death the city can imagine],
)

#trap-box("The sentence that wins marks")[
  Bigger *does not plan* to kill Mary, and the novel's argument collapses if you say he did. He kills her because a blind white woman is walking towards the bed and a black boy is in the room. Say that precisely: the *intent* was silence, the *result* was death, and the *cause* was a city that had already taught him what being found there would mean.
]

// ============================================================================
== 6.5 The Themes

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
  [*Race and poverty*], [they are one system, not two problems], [the one-room flat; the relief; the Dalton tenements],
  [*Fear*], [it shapes a life before any crime is committed], [the rat; the pool hall; the razor scene with Gus],
  [*Violence*], [it is the only power the powerless are allowed], [the rat; Mary; Bessie; the rooftop chase],
  [*Invisibility*], [he is seen as a category before he is seen as a person], [the newsreel; the newspapers; Britten's questions],
  [*Liberalism*], [charity can be a way of keeping the arrangement], [Dalton's rent-fixing; Mary's slumming; Jan's slogans],
  [*Justice*], [the trial is a ritual of explanation that ends in an execution], [Buckley's speech; Max's speech; the sentence],
  [*Identity*], [the crime gives him the first self he has ever owned], [“what I killed for, I am”],
)

#diagram-fig("diagrams/ch04_faceless_books.svg",
  "Three books, three words. The titles are the argument.", width: 62%)

// ============================================================================
== 6.6 Technique

#rule-box("Four techniques")[
  + *Free indirect style.* The narration slides into Bigger's mind without quotation marks, so his fear becomes the reader's atmosphere rather than an item of information.
  + *Documentary inserts.* Newspaper headlines, the newsreel at the movies, and the coroner's report are set into the text, so the reader sees the official version of Bigger alongside his own.
  + *The courtroom speech.* Max's long address to the court is the novel's essay, and Buckley's is its counter-essay; the two speeches are the trial.
  + *Sensory claustrophobia.* Snow, cold, the smell of the furnace, the smallness of rooms — the novel is physically uncomfortable on purpose.
]

#text(size: 9.4pt)[The *newsreel* is the single most examinable device. Bigger sits in a cinema and watches a film about Mary Dalton in which he appears as a smiling servant, while the audience laughs. Wright puts the reader in the same seat as the white audience, then reminds us that Bigger is in the room. That is the novel's method in miniature: the story of a black life is told by people who are not in it.]

// ============================================================================
== 6.7 Four Worked Questions

#worked-example(
  1,
  "The books",
  [The three books of the novel are

    A. Fear, Hunger, Fate \\
    B. Fear, Flight, Fate \\
    C. Flight, Trial, Death \\
    D. Fear, Crime, Punishment],
  [
    *Step 1 — recall the titles.* Wright names the books and the sequence is fixed.

    *Step 2 — check the near-misses.* “Hunger” is the newspaper headline about Bigger, not a book title; “Crime and Punishment” is another novel.

    *Step 3 — confirm the logic.* Fear precedes the act, flight follows it, and fate is the trial.

    *Check.* The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The accident",
  [Bigger kills Mary Dalton because

    A. she has insulted him \\
    B. he plans to rob the Dalton house \\
    C. he is trying to stop her from making a sound while her mother is at the door \\
    D. Jan orders him to do it],
  [
    *Step 1 — reconstruct the scene.* Mary is drunk, Bigger carries her to her room, and Mrs. Dalton appears at the door.

    *Step 2 — identify the intention.* He presses a pillow over her face to keep her quiet, and she dies.

    *Step 3 — eliminate the inventions.* Jan is not present, and there is no plan to rob the Daltons.

    *Check.* Intent was silence; result was death. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The lawyer",
  [Bigger's defence lawyer is

    A. Buckley \\
    B. Britten \\
    C. Jan Erlone \\
    D. Max],
  [
    *Step 1 — sort the three white men.* Buckley prosecutes, Britten investigates, Max defends.

    *Step 2 — place Jan.* Jan is Mary's boyfriend, and he is briefly suspected; he is not a lawyer.

    *Step 3 — recall Max's function.* Max is the Jewish lawyer who listens to Bigger, and whose speech is the novel's attempt to explain him.

    *Check.* The answer is *D*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The ending",
  [At the end of the novel, Bigger

    A. escapes to the North \\
    B. is acquitted on Max's argument \\
    C. is sentenced to death and tells Max, in effect, that what he killed for is himself \\
    D. commits suicide in his cell],
  [
    *Step 1 — recall the verdict.* He is convicted and sentenced to death.

    *Step 2 — recall the final exchange.* Max comes to the cell, and Bigger's last words are a claim rather than a confession: he did not want to kill, but what he killed for, he is.

    *Step 3 — rule out the alternatives.* There is no escape and no acquittal; the sentence stands.

    *Check.* The novel ends on a paradox, not a rescue. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.8 Two-Minute Set

#mcq(1, [The novel is set in], [New York], [Chicago], [Detroit], [Accra])

#mcq(2, [Bigger's first victim in the novel is], [Mary Dalton], [Bessie Mears], [a rat], [Gus])

#mcq(3, [Bessie Mears is killed], [accidentally in the furnace], [deliberately, with a brick], [by Britten], [by Jan Erlone])

#mcq(4, [Mary Dalton's mother is significant because she is], [a Communist], [blind], [a journalist], [Bigger's employer])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [The South Side of Chicago in the late 1930s, with the Dalton mansion a bus ride into a white neighbourhood.]),
  ("C", [The rat in the opening scene. Mary is the first *human* victim, and the distinction is exactly the kind the paper tests.]),
  ("B", [He strikes her with a brick in an empty building and throws her body down an airshaft, because she knows too much.]),
  ("B", [Blindness is the novel's central irony: the one person in the room who cannot see colour is the one whose approach forces the killing.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the city, the two deaths, the trial and the last words.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Wright sets his novel in Chicago in the late 1930s and divides it into three books — Fear, Flight and Fate. Bigger Thomas, twenty, lives in a one-room South Side flat with his mother, brother Buddy and sister Vera, and the novel opens with him killing a rat. Through the relief office he takes a job as chauffeur to the Daltons, whose fortune comes from the tenements his family rents; their daughter Mary and her Communist boyfriend Jan take him driving, Mary gets drunk, and when Bigger carries her to her room her blind mother approaches the door. He smothers Mary with a pillow to keep her quiet and she dies; he then beheads the body and burns it in the furnace. Book Two follows the detection: Britten the private investigator, the newspapers, the fake ransom note, the flight across the rooftops, and the deliberate killing of Bessie Mears with a brick. Book Three is the trial, where Buckley prosecutes and Max defends, and Max's long speech explains Bigger to a court that has already decided what he is. He is sentenced to death, and his final words claim the crime as the first thing he has ever owned. The novel's themes are race and poverty as one system, fear, violence, invisibility, the limits of white liberalism, and the difference between justice and explanation; its techniques are free indirect style, documentary inserts, the courtroom speech, and a claustrophobic physical world.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Name the three books in order and say what each one covers.],
  [Give the two deaths, with the intent and the method of each.],
  [Say why Mrs. Dalton's blindness matters.],
  [Separate Max, Buckley, Britten and Jan by function.],
  [Explain what the newsreel scene does to the reader.],
  [Quote, or paraphrase exactly, Bigger's final claim.]
))

#concept-box("Carry this into the papers")[
  You now hold six texts and a method. The two mock papers that follow are built
  the way JAMB builds them: a Shakespeare passage you have to read before you can
  answer, prose questions that test whether you know *why*, and a spread of
  difficulty that punishes guessing. Sit them cold, then mark them with the keys.
]

#include "drill_ch06.typ"
