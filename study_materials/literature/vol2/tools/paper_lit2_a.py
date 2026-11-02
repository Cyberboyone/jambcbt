"""Paper 1 — drama. Forty questions, section by section.

A section is (kind, heading, lead, items) where kind is "script", "passage" or
"plain"; `items` is a list of (stem, [A, B, C, D], zero-based key, solution).
The unseen extract is written for this book, so every question on it can be
answered from the words on the page.
"""

SCRIPT = """(A motor park at dawn. A signboard reads GOD'S TIME TRAVELS. MAMA ELIZA sits behind a table with a ledger. EMEKA, twenty, stands.)

EMEKA: I have come for the refund.
MAMA ELIZA: (without looking up) Which refund?
EMEKA: The one you promised when the bus did not leave.
MAMA ELIZA: (turning a page) The bus left.
EMEKA: I was here. I stood here from four until nine.
MAMA ELIZA: The bus left at five.
EMEKA: Then it left without its passengers.
MAMA ELIZA: (looks up at last) Young man, do you want a refund or a story?
EMEKA: I want the money.
MAMA ELIZA: The money is in the ledger. The ledger says the bus left.
EMEKA: And what does the ledger say about me?
MAMA ELIZA: (closing it) It says you were not here.
(A silence. EMEKA puts his hand on the ledger. She puts hers on top of his.)
EMEKA: Then we shall read it together.
(She does not move. The signboard creaks. Lights down.)"""

SECTION_A = [
    (
        "The extract's central conflict is between",
        ["two travellers over a seat", "a customer's claim and a record that denies it", "a mother and her son", "two bus companies"],
        1,
        "The whole scene is a dispute about whether the ledger or the witness is the authority.",
    ),
    (
        "Mama Eliza's first stage direction, “without looking up”, establishes",
        ["her kindness", "her power over the encounter", "her age", "her nervousness"],
        1,
        "Refusing eye contact is a claim of authority: the customer must wait on her attention.",
    ),
    (
        "“Do you want a refund or a story?” is effective because it",
        ["offers Emeka a choice he can win", "presents two things as alternatives when the story is what has cost him the refund", "is comic relief", "reveals her age"],
        1,
        "The question dresses up an evasion as a service, which is how the scene's power works.",
    ),
    (
        "The ledger in the extract functions as",
        ["a piece of furniture", "an instrument that turns memory into official fact", "a symbol of education", "a record of fares only"],
        1,
        "Whoever writes in the ledger decides what happened, and the scene is about that power.",
    ),
    (
        "“Then we shall read it together” is a turning point because",
        ["Emeka threatens her", "Emeka stops appealing to her record and claims a share of it", "she agrees to refund him", "the bus arrives"],
        1,
        "The line moves the conflict from petition to contest: he is no longer asking her to read, but to read with him.",
    ),
    (
        "The final stage direction, “She does not move”, communicates",
        ["that she is tired", "that her authority survives the challenge", "that the scene is over", "that she has forgotten her line"],
        1,
        "The stillness is the answer to his challenge, and it is given visually rather than in dialogue.",
    ),
    (
        "The creaking signboard is used to",
        ["indicate the weather", "comment on the promise of “God's time” in a place where time is being denied", "mark the passage of time", "introduce a new character"],
        1,
        "The sign's promise is ironised by the action, and the creak makes the irony audible.",
    ),
    (
        "The extract is best described as",
        ["a tragedy", "a satirical confrontation built on a power imbalance", "a farce", "a history play"],
        1,
        "It is a short confrontation with a satirical edge, and nobody dies, which rules out tragedy.",
    ),
]

