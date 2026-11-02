#import "template.typ": *

#current-chapter.update("Full Paper 1")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Full Paper 1]]

#block(
  width: 100%,
  breakable: false,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[PAPER 1 OF 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full Paper 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty questions in forty minutes, in the proportions of a real UTME Literature paper: an unseen drama extract, a block on each prescribed drama text, a block on technique, and a block on quotation and judgement.
  ]
]

#v(5pt)

+ Attempt *all 40* questions in *40 minutes*. There is no negative marking, so never leave a blank.

+ Work in three passes: what you know on sight, then the flagged questions, then the extracts you have to read twice.

+ Mark yourself against the key only when the clock has stopped.

#v(4pt)

== Section A — Unseen Drama

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: 0.9pt + jamb-border,
  radius: 8pt,
  inset: (x: 14pt, y: 10pt),
)[
  #set par(leading: 0.58em, spacing: 0.8em)
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[EXTRACT]
  #v(4pt)
  #set text(size: 9.9pt)
  (A motor park at dawn. A signboard reads GOD'S TIME TRAVELS. MAMA ELIZA sits behind a table with a ledger. EMEKA, twenty, stands.) \
  #v(7pt)
  EMEKA: I have come for the refund. \
  MAMA ELIZA: (without looking up) Which refund? \
  EMEKA: The one you promised when the bus did not leave. \
  MAMA ELIZA: (turning a page) The bus left. \
  EMEKA: I was here. I stood here from four until nine. \
  MAMA ELIZA: The bus left at five. \
  EMEKA: Then it left without its passengers. \
  MAMA ELIZA: (looks up at last) Young man, do you want a refund or a story? \
  EMEKA: I want the money. \
  MAMA ELIZA: The money is in the ledger. The ledger says the bus left. \
  EMEKA: And what does the ledger say about me? \
  MAMA ELIZA: (closing it) It says you were not here. \
  (A silence. EMEKA puts his hand on the ledger. She puts hers on top of his.) \
  EMEKA: Then we shall read it together. \
  (She does not move. The signboard creaks. Lights down.) \
  #v(7pt)
]

#mcq(1, [The extract's central conflict is between],
  [a mother and her son],
  [two travellers over a seat],
  [two bus companies],
  [a customer's claim and a record that denies it]
)

#mcq(2, [Mama Eliza's first stage direction, “without looking up”, establishes],
  [her power over the encounter],
  [her age],
  [her kindness],
  [her nervousness]
)

#mcq(3, [“Do you want a refund or a story?” is effective because it],
  [is comic relief],
  [presents two things as alternatives when the story is what has cost him the refund],
  [offers Emeka a choice he can win],
  [reveals her age]
)

#mcq(4, [The ledger in the extract functions as],
  [a piece of furniture],
  [a record of fares only],
  [an instrument that turns memory into official fact],
  [a symbol of education]
)

#mcq(5, [“Then we shall read it together” is a turning point because],
  [Emeka stops appealing to her record and claims a share of it],
  [she agrees to refund him],
  [the bus arrives],
  [Emeka threatens her]
)

#mcq(6, [The final stage direction, “She does not move”, communicates],
  [that she has forgotten her line],
  [that she is tired],
  [that the scene is over],
  [that her authority survives the challenge]
)

#mcq(7, [The creaking signboard is used to],
  [indicate the weather],
  [mark the passage of time],
  [comment on the promise of “God's time” in a place where time is being denied],
  [introduce a new character]
)

#mcq(8, [The extract is best described as],
  [a tragedy],
  [a farce],
  [a satirical confrontation built on a power imbalance],
  [a history play]
)


== Section B — *Othello*

#mcq(9, [Othello's account of his courtship wins the Duke over because],
  [the Duke already supports the marriage],
  [it is spoken in rhyme],
  [Brabantio withdraws],
  [a story is accepted as legal evidence in the Venetian court]
)

#mcq(10, [Iago's stated grievance against Othello is],
  [the promotion of Cassio over him, and a suspicion about Emilia],
  [the elopement],
  [a public insult],
  [an unpaid wage]
)

#mcq(11, [Desdemona's “I saw Othello's visage in his mind” places her love in],
  [the Venetian state],
  [his mind and character rather than his appearance],
  [his reputation],
  [her father's household]
)

#mcq(12, [The brawl in Cyprus is important because it],
  [removes Othello from command],
  [costs Cassio his rank and gives Iago his opening],
  [brings Desdemona to Cyprus],
  [reveals Iago's plot]
)

