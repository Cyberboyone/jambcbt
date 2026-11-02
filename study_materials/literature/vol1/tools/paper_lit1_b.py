"""Paper 2 — forty questions, section by section. See paper_lit1_a for the model."""

PROSE = """Mr Balogun kept two ledgers. The first was the one the auditors saw: ruled in black ink, each column headed in a hand so neat it looked printed, every figure a small monument to order. The second lived in his head, and it was not neat at all.

He had begun the second ledger in the year his son was born, when the shop was one room and the rent was paid weekly to a woman who came on Fridays with a bag. In that ledger he kept what the first could not hold: which customers had been trusted before they could pay, which ones had been given credit on the strength of a father's name, and what each of those names had cost him.

By the time the auditors came, the second ledger had grown heavy. He could not write it down, because a written record of generosity is a record of debts, and debts are what a business is punished for. So he carried it, and every Sunday he balanced it in the quiet of the shop, and sometimes the balance made him laugh and sometimes it made him sit very still.

"What are you doing?" his son asked him once.
"Counting," he said. "Not the money."

The son, who was twelve and had begun to learn the first ledger, did not ask again."""

DRAMA = """(A government office. Two desks, one telephone. MR OKAFOR, the director, and MISS ADE, his assistant.)

MISS ADE: The file came back from the ministry, sir.
MR OKAFOR: And?
MISS ADE: It came back with a question on it.
MR OKAFOR: (not looking up) Then answer the question.
MISS ADE: The question is for you, sir. It asks who approved the payment.
MR OKAFOR: (pause) Who signed it?
MISS ADE: You did.
MR OKAFOR: Then that is your answer.
MISS ADE: The ministry is asking who *approved* it, sir, not who signed it.
MR OKAFOR: (rising, going to the window) There is a difference between a signature and a decision. A signature is a pen. A decision is a room.
MISS ADE: And which room, sir?
MR OKAFOR: (turning) You are very young.
MISS ADE: I am the same age as the file, sir. It was opened the year I was employed.
(The telephone rings. Neither moves to answer it.)"""

POEM = """The hoe remembers the hand,
the hand forgets the hoe.
At harvest the field is loud with thanks,
and the field was not thanked when it was broken.

My father's palms were a map
of a country he never visited.
He gave me the map and said: walk,
and I have been walking ever since.

Now the city gives me a chair
and a window with nothing to break.
I have become the hand that forgets.
The hoe is in the shed, remembering."""

TERMS = [
    (
        "*The classroom was a zoo by Friday.* The device is",
        ["simile", "metaphor", "metonymy", "litotes"],
        1,
        "The classroom *is* a zoo, asserted without a comparative word, which is a metaphor.",
    ),
    (
        "*The whole house held its breath.* The device is",
        ["personification", "metonymy", "hyperbole", "apostrophe"],
        0,
        "Holding breath is human, given to a house — personification, with *house* standing for its people.",
    ),
    (
        "A poem that addresses an absent friend directly uses",
        ["apostrophe", "synecdoche", "euphemism", "paradox"],
        0,
        "Address to someone absent or dead is apostrophe.",
    ),
    (
        "*He is a wolf in meetings* is best described as",
        ["simile", "metaphor with animal imagery", "onomatopoeia", "litotes"],
        1,
        "Identity is asserted, and the animal comparison gives it its edge.",
    ),
    (
        "The repetition of vowel sounds within a line is",
        ["alliteration", "assonance", "consonance", "rhyme"],
        1,
        "Vowel repetition is assonance; initial consonants alliteration; final consonants consonance.",
    ),
    (
        "A fourteen-line poem whose octave and sestet are separated by a turn is",
        ["a Shakespearean sonnet", "a Petrarchan sonnet", "an ode", "a ballad"],
        1,
        "Eight plus six with a turn at line 9 is the Petrarchan shape.",
    ),
    (
        "“The grave is a quiet neighbour” is",
        ["a metaphor with personification", "a simile", "an oxymoron", "a pun"],
        0,
        "The grave is said to be a neighbour — identity asserted — and neighbourliness is a human relation, so the figure carries personification.",
    ),
    (
        "Saying *he is not the cleverest man in the room* to mean he is foolish is",
        ["hyperbole", "litotes", "sarcasm", "bathos"],
        1,
        "Understatement by denying the opposite is litotes, and its politeness is the point.",
    ),
    (
        "An image that recurs through a work and gathers meaning is",
        ["a simile", "a motif", "a pun", "an apostrophe"],
        1,
        "The motif works by repetition, each appearance revising the last.",
    ),
    (
        "*The soldiers were ordered to clear the street.* The word *clear* is an example of",
        ["euphemism", "hyperbole", "paradox", "alliteration"],
        0,
        "The word softens a violent action, which is what euphemism does — and its blandness is the indictment.",
    ),
]

