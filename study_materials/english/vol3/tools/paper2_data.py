"""Paper 2 — sixty questions, section by section."""

COMPREHENSION = """The bus park at Asaba has no timetable. It has a man called Baba Ruka, who sits under a mango tree with a notebook and knows, without being told, that the Enugu bus leaves when it has fourteen passengers, that the Onitsha bus leaves when it has ten, and that the Abuja bus will wait until four o'clock whatever the notebook says.

Visitors find this chaos. The drivers call it a schedule. Baba Ruka's notebook records departure times and load counts, and although nobody has ever asked to see it, the notebook is the reason the park works: a driver who leaves with eleven passengers when the notebook says fourteen will find himself at the back of the queue the next morning.

What the park has, and what the council's transport plan has never had, is a record that everybody believes in. The council's plan proposes a digital booking system, a paved park and a canopy over the waiting area; all three are improvements, and none of them addresses the thing that makes the park orderly, which is that its users agree on the rules and one old man remembers them.

The plan is not wrong. It is simply addressed to the wrong problem. A park with a canopy and no agreement about when the bus leaves is a dry place in which to argue."""

CLOZE = """Every school has a room that nobody uses and a room that everybody uses until it breaks. The difference is rarely the furniture. It is almost always the (1) ____, because a space that has no rule about who may use it belongs to the loudest person in the building.

The principal who wants to (2) ____ the problem usually begins with a timetable. The timetable is a good beginning and a poor (3) ____. It tells people when they may use a room; it does not tell them what to do when two of them arrive at the same time (4) ____ the same key.

What changes behaviour is not the notice but the (5) ____. If the staff see that a class which books the room is (6) ____ turned away, they will begin to book. If they see that the loudest teacher gets what she wants, they will begin to (7) ____ her.

A school, in other words, is not governed by its rules but by the (8) ____ that its rules will be applied. Where that expectation is (9) ____, a single notice is worth more than a shelf of regulations; where it is absent, the regulations are (10) ____ paper."""

COMP_QS = [
    ("The writer's main point in the passage is that",
     ["bus parks should be paved", "a shared record and agreed rules make a place orderly", "councils are always wrong", "timber canopies are unnecessary"], 1,
     "The passage uses the park and the council's plan to make one claim: order comes from agreement and memory, not from equipment."),
    ("Baba Ruka's notebook matters because",
     ["it is inspected by the council", "everybody believes in the record it holds", "it lists the fares", "it is written in English"], 1,
     "The passage says nobody has ever asked to see it, and that it still governs behaviour — belief in the record is the mechanism."),
    ("The drivers' attitude to the apparent chaos is that",
     ["it is a scandal", "it is in fact a schedule", "it should be abolished", "it is the council's fault"], 1,
     "The second paragraph sets the visitors' word against the drivers' word: what looks like chaos is the working timetable."),
    ("As used in the passage, *addressed* means",
     ["spoken to", "directed at a problem", "written on an envelope", "corrected"], 1,
     "*Addressed to the wrong problem* means aimed at the wrong difficulty, not spoken to anyone."),
    ("The writer's tone towards the council's plan is",
     ["contemptuous", "critical but fair", "enthusiastic", "indifferent"], 1,
     "The plan is called *not wrong*, and its three improvements are granted — but it is said to miss the point."),
]

