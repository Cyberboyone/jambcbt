#import "template.typ": *

#current-chapter.update("Appendix E: The Verse-Terms Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Verse-Terms Glossary]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Verse-Terms Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty-five terms the paper actually uses, each defined in a line and shown in a line
    from one of the five poems. Learn the definition for the terms section; learn the
    example for the function questions, which ask what a device is *doing*.
  ]
]

#v(4pt)

#text(size: 9.2pt)[A term is worth half a mark on its own and a whole mark when you can say what it does. The third column is therefore the important one: it names the effect, and an effect is what a function question rewards.]

#[
  #set text(size: 8.1pt)
  #set par(leading: 0.6em, spacing: 0.62em)
  #table(
    columns: (0.9fr, 2.05fr, 2.1fr),
    inset: (x: 4.2pt, y: 3.0pt),
    align: (left + horizon, left + horizon, left + horizon),
    stroke: 0.4pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 7.1pt, weight: "bold", fill: white)[Term],
      text(font: "DejaVu Sans", size: 7.1pt, weight: "bold", fill: white)[Definition],
      text(font: "DejaVu Sans", size: 7.1pt, weight: "bold", fill: white)[In these poems, and what it does],
    ),
    [*Metre*], [the pattern of stressed and unstressed syllables in a line], [Crossing the Bar varies from three to five stresses; the variation keeps the poem close to speech],
    [*Iamb*], [an unstressed syllable followed by a stressed one], [the base foot of rhyme royal in The Proud King: a-BOVE, a-LONE],
    [*Trochee*], [a stressed syllable followed by an unstressed one], [the opening of Crossing the Bar — SUN-set — falls with a trochaic lilt],
    [*Pentameter*], [a line of five feet], [the normal line of The Proud King's rhyme royal],
    [*Trimeter*], [a line of three feet], [several lines of Crossing the Bar, especially at the close of a quatrain],
    [*Blank verse*], [unrhymed iambic pentameter], [not used in these five poems, but the form of the Shakespeare plays in Volume 2],
    [*Free verse*], [poetry without fixed metre or rhyme], [Vanity and Ambush; both are highly patterned by repetition and syntax],
    [*Rhyme*], [the matching of sounds at line ends], [Crossing the Bar rhymes star with bar; The Proud King rhymes in ababbcc],
    [*Rhyme scheme*], [the pattern of end rhymes, lettered from A], [ABAB in Crossing the Bar; ababbcc in rhyme royal],
    [*Rhyme royal*], [a seven-line stanza rhymed ababbcc in pentameter], [the whole of The Proud King; the closing couplet lets the poem move scene by scene],
    [*Couplet*], [two rhyming lines], [the last two lines of every rhyme-royal stanza close it with a click],
    [*Quatrain*], [a four-line stanza], [Crossing the Bar is four quatrains; the unseen poems in the papers are built from them],
    [*Stanza*], [a group of lines set off by space], [Vanity's six uneven stanzas map the six stages of its argument],
    [*Enjambment*], [a sentence running past the line end], [Ambush runs sentences across lines and stanzas, driving the reader forward],
    [*End-stopped line*], [a line closed by punctuation], [Crossing the Bar's short fourth lines are end-stopped, which is why each stanza falls closed],
    [*Caesura*], [a pause inside a line], [the dash and full stop inside Vanity's questions break the line into gasps],
    [*Refrain*], [a repeated line or phrase], ["gently, gently" returns at the start and the end of Vanity, and the repetition is the poem's structure],
    [*Anaphora*], [repetition at the start of successive lines], ["If we …", "What …" in Vanity; the questions become a litany],
    [*Repetition*], [the deliberate repeating of a word or phrase], ["In the air, on the water" makes the elements a refrain in Vanity],
    [*Alliteration*], [the repetition of initial consonants], ["tender and tenuous" in The Anvil gives the old culture a soft texture],
    [*Assonance*], [the repetition of vowel sounds], [the long o sounds in Crossing the Bar's "moaning" and "foam" slow the line],
    [*Consonance*], [the repetition of consonants, not only at the start], ["splash and moan" in The Anvil holds the sea's sound together],
    [*Onomatopoeia*], [a word that imitates a sound], ["splash" in The Anvil; "hoots" in Ambush],
    [*Simile*], [a comparison using like or as], ["grows in us like a tumour" in Vanity; the street folding "like a mat" in Paper 2],
    [*Metaphor*], [a comparison that says one thing is another], ["The land lies … awaiting in ambush" makes the country a predator],
    [*Tenor*], [the thing a metaphor describes], [in Ambush the tenor is the state; the whale is only the vehicle],
    [*Vehicle*], [the image used to describe the tenor], [the whale, the tiger and the hawk are the vehicles of Ambush],
    [*Extended metaphor*], [a metaphor developed across a whole passage], [the forge in The Anvil, then the needle and garment],
    [*Personification*], [giving human qualities to a non-human thing], [the land lies "patiently"; the rain "remembers" in Paper 3],
    [*Symbol*], [an image that stands for something beyond itself and recurs], [the bar in Crossing the Bar is a sandbank and a threshold of death],
    [*Imagery*], [the pictures a poem makes, taken together], [whale, tiger and hawk form Ambush's imagery of predation],
    [*Hyperbole*], [deliberate exaggeration], [the boast in The Proud King — "Am I not God" — is a hyperbole of pride],
    [*Understatement*], [saying less than the case requires], ["And after that the dark!" says death in five words],
    [*Oxymoron*], [two contradictory words joined], ["flimsy glories" in The Anvil praises and dismisses in one phrase],
    [*Paradox*], [a statement that seems contradictory but is true], ["a dry well is still a well" in Paper 3],
    [*Irony*], [a gap between what is said and what is meant, or between expectation and event], [the blue Peter over empty ships in Ambush],
    [*Pun*], [a play on two meanings or sounds of a word], ["all Peters with petered out desires" in Ambush],
    [*Apostrophe*], [direct address to someone absent or to a thing], ["Sew the old days for us, our fathers" in The Anvil],
    [*Rhetorical question*], [a question that expects no answer], [Vanity ends on one, and the silence is the answer],
    [*Tone*], [the speaker's attitude as carried by the writing], [Crossing the Bar's tone is calm acceptance with hope],
    [*Mood*], [the feeling the poem creates in the reader], [the mood of Ambush is a closing net; the mood of Vanity is a late grief],
    [*Persona*], [the voice the poet constructs to speak the poem], [the "we" of Vanity is a persona, not Birago Diop],
    [*Theme*], [the idea the poem argues about], [identity and rank in The Proud King; cultural loss in Vanity],
    [*Volta*], [the turn of a poem, especially in a sonnet], [Vanity's volta is the word "since" in the last stanza],
    [*Diction*], [the poet's choice of words], ["clumsy", "tender", "flimsy" do most of the judging in these poems],
    [*Syntax*], [the arrangement of words into sentences], [the long run-on sentences of Ambush are the syntax of a chase],
    [*Scansion*], [the marking of stresses to show a line's metre], [scan the fourth line of each Crossing the Bar quatrain and hear it shorten],
  )
]

#concept-box("The three terms most often confused")[
  *Metaphor and symbol.* A metaphor is a comparison made in words; a symbol is an object that
  carries meaning beyond itself and recurs. The bar is both a real thing and a symbol, but the
  forge is a metaphor — there is no forge in the poem, only the image of one.

  *Tone and mood.* Tone belongs to the speaker; mood belongs to the reader. A poem can have a
  calm tone and a frightening mood, which is exactly what Crossing the Bar does.

  *Refrain and repetition.* A refrain is a repeated line, usually at a fixed place; repetition
  is the broader device, and Vanity uses both.
]
