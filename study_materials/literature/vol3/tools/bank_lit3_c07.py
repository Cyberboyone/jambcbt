"""Drill bank — Literature in English Volume 3, chapter 7 (40 items)."""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


DRILL_7 = [
    q("The paper in this volume has",
      "40 questions in 40 minutes", "50 questions in 50 minutes", "60 questions in 60 minutes", "80 questions in 90 minutes", 2,
      "Sixty questions, sixty minutes, one mark each and no negative marking — the arithmetic is the strategy."),

    q("The number of unseen-poem questions in each paper is",
      "8", "10", "12", "15", 2,
      "Twelve unseen questions open every paper, on a poem printed with the paper."),

    q("The prescribed poems are tested in the order",
      "Vanity, Ambush, Anvil, Crossing, Proud King", "Crossing, Vanity, Ambush, Anvil, Proud King", "Proud King, Anvil, Ambush, Vanity, Crossing", "alphabetical order", 0,
      "The order is fixed, which lets a candidate plan an order of attack without hunting through the paper."),

    q("Crossing the Bar yields",
      "8 questions", "10 questions", "12 questions", "6 questions", 0,
      "Sixteen lines yield eight questions; The Proud King's eight hundred and fifty lines yield ten."),

    q("The long poem yields few questions per line because the paper examines it by",
      "rhyme", "scene", "metre", "biography", 1,
      "A scene-based paper does not need to quote every line; it names situations, characters and turning points."),

    q("The recommended first section to answer is",
      "The Proud King", "the unseen poem", "Vanity", "the glossary", 1,
      "The unseen poem is printed and can be read cold; doing it first banks the marks before recall begins."),

    q("The recommended time for reading the unseen poem twice is",
      "one minute", "two minutes", "five minutes", "twelve minutes", 1,
      "Two readings of a short lyric take about two minutes; seven minutes then remain for twelve questions."),

    q("The recommended time for the unseen section's twelve questions is about",
      "three minutes", "seven minutes", "fifteen minutes", "twenty minutes", 1,
      "One question every thirty-five seconds, moving on at forty — the section should be finished in seven to eight minutes."),

    q("The recommended review time at the end of the paper is",
      "two minutes", "five minutes", "nine to ten minutes", "twenty minutes", 2,
      "Fifty-five minutes of work and five of margin; the review is the cheapest source of marks in the paper."),

    q("The rule about blanks is",
      "leave them, guessing is penalised", "fill every blank, because nothing is deducted for a wrong answer", "fill only the ones you are sure of", "leave at most five", 1,
      "There is no negative marking; a blank is a certain zero, and every guess is a chance at a mark."),

    q("The safest way to transfer answers is",
      "in a block at the end", "on the sheet as you go", "in the margin first", "from memory after the hall", 1,
      "A block transfer is the commonest mechanical disaster in CBT; one misalignment costs ten marks."),

    q("A skipped question should be",
      "forgotten", "marked so it can be found again", "left blank permanently", "answered at random immediately", 1,
      "A skipped question is invisible on a screen; marking it is the only way to come back."),

    q("The question numbering should be checked every",
      "two questions", "five questions", "ten questions", "twenty questions", 2,
      "Ten is the length at which a slip becomes invisible."),

    q("The three stems that decide most marks are",
      "fact, date and name", "quotation, function and comparison", "rhyme, metre and stanza", "title, author and year", 1,
      "The quotation stem needs location, the function stem needs a job, and the comparison stem needs a relation."),

    q("A function stem is answered by naming",
      "what the line means", "what the line does in its stanza", "the device in the line", "the line's metre", 1,
      "The answer's verb should be a job: introduces, contrasts, delays, turns, concludes."),

    q("The commonest distractor in a function question is",
      "a false statement about the poem", "a true paraphrase of the line that names no function", "a quotation from another poem", "a misspelt name", 1,
      "Paraphrase is true and useless, which is precisely what makes it a good wrong answer."),

    q("A comparison answer must contain",
      "two paragraphs, one per poem", "a relation such as whereas, but or while", "at least three quotations", "the poets' dates", 1,
      "If the sentence could be written about one poem alone, it is not a comparison."),

    q("The best way to answer \"Both poems are protests\" is",
      "agree and prove it twice", "qualify: agree in part, then show where one poem does something else", "disagree outright", "ignore the quotation", 1,
      "A \"both\" claim is almost always partly true, and the mark is in the qualification."),

    q("When two options both seem true, choose",
      "the longer", "the one that answers the exact question asked", "the one with a technical term", "the one that names a theme", 1,
      "Distractors are often true statements that answer a different question."),

    q("The best elimination strategy is to",
      "remove the options that are obviously wrong and choose between the survivors on evidence", "guess at once", "read the poem again", "skip the question", 0,
      "Two eliminations turn a one-in-four guess into a one-in-two choice, and the evidence settles the last step."),

    q("Changing an answer in the review is justified when",
      "you feel unsure", "you can name the line that proves the first choice wrong", "the option looks shorter", "you have time left", 1,
      "A feeling is not evidence; a line is. Unjustified changes turn a 52 into a 48."),

    q("The four columns of the post-paper review are",
      "right, wrong, blank, guessed", "wrong and understood, wrong and not understood, right by luck, right and certain", "easy, medium, hard, impossible", "poem, unseen, terms, comparison", 1,
      "The columns separate the fixable from the fundamental and expose the lucky marks that will not repeat."),

    q("A score of 45 with six lucky guesses is",
      "as strong as a clean 45", "weaker than a clean 45", "stronger than a clean 45", "impossible to judge", 1,
      "Luck does not repeat; the six lucky marks are really six unfixed errors."),

    q("The score band 46–53 suggests that the next work is",
      "nothing", "drilling the function and comparison stems", "re-reading every chapter", "learning the poets' biographies", 1,
      "At that band the recall is secure and the technique is the gap, so the stems are what to practise."),

    q("The score band 36–45 suggests that the next work is",
      "the stanza tables, one poem a day", "the papers only", "the glossary only", "nothing", 0,
      "Working scores usually come from insecure position, and the stanza tables are the instrument for position."),

    q("The score band 0–25 suggests",
      "sitting all four papers at once", "Chapters 1–2 again, then Vanity and Crossing the Bar only, adding poems one at a time", "giving up poetry", "memorising the keys", 1,
      "A foundation band needs fewer poems learned securely rather than five learned loosely."),

    q("The unseen poem is read twice before the questions because",
      "the paper requires it", "reading the questions first fills the mind with four plausible options for every stem", "the poem is short", "the invigilator allows it", 1,
      "Options read before the poem turn a reader into a guesser; two readings first is the whole method."),

    q("In an unseen poem, a change of tense usually marks",
      "a printing error", "a turn, often into memory or consequence", "a new poem", "the end of the stanza", 1,
      "Tense shifts are among the most reliable structural markers, and they can be spotted in a second reading."),

    q("A question on an unseen poem that asks about tone should be settled by",
      "the title", "returning to the last two lines and the diction throughout", "the poet's nationality", "the number of stanzas", 1,
      "Tone is carried by diction, punctuation and the close; the last two lines usually tell you the poem's attitude."),

    q("The four papers in this volume are designed to be used",
      "all in one week", "one a week, timed, marked the same day", "as reading material only", "after the exam", 1,
      "A paper is a training instrument: timed, marked and reviewed, then the next one a week later."),

    q("The solutions after each paper's key exist to",
      "give the right letters", "explain why the distractors were written as they were", "replace the chapter", "fill pages", 1,
      "The explanation of the wrong options is the part that transfers to the next paper."),

    q("A candidate should attempt the section they know best first because",
      "the paper requires it", "early marks settle the nerves and bank time for the harder sections", "the sections are marked differently", "the invigilator prefers it", 1,
      "Order is a default, not a rule; what is not optional is filling every blank in the review."),

    q("Reading all sixty stems before answering is a poor strategy because",
      "it is forbidden", "it wastes time and loads the mind with unresolved choices", "the stems are not numbered", "it spoils the poem", 1,
      "Sixty unresolved stems is a queue of open decisions; the paper is answered one question at a time."),

    q("The paper's marks are weighted toward",
      "the unseen poem", "the prescribed poems", "the glossary", "the poets' lives", 1,
      "Forty-eight of the sixty questions are on the five prescribed poems, which is where preparation pays."),

    q("The best use of the glossary in Appendix E during revision is",
      "memorising every term", "checking the terms the paper actually uses in its stems and options", "reading it once", "ignoring it", 1,
      "A glossary is a reference, not a list; the terms the paper uses are the ones worth securing."),

    q("The stanza table is the best revision instrument for the paper because",
      "it is short", "it records position and function for every stanza, which is what most stems test", "it is easy to copy", "the paper asks for it", 1,
      "Position plus function is the pair the paper examines, and the table holds both in four columns."),

    q("A candidate who knows the themes of all five poems but no lines will struggle with",
      "theme questions", "questions that quote a phrase and ask where it comes from or what it does", "questions about the poets", "questions about the titles", 1,
      "Position and function questions need the text; a study guide cannot supply a stanza number."),

    q("The last five minutes of a paper are best spent",
      "rereading the unseen poem", "checking the sheet for blanks and numbering", "changing doubtful answers", "resting", 1,
      "Blanks and misnumbering are certain losses; a doubtful answer may be right already."),

    q("The single best predictor of a strong score is",
      "speed", "secure knowledge of the five poems plus every blank filled", "a good pen", "reading the questions first", 1,
      "Knowledge supplies the answers and the no-blank rule supplies the marks that knowledge misses; together they are the whole method."),

    q("The purpose of the four papers in a study plan is to",
      "replace revision", "convert knowledge into timed performance and expose the technique gap", "provide extra notes", "predict the exact questions", 1,
      "Papers do not replace the poems; they train the timing, the elimination and the review that turn knowledge into a score."),
]
