#import "template.typ": *

#current-chapter.update("Chapter 4: The Anvil and the Hammer")

#pagebreak()

#chapter-opener(
  4,
  "The Anvil and the Hammer",
  subtitle: "Kofi Awoonor — the Forge, the Sewing and the Two Rivers",
  syllabus-ref: "Section 4 • Prescribed Poems",
  utme-weight: "4 Qs a year",
  running: "The Anvil and the Hammer",
)

#focus-radar(
  objectives: (
    "Place the poem: Awoonor, Ghana, the Ewe dirge, and the year of independence.",
    "Follow two stanzas and say what each one does.",
    "Read the forge as a metaphor for cultural change, and find who is caught in it.",
    "Explain the sewing prayer, and why the old days are worn *under* the new garment.",
    "Give the themes with the lines that prove them.",
    "Answer the questions on the extended metaphor, the antithesis and the last image.",
  ),
  hotspots: (
    "The poem is *two stanzas* — one of ten lines, one of twelve — in free verse, and it is built on *two extended metaphors*: the forge in stanza one, the sewing in stanza two.",
    "The persona is *the metal being forged*, not the smith. He is caught between the anvil and the hammer, and the pangs that delivered him are being transformed into songs.",
    "*'Wear them under our new garment'* is the poem's central request. The old days are not to be worn instead of the new; they are to be worn beneath it, hidden and supporting.",
    "*'Flimsy glories'* is the poem's judgment on modernity, and the adjective is doing the work: not false, but thin.",
    "The last image is *water*: the estuary where many rivers meet, and the sea where the songs reverberate. Water is the poem's figure for mixture, and mixture is its answer.",
  ),
  trap-summary: "Four slips. (1) Saying the poem rejects modernity or rejects tradition — it asks for both, in a particular order. (2) Missing that the persona is inside the forge, being shaped, not standing outside it. (3) Reading the sewing literally. (4) Missing the pun on 'pangs' and 'songs' — birth and art, in one stanza.",
)

// ============================================================================
== 4.1 The Poem and Its World

*Kofi Awoonor* (1935–2013) was born in the Volta Region of Ghana, into Ewe
tradition, and grew up hearing the *dirges* and *songs* of Ewe oral poetry — his
grandmother was a dirge singer, and his earliest poetry is shaped by that inheritance.
He was also a scholar of African literature, a diplomat and a novelist, and he died in
the Westgate shopping centre attack in Nairobi in 2013. *The Anvil and the Hammer*
belongs to *Rediscovery and Other Poems* (1964), a collection written in the first
years of Ghanaian independence and steeped in the question that independence made
urgent: what does a new nation do with the culture it was taught to be ashamed of?

#concept-box("Two tools, one job")[
  An anvil is a block of iron on which metal is shaped. A hammer is the tool that
  strikes the metal on the anvil. Between them there is a piece of metal being made
  into something. The persona's position — *caught between* — is therefore not a
  position of danger but a position of manufacture: he is the thing being forged, and
  the pain is the shaping. A reader who sees the anvil and hammer as two enemies
  misses the metaphor entirely: they are two halves of one process.
]

#text(size: 9.4pt)[The phrase "the forging house of a new life" is doing the political work. A forge is a workshop, not a battlefield; the new life is being *made*, and the material being made is the speaker's own culture. The poem's question is not whether the new life will come, but what will happen to the old metal in the making. That is why stanza two is a prayer to the fathers rather than a protest against the colonial power.]

#rule-box("Three facts that settle most questions")[
  + *Form:* two stanzas, ten lines and twelve lines, free verse, heavy enjambment.
  + *Method:* two extended metaphors — the forge (making) and the sewing (dressing) — joined by the idea of transformation.
  + *Argument:* the past must be sewn *under* the new garment, not discarded and not worn instead of it.
]

// ============================================================================
== 4.2 The Movement

