#import "template.typ": *

#current-chapter.update("Appendix D: Glossary of Literary Terms")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Glossary of Literary Terms]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary of Literary Terms]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every term the syllabus can ask you to define, in alphabetical order, with the
    shortest definition that will still earn the mark and an example wherever the
    example is what makes the term stick.
  ]
]

#v(5pt)

== D.1 The Terms, A–Z

#[
  #set text(size: 8.0pt)
#table(
  columns: (1.02fr, 2.62fr, 1.55fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 0.8pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Example or note],
  ),
  [*Allegory*], [a narrative with a systematic second meaning], [Everyman stands for all humanity],
  [*Alliteration*], [repetition of initial consonants], [*thick thorns thrust*],
  [*Allusion*], [an unexplained reference to another text or event], [a poem that names no one but means Eden],
  [*Anagnorisis*], [the recognition of what has been done or who someone is], [Oedipus understands the prophecy],
  [*Antagonist*], [the force or figure that opposes the protagonist], [not always a villain],
  [*Anticlimax*], [a structural let-down after built expectation], [a duel resolved by an announcement of dinner],
  [*Antithesis*], [opposed ideas in balanced clauses], [*they gave me a flag … and a grave that was not mine*],
  [*Apostrophe*], [address to the absent, dead or inanimate], [*O Death, be not proud*],
  [*Aside*], [a short speech heard by the audience, not by those on stage], [a judgment dropped into company],
  [*Assonance*], [repetition of vowel sounds], [*the low moan of the horn*],
  [*Ballad*], [a narrative song in short stanzas], [often *abcb*, with a refrain],
  [*Bathos*], [a fall from the sublime to the trivial inside the writing], [a death followed by the smell of gravy],
  [*Blank verse*], [unrhymed iambic pentameter], [the medium of Shakespeare and Milton],
  [*Caesura*], [a pause inside a line], [marked by punctuation or by the metre hesitating],
  [*Catharsis*], [the audience's purging of pity and fear], [the effect at the close of a tragedy],
  [*Character*], [a person constructed in a text by action, speech and report], [flat, round, static, dynamic],
  [*Chorus*], [a group speaking outside the action, in comment], [Greek drama; much African drama],
  [*Cliché*], [an expression worn out by overuse], [*at the end of the day*],
  [*Climax*], [the point of highest tension where the outcome is decided], [not the same as the last scene],
  [*Comedy*], [a play ending in an enlarged community], [marriage, reunion, reconciliation],
  [*Conceit*], [an elaborate comparison sustained through a poem], [the compasses in Donne],
  [*Connotation*], [the associations a word carries beyond its meaning], [*home* against *house*],
  [*Consonance*], [repetition of final consonants], [*stroke / luck*],
  [*Couplet*], [two rhymed lines], [the Shakespearean sonnet's close],
  [*Denouement*], [the untying of the plot at the close], [literally, the knot untied],
  [*Diction*], [the choice of words], [formal, colloquial, dialectal],
  [*Dirge*], [a funeral song of mourning], [ritual repetition and refrain],
  [*Dramatic irony*], [the audience knows what a character does not], [the poisoned cup raised in a toast],
  [*Dramatic monologue*], [a character's speech to a silent listener], [one voice, self-revealing],
  [*Elegy*], [a poem of mourning], [praise, grief and attempted consolation],
  [*End-stopping*], [the sense closing at the line end], [the opposite of enjambment],
  [*Enjambment*], [the sense running past the line end], [speed, suspense, unease],
  [*Epic*], [a long heroic narrative with a nation at stake], [elevated style; interventions of the gods],
  [*Epistolary*], [a novel told in letters or documents], [gaps between the letters carry meaning],
  [*Euphemism*], [a mild term for a harsh thing], [*passed on* for *died*],
  [*Fable*], [a short tale with a stated moral], [often with animals],
  [*Farce*], [comedy of improbable situation at speed], [doors, coincidences, mistaken identity],
  [*Feminine rhyme*], [a rhyme stressed before its last syllable], [*shaking / breaking*],
  [*Foil*], [a character placed to contrast with another], [the patient sister beside the reckless one],
  [*Foreshadowing*], [a detail planted to matter later], [the knowledge suspense then uses],
  [*Free verse*], [poetry without regular metre or rhyme], [the line break is the only measure],
  [*Genre*], [a family of texts sharing a mode of arrival], [drama, prose, poetry],
  [*Hamartia*], [the error of judgment that begins a tragic fall], [not fate, not simple villainy],
  [*Hubris*], [overweening pride], [a species of hamartia],
  [*Hyperbole*], [deliberate exaggeration], [*a thousand times*],
  [*Iamb*], [an unstressed followed by a stressed syllable], [da-DUM],
  [*Image*], [language that appeals to the senses], [visual, tactile, auditory],
  [*Irony*], [a gap between what is said and what is meant, or known and true], [verbal, situational, dramatic],
  [*Litotes*], [understatement by denying the opposite], [*not unkind*],
  [*Masculine rhyme*], [a rhyme on the final stressed syllable], [*today / away*],
  [*Melodrama*], [serious action with simplified virtue and villainy], [a last-minute rescue],
  [*Metaphor*], [a comparison that asserts identity], [*the city is a stone lung*],
  [*Metonymy*], [an associate stands for the thing], [*the crown* for the monarchy],
  [*Metre*], [a pattern of stressed and unstressed syllables], [iambic pentameter],
  [*Mock epic*], [epic machinery applied to a trivial subject], [the joke is the disproportion],
  [*Monologue*], [a long speech by one character], [others may be present],
  [*Mood*], [the feeling produced in the reader], [distinct from tone],
  [*Motif*], [a recurring image or phrase that gathers meaning], [each return revises the last],
  [*Narrator*], [the constructed voice that tells a narrative], [not the author],
  [*Ode*], [a formal lyric addressed to a person, object or idea], [elevated, structured praise],
  [*Onomatopoeia*], [a word imitating the sound it names], [*hiss*, *clang*],
  [*Oxymoron*], [two contradictory words joined], [*bitter sweet*],
  [*Paradox*], [a statement that seems contradictory and is true], [*the child is father of the man*],
  [*Parallelism*], [a repeated grammatical pattern], [two ideas weighed equally],
  [*Pastoral*], [country life presented as simpler and better], [shepherds, seasons, the town as contrast],
  [*Pathetic fallacy*], [nature made to share the mood of the scene], [rain at a funeral],
  [*Peripeteia*], [the reversal of the hero's fortune], [the hinge of a tragedy],
  [*Persona*], [the voice constructed within a text], [the speaker of a poem],
  [*Personification*], [human qualities given to the non-human], [*the wind wept*],
  [*Picaresque*], [the episodic adventures of a rogue], [the hero survives by wit],
  [*Plot*], [events in the order the text presents them], [the arrangement, not the chronology],
  [*Point of view*], [the position from which a narrative is told], [first, omniscient, limited, objective],
  [*Protagonist*], [the central figure whose fate organises the work], [not necessarily admirable],
  [*Pun*], [a play on two meanings of one word], [*a grave man*],
  [*Quatrain*], [a stanza of four lines], [*abab*, *abba* or *aabb*],
  [*Refrain*], [a line or phrase repeated at intervals], [ritual, and a measure of change],
  [*Rhyme scheme*], [the pattern of end rhymes, lettered by sound], [*abab cdcd efef gg*],
  [*Rhythm*], [the movement produced by patterned stress], [march, heartbeat, stumble],
  [*Sarcasm*], [irony with a sting, aimed at a person], [wounding, not merely reversing],
  [*Satire*], [ridicule with a corrective aim], [implies the standard by which it judges],
  [*Setting*], [place, time and social world as pressures], [not scenery],
  [*Simile*], [a comparison using *like* or *as*], [*like a patient animal*],
  [*Soliloquy*], [a speech delivered alone on stage], [the audience alone hears it],
  [*Sonnet*], [fourteen pentameter lines with a turn], [Petrarchan 8 + 6; Shakespearean 4 + 4 + 4 + 2],
  [*Stanza*], [a group of lines forming a unit], [equal stanzas suggest order],
  [*Story*], [events in chronological order], [the raw material of plot],
  [*Suspense*], [the tension produced by withheld or delayed information], [built by foreshadowing],
  [*Symbol*], [a concrete thing carrying unstated abstract meaning], [the bar in *Crossing the Bar*],
  [*Synecdoche*], [a part stands for the whole], [*all hands on deck*],
  [*Theme*], [what a text says about its subject], [a claim, and therefore a sentence],
  [*Tone*], [the writer's attitude to the subject], [wry, elegiac, accusatory],
  [*Tragedy*], [a person of standing falls through an action he cannot undo], [pity and fear, then catharsis],
  [*Tragicomedy*], [a real threat survived by an earned escape], [not a mixture by accident],
  [*Volta*], [the turn of a poem's argument], [line 9 or line 13 in a sonnet],
  [*Zeugma*], [one verb governing two objects unequally], [*she left in tears and a taxi*],
)
]

#v(6pt)

#rule-box("Five definitions written the way a mark scheme wants them")[
  + *Tragedy:* a play in which a person of standing is brought down by an action he cannot undo, so that the audience feels pity and fear.
  + *Dramatic irony:* a structure of knowledge in which the audience understands a situation that a character on stage does not.
  + *Enjambment:* the continuation of a sentence past the end of a line, so that the reader is carried forward into the next.
  + *Metonymy:* the substitution of an associated thing for the thing meant — *the crown* for the monarchy — where no part-whole relation is involved.
  + *Theme:* the claim a text makes about its subject, expressible as a sentence rather than a phrase.
]

#trap-box("Two definitions that lose the mark")[
  *“A metaphor is a comparison.”* A simile is also a comparison, so the definition does not distinguish. Add *without like or as, asserting that one thing is another*.

  *“A soliloquy is a long speech.”* A monologue is also a long speech. The mark is for *alone on stage, heard by the audience only*.
]
