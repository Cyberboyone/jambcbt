#import "template.typ": *

#current-chapter.update("Chapter 5: Crossing the Bar")

#pagebreak()

#chapter-opener(
  5,
  "Crossing the Bar",
  subtitle: "Alfred, Lord Tennyson — the Tide, the Pilot and the One Clear Call",
  syllabus-ref: "Section 4 • Prescribed Poems",
  utme-weight: "3 Qs a year",
  running: "Crossing the Bar",
)

#focus-radar(
  objectives: (
    "Place the poem: Tennyson, 1889, the Solent crossing, and the request that it close every collection.",
    "Follow four quatrains and say what each one does.",
    "Hear the voice: a man speaking calmly about his own death, in the first person.",
    "Read the images: the sunset, the star, the tide, the bar, the Pilot.",
    "Give the themes, with the lines that prove them.",
    "Answer the questions on the metaphor, the tone and the word 'Pilot'.",
  ),
  hotspots: (
    "The poem never uses the word *death*. Everything is a harbour departure: sunset, evening star, tide, bar, pilot, crossing.",
    "The *bar* is a sandbank at the mouth of a harbour. A ship crosses it on the tide, and the crossing is the dangerous moment — which is why the poem is about dying and not about sailing.",
    "*'One clear call for me'* is the poem's only summons, and it is clear — not feared, not resisted. The tone is the answer to most tone questions.",
    "*'I hope to see my Pilot face to face'* — the Pilot is God, and the phrase 'face to face' is Paul's (1 Corinthians 13:12). The poem's consolation is meeting, not escaping.",
    "Four quatrains, ABAB, with lines of three to five stresses: the short fourth line of each stanza closes it like a tide going out.",
  ),
  trap-summary: "Four slips. (1) Saying the poem is about a sea voyage. (2) Calling the tone 'sad' or 'fearful' — the poem's whole achievement is calm. (3) Missing that the Pilot is God, not a sailor. (4) Forgetting the request Tennyson made about its place in his collected poems, which is itself examinable.",
)

// ============================================================================
== 5.1 The Poem and Its World

*Alfred, Lord Tennyson* (1809–1892) was Poet Laureate for forty-two years and the most
public poet of the Victorian age. *Crossing the Bar* was written in 1889, when he was
eighty, on a crossing of the Solent — the strait between the Isle of Wight and
Hampshire — after an illness. He is said to have heard the words in his head as the
ship passed the bar, and he asked that the poem be printed *last* in every collection
of his poems, so that the last word of the collection would be this one. It is
therefore a poem with a designed position: the last word of a life's work.

#concept-box("What a bar is")[
  A bar is a ridge of sand or silt at the mouth of a harbour. A ship cannot cross it
  at low water, and the crossing is made on a full tide, when the water is deep
  enough to carry the keel over. That is why stanza two prays for "such a tide as
  moving seems asleep, / Too full for sound and foam" — a tide full enough to lift
  the ship over the bar without breaking. The nautical detail is exact, and the
  exactness is what makes the metaphor work: the poem is a prayer for an easy death.
]

#text(size: 9.4pt)[Tennyson wrote the poem at eighty, after a life of public mourning — for Arthur Hallam, his closest friend, whose death in 1833 produced *In Memoriam*, and for his own health, which had begun to fail. The poem's calm is therefore not innocence. It is the calm of a man who has spent fifty years writing about death and has arrived at a way of describing his own: as a departure on a full tide, at dusk, with a pilot aboard.]

#rule-box("Three facts that settle most questions")[
  + *Form:* four quatrains, rhyme ABAB, loose iambic metre with lines of three to five stresses.
  + *Situation:* a speaker about to die, imagining the crossing as a ship leaving harbour at evening.
  + *Key symbol:* the bar — the sandbank between the harbour and the open sea; the boundary between life and death.
]

// ============================================================================
== 5.2 The Movement