#diagram-fig("diagrams/ch04_anvil_forge.svg",
  "Two workshops: the forge shapes the metal, the needle sews the garment.", width: 100%)

#table(
  columns: (0.5fr, 0.6fr, 1.9fr, 1.55fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[St.],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Lines],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What it does],
  ),
  [*1a*], [1–4], [the speaker is caught between anvil and hammer, and the pangs of birth become songs], [states the forge metaphor and the transformation],
  [*1b*], [5–10], [the old trapping — sisal, the goat's blood, the fetish hut — is set against the paved streets and the new jargon], [sets the two cultures side by side without resolving them],
  [*2a*], [11–15], [a prayer: sew the old days for us, that we may wear them under the new garment], [the request that answers the problem],
  [*2b*], [16–22], [the people ignore the old songs, take snatches of them, make new flags and anthems, and hear their songs in the sea], [the resolution: the old survives in fragments, inside the new],
)

#text(size: 9.4pt)[The two stanzas divide by tense and mood. Stanza one is *description in the present*: this is what is happening to me. Stanza two begins with an *imperative*: sew, fathers. The movement from description to prayer is the whole poem's shape, and it explains why the poem can be read as a national poem: a nation that has been forged now has to decide what to wear.]

// ============================================================================
== 4.3 The Voice and the Form

The poem has one speaker, and he speaks in the first person singular — "delivered me",
"our fathers", "we use snatches". The "me" and the "we" are not in conflict: the
speaker is one person speaking for a generation, and the shift from "me" to "we" in
the second stanza makes the personal forging a national one.

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
  [*Extended metaphor*], [the forge, lines 1–4; the sewing, lines 11–15], [makes cultural change a craft rather than a catastrophe],
  [*Antithesis*], ["anvil" and "hammer"; "old days" and "new garment"; "sisal" and "paved streets"], [holds two worlds in one sentence without choosing between them],
  [*Alliteration*], ["tender and tenuous"; "fibre … fetish"; "splash … sea"], [slows the line and gives the old culture a texture],
  [*Enjambment*], ["comes with the / charisma"; "use snatches / from their tunes"], [carries the reader across the line break, the way the culture is carried across a break],
  [*Imperative prayer*], ["Sew the old days for us, our fathers"], [turns description into a request, and makes the ancestors agents],
  [*Free verse*], [throughout], [keeps the poem close to speech and to prayer],
)

#concept-box("Why the poem addresses the fathers, not God")[
  The prayer is to "our fathers" — the ancestors — and the thing asked for is a
  *sewing*, a domestic craft. This is not decoration. In the traditional world the
  poem draws on, the ancestors are the ones who hold the community's continuity, and
  a request made to them is a request to be allowed to belong to two times at once.
  The poem's answer to colonialism is therefore not a rejection of the new but an
  appeal to the old to make room for it.
]

// ============================================================================
== 4.4 The Images

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
  [*"anvil and the hammer"*], [the two forces of cultural change to the tools of a smith], [the persona is the metal: shaped, not destroyed],
  [*"forging house of a new life"*], [the colonial encounter to a workshop], [what is happening is manufacture, and manufacture has a purpose],
  [*"pangs that delivered me"*], [birth pains to the pain of change], [the pain is productive; "delivered" is a birth word],
  [*"fibre of sisal"*], [the old culture to rope], [a rough, strong, hand-made material — the texture of tradition],
  [*"blood of the goat in the fetish hut"*], [traditional ritual to sacrifice], [the old religion is named precisely, without apology],
  [*"flimsy glories of paved streets"*], [modernity to a thin surface], [the new is glamorous and shallow — "flimsy" is the judgment],
  [*"jargon of a new dialectic"*], [intellectual fashion to a foreign language], [the new elite's speech is jargon: impressive and empty],
  [*"snatches / from their tunes"*], [the surviving fragments of tradition], [the old survives in pieces, inside the new anthems],
  [*"splash and moan of the sea"*], [the many rivers to the nation's songs], [the sea receives all rivers; nothing is lost],
)

#trap-box("The two words that decide the poem's attitude")[
  *"Flimsy"* and *"jargon"* are the poem's only dismissive words, and both are aimed
  at the new culture, not the old. But the poem does not therefore reject the new: it
  asks to wear the old *under* it. An answer that says the poem "rejects Western
  civilisation" has misread the sewing, and an answer that says it "celebrates
  modernity" has misread "flimsy".
]