#mcq(13, [Othello's demand for “ocular proof” is ironic because],
  [the proof he is given is a staged misunderstanding],
  [he refuses to look at anything],
  [proof is easily available],
  [Desdemona confesses]
)

#mcq(14, [Emilia's role in the handkerchief plot shows],
  [her jealousy of Desdemona],
  [how a small act of obedience can serve a large design],
  [her malice],
  [her ignorance of Iago]
)

#mcq(15, [Bianca's function is to],
  [expose Iago],
  [warn Desdemona],
  [complete the chain that makes the handkerchief look like Cassio's gift to a mistress],
  [complain about Cassio]
)

#mcq(16, [Othello's style in Act 3 is marked by],
  [prose],
  [long periodic sentences],
  [exclamation, repetition and broken syntax],
  [rhymed couplets]
)

#mcq(17, [Othello strikes Desdemona in front of Lodovico, which],
  [is a private quarrel],
  [ends the play],
  [wins Lodovico's sympathy for Iago],
  [turns a domestic suspicion into a public and diplomatic scandal]
)

#mcq(18, [The play's final arrangement — Cassio governing Cyprus — suggests that],
  [Othello was a poor general],
  [Iago has won],
  [the state rewards virtue],
  [the machine repairs its instruments while the victims stay dead]
)


== Section C — *Harvest of Corruption*

#mcq(19, [Aloho's profession at the Ministry is],
  [permanent secretary],
  [clerk],
  [driver],
  [protocol officer]
)

#mcq(20, [The package Aloho carries contains],
  [hard drugs],
  [money],
  [documents],
  [jewellery]
)

#mcq(21, [Madam Hoha's hotel matters because it],
  [belongs to the police],
  [gives the network a respectable public face],
  [is the courthouse],
  [is where Aloho lives]
)

#mcq(22, [Ochuole's character is best described as],
  [an innocent bystander],
  [a recruiter who is also a product of the same system],
  [a police informant],
  [a victim who resists]
)

#mcq(23, [ACP Yakubu is unusual in the play because he],
  [pursues the case against his superior's instruction],
  [refuses to arrest anyone],
  [is bribed and then repents],
  [is related to the Minister]
)

#mcq(24, [Ogeyi's apartment in Pannya functions as],
  [the courtroom],
  [the play's one space not for sale],
  [the Ministry annex],
  [the scene of the crime]
)

#mcq(25, [The play's title is justified by the ending because],
  [the harvest is a farm scene],
  [Aloho's child inherits the money],
  [each offender receives a sentence that matches what was sown],
  [the Minister repents]
)

#mcq(26, [Aloho's death is best read as],
  [an accident with no meaning],
  [a punishment for crime],
  [a sacrifice that saves Ogeyi],
  [the system's final consumption of the person it used]
)

#mcq(27, [The play's treatment of justice is],
  [comic],
  [pessimistic, since nothing changes],
  [cautiously optimistic, since the network falls but only through an exceptional individual],
  [indifferent]
)

#mcq(28, [The most examinable structural feature of the play is],
  [its unity of place],
  [the movement from private need to public crime to public sentence],
  [its verse form],
  [its use of song]
)


== Section D — Dramatic Technique

#mcq(29, [A speech delivered alone on stage, revealing a character's inward thoughts, is],
  [an aside],
  [a chorus],
  [a monologue addressed to another],
  [a soliloquy]
)

#mcq(30, [A remark spoken to the audience while other characters are present and cannot hear it is],
  [a stage direction],
  [a soliloquy],
  [an aside],
  [a prologue]
)

#mcq(31, [Dramatic irony occurs when],
  [two characters argue],
  [the play ends sadly],
  [the audience knows something a character does not],
  [a character says something funny]
)

#mcq(32, [Comic relief in a tragedy serves to],
  [replace the subplot],
  [please the crowd only],
  [release tension and sharpen the surrounding seriousness by contrast],
  [prolong the play]
)

#mcq(33, [The audience's purging of pity and fear at the end of a tragedy is called],
  [peripeteia],
  [catharsis],
  [hubris],
  [denouement]
)

#mcq(34, [The reversal of a protagonist's fortune is],
  [catharsis],
  [exposition],
  [peripeteia],
  [denouement]
)

