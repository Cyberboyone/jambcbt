"""Chapter 5 and Chapter 6 figures — technique and style, then the full paper."""

from common import AMBER, BLUE, GREEN, MUTED, NAVY, PURPLE, RED, SLATE
from figlib import card_row, steps_fig, table_fig, tree_fig


def main() -> None:
    # ── Chapter 5 ──────────────────────────────────────────────────────────
    steps_fig(
        "ch05_frame.svg",
        "The frame: Dusk opens, Dawn closes",
        [
            ("DUSK", "Chapter 1. Light failing, a man unable to speak: the title is the mood, not the time of day."),
            ("THE NIGHT", "Chapters 2–11. The long middle, lit by flashbacks and by other people's stories of abroad."),
            ("DAWN", "Chapter 12. A new day, a man walking back through the gate: the title reverses Chapter 1."),
        ],
        intro="Two chapter titles carry the whole structure, and neither is a time of day in the plot.",
        note="A question on the title *Dusk* is asking about mood and direction, not about the hour of the assembly.",
    )

    card_row(
        "ch05_narrator.svg",
        "The narrator: third person, close to Bepo",
        [
            ("What we see", "Bepo's thoughts, his memories, his private arithmetic — the salary, the fare, the house he would leave."),
            ("What we do not", "What Seri thinks when she is alone; what Mrs Gloss says in the board room when Bepo is not there."),
            ("Why it matters", "Every judgement in the book is Bepo's, offered as fact. The reader is trusted to notice when he is rationalising."),
        ],
        cols=3,
        note="“The novel is narrated in the third person” is a one-mark answer. “Third person limited to Bepo” is the answer that also explains the book.",
    )

    table_fig(
        "ch05_symbols.svg",
        "The symbols, and how far each one reaches",
        ["Symbol", "Where it appears", "What it carries"],
        [
            ("Dusk and dawn", "Chapters 1 and 12", "Despair and renewal; the shape of the whole book"),
            ("The snake in the roof", "Chapter 5, Chief Bayo's proverb", "A danger you have housed yourself — the staff who might become rivals"),
            ("The Point of No Return", "Badagry, and the dream in Chapter 12", "A departure that cannot be undone, whether by slave ship or by plane"),
            ("The carvings", "Chapter 11, the Yoruba saying", "The work a teacher leaves behind when he goes"),
            ("The crucifix and the aphorisms", "Throughout", "A man who teaches by habit, and moralises even when he is the subject"),
        ],
        weights=[1.3, 1.7, 2.8],
        note="A symbol question asks what the object *does* in the story. Two sentences of explanation beat the name of the device.",
    )

    table_fig(
        "ch05_language.svg",
        "Four features of the style, with examples in view",
        ["Feature", "What it sounds like", "Why the novel uses it"],
        [
            ("Proverbs and sayings", "“It is like hanging a snake in the roof and going to bed.”", "Compresses a boardroom's fear into one image, in the register of the people who feel it"),
            ("Humour", "Audu's jokes at the worst moments; the grammar row ending in laughter", "Lets the novel say hard things without preaching, and keeps a sad story readable"),
            ("Irony", "A headmaster condemning japa while packing for London", "Puts the argument inside the character instead of on a placard"),
            ("Nigerian English", "Japa, owambe, iru, egusi, *other things being equal*, *Noooo!*", "Locates the book; the code-mixing is the setting heard rather than described"),
        ],
        weights=[1.4, 2.7, 2.5],
        note="Never call the language “simple”. It is plain on the surface and patterned underneath, which is the harder thing to do.",
    )

    table_fig(
        "ch05_style_questions.svg",
        "How the five style questions are worded",
        ["Question", "What it wants", "The move"],
        [
            ("“The novel is narrated in the …”", "The narrative person and its limit", "Third person, limited to Bepo"),
            ("“The title of Chapter 7, *Ritualists*, is …”", "What the title points at", "The people who perform the rite, and Bepo's refusal"),
            ("“The reference to the snake in the roof is an example of …”", "The device and its meaning", "Proverb used as metaphor; danger housed, not invaded"),
            ("“The writer's tone in Chapter 12 is …”", "The feeling the ending leaves", "Hopeful, and deliberately unresolved"),
            ("“The use of *japa* suggests …”", "The register and its effect", "Local idiom; the theme named in the language of the street"),
        ],
        weights=[2.0, 2.2, 2.4],
        intro="Five shapes, and each one is answered by a device plus a purpose.",
        note="An option that names the device but not its work is half an answer, and the paper is built to punish it.",
    )

    # ── Chapter 6 ──────────────────────────────────────────────────────────
    table_fig(
        "ch06_anatomy.svg",
        "The sixty questions, section by section",
        ["Section", "Block", "Questions", "What it tests"],
        [
            ("A", "Comprehension passage", "5", "main idea, detail, inference, vocabulary in context"),
            ("A", "Cloze passage", "10", "register, collocation and cohesion"),
            ("A", "Reading text", "10", "the novel: fact, sequence, character, theme"),
            ("B", "Sentence interpretation", "5", "what a sentence is doing"),
            ("B", "Antonyms", "5", "opposites in context"),
            ("B", "Synonyms", "5", "nearest meaning in context"),
            ("B", "Sentence completion / grammar", "10", "concord, tense, prepositions, connectors"),
            ("C", "Oral forms", "10", "vowels, consonants, rhyme, stress, emphatic stress"),
        ],
        weights=[0.5, 2.3, 0.7, 3.0],
        intro="Sixty questions, four options, no negative marking.",
        note="The reading text is ten questions — one sixth of the paper, and the easiest ten to prepare, because the book is short and closed.",
    )

    table_fig(
        "ch06_timing.svg",
        "Forty minutes, divided three ways",
        ["Pass", "Minutes", "What you do", "Rule"],
        [
            ("Pass 1", "20", "Every question you can answer on sight; leave the rest flagged", "Never spend more than 40 seconds on a first look"),
            ("Pass 2", "13", "The flagged questions, in the order of the marks they carry", "The novel and oral blocks first: they are fastest"),
            ("Pass 3", "7", "Check, transfer, and fill every remaining box", "No blanks, ever: a guess is a quarter of a mark"),
        ],
        weights=[0.7, 0.7, 2.6, 2.4],
        note="The clock is the fourth section of the paper. A perfect answer you never reach scores the same as a wrong one.",
    )

    steps_fig(
        "ch06_order.svg",
        "The order of attack on the screen",
        [
            ("NOVEL", "10 questions, answered from memory in about four minutes. Start here: they are the only questions nobody can talk you out of."),
            ("ORAL", "10 questions, mostly single-word decisions. Do them while the mind is fresh."),
            ("COMPREHENSION", "5 questions, one passage. Read the questions first, then the passage."),
            ("CLOZE", "10 questions on one short passage. Read the whole paragraph before filling the first blank."),
            ("LEGAL", "The rest — synonyms, antonyms, interpretation, grammar — at 30 seconds each."),
        ],
        intro="The paper arrives mixed; you do not have to answer it in the order it arrives.",
        note="Mark and return is a CBT button, and it exists so that you can bank the easy ten per cent before the clock starts to matter.",
    )

    card_row(
        "ch06_elimination.svg",
        "Four eliminations that work in every section",
        [
            ("The category error", "An option that answers a different kind of question — a detail in a main-idea item, a definition in a use-in-context item."),
            ("The absolute", "A sentence that cannot survive one counter-example. Papers rarely set a true *always*."),
            ("The wrong register", "An option that is grammatical but too casual or too formal for the passage it belongs to."),
            ("The echo", "An option that repeats a word from the passage and adds nothing. The paper plants these on purpose."),
        ],
        cols=2,
        note="Two eliminations plus one judgement is faster and safer than four judgements. That is what buys the last seven minutes.",
    )

    table_fig(
        "ch06_review.svg",
        "The last five minutes, in order",
        ["Check", "What you are looking for", "What it costs if you skip it"],
        [
            ("Blank boxes", "Any question still unanswered", "A quarter of a mark, every time"),
            ("Negatives", "EXCEPT, NOT, LEAST, FALSE — did you answer the negative or the positive?", "The commonest self-inflicted loss on the paper"),
            ("Mis-reads", "The word “not” inside an option you chose too quickly", "One question, sometimes two"),
            ("Transfer", "Every answer registered by the CBT engine", "The whole paper"),
        ],
        weights=[1.2, 3.0, 2.3],
        note="Check in this order. A candidate who runs out of time checking grammar has checked the wrong thing.",
    )
