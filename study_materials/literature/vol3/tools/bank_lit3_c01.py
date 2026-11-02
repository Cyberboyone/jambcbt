"""Drill bank — Literature in English Volume 3, chapter 1 (40 items).

Items are (stem, [A, B, C, D], zero-based index of the correct option, solution).
Solutions refer to the options by their content, never by letter, because the
renderer shuffles the options and a letter would go stale.
"""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


DRILL_1 = [
    q("The first pass over an unseen poem is to",
      "read it aloud slowly", "read the questions first", "count the stanzas", "look up the poet", 0,
      "Hearing the poem is the only way to catch the pauses, the stresses and the places where the voice has to stop — and those are where the turn usually is."),

    q("The \"turn\" of a poem is",
      "its final rhyme", "the point at which it changes direction", "its title", "the longest line", 1,
      "A turn is a change of direction — of argument, tense, addressee or mood — and it is the most examinable structural feature of a short lyric."),

    q("Which of these is NOT one of the five passes?",
      "Hear", "Turn", "Memorise the poet's dates", "Argue", 2,
      "The five passes are hear, turn, voice, image and argue. Biography belongs to the notes, not to the reading of the poem."),

    q("The \"voice\" pass asks",
      "who speaks, to whom, and in what tone", "how many lines the poem has", "what the rhyme scheme is", "when the poet was born", 0,
      "Voice is a question about the speaker and the addressee; it is what stops a candidate attributing a dramatic speaker's view to the poet."),

    q("The \"image\" pass is looking for",
      "every metaphor in the poem, listed", "the two or three images that carry the argument", "the poem's setting", "the poet's other poems", 1,
      "A poem rarely argues in abstractions; it argues through a small number of recurring images, and those are the ones worth naming."),

    q("The \"argue\" pass ends with",
      "a summary of the plot", "one sentence stating the claim the whole poem makes", "a list of devices", "a paraphrase of every line", 1,
      "The argument is the poem's claim, in one sentence, and it is what theme questions are really asking for."),

    q("The four question shapes are fact, function, voice and tone, and",
      "form and theme", "rhyme and rhythm", "biography and history", "title and date", 0,
      "Form and theme questions ask about the poem's shape and its argument; the other three shapes cover content, purpose and attitude."),

    q("The commonest shape of question on a prescribed poem is",
      "fact", "function", "form", "biographical", 1,
      "Most stems ask what a line or stanza is doing, which is why the stanza table — which records function stanza by stanza — is the most useful revision instrument."),

    q("A function question is answered by naming",
      "what the line means", "what the line does in its stanza", "which device the line uses", "how many syllables the line has", 1,
      "The verb in the answer should be a job: introduces, contrasts, delays, intensifies, turns, concludes. Paraphrase is a distractor, not an answer."),

    q("The stanza table has four columns: stanza, what happens, what it does, and",
      "the rhyme scheme", "a line you can quote", "the number of feet", "the poet's sources", 1,
      "The quotable line is the evidence column. A function answer without a word from the poem is a guess with a justification attached."),

    q("A stanza table for a long narrative poem should have one row per",
      "line", "scene or episode", "rhyme", "character", 1,
      "A narrative moves in episodes, not stanzas; The Proud King is examined by scene, so its table is a scene table with twelve or fifteen rows."),

    q("The speaker of a poem is",
      "always the poet", "a voice constructed by the poet", "always the reader", "always a named character", 1,
      "The persona is a construction. \"The poet says\" is a marker's warning sign, because the speaker may be ironic, mistaken or dying."),

    q("The tenor of a metaphor is",
      "the image used to describe something", "the thing being described", "the rhythm of the line", "the poem's theme", 1,
      "Tenor is what is described, vehicle is what describes it. Ambush's vehicle is a whale; its tenor is the state that takes everything."),

    q("The vehicle of a metaphor is",
      "the thing being described", "the image used to describe it", "the tone of voice", "the stanza form", 1,
      "Keeping tenor and vehicle apart is what stops an answer saying that Ambush is a poem about animals."),

    q("When a stem quotes half a line, the first move is to",
      "read the four options", "locate the stanza the line comes from", "decide the theme", "count the syllables", 1,
      "Location before interpretation: once the stanza is fixed, the line's function in that stanza is usually obvious, and two options fall away."),

    q("The best order for answering an unseen poem in the hall is",
      "questions first, then poem", "poem twice, then questions", "poem once, then questions, then poem again", "options first, then poem", 1,
      "Reading the questions first fills the mind with four plausible options for every stem, which is exactly the condition in which a reader stops reading and starts guessing."),

    q("The last two lines of a lyric usually",
      "introduce a new character", "state or refuse the poem's conclusion", "repeat the title", "abandon the metre", 1,
      "A short lyric normally tells you its own argument at the end, which is why tone and theme questions should be settled by returning to the close."),

    q("A comparison stem is answered by",
      "describing both poems in turn", "stating a relation and supporting it from both poems", "choosing the better poem", "quoting both titles", 1,
      "The relation is the mark: whereas, but, while. A sentence that could be written about one poem alone is not a comparison."),

    q("The word that should appear in every comparison answer is",
      "therefore", "whereas", "however", "finally", 1,
      "Whereas (or but, or while) forces the sentence to hold two poems in one relation instead of two descriptions side by side."),

    q("\"Both poems are protests\" is best answered by",
      "agreeing and proving it twice", "agreeing in part and showing where one poem does something else", "disagreeing outright", "ignoring the quotation", 1,
      "A \"both\" claim is almost always partly true; the mark is in the qualification, supported from the poem that does not quite fit."),

    q("An unseen poem of twelve lines can be read twice in",
      "thirty seconds", "about two minutes", "ten minutes", "five seconds", 1,
      "Two readings of a short lyric take about two minutes; the budget in the hall is two minutes for reading and seven for the questions."),

    q("The main danger of annotating on the first reading is",
      "running out of ink", "missing the poem's movement while hunting details", "spoiling the book", "reading too slowly", 1,
      "The first reading is for movement; annotation on the first pass turns a reader into a collector of details and the turn is missed."),

    q("Rhyme royal is",
      "seven lines rhymed ababbcc", "four lines rhymed abab", "five lines rhymed aabba", "unrhymed iambic pentameter", 0,
      "Rhyme royal is the seven-line ababbcc stanza Chaucer used; it is the form of The Proud King and it is examined as a fact about the poem."),

    q("Free verse is best defined as",
      "poetry without meaning", "poetry without a fixed metre or rhyme scheme", "poetry without stanzas", "poetry without images", 1,
      "Free verse organises itself by repetition, syntax, line breaks and stanza shape; Vanity and Ambush are both free verse and both highly patterned."),

    q("The tone of a poem is",
      "its subject", "the speaker's attitude as conveyed by the writing", "its rhyme scheme", "the poet's biography", 1,
      "Tone is attitude; it is inferred from diction, punctuation, rhythm and the images chosen, not from the subject alone."),

    q("A rhetorical question in a poem usually",
      "expects an answer from the reader", "makes a point by not expecting an answer", "marks a change of metre", "introduces a character", 1,
      "Its force is in the silence after it; Vanity ends on one, which is how the poem makes the absence of an answer the point."),

    q("Anaphora is",
      "the repetition of a word or phrase at the start of successive lines", "the repetition of a sound at the end of lines", "a deliberate exaggeration", "a comparison using like or as", 0,
      "Anaphora builds the incantatory rhythm of a lament; \"If we …\", \"What …\" in Vanity are anaphora."),

    q("Enjambment is",
      "a line that ends with a full stop", "a sentence running past the end of a line", "a repeated refrain", "a stanza of four lines", 1,
      "The run-on is a structural device: it drives the reader forward without a pause, as Ambush drives its people forward into the trap."),

    q("A symbol differs from a metaphor in that a symbol",
      "stands for something beyond itself and recurs", "is always a person", "must rhyme", "is explained in the poem", 0,
      "The bar in Crossing the Bar is a real sandbank and a threshold of death, and it recurs; that double life is what makes it symbolic."),

    q("The most economical way to revise five poems in the last week is",
      "re-read all five in full every day", "the stanza tables plus the quotation bank plus the traps", "learn the poets' biographies", "learn the dates of publication", 1,
      "The tables give position, the quotations give evidence and the traps give the paper's own wording — the three things a question needs."),

    q("A poem's title is best used in an answer as",
      "decoration", "a claim about the poem's subject that the poem then complicates", "a date", "a substitute for the first line", 1,
      "Vanity promises emptiness; Crossing the Bar names a crossing without naming death. The gap between title and poem is often the question."),

    q("Reading a prescribed poem from a summary instead of the text usually fails because",
      "summaries are too short", "the paper asks about wording and position, which summaries lose", "summaries are always wrong", "the text is not examinable", 1,
      "A summary can tell you what happens; it cannot tell you which stanza a phrase comes from, and that is what the stems test."),

    q("In an unseen poem, a change of tense usually signals",
      "a printing error", "a turn, often into memory or consequence", "a new speaker", "the end of the poem", 1,
      "Tense shifts are one of the commonest structural markers, and they can be spotted in a second reading without any notes."),

    q("The phrase \"the poem's persona\" refers to",
      "the poet's mask or speaking voice", "a character in a narrative poem only", "the rhyme scheme", "the poem's setting", 0,
      "The persona may be close to the poet or far from him; the term exists so that the two can be kept apart."),

    q("A question that asks \"the repetition of 'gently' suggests\" is testing",
      "fact", "the effect of a pattern", "the poet's dates", "scansion", 1,
      "Repetition questions ask what the pattern does — here, marking the passage of time and the failure to change — not merely that repetition occurs."),

    q("In a narrative poem, the paper's questions attach mainly to",
      "individual feet", "scenes and speeches", "the rhyme scheme", "the poet's other work", 1,
      "Eight hundred and fifty lines cannot be examined line by line, so the questions name scenes, characters and turning points."),

    q("A poem's \"situation\" means",
      "where and when it was published", "who speaks, where, and to whom", "its rhyme scheme", "its theme", 1,
      "Situation is the dramatic set-up of the lyric: the speaker, the occasion and the audience — the first thing to establish in any answer."),

    q("\"Locate before you interpret\" means",
      "find the stanza, then explain the line", "find the poet's birthplace", "find the rhyme", "find the theme first", 0,
      "Interpretation without location is how a true statement about the wrong stanza gets chosen; location is the cheap first move."),

    q("The chief use of the answer key in this book is to",
      "give the right letters", "explain why the distractors were written as they were", "save the reader work", "replace the chapter", 1,
      "The solution explains the wrong options as well as the right one, which is how a candidate learns to recognise a trap next time."),

    q("The best way to use the four papers in this volume is",
      "all four in one sitting", "one a week, timed, marked the same day", "read the questions only", "memorise the answers", 1,
      "A paper is a training instrument: timed, then marked, then reviewed in four columns — wrong and understood, wrong and not, right by luck, right and certain."),
]