#mcq(35, [A stage direction is best described as],
  [the playwright's control of what is seen and heard beyond dialogue],
  [a printer's error],
  [an actor's improvisation],
  [an instruction to the reader]
)


== Section E — Quotation and Judgement

#mcq(36, [Which comment on *Othello* would a mark scheme reward most?],
  [The play is about jealousy.],
  [Iago is a very wicked man.],
  [Iago's method converts a loving husband into an interrogator by supplying interpretations before facts.],
  [Othello is a Moor.]
)

#mcq(37, [Which sentence best embeds a quotation?],
  [The play says reputation, reputation, reputation.],
  [Cassio's cry of “reputation, reputation, reputation” measures how much of himself is other people's opinion.],
  [“Reputation, reputation, reputation!” is a quotation from the play.],
  [Cassio says: “O, I have lost my reputation!”]
)

#mcq(38, [A judgement answer to “Othello's suicide is an act of justice” must include],
  [the strongest objection to the claim],
  [a summary of the last scene],
  [the number of the act],
  [a biography of Shakespeare]
)

#mcq(39, [The best evidence that Aloho is a victim rather than a criminal is],
  [that Ogeyi likes her],
  [her age],
  [that she is a graduate],
  [that she does not know what the package contains]
)

#mcq(40, [Which pairing states a claim rather than a difference?],
  [Cassio is Florentine and Othello is a Moor.],
  [Both men lose their reputations, but only Cassio is offered a way to recover his.],
  [Othello is older than Cassio.],
  [Othello is a general and Cassio is a lieutenant.]
)


#current-chapter.update("Full Paper 1 — Answer Key")

== Answer Key

#answer-key-grid((
  "D", "A", "B", "C", "A", "D", "C", "C", "D", "A",
  "B", "B", "A", "B", "C", "C", "D", "D", "D", "A",
  "B", "B", "A", "B", "C", "D", "C", "B", "D", "C",
  "C", "C", "B", "C", "A", "C", "B", "A", "D", "B",
))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]
  #v(4pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*34–40*], [Secure. The paper is under control; work on speed rather than knowledge.],
    [*28–33*], [Developing. Read the solution to every question you flagged, whatever you scored.],
    [*0–27*], [Revise before re-sitting. Return to the chapter named in each solution.],
  )
]

#current-chapter.update("Full Paper 1 — Complete Solutions")