// ============================================================================
== 4.5 The Themes

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
  [*Cultural conflict*], [two cultures meet in one body and one nation], ["The trapping of the past … are laced with the flimsy glories"],
  [*Colonialism and its aftermath*], [the new life is forged out of the old, by force], ["In the forging house of a new life"],
  [*Tradition and continuity*], [the old must be kept, but differently], ["Sew the old days for us, our fathers"],
  [*Syncretism*], [the answer is a garment with two layers, not a choice], ["wear them under our new garment"],
  [*The artist as forge*], [the poet's songs are made from the pain], ["Transforming the pangs … into the joy of new songs"],
  [*Identity and belonging*], [the speaker belongs to both, and asks to be allowed to], ["We hear their songs and rumours everyday"],
  [*Water as mixture*], [many rivers meet in one estuary, and the sea holds them all], ["the whirlpool of the many rivers' estuary"],
)

#text(size: 9.4pt)[The themes run in a chain, and the chain is the answer to a comparison question. Cultural conflict produces the forging; the forging produces the prayer for sewing; the sewing produces the garment with two layers; and the water image at the end says that the mixture is not a loss, because a sea that receives many rivers is still a sea. The poem is therefore an argument for *syncretism* — the fusion of two traditions into one living culture — rather than an argument for either side.]

// ============================================================================
== 4.6 Technique

#rule-box("Four techniques, and what each one buys")[
  + *Extended metaphor.* The forge is not a simile; it is a system, worked through the anvil, the hammer, the forging house, the pangs and the songs. Then a second system — the needle, the sewing, the garment — takes over.
  + *Antithesis.* Old and new are set side by side in the same sentence: sisal against paved streets, the fetish hut against the new dialectic. The syntax holds both, which is the poem's argument.
  + *Alliteration and texture.* "tender and tenuous", "fibre … fetish": the old culture is given a sound that is soft, woven and deliberate, in contrast to "jargon".
  + *The birth-and-song pun.* "Pangs that delivered me" and "joy of new songs" put pain and art in one sentence: the poem is about making, both a person and a poem.
]

#text(size: 9.4pt)[The most examinable single choice is the preposition *under* in "wear them under our new garment". *Instead of* would be a rejection of the new; *beside* would be a separation; *under* is the poem's whole politics — hidden, supporting, held against the skin. A question that asks what the line suggests is asking for that preposition.]

// ============================================================================
== 4.7 Four Worked Questions

