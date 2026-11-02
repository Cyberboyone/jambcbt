#import "template.typ": *

#current-chapter.update("Appendix J: Thirty Traps")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: Thirty Traps]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Thirty Traps]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Thirty statements that look true, sound like the notes, and lose the mark. Each is
    followed by the correction. Read the left column and try to spot the error before
    you read the right.
  ]
]

#v(4pt)

#[
  #set text(size: 8.4pt)
  #set par(leading: 0.6em, spacing: 0.62em)
  #table(
    columns: (0.35fr, 2.15fr, 2.55fr),
    inset: (x: 4.2pt, y: 3.2pt),
    align: (center + horizon, left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[No.],
      text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[The trap],
      text(font: "DejaVu Sans", size: 7.2pt, weight: "bold", fill: white)[The correction],
    ),
    [1], [*Vanity* is a complaint about slavery.], [The poem names no historical event; it is about a community that has stopped hearing its dead.],
    [2], [The people in *Vanity* are innocent victims.], [They are "blind deaf and unworthy Sons"; the poem is a confession in the first person plural.],
    [3], [The tumour in *Vanity* is the dead's anger.], [It grows *in us*: the living people's own bitterness, lodged in the throat.],
    [4], [The last stanza of *Vanity* offers hope.], [It ends on an unanswered question — "What ear to our sobbing hearts?" — and the silence is the point.],
    [5], [*Vanity* is rhymed.], [It is free verse, held together by anaphora, refrain and rhetorical question.],
    [6], [*Ambush* is a poem about wild animals.], [The whale, tiger and hawk are vehicles; the tenor is a state that preys on its people.],
    [7], [Blue Peter is a fisherman in *Ambush*.], [It is the maritime flag signalling that a ship is about to sail — flown here over empty ships.],
    [8], [In *Ambush*, the sea is the only dangerous element.], [Water, land and air are all closed; the point of the sequence is that there is no escape anywhere.],
    [9], [The land in *Ambush* offers refuge.], ["The land lies patiently ahead / awaiting in ambush" — it is the trap, not the refuge.],
    [10], [The shore in *Ambush* is reached by the people.], [The poem names a direction, not an arrival; the water belongs to the whale.],
    [11], [The persona of *The Anvil* is the blacksmith.], [He is the metal between the two tools, being shaped into the new life.],
    [12], [*The Anvil* rejects Western culture.], [It judges modernity "flimsy" but asks to wear the old days *under* the new garment — syncretism, not rejection.],
    [13], [The old days in *The Anvil* are worn instead of the new garment.], [Under it: hidden, supporting, held against the skin.],
    [14], [The "flimsy glories" are worthless.], [They are glories — attractive and thin at once. The phrase is a mixed judgment.],
    [15], [The two stanzas of *The Anvil* are both descriptions.], [The second begins with an imperative prayer: "Sew the old days for us, our fathers".],
    [16], [*Crossing the Bar* is about a sea voyage.], [The voyage is the vehicle; death is the tenor. The poem never uses the word death.],
    [17], [The Pilot is the ship's captain.], [The Pilot is God; "face to face" echoes 1 Corinthians 13:12.],
    [18], [The tone of *Crossing the Bar* is fear.], [It is calm acceptance with hope: the call is clear, the tide is full, the meeting is hoped for.],
    [19], [The poem is iambic pentameter throughout.], [The lines run from three to five stresses; the short fourth line closes each quatrain.],
    [20], [The bar is a public house.], [It is a sandbank at a harbour mouth, crossed on a full tide.],
    [21], [*The Proud King* is a lyric.], [It is a narrative poem of about 850 lines in rhyme royal.],
    [22], [Rhyme royal is abab.], [It is seven lines rhymed ababbcc, in iambic pentameter.],
    [23], [The angel is a dream or hallucination.], [The poem presents him as real, and he rules better than Jovinian did.],
    [24], [Jovinian asks for his crown back.], [He cries "give me back myself again" — the self, not the throne.],
    [25], [The queen recognises him because she loves him.], [The queen denies him; only the old priest recognises him, after the cry.],
    [26], [The kennel line shows the king's humility.], [It shows contempt for his own ancestry — the source of his rank.],
    [27], [The poem ends with the angel's death.], [It ends thirty years later, with the tale written into the archives.],
    [28], [Morris says the next king was punished.], [He says he does not know — the warning may be ignored.],
    [29], [A comparison answer can describe both poems in turn.], [It must state a relation — whereas, but, while — and support it from both.],
    [30], [Leaving a blank is safer than guessing.], [There is no negative marking; a blank is a certain zero and a guess is a chance at a mark.],
  )
]

#v(4pt)

#concept-box("The pattern behind the thirty")[
  Nine of these traps are the same mistake in different clothes: *mistaking the vehicle for the
  tenor*. The whale is not the subject of *Ambush*, the voyage is not the subject of *Crossing the
  Bar*, and the forge is not the subject of *The Anvil*. When an option describes the image
  literally, check whether the question is asking about the image or about what it carries.
]