#diagram-fig("diagrams/ch05_crossing_voyage.svg",
  "Harbour, bar, open sea. Four quatrains, one movement, and the Pilot at the end.", width: 100%)

#table(
  columns: (0.55fr, 1.7fr, 1.65fr, 1.35fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Quatrain],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[The line to know],
  ),
  [*1*], [sunset, the evening star, and a clear call], [sets the time and the summons], ["And one clear call for me!"],
  [*2*], [a prayer for a full, silent tide when he puts out to sea], [asks for an easy crossing], ["Too full for sound and foam"],
  [*3*], [twilight, the evening bell, and a prayer for no sadness at farewell], [moves from the water to the human parting], ["And after that the dark!"],
  [*4*], [the flood may bear him far, but he hopes to see his Pilot face to face], [states the hope the poem has been preparing], ["When I have crost the bar."],
)

#text(size: 9.4pt)[The four quatrains are a single sentence of thought in four movements: the summons, the prayer for the crossing, the prayer for the parting, and the hope beyond it. Notice the progression of light: *sunset*, then *twilight*, then *the dark* — the poem darkens deliberately, and then answers the darkness with a face.]

// ============================================================================
== 5.3 The Voice and the Form

The poem is spoken in the first person by someone who expects to die soon, and it is
addressed partly to those he is leaving and partly to God. That double address is why
the tone is so often misdescribed. It is not resignation, which implies giving
something up, and it is not defiance. It is *acceptance with hope* — the speaker
agrees to the crossing and expects to arrive.

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
  [*Quatrains, ABAB*], [all four stanzas], [gives the poem the shape of a hymn, and lets each stanza close with a short line],
  [*Irregular line length*], [three to five stresses; the fourth line usually shortest], [the shortening is the tide going out; each stanza ends on a diminuendo],
  [*Cautionary "may"*], ["And may there be no moaning of the bar"; "And may there be no sadness of farewell"], [the prayer form: the speaker asks rather than asserts],
  [*First person*], ["for me", "I put out", "I hope"], [makes the poem a personal utterance, not a general statement about death],
  [*Symbol*], [the bar, the tide, the Pilot], [carries the meaning without naming it],
  [*Biblical echo*], ["face to face"], [gives the hope a scriptural authority without quoting scripture],
)

#concept-box("Why the poem is not gloomy")[
  The images are all of *evening*, and evening in this poem is not the end of light but
  the end of work: the star comes out, the bell rings, the tide is full, the ship puts
  out. A harbour departure at dusk is a peaceful scene, and Tennyson chooses every
  detail to keep it peaceful — no storm, no rocks, no struggle. Even the bar, which is
  the dangerous place, is crossed on a tide "too full for sound and foam". The poem is
  a prayer for a good death, and the calm is the prayer's content.
]

// ============================================================================
== 5.4 The Images

#table(
  columns: (1.25fr, 1.75fr, 1.9fr),
  inset: (x: 4.4pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Image],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it compares],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
  ),
  [*"Sunset and evening star"*], [the end of life to the end of day], [places death at the calmest hour, and gives it a light],
  [*"one clear call for me"*], [death to a summons], [the call is clear, not confused: the speaker knows what is happening],
  [*"moaning of the bar"*], [the sound of the tide over sand to a complaint], [the poem prays *against* moaning — the sea must not sound like grief],
  [*"Too full for sound and foam"*], [a full tide to a life complete], [fullness without noise is the poem's ideal death],
  [*"Twilight and evening bell"*], [the last hour to the bell that marks it], [the bell is a human sound, and it is the poem's only sound],
  [*"And after that the dark!"*], [death to night], [the one blunt line in the poem, and the exclamation mark is the only shock in it],
  [*"bourne of Time and Place"*], [the world to a boundary], ["Bourne" is an old word for a boundary or a destination; time and place are the shore he leaves],
  [*"my Pilot"*], [God to the pilot who brings a ship into harbour], [the pilot knows the water; the speaker does not have to],
)

#trap-box("The Pilot is not a boatman")[
  The commonest wrong answer on this poem is that the Pilot is the ship's captain, or
  the speaker's friend, or death itself. The Pilot is *God*, and the phrase "face to
  face" makes it explicit: the poem ends with a meeting, not a journey. A ship's pilot
  is the man who comes aboard at the harbour mouth because he knows the local water —
  which is exactly the role the poem gives to God at the moment of death.
]

