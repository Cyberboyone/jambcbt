"""Paper 1 — sixty questions, section by section."""

COMPREHENSION = """When the market at Oja-Oba burned down, the traders did not wait for the council. Within a week a committee of eleven had been formed, a levy of two hundred naira a week had been agreed, and a plan had been drawn on the back of a cement bag. The council's own plan arrived four months later, with a contractor's name on it and a budget six times the committee's.

The committee rebuilt in stages. The first stage was a roof over the yam sellers, because the yam sellers had the most to lose and the least cover. The second was drainage, which nobody could see and everybody paid for. By the time the council's contractor arrived with his drawings, the market was trading under corrugated sheets and the traders had begun to argue about the third stage — a lock-up row for the tailors.

The lesson is not that the council was useless, though it was slow. The lesson is that the people who use a place know what it needs first, and that a plan drawn by the people who will pay for it is usually cheaper than a plan drawn for them. The committee's weakness was the same as its strength: it could move quickly because it did not have to consult anyone outside the market, and it did not consult anyone outside the market because it had never expected to be asked."""

CLOZE = """Reading a passage for an examination is not the same as reading for pleasure. The pleasure reader may (1) ____ a paragraph twice because the sentence is beautiful; the candidate has four questions and six minutes. What the candidate needs is a method that can be (2) ____ under pressure and repeated without (3) ____.

The first move is to read the questions before the passage. This sounds (4) ____, and it is; but it changes what the eye does. Instead of reading everything with equal attention, the candidate reads for the four things the questions have (5) ____. The second move is to mark the sentence each question points at, (6) ____ the answer can be checked without re-reading the whole passage.

None of this replaces understanding. A candidate who has never learned to read closely will (7) ____ the method and still choose the wrong option. The method (8) ____ the work; it does not do it. What it does is make the work (9) ____ — and in an examination, a technique that saves two minutes is worth (10) ____ than a fact that saves none."""

COMP_QS = [
    ("The main idea of the passage is that",
     ["councils are useless in an emergency", "the people who use a place know what it needs first", "markets should be rebuilt by contractors", "drainage is more important than roofing"], 1,
     "The third paragraph states the claim and the first two illustrate it. The passage distinguishes the council's slowness from its usefulness."),
    ("The first stage of the committee's rebuilding was",
     ["drainage for the whole market", "a roof over the yam sellers", "a lock-up row for the tailors", "a new cement store"], 1,
     "The yam sellers had the most to lose and the least cover; the drainage came second and the tailors' row was still being argued about."),
    ("The council's plan arrived late chiefly because",
     ["the traders refused to co-operate", "it depended on a contractor and a formal budget", "the council had no money", "the market had already been rebuilt"], 1,
     "The passage contrasts the committee's week with the council's four months, a contractor's name and a budget six times the size."),
    ("As used in the passage, *levy* means",
     ["a tax imposed by government", "a regular contribution agreed by a group", "a fine for wrongdoing", "a loan from a bank"], 1,
     "The levy is agreed by the committee of traders and paid weekly — a contribution, not a statutory tax or a penalty."),
    ("The writer's attitude to the committee is",
     ["contemptuous", "admiring but clear-eyed about its limits", "indifferent", "hostile"], 1,
     "The last sentence praises its speed and names its narrowness in the same breath — admiration with a qualification."),
]