CONTEXT = [
    (
        "The Literature in English paper contains",
        ["thirty questions in thirty minutes", "forty questions in forty minutes", "fifty questions in fifty minutes", "sixty questions in forty minutes"],
        1,
        "Forty questions in forty minutes. Sixty in forty is the Use of English pattern, which is a different paper.",
    ),
    (
        "*Othello* is a",
        ["comedy", "tragedy", "history play", "tragicomedy"],
        1,
        "It ends with the hero destroying what he loves and understanding it too late — the tragic shape.",
    ),
    (
        "*Harvest of Corruption* is",
        ["a novel by Amma Darko", "a play by Frank Ogodo Ogbeche", "a poem by Birago Diop", "a play by William Shakespeare"],
        1,
        "It is the prescribed Nigerian play. *Faceless* is Darko's novel, and Diop wrote *Vanity*.",
    ),
    (
        "*Faceless* is a novel by",
        ["Bayo Adebowale", "Amma Darko", "Richard Wright", "Kofi Awoonor"],
        1,
        "Amma Darko's *Faceless* is the Ghanaian novel on the list; Adebowale wrote *Lonely Days* and Wright *Native Son*.",
    ),
    (
        "Which of these is NOT a prescribed Literature text?",
        ["*Lonely Days*", "*Native Son*", "*The Lekki Headmaster*", "*The Anvil and the Hammer*"],
        2,
        "*The Lekki Headmaster* is the Use of English reading text. The other three are the Adebowale novel, the Wright novel and the Awoonor poem.",
    ),
    (
        "Tennyson's *Crossing the Bar* is best described as",
        ["an epic", "a ballad", "a lyric meditating on death as a crossing", "a satire"],
        2,
        "The poem takes the harbour bar as an image of the boundary between life and death, which makes it a lyric of farewell.",
    ),
]


def _prose_questions():
    return [
        ("The two ledgers represent", ["honesty and dishonesty", "the record a business must keep and the record a man must carry", "profit and loss", "father and son"], 1,
         "One is written for auditors, the other is kept in the head because it cannot be written without becoming evidence."),
        ("The second ledger is kept *in his head* because", ["he cannot write", "a written record of generosity becomes a record of debts", "it is illegal", "his son might read it"], 1,
         "The passage says it outright: a written record of generosity is a record of debts, and debts are punished."),
        ("The phrase *a small monument to order* suggests", ["the ledger is old", "the neatness is a performance for inspectors", "the shop is large", "the figures are wrong"], 1,
         "A monument is built to be seen, which prepares the contrast with the unwritten ledger."),
        ("Mr Balogun's answer, *Counting. Not the money*, is", ["a lie", "a literal truth the son cannot yet understand", "a joke", "a refusal to speak"], 1,
         "He is balancing the ledger of trust, which is the only thing he counts on Sundays."),
        ("The son's failure to ask again shows", ["that he is uninterested", "that the father's world is closed to the next generation", "that he is afraid", "that he has understood"], 1,
         "The boy has learned the first ledger only, so the second remains untranslatable, which is the passage's quiet loss."),
        ("The narrative point of view is", ["first person", "third person, limited to Mr Balogun's mind", "third person objective", "second person"], 1,
         "His thoughts and memories are reported, and no other mind is entered."),
        ("The passage's structure moves from", ["dialogue to description", "the public ledger to the private one, and then to the son", "the son to the father", "the shop to the ministry"], 1,
         "It begins with the auditors' ledger, turns inward, and ends with the exchange that measures the distance between them."),
        ("The tone of the last sentence is best described as", ["comic", "resigned and slightly elegiac", "angry", "celebratory"], 1,
         "The boy does not ask again: something closes, and the narrator lets it close without comment."),
    ]