// ============================================================================
== 5.5 The Themes

#table(
  columns: (1.1fr, 2.15fr, 1.9fr),
  inset: (x: 4.5pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Theme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The claim the poem makes],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The lines that prove it],
  ),
  [*Death as a crossing*], [dying is a passage from one shore to another, not an end], ["When I have crost the bar"],
  [*Acceptance*], [the summons is answered without protest], ["And one clear call for me!"],
  [*Faith and hope*], [the speaker expects a meeting beyond the dark], ["I hope to see my Pilot face to face"],
  [*Peace*], [the poem prays for a quiet crossing and a quiet parting], ["Too full for sound and foam"],
  [*Farewell and letting go*], [the living are asked not to make the parting harder], ["no sadness of farewell"],
  [*Human limitation*], [the speaker cannot navigate alone; he needs a pilot], ["bourne of Time and Place"],
)

#text(size: 9.4pt)[The themes form a single arc: death is a crossing, the crossing is accepted, the acceptance is possible because of faith, and faith is expressed as a hope of meeting. The poem does not argue for immortality; it hopes for it, and the difference between arguing and hoping is the poem's tone. A question that asks "what is the poem's attitude to death?" wants *calm acceptance grounded in religious hope*, not *fear* and not *certainty*.]

// ============================================================================
== 5.6 Technique

#rule-box("Four techniques, and what each one buys")[
  + *Extended metaphor.* The whole poem is one comparison — life as a voyage — carried through every stanza without a single simile. The metaphor is not decorative; it is the argument.
  + *Symbol.* The bar, the tide, the Pilot. Each is a real nautical thing and a spiritual meaning at once, which is what a symbol does.
  + *Repetition of "may".* "And may there be no moaning…"; "And may there be no sadness…". The prayer form is repeated at the same point in two stanzas, which is what makes the poem sound like a liturgy.
  + *The short last line.* Each quatrain ends on a shorter line — "When I put out to sea", "Turns again home", "When I embark", "When I have crost the bar". Four short lines, four small closings, like the tide going out.
]

#text(size: 9.4pt)[The most examinable single word is *crost* — the archaic contraction of "crossed". It is there for the metre and for the sound: it makes the last line slow down, and it gives the poem's final monosyllables a weight that "crossed" would not. Tennyson is the most musical of Victorian poets, and *Crossing the Bar* is a poem to be heard before it is understood.]

// ============================================================================
== 5.7 Four Worked Questions