#worked-example(
  1,
  "The metaphor",
  [The persona of *The Anvil and the Hammer* is

    A. the blacksmith
    B. the metal being forged
    C. the hammer
    D. a bystander],
  [
    *Step 1 — read the first two lines.* "Caught between the anvil and the hammer / In the forging house of a new life".

    *Step 2 — ask what is between the two tools.* The metal, which is being shaped.

    *Step 3 — confirm with the next line.* "Transforming the pangs that delivered me" — the "me" is what is being transformed.

    *Check.* The persona is the material of the new life. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The request",
  ["Sew the old days for us, our fathers" asks that the past be

    A. discarded
    B. worn under the new garment
    C. displayed instead of the new garment
    D. sold to foreigners],
  [
    *Step 1 — read on.* The next line gives the purpose: "That we can wear them under our new garment".

    *Step 2 — interpret the preposition.* Under: hidden, supporting, in contact with the body.

    *Step 3 — eliminate.* Discard and display both contradict "under"; there is no selling anywhere in the poem.

    *Check.* The past is to be retained inside the new life, not outside it. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The judgment",
  [The phrase "flimsy glories of paved streets" suggests that the new culture is

    A. entirely worthless
    B. attractive but thin
    C. dangerous and violent
    D. sacred and eternal],
  [
    *Step 1 — take the words separately.* "Glories" is praise; "flimsy" is a material judgment — thin, easily torn.

    *Step 2 — hold them together.* The new culture is genuinely glorious and genuinely thin: it shines and it does not last.

    *Step 3 — eliminate.* "Entirely worthless" overstates, since the poem calls them glories; "dangerous and violent" is not in the image; "sacred" is the opposite.

    *Check.* The phrase is a mixed judgment, which is why it is examinable. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "The last image",
  [The final image of the sea suggests that

    A. the nation will be drowned by foreign culture
    B. many songs flow into one body and are held there
    C. the sea is indifferent to the people
    D. the old songs have been lost],
  [
    *Step 1 — locate the image.* "the splash and moan of the sea", after the many rivers' estuary.

    *Step 2 — read the whole stanza.* The people take snatches of old tunes, make new flags and anthems, and hear the reverberation of their songs in the sea.

    *Step 3 — interpret.* A sea that receives many rivers holds all of them; the old songs are not lost but contained.

    *Check.* The image answers the poem's fear with inclusion. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.8 Two-Minute Set

#mcq(1, [The poem has], [three stanzas], [two stanzas], [four quatrains], [seven-line stanzas])

#mcq(2, [The "forging house" is an image of], [a prison], [the making of a new life], [a church], [a market])

#mcq(3, [The persona asks the fathers to], [return the old days whole], [sew the old days under the new garment], [destroy the new garment], [forget the old songs])

#mcq(4, [The new culture is described as], [solid and lasting], [flimsy but glorious], [entirely evil], [invisible])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Two stanzas of ten and twelve lines, free verse, with the sewing prayer at the start of the second.]),
  ("B", [A forge is a workshop: the anvil, the hammer and the metal are all parts of one process of making.]),
  ("B", ["Wear them under our new garment" is the poem's central request and its politics.]),
  ("B", ["Flimsy glories" holds praise and judgment in one phrase — which is why it is so often examined.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the forge, the sewing, the two cultures and the sea.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Kofi Awoonor's *The Anvil and the Hammer* is a two-stanza free-verse poem from *Rediscovery and Other Poems* (1964), written in the first years of Ghanaian independence. Its first stanza is a forge: the persona is caught between the anvil and the hammer in the forging house of a new life, and the pangs that delivered him are being transformed into the joy of new songs. The old trapping — sisal fibre, the goat's blood in the fetish hut — is set against the flimsy glories of paved streets and the jargon of a new dialectic, and the stanza holds both without choosing. The second stanza turns description into prayer: sew the old days for us, our fathers, that we can wear them under our new garment, after we have washed in the whirlpool of the many rivers' estuary. The people hear the old songs and ignore them, take snatches of their tunes, make new flags and anthems, and hear their own songs reverberate in the splash and moan of the sea. The poem's themes are cultural conflict, colonialism, tradition, syncretism, the artist as forge, identity and water as mixture; its technique is extended metaphor, antithesis, alliteration, enjambment and the imperative prayer. Its key preposition is *under*.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Name the poet, the collection and the year.],
  [Say who the persona is in the forge metaphor, and why.],
  [Quote the sewing prayer exactly.],
  [Explain "flimsy glories" in one sentence.],
  [Name the two water images and what each one does.],
  [State the poem's argument in one sentence, using the word "under".]),
)

#concept-box("Carry this into Chapter 5")[
  *The Anvil and the Hammer* ends with the sea holding many rivers. *Crossing the Bar*
  ends with a single crossing, alone, at dusk. Both poems make water the threshold; but
  one is about a culture entering the future and the other is about a man entering
  death. Chapter 5 is the quieter poem, and the more exact.
]

#include "drill_ch04.typ"
