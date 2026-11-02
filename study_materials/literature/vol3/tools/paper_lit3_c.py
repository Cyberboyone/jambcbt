"""Paper 3 — sixty questions, section by section."""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


UNSEEN = """The well has not spoken since March.
My grandmother says a well is a mouth
that opens when the rain remembers it.

We come at dusk with buckets,
the women before us, the girls behind,
and the rope learns our hands.

At the bottom there is a coin
somebody's grandfather threw in
when the water was still a rumour of water.

Tonight the bucket comes up
with a lizard and a little mud.
My grandmother looks into it a long time.

She says: a dry well is still a well.
We walk home carrying the buckets
empty, and the evening in them."""

PAPER_3 = [
    ("verse", "Section A — Unseen Poetry", UNSEEN, [
        q("The well is compared to",
          "a mouth", "an eye", "a hand", "a house", 0,
          "The metaphor is developed through speech: the well \"has not spoken\", and it opens like a mouth."),

        q("\"the rain remembers it\" is an example of",
          "personification", "simile", "hyperbole", "alliteration", 0,
          "Memory is given to the rain, which makes the well's opening depend on a natural cycle that has its own mind."),

        q("The line \"the women before us, the girls behind\" suggests",
          "a queue", "the handing on of a task between generations", "a race", "a funeral", 1,
          "The procession is a picture of tradition as an order of bodies, with the speaker somewhere in the middle."),

        q("\"the rope learns our hands\" suggests that the work is",
          "new and difficult", "habitual and inherited", "dangerous", "mechanical", 1,
          "The rope learning is an image of skill passing into the body through repetition."),

        q("The coin at the bottom of the well is",
          "a piece of rubbish", "a trace of an older belief or offering", "the speaker's money", "a clue in a mystery", 1,
          "The grandfather's coin belongs to a world in which a well could be asked for something, and the poem keeps it as a relic."),

        q("\"when the water was still a rumour of water\" suggests that",
          "the well was once only hoped for", "the water was dirty", "the well was new", "the well was far away", 0,
          "A rumour of water is water that has been heard of but not seen, which is exactly the condition the poem returns to."),

        q("The bucket comes up with",
          "water", "a lizard and a little mud", "a coin", "nothing at all", 1,
          "The lizard and the mud are the poem's exact measure of a failed errand."),

        q("The grandmother looks into the bucket \"a long time\" because",
          "she cannot see", "she is reading the failure and deciding what to say", "she is angry", "she has forgotten why she came", 1,
          "The pause is the poem's turning point, and the sentence that follows it is its wisdom."),

        q("\"a dry well is still a well\" means that",
          "the well is useless", "identity survives failure", "the well should be filled in", "water will come tomorrow", 1,
          "The sentence separates what a thing is from what it is currently doing, which is the poem's consolation."),

        q("The last line, \"empty, and the evening in them\", suggests that the buckets are",
          "broken", "still full of something — the light and the time of day", "heavy", "borrowed", 1,
          "The emptiness is given a content, which is how the poem ends on dignity rather than on loss."),

        q("The poem is written in",
          "unrhymed free verse", "rhyme royal", "couplets", "blank verse", 0,
          "There is no rhyme and no fixed metre; the lines are short and the stanza breaks mark the stages of the errand."),

        q("The theme most clearly proved by the grandmother's sentence is",
          "the cruelty of drought", "endurance and the dignity of continuing", "the value of money", "the ignorance of the old", 1,
          "She names the failure and refuses to let it define the well, which is the poem's argument about the people too."),
    ]),

    ("plain", "Section B — Vanity (Birago Diop)", None, [
        q("The poem is addressed",
          "to a named listener", "to no one in particular", "to the government", "to the poet's mother", 1,
          "There is no addressee, which is how the poem puts the reader in the place of the one who does not answer."),

        q("The question \"Who then will hear our voices without laughter\" expects the answer",
          "yes, many will", "no one", "the dead", "the children", 1,
          "The question is rhetorical, and its force lies in the silence that follows it."),

        q("\"voices of beggars\" makes the people's appeal",
          "dignified", "dependent on another's choice to give", "political", "musical", 1,
          "A beggar cannot compel hearing; the image makes the people's speech a request rather than a claim."),

        q("The anger compared to a tumour is dangerous because it",
          "turns outward against the powerful", "grows inside the people and consumes them", "is cured by weeping", "is inherited", 1,
          "The growth is in them, in the throat, so the illness is internal and self-destroying."),

        q("\"our plaintive throats\" links the poem's two subjects, which are",
          "song and complaint", "hunger and thirst", "war and peace", "the dead and the gods", 0,
          "A plaint is a complaint and a lament, and the throat is the organ of both speech and song."),

        q("The dead speak \"with their clumsy voices\", which makes the living's neglect",
          "understandable", "worse, because the dead did speak", "irrelevant", "comic", 1,
          "Clumsiness removes the excuse: the dead were not too grand to be heard, they were ignored."),

        q("The signs in the air, on the water and on the earth suggest that",
          "the dead are everywhere and unread", "the dead are buried at sea", "the world is hostile", "the poem is about farming", 0,
          "The elements are the archive, and the living are described as blind and deaf in front of it."),

        q("\"And since we did not understand our dead\" changes the poem because",
          "it introduces a new speaker", "it treats the failure as settled rather than possible", "it rhymes", "it shortens the line", 1,
          "The conjunction turns possibility into verdict, and the grief of the last stanza follows from it."),

        q("The poem's last line is",
          "a statement of hope", "a question about who will hear the people's hearts", "a prayer", "a proverb", 1,
          "\"What ear to our sobbing hearts?\" — the absence of an answer is the poem's point."),

        q("A comparison of Vanity with the unseen well poem would find that both",
          "use rhyme", "end with a woman's sentence of acceptance", "centre on a grandmother's wisdom about endurance", "are set in a market", 2,
          "Both poems turn on an older woman's hard-won sentence, though Vanity's verdict is collective and the well poem's is domestic."),
    ]),

    ("plain", "Section C — Ambush (Gbemisola Adeoti)", None, [
        q("The poem's title is a warning that the danger",
          "is visible", "is concealed and waiting", "has passed", "is imaginary", 1,
          "An ambush is an attack from concealment by one who has chosen the ground and waited."),

        q("The first stanza closes the",
          "land", "water", "air", "city", 1,
          "The whale takes the sea, and the fishers turn home with empty ships."),

        q("The fishers' homecoming at dusk is",
          "triumphant", "a defeat that the stanza reports without comment", "a celebration", "a funeral", 1,
          "The stanza's flat reporting is part of its force: the loss is ordinary and repeated."),

        q("\"blue Peter\" contributes to the stanza",
          "a rhyme", "a maritime signal of departure flown over ships that cannot sail", "a character", "a place name", 1,
          "The irony of the departure flag over empty ships is the stanza's bitter joke."),

        q("The name \"Peter\" in the poem calls up",
          "a fisherman disciple, and the verb to peter out", "a king", "a river", "a market", 0,
          "The pun works because Peter was a fisherman and because his name sounds like the verb for dwindling."),

        q("The sabre-toothed tiger is an image of a violence that is",
          "modern and political", "archaic, natural and therefore hard to resist", "imaginary", "foreign", 1,
          "The prehistoric predator makes the state's violence feel older than the state."),

        q("The old men \"snatch their gut\", which means they",
          "recover their courage", "lose their courage in a panic", "share their food", "run away", 1,
          "The gesture is a panicked retrieval of something already lost, which is why it is shameful as well as fearful."),

        q("\"halting venturous walk at dusk\" describes a journey that is",
          "confident", "hesitant and dangerous at once", "short", "indoor", 1,
          "The two adjectives pull against each other, and the hour makes the hesitation reasonable."),

        q("The land is said to be \"patient\" because",
          "it is kind", "it can afford to wait for the people", "it is old", "it is asleep", 1,
          "Patience is the ambusher's advantage, and the adverb turns the landscape into an agent."),

        q("The poem's final image is",
          "a trap that closes", "a direction towards a shore that the poem does not promise", "a victory", "a funeral", 1,
          "The shore of possibilities is named, and the land is still waiting, which is the poem's honest balance."),
    ]),

    ("plain", "Section D — The Anvil and the Hammer (Kofi Awoonor)", None, [
        q("The persona is \"caught between\" the anvil and the hammer because he is",
          "in danger of being crushed", "the material being shaped into the new life", "a smith", "a spectator", 1,
          "The metal is what lies between the tools, and the poem's next line says that the pangs are being transformed in him."),

        q("The forge is described as \"the forging house of a new life\", which makes the new life",
          "a natural growth", "a made thing with a purpose", "a foreign import", "a dream", 1,
          "Manufacture implies intention, and the poem's question becomes what is being made and at what cost."),

        q("\"fibre of sisal\" is an image of the old culture's",
          "roughness and strength", "weakness", "wealth", "foreignness", 0,
          "Sisal is a plant fibre used for rope: rough, strong and hand-made, which is the texture the poem gives tradition."),

        q("The goat's blood in the fetish hut is named",
          "apologetically", "precisely and without apology", "mockingly", "in a footnote", 1,
          "The naming is itself a cultural claim, and the poem refuses to soften it."),

        q("\"laced with the flimsy glories of paved streets\" means that the old trapping is",
          "destroyed by the new", "mixed with the new culture's thin splendour", "superior to the new", "invisible", 1,
          "\"Laced\" is a sewing word: the two cultures are already interwoven, which is why the prayer that follows makes sense."),

        q("The new elite's speech is called",
          "jargon", "song", "proverb", "prayer", 0,
          "Jargon is the poem's dismissive word for a fashion that sounds sophisticated and says little."),

        q("The prayer to the fathers is a request for",
          "forgiveness", "the old days to be sewn under the new garment", "wealth", "revenge", 1,
          "The imperative is the poem's turn from description to request."),

        q("The washing in \"the whirlpool of the many rivers' estuary\" suggests",
          "cleansing through mixture", "the danger of drowning", "a single pure source", "a colonial baptism", 0,
          "Many rivers meet in one place, and the image prepares for the sea that holds all the songs."),

        q("The poem's final image of the sea is",
          "an image of loss", "an image of many songs held in one body", "a storm", "a harbour", 1,
          "The sea receives the rivers and keeps their sound, so the mixture is not an ending."),

        q("The poem's cultural position is best named",
          "syncretism", "purism", "isolationism", "colonialism", 0,
          "The two-layer garment is the poem's model of two traditions fused into one living culture."),
    ]),

    ("plain", "Section E — Crossing the Bar (Tennyson)", None, [
        q("The poem was written when Tennyson was",
          "twenty", "forty", "eighty", "ninety", 2,
          "It was written in 1889, when he was eighty, on a crossing of the Solent after an illness."),

        q("The four quatrains rhyme",
          "AABB", "ABAB", "ABBA", "ABCB", 1,
          "Line one rhymes with three and line two with four; the pattern is regular even where the line lengths vary."),

        q("The short fourth line of each quatrain gives the poem",
          "a shout", "a falling close, like a tide going out", "a march", "a dance", 1,
          "The stanza ends shorter each time, which is the poem's musical equivalent of a departure."),

        q("The poem never names",
          "the sea", "death", "the star", "the tide", 1,
          "The whole poem is about dying and never says the word, which is how the extended metaphor does its work."),

        q("\"The flood may bear me far\" is an acceptance of",
          "distance from the world he knows", "drowning", "a storm", "a long illness", 0,
          "The line concedes distance without resisting it, which is part of the poem's calm."),

        q("The Pilot is identified as God by",
          "the capital letter and the phrase face to face", "the rhyme", "the ship's name", "the bell", 0,
          "The phrase echoes 1 Corinthians 13:12, where seeing face to face is the knowledge of God."),

        q("The poem's attitude to the people he leaves is",
          "indifference", "consideration, since he prays that they will not be sad", "anger", "fear", 1,
          "The prayer for no sadness of farewell is for the living as much as for the dying."),

        q("A comparison of Crossing the Bar with The Proud King would find that both",
          "are about kings", "are concerned with what a man is when his position is removed", "use quatrains", "are set at sea", 1,
          "Tennyson's speaker is stripped by death and Morris's king by the angel; both ask what remains of the person."),
    ]),

    ("plain", "Section F — The Proud King (William Morris)", None, [
        q("Rhyme royal is a stanza of",
          "four lines", "seven lines rhymed ababbcc", "eight lines rhymed ababcdcd", "nine lines", 1,
          "Seven lines with a closing couplet, in iambic pentameter."),

        q("The poem's argument at its head describes a king",
          "blinded by pride, who denies that God has any share in him", "who loses a war", "who is betrayed by his queen", "who gives away his kingdom", 0,
          "The argument is Morris's own summary, and it names the sin the poem punishes."),

        q("Jovinian's boast is made",
          "in battle", "in his own court, in his prosperity", "in a church", "in a dream", 1,
          "The boast is the speech of a man with everything, which is why the loss that follows is total."),

        q("The king's contempt for his forebears' land is significant because it shows",
          "that he loves hunting", "that his pride reaches his own inheritance", "that the land is poor", "that he is a foreigner", 1,
          "To call the ancestral land a kennel is to despise the source of his own rank."),

        q("The angel takes the king's place",
          "by force", "while the king is naked at the river", "in a battle", "with the queen's help", 1,
          "The clothes and the horse are taken while he bathes, and the angel is on the throne when he returns."),

        q("The porter at the ranger's gate",
          "welcomes the king", "mocks and refuses him", "recognises him", "calls the priest", 1,
          "The lowest servant denies him first, which is the poem's first irony about rank."),

        q("Duke Peters' denial is important because he",
          "is a stranger", "had served the king and still does not know him", "is the queen's brother", "is a priest", 1,
          "The failure of recognition runs through every rank, not only through the servants."),

        q("The king's cry asks for",
          "his crown", "himself", "revenge", "the angel's death", 1,
          "\"Give me back myself again\" is the poem's moral hinge, since the self was lost before the throne."),

        q("The angel returns the kingdom because",
          "the king has suffered enough", "only the humble are fit to rule", "the priest asks him to", "the queen pleads", 1,
          "The judgment is a principle rather than a reward, and the king has now learned the principle."),

        q("The poem's last sentence, about the next king, adds",
          "a happy ending", "the possibility that the warning will be ignored", "a sequel", "a change of narrator", 1,
          "Morris does not know whether God chastised the next king, which makes the written record a hope rather than a guarantee."),
    ]),
]
