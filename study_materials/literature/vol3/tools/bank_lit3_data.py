"""The 120-question master bank — twenty questions on each of six blocks.

Blocks: method and unseen poetry; Vanity; Ambush; The Anvil and the Hammer;
Crossing the Bar; The Proud King.
"""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


BANK = [
    # --- Block 1: method and unseen poetry -----------------------------------
    q("The first thing to establish about an unseen poem is",
      "its rhyme scheme", "who speaks, where, and to whom", "the poet's dates", "the number of images", 1,
      "Situation comes first; every later judgment about tone or theme depends on knowing who is speaking and in what circumstances."),

    q("The most reliable marker of a poem's turn is",
      "a change of rhyme", "a change of direction marked by a conjunction, a new stanza or a change of tense", "the longest line", "the title", 1,
      "Turns are structural, and they are usually signalled by grammar rather than by layout."),

    q("A function question asks",
      "what a line means", "what a line does in its place", "who wrote the line", "how many stresses it has", 1,
      "The answer should name a job: introduces, contrasts, delays, turns, concludes."),

    q("The tenor of an image is",
      "the picture used", "the thing the picture describes", "the tone of the poem", "the stanza form", 1,
      "Tenor is the subject, vehicle is the picture; keeping them apart is the basic discipline of reading metaphor."),

    q("The speaker of a lyric is",
      "the poet", "a constructed voice", "the reader", "always a named character", 1,
      "The persona may share the poet's views, but the poem's argument belongs to the voice, not to the biography."),

    q("A rhetorical question is used in poetry to",
      "invite an answer", "make a point by leaving the answer unspoken", "mark a rhyme", "introduce a character", 1,
      "Its force is in the silence after it, which is why a poem can end on one and still be complete."),

    q("Enjambment is",
      "a line ending in a full stop", "a sentence running past the line end", "a repeated phrase", "a four-line stanza", 1,
      "The run-on controls pace and emphasis, and in Ambush it drives the reader forward into the trap."),

    q("Anaphora is the repetition of",
      "a final sound", "a word or phrase at the beginning of successive lines", "a whole stanza", "an image", 1,
      "Anaphora is a structuring device; it turns a list into an incantation."),

    q("A symbol is an image that",
      "is explained by the poet", "stands for something beyond itself and recurs", "appears once", "is always natural", 1,
      "The bar in Crossing the Bar is a real sandbank and a threshold of death, and it recurs — that double life is what makes it a symbol."),

    q("Free verse is organised by",
      "rhyme and metre", "line breaks, repetition, syntax and stanza shape", "the poet's biography", "the title", 1,
      "Free verse has form; it simply does not have a fixed metre or rhyme scheme."),

    q("Rhyme royal is",
      "four lines rhymed ABAB", "seven lines rhymed ababbcc", "five lines rhymed aabba", "unrhymed pentameter", 1,
      "Chaucer's stanza, used by Morris for The Proud King and examinable as a fact."),

    q("Blank verse is",
      "unrhymed iambic pentameter", "rhymed couplets", "free verse", "a seven-line stanza", 0,
      "Blank verse keeps the metre and drops the rhyme; it is the form of Shakespeare's plays, not of these five poems."),

    q("The tone of a poem is",
      "its subject", "the speaker's attitude as carried by the writing", "its length", "its date", 1,
      "Tone is inferred from diction, punctuation, rhythm and the images chosen."),

    q("The best order for answering an unseen poem is",
      "questions, then poem", "poem twice, then questions", "poem once, then questions", "options only", 1,
      "Reading the options first turns a reader into a guesser; two readings of the poem come first."),

    q("The last two lines of a lyric usually",
      "introduce a new topic", "state or refuse the poem's conclusion", "repeat the title", "change the metre", 1,
      "The close is where tone and theme questions are settled, which is why it is worth returning to."),

    q("A comparison answer must contain",
      "two descriptions", "a relation such as whereas or while", "three quotations", "the poets' dates", 1,
      "The relation is the mark; without it the answer is two descriptions standing side by side."),

    q("When two options both appear true, choose",
      "the longer", "the one that answers the exact question", "the one with a technical term", "the one that names a theme", 1,
      "Distractors are often true statements about the poem that answer a different question."),

    q("In a sixty-question paper with no negative marking, a blank is",
      "a safe choice", "a certain zero", "a half mark", "a penalty", 1,
      "Every blank costs a certain mark; a guess is a chance at one."),

    q("The stanza table's fourth column holds",
      "the rhyme", "a short quotation", "the poet's dates", "the metre", 1,
      "Evidence is what turns a function answer from a guess into an argument."),

    q("The four-column review after a paper separates",
      "easy and hard questions", "wrong-and-understood, wrong-and-not, right-by-luck, right-and-certain", "poems and terms", "long and short questions", 1,
      "The columns expose the fixable errors and the lucky marks that will not repeat."),

    # --- Block 2: Vanity ------------------------------------------------------
    q("Vanity is by",
      "Birago Diop", "Gbemisola Adeoti", "Kofi Awoonor", "William Morris", 0,
      "Diop was Senegalese, of the Négritude generation, and the poem is one of his best-known lyrics."),

    q("Vanity has",
      "four stanzas", "six stanzas", "two stanzas", "seven stanzas", 1,
      "Six uneven stanzas, in free verse, held together by repetition and question."),

    q("The poem's voice is",
      "first person singular", "collective, using we and our", "third person", "a dialogue", 1,
      "The collective voice lets the poem accuse and mourn in the same breath."),

    q("The people expect their voices to be met with",
      "silence", "laughter", "applause", "anger", 1,
      "\"Who then will hear our voices without laughter\" — the mockery is assumed before it happens."),

    q("The people's mouths are shaped by",
      "hunger", "the laughter of big children", "song", "prayer", 1,
      "The image makes the powerful childish and the people ridiculous in one stroke."),

    q("The anger of the people is compared to",
      "a river", "a tumour in the throat", "a fire", "a bird", 1,
      "It grows inside them, in the organ of speech, so the illness is both emotional and vocal."),

    q("In stanza four the dead come",
      "alone", "with their own dead", "with the gods", "with the living", 1,
      "The ancestral world is a community extending backwards, not a collection of ghosts."),

    q("The dead speak with",
      "clumsy voices", "clear trumpets", "songs of triumph", "silence", 0,
      "Their awkwardness removes the living's excuse: the dead did speak, and were ignored."),

    q("The dead have left their cries",
      "in books", "in the air, on the water and on the earth", "in the temple", "in the poem", 1,
      "The elements are the archive, and the living are blind and deaf in front of it."),

    q("\"blind deaf and unworthy Sons\" names",
      "three failures", "three generations", "three gods", "three punishments", 0,
      "Sight, hearing and worth are the three things lost, and Sons makes the failure filial."),

    q("The last stanza turns on",
      "\"gently\"", "\"since\"", "\"tumour\"", "\"sobbing\"", 1,
      "The conjunction treats the failure as settled, which is why the grief that follows cannot undo it."),

    q("The poem ends with",
      "a prayer", "an unanswered question", "a promise", "a song", 1,
      "\"What ear to our sobbing hearts?\" — the missing answer is the poem's point."),

    q("The title Vanity means",
      "conceit about appearance", "futility", "the poet's pride", "the dead's arrogance", 1,
      "The older sense of emptiness or futility is the one the last stanza supplies."),

    q("The poem is written in",
      "free verse", "rhyme royal", "blank verse", "quatrains", 0,
      "No metre and no rhyme, but a highly patterned use of repetition."),

    q("The chief structural device of Vanity is",
      "the refrain of rhetorical questions", "strict rhyme", "dialogue", "a sonnet sequence", 0,
      "Nine questions and no answers: the form enacts the failure it describes."),

    q("Diop's poem is central to the Négritude argument because it",
      "attacks Europe directly", "treats the neglect of ancestral memory as a cultural wound", "celebrates the city", "is written in French", 1,
      "Négritude sought to revalue the African past; the poem shows what is lost when that past is not heard."),

    q("A question on the tumour image is best answered by saying that it",
      "turns the anger inward", "turns the anger outward", "cures the people", "belongs to the dead", 0,
      "The growth is inside them, so the anger consumes the people who hold it."),

    q("A comparison of Vanity with Ambush finds that both poems",
      "use quatrains", "present blocked or unheard speech as the people's condition", "end with the sea", "are set in Ghana", 1,
      "In one the people cannot be heard; in the other they are hemmed in. Both make speech and its failure the subject."),

    q("The safest evidence to quote for the poem's turn is",
      "\"gently, gently\"", "\"And since we did not understand our dead\"", "\"large mouths\"", "\"plaintive throats\"", 1,
      "The line contains the grammatical shift from possibility to verdict, which is the turn itself."),

    q("The poem's treatment of landscape suggests that",
      "nature is indifferent", "the world records what the people forget", "the land belongs to the dead", "the sea is hostile", 1,
      "The cries are in the air, on the water and on the earth: the landscape is a witness."),

    # --- Block 3: Ambush ------------------------------------------------------
    q("Ambush is by",
      "Gbemisola Adeoti", "Birago Diop", "Kofi Awoonor", "Alfred, Lord Tennyson", 0,
      "Adeoti is a Nigerian poet and critic; the poem appears in Naked Soles."),

    q("Ambush has",
      "four stanzas", "six stanzas", "two stanzas", "five stanzas", 0,
      "Stanzas of eight, six, three and four lines: the poem shrinks as the trap closes."),

    q("The three predators are",
      "whale, tiger, hawk", "hawk, whale, tiger", "tiger, hawk, whale", "whale, hawk, tiger", 0,
      "Water, land and air, in that order, so that no route of escape remains."),

    q("The whale swallows",
      "the sinker, with hook, line and bait", "the boat", "the fisherman", "the net", 0,
      "The whole apparatus is taken, so the loss is of the attempt as well as the catch."),

    q("\"aborting dreams\" is a phrase borrowed from",
      "birth", "war", "fishing", "trade", 0,
      "The birth metaphor makes the destroyed hope an arrival that never happened."),

    q("The blue Peter is",
      "a flag signalling departure", "a storm warning", "a fisherman", "a boat", 0,
      "Flown over empty ships, the signal becomes an irony: the departure will not happen."),

    q("\"all Peters with petered out desires\" works by",
      "pun", "rhyme", "simile", "hyperbole", 0,
      "The disciple's name and the verb to peter out collapse into one sound."),

    q("The sabre-toothed tiger is",
      "an archaic predator, which makes the violence feel ancient", "a zoo animal", "a protector", "a comic figure", 0,
      "The prehistoric image gives the state's violence an age and a naturalness that make it harder to resist."),

    q("In stanza two the infants",
      "shudder home", "play in the glade", "sleep", "chase the tiger", 0,
      "Fear reaches the youngest, and the next line reaches the oldest, so no age is exempt."),

    q("\"the grizzled ones snatch their gut\" means the old men",
      "lose their courage", "recover their courage", "share food", "run", 0,
      "The gesture is a panicked retrieval of something already lost."),

    q("\"bayonets of tribulation\" makes suffering",
      "an armed force", "a religious rite", "a fishing method", "a distant event", 0,
      "The metaphor arms the suffering, which is how the stanza makes it an enemy."),

    q("The hawk is said to",
      "court unceasing disaster", "avoid disaster", "sleep in the sky", "protect the people", 0,
      "Courtship implies pursuit, so the predator seeks the harm it causes."),

    q("The three predators together",
      "close every element", "leave the air free", "leave the sea free", "protect the land", 0,
      "The sequence is a siege, and that is what makes stanza four's trap total."),

    q("\"The land lies patiently ahead\" makes the land",
      "an agent that can afford to wait", "a victim", "a garden", "a dream", 0,
      "The adverb turns the setting into the ambusher."),

    q("The land waits for",
      "those who turn towards the shore of possibilities", "the predators", "the dead", "the government", 0,
      "The ambush is sprung on hope itself, which is why the ending is a warning rather than a consolation."),

    q("\"a direction where nothing happens\" is",
      "the condition the people are leaving", "the sea", "the grave", "the city", 0,
      "The direction of nothing is the life the poem has described; the people point away from it."),

    q("\"the shore of possibilities\" is",
      "a direction without a promise", "a guaranteed arrival", "the grave", "a holiday resort", 0,
      "The shore lies across the whale's water, so the poem names it without promising it."),

    q("The dominant tense of the poem is",
      "present", "past", "future", "conditional", 0,
      "Present-tense verbs make the poem a report on a condition that is happening now."),

    q("A comparison of Ambush with The Proud King finds that both",
      "use rhyme royal", "strip a figure of what seemed secure", "are set at sea", "end with a question", 1,
      "One strips a people of their hopes, the other a king of his identity; both are poems of dispossession."),

    q("The poem's title is a warning that the danger",
      "is hidden and waiting", "has passed", "is imaginary", "is small", 0,
      "An ambush is by definition concealed, which is why the poem's predators are heard before they are seen."),

    # --- Block 4: The Anvil and the Hammer ------------------------------------
    q("The Anvil and the Hammer is by",
      "Kofi Awoonor", "Gbemisola Adeoti", "Birago Diop", "William Morris", 0,
      "Awoonor was Ghanaian, born in the Volta Region, and his poetry draws on Ewe dirge."),

    q("The poem was published in",
      "Rediscovery and Other Poems", "Naked Soles", "The Earthly Paradise", "Leurres et Lueurs", 0,
      "The collection appeared in 1964, in the first years of Ghanaian independence."),

    q("The poem has",
      "two stanzas", "four stanzas", "six stanzas", "three stanzas", 0,
      "Ten lines and twelve lines, in free verse."),

    q("The persona is",
      "the metal being forged", "the smith", "the hammer", "a bystander", 0,
      "\"Caught between the anvil and the hammer\" places him where the metal is shaped."),

    q("The forge is an image of",
      "cultural change as manufacture", "war", "trade", "farming", 0,
      "A forge makes something; the poem asks what is being made and at what cost."),

    q("\"the pangs that delivered me\" links the pain to",
      "birth", "war", "hunger", "travel", 0,
      "\"Delivered\" is a birth word, and the next line turns the pain into songs."),

    q("\"fibre of sisal\" belongs to",
      "the old culture", "the new culture", "the colonial state", "the sea", 0,
      "Sisal is a rough plant fibre, and it gives tradition a texture of strength and handwork."),

    q("The goat's blood in the fetish hut is named",
      "precisely and without apology", "apologetically", "mockingly", "in a footnote", 0,
      "The naming is itself a cultural claim, and the poem refuses to soften it."),

    q("\"flimsy glories\" is a judgment that",
      "praises and qualifies at once", "rejects entirely", "praises only", "describes the old culture", 0,
      "The noun praises and the adjective judges, which is why the phrase is so examinable."),

    q("\"jargon\" is the poem's word for",
      "the new elite's speech", "the ancestors' language", "the sea's sound", "the smith's trade", 0,
      "The word is dismissive: the new speech sounds sophisticated and says little."),

    q("The second stanza begins with",
      "an imperative prayer", "a question", "a simile", "a song", 0,
      "\"Sew the old days for us, our fathers\" turns description into request."),

    q("The old days are to be worn",
      "under the new garment", "instead of it", "on the head", "in the hand", 0,
      "The preposition carries the poem's politics of retention."),

    q("The garment image belongs to",
      "sewing, the second extended metaphor", "forging", "fishing", "farming", 0,
      "The two systems are joined by the idea of transformation: metal is shaped, cloth is sewn."),

    q("\"the whirlpool of the many rivers' estuary\" suggests",
      "cleansing through mixture", "drowning", "a single pure source", "a colonial baptism", 0,
      "Many rivers meet in one estuary, and the image prepares for the sea."),

    q("The people take \"snatches / From their tunes\", which means",
      "the old survives in fragments inside the new", "the old is lost entirely", "the old is forbidden", "the old is foreign", 0,
      "The stanza is honest about neglect and about survival at once."),

    q("The final image is",
      "the sea", "the forge", "the market", "the river", 0,
      "The sea holds the reverberation of the songs, so the mixture is not a loss."),

    q("The poem's cultural position is",
      "syncretism", "purism", "isolation", "colonialism", 0,
      "Two traditions fused in one living culture: the two-layer garment is its model."),

    q("The prayer is addressed to",
      "the fathers", "God", "the queen", "the sea", 0,
      "The ancestors hold continuity in the tradition the poem draws on."),

    q("A comparison of The Anvil and the Hammer with Vanity finds that both",
      "trust the ancestors as a source of value", "reject tradition", "use rhyme", "are set in Senegal", 0,
      "Both poems make the ancestral world the place where value is kept or lost, though one prays to it and the other mourns its neglect."),

    q("The most examinable single word in the poem is",
      "\"under\"", "\"caught\"", "\"sea\"", "\"songs\"", 0,
      "\"Wear them under our new garment\" carries the poem's whole argument in a preposition."),

    # --- Block 5: Crossing the Bar --------------------------------------------
    q("Crossing the Bar is by",
      "Alfred, Lord Tennyson", "William Morris", "Kofi Awoonor", "Birago Diop", 0,
      "Tennyson was Poet Laureate for forty-two years; the poem was written in 1889."),

    q("The poem has",
      "four quatrains", "six stanzas", "two stanzas", "seven stanzas", 0,
      "Four quatrains rhymed ABAB, in loose iambic lines of three to five stresses."),

    q("The bar is",
      "a sandbank at a harbour mouth", "the ship's rail", "a public house", "a reef in deep water", 0,
      "It is crossed on a full tide, which is why stanza two prays for a tide deep enough to lift the keel over."),

    q("In the poem the bar stands for",
      "the boundary between life and death", "a legal barrier", "the English Channel", "fame", 0,
      "The crossing of the bar is the moment of dying, and the whole metaphor depends on it."),

    q("The poem never uses the word",
      "sea", "death", "star", "tide", 1,
      "The whole poem is about dying and refuses to name it, which is how an extended metaphor works."),

    q("The poem's central metaphor is",
      "life as a voyage", "death as a battle", "old age as winter", "the soul as a bird", 0,
      "Harbour, bar, tide and Pilot belong to one system, and the system is the argument."),

    q("The speaker prays for a tide that is",
      "full and silent", "rough and loud", "low and dry", "turning back", 0,
      "\"Too full for sound and foam\" is the poem's ideal death."),

    q("\"And after that the dark!\" is",
      "the poem's bluntest line", "its most consoling line", "a joke", "a stage direction", 1,
      "The exclamation mark is the one shock in an otherwise calm poem."),

    q("The speaker prays for no sadness of farewell",
      "when he embarks", "at his birth", "at the wedding", "in the morning", 0,
      "The prayer is for the living as much as for the dying."),

    q("The Pilot is",
      "God", "the ship's captain", "the speaker's friend", "death", 0,
      "The capital letter and the phrase face to face identify him."),

    q("\"face to face\" echoes",
      "1 Corinthians 13:12", "Shakespeare", "Milton", "the Book of Common Prayer only", 0,
      "Paul's phrase for direct knowledge of God is borrowed for the poem's hope."),

    q("The tone of the poem is",
      "calm acceptance with hope", "bitter", "terrified", "comic", 0,
      "Nothing is accused and nothing is feared; the speaker agrees to the crossing."),

    q("The poem was written in",
      "1889", "1868", "1964", "1850", 0,
      "Tennyson was eighty, and the poem came after an illness on a crossing of the Solent."),

    q("Tennyson asked that the poem be",
      "printed last in every collection", "printed first", "left unpublished", "set to music", 0,
      "The request makes the poem a designed last word on his life's work."),

    q("The short fourth line of each quatrain gives the poem",
      "a falling close, like a tide going out", "a shout", "a march", "a dance", 0,
      "Each stanza ends shorter, so the poem falls away four times."),

    q("\"bourne of Time and Place\" means",
      "a boundary within the world of time and space", "a river", "a town", "the grave only", 0,
      "\"Bourne\" is an old word for a boundary or destination."),

    q("\"crost\" is used for",
      "metre and sound", "rhyme only", "comedy", "dialect realism", 0,
      "The archaic contraction slows the last line and gives its monosyllables weight."),

    q("A comparison of Crossing the Bar with The Anvil and the Hammer finds that both",
      "use the sea as a threshold", "use rhyme royal", "are about kings", "end with a question", 0,
      "One crosses into death, the other into a new culture; both make water the passage."),

    q("The best one-sentence statement of the poem's argument is",
      "death is a crossing made in calm trust towards a Pilot who knows the water", "the sea is dangerous at night", "old men should not travel", "evening is the best hour", 0,
      "The sentence holds the metaphor, the tone and the hope together."),

    q("The poem's images are all drawn from",
      "evening and the sea", "morning and the city", "war", "the countryside in spring", 0,
      "Sunset, star, twilight, bell, tide, bar, flood and Pilot belong to one hour and one element."),

    # --- Block 6: The Proud King ---------------------------------------------
    q("The Proud King is by",
      "William Morris", "Alfred, Lord Tennyson", "Kofi Awoonor", "Gbemisola Adeoti", 0,
      "Morris was a poet, designer and socialist, and the poem is one of the tales in The Earthly Paradise."),

    q("The Proud King appears in",
      "The Earthly Paradise", "Rediscovery and Other Poems", "Naked Soles", "Leurres et Lueurs", 0,
      "The Earthly Paradise (1868–70) is a frame-narrative in the manner of Chaucer."),

    q("The poem is written in",
      "rhyme royal", "blank verse", "free verse", "ballad metre", 0,
      "Seven-line stanzas rhymed ababbcc in iambic pentameter."),

    q("Rhyme royal rhymes",
      "ababbcc", "abab", "aabba", "abbaabb", 0,
      "The closing couplet is what lets the poem move scene by scene."),

    q("The king's name is",
      "Jovinian", "Peters", "Jovian", "John", 0,
      "The name is also claimed by the angel who takes his place."),

    q("Jovinian's boast is that he",
      "needs no temple or priest, being a god while he lives", "will conquer his neighbours", "is the richest king", "is a poet", 0,
      "\"Am I not God, whiles that I live at least\" is the poem's original sin."),

    q("The king calls his forebears' land",
      "the kennel of his dogs", "a garden", "a fortress", "a desert", 0,
      "The contempt is dynastic as well as theological."),

    q("The king follows",
      "a hart", "a messenger", "the queen", "a dream", 0,
      "The hunt separates him from his court and leads him to the river."),

    q("The king loses his clothes and horse",
      "while he bathes", "in battle", "at the gate", "in a storm", 0,
      "To be a king is to be dressed and mounted, and both are taken."),

    q("Who takes the king's place?",
      "an angel", "Duke Peters", "the old priest", "the porter", 0,
      "The figure in white with wings rules better than Jovinian did."),

    q("The first person to deny the king is",
      "the porter at the ranger's gate", "the queen", "Duke Peters", "the priest", 0,
      "The lowest servant denies him first, which is the poem's first irony about rank."),

    q("Duke Peters' denial matters because he",
      "had served the king and still does not know him", "is a stranger", "is the queen's brother", "is a priest", 0,
      "The failure of recognition runs through every rank."),

    q("The king's cry is",
      "\"O Lord God, give me back myself again!\"", "\"Am I not God?\"", "\"the kennel of my dogs\"", "\"I know not\"", 0,
      "He asks for himself rather than his crown, which makes the cry repentance."),

    q("The person who recognises the king is",
      "the old priest", "the queen", "Duke Peters", "the porter", 0,
      "Recognition in the poem is moral rather than visual."),

    q("The angel returns the kingdom because",
      "only the humble are fit to rule", "the king has suffered enough", "the priest asks him to", "the queen pleads", 0,
      "The judgment is a principle rather than a reward."),

    q("The poem ends, thirty years later, with",
      "the king having the tale written into the archives", "the angel's death", "a battle", "the queen's apology", 0,
      "The frame turns the story into a document and a warning."),

    q("The clothes in the poem stand for",
      "rank, identity and the public self", "wealth only", "the body", "the church", 0,
      "They are taken at the river and returned at the end, marking the loss and recovery of identity."),

    q("The gate in the poem is where",
      "identity is tested and fails", "the king sleeps", "the angel first appears", "the queen waits", 0,
      "Two gates, two tests, and both are failed at different social levels."),

    q("A comparison of The Proud King with Vanity finds that both",
      "turn on a failure of recognition that has consequences", "use rhyme royal", "are set at sea", "end with a question", 0,
      "Vanity's living do not recognise their dead; Jovinian's court does not recognise its king. Both poems punish the failure."),

    q("The best one-sentence statement of the poem's argument is",
      "a man who thinks he is a god must be shown that he is a man, and only then can he rule", "kings should hunt less", "angels make better kings", "wealth does not last", 0,
      "The sentence holds the boast, the loss, the cry and the restoration together."),
]
