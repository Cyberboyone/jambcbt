"""Paper 1 — forty questions, section by section.

A section is (kind, heading, lead, items) where kind is "passage", "verse" or
"plain"; `items` is a list of (stem, [A, B, C, D], zero-based key, solution).
The extracts are written for this book, so every question can be answered from
the words on the page.
"""

PROSE = """The registry closed at four, but the queue had begun at noon. Mama Nkechi had been third in it since one o'clock, and by half past three she had memorised the cracks in the ceiling above the counter — a long one like a river, two short ones like tributaries, and a stain shaped like a hand.

The clerk called her forward at ten minutes to four and told her the forms had finished at two. She did not shout. She asked him what time he had come to work, and he told her, and she asked him whether the forms had been in the building when he arrived, and he said that they had, and she asked him who had carried them out. The queue behind her had gone quiet in the way a market goes quiet when a fight is about to start.

He looked at the ceiling — at the river, the tributaries, the hand — and then he reached under the counter and brought out a form that was slightly bent, as though it had been sitting on something for a long time. "This one is damaged," he said. "You can have it."

Mama Nkechi took it and did not thank him. She had learned long ago that gratitude, offered at the wrong moment, becomes a receipt."""

DRAMA = """(A village square at dusk. A stool, a bowl of kola, and a drum nobody has beaten. OCHANYA, the eldest man, sits. ADA, his daughter, stands.)

ADA: You have sent for me, and I have come.
OCHANYA: Sit.
ADA: I will stand until I know why I am called.
OCHANYA: (pause) The elders met this morning.
ADA: I saw their feet on the path. I did not see their faces.
OCHANYA: You will marry Obiora's son.
ADA: I will not.
OCHANYA: The kola has been shared.
ADA: Then the kola was shared for a woman who was not asked.
OCHANYA: (rising) You will not shame this house.
ADA: I will not enter it either.
(She picks up the drum and holds it. He does not take it from her.)
OCHANYA: Put that down.
ADA: It has not spoken since my mother died. Neither have you.
(The drum is between them. The light goes.)"""

POEM = """They named the street after a man
who never lived on it,
and hung his photograph in the hall
where nobody looks.

The children play football with a stone
and the stone is the goal and the ball,
and the street learns their names instead,
which is how a place remembers.

At night the lamps come on in order,
one, then the next, then the next,
like a sentence being read aloud
by someone who has just learned how.

I have lived here eleven years.
I still do not know the man's name —
only the street's, which the children shout
when the stone goes in."""

TERMS = [
    (
        "A comparison in which one thing is said to be another, without *like* or *as*, is",
        ["a simile", "a metaphor", "an apostrophe", "a conceit"],
        1,
        "Metaphor asserts identity; a simile uses the comparative word; an apostrophe addresses; a conceit extends a comparison through a whole poem.",
    ),
    (
        "“The pen is mightier than the sword” uses *pen* and *sword* as",
        ["synecdoches for writer and soldier", "similes", "litotes", "puns"],
        0,
        "Each object stands for the class of people who use it — part or instrument for the whole activity, which makes them synecdoches rather than comparisons.",
    ),
    (
        "A line that ends with a full stop and a complete sentence is",
        ["enjambed", "end-stopped", "caesural", "free"],
        1,
        "The sense closes with the line: end-stopping. Enjambment is the opposite.",
    ),
    (
        "“Not a bad day's work” is an example of",
        ["hyperbole", "litotes", "bathos", "personification"],
        1,
        "Understatement by denying the opposite is litotes, and it often sounds like dry satisfaction.",
    ),
    (
        "The device in *the wind remembered her name* is",
        ["simile", "personification", "metonymy", "oxymoron"],
        1,
        "Remembering is a human act given to wind, which is personification.",
    ),
    (
        "Two contradictory words placed together, as in *living death*, form",
        ["a paradox", "an oxymoron", "an antithesis", "a pun"],
        1,
        "The contradiction is inside the phrase. A paradox needs a whole contradictory statement.",
    ),
    (
        "A poem of fourteen lines in iambic pentameter with a turn is",
        ["an ode", "an elegy", "a sonnet", "a ballad"],
        2,
        "The sonnet's definition is the line count, the metre and the turn.",
    ),
    (
        "The repetition of initial consonants in *the slow snake slid* is",
        ["assonance", "alliteration", "consonance", "onomatopoeia"],
        1,
        "Initial consonants repeated are alliteration; assonance repeats vowels and consonance final consonants.",
    ),
    (
        "A drama in which the audience knows what a character does not is using",
        ["verbal irony", "dramatic irony", "situational irony", "foreshadowing"],
        1,
        "The gap between the audience's knowledge and the character's is dramatic irony.",
    ),
    (
        "A character who exists chiefly to contrast with the protagonist is",
        ["a foil", "an antagonist", "a narrator", "a chorus"],
        0,
        "The foil works by contrast; the antagonist opposes; the chorus comments.",
    ),
]

