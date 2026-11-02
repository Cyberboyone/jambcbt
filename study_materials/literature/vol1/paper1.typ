#import "template.typ": *

#current-chapter.update("Full Paper 1")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Full Paper 1]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[PAPER 1 OF 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full Paper 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty questions in forty minutes, in the proportions of a real UTME Literature paper: an unseen prose extract, an unseen drama extract, a poem, a block of terms, and a block on texts and contexts.
  ]
]

#v(5pt)

+ Attempt *all 40* questions in *40 minutes*. There is no negative marking, so never leave a blank.

+ Work in three passes: what you know on sight, then the flagged questions, then the extracts you have to read twice.

+ Mark yourself against the key only when the clock has stopped.

#v(4pt)

== Section A — Unseen Prose

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: 0.9pt + jamb-border,
  radius: 8pt,
  inset: (x: 12pt, y: 10pt),
)[
  #set par(leading: 0.62em, spacing: 0.72em)
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[PASSAGE]
  #v(3pt)
  #text(size: 9.6pt)[
    The registry closed at four, but the queue had begun at noon. Mama Nkechi had been third in it since one o'clock, and by half past three she had memorised the cracks in the ceiling above the counter — a long one like a river, two short ones like tributaries, and a stain shaped like a hand. \
    #v(4pt)
    The clerk called her forward at ten minutes to four and told her the forms had finished at two. She did not shout. She asked him what time he had come to work, and he told her, and she asked him whether the forms had been in the building when he arrived, and he said that they had, and she asked him who had carried them out. The queue behind her had gone quiet in the way a market goes quiet when a fight is about to start. \
    #v(4pt)
    He looked at the ceiling — at the river, the tributaries, the hand — and then he reached under the counter and brought out a form that was slightly bent, as though it had been sitting on something for a long time. "This one is damaged," he said. "You can have it." \
    #v(4pt)
    Mama Nkechi took it and did not thank him. She had learned long ago that gratitude, offered at the wrong moment, becomes a receipt.
  ]
]

#mcq(1, [The passage is chiefly about],
  [a clerk's dishonesty],
  [a woman's patient refusal to be turned away],
  [the design of government offices],
  [the rudeness of queues]
)

#mcq(2, [Mama Nkechi's three questions to the clerk are effective because],
  [they are polite],
  [each one removes a possible excuse],
  [they are shouted],
  [they quote the regulations]
)

#mcq(3, [The queue going quiet is compared to],
  [a church service],
  [a classroom],
  [a market before a fight],
  [a funeral]
)

#mcq(4, [The clerk looks at the ceiling because],
  [he is counting the tiles],
  [he is bored],
  [he is praying],
  [he is avoiding her eyes, and the cracks give him somewhere to look]
)

#mcq(5, [The form is described as *slightly bent* in order to suggest],
  [that the office is untidy],
  [carelessness],
  [that it had been set aside for someone],
  [that it was old]
)

#mcq(6, [The last sentence, about gratitude becoming a receipt, means that],
  [thanks should always be given],
  [gratitude is worthless],
  [thanks offered at the wrong moment turns a right into a favour received],
  [receipts are necessary]
)

#mcq(7, [The narrative point of view is],
  [third person, entering Mama Nkechi's mind],
  [third person objective],
  [first person],
  [second person]
)

#mcq(8, [The effect of the short sentence *She did not shout* is to],
  [mark a change of scene],
  [create comedy],
  [establish her self-control before the argument begins],
  [show that she is afraid]
)


== Section B — Unseen Drama

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: 0.9pt + jamb-border,
  radius: 8pt,
  inset: (x: 14pt, y: 10pt),
)[
  #set par(leading: 0.58em, spacing: 0.8em)
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[EXTRACT]
  #v(4pt)
  #set text(size: 9.9pt)
  (A village square at dusk. A stool, a bowl of kola, and a drum nobody has beaten. OCHANYA, the eldest man, sits. ADA, his daughter, stands.) \
  #v(7pt)
  ADA: You have sent for me, and I have come. \
  OCHANYA: Sit. \
  ADA: I will stand until I know why I am called. \
  OCHANYA: (pause) The elders met this morning. \
  ADA: I saw their feet on the path. I did not see their faces. \
  OCHANYA: You will marry Obiora's son. \
  ADA: I will not. \
  OCHANYA: The kola has been shared. \
  ADA: Then the kola was shared for a woman who was not asked. \
  OCHANYA: (rising) You will not shame this house. \
  ADA: I will not enter it either. \
  (She picks up the drum and holds it. He does not take it from her.) \
  OCHANYA: Put that down. \
  ADA: It has not spoken since my mother died. Neither have you. \
  (The drum is between them. The light goes.) \
  #v(7pt)
]

