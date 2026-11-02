#import "template.typ": *

#current-chapter.update("Appendix D: The Quotation Bank")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Quotation Bank]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Quotation Bank]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Thirty-seven exact quotations, grouped poem by poem, with the stanza or scene and the
    argument each one can carry. Learn the middle column by stanza number; learn the
    right-hand column by the kind of question it answers.
  ]
]

#v(4pt)

#text(size: 9.2pt)[A quotation is worth learning only if you know *what it is for*. Each row below gives the line, where it comes from, and the claim it can prove. In the hall, the middle column locates the line and the right-hand column supplies the reason — which is the order in which a good answer is built.]

== D.1 Vanity — Eight Quotations

#table(
  columns: (1.75fr, 0.95fr, 2.15fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Quotation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it proves],
  ),
  ["If we tell, gently, gently / All that we shall one day have to tell"],
  [st. 1], [the poem opens on a possibility, not a fact — which is why the last stanza's "since" matters],
  ["Who then will hear our voices without laughter"],
  [st. 1], [the expectation of mockery is the poem's first sound; the question is rhetorical],
  ["Sad complaining voices of beggars"],
  [st. 1], [the people's speech is a request that depends on another's willingness to hear],
  ["Shaped by the laughter of big children"],
  [the mouth passage], [the powerful are childish and the people's open mouths are ridiculous],
  ["Which grows in us like a tumour / In the black depth of our plaintive throats"],
  [the throat passage], [the anger is internal, bodily and self-consuming; the throat links it to speech],
  ["When our Dead come with their Dead"],
  [st. 4], [the ancestral world is a community extending backwards, not a set of ghosts],
  ["They have left on the earth their cries, / In the air, on the water"],
  [st. 5], [the elements are a record, and the living are described as blind and deaf in front of it],
  ["And since we did not understand our dead"],
  [st. 6], [the turn: possibility becomes verdict, and the grief that follows cannot undo it],
)

== D.2 Ambush — Eight Quotations

#table(
  columns: (1.75fr, 0.95fr, 2.15fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Quotation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it proves],
  ),
  ["swallows the sinker, / with hook, line and bait"], [st. 1], [the whole apparatus is taken: the attempt is destroyed, not only its reward],
  ["aborting dreams of a good catch"], [st. 1], [a birth word applied to hope; the loss is a prevented arrival],
  ["blue Peter on empty ships"], [st. 1], [a departure signal flown over ships that will not sail — the stanza's bitter irony],
  ["all Peters with petered out desires"], [st. 1], [a triple pun makes failure a property of the language itself],
  ["cries deep in the glade"], [st. 2], [the danger is heard before it is seen, which is what makes it an ambush],
  ["snatch their gut / from bayonets of tribulation"], [st. 2], [courage lost in panic, and suffering armed like a soldier],
  ["courts unceasing disaster"], [st. 3], [the predator seeks the harm it causes; the verb gives it intention],
  ["The land lies patiently ahead / awaiting in ambush"], [st. 4], [the setting itself is the ambusher, and patience is its advantage],
)

== D.3 The Anvil and the Hammer — Eight Quotations

#table(
  columns: (1.75fr, 0.95fr, 2.15fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Quotation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it proves],
  ),
  ["Caught between the anvil and the hammer"], [st. 1, l. 1], [the persona is the material being shaped, not a victim of two enemies],
  ["In the forging house of a new life"], [st. 1, l. 2], [cultural change is manufacture, with a purpose and a product],
  ["Transforming the pangs that delivered me / Into the joy of new songs"], [st. 1, ll. 3–4], [birth and art joined: the pain is made into poetry],
  ["fibre of sisal"], [st. 1], [the old culture given a rough, strong, hand-made texture],
  ["the blood of the goat in the fetish hut"], [st. 1], [traditional religion named precisely and without apology],
  ["flimsy glories of paved streets"], [st. 1], [modernity praised and judged in one phrase],
  ["Sew the old days for us, our fathers"], [st. 2, l. 1], [description becomes prayer, and the ancestors become agents],
  ["wear them under our new garment"], [st. 2, l. 2], [the poem's whole politics in a preposition: retained, hidden, supporting],
)

== D.4 Crossing the Bar — Eight Quotations

#table(
  columns: (1.75fr, 0.95fr, 2.15fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Quotation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it proves],
  ),
  ["Sunset and evening star"], [q. 1], [the hour is chosen for calm, and the poem's light begins to fail],
  ["And one clear call for me"], [q. 1], [death is a summons that is unmistakable and personal],
  ["And may there be no moaning of the bar"], [q. 2], [the prayer form, and the fear that the crossing might sound like grief],
  ["Too full for sound and foam"], [q. 2], [the ideal death: complete, deep and silent],
  ["Twilight and evening bell, / And after that the dark!"], [q. 3], [the deliberate darkening, and the poem's only shock],
  ["bourne of Time and Place"], [q. 4], [the world is a boundary the speaker is leaving],
  ["I hope to see my Pilot face to face"], [q. 4], [hope rather than certainty, and a personal meeting with God],
  ["When I have crost the bar"], [q. 4], [the metaphor closes on the crossing itself, unnamed as death],
)

== D.5 The Proud King — Five Exact Quotations, and Three Scenes

#table(
  columns: (1.75fr, 0.95fr, 2.15fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Quotation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it proves],
  ),
  ["In a far country that I cannot name"], [the opening], [the tale is placed at a deliberate distance, in the manner of an old story],
  ["What need have I for temple or for priest"], [the boast], [pride stated as a theology: the king has no need of God],
  ["Am I not God, whiles that I live at least"], [the boast], [the exact claim the poem answers with a beggar's life],
  ["the kennel of my dogs"], [the scorn], [contempt for his own inheritance, and therefore for the source of his rank],
  ["O Lord God, give me back myself again!"], [the cry], [repentance: he asks for himself, not for the crown],
)

#text(size: 9.2pt)[The poem is eight hundred and fifty lines long, and the paper examines it by *scene* rather than by stray line. For this poem, the three rows below are worth more than twenty quotations you cannot place.]

#table(
  columns: (1.15fr, 2.0fr, 1.7fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Scene],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it proves],
  ),
  [*The porter at the ranger's gate*], [the lowest servant mocks and refuses the king], [rank depends on its signs; without them the man is nobody],
  [*The queen and the lords*], [the person closest to him denies him at the palace], [recognition is moral, not visual; intimacy is no guarantee of sight],
  [*The angel revealed*], [the figure in white with wings returns the kingdom, saying that only the humble are fit to rule], [the office was never the man; the punishment has taught him what the throne could not],
)

#trap-box("The last line of the poem")[
  The final sentence is the narrator's, not the king's: Morris says he does not know whether
  God chastised the new king in his turn. It is the poem's last irony, and it is the safest
  evidence for any question about the poem's *ending* or its *attitude to power* — the story
  is offered as a warning, and a warning can be ignored.
]
