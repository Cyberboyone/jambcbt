#import "template.typ": *

#current-chapter.update("Full Paper 1")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Full Paper 1]]

#block(
  width: 100%,
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
    Sixty questions in forty minutes, in the order and proportions of a real UTME English paper: a comprehension passage, a cloze passage, ten questions on the reading text, and the lexis, grammar and oral blocks.
  ]
]

#v(5pt)

+ Attempt *all 60* questions in *40 minutes*. There is no negative marking, so never leave a blank.

+ Work in three passes: what you know on sight, then the flagged questions, then the boxes and the checks.

+ Mark yourself against the key only when the clock has stopped.

#v(4pt)

== Section A — Comprehension Passage

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: 0.9pt + jamb-border,
  radius: 8pt,
  inset: (x: 12pt, y: 10pt),
)[
  #set par(leading: 0.62em, spacing: 0.72em)
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[PASSAGE]
  #v(3pt)
  #text(size: 9.6pt)[
    When the market at Oja-Oba burned down, the traders did not wait for the council. Within a week a committee of eleven had been formed, a levy of two hundred naira a week had been agreed, and a plan had been drawn on the back of a cement bag. The council's own plan arrived four months later, with a contractor's name on it and a budget six times the committee's. \
    #v(4pt)
    The committee rebuilt in stages. The first stage was a roof over the yam sellers, because the yam sellers had the most to lose and the least cover. The second was drainage, which nobody could see and everybody paid for. By the time the council's contractor arrived with his drawings, the market was trading under corrugated sheets and the traders had begun to argue about the third stage — a lock-up row for the tailors. \
    #v(4pt)
    The lesson is not that the council was useless, though it was slow. The lesson is that the people who use a place know what it needs first, and that a plan drawn by the people who will pay for it is usually cheaper than a plan drawn for them. The committee's weakness was the same as its strength: it could move quickly because it did not have to consult anyone outside the market, and it did not consult anyone outside the market because it had never expected to be asked.
  ]
]

#mcq(1, [The main idea of the passage is that],
  [the people who use a place know what it needs first],
  [councils are useless in an emergency],
  [drainage is more important than roofing],
  [markets should be rebuilt by contractors]
)

#mcq(2, [The first stage of the committee's rebuilding was],
  [drainage for the whole market],
  [a lock-up row for the tailors],
  [a new cement store],
  [a roof over the yam sellers]
)

#mcq(3, [The council's plan arrived late chiefly because],
  [the council had no money],
  [the traders refused to co-operate],
  [it depended on a contractor and a formal budget],
  [the market had already been rebuilt]
)

#mcq(4, [As used in the passage, *levy* means],
  [a fine for wrongdoing],
  [a loan from a bank],
  [a tax imposed by government],
  [a regular contribution agreed by a group]
)

#mcq(5, [The writer's attitude to the committee is],
  [admiring but clear-eyed about its limits],
  [indifferent],
  [contemptuous],
  [hostile]
)


== Section A — Cloze Passage

#block(
  width: 100%,
  fill: rgb("#F8FAFC"),
  stroke: 0.9pt + jamb-border,
  radius: 8pt,
  inset: (x: 12pt, y: 10pt),
)[
  #set par(leading: 0.62em, spacing: 0.72em)
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[CLOZE PASSAGE — read the whole paragraph before you fill the first blank]
  #v(3pt)
  #text(size: 9.6pt)[
    Reading a passage for an examination is not the same as reading for pleasure. The pleasure reader may (1) \_\_\_\_ a paragraph twice because the sentence is beautiful; the candidate has four questions and six minutes. What the candidate needs is a method that can be (2) \_\_\_\_ under pressure and repeated without (3) \_\_\_\_. \
    #v(4pt)
    The first move is to read the questions before the passage. This sounds (4) \_\_\_\_, and it is; but it changes what the eye does. Instead of reading everything with equal attention, the candidate reads for the four things the questions have (5) \_\_\_\_. The second move is to mark the sentence each question points at, (6) \_\_\_\_ the answer can be checked without re-reading the whole passage. \
    #v(4pt)
    None of this replaces understanding. A candidate who has never learned to read closely will (7) \_\_\_\_ the method and still choose the wrong option. The method (8) \_\_\_\_ the work; it does not do it. What it does is make the work (9) \_\_\_\_ — and in an examination, a technique that saves two minutes is worth (10) \_\_\_\_ than a fact that saves none.
  ]
]

