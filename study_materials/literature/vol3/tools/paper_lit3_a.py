"""Paper 1 — sixty questions, section by section.

A section is (kind, heading, lead, items) where kind is "passage", "verse",
"script" or "plain"; `items` is a list of (stem, [A, B, C, D], zero-based key,
solution). The unseen poem is written for this book.
"""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


UNSEEN = """The last bus does not come.
We have been standing here since four,
my mother's wrapper on my arm,
the smell of diesel in my hair.

At six a boy sells water
from a bucket with a lid.
At seven the lights go out
and the road becomes a rumour.

My mother says: a patient man
will eat his rice cold.
My mother has never waited
for anything she could carry.

At nine a bus comes in
and everybody runs at it
as though the running were the journey
and the seat a place to be born."""

PAPER_1 = [
    ("verse", "Section A — Unseen Poetry", UNSEEN, [
        q("The poem's situation is",
          "a family travelling by night", "a speaker waiting at a motor park with his mother", "a funeral", "a market day", 1,
          "The first line fixes the scene: a bus is expected, has not come, and the waiting has lasted since four."),

        q("The line \"the road becomes a rumour\" suggests that",
          "the road is crowded", "darkness makes the road uncertain and hearsay-like", "the road has been closed", "the buses have stopped running", 1,
          "When the lights go out the road is no longer seen but only heard about, which is exactly what a rumour is."),

        q("\"a patient man will eat his rice cold\" is",
          "a proverb about patience", "a complaint about the food", "a threat", "a blessing on the bus", 0,
          "The mother's saying accepts a late reward; the poem tests whether the patience is a virtue or a habit."),

        q("\"My mother has never waited / for anything she could carry\" suggests that she",
          "is impatient", "is self-reliant, and carries what she needs rather than waiting for it", "has no luggage", "dislikes the speaker", 1,
          "The line is a quiet tribute: she trusts her own hands more than she trusts the bus."),

        q("The tone of the poem is best described as",
          "furious", "wry and patient", "sentimental", "comic", 1,
          "The observations are dry and exact, and the humour in the mother's proverb is affectionate rather than bitter."),

        q("\"as though the running were the journey\" suggests that",
          "the bus is late", "the rush to board has become an end in itself", "the speaker cannot run", "the journey is short", 1,
          "The simile catches the moment when the scramble for a place replaces the purpose of travelling."),

        q("\"the seat a place to be born\" makes the seat seem like",
          "a piece of furniture", "a beginning, and possibly a new life", "a throne", "a grave", 1,
          "Birth is the poem's image for boarding, which gives the journey a weight beyond transport."),

        q("The poem is written in",
          "four quatrains of unrhymed free verse", "rhyme royal", "blank verse", "couplets", 0,
          "Four groups of four lines, with no rhyme and no fixed metre."),

        q("The turn of the poem comes at",
          "the first line", "\"At nine a bus comes in\"", "the mother's proverb", "the last word", 1,
          "The arrival at nine breaks the waiting, and the last quatrain changes the poem from endurance to a scramble."),

        q("The repeated \"At six … At seven … At nine\" is used to",
          "mark the passage of time", "name the passengers", "provide a rhyme", "change the speaker", 0,
          "The clock is the poem's structure: the hours are counted because waiting is the subject."),

        q("\"the smell of diesel in my hair\" is effective because it",
          "is a simile", "gives the wait a physical presence in the speaker's body", "rhymes with \"arm\"", "names the bus company", 1,
          "The detail is sensory and intimate: the place has got into the speaker's hair."),

        q("The theme most clearly proved by the last quatrain is",
          "the beauty of the evening", "hope deferred and the scramble it produces", "the reliability of transport", "the mother's authority", 1,
          "The bus finally comes, and the people's reaction is not relief but a rush that loses the purpose of the journey."),
    ]),

    ("plain", "Section B — Vanity (Birago Diop)", None, [
        q("Vanity is written in",
          "rhyme royal", "free verse", "blank verse", "quatrains", 1,
          "Six stanzas of uneven length with no rhyme and no fixed metre."),

        q("The poem's speaker uses \"we\" because",
          "the poet is writing for a group", "the speaker includes himself in the failure he describes", "the dead are speaking", "the poem has no speaker", 1,
          "The collective voice is what allows the poem to accuse and mourn at once."),

        q("The people fear that if they tell their story",
          "they will be arrested", "their voices will be heard with laughter", "the dead will answer", "the story will be forgotten", 1,
          "\"Who then will hear our voices without laughter\" sets the expectation of mockery before anything else happens."),

        q("\"Sad complaining voices of beggars\" makes the people's speech",
          "powerful", "humiliating as well as urgent", "musical", "silent", 1,
          "A beggar is heard only at another's discretion, which is the poem's image of powerlessness."),

        q("The tumour in the poem grows",
          "in the fields", "in the people's throats", "in the temple", "in the dead", 1,
          "\"In the black depth of our plaintive throats\" — the anger is lodged in the organ of speech."),

        q("The dead come to the living",
          "with gifts", "with their own dead", "with warnings of war", "in silence", 1,
          "\"When our Dead come with their Dead\" makes the ancestral world a community that extends backwards."),

        q("The dead have left their cries",
          "in books", "in the air, on the water and on the earth", "in the temple", "in the people's throats", 1,
          "The elements are the archive the living cannot read."),

        q("The last stanza turns on the word",
          "\"gently\"", "\"since\"", "\"tumour\"", "\"sobbing\"", 1,
          "\"And since we did not understand our dead\" treats the failure as settled, so the poem's grief has no remedy."),

        q("The poem ends with",
          "a promise", "an unanswered question", "a prayer", "a song", 1,
          "\"What ear to our sobbing hearts?\" — the absence of an answer is the poem's point."),

        q("The title Vanity refers to",
          "the people's pride in their appearance", "the futility of a grief that comes too late", "the poet's ambition", "the dead's arrogance", 1,
          "The older sense of vanity is emptiness or futility, and the poem supplies it in the last stanza."),
    ]),

    ("plain", "Section C — Ambush (Gbemisola Adeoti)", None, [
        q("Ambush is set in a landscape where the danger comes from",
          "the city", "water, land and air in turn", "the government buildings", "the dead", 1,
          "The three predators cover the three elements, so that no route of escape is left."),

        q("The whale swallows the sinker with",
          "the boat", "hook, line and bait", "the fisherman", "the net only", 1,
          "It takes the whole apparatus, so the loss is of the attempt as well as the catch."),

        q("\"blue Peter\" is",
          "a flag signalling departure", "a fisherman's name", "a storm warning", "a species of fish", 0,
          "Flown over \"empty ships\", the departure signal becomes a bitter joke."),

        q("\"all Peters with petered out desires\" works by means of",
          "rhyme", "pun", "alliteration", "simile", 1,
          "The disciple's name and the verb \"to peter out\" collapse into one sound, so failure is built into the language."),

        q("The second stanza's predator is",
          "a hawk", "a sabre-toothed tiger", "a whale", "a lion", 1,
          "It cries in the glade and closes the land and the forest."),

        q("\"the grizzled ones snatch their gut\" shows the old men",
          "preparing to fight", "losing courage and dignity together", "laughing at the young", "returning home", 1,
          "Gut is courage and entrail at once, and snatching it back is a gesture of panic."),

        q("\"bayonets of tribulation\" makes suffering",
          "distant", "an armed force", "a religious rite", "a fishing method", 1,
          "The metaphor gives tribulation a weapon, so that suffering itself becomes the enemy."),

        q("The third stanza's predator",
          "\"courts unceasing disaster\", which means it seeks it out", "fears disaster", "sleeps in the sky", "protects the people", 0,
          "Courtship implies pursuit: the predator invites the disaster rather than waiting for it."),

        q("\"The land lies patiently ahead\" is effective because",
          "the land is empty", "\"patiently\" makes the landscape an agent that can afford to wait", "the land is fertile", "the land is far away", 1,
          "The adverb turns the setting into an ambusher with intentions."),

        q("\"the shore of possibilities\" is",
          "a holiday beach", "the hoped-for future, which lies across water the whale controls", "the grave", "a foreign country named in the poem", 1,
          "The image is desirable and guarded at once, which is why the poem ends on a direction and not an arrival."),
    ]),

    ("plain", "Section D — The Anvil and the Hammer (Kofi Awoonor)", None, [
        q("In the forge metaphor the persona is",
          "the smith", "the metal being shaped", "the hammer", "the anvil", 1,
          "\"Caught between the anvil and the hammer\" places him where the metal is."),

        q("The anvil and the hammer are",
          "two enemies", "two halves of one process of making", "two nations", "two religions", 1,
          "A forge needs both tools; the persona is being manufactured, not attacked."),

        q("\"the pangs that delivered me\" and \"the joy of new songs\" link",
          "birth and art", "war and peace", "trade and travel", "silence and sleep", 0,
          "\"Delivered\" is a birth word, and the songs are what the pain is made into."),

        q("\"fibre of sisal\" and \"the blood of the goat in the fetish hut\" belong to",
          "the new culture", "the old culture", "the colonial administration", "the sea", 1,
          "They are images of traditional material and ritual, named precisely and without apology."),

        q("\"the flimsy glories of paved streets\" judges modernity as",
          "worthless", "attractive but thin", "violent", "sacred", 1,
          "\"Glories\" praises and \"flimsy\" qualifies; the phrase is a mixed judgment."),

        q("\"the jargon of a new dialectic\" suggests that the new elite's speech is",
          "clear", "impressive and empty", "traditional", "religious", 1,
          "Jargon is the poem's dismissive word for a fashion that sounds sophisticated and says little."),

        q("The second stanza begins with",
          "a question", "an imperative prayer to the fathers", "a simile", "a song", 1,
          "\"Sew the old days for us, our fathers\" turns description into request."),

        q("The old days are to be worn",
          "instead of the new garment", "under the new garment", "on the head", "in the hand", 1,
          "The preposition is the poem's politics: hidden, supporting, in contact with the skin."),

        q("The final image of the sea suggests",
          "loss", "many songs held in one body", "a storm", "a departure", 1,
          "The sea receives the rivers and holds their sound, so the mixture is not a loss."),

        q("The word that best names the poem's cultural position is",
          "syncretism", "isolation", "purism", "colonialism", 0,
          "The two-layer garment is the poem's model of two traditions fused into one living culture."),
    ]),

    ("plain", "Section E — Crossing the Bar (Tennyson)", None, [
        q("The poem's central metaphor is",
          "life as a voyage", "death as a battle", "old age as winter", "the soul as a bird", 0,
          "Harbour, bar, tide and Pilot belong to one system, and the system is the argument."),

        q("The bar is",
          "a sandbank at a harbour mouth", "the ship's rail", "a public house", "the sea itself", 0,
          "It is crossed on a full tide, which is why stanza two prays for a tide deep enough to carry the keel over."),

        q("The speaker prays for a tide that is",
          "rough and loud", "full and silent", "low and dry", "turning back", 1,
          "\"Too full for sound and foam\" is the poem's ideal death: complete and quiet."),

        q("\"And after that the dark!\" is",
          "the poem's most consoling line", "its bluntest line and its only shock", "a joke", "a stage direction", 1,
          "The exclamation mark is the one shock in an otherwise calm poem."),

        q("The speaker prays for no sadness of farewell",
          "at his birth", "when he embarks", "at the wedding", "in the morning", 1,
          "The prayer is for those he leaves as much as for himself."),

        q("The Pilot is",
          "the ship's captain", "God", "the speaker's friend", "death", 1,
          "\"Face to face\" identifies him, and a pilot is the one who knows the water."),

        q("The tone of the poem is",
          "bitter", "calm acceptance with hope", "terrified", "comic", 1,
          "Nothing is accused and nothing is feared; the speaker agrees to the crossing and hopes for a meeting."),

        q("The poem is written in",
          "four quatrains rhyming ABAB", "rhyme royal", "blank verse", "couplets", 0,
          "The rhyme scheme and the four-stanza shape are facts the paper asks for directly."),
    ]),

    ("plain", "Section F — The Proud King (William Morris)", None, [
        q("The poem is written in",
          "blank verse", "rhyme royal", "free verse", "ballad metre", 1,
          "Seven-line stanzas rhymed ababbcc in iambic pentameter."),

        q("Jovinian's boast is that",
          "he will conquer his neighbours", "he needs no temple or priest, being a god while he lives", "his queen is the fairest", "he will build a palace", 1,
          "\"Am I not God, whiles that I live at least\" is the poem's original sin."),

        q("The king calls his forebears' land",
          "a garden", "the kennel of his dogs", "a fortress", "a desert", 1,
          "The contempt is aimed at his own line, and therefore at the source of his rank."),

        q("The king is separated from his court by",
          "a messenger", "a hart he hunts alone", "the queen", "a dream", 1,
          "The hunt is the machinery that leaves him alone and naked at the river."),

        q("While the king bathes, he loses",
          "his crown only", "his clothes and his horse", "his memory", "his sword", 1,
          "To be a king is to be dressed and mounted, and both are taken."),

        q("Who takes the king's place?",
          "Duke Peters", "an angel", "the old priest", "the porter", 1,
          "The figure in white with wings rules better than Jovinian did."),

        q("The first person to deny the king is",
          "the queen", "the porter at the ranger's gate", "Duke Peters", "the priest", 1,
          "The lowest servant denies him first, which is the poem's first irony about rank."),

        q("The king's cry is",
          "\"Am I not God?\"", "\"O Lord God, give me back myself again!\"", "\"the kennel of my dogs\"", "\"I know not\"", 1,
          "He asks for himself rather than his crown, which makes the cry repentance."),

        q("The only person who recognises the king is",
          "the queen", "the old priest", "Duke Peters", "the porter", 1,
          "Recognition in the poem is moral rather than visual."),

        q("The poem ends with",
          "the angel's death", "the king, thirty years later, having the tale written into the archives", "a battle", "the queen's apology", 1,
          "The frame turns the story into a document and a warning."),
    ]),
]