CLOZE_QS = [
    ("Blank 1", ["rule", "rules", "ruling", "ruled"], 0,
     "The definite article and the singular construction require the noun *rule*; the sense is a rule about use."),
    ("Blank 2", ["solve", "solving", "solution", "solved"], 0,
     "After *wants to*, the base form of the verb is required."),
    ("Blank 3", ["end", "ending", "ended", "ends"], 0,
     "*A poor end* — the noun is required after the adjective."),
    ("Blank 4", ["with", "for", "to", "by"], 0,
     "Two people arrive *with* the same key: accompaniment, not purpose."),
    ("Blank 5", ["notice", "practice", "building", "timetable"], 1,
     "The contrast is between the notice and what actually happens — the practice of applying the rule."),
    ("Blank 6", ["never", "always", "hardly", "seldom"], 0,
     "The sentence describes the good case, in which a booking class is *never* turned away."),
    ("Blank 7", ["imitate", "ignore", "report", "teach"], 0,
     "If loudness wins, others copy it — *imitate* fits the causal chain; *ignore* breaks it."),
    ("Blank 8", ["hope", "expectation", "promise", "threat"], 1,
     "The paragraph's subject is the belief that rules will be applied, which is an expectation."),
    ("Blank 9", ["strong", "present", "absent", "weak"], 1,
     "The contrast later in the sentence is *where it is absent*, so the first case must be where it is present."),
    ("Blank 10", ["valuable", "waste", "useful", "thick"], 1,
     "Without the expectation, regulations are *waste paper* — the idiom the sentence needs."),
]

NOVEL = [
    ("The novel's first chapter is titled", ['Dusk', 'Dawn', 'The Enticement', 'Migration Tales'], 0,
     '*Dusk*, a mood rather than a time of day: the assembly in the chapter is a morning assembly.'),
    ("Bepo's wife and children live in", ['Lagos', 'the United Kingdom', 'Canada', 'the United States'], 1,
     'Seri works in the United Kingdom as a nurse, and Nike and Kike are with her.'),
    ('The parting gift the MD presents to Bepo at the farewell is', ['a cheque for $10,000', 'a cheque for ₦10,000', 'a cheque for £10,000', 'a new car'], 0,
     "A cheque for $10,000, presented at the farewell after the MD's account of his appointment."),
    ('The board chairman who speaks of the snake in the roof is', ['Mrs Ibidun Gloss', 'Chief Mrs Solape Bayo', 'Mrs Grace Apeh', 'Mrs Beke Egbin'], 1,
     "Chief Mrs Solape Bayo, the MD's mother, who leads the decision to cap cooperative loans."),
    ('The teacher nearly dismissed over a grammatical objection is', ['Mr Audu', 'Mr Fafore', 'Mr Oyelana', 'Mr Justus Anabel'], 1,
     'Mr Fafore, the English teacher, who was right and was defended by Bepo.'),
    ('The school at which Bepo co-founded a venture of his own was', ['Beesway Group of Schools', 'Fruitful Future School', 'Stardom Kiddies', 'Stardom Hub'], 1,
     'Fruitful Future, which grew past seventy pupils and then failed when the roads went bad.'),
    ("Bepo learns of the cooperative's ₦95 million in", ['Chapter 3', 'Chapter 5', 'Chapter 7', 'Chapter 10'], 1,
     "Chapter 5, *Snake in the Roof*, where the MD's suspicion leads to the cooperative's accounts."),
    ('The farewell events include all of the following EXCEPT', ['a novelty football match', 'a debate on arts and sciences', 'a drama club dance', 'a public examination'], 3,
     "The three events are in Chapters 11 and 12's recollection; the examination is not part of the farewell."),
    ("The reader's knowledge of events in the novel is limited to", ['what Bepo knows', 'what the staff know', 'what the MD knows', 'what the narrator invents'], 0,
     'The third person is confined to Bepo, so the reader learns only what he learns.'),
    ('The last chapter is titled', ['Dusk', '…Dawn', 'Point of No Return', 'Laughing Waterfalls'], 1,
     '*…Dawn*, which reverses the first chapter and completes the frame.'),
]
INTERPRETATION = [
    ("“The plan is addressed to the wrong problem.” This means that the plan",
     ["solves the problem it set out to solve", "aims at a difficulty other than the real one", "was sent to the wrong address", "has been withdrawn"], 1,
     "*Addressed to* means aimed at; the passage's point is that the plan's target is not the cause of disorder."),
    ("“A park with a canopy and no agreement is a dry place in which to argue.” This is",
     ["a literal description of the park", "an ironic way of saying the improvement changes nothing essential", "a compliment to the council", "a complaint about the weather"], 1,
     "The sentence grants the improvement and denies its importance — the definition of irony in a single line."),
    ("“He has a finger in every pie” means that he",
     ["bakes for a living", "is involved in many activities", "is greedy at table", "has many friends"], 1,
     "The idiom describes wide involvement, not appetite."),
    ("“The explanation left much to be desired” means that the explanation was",
     ["excellent", "unsatisfactory", "too long", "unnecessary"], 1,
     "The idiom is a polite way of saying something was not good enough."),
    ("“Her remark was beside the point” means that the remark was",
     ["relevant", "irrelevant", "untrue", "offensive"], 1,
     "*Beside the point* means not relevant to the matter being discussed — not the same as untrue."),
]