#worked-example(
  1,
  "The situation",
  [The speaker of *Crossing the Bar* is

    A. a ship's captain setting sail
    B. a man expecting his own death
    C. a fisherman at work
    D. a traveller on holiday],
  [
    *Step 1 — read the first stanza.* Sunset, the evening star, "one clear call for me".

    *Step 2 — read the last stanza.* "I hope to see my Pilot face to face / When I have crost the bar."

    *Step 3 — eliminate.* No captain, no fishing and no holiday appears; the call and the hope belong to someone nearing death.

    *Check.* The voyage is a metaphor for dying. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The symbol",
  [The "bar" in the poem is

    A. a public house
    B. a sandbank at the mouth of a harbour
    C. the ship's rail
    D. a barrier at the dock],
  [
    *Step 1 — recall the nautical term.* A bar is a ridge of sand or silt across a harbour mouth, crossed on a full tide.

    *Step 2 — fit it to the poem.* The tide must be "too full for sound and foam" for the crossing; that is exactly a bar being crossed.

    *Step 3 — eliminate.* A public house and a rail are puns, not readings; a dock barrier is not crossed on a tide.

    *Check.* The bar is the boundary between harbour and open sea, and therefore between life and death. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The tone",
  [The tone of *Crossing the Bar* is best described as

    A. bitter and accusing
    B. calm acceptance with hope
    C. terrified
    D. cheerful and comic],
  [
    *Step 1 — collect the evidence.* "One clear call"; "may there be no moaning"; "may there be no sadness"; "I hope to see".

    *Step 2 — name the attitude.* The speaker agrees, prays for peace and hopes for a meeting: calm acceptance with hope.

    *Step 3 — eliminate.* Nothing is accused, nothing is feared, and nothing is funny.

    *Check.* The tone is the poem's achievement. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The last line",
  ["I hope to see my Pilot face to face" implies that

    A. the speaker expects to meet a sailor
    B. the speaker hopes for a personal encounter with God after death
    C. the speaker is afraid of the sea
    D. the speaker has lost his way],
  [
    *Step 1 — identify the Pilot.* In the metaphor, the pilot is the one who knows the water and brings the ship in; the capital letter and "face to face" identify God.

    *Step 2 — read "face to face".* The phrase is Paul's: now we see through a glass darkly, but then face to face. It means direct, personal knowledge.

    *Step 3 — eliminate.* There is no sailor named, no fear and no lost way.

    *Check.* The hope is a meeting, not merely a safe arrival. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.8 Two-Minute Set

#mcq(1, [Crossing the Bar has], [three stanzas], [four quatrains rhyming ABAB], [five stanzas of six lines], [blank verse paragraphs])

#mcq(2, [The poem was written in], [1809], [1889], [1914], [1864])

#mcq(3, [The "Pilot" is], [the ship's captain], [God], [the speaker's friend], [death])

#mcq(4, [The tide the speaker prays for is], [rough and loud], [full and silent], [low and dangerous], [turning against him])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Four quatrains, ABAB, with lines of three to five stresses; the short fourth line closes each stanza.]),
  ("B", [Written in 1889, when Tennyson was eighty, on a crossing of the Solent; he asked that it close every collection.]),
  ("B", [The capital letter and the phrase "face to face" make the identification; a pilot is the one who knows the water.]),
  ("B", ["Such a tide as moving seems asleep, / Too full for sound and foam" — fullness without noise is the prayer.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the harbour, the bar, the tide, the Pilot and the tone.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Tennyson wrote *Crossing the Bar* in 1889, at eighty, on a crossing of the Solent, and asked that it be printed last in every collection of his poems. It is four quatrains rhymed ABAB, in loose iambic lines of three to five stresses, and it never uses the word death. Sunset and the evening star bring one clear call; the speaker prays for a tide so full that it seems asleep, "too full for sound and foam", and for no moaning of the bar when he puts out to sea. Twilight and the evening bell bring the dark, and he prays for no sadness of farewell when he embarks. The last quatrain accepts that the flood may bear him far beyond the bourne of Time and Place, and states the poem's hope: to see his Pilot face to face when he has crossed the bar. The Pilot is God, the bar is the sandbank between harbour and open sea, and the crossing is death. The tone is calm acceptance with hope; the techniques are extended metaphor, symbol, the repeated "may" of prayer, and the short closing line that lets each stanza fall away like a tide.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Name the poet, the year and the occasion.],
  [Give the form: quatrains, rhyme scheme, metre.],
  [Say what a bar is, exactly.],
  [Quote the line about the tide.],
  [Identify the Pilot and the phrase that proves it.],
  [Describe the tone in three words, with evidence.]),
)

#concept-box("Carry this into Chapter 6")[
  *Crossing the Bar* is a poem about a man who knows who he is. *The Proud King* is
  about a man who does not, and who is given eight hundred and fifty lines to find out.
  Chapter 6 is the longest poem in the volume and the one the paper examines by scene:
  read it as a story first, and the questions become easy.
]

#include "drill_ch05.typ"
