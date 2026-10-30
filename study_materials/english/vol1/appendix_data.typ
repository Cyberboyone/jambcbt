#import "template.typ": *

#current-chapter.update("Appendix D: The Word Bank")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Word Bank]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Word Bank]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Spelling rules, the words candidates misspell most often, and the irregular verbs that the paper tests through the participle. None of it needs to be understood — only known.]
]

#v(4pt)

== D.1 The Spelling Rules That Still Apply

#table(
  columns: (0.5fr, 1.7fr, 2.4fr, 1.7fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examples],
  ),
  [1], [i before e except after c], [the sound decides, not the letters], [believe, receive, ceiling, deceive],
  [2], [drop the final e before -ing or -able], [the vowel would be lost otherwise], [make → making, hope → hoping, love → lovable],
  [3], [double the final consonant before -ed or -ing], [when the last syllable is stressed], [begin → beginning, admit → admitted, refer → referred],
  [4], [-y becomes -i after a consonant], [except before -ing], [happy → happiness, carry → carried, but carrying],
  [5], [-ful has one l], [the suffix is never doubled], [careful, useful, hopeful],
  [6], [add -s to most nouns, -es after s, x, ch, sh], [the sound decides], [books, buses, boxes, churches, brushes],
  [7], [British spelling keeps -our and -re], [Nigerian usage follows British], [colour, favour, centre, theatre],
  [8], [British spelling uses -ise in verbs], [but -ize is accepted in science], [organise, recognise, realise, criticise],
)

#v(4pt)

== D.2 The Sixty Words Candidates Misspell

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 3.6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [accommodate], [achieve], [acquaintance], [acquire],
  [aggressive], [apparent], [argument], [appearance],
  [beginning], [believe], [benefited], [bureaucracy],
  [cemetery], [committee], [committed], [comparative],
  [conscience], [conscious], [definitely], [desperate],
  [develop], [dilemma], [disappear], [dissatisfied],
  [embarrass], [environment], [exaggerate], [excellent],
  [existence], [experience], [familiar], [february],
  [foreign], [forty], [fulfil], [government],
  [grammar], [harass], [height], [humorous],
  [immediately], [incidentally], [independent], [indispensable],
  [intelligence], [interested], [interrupt], [irresistible],
  [knowledge], [liaison], [maintenance], [millennium],
  [mischievous], [necessary], [noticeable], [occasion],
  [occurred], [occurrence], [parallel], [parliament],
)

#v(2pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[Four more rows of the same list are in Section D.4. The paper does not ask you to spell these words in isolation; it puts them in a sentence and asks which of four spellings is right, which is why reading them aloud is worth more than copying them out.]

#v(6pt)

== D.3 Irregular Verbs the Paper Uses

The participle is the form after *have*, *has* or *had*, and it is the form the examiner tests. Say the three forms aloud until the third one is automatic.

#table(
  columns: (1fr, 1fr, 1fr, 0.35fr, 1fr, 1fr, 1fr),
  inset: 3.8pt,
  align: (left + horizon, left + horizon, left + horizon, center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Base],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Past],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Participle],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Base],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Past],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Participle],
  ),
  [begin], [began], [begun], [], [lie (recline)], [lay], [lain],
  [break], [broke], [broken], [], [lay (place)], [laid], [laid],
  [choose], [chose], [chosen], [], [lose], [lost], [lost],
  [do], [did], [done], [], [ride], [rode], [ridden],
  [drink], [drank], [drunk], [], [ring], [rang], [rung],
  [drive], [drove], [driven], [], [rise], [rose], [risen],
  [eat], [ate], [eaten], [], [see], [saw], [seen],
  [fall], [fell], [fallen], [], [shake], [shook], [shaken],
  [fly], [flew], [flown], [], [sing], [sang], [sung],
  [forget], [forgot], [forgotten], [], [speak], [spoke], [spoken],
  [freeze], [froze], [frozen], [], [steal], [stole], [stolen],
  [give], [gave], [given], [], [swim], [swam], [swum],
  [go], [went], [gone], [], [take], [took], [taken],
  [grow], [grew], [grown], [], [throw], [threw], [thrown],
  [hide], [hid], [hidden], [], [wake], [woke], [woken],
  [know], [knew], [known], [], [write], [wrote], [written],
)

#v(2pt)

#trap-box("Lie and lay, rise and raise")[
  *Lie* (to recline) is lie, lay, lain and takes no object: *he lay on the bed*. *Lay* (to place) is lay, laid, laid and takes one: *she laid the book down*. *Rise* is intransitive (rise, rose, risen) and *raise* is transitive (raise, raised, raised). The paper sets one against the other because the past of *lie* looks exactly like the present of *lay*.
]

#v(4pt)

== D.4 Confusables, Extended

#table(
  columns: (1fr, 2.1fr, 2.1fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Distinction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In a sentence],
  ),
  [accept / except], [accept = receive; except = leaving out], [I accept the offer; everyone except Chidi],
  [access / excess], [access = entry; excess = too much], [access to the building; an excess of salt],
  [adapt / adopt], [adapt = change to fit; adopt = take as one's own], [adapt to the climate; adopt a child],
  [allusion / illusion], [allusion = a hint; illusion = a false idea], [an allusion to the Bible; an optical illusion],
  [bare / bear], [bare = uncovered; bear = carry or endure], [bare feet; bear the burden],
  [breath / breathe], [breath = noun; breathe = verb], [take a deep breath; breathe slowly],
  [climatic / climactic], [climatic = of climate; climactic = of a climax], [climatic conditions; the climactic scene],
  [council / counsel], [council = a body; counsel = advice], [the local council; legal counsel],
  [dependant / dependent], [dependant = a person; dependent = relying on], [a dependant; dependent on the weather],
  [device / devise], [device = a thing; devise = to plan], [a mobile device; devise a scheme],
  [eligible / illegible], [eligible = qualified; illegible = unreadable], [eligible to vote; illegible handwriting],
  [enquiry / inquiry], [enquiry = a question; inquiry = an investigation], [make an enquiry; a public inquiry],
  [farther / further], [farther = distance; further = additional], [farther down the road; further details],
  [human / humane], [human = of people; humane = compassionate], [human rights; a humane treatment],
  [ingenuous / ingenious], [ingenuous = innocent; ingenious = clever], [an ingenuous reply; an ingenious plan],
  [moral / morale], [moral = right conduct; morale = confidence], [a moral duty; staff morale],
  [personal / personnel], [personal = private; personnel = staff], [personal effects; the personnel office],
  [prophecy / prophesy], [prophecy = noun; prophesy = verb], [the prophecy came true; they prophesy doom],
  [respectful / respective], [respectful = showing respect; respective = each their own], [a respectful tone; their respective seats],
  [storey / story], [storey = a floor; story = a tale], [a ten-storey building; a short story],
)

#v(3pt)

#concept-box("How to use this appendix")[
  + Do not read it from top to bottom. Work down the right-hand column of D.4 and say the distinction aloud; that is the part the paper tests.
  + The irregular verbs in D.3 should be rehearsed in threes, because the question is almost always about the third form.
  + The spelling list in D.2 is worth copying out once by hand. Spelling is the one part of this paper where writing the word is the revision.
]
