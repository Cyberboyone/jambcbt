"""Paper 2 — forty questions, section by section."""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


OTHELLO = """DESDEMONA: My mother had a maid called Barbary.
She was in love, and he she loved proved mad
And did forsake her. She had a song of willow,
An old thing 'twas, but it expressed her fortune,
And she died singing it. That song tonight
Will not go from my mind.

EMILIA: Shall I go fetch your night-gown?

DESDEMONA: No, unpin me here.
This Lodovico is a proper man.

EMILIA: A very handsome man.

DESDEMONA: He speaks well.

EMILIA: I know a lady in Venice would have walked barefoot to Palestine for a touch of his nether lip.

DESDEMONA: (singing) The poor soul sat sighing by a sycamore tree,
Sing all a green willow;
Her hand on her bosom, her head on her knee,
Sing willow, willow, willow."""

DRAMA = """(A small shop at the edge of a motor park. A counter, a stool, and a wall of tinned milk. MALLAM SALISU, sixty, sits behind the counter. HALIMA, seventeen, stands with a plastic bag.)

SALISU: Put it on the counter.
HALIMA: I bought it.
SALISU: Put it on the counter, and then we will talk about where you bought it.
HALIMA: (does not move) You have already decided.
SALISU: I counted the milk twice this morning. There were twelve. There are eleven.
HALIMA: Then count again.
SALISU: (quietly) I am not a foolish man, Halima.
HALIMA: No. You are a tired one.
(A pause. He looks at the bag, then at her shoes.)
SALISU: Your mother's shoes.
HALIMA: She gave them to me.
SALISU: She gave them to you when she could walk in them.
(HALIMA puts the bag on the counter. She does not open it.)
SALISU: Open it.
HALIMA: No.
SALISU: (rising) Halima.
HALIMA: If I open it, you will be right, and then you will have to do something. If I do not open it, we can both be wrong until closing time.
(He sits down slowly. Somewhere a bus horn sounds.)"""