CONTEXT = [
    (
        "In drama, a speech in which a character alone on stage reveals his thoughts is",
        ["a monologue", "a soliloquy", "an aside", "a chorus"],
        1,
        "Solitude plus audience-only hearing defines the soliloquy.",
    ),
    (
        "A play that ends with a marriage and a reconciliation is most likely",
        ["a tragedy", "a comedy", "a history play", "a morality play"],
        1,
        "The enlarged community at the close is comedy's defining direction.",
    ),
    (
        "A story told by a narrator who reports only what can be seen and heard uses",
        ["first person", "third-person omniscient", "third-person objective", "free indirect style"],
        2,
        "No minds entered, only visible action: objective narration, sometimes called the dramatic method.",
    ),
    (
        "“The writer's attitude to his subject” is the definition of",
        ["mood", "tone", "theme", "diction"],
        1,
        "Tone belongs to the writer; mood is the reader's feeling; theme is the claim; diction the word choice.",
    ),
    (
        "An elegy is a poem of",
        ["celebration", "mourning", "instruction", "satire"],
        1,
        "Elegy mourns, usually with praise and attempted consolation.",
    ),
    (
        "A play in which the audience is addressed directly by a character is using",
        ["the fourth wall", "direct address, which admits the audience as a party", "a soliloquy", "a dumb show"],
        1,
        "Speaking to the house breaks the illusion on purpose, which is why it is a device rather than an error.",
    ),
]


def _prose_questions():
    return [
        ("The passage is chiefly about", ["a clerk's dishonesty", "a woman's patient refusal to be turned away", "the rudeness of queues", "the design of government offices"], 1,
         "Her three questions and her silence before the answer are the action; the clerk's small concession is the result."),
        ("Mama Nkechi's three questions to the clerk are effective because", ["they are shouted", "each one removes a possible excuse", "they are polite", "they quote the regulations"], 1,
         "The questions work as a chain: the forms existed, he was present, someone must have removed them."),
        ("The queue going quiet is compared to", ["a church service", "a market before a fight", "a classroom", "a funeral"], 1,
         "The simile measures the tension by the behaviour of a crowd that knows what is coming."),
        ("The clerk looks at the ceiling because", ["he is bored", "he is avoiding her eyes, and the cracks give him somewhere to look", "he is counting the tiles", "he is praying"], 1,
         "The described ceiling returns at the moment of decision, which is how the passage marks his evasion."),
        ("The form is described as *slightly bent* in order to suggest", ["carelessness", "that it had been set aside for someone", "that it was old", "that the office is untidy"], 1,
         "Bent from sitting on something, it hints at a form reserved and then given up under pressure."),
        ("The last sentence, about gratitude becoming a receipt, means that", ["thanks should always be given", "thanks offered at the wrong moment turns a right into a favour received", "receipts are necessary", "gratitude is worthless"], 1,
         "To thank him would convert her entitlement into his gift, which is precisely what she refuses."),
        ("The narrative point of view is", ["first person", "third person, entering Mama Nkechi's mind", "third person objective", "second person"], 1,
         "The narrator reports her memory and her judgment, so a mind is entered — hers only."),
        ("The effect of the short sentence *She did not shout* is to", ["create comedy", "establish her self-control before the argument begins", "show that she is afraid", "mark a change of scene"], 1,
         "The negation tells the reader what was expected and what she chose instead, which sets up the calm that follows."),
    ]