#mcq(6, [Blank 1],
  [read],
  [reads],
  [reading],
  [having read]
)

#mcq(7, [Blank 2],
  [apply],
  [applies],
  [applied],
  [applying]
)

#mcq(8, [Blank 3],
  [think],
  [thinking],
  [thought],
  [thinker]
)

#mcq(9, [Blank 4],
  [obviousness],
  [obviously],
  [more obvious],
  [obvious]
)

#mcq(10, [Blank 5],
  [risen],
  [raised],
  [arose],
  [arisen]
)

#mcq(11, [Blank 6],
  [unless],
  [although],
  [so that],
  [whereas]
)

#mcq(12, [Blank 7],
  [abandoning],
  [abandoned],
  [abandonment],
  [abandon]
)

#mcq(13, [Blank 8],
  [organises],
  [organising],
  [organise],
  [organised]
)

#mcq(14, [Blank 9],
  [faster],
  [fastest],
  [more fast],
  [fast]
)

#mcq(15, [Blank 10],
  [much],
  [many],
  [most],
  [more]
)


== Section A — The Reading Text

Ten questions on *The Lekki Headmaster*. Answer them from the book, not from the film of it in your head.

#mcq(16, [Stardom Schools was founded by],
  [Chief Mrs Solape Bayo],
  [Mrs Ibidun Gloss],
  [Chief David Aje],
  [Mr Egi Meko]
)

#mcq(17, [Before he became principal of the secondary school, Bepo was headmaster of],
  [Beesway Group of Schools],
  [Stardom Kiddies],
  [Fruitful Future School],
  [Stardom Hub]
)

#mcq(18, [The ritual that Bepo witnessed took place at],
  [the Black Heritage Museum],
  [Fruitful Future School],
  [Stardom Schools],
  [Beesway Group of Schools]
)

#mcq(19, [The board caps the cooperative's loans at],
  [₦250,000],
  [₦95 million],
  [₦2.5 million],
  [₦25,000]
)

#mcq(20, [The sentence at the centre of the Open Day row is],
  [Ade, as well as Jide, come early],
  [Ade as well as Jide comes early],
  [Ade and Jide come early],
  [Ade as well as Jide come early]
)

#mcq(21, [Favour, the pupil at the centre of Chapter 4, is],
  [an SSS2 pupil at Stardom],
  [a teacher at Beesway],
  [the MD's niece],
  [Bepo's daughter]
)

#mcq(22, [The title of the novel refers to],
  [Mrs Ibidun Gloss],
  [Bepo],
  [Mr Egi Meko],
  [Chief Didi Ogba]
)

#mcq(23, [Bepo renews his passport at an office in],
  [Abuja],
  [Lagos],
  [Port Harcourt],
  [Ibadan]
)

#mcq(24, [Bepo shouts *Noooo!* for the first time during],
  [the morning assembly],
  [the passport interview],
  [the drama club's dance at the farewell],
  [the board meeting]
)

#mcq(25, [The novel ends with Bepo],
  [moving to London],
  [resigning his post],
  [returning to the school on Monday],
  [boarding the plane]
)


== Section B — Sentence Interpretation

Choose the option that best explains each sentence.

#mcq(26, [“The committee's weakness was the same as its strength.” This means that],
  [the independence that made it fast also made it narrow],
  [the committee was both weak and strong],
  [it had no weakness at all],
  [its strength was greater than its weakness]
)

#mcq(27, [“He is not the only fish in the sea” means that],
  [he should stay where he is],
  [the sea is full of fish],
  [there are other choices available],
  [he is difficult to catch]
)

