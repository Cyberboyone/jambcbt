"""Paper 1 — forty questions, section by section.

A section is (kind, heading, lead, items) where kind is "passage", "verse",
"script" or "plain"; `items` is a list of (stem, [A, B, C, D], zero-based key,
solution). The unseen extract is written for this book.
"""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


OTHELLO = """OTHELLO: It is the cause, it is the cause, my soul.
Let me not name it to you, you chaste stars!
It is the cause. Yet I'll not shed her blood,
Nor scar that whiter skin of hers than snow,
And smooth as monumental alabaster.
Yet she must die, else she'll betray more men.
Put out the light, and then put out the light.
If I quench thee, thou flaming minister,
I can again thy former light restore,
Should I repent me; but once put out thy light,
Thou cunning'st pattern of excelling nature,
I know not where is that Promethean heat
That can thy light relume."""

PROSE = """The bus filled at Ilasa, and by the time it reached the bridge it was carrying three more passengers than it had seats. Chidi stood in the aisle with his bag between his feet, and every time the conductor called out a stop the bag moved a little further from him, as though the bus were quietly taking it.

He had paid for a seat. A woman with a baby had taken it, and he had stood up before he had decided to. That was how most of his decisions were made: the body first, the argument afterwards.

At Ore a man in a brown shirt got on and stood so close that Chidi could smell the palm oil on his fingers. The man asked where he was going, and Chidi told him. The man said he had a brother in the same town, that they should travel together, and he said it in the voice of a person who had already decided the matter.

Chidi said yes. He heard himself say it, and he knew, in the same moment, that he would spend the rest of the journey working out how to leave."""

