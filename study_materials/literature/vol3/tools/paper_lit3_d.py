"""Paper 4 — sixty questions, section by section."""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


UNSEEN = """The harmattan comes down from the north
with a mouth full of dust and a knife for the lips.
The trees take off their leaves like a woman
taking off her jewellery at night.

In the market the tomatoes are small
and the pepper has lost its fire.
A man selling blankets is happy
and a man selling fans is not.

My father says the wind is only the wind,
but at night I hear it trying the doors,
and in the morning the water in the bucket
has a skin on it, and the harmattan
has written its name on the windscreen
of a car that has not moved since June."""

PAPER_4 = [
    ("verse", "Section A — Unseen Poetry", UNSEEN, [
        q("The harmattan is described as having",
          "a mouth full of dust and a knife for the lips", "a voice like a bell", "hands of water", "a crown of fire", 0,
          "The two images make the wind both a devourer and a blade, which is the poem's double sense of it."),

        q("The simile of the trees taking off their leaves",
          "makes the season violent", "makes the stripping seem deliberate and almost graceful", "compares trees to animals", "is a mixed metaphor", 1,
          "The comparison to a woman removing jewellery gives the bare branches a composed, evening quality rather than a wounded one."),

        q("The small tomatoes and the pepper that has lost its fire show",
          "the market's abundance", "the season's effect on the food supply", "the speaker's hunger", "the traders' dishonesty", 1,
          "The poem's economic detail is exact: the weather has reached the produce."),

        q("The blanket seller is happy and the fan seller is not because",
          "one is richer", "the weather has changed what people need", "they are rivals", "the fan seller is ill", 1,
          "The two men are a lesson in how a season redistributes trade, and the poem notes it without comment."),

        q("\"My father says the wind is only the wind\" is placed in the poem to",
          "close the argument", "set adult dismissal against the child's attention", "prove the father right", "introduce a new character", 1,
          "The father's sentence is the voice of common sense, and the rest of the poem is the evidence against it."),

        q("\"I hear it trying the doors\" makes the wind seem",
          "gentle", "like an intruder testing an entrance", "distant", "musical", 1,
          "The verb turns the wind into an agent with intentions, which is what the father's sentence denies."),

        q("\"the water in the bucket / has a skin on it\" is an image of",
          "cleanliness", "cold and dust settling on the surface", "wealth", "thirst", 1,
          "The skin is the poem's exact observation of harmattan weather, and it is also slightly sinister."),

        q("\"the harmattan / has written its name on the windscreen\" is an example of",
          "personification", "simile", "hyperbole", "understatement", 0,
          "Writing is a human act, and the dust does it, which is the poem's way of saying the season has claimed the car."),

        q("The car \"has not moved since June\" suggests",
          "a journey", "stasis and neglect", "wealth", "a breakdown", 1,
          "The detail places the car among things that have stopped, which is what the harmattan is doing to the world."),

        q("The tone of the poem is",
          "nostalgic and warm", "observant, with a child's attentive unease", "angry", "comic", 1,
          "The speaker watches closely and is not comforted by the father's dismissal, which is the poem's quiet tension."),

        q("The poem is written in",
          "unrhymed free verse", "rhyme royal", "couplets", "blank verse", 0,
          "There is no rhyme and no fixed metre; the poem's shape is a sequence of observations."),

        q("The theme most clearly proved by the last three lines is",
          "the beauty of the harmattan", "the season's power to mark and stop the human world", "the father's wisdom", "the value of cars", 1,
          "The dust writes on the windscreen of a car that has not moved: the season has claimed both the object and its name."),
    ]),

    ("plain", "Section B — Vanity (Birago Diop)", None, [
        q("The poem's first stanza is built on",
          "a statement of fact", "a conditional question", "a command", "a proverb", 1,
          "\"If we tell, gently, gently\" opens a possibility that the last stanza closes."),

        q("\"All that we shall one day have to tell\" suggests that the telling is",
          "optional", "still to come and unavoidable", "already finished", "forbidden", 1,
          "The future obligation is what makes the poem's failure a tragedy rather than an accident."),

        q("The laughter the people expect is",
          "kind", "mocking, and it belongs to the powerful", "their own", "the dead's", 1,
          "\"Big children\" laugh at the people's large mouths, so the mockery is both childish and superior."),

        q("The tumour grows in the throat because the throat is",
          "the organ of speech", "the seat of hunger", "the source of breath only", "a symbol of the heart", 0,
          "The poem keeps its two subjects together: the anger and the failure to be heard are both lodged in the voice."),

        q("The dead come \"with their Dead\", which suggests",
          "a funeral", "an unbroken community extending backwards", "a war", "a dream", 1,
          "The ancestors bring their own ancestors, so the world of the dead is a society rather than a collection of ghosts."),

        q("The dead's \"clumsy voices\" make the living's failure",
          "excusable", "worse, because the dead did speak", "irrelevant", "comic", 1,
          "Clumsiness removes the excuse of grandeur: the dead were awkward and were still ignored."),

        q("\"In the air, on the water, where they have traced their signs\" makes the elements",
          "a hiding place", "a record that the living cannot read", "a punishment", "a blessing", 1,
          "The landscape is the archive, and the people are blind and deaf in front of it."),

        q("The poem's final question is",
          "\"What heart will listen to our clamouring?\"", "\"What ear to our sobbing hearts?\"", "\"Who then will hear our voices?\"", "\"When will the dead return?\"", 1,
          "The last image is the ear, which closes the poem on the organ of hearing that has failed throughout."),

        q("Vanity is a poem about",
          "a single death", "a community's failure of memory and the grief that follows", "a political election", "the poet's childhood", 1,
          "The dead are owed remembrance, and the neglect is cultural rather than personal."),

        q("A comparison of Vanity with the unseen harmattan poem would find that both",
          "use rhyme", "make a natural force or a natural world the carrier of the poem's meaning", "are about markets", "end with a question", 1,
          "In one the elements record the dead; in the other the wind writes on the world. Both let the natural world speak."),
    ]),

    ("plain", "Section C — Ambush (Gbemisola Adeoti)", None, [
        q("The poem's three predators are arranged so that",
          "the sea is the most dangerous", "no element is left free of danger", "the air is safest", "the land is friendly", 1,
          "Water, land and air are all covered, which is what makes stanza four's trap total."),

        q("The whale swallows \"the sinker, / with hook, line and bait\", which shows that it takes",
          "only the fish", "the whole apparatus of the attempt", "the boat", "the fisherman's hand", 1,
          "The loss is of the means as well as the end, which is the stanza's account of oppression."),

        q("\"aborting dreams\" is a phrase that belongs to",
          "birth, and makes the loss a prevented arrival", "fishing", "war", "trade", 0,
          "The birth metaphor makes the destruction of hope feel like an ending before its time."),

        q("The blue Peter is flown",
          "over empty ships", "over the whale", "at the palace", "on the hawk's wing", 0,
          "The departure signal over ships with nothing and no one is the stanza's central irony."),

        q("The second stanza's tiger is described as",
          "sleeping", "crying deep in the glade", "hunting at noon", "tame", 1,
          "The cry is heard before the animal is seen, which makes the danger auditory and surrounding."),

        q("The infants \"shudder home\", which shows that the danger reaches",
          "only adults", "the youngest", "only the old", "the predators", 1,
          "Fear is shown across the generations, from infants to the grizzled ones, in two consecutive images."),

        q("The old men's \"gut\" is a word for",
          "food", "courage", "wealth", "family", 1,
          "To snatch one's gut is to try to recover courage already lost, which is why the gesture is shameful."),

        q("The hawk \"courts unceasing disaster\", which makes it",
          "a victim", "an agent that seeks the harm it causes", "a symbol of peace", "a comic figure", 1,
          "The verb gives the predator intention, which is what the poem needs for an ambush."),

        q("\"The land lies patiently ahead\" is the poem's",
          "opening line", "central image of the trap", "closing image of hope", "title", 1,
          "The land is the ambusher, and patience is its advantage."),

        q("\"the shore of possibilities\" is",
          "a promise the poem makes good", "a direction the poem names without promising arrival", "a place the people reach", "a metaphor for death", 1,
          "The shore lies across the whale's water and the land is still waiting, which is the poem's honesty."),
    ]),

    ("plain", "Section D — The Anvil and the Hammer (Kofi Awoonor)", None, [
        q("Awoonor's poem was published in",
          "1964", "1889", "1868", "1940", 0,
          "Rediscovery and Other Poems appeared in 1964, in the first years of Ghanaian independence."),

        q("The poem's two stanzas are connected by the idea of",
          "transformation through making", "war", "trade", "travel", 0,
          "The forge makes the metal; the needle makes the garment; both are crafts of transformation."),

        q("\"Caught between the anvil and the hammer\" makes the persona",
          "a victim of two enemies", "the material shaped by two tools", "a smith", "a judge", 1,
          "The preposition places him where the metal lies, and the next line confirms that the change is happening in him."),

        q("\"The trapping of the past\" refers to",
          "old clothes", "the inherited culture", "European law", "fishing nets", 1,
          "The trapping is the ancestral culture, described as tender and tenuous because it is precious and fragile."),

        q("\"tender and tenuous\" is an example of",
          "alliteration", "onomatopoeia", "rhyme", "hyperbole", 0,
          "The repeated t gives the old culture a soft, deliberate sound, in contrast with jargon."),

        q("\"flimsy glories\" suggests that the new culture is",
          "entirely worthless", "shining and thin at once", "violent", "sacred", 1,
          "The noun praises and the adjective judges, which is why the phrase is a mixed judgment."),

        q("The prayer is addressed to",
          "God", "the fathers", "the queen", "the sea", 1,
          "The ancestors hold the community's continuity in the tradition the poem draws on."),

        q("The old days are to be worn",
          "instead of the new garment", "under the new garment", "on the head", "in the hand", 1,
          "The preposition carries the poem's whole politics of retention."),

        q("The sea at the end holds",
          "only the new songs", "the reverberation of the people's songs", "nothing", "the old songs only", 1,
          "The splash and moan of the sea keep the sound of the songs, so the mixture is not a loss."),

        q("The poem's argument is best described as",
          "a rejection of the past", "a rejection of the present", "a case for carrying the past inside the new life", "a case for returning to the village", 2,
          "Syncretism, not purism: the two-layer garment is the poem's model of cultural survival."),
    ]),

    ("plain", "Section E — Crossing the Bar (Tennyson)", None, [
        q("The poem's first line fixes the hour as",
          "sunrise", "sunset", "midnight", "noon", 1,
          "The evening setting is the poem's chosen hour for a peaceful departure."),

        q("The \"bar\" is dangerous because it is",
          "a sandbank at a harbour mouth, crossable only on a full tide", "a reef in deep water", "a wall", "a border post", 0,
          "The nautical exactness is what allows the metaphor to carry the weight of dying."),

        q("\"And may there be no moaning of the bar\" is a prayer that",
          "the sea will be loud", "the crossing will not sound like grief", "the ship will be delayed", "the tide will turn", 1,
          "The bar is personified as moaning, and the prayer asks for a quiet passage instead."),

        q("\"Too full for sound and foam\" describes a tide that is",
          "low", "complete and silent", "rough", "turning", 1,
          "Fullness without noise is the poem's ideal death, and the phrase is its most exact piece of sea-writing."),

        q("\"Twilight and evening bell\" marks the poem's",
          "movement from sunset into darkness", "change of speaker", "rhyme scheme", "arrival in harbour", 0,
          "The light fails deliberately across three quatrains before the fourth answers the darkness with a face."),

        q("\"And after that the dark!\" is the poem's",
          "most consoling line", "bluntest line, and its only shock", "longest line", "happiest line", 1,
          "The exclamation mark is the one shock in an otherwise calm poem."),

        q("\"I hope to see my Pilot face to face\" expresses",
          "certainty", "hope", "fear", "regret", 1,
          "The poem hopes rather than argues, and the difference is its tone."),

        q("A comparison of Crossing the Bar with The Anvil and the Hammer would find that both",
          "use the sea as an image of a passage into a new condition", "use rhyme royal", "are about kings", "end with a question", 0,
          "One crosses to death, the other enters a new culture; both make the sea the threshold of a changed life."),
    ]),

    ("plain", "Section F — The Proud King (William Morris)", None, [
        q("The poem's form, rhyme royal, was used by",
          "Chaucer", "Shakespeare", "Milton", "Tennyson", 0,
          "Morris borrows Chaucer's seven-line stanza to place his tale in a medieval English line."),

        q("The king's name, Jovinian, is also claimed by",
          "Duke Peters", "the angel who takes his place", "the old priest", "the porter", 1,
          "The impostor calls himself Jovinian too, which is what makes the identity question so sharp."),

        q("The boast is that Jovinian is",
          "a great general", "a god while he lives", "the richest king", "a poet", 1,
          "\"Am I not God, whiles that I live at least\" — the line the whole poem answers."),

        q("The king calls the land of his forebears",
          "a garden", "the kennel of his dogs", "a fortress", "a desert", 1,
          "The contempt is dynastic as well as theological, since it despises the source of his own rank."),

        q("The hunt matters because it",
          "shows the king's skill", "separates him from his court and leads him to the river", "introduces the queen", "ends the poem", 1,
          "The hart is the lure, and the river is where the clothes are lost."),

        q("The angel's rule is",
          "worse than the king's", "better than the king's", "brief and chaotic", "never described", 1,
          "The kingdom improves without him, which is the poem's deepest cut."),

        q("The queen's denial is the cruellest because",
          "she is a stranger", "she is the person closest to him", "she is cruel by nature", "she does not speak", 1,
          "The poem tests recognition at every level of intimacy, and the marriage fails the test."),

        q("The priest recognises the king",
          "at the gate", "after the king's cry", "before the angel appears", "in a dream", 1,
          "Recognition follows repentance, which is why the poem's order matters."),

        q("The angel's condition for rule is",
          "wealth", "humility", "victory in war", "the priest's blessing", 1,
          "Only the humble are fit to rule, and the king has now learned what he did not know."),

        q("The written record at the end is important because",
          "it proves the king's madness", "it turns a private lesson into a public warning", "it is the poem's only document", "it names the angel", 1,
          "The archive converts a humiliation into a lesson for future kings, and Morris doubts that it will be learned."),
    ]),
]