#mcq(28, [“The teacher's remark was lost on the class” means that the class],
  [mislaid the teacher's notes],
  [did not understand the remark],
  [repeated the remark],
  [was absent that day]
)

#mcq(29, [“Bepo's decision did not come out of the blue” means that the decision],
  [was sudden and unexpected],
  [surprised even Bepo],
  [was made in the open air],
  [had been prepared for by what came before]
)

#mcq(30, [“The board's cap was a cure worse than the disease.” This means that the cap],
  [was welcomed by the staff],
  [cured the problem completely],
  [was never applied],
  [created a larger problem than it solved]
)


== Section B — Antonyms

Choose the option opposite in meaning to the word in italics.

#mcq(31, [Choose the option opposite in meaning to *adamant*.],
  [flexible],
  [firm],
  [unyielding],
  [stubborn]
)

#mcq(32, [Choose the option opposite in meaning to *candid*.],
  [honest],
  [frank],
  [evasive],
  [open]
)

#mcq(33, [Choose the option opposite in meaning to *lucid*.],
  [clear],
  [obscure],
  [bright],
  [simple]
)

#mcq(34, [Choose the option opposite in meaning to *obsolete*.],
  [worn],
  [ancient],
  [outdated],
  [current]
)

#mcq(35, [Choose the option opposite in meaning to *placid*.],
  [still],
  [agitated],
  [calm],
  [peaceful]
)


== Section B — Synonyms

Choose the option nearest in meaning to the word in italics.

#mcq(36, [Choose the option nearest in meaning to *adamant*.],
  [cheerful],
  [inflexible],
  [confused],
  [reluctant]
)

#mcq(37, [Choose the option nearest in meaning to *candid*.],
  [rude],
  [careful],
  [secretive],
  [honest]
)

#mcq(38, [Choose the option nearest in meaning to *lucid*.],
  [lengthy],
  [colourful],
  [clear],
  [difficult]
)

#mcq(39, [Choose the option nearest in meaning to *obsolete*.],
  [useful],
  [expensive],
  [rare],
  [outdated]
)

#mcq(40, [Choose the option nearest in meaning to *placid*.],
  [wide],
  [calm],
  [polluted],
  [shallow]
)


== Section B — Sentence Completion

Choose the option that best completes each sentence.

#mcq(41, [The report, together with its appendices, \_\_\_ on the table.],
  [are],
  [was],
  [were],
  [have been]
)

#mcq(42, [Not only did she sing, \_\_\_ she also danced.],
  [so],
  [but],
  [and],
  [yet]
)

#mcq(43, [The furniture in the new office \_\_\_ imported.],
  [are],
  [were],
  [is],
  [have been]
)

#mcq(44, [He was \_\_\_ tired that he slept at once.],
  [such],
  [so],
  [very],
  [too]
)

#mcq(45, [The money \_\_\_ from the safe last night.],
  [was stolen],
  [has stolen],
  [stole],
  [is stealing]
)

#mcq(46, [She insisted on \_\_\_ the bill.],
  [paying],
  [pay],
  [paid],
  [to pay]
)

#mcq(47, [By next December, she \_\_\_ here for ten years.],
  [worked],
  [will work],
  [will have worked],
  [is working]
)

#mcq(48, [He denied \_\_\_ the money.],
  [took],
  [taking],
  [to take],
  [take]
)

#mcq(49, [Hardly had he sat down \_\_\_ the bell rang.],
  [than],
  [then],
  [when],
  [that]
)

#mcq(50, [The man \_\_\_ car was stolen is my uncle.],
  [which],
  [who],
  [whose],
  [whom]
)


== Section C — Oral Forms

Ten questions on sounds, stress, rhyme and emphatic stress.

#mcq(51, [Which word contains the same vowel sound as *caught*?],
  [cat],
  [cut],
  [cot],
  [court]
)

#mcq(52, [How many syllables are there in *photograph*?],
  [two],
  [four],
  [three],
  [five]
)

#mcq(53, [In which word does the stress fall on the last syllable?],
  [happy],
  [table],
  [referee],
  [doctor]
)