PAPER_1 = [
    ("script", "Section A — Shakespeare: Othello, Act 5, Scene 2", OTHELLO, [
        q("The cause to which Othello refers is",
          "the war in Cyprus", "Desdemona's supposed infidelity",
          "Iago's dishonesty", "his own loss of rank", 1,
          "The repetition steadies him for a killing he has decided to call a sacrifice."),

        q("The repeated phrase It is the cause shows Othello",
          "losing control of his language", "converting a murder into an act of justice",
          "forgetting Desdemona's name", "praying for forgiveness", 1,
          "He needs a cause because without one the killing is only a husband's violence."),

        q("In Put out the light, and then put out the light, the two lights are",
          "the moon and the stars", "the lamp and Desdemona's life",
          "his sword and his honour", "the sun and the fire", 1,
          "The pun is the play's clearest statement that he knows the difference between what can be relit and what cannot."),

        q("The image of monumental alabaster makes Desdemona seem",
          "warm and living", "like a figure carved on a tomb",
          "like a statue in a market", "like a soldier's wife", 1,
          "The image is beautiful and funereal at once, which is the play's habit in this speech."),

        q("Yet she must die, else she'll betray more men presents the killing as",
          "a private revenge", "a public benefit",
          "an accident", "a religious duty", 1,
          "He argues from consequences rather than from injury, which is the rhetoric of a man justifying himself."),

        q("The dramatic irony of the speech is that",
          "Othello knows the truth", "the audience knows Desdemona is innocent",
          "Desdemona is awake", "Iago is in the room", 1,
          "The theatre has seen the handkerchief planted, so every word of the speech works against the speaker."),

        q("Desdemona is, during this speech",
          "praying in the chapel", "asleep in bed",
          "talking to Emilia", "walking in the garden", 1,
          "The stillness of the listener makes the speech a soliloquy in effect, though another person is present."),

        q("The tone of the extract is best described as",
          "comic and relaxed", "tender and terrible at the same time",
          "angry and uncontrolled", "cold and businesslike", 1,
          "The beauty of the language and the horror of the intention are held together, and that is the tragedy."),
    ]),

    ("passage", "Section B — Unseen Prose", PROSE, [
        q("The passage is narrated in",
          "the first person by Chidi", "the third person, limited to Chidi's mind",
          "the third person by an omniscient narrator who knows everyone", "the second person", 1,
          "We are told what Chidi thinks and feels, and nothing that he cannot know."),

        q("The bag moving further from him is described as though",
          "the bag is alive", "the bus were quietly taking it",
          "the conductor were stealing it", "the woman had asked for it", 1,
          "The mild personification makes the journey feel like a small loss that Chidi cannot prevent."),

        q("Chidi's character is established chiefly by",
          "his speech", "his actions before his thoughts",
          "his clothes", "his job", 1,
          "He stands up before deciding, which is the passage's account of him in one gesture."),

        q("The sentence the body first, the argument afterwards means that Chidi",
          "is physically strong", "acts before he reasons, and justifies afterwards",
          "thinks quickly in a crisis", "trusts other people's arguments", 1,
          "It is the passage's diagnosis of his politeness, and it prepares the ending."),

        q("The man in the brown shirt speaks in the voice of a person who",
          "is uncertain of his welcome", "has already decided the matter",
          "is asking for directions", "is afraid of the journey", 1,
          "The detail tells us that the man takes agreement for granted, before Chidi gives it."),

        q("The phrase palm oil on his fingers suggests",
          "the man's trade", "a closeness that Chidi cannot escape",
          "the man's wealth", "the heat of the bus", 1,
          "It is a smell rather than a message, and it makes the intrusion physical."),

        q("The passage's main theme is",
          "the danger of travel", "the difficulty of refusing a confident stranger",
          "the dishonesty of conductors", "the hardship of poverty", 1,
          "Every detail serves the same subject: how a polite person is recruited into an arrangement he does not want."),

        q("The last sentence is ironic because Chidi",
          "has agreed to travel with the man and is already planning to escape",
          "has refused the man and regrets it", "has missed his bus", "is asleep", 0,
          "The yes and the escape plan occupy the same moment, which is the passage's quiet joke at his expense."),
    ]),

    ("plain", "Section C — Harvest of Corruption", "", [
        q("Aloho's appointment as protocol officer is significant because the post",
          "pays a small salary", "gives her the travel and access the plot needs",
          "is in the Ministry of Justice", "requires no qualifications", 1,
          "The title is a cover for the journey, which is why the appointment is the trap's hinge."),

        q("The person who first warns Aloho about Ochuole is",
          "Madam Hoha", "Ogeyi", "Doctor Okpotu", "Inspector Inaku", 1,
          "Ogeyi's warning is the play's early statement of the truth, and Aloho's disregard of it is the plot."),

        q("The case against Aloho is struck out because",
          "the drugs were not hers", "the Minister has bought the court and the police",
          "she agrees to testify", "the customs officers withdraw", 1,
          "The acquittal is the play's indictment: the evidence exists and the case disappears."),

        q("Aloho's reaction to her discharge is to",
          "celebrate with Ochuole", "resign, because the acquittal frightens her more than the arrest",
          "leave the country again", "marry the Minister", 1,
          "The acquittal teaches her what the system is, and her resignation is the first consequence of that knowledge."),

        q("The vouchers that make the case provable are supplied by",
          "ACP Yakubu", "Mr Ayo", "Justice Odili", "Madam Hoha", 1,
          "Ayo is the clerical assistant whose records survive the destruction of everything else."),

        q("Which sentence is correct?",
          "Chief receives ten years and Ochuole twenty-five", "Chief receives twenty-five years and Ochuole ten",
          "Both receive twenty years", "Chief is acquitted and Ochuole is convicted", 1,
          "The sentences are graded, and the ranking of the six is a favourite question."),

        q("Madam Hoha's punishment includes",
          "deportation", "the sealing of her hotel",
          "a life sentence", "a fine only", 1,
          "The place is sentenced with the person, which is the play's view of the venue."),

        q("The play ends in a courtroom because",
          "the audience enjoys trials", "the play's subject is public accountability, not private grief",
          "Aloho's death needs a witness", "the Minister confesses", 1,
          "The ending is the harvest: the death is mourned earlier, and the system is judged at the end."),
    ]),

    ("plain", "Section D — The Three Novels", "", [
        q("In Faceless, the dead girl is first classified as",
          "a missing student", "a kayayoo",
          "a trader's daughter", "a hospital patient", 1,
          "The classification is the novel's subject: a category replaces a name."),

        q("Fofo's disguise as a boy is best understood as",
          "a game", "a survival strategy on the street",
          "a punishment from her mother", "a way of getting to school", 1,
          "It shows what the street does to a female child, and it is removed only when she is taken in."),

        q("In Faceless, Kabria works for",
          "the police", "a radio station", "MUTE", "a hospital", 2,
          "MUTE is the NGO whose limits the novel is honest about."),

        q("In Lonely Days, the cap-picking ceremony requires the widow to",
          "choose a new husband", "shave her head", "lick the libation", "confess her sins", 0,
          "The other rites are separate; the cap is the remarriage, and Yaremi refuses it."),

        q("Lanwa's claim to Yaremi rests on",
          "his wealth", "his kinship with her dead husband",
          "the elders' vote", "a debt", 1,
          "As Ajumobi's half-brother he argues that the widow is part of the estate."),

        q("In Lonely Days, Yaremi's trade is important because it",
          "makes her the richest woman in Kufi", "gives her the means to refuse a suitor",
          "brings her a new husband", "keeps her son at home", 1,
          "A woman who earns can refuse; the novel is careful to show the work."),

        q("In Native Son, Bigger's first human victim is killed",
          "deliberately, with a brick", "accidentally, while he tries to silence her",
          "in a car accident", "by Jan Erlone", 1,
          "Mary's death is the accident, and the novel's argument depends on the distinction."),

        q("In Native Son, Bessie Mears is killed because",
          "she betrays Bigger to the police", "she knows too much and might be a danger to him",
          "she attacks him first", "Mary's mother orders it", 1,
          "The second killing is deliberate, which is why it is the novel's moral centre."),

        q("The lawyer who defends Bigger is",
          "Buckley", "Britten", "Max", "Jan", 2,
          "Max explains him; Buckley prosecutes; Britten investigates."),

        q("At the end of Native Son, Bigger",
          "escapes to the North", "is acquitted", "is sentenced to death", "is pardoned", 2,
          "The trial ends in execution, and the last scene is the cell."),
    ]),

    ("plain", "Section E — Technique and Terminology", "", [
        q("A soliloquy is",
          "a speech to another character", "a speech in which a character alone on stage reveals his thoughts",
          "a song in a play", "a stage direction", 1,
          "Iago's soliloquies are the audience's only reliable account of his intentions."),

        q("Dramatic irony occurs when",
          "a character says the opposite of what he means", "the audience knows something the characters do not",
          "the play ends unhappily", "two characters speak at once", 1,
          "Othello calling Iago honest is the standard example."),

        q("A foil is",
          "a character whose qualities set off another's by contrast", "a comic scene inserted into a tragedy",
          "a repeated image", "the final speech of a play", 0,
          "Emilia's loyalty sets off Desdemona's obedience, and Max sets off Buckley."),

        q("The turning point of a plot is",
          "the exposition", "the moment at which the action can no longer be reversed",
          "the resolution", "the epilogue", 1,
          "In Othello it is the temptation scene; in Harvest it is the appointment."),

        q("Catharsis, in tragedy, refers to",
          "the punishment of the villain", "the purging of pity and fear in the audience",
          "the hero's recognition scene", "the opening speech", 1,
          "The term is Aristotle's, and it describes an effect on the audience rather than on the characters."),

        q("Free indirect style is best described as",
          "direct quotation of a character's speech", "narration that takes on a character's thoughts without quotation marks",
          "a play within a play", "a poem in prose", 1,
          "Wright uses it so that Bigger's fear becomes the reader's atmosphere."),
    ]),
]