def _drama_questions():
    return [
        ("The file returning *with a question on it* sets the plot going because", ["it is a mistake", "the question cannot be answered by the person who signed", "the ministry is slow", "Miss Ade is new"], 1,
         "The distinction between signing and approving is the whole conflict, and the question forces it into the open."),
        ("Mr Okafor's *A signature is a pen. A decision is a room* is", ["a metaphor that evades responsibility", "a simile", "a stage direction", "a soliloquy"], 0,
         "The two metaphors separate the visible act from the hidden one, which is exactly the evasion Miss Ade is refusing."),
        ("Miss Ade's *I am the same age as the file* is effective because", ["it is polite", "it makes the delay a measure of her own service and his neglect", "it is a joke", "it changes the subject"], 1,
         "The file and her employment began together, so the file's age indicts the length of the cover-up."),
        ("The telephone ringing with neither character moving is", ["an accident of staging", "a stage action that measures their paralysis", "comic relief", "a cue for the interval"], 1,
         "The unanswered ring is a decision written into the stage business, and it closes the scene on inaction."),
        ("Mr Okafor's *You are very young* is", ["a compliment", "an attempt to end the argument by discrediting the speaker", "a stage direction", "an aside"], 1,
         "It answers the person rather than the question, which is the commonest move of a man losing an argument."),
        ("The scene is built chiefly on", ["long monologues", "short lines and a single sustained distinction", "a chorus", "comic relief"], 1,
         "The stichomythic exchange keeps one question alive, which is how the tension is sustained without a plot twist."),
        ("Miss Ade's function in the scene is", ["to provide comedy", "to act as the audience's questioner, refusing the evasions", "to narrate", "to resolve the conflict"], 1,
         "She asks what the audience would ask, which is why the scene needs her and not a chorus."),
        ("The extract is best described as", ["a tragedy", "an extract from a play of social criticism", "a melodrama", "a farce"], 1,
         "Nothing is resolved and no one is ruined; the target is an institution, which is the mark of social criticism."),
    ]


def _poem_questions():
    return [
        ("The hoe and the hand stand for", ["farm tools", "labour and the memory of those who did it", "the city and the village", "father and son only"], 1,
         "The pair carries the poem's argument about work, memory and forgetting across all three stanzas."),
        ("*The field is loud with thanks* but *was not thanked when it was broken* is an example of", ["simile", "irony", "alliteration", "litotes"], 1,
         "The gratitude arrives after the damage: the words and the fact pull against each other."),
        ("The father's palms as *a map of a country he never visited* suggests", ["he was a traveller", "his labour was a kind of knowledge he could pass on", "he was lost", "he could read"], 1,
         "The map is made by work rather than travel, and giving it to the son is the inheritance."),
        ("The speaker's *chair* and *window with nothing to break* represent", ["comfort", "a life that has lost the labour the poem values", "poverty", "old age"], 1,
         "Comfort is the problem: nothing to break means nothing to make, and the next line names him the hand that forgets."),
        ("The poem's structure is", ["three stanzas moving from the past to the present", "a sonnet with a couplet", "a ballad", "a dramatic monologue"], 0,
         "The first two stanzas establish the inheritance and the third states its loss, so the movement is temporal."),
        ("The last line is effective because", ["it rhymes", "it returns the hoe to the shed, where it remembers what the speaker cannot", "it is short", "it names the father"], 1,
         "The object keeps the memory the man has surrendered, and the reversal completes the opening line."),
        ("The repetition of *remember / forgets* throughout the poem is", ["accidental", "a structural opposition that organises its argument", "assonance", "a refrain"], 1,
         "The pair recurs in each stanza, and its reversal between stanza one and stanza four is the poem's plot."),
        ("The poem's tone is best described as", ["bitter and accusing", "wistful, with self-reproach", "comic", "neutral"], 1,
         "The speaker includes himself among the forgetful, which makes the tone rueful rather than angry."),
    ]


PAPER_2 = [
    ("passage", "Section A — Unseen Prose", PROSE, _prose_questions()),
    ("script", "Section B — Unseen Drama", DRAMA, _drama_questions()),
    ("verse", "Section C — Unseen Poem", POEM, _poem_questions()),
    ("plain", "Section D — Devices in Context", "", TERMS),
    ("plain", "Section E — The Paper and the Set Texts", "", CONTEXT),
]