#mcq(54, [Which word rhymes with *eight*?],
  [at],
  [eat],
  [late],
  [it]
)

#mcq(55, [“I said the BLUE folder, not the black one.” The stressed word corrects a claim about],
  [the size],
  [the colour],
  [the owner],
  [the number]
)

#mcq(56, [Which word contains the sound /eɪ/?],
  [bat],
  [bit],
  [bait],
  [bet]
)

#mcq(57, [Which word contains the voiced sound /ð/?],
  [three],
  [health],
  [think],
  [those]
)

#mcq(58, [In which word is the *b* silent?],
  [table],
  [climb],
  [cabin],
  [habit]
)

#mcq(59, [Which pair are homophones?],
  [seat / sit],
  [bear / bare],
  [thin / then],
  [sheep / ship]
)

#mcq(60, [The sound /ʒ/ appears in],
  [judge],
  [shoe],
  [chair],
  [measure]
)


#current-chapter.update("Full Paper 1 — Answer Key")

== Answer Key

#answer-key-grid((
  "A", "D", "C", "D", "A", "A", "C", "B", "D", "B",
  "C", "D", "A", "A", "D", "C", "B", "D", "A", "B",
  "A", "B", "D", "C", "C", "A", "C", "B", "D", "D",
  "A", "C", "B", "D", "B", "B", "D", "C", "D", "B",
  "B", "B", "C", "B", "A", "A", "C", "B", "C", "C",
  "D", "C", "C", "C", "B", "C", "D", "B", "B", "D",
))

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]
  #v(4pt)
  #table(
    columns: (0.9fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*51–60*], [Secure. The paper is under control; work on speed rather than knowledge.],
    [*42–50*], [Developing. Read the solution to every question you flagged, whatever you scored.],
    [*0–41*], [Revise before re-sitting. Return to the chapter named in each solution.],
  )
]

#current-chapter.update("Full Paper 1 — Complete Solutions")