CLOZE_QS = [
    ("Blank 1", ["read", "reads", "reading", "having read"], 0,
     "After the modal *may*, the base form is required."),
    ("Blank 2", ["apply", "applied", "applying", "applies"], 1,
     "The passive *can be applied* needs the past participle."),
    ("Blank 3", ["think", "thought", "thinking", "thinker"], 2,
     "*Without* is a preposition and takes a gerund: *without thinking*."),
    ("Blank 4", ["obvious", "obviously", "obviousness", "more obvious"], 0,
     "*Sounds* is a linking verb and takes an adjective: *sounds obvious*."),
    ("Blank 5", ["raised", "risen", "arose", "arisen"], 0,
     "The questions *have raised* the points; *rise* and *arise* are intransitive and take no object."),
    ("Blank 6", ["so that", "although", "unless", "whereas"], 0,
     "The clause states a purpose or result, which *so that* marks; the others mark contrast or condition."),
    ("Blank 7", ["abandon", "abandoned", "abandoning", "abandonment"], 0,
     "After *will*, the base form: *will abandon the method*."),
    ("Blank 8", ["organise", "organises", "organising", "organised"], 1,
     "The subject is *The method*, singular, so the present simple takes -s."),
    ("Blank 9", ["fast", "faster", "fastest", "more fast"], 1,
     "The comparison is between two states of the work, so the comparative is required."),
    ("Blank 10", ["much", "more", "most", "many"], 1,
     "*More than* completes the comparative *worth more than a fact*."),
]

NOVEL = [
    ('Stardom Schools was founded by', ['Chief David Aje', 'Mrs Ibidun Gloss', 'Chief Mrs Solape Bayo', 'Mr Egi Meko'], 0,
     'Chief David Aje, whose daughter now runs the school as managing director.'),
    ('Before he became principal of the secondary school, Bepo was headmaster of', ['Stardom Kiddies', 'Beesway Group of Schools', 'Fruitful Future School', 'Stardom Hub'], 0,
     "He came up through Stardom Kiddies, the school's first arm."),
    ('The ritual that Bepo witnessed took place at', ['Stardom Schools', 'Beesway Group of Schools', 'Fruitful Future School', 'the Black Heritage Museum'], 1,
     'Beesway, where Egi Meko was director. The scene is recalled in Chapter 7, not witnessed in the present of the novel.'),
    ("The board caps the cooperative's loans at", ['₦25,000', '₦250,000', '₦2.5 million', '₦95 million'], 1,
     '₦250,000, after discovering a purse of about ₦95 million. The other figures are the purse and the loan Nku took.'),
    ('The sentence at the centre of the Open Day row is', ['Ade and Jide come early', 'Ade as well as Jide comes early', 'Ade as well as Jide come early', 'Ade, as well as Jide, come early'], 1,
     "The teacher's version is correct: with subjects joined by *as well as*, the verb agrees with the first."),
    ('Favour, the pupil at the centre of Chapter 4, is', ["Bepo's daughter", 'an SSS2 pupil at Stardom', 'a teacher at Beesway', "the MD's niece"], 1,
     "She is in SSS2 at Stardom and is the daughter of Mrs Ignatius; the DNA result removes her from Mr Ignatius's family."),
    ('The title of the novel refers to', ['Bepo', 'Mrs Ibidun Gloss', 'Chief Didi Ogba', 'Mr Egi Meko'], 0,
     'The Lekki headmaster is Bepo, and the title names his post and his place.'),
    ('Bepo renews his passport at an office in', ['Lagos', 'Ibadan', 'Abuja', 'Port Harcourt'], 1,
     'Ibadan, with the NIN desk, the network failures and the agent all part of the ordeal.'),
    ('Bepo shouts *Noooo!* for the first time during', ['the morning assembly', "the drama club's dance at the farewell", 'the board meeting', 'the passport interview'], 1,
     'The dance about the Badagry visit brings the museum back, and the shout escapes before he can stop it.'),
    ('The novel ends with Bepo', ['boarding the plane', 'returning to the school on Monday', 'resigning his post', 'moving to London'], 1,
     'He does not board. On Monday he walks back through the gate and says he has come to complete his mission.'),
]
INTERPRETATION = [
    ("“The committee's weakness was the same as its strength.” This means that",
     ["the committee was both weak and strong", "the independence that made it fast also made it narrow", "its strength was greater than its weakness", "it had no weakness at all"], 1,
     "The sentence names one quality seen from two sides: independence produced speed and the absence of outside consultation."),
    ("“He is not the only fish in the sea” means that",
     ["the sea is full of fish", "there are other choices available", "he is difficult to catch", "he should stay where he is"], 1,
     "The idiom is about alternatives, and it is usually said to someone recovering from a disappointment."),
    ("“The teacher's remark was lost on the class” means that the class",
     ["mislaid the teacher's notes", "did not understand the remark", "was absent that day", "repeated the remark"], 1,
     "*Lost on* means not understood or not appreciated by the people who heard it."),
    ("“Bepo's decision did not come out of the blue” means that the decision",
     ["was sudden and unexpected", "had been prepared for by what came before", "was made in the open air", "surprised even Bepo"], 1,
     "The idiom says the opposite of its common misreading: what comes out of the blue is sudden, so *did not* means it was prepared."),
    ("“The board's cap was a cure worse than the disease.” This means that the cap",
     ["cured the problem completely", "created a larger problem than it solved", "was never applied", "was welcomed by the staff"], 1,
     "The comparison is between two evils, and it says the remedy did more damage than the original trouble."),
]

