#import "template.typ": *

#current-chapter.update("Appendix F: Metre, Form and Scansion")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Metre, Form and Scansion]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Metre, Form and Scansion]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The form of all five poems on one page, two lines of scansion worked in full, and a
    three-sentence formula for describing form in an answer that the paper will accept.
  ]
]

#v(4pt)

== F.1 The Five Poems, Form by Form

#table(
  columns: (1.05fr, 1.35fr, 1.4fr, 1.2fr),
  inset: (x: 4.4pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Poem],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Stanza shape],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Metre and rhyme],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Effect of the form],
  ),
  [*Vanity*], [six stanzas of uneven length, c. 30 lines], [free verse: no metre, no rhyme; anaphora and refrain], [the shape of a spoken lament, which rises and stops on a question],
  [*Ambush*], [four stanzas: 8, 6, 3, 4], [free verse: no metre, no rhyme; heavy enjambment], [the shrinking stanza is a net closing; the run-on is the chase],
  [*The Anvil and the Hammer*], [two stanzas: 10, 12], [free verse: no metre, no rhyme; two extended metaphors], [description in stanza one, prayer in stanza two: the shape is an argument],
  [*Crossing the Bar*], [four quatrains], [loose iambic, three to five stresses; ABAB], [the short fourth line closes each stanza like a tide going out],
  [*The Proud King*], [c. 850 lines in rhyme royal stanzas], [iambic pentameter; ababbcc], [seven lines carry a scene and the couplet closes it: a narrative machine],
)

#text(size: 9.2pt)[Two facts are worth memorising as facts, because the paper asks them directly: *Crossing the Bar* is four quatrains rhymed ABAB, and *The Proud King* is rhyme royal, ababbcc. Everything else in the table is best used as an explanation rather than a label.]

== F.2 Scansion, Worked

#rule-box("How to scan a line")[
  + Mark the stressed syllables in capitals and the unstressed in lower case.
  + Count the feet. Two syllables to a foot is the norm in English verse.
  + Say the line aloud and check that your marks follow the voice.
  + Name the metre only if the pattern is regular; if it is not, say so, because the variation is usually the point.
]

*Crossing the Bar, quatrain one:*

#block(
  width: 100%,
  fill: jamb-light,
  stroke: 0.7pt + jamb-border,
  radius: 6pt,
  inset: 10pt,
)[
  #set text(size: 9.6pt)
  SUN-set and EVE-ning STAR (three stresses) \
  and ONE clear CALL for ME (three stresses) \
  and MAY there BE no MOAN-ing of the BAR (four stresses) \
  when I put OUT to SEA (three stresses)
]

#text(size: 9.2pt)[The quatrain is not pentameter. It is loose iambic verse with lines of three and four stresses, and the fourth line is shorter than the third. That is why the stanza falls away at its close: the pattern is a diminuendo, and the poem repeats it four times. A candidate who writes "iambic pentameter" about this poem has learned a label and not read the line.]

*The Proud King, rhyme royal:*

#block(
  width: 100%,
  fill: jamb-light,
  stroke: 0.7pt + jamb-border,
  radius: 6pt,
  inset: 10pt,
)[
  #set text(size: 9.4pt)
  line 1 — a \
  line 2 — b \
  line 3 — a \
  line 4 — b \
  line 5 — b \
  line 6 — c \
  line 7 — c
]

#text(size: 9.2pt)[The stanza has three rhymes only: a twice, b three times, c twice. The couplet at the end is the stanza's little closing, and eight hundred and fifty lines of it is a deliberate archaism — Morris is telling an old story in Chaucer's stanza. That is a fact about form that is also a fact about meaning.]

== F.3 The Three-Sentence Formula for Describing Form

#shortcut-box("Say it in three sentences and move on")[
  + *Sentence one — the shape:* "The poem is written in four quatrains" / "in six uneven stanzas of free verse" / "in rhyme royal".
  + *Sentence two — the pattern:* "rhymed ABAB" / "with no metre or rhyme, held together by anaphora" / "rhymed ababbcc in iambic pentameter".
  + *Sentence three — the effect:* "and the short fourth line makes each stanza fall closed" / "and the run-on lines drive the reader forward into the trap" / "and the closing couplet lets the narrative move scene by scene".
]

#trap-box("Three form errors the paper punishes")[
  *Calling free verse formless.* Vanity and Ambush have no metre, but they have stanza shape, repetition and syntax; "formless" is not an answer.

  *Calling Crossing the Bar iambic pentameter.* Count the stresses: the lines run from three to five, and the variation is the music.
]
