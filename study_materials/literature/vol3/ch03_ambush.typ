#import "template.typ": *

#current-chapter.update("Chapter 3: Ambush")

#pagebreak()

#chapter-opener(
  3,
  "Ambush",
  subtitle: "Gbemisola Adeoti — Three Predators, One Road and the Shore of Possibilities",
  syllabus-ref: "Section 4 • Prescribed Poems",
  utme-weight: "4 Qs a year",
  running: "Ambush",
)

#focus-radar(
  objectives: (
    "Place the poem: Adeoti, Nigeria, *Naked Soles*, and the generation it speaks for.",
    "Follow four stanzas of run-on lines and say what each predator covers.",
    "Hear the voice: a watchful observer, not a protester.",
    "Read the images: whale, sabre-toothed tiger, giant hawk, and the land that waits.",
    "Give the themes, with the lines that prove them.",
    "Answer the questions on the pun, the 'blue Peter' and the last stanza.",
  ),
  hotspots: (
    "Three predators cover *water, land and air*, in that order. The poem's structure is a net closing over every direction of escape.",
    "*'Blue Peter'* is a real maritime signal flag: flown in harbour, it means the ship is about to sail. It is also, in the poem, a pun on Peter and on 'petered out'.",
    "*'The land lies patiently ahead'* is not the escape. The land is the ambush — it waits, and takes the people who leave.",
    "The poem is in the *present tense* and has no 'I'. It observes a condition that is happening now, which is why it feels like a report and not a lament.",
    "The last stanza is the only place a future appears: the shore of possibilities. Everything before it is a description of being caught.",
  ),
  trap-summary: "Four slips. (1) Calling the poem 'about animals' — the animals are the vehicle, the tenor is the state. (2) Reading 'blue Peter' as a person's name. (3) Missing that water, land and air amount to no escape anywhere. (4) Treating the last stanza as a happy ending rather than as a direction that has not yet been taken.",
)

// ============================================================================
== 3.1 The Poem and Its World

*Gbemisola Adeoti* teaches literature at Obafemi Awolowo University, Ile-Ife, and is
known both as a poet and as a critic of Nigerian writing. *Ambush* appeared in his
collection *Naked Soles* (2000s), a book whose title is itself an image of exposure:
bare feet on hard ground, with nothing between the skin and the country. The poem
belongs to the generation of Nigerian writing that came of age under military rule,
and it is usually read as a poem about a state that preys on the people who try to
leave it behind.

#concept-box("An ambush is not an attack")[
  The title matters. An *ambush* is not a battle, and not a siege. It is an attack
  from concealment, delivered by someone who has chosen the ground and waited. The
  poem's land "lies patiently ahead", and the word *patiently* tells you who the
  ambusher is: the ground itself, which can afford to wait.
]

#text(size: 9.4pt)[The poem has four stanzas, twenty-one lines, no rhyme and no regular metre. Its lines run on: a sentence begins in one line and ends three or four lines later, which is the poem's chief technical difficulty. The run-on is not carelessness. It makes the reader move forward without a pause, the way the people in the poem are moved forward into a trap.]

#rule-box("Three facts that settle most questions")[
  + *Form:* four stanzas: eight lines, six, three, four; free verse; heavy enjambment.
  + *Method:* three animal metaphors in sequence — whale, sabre-toothed tiger, giant hawk — then a direct address to the land.
  + *Punctuation:* one sentence can run across four lines, so the stanza break is not a full stop.
]

// ============================================================================
== 3.2 The Movement

#diagram-fig("diagrams/ch03_ambush_predators.svg",
  "Water, land and air. Each stanza closes one route, and the fourth names the ambush.", width: 100%)

#table(
  columns: (0.55fr, 1.6fr, 1.75fr, 1.35fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Stanza],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The line to know],
  ),
  [*1*], [a whale swallows the fisherman's line, and the fishers go home with nothing], [closes the water], ["aborting dreams of a good catch"],
  [*2*], [a sabre-toothed tiger cries in the glade, and the old men abandon their courage], [closes the land], ["snatch their gut / from bayonets of tribulation"],
  [*3*], [a giant hawk hovers and hoots in the sky], [closes the air], ["courts unceasing disaster"],
  [*4*], [the land waits in ambush for those who turn towards the shore of possibilities], [names the trap and the only direction left], ["where nothing happens / towards the shore of possibilities"],
)

#text(size: 9.4pt)[Read the order as a map. Stanza one takes the sea; stanza two takes the forest and the road; stanza three takes the sky. By the end of stanza three there is no route out in any element, and the fourth stanza can then do what the first three have made possible: it says that the only place left is *ahead*, and that the land is waiting there too. The poem's structure is a siege drawn in three lines of attack.]

// ============================================================================
== 3.3 The Voice and the Form

