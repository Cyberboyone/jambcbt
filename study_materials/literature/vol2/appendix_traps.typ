#import "template.typ": *

#current-chapter.update("Appendix I: The Twenty Traps")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: The Twenty Traps]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twenty Traps]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The errors that cost the most marks, in the order they are usually made, with the cost
    and the fix beside each. Read this list the night before the examination — it is
    shorter than a chapter and worth more than one.
  ]
]

#v(5pt)

#[
  #set text(size: 8.0pt)
  #set par(leading: 0.6em, spacing: 0.62em)
#table(
  columns: (0.45fr, 1.55fr, 1.35fr, 1.35fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Trap],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it costs],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The fix],
  ),
  [1], [Retelling the plot], [the whole mark, because the stem was about function], [answer the stem's verb: what does it *do*?],
  [2], [Naming an adjective instead of a want], [evidence, because adjectives cannot be quoted], [write the want as a verb phrase],
  [3], [Naming a device without an effect], [the second half of the mark], [say what the device does to the reader or the scene],
  [4], [“In the play” as an anchor], [the evidence cannot be checked], [anchor to a scene or chapter],
  [5], [A block quotation with no comment], [the quotation earns nothing], [six to ten words, embedded, then the effect],
  [6], [Quoting approximately], [credibility, and often the mark], [quote exactly or describe the moment],
  [7], [Ending a sentence on a quotation], [the effect is missing], [put the effect after the words],
  [8], [Moralising (“he deserved it”)], [the literary mark], [ask what the text uses the character to show],
  [9], [A one-sided “how far”], [half the mark], [add the strongest objection and answer it],
  [10], [Comparing by preference], [the judgement mark], [define a criterion and apply it],
  [11], [Two texts described in sequence], [the comparison mark], [organise by point, both texts in each paragraph],
  [12], [A theme named as a topic], [the argument mark], [turn the noun into a sentence with a verb that argues],
  [13], [Ten quotations and one claim], [depth], [three units, developed, beat ten listed],
  [14], [Inventing a line], [the script's credibility], [describe the moment instead],
  [15], [Mixing the three African casts], [every question that names a minor figure], [keep three separate pages and test across them],
  [16], [Spending four minutes on one question], [three other questions], [fifty-four seconds each; bank and move],
  [17], [Leaving blanks], [a certain mark each], [fill every blank before time is called],
  [18], [Changing every answer in the last minute], [considered answers replaced by panic], [change at most two, and only with a reason],
  [19], [Reading the stem twice and the options once], [the distinction the options were testing], [read all four options before choosing],
  [20], [Revising the text and not the clock], [the paper's timing], [sit full papers under time, and log them],
)

]

#rule-box("The three that matter most")[
  If you fix only three, fix these: *answer the stem's verb* (most lost marks are lost by
  answering a different question); *anchor to a unit* (an unanchored claim cannot be
  credited); and *never end on a quotation* (the effect is the mark, and the quotation is
  only its proof).
]


== I.7 A Five-Line Audit

#text(size: 9.6pt)[Read every answer you write against these five lines before you move on. They take fifteen seconds and they catch most of the traps above.]

#table(
  columns: (0.5fr, 2.1fr, 1.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Ask yourself],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The repair],
  ),
  [*1*], [Did I answer the stem's verb?], [rewrite the first clause around *function*, *effect* or *how far*],
  [*2*], [Is there a unit?], [name the scene or chapter before the evidence],
  [*3*], [Is the quotation six to ten words?], [cut it, or embed it in your own sentence],
  [*4*], [Does the sentence end on a quotation?], [add the effect after the words],
  [*5*], [Is there an objection?], [add one clause of concession before the verdict],
)

#concept-box("A trap is a habit, not an accident")[
  Nobody plans to retell the plot. It happens because retelling feels like progress under
  time pressure. The fix is therefore a procedure, not an intention: before writing, say
  the stem's verb to yourself; after writing, check that the last clause names an effect.
  Two seconds, twice per question.
]