ANTONYMS = [
    ("Choose the option opposite in meaning to *adamant*.", ["unyielding", "flexible", "stubborn", "firm"], 1,
     "*Adamant* means refusing to change; its opposite is *flexible*. The other three are synonyms, which is the trap."),
    ("Choose the option opposite in meaning to *candid*.", ["honest", "evasive", "frank", "open"], 1,
     "*Candid* means frank and open, so its opposite is *evasive*; the rest are synonyms."),
    ("Choose the option opposite in meaning to *lucid*.", ["clear", "obscure", "bright", "simple"], 1,
     "*Lucid* means clear, especially of writing or explanation, so the opposite is *obscure*."),
    ("Choose the option opposite in meaning to *obsolete*.", ["outdated", "current", "ancient", "worn"], 1,
     "*Obsolete* means no longer in use; its opposite is *current*. *Outdated* and *ancient* are close in meaning to the word itself."),
    ("Choose the option opposite in meaning to *placid*.", ["calm", "agitated", "still", "peaceful"], 1,
     "*Placid* means calm and unruffled, so the opposite is *agitated*; the other three repeat the word's sense."),
]

SYNONYMS = [
    ("Choose the option nearest in meaning to *adamant*.", ["inflexible", "cheerful", "reluctant", "confused"], 0,
     "*Adamant* means refusing to be persuaded — inflexible. *Reluctant* suggests unwillingness, not firmness."),
    ("Choose the option nearest in meaning to *candid*.", ["honest", "careful", "rude", "secretive"], 0,
     "*Candid* means frank and honest; *rude* confuses bluntness of manner with honesty of statement."),
    ("Choose the option nearest in meaning to *lucid*.", ["clear", "lengthy", "difficult", "colourful"], 0,
     "*Lucid* means clear, and it is used of explanations and prose."),
    ("Choose the option nearest in meaning to *obsolete*.", ["outdated", "expensive", "useful", "rare"], 0,
     "*Obsolete* means superseded and no longer in use; *rare* is about scarcity, not age."),
    ("Choose the option nearest in meaning to *placid*.", ["calm", "shallow", "polluted", "wide"], 0,
     "*Placid* means calm and still, whether of water or of a temperament."),
]

GRAMMAR = [
    ('The report, together with its appendices, ___ on the table.', ['was', 'were', 'have been', 'are'], 0,
     'With *together with*, the verb agrees with the first subject, *the report*, which is singular.'),
    ('Not only did she sing, ___ she also danced.', ['but', 'and', 'so', 'yet'], 0,
     'The frame is *not only … but also*, and the second half needs *but*.'),
    ('The furniture in the new office ___ imported.', ['is', 'are', 'were', 'have been'], 0,
     '*Furniture* is uncountable and takes a singular verb.'),
    ('He was ___ tired that he slept at once.', ['so', 'such', 'very', 'too'], 0,
     'The frame is *so + adjective + that*; *such* would need a noun.'),
    ('The money ___ from the safe last night.', ['was stolen', 'stole', 'has stolen', 'is stealing'], 0,
     'The money receives the action and *last night* fixes the past simple, so the passive past is required.'),
    ('She insisted on ___ the bill.', ['paying', 'pay', 'paid', 'to pay'], 0,
     '*Insist on* takes a gerund, because *on* is a preposition.'),
    ('By next December, she ___ here for ten years.', ['will have worked', 'will work', 'worked', 'is working'], 0,
     'An action completed by a future point takes the future perfect.'),
    ('He denied ___ the money.', ['to take', 'taking', 'take', 'took'], 1,
     '*Deny* takes a gerund, not an infinitive.'),
    ('Hardly had he sat down ___ the bell rang.', ['than', 'when', 'then', 'that'], 1,
     'The frame *hardly … when* is fixed; *no sooner* is the one that takes *than*.'),
    ('The man ___ car was stolen is my uncle.', ['who', 'whom', 'whose', 'which'], 2,
     'Possession requires the relative pronoun *whose*.'),
]