#mcq(9, [The stage direction *a drum nobody has beaten* chiefly],
  [describes the props],
  [plants an object whose silence will become the argument],
  [indicates the period],
  [gives the actor something to do]
)

#mcq(10, [Ada's *I will stand until I know why I am called* establishes],
  [her politeness],
  [her fear],
  [her age],
  [her refusal to accept the terms of the meeting]
)

#mcq(11, [Ochanya's *The kola has been shared* is met by Ada's],
  [a distinction between a custom performed and a woman consulted],
  [agreement],
  [an appeal to the elders],
  [a request for time]
)

#mcq(12, [The exchange is built chiefly on],
  [long speeches and asides],
  [a soliloquy],
  [comic relief],
  [short lines and repetition that turn the scene into a contest]
)

#mcq(13, [When Ada picks up the drum, the gesture functions as],
  [an exit],
  [a claim to her mother's memory and to the right to speak],
  [a threat of violence],
  [a stage direction with no meaning]
)

#mcq(14, [The final stage direction, *The light goes*, most likely],
  [leaves the conflict unresolved and the audience holding it],
  [introduces a new scene],
  [ends the play],
  [indicates an interval]
)

#mcq(15, [Ochanya's line *You will not shame this house* reveals that he is chiefly concerned with],
  [his daughter's happiness],
  [Obiora's son],
  [the household's standing before the community],
  [the elders' fee]
)

#mcq(16, [The play's central conflict is between],
  [wealth and poverty],
  [custom and consent],
  [a father and a drum],
  [two villages]
)


== Section C — Unseen Poem

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: 0.9pt + jamb-border,
  radius: 8pt,
  inset: (x: 14pt, y: 10pt),
)[
  #set par(leading: 0.58em, spacing: 0.8em)
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[POEM]
  #v(4pt)
  #set text(size: 9.9pt)
  They named the street after a man \
  who never lived on it, \
  and hung his photograph in the hall \
  where nobody looks. \
  #v(7pt)
  The children play football with a stone \
  and the stone is the goal and the ball, \
  and the street learns their names instead, \
  which is how a place remembers. \
  #v(7pt)
  At night the lamps come on in order, \
  one, then the next, then the next, \
  like a sentence being read aloud \
  by someone who has just learned how. \
  #v(7pt)
  I have lived here eleven years. \
  I still do not know the man's name — \
  only the street's, which the children shout \
  when the stone goes in. \
  #v(7pt)
]

#mcq(17, [The poem's opening stanza suggests that],
  [the naming is official and forgotten],
  [the street is proud of its name],
  [the man was a hero],
  [the photograph is new]
)

#mcq(18, [The children's game matters because],
  [it is amusing],
  [it damages property],
  [it is how the place actually remembers, through use rather than inscription],
  [it is noisy]
)

#mcq(19, [The lamps coming on *like a sentence being read aloud* is],
  [a metaphor for electricity],
  [a simile for order and gradual understanding],
  [hyperbole],
  [personification of the lamps]
)

#mcq(20, [The speaker's admission that he does not know the man's name is],
  [a change of subject],
  [the poem's argument: he knows the street by its life, not its inscription],
  [a confession of ignorance only],
  [a joke]
)

#mcq(21, [The poem is written in],
  [free verse with short lines],
  [strict iambic pentameter],
  [blank verse couplets],
  [ballad stanza]
)

#mcq(22, [The phrase *which is how a place remembers* is placed at the end of a stanza in order to],
  [give the claim emphasis by isolation],
  [shorten the line],
  [introduce a character],
  [complete a rhyme]
)

#mcq(23, [The tone of the poem is best described as],
  [angry],
  [sentimental],
  [wry and affectionate, with an edge of reproof],
  [indifferent]
)

#mcq(24, [The title of the kind of poem that celebrates a person by accumulated epithets, as the street does not, is],
  [an elegy],
  [an ode],
  [a dirge],
  [a praise poem]
)


== Section D — Literary Terms

#mcq(25, [A comparison in which one thing is said to be another, without *like* or *as*, is],
  [a conceit],
  [a metaphor],
  [a simile],
  [an apostrophe]
)

#mcq(26, [“The pen is mightier than the sword” uses *pen* and *sword* as],
  [similes],
  [synecdoches for writer and soldier],
  [puns],
  [litotes]
)

#mcq(27, [A line that ends with a full stop and a complete sentence is],
  [free],
  [end-stopped],
  [caesural],
  [enjambed]
)

#mcq(28, [“Not a bad day's work” is an example of],
  [litotes],
  [personification],
  [bathos],
  [hyperbole]
)