#[
  #set text(size: 9.0pt)
  #set par(leading: 0.63em, spacing: 0.68em)

  #block(breakable: false)[
  == Complete Solutions

  Every solution names the block it belongs to and the chapter that teaches the rule.

  #sol-item(1, "A", dense: true, pad: 5.47pt)[
    The third paragraph states the claim and the first two illustrate it. The passage distinguishes the council's slowness from its usefulness.
  ]
  ]

  #sol-item(2, "D", dense: true, pad: 5.47pt)[
    The yam sellers had the most to lose and the least cover; the drainage came second and the tailors' row was still being argued about.
  ]

  #sol-item(3, "C", dense: true, pad: 5.47pt)[
    The passage contrasts the committee's week with the council's four months, a contractor's name and a budget six times the size.
  ]

  #sol-item(4, "D", dense: true, pad: 5.47pt)[
    The levy is agreed by the committee of traders and paid weekly — a contribution, not a statutory tax or a penalty.
  ]

  #sol-item(5, "A", dense: true, pad: 5.47pt)[
    The last sentence praises its speed and names its narrowness in the same breath — admiration with a qualification.
  ]

  #sol-item(6, "A", dense: true, pad: 5.47pt)[
    After the modal *may*, the base form is required.
  ]

  #sol-item(7, "C", dense: true, pad: 5.47pt)[
    The passive *can be applied* needs the past participle.
  ]

  #sol-item(8, "B", dense: true, pad: 5.47pt)[
    *Without* is a preposition and takes a gerund: *without thinking*.
  ]

  #sol-item(9, "D", dense: true, pad: 5.47pt)[
    *Sounds* is a linking verb and takes an adjective: *sounds obvious*.
  ]

  #sol-item(10, "B", dense: true, pad: 5.47pt)[
    The questions *have raised* the points; *rise* and *arise* are intransitive and take no object.
  ]

  #sol-item(11, "C", dense: true, pad: 5.47pt)[
    The clause states a purpose or result, which *so that* marks; the others mark contrast or condition.
  ]

  #sol-item(12, "D", dense: true, pad: 5.47pt)[
    After *will*, the base form: *will abandon the method*.
  ]

  #sol-item(13, "A", dense: true, pad: 5.47pt)[
    The subject is *The method*, singular, so the present simple takes -s.
  ]

  #sol-item(14, "A", dense: true, pad: 5.47pt)[
    The comparison is between two states of the work, so the comparative is required.
  ]

  #sol-item(15, "D", dense: true, pad: 5.47pt)[
    *More than* completes the comparative *worth more than a fact*.
  ]

  #sol-item(16, "C", dense: true, pad: 5.47pt)[
    Chief David Aje, whose daughter now runs the school as managing director.
  ]

  #sol-item(17, "B", dense: true, pad: 5.47pt)[
    He came up through Stardom Kiddies, the school's first arm.
  ]

  #sol-item(18, "D", dense: true, pad: 5.47pt)[
    Beesway, where Egi Meko was director. The scene is recalled in Chapter 7, not witnessed in the present of the novel.
  ]

  #sol-item(19, "A", dense: true, pad: 5.47pt)[
    ₦250,000, after discovering a purse of about ₦95 million. The other figures are the purse and the loan Nku took.
  ]

  #sol-item(20, "B", dense: true, pad: 5.47pt)[
    The teacher's version is correct: with subjects joined by *as well as*, the verb agrees with the first.
  ]

  #sol-item(21, "A", dense: true, pad: 5.47pt)[
    She is in SSS2 at Stardom and is the daughter of Mrs Ignatius; the DNA result removes her from Mr Ignatius's family.
  ]

  #sol-item(22, "B", dense: true, pad: 5.47pt)[
    The Lekki headmaster is Bepo, and the title names his post and his place.
  ]

  #sol-item(23, "D", dense: true, pad: 5.47pt)[
    Ibadan, with the NIN desk, the network failures and the agent all part of the ordeal.
  ]

  #sol-item(24, "C", dense: true, pad: 5.47pt)[
    The dance about the Badagry visit brings the museum back, and the shout escapes before he can stop it.
  ]

  #sol-item(25, "C", dense: true, pad: 5.47pt)[
    He does not board. On Monday he walks back through the gate and says he has come to complete his mission.
  ]

  #sol-item(26, "A", dense: true, pad: 5.47pt)[
    The sentence names one quality seen from two sides: independence produced speed and the absence of outside consultation.
  ]

  #sol-item(27, "C", dense: true, pad: 5.47pt)[
    The idiom is about alternatives, and it is usually said to someone recovering from a disappointment.
  ]

  #sol-item(28, "B", dense: true, pad: 5.47pt)[
    *Lost on* means not understood or not appreciated by the people who heard it.
  ]

  #sol-item(29, "D", dense: true, pad: 5.47pt)[
    The idiom says the opposite of its common misreading: what comes out of the blue is sudden, so *did not* means it was prepared.
  ]

  #sol-item(30, "D", dense: true, pad: 5.47pt)[
    The comparison is between two evils, and it says the remedy did more damage than the original trouble.
  ]

  #sol-item(31, "A", dense: true, pad: 5.47pt)[
    *Adamant* means refusing to change; its opposite is *flexible*. The other three are synonyms, which is the trap.
  ]

  #sol-item(32, "C", dense: true, pad: 5.47pt)[
    *Candid* means frank and open, so its opposite is *evasive*; the rest are synonyms.
  ]

  #sol-item(33, "B", dense: true, pad: 5.47pt)[
    *Lucid* means clear, especially of writing or explanation, so the opposite is *obscure*.
  ]

  #sol-item(34, "D", dense: true, pad: 5.47pt)[
    *Obsolete* means no longer in use; its opposite is *current*. *Outdated* and *ancient* are close in meaning to the word itself.
  ]

  #sol-item(35, "B", dense: true, pad: 5.47pt)[
    *Placid* means calm and unruffled, so the opposite is *agitated*; the other three repeat the word's sense.
  ]

  #sol-item(36, "B", dense: true, pad: 5.47pt)[
    *Adamant* means refusing to be persuaded — inflexible. *Reluctant* suggests unwillingness, not firmness.
  ]

  #sol-item(37, "D", dense: true, pad: 5.47pt)[
    *Candid* means frank and honest; *rude* confuses bluntness of manner with honesty of statement.
  ]

  #sol-item(38, "C", dense: true, pad: 5.47pt)[
    *Lucid* means clear, and it is used of explanations and prose.
  ]

  #sol-item(39, "D", dense: true, pad: 5.47pt)[
    *Obsolete* means superseded and no longer in use; *rare* is about scarcity, not age.
  ]

  #sol-item(40, "B", dense: true, pad: 5.47pt)[
    *Placid* means calm and still, whether of water or of a temperament.
  ]

  #sol-item(41, "B", dense: true, pad: 5.47pt)[
    With *together with*, the verb agrees with the first subject, *the report*, which is singular.
  ]

  #sol-item(42, "B", dense: true, pad: 5.47pt)[
    The frame is *not only … but also*, and the second half needs *but*.
  ]

  #sol-item(43, "C", dense: true, pad: 5.47pt)[
    *Furniture* is uncountable and takes a singular verb.
  ]

  #sol-item(44, "B", dense: true, pad: 5.47pt)[
    The frame is *so + adjective + that*; *such* would need a noun.
  ]

  #sol-item(45, "A", dense: true, pad: 5.47pt)[
    The money receives the action and *last night* fixes the past simple, so the passive past is required.
  ]

  #sol-item(46, "A", dense: true, pad: 5.47pt)[
    *Insist on* takes a gerund, because *on* is a preposition.
  ]

  #sol-item(47, "C", dense: true, pad: 5.47pt)[
    An action completed by a future point takes the future perfect.
  ]

  #sol-item(48, "B", dense: true, pad: 5.47pt)[
    *Deny* takes a gerund, not an infinitive.
  ]

  #sol-item(49, "C", dense: true, pad: 5.47pt)[
    The frame *hardly … when* is fixed; *no sooner* is the one that takes *than*.
  ]

  #sol-item(50, "C", dense: true, pad: 5.47pt)[
    Possession requires the relative pronoun *whose*.
  ]

  #sol-item(51, "D", dense: true, pad: 5.47pt)[
    *Caught* and *court* share /ɔː/. *Cot* is /ɒ/, *cut* is /ʌ/ and *cat* is /æ/.
  ]

  #sol-item(52, "C", dense: true, pad: 5.47pt)[
    *Pho-to-graph*: three beats. The related *photographer* adds a beat and moves the stress.
  ]

  #sol-item(53, "C", dense: true, pad: 5.47pt)[
    *Ref-er-EE*. The other three are first-syllable words.
  ]

  #sol-item(54, "C", dense: true, pad: 5.47pt)[
    A rhyme runs from the stressed vowel: *eight* and *late* agree from /eɪ/ onwards.
  ]

  #sol-item(55, "B", dense: true, pad: 5.47pt)[
    The emphasised word is the one the false statement got wrong, and here the false statement named a colour.
  ]

  #sol-item(56, "C", dense: true, pad: 5.47pt)[
    *Bait* carries /eɪ/; the others are /e/, /ɪ/ and /æ/.
  ]

  #sol-item(57, "D", dense: true, pad: 5.47pt)[
    *Those* is voiced; the other three carry the voiceless /θ/.
  ]

  #sol-item(58, "B", dense: true, pad: 5.47pt)[
    *b* after *m* is silent: climb, comb, thumb, lamb. The other three pronounce it.
  ]

  #sol-item(59, "B", dense: true, pad: 5.47pt)[
    *Bear* and *bare* sound the same and are spelled differently. The other pairs differ in one sound.
  ]

  #sol-item(60, "D", dense: true, pad: 5.47pt)[
    *Measure* has the voiced /ʒ/ in the middle; the others are /dʒ/, /ʃ/ and /tʃ/.
  ]

]