ANTONYMS = [
    ("Choose the option opposite in meaning to *frugal*.", ["thrifty", "extravagant", "careful", "modest"], 1,
     "*Frugal* means sparing with money, so the opposite is *extravagant*; *thrifty* and *careful* are synonyms."),
    ("Choose the option opposite in meaning to *transparent*.", ["clear", "opaque", "obvious", "open"], 1,
     "*Transparent* means see-through, so the opposite is *opaque*; the rest repeat the sense."),
    ("Choose the option opposite in meaning to *scarce*.", ["rare", "abundant", "limited", "costly"], 1,
     "*Scarce* means in short supply; the opposite is *abundant*. *Rare* and *limited* are close to the word itself."),
    ("Choose the option opposite in meaning to *cordial*.", ["friendly", "hostile", "warm", "polite"], 1,
     "*Cordial* means warm and friendly, so the opposite is *hostile*."),
    ("Choose the option opposite in meaning to *meticulous*.", ["careful", "careless", "thorough", "precise"], 1,
     "*Meticulous* means extremely careful about detail; the opposite is *careless*, not *thorough*."),
]

SYNONYMS = [
    ("Choose the option nearest in meaning to *frugal*.", ["thrifty", "wealthy", "wasteful", "hungry"], 0,
     "*Frugal* means economical, which is *thrifty*; *wasteful* is its antonym."),
    ("Choose the option nearest in meaning to *transparent*.", ["clear", "fragile", "colourful", "heavy"], 0,
     "*Transparent* means able to be seen through, and by extension open and clear."),
    ("Choose the option nearest in meaning to *scarce*.", ["rare", "cheap", "plentiful", "useless"], 0,
     "*Scarce* means in short supply, which is close to *rare*; *plentiful* is its opposite."),
    ("Choose the option nearest in meaning to *cordial*.", ["friendly", "formal", "cold", "brief"], 0,
     "*Cordial* means warm and friendly; *formal* is about manner, not warmth."),
    ("Choose the option nearest in meaning to *meticulous*.", ["thorough", "hasty", "careless", "ordinary"], 0,
     "*Meticulous* means showing great attention to detail, which is *thorough*."),
]