There is no "I" in *Ambush* and no "we". The poem speaks in the third person about
"fishers", "infants", "the grizzled ones", and then, in the last stanza, addresses
"those who point away". That shift is important: the first three stanzas observe, and
the fourth turns to speak to the people it has been observing.

#table(
  columns: (1.1fr, 2.0fr, 1.8fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Where it appears],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
  ),
  [*Present tense*], ["swallows", "cries", "hovers", "lies"], [makes the condition current; the poem is a report, not a memory],
  [*Enjambment*], [every stanza], [drives the reader forward without a pause, as the people are driven],
  [*Animal metaphor*], [whale, tiger, hawk], [gives the state a natural, predatory inevitability],
  [*Pun*], ["blue Peter", "Peters", "petered out"], [makes failure a matter of language as well as circumstance],
  [*Direct address*], [stanza four, "those who point away"], [turns observation into warning],
  [*No rhyme, no metre*], [throughout], [keeps the poem close to speech and to report],
)

#concept-box("Why the poem never says 'government'")[
  The poem is political without a single political noun. It says *whale*, *tiger*,
  *hawk*, *land* — and every one of them is a thing that eats. That indirection is
  what makes the poem survive its occasion: a poem naming a regime would date; a poem
  naming a food chain does not.
]

// ============================================================================
== 3.4 The Images

#table(
  columns: (1.2fr, 1.85fr, 1.85fr),
  inset: (x: 4.4pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Image],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it compares],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
  ),
  [*"swallows the sinker, / with hook, line and bait"*], [the state to a whale], [it takes the whole apparatus, not just the catch: the attempt is what is destroyed],
  [*"blue Peter on empty ships"*], [the sailing flag to defeat], [a signal of departure flown over ships that will not sail; the joke is bitter],
  [*"all Peters with petered out desires"*], [the fishermen to the disciple and to the verb], [failure is built into the name and the idiom at once],
  [*"sabre-toothed tiger"*], [the state to an extinct predator], [a creature of terror out of the past — the violence is archaic and natural at once],
  [*"snatch their gut / from bayonets of tribulation"*], [courage to a thing dropped], [the old men lose their nerve to a weaponised suffering],
  [*"giant hawk / that courts unceasing disaster"*], [the state to a bird of prey], [it does not merely attack; it seeks the attack out],
  [*"the shore of possibilities"*], [the future to a coast], [the one open image in the poem, and it is across water the whale owns],
)

#trap-box("The blue Peter trap")[
  The commonest wrong answer on this poem is that *blue Peter* is a person, or a ship,
  or a flag of surrender. It is a flag of *departure*: flown in harbour to signal that
  a vessel is about to sail. The poem flies it over "empty ships" — a departure signal
  over ships that are not going anywhere. Recognise the bitter joke and the line
  explains itself.
]

// ============================================================================
== 3.5 The Themes

#table(
  columns: (1.05fr, 2.2fr, 1.95fr),
  inset: (x: 4.5pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The claim the poem makes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The lines that prove it],
  ),
  [*Oppression*], [the state preys on the people's hopes], ["aborting dreams of a good catch"],
  [*Foiled aspiration*], [every attempt to leave is met and stopped], ["all Peters with petered out desires"],
  [*Fear and paralysis*], [fear reaches the young and the old], ["infants shudder home"],
  [*Betrayal of the land*], [the ground itself is the ambush], ["The land lies patiently ahead / awaiting in ambush"],
  [*The illusion of escape*], [the shore of possibilities is across the whale's water], ["those who point away from a direction / where nothing happens"],
  [*Endurance*], [the people keep walking anyway], ["halting venturous walk at dusk"],
)

#text(size: 9.4pt)[The themes are one argument in five parts. Oppression produces foiled aspiration; foiled aspiration produces fear; fear produces paralysis; paralysis leaves the people inside a landscape that is itself hostile; and the only answer the poem offers is a direction, not a destination. Notice that the last stanza gives no assurance that the shore can be reached. It says the land is waiting, and it says where the shore is. That is all.]

// ============================================================================
== 3.6 Technique

#rule-box("Four techniques, and what each one buys")[
  + *Metaphor extended across a stanza.* The whale does not merely appear; it swallows the sinker, the hook, the line and the bait. The extension is what makes the image a system.
  + *Pun.* "Blue Peter", "Peters", "petered out" — three uses of one sound in three lines, and each one adds defeat.
  + *Enjambment and the sentence that outlives the stanza.* The stanza break is not a pause; the reader is carried over it.
  + *The turn to direct address.* The last stanza speaks to "those who point away", which is the poem's equivalent of a finger pointing at the reader.
]

#text(size: 9.4pt)[The poem's most examinable small choice is the word *patiently*. A predator does not need to hurry; the land can wait. One adverb turns a landscape into a character, and it is worth quoting whenever a question asks about the poem's attitude to its setting.]