def _drama_questions():
    return [
        ("The stage direction *a drum nobody has beaten* chiefly", ["describes the props", "plants an object whose silence will become the argument", "indicates the period", "gives the actor something to do"], 1,
         "The drum returns at the climax, where Ada makes its silence speak for both her mother and her father."),
        ("Ada's *I will stand until I know why I am called* establishes", ["her politeness", "her refusal to accept the terms of the meeting", "her fear", "her age"], 1,
         "To stand when told to sit is to reject the authority the seating encodes."),
        ("Ochanya's *The kola has been shared* is met by Ada's", ["agreement", "a distinction between a custom performed and a woman consulted", "a request for time", "an appeal to the elders"], 1,
         "Her answer separates the ritual from the consent the ritual is supposed to express."),
        ("The exchange is built chiefly on", ["long speeches and asides", "short lines and repetition that turn the scene into a contest", "comic relief", "a soliloquy"], 1,
         "The clipped stichomythia and the repeated *will not* make the scene a duel of wills."),
        ("When Ada picks up the drum, the gesture functions as", ["a stage direction with no meaning", "a claim to her mother's memory and to the right to speak", "a threat of violence", "an exit"], 1,
         "The drum has been silent since her mother died, and holding it makes her the one who will break that silence."),
        ("The final stage direction, *The light goes*, most likely", ["ends the play", "leaves the conflict unresolved and the audience holding it", "indicates an interval", "introduces a new scene"], 1,
         "Nothing is settled; the darkness closes on the drum between them, which is the point."),
        ("Ochanya's line *You will not shame this house* reveals that he is chiefly concerned with", ["his daughter's happiness", "the household's standing before the community", "the elders' fee", "Obiora's son"], 1,
         "Shame is a public matter, and his objection is about reputation rather than about Ada."),
        ("The play's central conflict is between", ["two villages", "custom and consent", "a father and a drum", "wealth and poverty"], 1,
         "Custom demands the marriage; Ada demands to be asked. The kola and the drum are the objects through which the two claims are made."),
    ]


def _poem_questions():
    return [
        ("The poem's opening stanza suggests that", ["the street is proud of its name", "the naming is official and forgotten", "the man was a hero", "the photograph is new"], 1,
         "A name given by officials, a photograph in a hall where nobody looks: the memorial exists and means nothing."),
        ("The children's game matters because", ["it is amusing", "it is how the place actually remembers, through use rather than inscription", "it damages property", "it is noisy"], 1,
         "The street learns their names; the poem opposes living memory to the plaque."),
        ("The lamps coming on *like a sentence being read aloud* is", ["a simile for order and gradual understanding", "a metaphor for electricity", "personification of the lamps", "hyperbole"], 0,
         "The comparison makes the lighting sequential and legible, as though the street were being spelled out."),
        ("The speaker's admission that he does not know the man's name is", ["a confession of ignorance only", "the poem's argument: he knows the street by its life, not its inscription", "a joke", "a change of subject"], 1,
         "He knows what the children shout, which is the kind of knowledge the poem values."),
        ("The poem is written in", ["strict iambic pentameter", "free verse with short lines", "ballad stanza", "blank verse couplets"], 1,
         "No regular metre or rhyme, and the line breaks do the work — the poem is free verse."),
        ("The phrase *which is how a place remembers* is placed at the end of a stanza in order to", ["complete a rhyme", "give the claim emphasis by isolation", "shorten the line", "introduce a character"], 1,
         "Stanza-end placement gives the statement the force of a conclusion, which is a structural effect."),
        ("The tone of the poem is best described as", ["angry", "wry and affectionate, with an edge of reproof", "sentimental", "indifferent"], 1,
         "The speaker smiles at the plaque and prefers the children, which is affection with a judgment inside it."),
        ("The title of the kind of poem that celebrates a person by accumulated epithets, as the street does not, is", ["an ode", "a praise poem", "an elegy", "a dirge"], 1,
         "The praise poem names and celebrates; the poem's point is that the official name has stopped doing either."),
    ]


PAPER_1 = [
    ("passage", "Section A — Unseen Prose", PROSE, _prose_questions()),
    ("script", "Section B — Unseen Drama", DRAMA, _drama_questions()),
    ("verse", "Section C — Unseen Poem", POEM, _poem_questions()),
    ("plain", "Section D — Literary Terms", "", TERMS),
    ("plain", "Section E — Texts and Contexts", "", CONTEXT),
]