GRAMMAR = [
    ("Each of the candidates ___ given a booklet.", ["were", "was", "have", "are"], 1,
     "*Each* is singular, so the verb is singular, whatever the plural noun that follows."),
    ("She has been living in Lagos ___ ten years.", ["since", "for", "from", "during"], 1,
     "*For* marks a period of time; *since* marks a starting point."),
    ("The committee ___ divided in its opinion.", ["are", "is", "were", "have"], 1,
     "A collective noun acting as one body takes a singular verb, as here: *the committee is divided*."),
    ("He is the ___ of the two brothers.", ["tall", "taller", "tallest", "more tall"], 1,
     "The comparison is between two, so the comparative is required."),
    ("Hardly ___ the house when it began to rain.", ["he had left", "had he left", "he left", "did he leave"], 1,
     "After the negative adverb *hardly* at the start, the auxiliary comes before the subject."),
    ("The results ___ announced tomorrow.", ["will", "will be", "are being", "has been"], 1,
     "The results receive the announcement, and the future requires *will be* + past participle."),
    ("She asked me whether I ___ finished the assignment.", ["have", "had", "has", "having"], 1,
     "Reported speech moves the present perfect back to the past perfect."),
    ("It is high time we ___ the meeting.", ["start", "started", "will start", "have started"], 1,
     "*It is high time* takes the past subjunctive: *it is high time we started*."),
    ("The teacher, as well as the pupils, ___ surprised by the result.", ["were", "was", "have", "are"], 1,
     "With *as well as*, the verb agrees with the first subject, *the teacher*, which is singular."),
    ("Neither of the answers ___ correct.", ["are", "is", "were", "have been"], 1,
     "*Neither of* takes a singular verb in formal English."),
]

ORAL = [
    ("Which word contains the same vowel sound as *cat*?", ["cap", "cut", "car", "cot"], 0,
     "*Cat* and *cap* are both /æ/. *Cut* is /ʌ/, *car* is /ɑ:/ and *cot* is /ɒ/."),
    ("Which word contains the sound /ʃ/?", ["nation", "measure", "judge", "those"], 0,
     "The *ti* of *nation* is /ʃ/. *Measure* is /ʒ/, *judge* is /dʒ/ and *those* begins with /ð/."),
    ("In which word is the *w* silent?", ["write", "water", "window", "sweet"], 0,
     "*w* before *r* is silent: write, wrong, wrist, wrap."),
    ("How many syllables are there in *necessary*?", ["two", "three", "four", "five"], 2,
     "*Nec-es-sa-ry*: four vowel sounds, and the third is a weak schwa."),
    ("The word *education* is stressed on the", ["first syllable", "second syllable", "third syllable", "fourth syllable"], 2,
     "*Ed-u-CA-tion*: the ending *-tion* pulls the stress onto the syllable before it."),
    ("Which word rhymes with *boat*?", ["bought", "note", "boot", "bat"], 1,
     "*Boat* and *note* share /əʊ/ and the final /t/; *bought* is /ɔ:/."),
    ("“She said she would come TOMORROW.” The stressed word answers the question",
     ["who said it", "when she would come", "why she would come", "how she would come"], 1,
     "The emphasis falls on the word that supplies the missing information — the time."),
    ("Which word has a silent *l*?", ["walk", "light", "leaf", "slow"], 0,
     "*l* before *k* is silent: walk, talk, calm, half."),
    ("The pair *sheep* and *ship* differ in", ["one consonant", "one vowel", "stress", "nothing"], 1,
     "They differ in the vowel: /i:/ against /ɪ/, the contrast the paper uses most often."),
    ("Which word is stressed on the first syllable?", ["begin", "photograph", "about", "return"], 1,
     "*PHO-to-graph*. The other three are stressed on the second syllable."),
]

PAPER_2 = [
    ("passage", "Section A — Comprehension Passage", COMPREHENSION, COMP_QS),
    ("cloze", "Section A — Cloze Passage", CLOZE, CLOZE_QS),
    ("plain", "Section A — The Reading Text", "Ten questions on *The Lekki Headmaster*. Answer them from the book, not from the film of it in your head.", NOVEL),
    ("plain", "Section B — Sentence Interpretation", "Choose the option that best explains each sentence.", INTERPRETATION),
    ("plain", "Section B — Antonyms", "Choose the option opposite in meaning to the word in italics.", ANTONYMS),
    ("plain", "Section B — Synonyms", "Choose the option nearest in meaning to the word in italics.", SYNONYMS),
    ("plain", "Section B — Sentence Completion", "Choose the option that best completes each sentence.", GRAMMAR),
    ("plain", "Section C — Oral Forms", "Ten questions on sounds, stress, rhyme and emphatic stress.", ORAL),
]
