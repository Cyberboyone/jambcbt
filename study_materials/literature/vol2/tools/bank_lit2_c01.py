"""Drill bank — Literature in English Volume 2, chapter 1 (40 items).

Items are (stem, [A, B, C, D], zero-based index of the correct option, solution).
Solutions refer to the options by their content, never by letter, because the
renderer shuffles the options and a letter would go stale.
"""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


DRILL_1 = [
    q("The first of the six moves is to ask",
      "which character is speaking", "which text, genre and writer the stem belongs to",
      "which theme the passage illustrates", "which option is longest", 1,
      "Place comes first because an option that belongs to another text can be eliminated before any interpretation begins."),

    q("A set-text question almost always contains",
      "a quotation and a definition", "a location and a judgment",
      "two quotations and a name", "a date and a summary", 1,
      "The location is the scene; the judgment is what the scene does. Distractors usually get one right and the other wrong."),

    q("Which move eliminates an option that describes the right event at the wrong point in the text?",
      "Place", "Locate", "Effect", "Check", 1,
      "Locate fixes the act, scene, book or chapter, so a true statement about the wrong moment is removed."),

    q("The sixth move, check, exists to catch",
      "a misspelt character name", "a true statement that answers a different question",
      "an option longer than the others", "a quotation from another text", 1,
      "A true sentence is not automatically an answer; the last move re-reads the stem rather than the option."),

    q("Set-text distractors are dangerous because they are",
      "obviously false", "built from real features of the text",
      "always about minor characters", "usually longer than the key", 1,
      "Because the wrong options are made of real material, recognition feels like knowledge."),

    q("A fact question about a set text should cost roughly",
      "ten seconds", "forty seconds", "two minutes", "five minutes", 0,
      "Fact questions are the cheapest marks on the paper and are won by secure names and settings."),

    q("A scene question asks you to supply",
      "the theme of the whole text", "the position of the line and who is present",
      "the writer's biography", "the date of publication", 1,
      "Scene questions are the majority of set-text questions, and the plot table is the instrument that answers them."),

    q("A question on technique asks for the device and",
      "its Latin name", "what it does in the plot or for the audience",
      "the number of times it appears", "the writer's other works", 1,
      "Naming a device earns nothing on its own; the mark is for its work in the text."),

    q("An option that offers only an adjective, such as she is kind, is usually wrong because",
      "adjectives are never used in the paper", "it gives a judgment without the scene that proves it",
      "it is too short to be an answer", "it describes the writer rather than the character", 1,
      "Character and theme questions want a scene and its evidence, not a label."),

    q("When a who-says-this stem could fit two characters, the stem will contain",
      "a quotation from the title", "a detail that only one of them could know",
      "a reference to the writer", "the name of the act", 1,
      "The discriminating detail is the whole design of the question; find it before you choose."),

    q("A biography option is a distractor unless the stem",
      "quotes a line", "names the writer",
      "asks about a character", "uses the word theme", 1,
      "The paper tests the text. The writer's life enters only when the stem asks for it by name."),

    q("The three lines of a scene card are who wanted what, what it cost, and",
      "who else was present", "the line you would quote",
      "the chapter number", "the theme it proves", 1,
      "A quotation of six to ten words, exact, plus the reason you chose it, turns reading into recall."),

    q("A play can be reduced to about twenty-five scene cards and a novel to about",
      "ten", "thirty", "sixty", "a hundred", 1,
      "Thirty cards for a novel gives a revision pack of roughly ninety lines that holds plot, character and quotation at once."),

    q("Copying another candidate's scene cards is useless because",
      "their handwriting is different", "writing the card is itself the revision",
      "the cards are always wrong", "the paper does not test quotations", 1,
      "The instrument works through the act of compression, not through the finished card."),

    q("In an answer, a quotation should function as",
      "decoration", "evidence",
      "a substitute for the scene", "a way of lengthening the option", 1,
      "A quotation is used because it proves the point, and the best options name what the words do."),

    q("When a stem quotes half a line, the first task is to",
      "identify the play", "complete the context",
      "count the feet", "name the device", 1,
      "The half-line is a location prompt: the question is testing whether you know what surrounds it."),

    q("The commonest order of failure in the exam hall is",
      "reading the options before locating the scene", "reading the stem twice",
      "checking the clock", "skipping a hard question", 0,
      "Once the options are read, the plausible ones colonise the memory; locate first, then read."),

    q("Answering from a film adaptation is unsafe because adaptations change",
      "the writer's name", "scene order and who is present",
      "the number of acts only", "the price of the book", 1,
      "Set-text questions are built on the words and the arrangement of the printed text."),

    q("Of the five prescribed texts in this volume, the two that are drama are",
      "Othello and Faceless", "Harvest of Corruption and Othello",
      "Lonely Days and Native Son", "Faceless and Lonely Days", 1,
      "Ogbeche's play and Shakespeare's tragedy are the drama; the other three are novels."),

    q("The three prose texts in this volume are",
      "Faceless, Lonely Days and Native Son", "Harvest of Corruption, Faceless and Othello",
      "Othello, Lonely Days and Native Son", "Faceless, Othello and Harvest of Corruption", 0,
      "Three novels: Darko's, Adebowale's and Wright's."),

    q("Harvest of Corruption was written by",
      "Amma Darko", "Bayo Adebowale", "Richard Wright", "Uche Ogbeche", 3,
      "Ogbeche's play is the Nigerian drama on the list."),

    q("Faceless is set in",
      "Lagos", "Accra", "Kufi", "Chicago", 1,
      "Darko's novel is set in Accra, in the market and the slum around it."),

    q("Lonely Days is set in",
      "a Yoruba village in the south-west of Nigeria", "a Ghanaian fishing town",
      "the capital city of Jacassa", "Venice and Cyprus", 0,
      "Kufi is the village, and its smallness carries the novel's social argument."),

    q("Native Son is set in",
      "New York", "Chicago", "Detroit", "Accra", 1,
      "The South Side of Chicago in the late 1930s, with the Dalton mansion a bus ride away."),

    q("Harvest of Corruption is set in",
      "Kufi", "Jacassa", "Cyprus", "Accra", 1,
      "Jacassa is the country and Jabu its capital, where the ministries are."),

    q("Othello moves between",
      "Venice and Cyprus", "Venice and Rome", "Cyprus and Athens", "Verona and Milan", 0,
      "The first act is Venice; the rest of the play is Cyprus."),

    q("The writer of Native Son is",
      "Richard Wright", "Amma Darko", "Bayo Adebowale", "Uche Ogbeche", 0,
      "Wright's novel of 1940 is the American text on the list."),

    q("The writer of Lonely Days is",
      "Amma Darko", "Bayo Adebowale", "Uche Ogbeche", "William Shakespeare", 1,
      "Adebowale's novel is the Yoruba novel on the list."),

    q("Which question shape is answered by naming a setting or a relationship?",
      "Fact", "Scene", "Character", "Theme", 0,
      "Fact questions are pure recall: setting, marriage, occupation, order of events."),

    q("Which question shape is answered by a scene rather than by an adjective?",
      "Fact", "Character", "Setting", "Publication", 1,
      "Character stems ask about attitude, and an attitude has to be shown happening."),

    q("The plot table exists so that a quotation can be located in",
      "five seconds", "five minutes", "one act", "the index", 0,
      "Location before interpretation is the whole skill of a set-text paper."),

    q("Choosing the thematic option when the stem asked for the scene is a failure of",
      "place", "check", "locate", "name", 1,
      "The statement may be true and still answer a different question, which is what check is for."),

    q("The paper allows forty seconds per set-text question because",
      "the questions are short", "location is the skill, and it is fast once the text is known",
      "there are only twelve questions", "the answers are all one word", 1,
      "Knowledge of position is what buys speed; the reading is done in advance."),

    q("Which of these stems is a scene question?",
      "The play is set in Jacassa.", "What has just happened when the handkerchief is called a handkerchief?",
      "Othello was written by Shakespeare.", "The novel has three books.", 1,
      "It asks for the position of a moment, which is what a scene question always does."),

    q("Two options that seem to mean the same thing are usually separated by",
      "length", "the presence of scene-level detail",
      "the letter they start with", "the writer named in each", 1,
      "The key names the specific moment; the near-miss states the general truth."),

    q("The correct order of the first three moves is",
      "locate, place, name", "place, locate, name",
      "name, place, locate", "effect, place, locate", 1,
      "Text first, then moment, then the person or term the stem means."),

    q("If a fact question is genuinely unknown, the best fallback is",
      "leaving it blank", "eliminating by text and genre, then answering",
      "choosing the longest option", "choosing the thematic option", 1,
      "There is no negative marking, so a reasoned elimination is always worth a mark."),

    q("A quotation bank is most useful when it is organised by",
      "alphabetical order of first words", "text, then scene or chapter, then speaker and function",
      "the length of the quotation", "the number of times it is repeated", 1,
      "Quotations are retrieved by location, so they have to be filed by location."),

    q("The central habit this chapter asks you to break is",
      "reading the whole text", "answering from a summary rather than the text",
      "writing scene cards", "timing yourself", 1,
      "Summaries flatten scenes, and scene questions are where the marks are."),
    q("In the UTME, the Literature paper is",
      "entirely essay", "entirely objective",
      "part essay and part practical", "an oral examination", 1,
      "Forty questions, four options, forty minutes, and no negative marking for a wrong answer."),
]