#mcq(29, [The device in *the wind remembered her name* is],
  [personification],
  [simile],
  [oxymoron],
  [metonymy]
)

#mcq(30, [Two contradictory words placed together, as in *living death*, form],
  [an oxymoron],
  [an antithesis],
  [a paradox],
  [a pun]
)

#mcq(31, [A poem of fourteen lines in iambic pentameter with a turn is],
  [a ballad],
  [an ode],
  [a sonnet],
  [an elegy]
)

#mcq(32, [The repetition of initial consonants in *the slow snake slid* is],
  [alliteration],
  [onomatopoeia],
  [consonance],
  [assonance]
)

#mcq(33, [A drama in which the audience knows what a character does not is using],
  [situational irony],
  [verbal irony],
  [foreshadowing],
  [dramatic irony]
)

#mcq(34, [A character who exists chiefly to contrast with the protagonist is],
  [an antagonist],
  [a chorus],
  [a foil],
  [a narrator]
)


== Section E — Texts and Contexts

#mcq(35, [In drama, a speech in which a character alone on stage reveals his thoughts is],
  [a monologue],
  [a chorus],
  [an aside],
  [a soliloquy]
)

#mcq(36, [A play that ends with a marriage and a reconciliation is most likely],
  [a history play],
  [a morality play],
  [a comedy],
  [a tragedy]
)

#mcq(37, [A story told by a narrator who reports only what can be seen and heard uses],
  [first person],
  [third-person objective],
  [third-person omniscient],
  [free indirect style]
)

#mcq(38, [“The writer's attitude to his subject” is the definition of],
  [mood],
  [tone],
  [diction],
  [theme]
)

#mcq(39, [An elegy is a poem of],
  [mourning],
  [satire],
  [instruction],
  [celebration]
)

#mcq(40, [A play in which the audience is addressed directly by a character is using],
  [direct address, which admits the audience as a party],
  [a soliloquy],
  [a dumb show],
  [the fourth wall]
)


#current-chapter.update("Full Paper 1 — Answer Key")

== Answer Key

#answer-key-grid((
  "B", "B", "C", "D", "C", "C", "A", "C", "B", "D",
  "A", "D", "B", "A", "C", "B", "A", "C", "B", "B",
  "A", "A", "C", "D", "B", "B", "B", "A", "A", "A",
  "C", "A", "D", "C", "D", "C", "B", "B", "A", "A",
))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]
  #v(4pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–40*], [Secure. The paper is under control; work on speed rather than knowledge.],
    [*28–33*], [Developing. Read the solution to every question you flagged, whatever you scored.],
    [*0–27*], [Revise before re-sitting. Return to the chapter named in each solution.],
  )
]

#current-chapter.update("Full Paper 1 — Complete Solutions")