SECTION_B = [
    (
        "Othello's account of his courtship wins the Duke over because",
        ["it is spoken in rhyme", "a story is accepted as legal evidence in the Venetian court", "the Duke already supports the marriage", "Brabantio withdraws"],
        1,
        "The play's first lesson in evidence is that eloquence counts, which makes the later refusal to hear Desdemona sharper.",
    ),
    (
        "Iago's stated grievance against Othello is",
        ["the elopement", "the promotion of Cassio over him, and a suspicion about Emilia", "an unpaid wage", "a public insult"],
        1,
        "He gives two reasons, and the play never confirms either, which is why motive-hunting is a weak strategy.",
    ),
    (
        "Desdemona's “I saw Othello's visage in his mind” places her love in",
        ["his reputation", "his mind and character rather than his appearance", "her father's household", "the Venetian state"],
        1,
        "The line answers Brabantio's charge of witchcraft with an account of inward affinity.",
    ),
    (
        "The brawl in Cyprus is important because it",
        ["removes Othello from command", "costs Cassio his rank and gives Iago his opening", "reveals Iago's plot", "brings Desdemona to Cyprus"],
        1,
        "Cassio's demotion is the opportunity Iago uses, and it sets up the reputation theme.",
    ),
    (
        "Othello's demand for “ocular proof” is ironic because",
        ["proof is easily available", "the proof he is given is a staged misunderstanding", "he refuses to look at anything", "Desdemona confesses"],
        1,
        "The scene supplies exactly what he asks for, and it is manufactured.",
    ),
    (
        "Emilia's role in the handkerchief plot shows",
        ["her malice", "how a small act of obedience can serve a large design", "her jealousy of Desdemona", "her ignorance of Iago"],
        1,
        "She takes the handkerchief to please her husband, and the tragedy runs through that ordinary motive.",
    ),
    (
        "Bianca's function is to",
        ["complain about Cassio", "complete the chain that makes the handkerchief look like Cassio's gift to a mistress", "warn Desdemona", "expose Iago"],
        1,
        "Without Bianca the handkerchief remains a lost token; with her it becomes evidence.",
    ),
    (
        "Othello's style in Act 3 is marked by",
        ["long periodic sentences", "exclamation, repetition and broken syntax", "rhymed couplets", "prose",],
        1,
        "The collapse of the public style is the play's most visible evidence of the change in him.",
    ),
    (
        "Othello strikes Desdemona in front of Lodovico, which",
        ["is a private quarrel", "turns a domestic suspicion into a public and diplomatic scandal", "wins Lodovico's sympathy for Iago", "ends the play"],
        1,
        "Lodovico's presence makes the gesture a report that will travel to Venice.",
    ),
    (
        "The play's final arrangement — Cassio governing Cyprus — suggests that",
        ["the state rewards virtue", "the machine repairs its instruments while the victims stay dead", "Iago has won", "Othello was a poor general"],
        1,
        "The administration continues and the dead are not part of the repair.",
    ),
]

SECTION_C = [
    (
        "Aloho's profession at the Ministry is",
        ["clerk", "protocol officer", "permanent secretary", "driver"],
        1,
        "The title is the cover under which she is used as a courier.",
    ),
    (
        "The package Aloho carries contains",
        ["documents", "hard drugs", "money", "jewellery"],
        1,
        "The drugs are what she is arrested for, and she does not know they are there.",
    ),
    (
        "Madam Hoha's hotel matters because it",
        ["is where Aloho lives", "gives the network a respectable public face", "belongs to the police", "is the courthouse"],
        1,
        "The hotel converts criminal meetings into hospitality, which is how the play stages corruption.",
    ),
    (
        "Ochuole's character is best described as",
        ["a victim who resists", "a recruiter who is also a product of the same system", "an innocent bystander", "a police informant"],
        1,
        "She lures Aloho in and is herself sentenced at the end, which makes her both agent and product.",
    ),
    (
        "ACP Yakubu is unusual in the play because he",
        ["is related to the Minister", "pursues the case against his superior's instruction", "refuses to arrest anyone", "is bribed and then repents"],
        1,
        "His incorruptibility is the play's one institutional hope.",
    ),
    (
        "Ogeyi's apartment in Pannya functions as",
        ["the scene of the crime", "the play's one space not for sale", "the Ministry annex", "the courtroom"],
        1,
        "Her small flat is the counter-space to the hotel and the Ministry.",
    ),
    (
        "The play's title is justified by the ending because",
        ["the harvest is a farm scene", "each offender receives a sentence that matches what was sown", "Aloho's child inherits the money", "the Minister repents"],
        1,
        "The final movement distributes penalties, and the title names the logic of that distribution.",
    ),
    (
        "Aloho's death is best read as",
        ["a punishment for crime", "the system's final consumption of the person it used", "an accident with no meaning", "a sacrifice that saves Ogeyi"],
        1,
        "She is used, protected, discarded and finally destroyed by the consequences of the use.",
    ),
    (
        "The play's treatment of justice is",
        ["pessimistic, since nothing changes", "cautiously optimistic, since the network falls but only through an exceptional individual", "comic", "indifferent"],
        1,
        "The convictions arrive, and the play is careful to show that they depended on one uncorrupted officer.",
    ),
    (
        "The most examinable structural feature of the play is",
        ["its use of song", "the movement from private need to public crime to public sentence", "its unity of place", "its verse form"],
        1,
        "The play's shape is a widening circle, from one graduate's job hunt to a courtroom.",
    ),
]