// ============================================================================
== 3.7 Four Worked Questions

#worked-example(
  1,
  "The situation",
  [The fishers in stanza one return home because

    A. the tide is too strong
    B. a whale has taken their lines and the catch is lost
    C. their boats are damaged
    D. they have caught too many fish],
  [
    *Step 1 — locate.* Lines one to four: the whale "swallows the sinker, / with hook, line and bait".

    *Step 2 — read the consequence.* "aborting dreams of a good catch" and "fishers turn home at dusk".

    *Step 3 — eliminate.* No tide, no damaged boat, and no over-supply is mentioned.

    *Check.* The loss is caused by the whale. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The reference",
  ["Blue Peter" in the poem is

    A. a fisherman
    B. a flag signalling that a ship is about to sail
    C. a kind of boat
    D. a storm warning],
  [
    *Step 1 — recall the term.* Blue Peter is the international maritime signal flag meaning "all persons should report on board as the vessel is about to proceed to sea".

    *Step 2 — read the line.* It is flown "on empty ships", which is a contradiction: a departure signal over ships with nothing and no one.

    *Step 3 — eliminate.* It is not a person, a boat or a storm signal.

    *Check.* The flag of departure over empty ships is the stanza's bitter joke. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The last stanza",
  [The "shore of possibilities" is best read as

    A. a holiday resort
    B. the hoped-for future, which lies across the water the whale controls
    C. the grave
    D. the poet's home],
  [
    *Step 1 — locate the phrase.* It is the poem's last image, and it is what the people point *towards*.

    *Step 2 — read the contrast.* They turn away "from a direction / where nothing happens" and towards the shore.

    *Step 3 — connect.* The water is stanza one's territory, and the whale owns it, so the shore is desirable and guarded at once.

    *Check.* The image is hope, and the poem does not say the crossing succeeds. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "The structure",
  [The three predators of stanzas one to three are arranged so as to

    A. show that the sea is the most dangerous
    B. cover water, land and air, so that no route of escape is left
    C. suggest that the animals are extinct
    D. compare the state to a zoo],
  [
    *Step 1 — list the animals and their elements.* Whale (sea), sabre-toothed tiger (land and forest), giant hawk (air).

    *Step 2 — draw the map.* Three elements, three predators, no fourth place to go.

    *Step 3 — eliminate.* The poem does not rank the dangers, and the tiger's extinction is not the point of the image.

    *Check.* The sequence is a siege. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.8 Two-Minute Set

#mcq(1, [Ambush has], [four quatrains], [four stanzas of eight, six, three and four lines], [six stanzas], [two stanzas])

#mcq(2, [The predators in order are], [hawk, whale, tiger], [whale, sabre-toothed tiger, giant hawk], [tiger, hawk, whale], [whale, hawk, tiger])

#mcq(3, [The land is described as], [indifferent], [lying patiently in ambush], [fertile and generous], [empty and silent])

#mcq(4, [The people turn away from], [the sea], [a direction where nothing happens], [the forest], [the city])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Four stanzas of 8, 6, 3 and 4 lines — the shrinking stanza is itself part of the closing net.]),
  ("B", [Water, land, air: the sequence covers every element in turn.]),
  ("B", [The adverb "patiently" is the poem's sharpest single choice: the land can afford to wait.]),
  ("B", [They point away from a direction where nothing happens and towards the shore of possibilities.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the three elements, the pun, the land and the shore.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    *Ambush* is a four-stanza free-verse poem by the Nigerian poet Gbemisola Adeoti, collected in *Naked Soles*. Its first three stanzas close the three elements in turn: a whale swallows the fisherman's sinker with hook, line and bait, and the fishers turn home at dusk with a blue Peter flying over empty ships and all Peters petered out; a sabre-toothed tiger cries in the glade and the old men lose their courage; a giant hawk hovers and hoots, courting disaster in the air. By stanza four there is no route left, and the poem turns to address those who point away from a direction where nothing happens towards the shore of possibilities — while the land itself lies patiently ahead, waiting in ambush. The poem's themes are oppression, foiled aspiration, fear, the hostility of the land and the illusion of escape. Its technique is extended metaphor, pun, enjambment and a final turn to direct address. It never names a government; it names a food chain.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Name the poet, the collection and the country.],
  [Give the stanza lengths in order.],
  [Name the three predators and the element each one owns.],
  [Explain "blue Peter" in one sentence.],
  [Quote the last two lines exactly.],
  [Say why the poem never uses a political noun.]),
)

#concept-box("Carry this into Chapter 4")[
  *Ambush* describes a trap with no way out. *The Anvil and the Hammer* describes a
  man standing between two tools and asking to be made into something. Same position,
  opposite metaphor: one poem's pressure is a predator, the other's is a workshop.
  Chapter 4 turns the anvil over.
]

#include "drill_ch03.typ"