PAPER_2 = [
    ("script", "Section A — Shakespeare: Othello, Act 4, Scene 3", OTHELLO, [
        q("Barbary's story is relevant because it is about a woman",
          "who married a soldier", "who was forsaken by the man she loved",
          "who left Venice", "who worked for Desdemona's mother", 1,
          "The parallel is Desdemona's own fear, sung in the third person."),

        q("The willow song is traditionally associated with",
          "marriage", "forsaken love",
          "soldiers returning home", "the feast of Christmas", 1,
          "The refrain gives the scene its title and its omen."),

        q("Desdemona says the song will not go from her mind because",
          "she has forgotten the words", "it expresses her own fear of being forsaken",
          "Emilia keeps singing it", "Othello has asked for it", 1,
          "The song is the play's way of letting her say what she cannot say directly."),

        q("Emilia's remark about the lady who would walk barefoot to Palestine functions as",
          "a threat", "a moment of ordinary talk before the murder",
          "an accusation", "a prayer", 1,
          "The comedy is domestic and trivial, and that is what makes the scene unbearable in retrospect."),

        q("The dramatic irony of the scene lies in the fact that",
          "Desdemona is preparing for bed while Othello is preparing to kill her",
          "Emilia knows about the handkerchief", "Lodovico is listening",
          "Cassio is in the room", 0,
          "The audience has heard Othello's decision, and the ordinary business of undressing becomes terrible."),

        q("Desdemona's attitude to Othello in this scene is",
          "fearful and resentful", "loyal and still affectionate",
          "indifferent", "openly rebellious", 1,
          "She obeys his instruction to go to bed, and defends him to Emilia in the lines that follow."),

        q("Emilia's role in the scene is to",
          "accuse Desdemona", "provide the ordinary female world against which the tragedy is measured",
          "fetch Othello", "sing the song alone", 1,
          "She is the practical, worldly voice, and her loyalty will cost her her life."),
    ]),

    ("script", "Section B — Unseen Drama", DRAMA, [
        q("The conflict in the extract is over",
          "the price of tinned milk", "whether Halima will open the bag",
          "who owns the shop", "whether the bus will come", 1,
          "The bag is the object on which the whole scene turns."),

        q("Salisu's evidence against Halima is",
          "a witness's statement", "the difference between his morning count and the present count",
          "a receipt", "her confession", 1,
          "Twelve became eleven, and the arithmetic is his whole case."),

        q("When Halima says You are a tired one, she is",
          "insulting his age", "turning the accusation back on him with sympathy",
          "admitting the theft", "asking for help", 1,
          "The line disarms him by describing him rather than defending herself."),

        q("The detail of the mother's shoes is significant because it",
          "shows that Halima is poor", "reminds Salisu of a person he knows and a time when she could walk",
          "proves that Halima stole them", "explains the price of the milk", 1,
          "It introduces the family history that the argument is really about."),

        q("The turning point of the extract is",
          "the bus horn", "Halima putting the bag on the counter without opening it",
          "Salisu sitting down at the start", "Emilia's entrance", 1,
          "The gesture concedes the object and refuses the proof, which is the scene's whole strategy."),

        q("Halima's last speech is best described as",
          "a confession", "a piece of logic that offers both of them a way out",
          "a threat of violence", "a plea for mercy", 1,
          "She reframes the choice as one about what Salisu is willing to know."),

        q("The stage directions in the extract do most work in",
          "describing the weather", "marking the pauses and movements that carry the pressure",
          "naming the characters", "telling the actors where to stand only", 1,
          "The pauses, the look at the shoes, and the slow sitting down are the scene's emotional plot."),
    ]),

    ("plain", "Section C — Othello", "", [
        q("Iago's plot depends on",
          "Othello's love of money", "Othello's trust in him and his own ability to seem honest",
          "Cassio's ambition", "Desdemona's disloyalty", 1,
          "Everyone in the play calls him honest, and the repetition is the measure of the deception."),

        q("The handkerchief was given to Othello's mother by",
          "a Venetian senator", "an Egyptian charmer",
          "a Turkish soldier", "Brabantio", 1,
          "The charm and its history are what make a piece of cloth into evidence."),

        q("Cassio's rank at the start of the play is",
          "lieutenant", "ensign", "governor of Cyprus", "general", 0,
          "The promotion Iago wanted is the play's first grievance and its first cause."),

        q("Emilia's confession matters because it",
          "saves Desdemona", "reveals that she gave the handkerchief to Iago",
          "proves Cassio's guilt", "clears Othello", 1,
          "The truth arrives one scene too late, which is the pattern of the play."),

        q("At the end of the play, Othello's successor in Cyprus is",
          "Cassio", "Iago", "Lodovico", "Montano", 0,
          "The man Iago ruined is restored, and the restoration is the play's only justice."),

        q("Brabantio's death is reported as caused by",
          "a duel", "grief at his daughter's marriage",
          "poison", "the Turkish war", 1,
          "The father who was refused dies of the refusal, and the report closes that strand."),
    ]),

    ("plain", "Section D — Lonely Days and Native Son", "", [
        q("In Lonely Days, the widow who is made to confess to sins she did not commit is",
          "Radeke", "Dedewe", "Fayoyin", "Yaremi", 1,
          "Dedewe's confession shows suspicion converted into ritual."),

        q("Yaremi's refusal at the cap-picking ceremony is powerful because it is",
          "private", "public", "silent", "reversed", 1,
          "The elders and suitors are present, so the refusal is a political act."),

        q("The novel's entrance verse is significant because it",
          "summarises the chapters", "states the theme of widowhood before the story begins",
          "lists the characters", "names the village", 1,
          "It is the author's thesis in his own voice, and it frames everything that follows."),

        q("Woye's departure affects Yaremi by",
          "giving her more money", "removing her daily company",
          "bringing Alani home", "ending the rites", 1,
          "The loneliness of the title deepens when the child goes to school."),

        q("In Lonely Days, the elders' threat to Yaremi is to",
          "take her property and her place in the village", "send her to Ibadan",
          "try her in a court", "shave her head again", 0,
          "The threat is the community's final sanction and the reason the ending is brave."),

        q("In Native Son, Bigger's job with the Daltons begins",
          "through a friend at the pool hall", "through the relief agency",
          "through a newspaper advertisement", "through Jan Erlone", 1,
          "The relief office is both the family's support and the route into the house."),

        q("Bigger's killing of Mary is caused by",
          "a plan to rob the house", "the fear of being discovered in her room",
          "a quarrel about Jan", "an order from Bessie", 1,
          "Mrs Dalton's approach at the door turns silence into death."),

        q("The press in Native Son treats Bigger as",
          "a victim", "a monster and a symbol",
          "a minor offender", "a hero", 1,
          "The headlines build a public figure who has little to do with the boy in the cell."),

        q("Max's defence of Bigger argues that the court must consider",
          "the evidence of the handkerchief", "the conditions that produced the crime",
          "Bigger's confession", "the wishes of the Dalton family", 1,
          "The speech is the novel's essay on environment and responsibility."),

        q("Bigger's final claim to Max is that",
          "he is innocent", "what he killed for, he is",
          "he wants to see his mother", "he will escape", 1,
          "The paradox is the novel's last word on identity, and it is not a resolution."),
    ]),

    ("plain", "Section E — Faceless and Harvest of Corruption", "", [
        q("In Faceless, the clue that identifies a left-handed attacker is",
          "a footprint", "a handprint on the right cheek",
          "a torn shirt", "a telephone record", 1,
          "A left hand lands on the right cheek, and the detail is the novel's one piece of proof."),

        q("Maami Broni's telephone call to the radio station is significant because it",
          "confesses the crime", "makes the death a public story and then a public forgetting",
          "clears Onko", "identifies Fofo", 1,
          "The novel is as interested in publicity as in justice."),

        q("The novel's ending is best described as",
          "a complete resolution", "partial rescue with an unresolved remainder",
          "a comic ending", "a trial scene", 1,
          "Fofo is taken in, and Odarley is not, and the novel insists on the difference."),

        q("In Harvest of Corruption, Aloho's vulnerability is increased by",
          "her wealth", "her gratitude to the people who help her",
          "her family's power", "her refusal to travel", 1,
          "Gratitude stops her asking questions, which is how the network recruits."),

        q("The play's title refers to",
          "a farming ceremony", "the consequences that corruption eventually produces",
          "the Minister's estate", "a court judgement", 1,
          "The final trial is the harvest, and each sentence is proportionate to the part played."),

        q("Ogeyi and Inspector Inaku matter because they",
          "profit from the case", "are the only forces in the play that cannot be bought",
          "defend the Minister", "replace Aloho", 1,
          "Their persistence is what makes the courtroom ending possible."),
    ]),

    ("plain", "Section F — Context and Terms", "", [
        q("A tragic flaw is",
          "a weakness in the writing", "a quality in the hero that contributes to his downfall",
          "the villain's plan", "a mistake in the staging", 1,
          "Othello's capacity for jealousy is the usual example, though the play spreads responsibility further."),

        q("An aside is",
          "a speech to the audience that other characters do not hear", "a long speech by one character alone",
          "a scene between two minor characters", "the closing lines of an act", 1,
          "Iago's asides let the theatre into the plot while the stage remains ignorant."),

        q("Comic relief in a tragedy is",
          "a joke that ruins the mood", "a lighter scene that heightens the tragic effect by contrast",
          "the clown's punishment", "a change of genre", 1,
          "The clown in Othello and the willow-scene talk both work this way."),

        q("Blank verse is",
          "rhymed couplets", "unrhymed iambic pentameter",
          "free verse", "prose dialogue", 1,
          "Othello's formal speech is in blank verse, and his collapse into prose is part of the tragedy."),
    ]),
]
