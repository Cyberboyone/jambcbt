"""Paper 2 — sixty questions, section by section."""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


UNSEEN = """The market is a mouth that opens at dawn
and closes when the last trader counts her coins.
My mother is one of the teeth.

She sells pepper in cones of newspaper,
her fingers stained the colour of the harmattan,
and she counts with her lips moving.

At noon a woman argues over ten naira
as though the coin were a child
who had been promised to two families.

My mother gives it. She says:
a market is not a place to win.
It is a place to be seen again next week.

At dusk we carry the table between us,
her at one end, me at the other,
and the street folds up behind us
like a mat."""

PAPER_2 = [
    ("verse", "Section A — Unseen Poetry", UNSEEN, [
        q("The market is compared to",
          "a river", "a mouth", "a house", "a road", 1,
          "The metaphor opens the poem and gives the market an appetite: it opens at dawn and closes when the money has been counted."),

        q("\"My mother is one of the teeth\" presents her as",
          "a victim of the market", "part of the machinery that chews and feeds", "an outsider", "the owner of the market", 1,
          "The line is wry rather than cruel: she is inside the system, doing its work and surviving by it."),

        q("\"cones of newspaper\" for the pepper suggests",
          "luxury", "make-do packaging and a world of print put to domestic use", "a health warning", "a shop", 1,
          "The detail is exact and cheap, and it quietly puts a newspaper in the hands of a trader."),

        q("\"fingers stained the colour of the harmattan\" suggests that",
          "the mother is ill", "her work has marked her body", "the weather is cold", "the pepper is spoiled", 1,
          "The stain is an image of labour written on the skin, and it ties her to the season."),

        q("The dispute over ten naira is made to seem",
          "trivial and comic", "a matter of honour and obligation", "a crime", "a religious matter", 1,
          "The simile of the child promised to two families turns a small coin into a question of who has been promised what."),

        q("\"a market is not a place to win\" is",
          "the mother's philosophy of trade", "a proverb quoted from a book", "the speaker's complaint", "a warning to the buyer", 0,
          "The mother's sentence is the poem's centre: trade is a relationship before it is a contest."),

        q("\"a place to be seen again next week\" suggests that trade depends on",
          "luck", "reputation and repeat custom", "the weather", "the government", 1,
          "Being seen again is the trader's credit: the market is a place where a reputation is built by returning."),

        q("\"the street folds up behind us / like a mat\" is",
          "a metaphor", "a simile", "personification", "hyperbole", 1,
          "The word \"like\" makes it a simile, and the folding mat closes the day as a household closes its mat."),

        q("The closing image leaves the reader with a sense of",
          "violence", "order and domestic companionship", "loss", "confusion", 1,
          "The mother at one end of the table and the speaker at the other is a picture of shared work, and the street folds quietly away."),

        q("The tone of the poem is",
          "angry", "affectionate and observant", "sentimental", "sarcastic", 1,
          "The poem watches the mother closely and with love, and it lets her own words carry the judgment."),

        q("The poem is written in",
          "four unrhymed quatrains", "rhyme royal", "couplets", "blank verse", 0,
          "Four groups of four lines, with no rhyme and no fixed metre."),

        q("The theme most clearly proved by the mother's decision to give the ten naira is",
          "the exploitation of traders", "the priority of relationship over profit", "the value of money", "the hardship of the harmattan", 1,
          "She gives the coin because the relationship with the buyer matters more than the coin, which is the poem's argument."),
    ]),

    ("plain", "Section B — Vanity (Birago Diop)", None, [
        q("The poem's six stanzas move from",
          "certainty to doubt", "the telling of a story to the verdict that it cannot be heard", "the dead to the living", "joy to grief", 1,
          "The first stanza imagines telling; the last settles that the telling has already failed."),

        q("\"If we tell, gently, gently\" — the repetition of \"gently\" suggests",
          "haste", "care, and the sense that the telling is fragile", "anger", "mockery", 1,
          "The adverb is a caress and an apology, and it returns at the end of the poem unchanged."),

        q("\"our large mouths / Shaped by the laughter of big children\" makes the people",
          "powerful", "ridiculous in the eyes of the powerful", "innocent", "hungry", 1,
          "The image makes a physical feature a social humiliation: the mouth is open, and the powerful are children laughing at it."),

        q("For Diop, the dead are",
          "a metaphor for the past", "agents who are present, owed attention, and able to withdraw", "imaginary", "enemies of the living", 1,
          "The poem assumes a world in which the ancestors are part of the community and their neglect has consequences."),

        q("\"clumsy voices\" is important because it",
          "makes the dead comic", "removes the living's excuse, since the dead did speak", "shows the dead were uneducated", "suggests a foreign language", 1,
          "If the dead had been majestic, neglect might be understandable; their clumsiness makes the neglect worse."),

        q("The signs the dead left are",
          "written in books", "in the air, on the water and on the earth", "in the temple", "in the people's songs", 1,
          "The world itself records what the people forget, which is why the landscape is a witness in the poem."),

        q("\"blind deaf and unworthy Sons\" names",
          "three failures of perception and worth", "three generations", "three gods", "three punishments", 0,
          "Sight, hearing and worth are the three things the living have lost, and \"Sons\" makes the failure filial."),

        q("The poem's last question is addressed to",
          "the dead", "no one in particular", "the poet", "the government", 1,
          "The absence of a listener is the poem's subject, and the reader is left where the speaker stands."),

        q("The title Vanity is justified by the poem because",
          "the people are proud", "the weeping comes after the failure and cannot undo it", "the poet is vain", "the dead were proud", 1,
          "Vanity means futility here, and the last stanza supplies it: grief that arrives after the loss of hearing."),

        q("A comparison of Vanity with the unseen market poem would find that both",
          "use rhyme", "are spoken by a child about a mother", "give the last word to a woman's practical wisdom", "are set in a market", 2,
          "The mother's sentence about the market and the poem's closing verdict are both forms of hard-won wisdom, though one consoles and the other does not."),
    ]),

    ("plain", "Section C — Ambush (Gbemisola Adeoti)", None, [
        q("The poem's four stanzas shrink in length, which",
          "marks the seasons", "makes the poem tighten as the trap closes", "imitates birdsong", "shows the poet's haste", 1,
          "Eight, six, three and four lines: the shortening is a visual analogue of a net drawn in."),

        q("The whale in stanza one represents",
          "the sea's beauty", "a power that takes the whole attempt, not only its reward", "a fisher's enemy", "a natural accident", 1,
          "It swallows the sinker with hook, line and bait, so the loss is of the apparatus and the hope together."),

        q("\"aborting dreams of a good catch\" uses a word associated with",
          "birth, so that the hope is ended before it can be delivered", "fishing", "war", "religion", 0,
          "\"Aborting\" belongs to birth, and the poem uses it to make the loss feel like a prevented arrival."),

        q("\"blue Peter on empty ships\" is ironic because",
          "the ships are too full", "a flag of departure is flown over ships that cannot sail", "the flag is the wrong colour", "the ships are fishing boats", 1,
          "The maritime signal announces a departure that will not happen, which is the stanza's bitter joke."),

        q("The sabre-toothed tiger is effective as an image because it is",
          "domestic", "archaic and therefore seems older and harder to resist than any state", "comic", "extinct and harmless", 1,
          "The prehistoric predator makes the violence feel natural and older than government."),

        q("In stanza two, fear reaches",
          "only the old men", "both the infants and the grizzled ones", "only the fishermen", "the predators", 1,
          "\"Infants shudder home\" and \"the grizzled ones snatch their gut\": no age is exempt."),

        q("The hawk \"courts unceasing disaster\", which suggests",
          "it avoids trouble", "it actively seeks the disaster it causes", "it is blind", "it is frightened", 1,
          "Courtship implies pursuit, and the verb makes the predator an agent rather than an accident."),

        q("\"The land lies patiently ahead\" is the poem's",
          "comic relief", "central image of the trap, since the land can afford to wait", "description of the sea", "opening line", 1,
          "The land is the ambusher, and patience is what makes an ambush possible."),

        q("\"the shore of possibilities\" is guarded by",
          "the tiger", "the whale, because the shore lies across the water", "the hawk", "the government", 1,
          "Water is stanza one's territory, so the desirable shore is also the guarded one."),

        q("The poem's attitude to escape is best described as",
          "confident", "a direction named without a promise of arrival", "hopeless", "indifferent", 1,
          "The ending holds the shore and the ambush together, which is what makes it honest."),
    ]),

    ("plain", "Section D — The Anvil and the Hammer (Kofi Awoonor)", None, [
        q("The poem's two stanzas divide by",
          "tense and mood: description, then prayer", "speaker", "setting", "rhyme", 0,
          "Stanza one describes the forging in the present; stanza two begins with an imperative."),

        q("The forge is a better metaphor for cultural change than a battlefield because it",
          "is louder", "makes change a process of manufacture with a purpose", "is more Nigerian", "involves fire", 1,
          "A forge produces something; the poem is asking what is being made and what happens to the old metal."),

        q("\"pangs that delivered me\" and \"the joy of new songs\" place side by side",
          "pain and art", "war and peace", "old and new", "Africa and Europe", 0,
          "The birth pangs become songs, which is the poem's account of how art is made out of suffering."),

        q("The old culture is described as",
          "tender and tenuous", "flimsy and loud", "foreign and cold", "dead and buried", 0,
          "The adjectives make the inherited culture precious and fragile, which is why it needs to be sewn in."),

        q("\"flimsy glories\" is a phrase that",
          "praises modernity without qualification", "praises and qualifies at once", "rejects modernity entirely", "describes the old culture", 1,
          "The noun praises and the adjective judges, which is why the phrase is so often examined."),

        q("The prayer to the fathers asks for",
          "revenge on the coloniser", "the old days to be sewn under the new garment", "the new garment to be removed", "a return to the village", 1,
          "The request is for retention without display, and the preposition carries the poem's politics."),

        q("\"the whirlpool of the many rivers' estuary\" prepares for",
          "the sea image at the end", "the forge image", "the sewing image", "the market image", 0,
          "Many rivers meet in one estuary, and the sea later holds all their songs."),

        q("The people take \"snatches / From their tunes\" because",
          "the old songs are forbidden", "the old survives in fragments inside the new anthems", "they have forgotten music", "the songs are foreign", 1,
          "The stanza is honest about neglect and about survival at once."),

        q("\"the splash and moan of the sea\" is",
          "an image of loss", "an image of many songs held in one body", "a storm warning", "a fishing scene", 1,
          "The sea receives the rivers and keeps their sound, so the mixture is not an ending."),

        q("The poem's answer to colonialism is",
          "rejection of everything new", "a fusion in which the old supports the new", "a return to the pre-colonial past", "silence", 1,
          "Syncretism, not purism: the two-layer garment is the poem's whole argument."),
    ]),

    ("plain", "Section E — Crossing the Bar (Tennyson)", None, [
        q("The poem's title names",
          "a harbour departure that stands for death", "a fishing trip", "a naval battle", "a river crossing in Africa", 0,
          "The bar is a sandbank at the harbour mouth, and the crossing of it is the moment of dying."),

        q("\"Sunset and evening star\" places the poem at",
          "dawn", "the end of the day", "midnight", "noon", 1,
          "The hour is chosen for calm, and it begins the poem's deliberate darkening."),

        q("\"one clear call for me\" makes death seem",
          "confusing", "unmistakable and addressed to the speaker", "unwelcome", "imaginary", 1,
          "The call is clear, and the personal pronoun makes it his own summons."),

        q("The prayer for a tide \"too full for sound and foam\" is a prayer for",
          "a loud crossing", "a quiet, complete death", "a storm", "a long life", 1,
          "Fullness without noise is the poem's ideal, and the detail is exactly nautical."),

        q("\"Twilight and evening bell\" continues the poem's",
          "progress from sunset into darkness", "comedy", "rhyme scheme change", "sea imagery only", 0,
          "The light fails across the quatrains, and the bell marks the hour."),

        q("\"I hope to see my Pilot face to face\" — the word \"hope\" is important because the poem",
          "claims certainty", "offers hope rather than proof", "denies an afterlife", "is a prayer for the queen", 1,
          "The poem hopes; it does not argue, and the difference is its tone."),

        q("The poem's tone is best described as",
          "fearful", "calm acceptance with hope", "angry", "joking", 1,
          "Every image is chosen to make the crossing peaceful and the arrival hoped for."),

        q("A comparison of Crossing the Bar with Vanity would find that both poems",
          "are sonnets", "treat death as a passage rather than an annihilation", "use rhyme royal", "end on a question", 1,
          "Vanity's dead have crossed and left signs; Tennyson's speaker is about to cross; both imagine death as a passage."),
    ]),

    ("plain", "Section F — The Proud King (William Morris)", None, [
        q("The poem is best described as",
          "a lyric", "a narrative poem in rhyme royal", "a ballad", "a sonnet sequence", 1,
          "It tells a story in the third person across twelve scenes and eight hundred and fifty lines."),

        q("The poem belongs to",
          "The Earthly Paradise", "Rediscovery and Other Poems", "Naked Soles", "Leurres et Lueurs", 0,
          "The Earthly Paradise is Morris's frame-narrative of wanderers telling tales month by month."),

        q("Jovinian's fault is",
          "cruelty to his subjects", "the belief that he is a god while he lives", "cowardice in war", "greed for gold", 1,
          "\"What need have I for temple or for priest\" is the boast the whole poem answers."),

        q("The king's scorn for his forebears' land shows that his pride",
          "is only theological", "reaches his own ancestry and inheritance", "is a pose", "is shared by the queen", 1,
          "The kennel line despises the source of his own rank, which is why it is more than a religious error."),

        q("The hart, the river and the lost clothes are",
          "decorative details", "the machinery that strips the king of his identity", "symbols of the queen", "a dream sequence", 1,
          "The hunt isolates him, the river strips him and the clothes carry the rank away."),

        q("The angel rules",
          "worse than Jovinian", "better than Jovinian", "not at all", "only for a day", 1,
          "The kingdom's improvement without him is the deepest cut the poem makes."),

        q("The denials at the gate show that",
          "rank is visible to everyone", "rank depends on its signs, and those who loved the rank cannot see the man", "the servants are cruel", "the king is mad", 1,
          "The porter, the household, the duke and the queen all fail the same test at different social levels."),

        q("The cry \"give me back myself again\" is",
          "a demand for the crown", "a request for his own self, which he lost before the throne", "a curse", "a prayer for revenge", 1,
          "The wording is the poem's moral hinge: a king who asked for his crown would have learned nothing."),

        q("The old priest recognises the king because",
          "he is cleverer than the queen", "he knows him as a soul rather than as a rank", "the angel tells him", "he sees the clothes", 1,
          "Recognition in the poem is moral, which is why the priest comes last and sees most."),

        q("The frame, thirty years later, turns the poem into",
          "a romance", "a document and a warning", "a comedy", "a sequel", 1,
          "The king has the tale written into the archives, and Morris's last sentence doubts that the next king will learn from it."),
    ]),
]
