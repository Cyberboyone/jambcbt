"""The 120-question master bank for Literature in English Volume 2.

Items are (stem, [A, B, C, D], zero-based index of the correct option, solution).
The bank mixes the method chapter with the five prescribed texts, in rough
proportion to the number of questions each text attracts.
"""


def q(stem, a, b, c, d, k, sol):
    return (stem, [a, b, c, d], k, sol)


BANK = [
    # ---- Method (10) -------------------------------------------------------
    q("The two things a set-text question tests at once are",
      "spelling and grammar", "location and judgment",
      "biography and bibliography", "speed and handwriting", 1,
      "Find the moment, then say what it does. Distractors usually get one of the two right."),

    q("The safest first move with any set-text stem is to decide",
      "which option is longest", "which text, genre and writer it belongs to",
      "which theme it illustrates", "whether it is hard", 1,
      "Place eliminates options that belong to another text before interpretation begins."),

    q("A candidate who half-knows a text is in danger because",
      "the paper is badly printed", "recognition feels like knowledge",
      "the options are all true", "the key is unpredictable", 1,
      "Distractors are built from real features of the text, so familiarity can mislead."),

    q("The instrument that turns reading into recall is",
      "a summary", "a scene card",
      "a film adaptation", "a list of characters", 1,
      "Who wanted what, what it cost, and the line you would quote."),

    q("Location before interpretation means",
      "reading the whole play twice", "finding the scene before evaluating the options",
      "memorising the writer's life", "answering the easiest questions first", 1,
      "It is the whole skill of a set-text paper, and it is what buys speed."),

    q("An option that gives only an adjective is usually wrong because",
      "adjectives are unliterary", "it makes a claim without the scene that proves it",
      "the paper avoids description", "it is too short", 1,
      "Character and theme questions want evidence, not labels."),

    q("When a quotation is used in an answer, it should be",
      "decorative", "evidential",
      "long", "memorised exactly or not at all", 1,
      "The mark is for what the words do in the text, not for having remembered them."),

    q("A true statement can still be the wrong answer when",
      "it is longer than the others", "it answers a different question from the one asked",
      "it mentions a character", "it comes from the text", 1,
      "Move six exists to catch exactly this, and it costs ten seconds."),

    q("A good revision pass over a play is organised by",
      "page number", "act and scene, with the turning point marked",
      "alphabetical order of characters", "the length of speeches", 1,
      "Structure is what the paper tests when it asks where something happens."),

    q("The four shapes of set-text question are",
      "easy, medium, hard and impossible", "fact, scene, character, and theme or technique",
      "drama, prose, poetry and film", "opening, middle, climax and ending", 1,
      "Recognising the shape tells you what you must supply, and how long it should take."),

    # ---- Harvest of Corruption (22) ---------------------------------------
    q("The country in which Harvest of Corruption is set is",
      "Nigeria", "Jacassa", "Ghana", "Cyprus", 1,
      "Jacassa is fictional, and its capital is Jabu."),

    q("Aloho's occupation before the appointment is",
      "teacher", "graduate without a job",
      "clerk in the ministry", "nurse", 1,
      "Her unemployment is the door through which the play's corruption enters."),

    q("Ochuole's method of recruitment is to",
      "advertise in a newspaper", "use an old school connection and the promise of help",
      "threaten the family", "bribe the police", 1,
      "The ordinariness of the connection is what makes the trap believable."),

    q("The meeting with Chief Ade-Amaka takes place at",
      "the ministry", "the Akpara Hotel",
      "Aloho's home", "the airport", 1,
      "The hotel, owned by Madam Hoha, is the play's site of private transaction."),

    q("Aloho is arrested",
      "in Jabu, before she travels", "at the airport, with cocaine in her luggage",
      "in the United States, at a hotel", "at the ministry, by Inaku", 1,
      "The arrest converts her from beneficiary to accused in a single scene."),

    q("The drugs are carried",
      "with Aloho's knowledge", "without Aloho's knowledge",
      "by Ochuole herself", "by Mr Ayo", 1,
      "Her ignorance is what makes her a victim rather than a courier, and the court does not care."),

    q("The case against Aloho is struck out by",
      "Justice Odili", "ACP Yakubu", "Inspector Inaku", "the Commissioner of Police", 0,
      "Odili is later sentenced to twenty years for the same transaction."),

    q("The acquittal affects Aloho by",
      "reassuring her", "showing her that the system is for sale",
      "making her rich", "driving her abroad", 1,
      "Her resignation follows, because she now knows what the office is."),

    q("Aloho's brother is a",
      "lawyer", "doctor", "policeman", "cleric", 1,
      "Doctor Okpotu can treat her and cannot protect her, which is the play's point."),

    q("The honest police officer in the play is",
      "the Commissioner", "ACP Yakubu", "Inspector Odili", "Mr Ayo", 1,
      "Yakubu receives Ogeyi's report and sets the investigation in motion."),

    q("The investigation is conducted by",
      "Inspector Inaku", "ACP Yakubu", "Justice Odili", "Britten", 0,
      "Inaku's work produces the evidence that the first case lacked."),

    q("The vouchers document",
      "a single bribe", "1.2 billion naira of public money",
      "Aloho's salary", "the hotel's accounts", 1,
      "The figure is what turns general talk of corruption into a charge that can be proved."),

    q("Mr Ayo's position is",
      "the Minister's driver", "a clerical assistant",
      "a court clerk", "the hotel manager", 1,
      "He keeps the records, and his five-year sentence is the lightest in the play."),

    q("Aloho becomes pregnant by",
      "Lanwa", "Chief Ade-Amaka", "Mr Ayo", "Olonade", 1,
      "The pregnancy is the private consequence of the public arrangement."),

    q("Aloho refuses",
      "to testify", "an abortion",
      "to leave the hospital", "to name Ogeyi", 1,
      "The refusal is her one free act after the arrest, and it costs her her life."),

    q("Aloho dies",
      "in prison", "in childbirth", "by suicide", "in a fire", 1,
      "The death is the play's final account of what the arrangement cost."),

    q("The sentence given to Ochuole is",
      "five years", "ten years", "twenty years", "twenty-five years", 1,
      "She shares her sentence with Madam Hoha, the two who supplied the person and the place."),

    q("The judge's sentence is",
      "ten years", "twenty years", "twenty-five years", "a discharge", 1,
      "Odili and the Commissioner each receive twenty, which pairs the law with its guardians."),

    q("The play's structure moves from",
      "courtroom to ministry", "hope to compromise to judgement",
      "comedy to farce", "the village to the city", 1,
      "The three rooms of the play are also its three stages of argument."),

    q("The most examinable technique in the play is",
      "the soliloquy", "the use of stage directions to place the action",
      "the sonnet", "the chorus", 1,
      "The directions carry who is present and where, which is what scene questions need."),

    q("The play's attitude to Aloho is",
      "contemptuous", "compassionate but unsentimental",
      "indifferent", "comic", 1,
      "It shows her mistakes and refuses to blame her for them."),

    q("The play's main argument about corruption is that it",
      "is the work of one bad minister", "is a system with roles for the willing and the unwilling",
      "is a foreign import", "ends when one man is jailed", 1,
      "The sentences are graded because the participation was graded."),

    # ---- Othello (28) ------------------------------------------------------
    q("Othello's rank is",
      "lieutenant", "general", "ensign", "governor", 1,
      "He commands the Venetian forces, and Iago's grievance is about the post beneath him."),

    q("Iago's military rank is",
      "general", "ancient, or ensign", "lieutenant", "captain", 1,
      "The rank is the source of his first complaint, and the word ancient recurs in the text."),

    q("Desdemona's father is",
      "Lodovico", "Brabantio", "Gratiano", "Montano", 1,
      "Brabantio dies of grief after the marriage, which Gratiano reports."),

    q("Roderigo follows Iago because",
      "he is paid to be a soldier", "he wants Desdemona and believes Iago can help",
      "he is Iago's brother", "he owes Iago money", 1,
      "Iago takes his money and promises him the woman, which makes him a dupe and then a corpse."),

    q("Cassio's weakness as a soldier is",
      "cowardice", "drink",
      "gambling", "insubordination", 1,
      "Iago uses it to get him dismissed, which begins the plot against Desdemona."),

    q("Bianca is",
      "Cassio's mistress in Cyprus", "Othello's sister",
      "a servant at the inn", "Emilia's cousin", 0,
      "She is given the handkerchief to copy, which confirms the story in Othello's eyes."),

    q("The governor of Cyprus before Othello arrives is",
      "Montano", "Lodovico", "Gratiano", "Cassio", 0,
      "Montano is wounded in the brawl, and his presence makes the disorder public."),

    q("Lodovico is",
      "a Venetian messenger from the Duke", "a Cypriot merchant",
      "Brabantio's brother", "Iago's accomplice", 0,
      "He brings the orders from Venice and witnesses Othello striking Desdemona."),

    q("Gratiano is",
      "Brabantio's brother", "the Duke of Venice",
      "Cassio's lieutenant", "a clown", 0,
      "He is present at the play's end, and it is he who reports Brabantio's death."),

    q("The Turkish threat to Cyprus ends when",
      "Othello defeats the fleet", "a storm destroys the Turkish fleet",
      "the Duke negotiates", "Cassio burns the harbour", 1,
      "The storm removes the external war and leaves the internal one."),

    q("Iago plans to leave the handkerchief",
      "in Desdemona's room", "in Cassio's lodging",
      "on the battlefield", "with Bianca", 1,
      "Planting it in Cassio's room is what turns the cloth into evidence."),

    q("The green-eyed monster speech is spoken by",
      "Othello", "Iago", "Desdemona", "Emilia", 1,
      "The warning is also the instruction, which is Iago's method throughout."),

    q("The character who cries O, I have lost my reputation is",
      "Othello", "Cassio", "Roderigo", "Iago", 1,
      "Cassio's grief for his name is what Iago mocks in the same scene."),

    q("Othello's fit in Act 4 is described as",
      "a fever", "the lethargy, or epilepsy",
      "a wound", "drunkenness", 1,
      "The collapse of his body matches the collapse of his language."),

    q("Othello strikes Desdemona",
      "in private", "in public, before Lodovico",
      "in the Senate", "during the brawl", 1,
      "The public blow is the moment the Venetian estimate of him collapses."),

    q("Emilia is",
      "Iago's wife and Desdemona's attendant", "Cassio's wife",
      "Brabantio's daughter", "a courtesan", 0,
      "Her position between the two households is what makes her confession possible and fatal."),

    q("Roderigo is killed by",
      "Cassio", "Iago", "Othello", "Bianca", 1,
      "Iago stabs him in the dark to keep him quiet, and the murder is presented as a street fight."),

    q("Cassio is wounded by",
      "Roderigo, in a quarrel", "Iago, from behind",
      "Othello, in a rage", "Montano", 1,
      "Iago's method is always the same: he makes others do the visible work."),

    q("Emilia is killed by",
      "Othello", "Iago", "Cassio", "her own hand", 1,
      "Her confession costs her her life, and her death is the play's proof of Iago's guilt."),

    q("The handkerchief is described as having",
      "a border of gold", "a web of strawberries",
      "the family crest", "a Turkish inscription", 1,
      "The strawberry pattern is the detail that identifies it in the final scene."),

    q("Othello's Farewell the tranquil mind speech comes",
      "before the temptation", "after Iago has worked on him with the handkerchief",
      "in the Senate", "at the end of the play", 1,
      "It is the moment the soldier's identity gives way to the husband's fear."),

    q("Desdemona's plea to Othello is made on behalf of",
      "Roderigo", "Cassio", "Emilia", "Bianca", 1,
      "Her advocacy is exactly what Iago uses as the first evidence of an affair."),

    q("Iago's plan to make Othello overhear Cassio speaking of Bianca works because",
      "Cassio says Desdemona's name", "the handkerchief is mentioned and Othello takes it as proof",
      "Bianca confesses", "Emilia translates", 1,
      "The joke about the handkerchief is heard as a confession of adultery."),

    q("Brabantio dies of",
      "a wound", "grief",
      "poison", "old age in his bed, peacefully", 1,
      "Gratiano says the marriage was mortal to him, which closes the play's account of the father."),

    q("At the end of the play, Cyprus is left in the charge of",
      "Cassio", "Iago", "Lodovico", "Montano", 0,
      "The ruined lieutenant is restored, which is the play's one act of repair."),

    q("Othello's final speech asks to be reported as",
      "a murderer", "one that loved not wisely but too well",
      "a soldier betrayed", "an innocent man", 1,
      "The speech is a self-portrait, and the paper asks whether it is honest or a last performance."),

    q("The play has",
      "three acts", "five acts",
      "seven acts", "no act divisions", 1,
      "The five-act shape places the temptation at the centre and the murder in the fifth."),

    q("The play's treatment of reputation is concentrated in",
      "the war scenes", "Cassio's lament and Iago's reply",
      "the willow scene", "the Duke's speech", 1,
      "The exchange states the play's argument about name, worth and opinion."),

    # ---- Faceless (18) -----------------------------------------------------
    q("Faceless is set in",
      "Lagos", "Accra", "Kumasi", "Jabu", 1,
      "The city's markets, slum and suburbs are the novel's three worlds."),

    q("The body is found behind",
      "a church", "a Rasta hairdressing kiosk",
      "a school", "a hospital", 1,
      "The kiosk is in Agbogbloshie market, and the place is part of the story."),

    q("The dead girl is at first assumed to be",
      "a student", "a kayayoo",
      "a trader", "a nurse", 1,
      "The assumption is a classification, and the novel is the work of undoing it."),

    q("Fofo is",
      "Baby T's sister", "Baby T's mother", "a MUTE officer", "a market trader", 0,
      "The family relation is what turns a public death into a private search."),

    q("Fofo disguises herself as",
      "a trader", "a boy", "a student", "a nurse", 1,
      "The disguise is a survival strategy and a comment on the street's treatment of girls."),

    q("Maa Tsuru is",
      "the girls' mother", "the brothel keeper", "a radio presenter", "a police officer", 0,
      "Her poverty and her choices are the novel's hardest material."),

    q("Kwei is",
      "Maa Tsuru's husband who left", "Fofo's employer",
      "a detective", "a market lord", 0,
      "His departure is the first break in the family."),

    q("Kpakpo is",
      "a police officer", "Maa Tsuru's lover who abused and sold Baby T",
      "a MUTE driver", "Fofo's teacher", 1,
      "The betrayal comes from inside the household, which is the novel's pattern."),

    q("Onko kills Baby T and then",
      "flees the country", "commits suicide",
      "confesses on radio", "is acquitted", 1,
      "The suicide closes the case without an answer, which is the novel's point."),

    q("Poison is",
      "a street lord", "a doctor", "a journalist", "a policeman", 0,
      "He takes what the street children earn, and his name is his function."),

    q("Maami Broni telephones",
      "the police", "a radio station",
      "the hospital", "MUTE", 1,
      "Her call makes the case public, and then she disappears."),

    q("Sylv Po is",
      "a radio presenter", "a lawyer", "a policeman", "a market trader", 0,
      "The radio is the novel's public sphere, and he is its voice."),

    q("The head of MUTE is",
      "Kabria", "Dina", "Vickie", "Aggie", 1,
      "Dina sets the limits within which Kabria can act."),

    q("Kabria is",
      "a programme officer", "a policewoman", "a teacher", "a nurse", 0,
      "Her job is the novel's answer to the question of what an institution can do."),

    q("Odarley is",
      "Fofo's friend who is not rescued", "Fofo's sister", "a MUTE officer", "a market woman", 0,
      "The unfinished rescue is the novel's honesty about its own ending."),

    q("The clue to the attacker's left-handedness is",
      "a footprint", "a handprint on the right cheek",
      "a torn shirt", "a witness", 1,
      "A left hand lands on the right cheek, and the detail points to a particular man."),

    q("The novel is divided into",
      "two parts", "three parts", "five acts", "twelve chapters", 1,
      "The parts move between the street, the investigation and the public story."),

    q("The title refers to the way",
      "the city records a poor child without a name", "the narrator hides her identity",
      "the market is crowded", "the radio is anonymous", 0,
      "The novel's plot is the conversion of a category into a person."),

    # ---- Lonely Days (20) --------------------------------------------------
    q("Lonely Days is set in",
      "Kufi", "Olode", "Apon", "Ibadan", 0,
      "The other three are the places to which Yaremi's children have moved."),

    q("Yaremi's husband Ajumobi was a",
      "blacksmith", "hunter", "drummer", "carpenter", 1,
      "His hunting and farming are the substance of her memories of him."),

    q("Yaremi's trade is",
      "pottery", "taffeta dyeing", "weaving", "brewing", 1,
      "The indigo work is the economic base of her independence."),

    q("The novel begins with",
      "an entrance verse", "a court scene", "a funeral", "a letter", 0,
      "The twenty-five-line verse states the theme before the story can complicate it."),

    q("The novel has",
      "ten chapters", "fourteen chapters", "twenty chapters", "five acts", 1,
      "Fourteen chapters and an entrance verse, and the chapters are short movements."),

    q("Segi lives at",
      "Olode", "Apon", "Ibadan", "Kufi", 0,
      "She is married to Wande, and her son is Woye."),

    q("Wura is married to",
      "Wande", "Sokoti", "Ayanwale", "Lanwa", 1,
      "Sokoti is the blacksmith called the Iron Man, and the couple live at Apon."),

    q("Alani is",
      "a carpenter in Ibadan", "a drummer in Kufi", "a hunter", "a teacher", 0,
      "He is the absent son, and his absence is part of the loneliness."),

    q("Woye is Yaremi's",
      "son", "grandson", "nephew", "brother", 1,
      "He pounds taffeta with her until he leaves for school."),

    q("Dedewe is forced to",
      "confess to sins she did not commit", "leave Kufi",
      "marry her brother-in-law", "shave her head twice", 0,
      "The confession shows suspicion turned into ritual."),

    q("Fayoyin is made to",
      "lick the libation", "sing a dirge", "carry water", "sleep outside", 0,
      "The body is used as evidence, which is the logic of the rite."),

    q("Radeke is accused of",
      "stealing", "singing a lying dirge",
      "cursing the elders", "refusing to marry", 1,
      "Even her grief has to be authorised by the community."),

    q("The suitor who claims Yaremi as an inheritance is",
      "Ayanwale", "Olonade", "Lanwa", "Deyo", 2,
      "Lanwa is Ajumobi's half-brother, and his claim treats the widow as property."),

    q("Ayanwale is",
      "a drummer and wood-carver", "a wealthy trader", "a priest", "a carpenter", 0,
      "His suit is conducted as a performance, which is his character."),

    q("Uncle Deyo is the man who",
      "leads the elders", "repairs Yaremi's roof",
      "owns the market", "marries Radeke", 1,
      "He is Ajumobi's friend, and the kindness is the novel's one image of solidarity."),

    q("Widows in Kufi must use",
      "the widow's road to the stream", "the market road", "the burial path", "the church gate", 0,
      "The neglected path is a daily statement about the widow's status."),

    q("At the cap-picking ceremony Yaremi",
      "picks Ayanwale", "refuses to pick",
      "is kept away", "picks for her daughter", 1,
      "The public refusal is the novel's central act."),

    q("The elders respond to the refusal with",
      "acceptance", "threats to her property and her place",
      "a fine", "exile at once", 1,
      "The threat is the community's final sanction, and the ending is her answer."),

    q("The novel ends with Yaremi",
      "leaving Kufi", "removing her widowhood garment and staying",
      "marrying Lanwa", "dying", 1,
      "The removal is a claim to a different status, not an escape."),

    q("The narrative shifts into Yaremi's own voice in order to",
      "confuse the reader", "show a woman where the village sees only a widow",
      "quote the elders", "summarise the plot", 1,
      "Interiority is the novel's main technical resource."),

    # ---- Native Son (22) ---------------------------------------------------
    q("Native Son is set in",
      "New York", "Chicago", "Detroit", "the rural South", 1,
      "The South Side, in the late 1930s, with the Dalton mansion a bus ride away."),

    q("The three books of Native Son are",
      "Fear, Flight, Fate", "Fear, Hunger, Fate",
      "Flight, Trial, Death", "Crime, Punishment, Fate", 0,
      "The titles are the structure: condition, action, judgment."),

    q("Bigger Thomas is",
      "twenty", "thirty", "sixteen", "forty", 0,
      "His youth is part of the novel's argument about what the city does to a boy."),

    q("Bigger's family lives in",
      "a two-bedroom flat", "one room",
      "a house of their own", "a relative's compound", 1,
      "The single room is the physical form of the family's poverty."),

    q("The novel opens with Bigger",
      "killing a rat", "driving a car", "in court", "at the relief office", 0,
      "The rat establishes a world in which killing is ordinary before any human dies."),

    q("Bigger's job with the Daltons comes through",
      "a friend", "the relief agency", "a newspaper", "Jan", 1,
      "The relief office is the state's provision and the route into the house."),

    q("Mr Dalton's income comes from",
      "shipping", "tenement property on the South Side",
      "a hotel chain", "a newspaper", 1,
      "The philanthropy and the rent come from the same buildings."),

    q("Mrs Dalton is",
      "blind", "deaf", "a Communist", "a journalist", 0,
      "The one person who cannot see colour is the one whose approach forces the killing."),

    q("Mary Dalton is",
      "Bigger's sister", "the Daltons' daughter",
      "the cook", "Jan's sister", 1,
      "Her attempt at equality is part of what makes the night impossible."),

    q("Jan Erlone is",
      "a policeman", "Mary's boyfriend and a Communist",
      "the family lawyer", "a reporter", 1,
      "He is suspected first and becomes one of the few whites who treats Bigger as a person."),

    q("Bigger kills Mary because he is trying to",
      "rob the house", "keep her quiet while her mother is at the door",
      "punish her for an insult", "obey Jan", 1,
      "The intent is silence, and the death is the accident that the novel turns on."),

    q("After Mary's death, Bigger",
      "calls the police", "burns the body in the furnace",
      "buries her in the garden", "takes her to hospital", 1,
      "The furnace is both the method of disposal and the evidence that convicts him."),

    q("Bessie Mears is killed",
      "accidentally", "deliberately, with a brick",
      "by Britten", "by Jan", 1,
      "The second death is chosen, and the difference from the first is the novel's moral centre."),

    q("The private investigator hired by the Daltons is",
      "Max", "Britten", "Buckley", "Jan", 1,
      "Britten investigates, and his method is racial sorting before evidence."),

    q("The State's Attorney is",
      "Max", "Buckley", "Britten", "Dalton", 1,
      "Buckley prosecutes, and his speech answers Max's."),

    q("Bigger's lawyer is",
      "Buckley", "Max", "Britten", "a court clerk", 1,
      "Max explains Bigger to a court that has already decided what he is."),

    q("Before the trial, Bigger sends the Daltons",
      "an apology", "a ransom note",
      "a confession", "a threat", 1,
      "The note turns the death into a kidnapping and deepens the case against him."),

    q("The newsreel scene shows Bigger",
      "falling asleep", "watching the official version of his own life",
      "meeting Mary", "being arrested", 1,
      "Wright puts the reader in the audience and then reminds us who is in the room."),

    q("Bigger's father died",
      "in a race riot in the South", "in the war",
      "of illness in Chicago", "in a car crash", 0,
      "The family came north for a better life, and the novel shows what arrived."),

    q("The plan to rob Blum's store fails because",
      "the police arrive", "Bigger cannot act against a white man's store with Gus",
      "Blum has closed", "Jan warns Blum", 1,
      "The scene marks the line Bigger's world cannot cross, until the Dalton house crosses it for him."),

    q("Bigger is captured",
      "in the Dalton house", "on the rooftops after a chase",
      "in a courtroom", "at the relief office", 1,
      "The chase is the climax of Flight, and the snow closes the city around him."),

    q("At the end of the novel Bigger",
      "escapes", "is acquitted", "is sentenced to death", "is pardoned", 2,
      "The trial ends in execution, and the last scene is the cell."),
]