ORAL = [
    ('Which word contains the same vowel sound as *caught*?', ['court', 'cot', 'cut', 'cat'], 0,
     '*Caught* and *court* share /ɔː/. *Cot* is /ɒ/, *cut* is /ʌ/ and *cat* is /æ/.'),
    ('How many syllables are there in *photograph*?', ['two', 'three', 'four', 'five'], 1,
     '*Pho-to-graph*: three beats. The related *photographer* adds a beat and moves the stress.'),
    ('In which word does the stress fall on the last syllable?', ['referee', 'table', 'happy', 'doctor'], 0,
     '*Ref-er-EE*. The other three are first-syllable words.'),
    ('Which word rhymes with *eight*?', ['late', 'eat', 'it', 'at'], 0,
     'A rhyme runs from the stressed vowel: *eight* and *late* agree from /eɪ/ onwards.'),
    ('“I said the BLUE folder, not the black one.” The stressed word corrects a claim about', ['the colour', 'the owner', 'the size', 'the number'], 0,
     'The emphasised word is the one the false statement got wrong, and here the false statement named a colour.'),
    ('Which word contains the sound /eɪ/?', ['bait', 'bet', 'bit', 'bat'], 0,
     '*Bait* carries /eɪ/; the others are /e/, /ɪ/ and /æ/.'),
    ('Which word contains the voiced sound /ð/?', ['think', 'three', 'those', 'health'], 2,
     '*Those* is voiced; the other three carry the voiceless /θ/.'),
    ('In which word is the *b* silent?', ['habit', 'cabin', 'climb', 'table'], 2,
     '*b* after *m* is silent: climb, comb, thumb, lamb. The other three pronounce it.'),
    ('Which pair are homophones?', ['bear / bare', 'sheep / ship', 'thin / then', 'seat / sit'], 0,
     '*Bear* and *bare* sound the same and are spelled differently. The other pairs differ in one sound.'),
    ('The sound /ʒ/ appears in', ['measure', 'judge', 'shoe', 'chair'], 0,
     '*Measure* has the voiced /ʒ/ in the middle; the others are /dʒ/, /ʃ/ and /tʃ/.'),
]

PAPER_1 = [
    ("passage", "Section A — Comprehension Passage", COMPREHENSION, COMP_QS),
    ("cloze", "Section A — Cloze Passage", CLOZE, CLOZE_QS),
    ("plain", "Section A — The Reading Text", "Ten questions on *The Lekki Headmaster*. Answer them from the book, not from the film of it in your head.", NOVEL),
    ("plain", "Section B — Sentence Interpretation", "Choose the option that best explains each sentence.", INTERPRETATION),
    ("plain", "Section B — Antonyms", "Choose the option opposite in meaning to the word in italics.", ANTONYMS),
    ("plain", "Section B — Synonyms", "Choose the option nearest in meaning to the word in italics.", SYNONYMS),
    ("plain", "Section B — Sentence Completion", "Choose the option that best completes each sentence.", GRAMMAR),
    ("plain", "Section C — Oral Forms", "Ten questions on sounds, stress, rhyme and emphatic stress.", ORAL),
]