#[
  #set text(size: 9.0pt)
  #set par(leading: 0.63em, spacing: 0.68em)

  #block(breakable: false)[
  == Complete Solutions

  Every solution names the chapter that teaches the skill the question tests.

  #sol-item(1, "D", dense: true, pad: 0.0pt)[
    The whole scene is a dispute about whether the ledger or the witness is the authority.
  ]
  ]

  #sol-item(2, "A", dense: true, pad: 0.0pt)[
    Refusing eye contact is a claim of authority: the customer must wait on her attention.
  ]

  #sol-item(3, "B", dense: true, pad: 0.0pt)[
    The question dresses up an evasion as a service, which is how the scene's power works.
  ]

  #sol-item(4, "C", dense: true, pad: 0.0pt)[
    Whoever writes in the ledger decides what happened, and the scene is about that power.
  ]

  #sol-item(5, "A", dense: true, pad: 0.0pt)[
    The line moves the conflict from petition to contest: he is no longer asking her to read, but to read with him.
  ]

  #sol-item(6, "D", dense: true, pad: 0.0pt)[
    The stillness is the answer to his challenge, and it is given visually rather than in dialogue.
  ]

  #sol-item(7, "C", dense: true, pad: 0.0pt)[
    The sign's promise is ironised by the action, and the creak makes the irony audible.
  ]

  #sol-item(8, "C", dense: true, pad: 0.0pt)[
    It is a short confrontation with a satirical edge, and nobody dies, which rules out tragedy.
  ]

  #sol-item(9, "D", dense: true, pad: 0.0pt)[
    The play's first lesson in evidence is that eloquence counts, which makes the later refusal to hear Desdemona sharper.
  ]

  #sol-item(10, "A", dense: true, pad: 0.0pt)[
    He gives two reasons, and the play never confirms either, which is why motive-hunting is a weak strategy.
  ]

  #sol-item(11, "B", dense: true, pad: 0.0pt)[
    The line answers Brabantio's charge of witchcraft with an account of inward affinity.
  ]

  #sol-item(12, "B", dense: true, pad: 0.0pt)[
    Cassio's demotion is the opportunity Iago uses, and it sets up the reputation theme.
  ]

  #sol-item(13, "A", dense: true, pad: 0.0pt)[
    The scene supplies exactly what he asks for, and it is manufactured.
  ]

  #sol-item(14, "B", dense: true, pad: 0.0pt)[
    She takes the handkerchief to please her husband, and the tragedy runs through that ordinary motive.
  ]

  #sol-item(15, "C", dense: true, pad: 0.0pt)[
    Without Bianca the handkerchief remains a lost token; with her it becomes evidence.
  ]

  #sol-item(16, "C", dense: true, pad: 0.0pt)[
    The collapse of the public style is the play's most visible evidence of the change in him.
  ]

  #sol-item(17, "D", dense: true, pad: 0.0pt)[
    Lodovico's presence makes the gesture a report that will travel to Venice.
  ]

  #sol-item(18, "D", dense: true, pad: 0.0pt)[
    The administration continues and the dead are not part of the repair.
  ]

  #sol-item(19, "D", dense: true, pad: 0.0pt)[
    The title is the cover under which she is used as a courier.
  ]

  #sol-item(20, "A", dense: true, pad: 0.0pt)[
    The drugs are what she is arrested for, and she does not know they are there.
  ]

  #sol-item(21, "B", dense: true, pad: 0.0pt)[
    The hotel converts criminal meetings into hospitality, which is how the play stages corruption.
  ]

  #sol-item(22, "B", dense: true, pad: 0.0pt)[
    She lures Aloho in and is herself sentenced at the end, which makes her both agent and product.
  ]

  #sol-item(23, "A", dense: true, pad: 0.0pt)[
    His incorruptibility is the play's one institutional hope.
  ]

  #sol-item(24, "B", dense: true, pad: 0.0pt)[
    Her small flat is the counter-space to the hotel and the Ministry.
  ]

  #sol-item(25, "C", dense: true, pad: 0.0pt)[
    The final movement distributes penalties, and the title names the logic of that distribution.
  ]

  #sol-item(26, "D", dense: true, pad: 0.0pt)[
    She is used, protected, discarded and finally destroyed by the consequences of the use.
  ]

  #sol-item(27, "C", dense: true, pad: 0.0pt)[
    The convictions arrive, and the play is careful to show that they depended on one uncorrupted officer.
  ]

  #sol-item(28, "B", dense: true, pad: 0.0pt)[
    The play's shape is a widening circle, from one graduate's job hunt to a courtroom.
  ]

  #sol-item(29, "D", dense: true, pad: 0.0pt)[
    The soliloquy is unheard by other characters; an aside is a short remark not meant for the company on stage.
  ]

  #sol-item(30, "C", dense: true, pad: 0.0pt)[
    The aside is brief and depends on the convention that the others do not hear.
  ]

  #sol-item(31, "C", dense: true, pad: 0.0pt)[
    The gap in knowledge between audience and character is the mechanism, and *Othello* is built on it.
  ]

  #sol-item(32, "C", dense: true, pad: 0.0pt)[
    The release is structural: it makes the return to seriousness more effective.
  ]

  #sol-item(33, "B", dense: true, pad: 0.0pt)[
    Catharsis names the emotional purgation; peripeteia is the reversal of fortune and hubris the fatal pride.
  ]

  #sol-item(34, "C", dense: true, pad: 0.0pt)[
    Peripeteia is the turn; the denouement is the unknotting that follows.
  ]

  #sol-item(35, "A", dense: true, pad: 0.0pt)[
    Stage directions are part of the text's meaning, not stage machinery to be skipped.
  ]

  #sol-item(36, "C", dense: true, pad: 0.0pt)[
    The second names a mechanism and a consequence, and it can be evidenced in three scenes.
  ]

  #sol-item(37, "B", dense: true, pad: 0.0pt)[
    The quotation is inside the candidate's sentence and is followed by the effect it produces.
  ]

  #sol-item(38, "A", dense: true, pad: 0.0pt)[
    “How far” requires the case against, or the verdict is unsupported.
  ]

  #sol-item(39, "D", dense: true, pad: 0.0pt)[
    Her ignorance of the contents is what makes her a courier rather than a trafficker.
  ]

  #sol-item(40, "B", dense: true, pad: 0.0pt)[
    The sentence has a shared ground (both lose reputations) and a difference that argues (one recovery is possible).
  ]

]