#[
  #set text(size: 9.0pt)
  #set par(leading: 0.63em, spacing: 0.68em)

  #block(breakable: false)[
  == Complete Solutions

  Every solution names the chapter that teaches the skill the question tests.

  #sol-item(1, "B", dense: true, pad: 0.0pt)[
    Her three questions and her silence before the answer are the action; the clerk's small concession is the result.
  ]
  ]

  #sol-item(2, "B", dense: true, pad: 0.0pt)[
    The questions work as a chain: the forms existed, he was present, someone must have removed them.
  ]

  #sol-item(3, "C", dense: true, pad: 0.0pt)[
    The simile measures the tension by the behaviour of a crowd that knows what is coming.
  ]

  #sol-item(4, "D", dense: true, pad: 0.0pt)[
    The described ceiling returns at the moment of decision, which is how the passage marks his evasion.
  ]

  #sol-item(5, "C", dense: true, pad: 0.0pt)[
    Bent from sitting on something, it hints at a form reserved and then given up under pressure.
  ]

  #sol-item(6, "C", dense: true, pad: 0.0pt)[
    To thank him would convert her entitlement into his gift, which is precisely what she refuses.
  ]

  #sol-item(7, "A", dense: true, pad: 0.0pt)[
    The narrator reports her memory and her judgment, so a mind is entered — hers only.
  ]

  #sol-item(8, "C", dense: true, pad: 0.0pt)[
    The negation tells the reader what was expected and what she chose instead, which sets up the calm that follows.
  ]

  #sol-item(9, "B", dense: true, pad: 0.0pt)[
    The drum returns at the climax, where Ada makes its silence speak for both her mother and her father.
  ]

  #sol-item(10, "D", dense: true, pad: 0.0pt)[
    To stand when told to sit is to reject the authority the seating encodes.
  ]

  #sol-item(11, "A", dense: true, pad: 0.0pt)[
    Her answer separates the ritual from the consent the ritual is supposed to express.
  ]

  #sol-item(12, "D", dense: true, pad: 0.0pt)[
    The clipped stichomythia and the repeated *will not* make the scene a duel of wills.
  ]

  #sol-item(13, "B", dense: true, pad: 0.0pt)[
    The drum has been silent since her mother died, and holding it makes her the one who will break that silence.
  ]

  #sol-item(14, "A", dense: true, pad: 0.0pt)[
    Nothing is settled; the darkness closes on the drum between them, which is the point.
  ]

  #sol-item(15, "C", dense: true, pad: 0.0pt)[
    Shame is a public matter, and his objection is about reputation rather than about Ada.
  ]

  #sol-item(16, "B", dense: true, pad: 0.0pt)[
    Custom demands the marriage; Ada demands to be asked. The kola and the drum are the objects through which the two claims are made.
  ]

  #sol-item(17, "A", dense: true, pad: 0.0pt)[
    A name given by officials, a photograph in a hall where nobody looks: the memorial exists and means nothing.
  ]

  #sol-item(18, "C", dense: true, pad: 0.0pt)[
    The street learns their names; the poem opposes living memory to the plaque.
  ]

  #sol-item(19, "B", dense: true, pad: 0.0pt)[
    The comparison makes the lighting sequential and legible, as though the street were being spelled out.
  ]

  #sol-item(20, "B", dense: true, pad: 0.0pt)[
    He knows what the children shout, which is the kind of knowledge the poem values.
  ]

  #sol-item(21, "A", dense: true, pad: 0.0pt)[
    No regular metre or rhyme, and the line breaks do the work — the poem is free verse.
  ]

  #sol-item(22, "A", dense: true, pad: 0.0pt)[
    Stanza-end placement gives the statement the force of a conclusion, which is a structural effect.
  ]

  #sol-item(23, "C", dense: true, pad: 0.0pt)[
    The speaker smiles at the plaque and prefers the children, which is affection with a judgment inside it.
  ]

  #sol-item(24, "D", dense: true, pad: 0.0pt)[
    The praise poem names and celebrates; the poem's point is that the official name has stopped doing either.
  ]

  #sol-item(25, "B", dense: true, pad: 0.0pt)[
    Metaphor asserts identity; a simile uses the comparative word; an apostrophe addresses; a conceit extends a comparison through a whole poem.
  ]

  #sol-item(26, "B", dense: true, pad: 0.0pt)[
    Each object stands for the class of people who use it — part or instrument for the whole activity, which makes them synecdoches rather than comparisons.
  ]

  #sol-item(27, "B", dense: true, pad: 0.0pt)[
    The sense closes with the line: end-stopping. Enjambment is the opposite.
  ]

  #sol-item(28, "A", dense: true, pad: 0.0pt)[
    Understatement by denying the opposite is litotes, and it often sounds like dry satisfaction.
  ]

  #sol-item(29, "A", dense: true, pad: 0.0pt)[
    Remembering is a human act given to wind, which is personification.
  ]

  #sol-item(30, "A", dense: true, pad: 0.0pt)[
    The contradiction is inside the phrase. A paradox needs a whole contradictory statement.
  ]

  #sol-item(31, "C", dense: true, pad: 0.0pt)[
    The sonnet's definition is the line count, the metre and the turn.
  ]

  #sol-item(32, "A", dense: true, pad: 0.0pt)[
    Initial consonants repeated are alliteration; assonance repeats vowels and consonance final consonants.
  ]

  #sol-item(33, "D", dense: true, pad: 0.0pt)[
    The gap between the audience's knowledge and the character's is dramatic irony.
  ]

  #sol-item(34, "C", dense: true, pad: 0.0pt)[
    The foil works by contrast; the antagonist opposes; the chorus comments.
  ]

  #sol-item(35, "D", dense: true, pad: 0.0pt)[
    Solitude plus audience-only hearing defines the soliloquy.
  ]

  #sol-item(36, "C", dense: true, pad: 0.0pt)[
    The enlarged community at the close is comedy's defining direction.
  ]

  #sol-item(37, "B", dense: true, pad: 0.0pt)[
    No minds entered, only visible action: objective narration, sometimes called the dramatic method.
  ]

  #sol-item(38, "B", dense: true, pad: 0.0pt)[
    Tone belongs to the writer; mood is the reader's feeling; theme is the claim; diction the word choice.
  ]

  #sol-item(39, "A", dense: true, pad: 0.0pt)[
    Elegy mourns, usually with praise and attempted consolation.
  ]

  #sol-item(40, "A", dense: true, pad: 0.0pt)[
    Speaking to the house breaks the illusion on purpose, which is why it is a device rather than an error.
  ]

]

