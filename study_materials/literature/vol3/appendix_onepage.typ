#import "template.typ": *

#current-chapter.update("Appendix G: The Five Poems, One Page Each")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: The Five Poems, One Page Each]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Five Poems, One Page Each]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Five cards, five poems, the same seven rows on each. This is the last thing to read
    before the paper and the only thing to read in the queue outside the hall.
  ]
]

#v(4pt)

#let card(title, rows) = block(
  width: 100%,
  breakable: false,
  stroke: 0.8pt + jamb-border,
  radius: 8pt,
  inset: 9pt,
)[
  #text(font: "DejaVu Sans", size: 10.5pt, weight: "bold", fill: jamb-green)[#title]
  #v(3pt)
  #table(
    columns: (0.72fr, 3.53fr),
    inset: (x: 4pt, y: 3.1pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { none } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if calc.even(y) { white } else { jamb-light },
    ..rows,
  )
]

#card("G.1 Vanity — Birago Diop", (
  [*Situation*], [a collective "we" imagines telling its story and finds that no one will hear it],
  [*Shape*], [six uneven stanzas; the telling, the crying, the tumour, the dead, the signs, the verdict],
  [*Five lines*], ["If we tell, gently, gently" · "voices of beggars" · "Shaped by the laughter of big children" · "When our Dead come with their Dead" · "And since we did not understand our dead"],
  [*Three themes*], [cultural loss; the presence of the ancestors; the vanity of late regret],
  [*Technique*], [free verse, anaphora, rhetorical question, the shift from "if" to "since"],
  [*Two traps*], [calling it a simple lament; missing that the fault is already committed],
  [*One sentence*], [the poem is an accusation made in the first person plural, and its verdict is a conjunction],
))

#v(4pt)

#card("G.2 Ambush — Gbemisola Adeoti", (
  [*Situation*], [an observer describes a country in which water, land and air are all patrolled],
  [*Shape*], [four stanzas of 8, 6, 3 and 4 lines; whale, tiger, hawk, then the land],
  [*Five lines*], ["swallows the sinker, / with hook, line and bait" · "blue Peter on empty ships" · "all Peters with petered out desires" · "courts unceasing disaster" · "The land lies patiently ahead"],
  [*Three themes*], [oppression; foiled aspiration; the illusion of escape],
  [*Technique*], [extended metaphor, pun, enjambment, present tense, direct address],
  [*Two traps*], [calling it a poem about animals; reading "blue Peter" as a person],
  [*One sentence*], [the poem is a siege map, and it ends by naming the shore without promising the crossing],
))

#v(4pt)

#card("G.3 The Anvil and the Hammer — Kofi Awoonor", (
  [*Situation*], [a man caught between two cultures describes being forged, and prays to his fathers],
  [*Shape*], [two stanzas of 10 and 12 lines; the forge, then the sewing],
  [*Five lines*], ["Caught between the anvil and the hammer" · "the forging house of a new life" · "flimsy glories of paved streets" · "Sew the old days for us, our fathers" · "wear them under our new garment"],
  [*Three themes*], [cultural conflict; tradition and continuity; syncretism],
  [*Technique*], [two extended metaphors, antithesis, alliteration, enjambment, imperative prayer],
  [*Two traps*], [saying the poem rejects modernity; missing the preposition "under"],
  [*One sentence*], [the poem asks to keep the past by wearing it inside the present, not instead of it],
))

#v(4pt)

#card("G.4 Crossing the Bar — Alfred, Lord Tennyson", (
  [*Situation*], [a man about to die imagines the crossing as a ship leaving harbour at evening],
  [*Shape*], [four quatrains, ABAB; sunset, the tide, twilight, the Pilot],
  [*Five lines*], ["Sunset and evening star" · "And one clear call for me!" · "Too full for sound and foam" · "And after that the dark!" · "I hope to see my Pilot face to face"],
  [*Three themes*], [death as a crossing; acceptance; faith and hope],
  [*Technique*], [extended metaphor, symbol, the repeated "may" of prayer, the short closing line],
  [*Two traps*], [calling it a poem about a voyage; missing that the Pilot is God],
  [*One sentence*], [the poem dies without naming death, and hopes without claiming certainty],
))

#v(4pt)

#card("G.5 The Proud King — William Morris", (
  [*Situation*], [a king who calls himself a god is stripped of his identity and taught what a man is],
  [*Shape*], [narrative in rhyme royal, c. 850 lines; twelve scenes from the boast to the archive],
  [*Five lines*], ["In a far country that I cannot name" · "Am I not God, whiles that I live at least" · "the kennel of my dogs" · "O Lord God, give me back myself again!" · the angel's rule that only the humble are fit],
  [*Three themes*], [pride and its punishment; identity and rank; recognition and repentance],
  [*Technique*], [rhyme royal, third-person narrative, irony, symbol (clothes, gate, throne), frame],
  [*Two traps*], [calling it a lyric; thinking the angel is a dream],
  [*One sentence*], [a king loses the throne to find the self, and the story is written down so the next king need not learn it the same way],
))

#v(6pt)

#concept-box("How to use these five pages")[
  Read one card, close the book, and say the seven rows aloud. Any row you cannot say is
  the page to reread. In the last week, the five cards and the five traps are enough: the
  details are in the chapters, and the chapters are not going anywhere.
]