SECTION_D = [
    (
        "A speech delivered alone on stage, revealing a character's inward thoughts, is",
        ["an aside", "a soliloquy", "a monologue addressed to another", "a chorus"],
        1,
        "The soliloquy is unheard by other characters; an aside is a short remark not meant for the company on stage.",
    ),
    (
        "A remark spoken to the audience while other characters are present and cannot hear it is",
        ["a soliloquy", "an aside", "a prologue", "a stage direction"],
        1,
        "The aside is brief and depends on the convention that the others do not hear.",
    ),
    (
        "Dramatic irony occurs when",
        ["a character says something funny", "the audience knows something a character does not", "the play ends sadly", "two characters argue"],
        1,
        "The gap in knowledge between audience and character is the mechanism, and *Othello* is built on it.",
    ),
    (
        "Comic relief in a tragedy serves to",
        ["prolong the play", "release tension and sharpen the surrounding seriousness by contrast", "please the crowd only", "replace the subplot"],
        1,
        "The release is structural: it makes the return to seriousness more effective.",
    ),
    (
        "The audience's purging of pity and fear at the end of a tragedy is called",
        ["hubris", "catharsis", "denouement", "peripeteia"],
        1,
        "Catharsis names the emotional purgation; peripeteia is the reversal of fortune and hubris the fatal pride.",
    ),
    (
        "The reversal of a protagonist's fortune is",
        ["peripeteia", "catharsis", "exposition", "denouement"],
        0,
        "Peripeteia is the turn; the denouement is the unknotting that follows.",
    ),
    (
        "A stage direction is best described as",
        ["an instruction to the reader", "the playwright's control of what is seen and heard beyond dialogue", "an actor's improvisation", "a printer's error"],
        1,
        "Stage directions are part of the text's meaning, not stage machinery to be skipped.",
    ),
]

SECTION_E = [
    (
        "Which comment on *Othello* would a mark scheme reward most?",
        ["Iago is a very wicked man.", "Iago's method converts a loving husband into an interrogator by supplying interpretations before facts.", "The play is about jealousy.", "Othello is a Moor."],
        1,
        "The second names a mechanism and a consequence, and it can be evidenced in three scenes.",
    ),
    (
        "Which sentence best embeds a quotation?",
        ["“Reputation, reputation, reputation!” is a quotation from the play.", "Cassio's cry of “reputation, reputation, reputation” measures how much of himself is other people's opinion.", "Cassio says: “O, I have lost my reputation!”", "The play says reputation, reputation, reputation."],
        1,
        "The quotation is inside the candidate's sentence and is followed by the effect it produces.",
    ),
    (
        "A judgement answer to “Othello's suicide is an act of justice” must include",
        ["a summary of the last scene", "the strongest objection to the claim", "a biography of Shakespeare", "the number of the act"],
        1,
        "“How far” requires the case against, or the verdict is unsupported.",
    ),
    (
        "The best evidence that Aloho is a victim rather than a criminal is",
        ["her age", "that she does not know what the package contains", "that she is a graduate", "that Ogeyi likes her"],
        1,
        "Her ignorance of the contents is what makes her a courier rather than a trafficker.",
    ),
    (
        "Which pairing states a claim rather than a difference?",
        ["Othello is a general and Cassio is a lieutenant.", "Both men lose their reputations, but only Cassio is offered a way to recover his.", "Othello is older than Cassio.", "Cassio is Florentine and Othello is a Moor."],
        1,
        "The sentence has a shared ground (both lose reputations) and a difference that argues (one recovery is possible).",
    ),
]

PAPER_1 = [
    ("script", "Section A — Unseen Drama", SCRIPT, SECTION_A),
    ("plain", "Section B — *Othello*", "", SECTION_B),
    ("plain", "Section C — *Harvest of Corruption*", "", SECTION_C),
    ("plain", "Section D — Dramatic Technique", "", SECTION_D),
    ("plain", "Section E — Quotation and Judgement", "", SECTION_E),
]
