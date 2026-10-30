#import "template.typ": *

#current-chapter.update("Appendix I: Guided Writing")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Guided Writing]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Guided Writing: Six Structured Tasks]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six tasks in the shapes the paper uses — a formal letter, an argument, a summary, a comprehension, a speech and a report — each with a plan, a model and the marks the examiner actually gives.]
]

#v(4pt)

#text(size: 9.8pt)[The English paper is not only multiple choice. The same rules are tested in continuous writing, where a candidate who can choose the right option cannot always produce the right sentence. Each task below is deliberately short: a plan of six lines and a model paragraph of eight. Write the plan first, every time.]

#v(4pt)

== I.1 A Formal Letter

*Task.* Write a letter to the Chairman of your Local Government Area complaining about the state of refuse disposal in your area, and suggesting two remedies.

#table(
  columns: (1.0fr, 4.0fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What goes there],
  ),
  [Address], [your own address, no name, at the top right],
  [Date], [written in full, under the address],
  [Salutation], [Dear Sir, — with a comma, and a capital S],
  [Heading], [one underlined line naming the subject: REFUSE DISPOSAL IN OUR AREA],
  [Paragraph 1], [who you are and why you are writing],
  [Paragraph 2], [the problem, in two or three specific facts],
  [Paragraph 3], [the two remedies you suggest],
  [Close], [Yours faithfully, — because you began with Dear Sir],
  [Signature], [your full name, below the close],
)

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: (x: 11pt, y: 9pt))[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[MODEL PARAGRAPH 2 — THE PROBLEM]
  #v(3pt)
  #text(size: 9.8pt)[
    I write to draw your attention to the condition of refuse disposal in Oke-Ira. For the past three months the collection van has not come, and the bins at the junction have overflowed into the road. The smell is now noticeable two streets away, and the drainage beside the market is blocked by polythene bags, so that the first heavy rain floods the stalls. Two children in the street have been treated for typhoid in the same period.
  ]
]

#v(3pt)

#concept-box("What the examiner rewards in a letter")[
  + The *format*, marked separately: address, date, salutation, heading, close and signature. A perfect letter in the wrong format loses marks before the first sentence.
  + *Yours faithfully* with *Dear Sir*, and *Yours sincerely* only with a named person.
  + *Specific facts*, not adjectives: “the van has not come for three months” beats “the situation is terrible”.
  + No contractions, no slang, no “I am writing to tell you that I am writing”.
]

== I.2 An Argumentative Essay

*Task.* “School uniforms should be compulsory in all secondary schools.” Write an argument for or against.

#block(width: 100%, fill: jamb-light, stroke: (left: 3.2pt + jamb-bright), radius: 4pt, inset: (x: 11pt, y: 9pt))[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-green)[THE SIX-LINE PLAN]
  #v(3pt)
  #text(size: 9.8pt)[
    1 · Position: uniforms should be compulsory. 2 · Reason: they remove visible inequality. 3 · Evidence: a class in which two pupils wear designer shoes and twenty wear slippers. 4 · Objection: uniforms cost money. 5 · Answer: one uniform is cheaper than a week of ordinary clothes. 6 · Conclusion: the rule protects the poorer pupil, which is the purpose of a school.
  ]
]

#text(size: 9.8pt)[The essay takes the plan and turns each line into a paragraph of four or five sentences. The examiner marks four things: a clear position, a reason with evidence, an objection you answer, and a conclusion that follows. An essay that lists five reasons and answers none of the objections reads as a list, not an argument.]

== I.3 Summary

*Task.* Read the passage and summarise in *one sentence* the two reasons the writer gives for the failure of the water scheme.

#block(width: 100%, fill: white, stroke: 0.7pt + jamb-border, radius: 6pt, inset: (x: 11pt, y: 9pt))[
  #text(size: 9.9pt)[
    The scheme was launched with considerable ceremony, and for the first year the pumps ran without complaint. What the planners had not done was ask the villagers who would repair a pump when the handle broke, or where the money for a new washer would come from. When the first handle did break, in the dry season of the second year, the pump stood idle for eleven weeks. A second fault was the tariff. The committee had fixed a flat monthly charge of five hundred naira for every household, a sum that assumed a regular wage. In a village where most families earn by the day, a fixed charge is the first thing to go when work is scarce, and by the end of the second year fewer than a third of the households were paying. The scheme did not fail because the water was unwanted. It failed because nobody owned the pump, and because the price was set for a village that did not exist.
  ]
]

#table(
  columns: (1.2fr, 3.6fr, 0.4fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reason],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[In the passage],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Marks],
  ),
  [1], [no one was responsible for repairs: the handle stayed broken for eleven weeks], [1],
  [2], [the flat charge did not suit daily earners: two thirds of households stopped paying], [1],
)

#text(size: 9.8pt)[*Model answer:* The scheme failed because no person or body was responsible for repairs, and because a fixed monthly charge was set for a village of daily earners. Two reasons, one sentence, no quotation, no opinion of your own — which is what a summary asks for.]

== I.4 Comprehension

*Task.* Read the passage and answer the questions in your own words.

#block(width: 100%, fill: white, stroke: 0.7pt + jamb-border, radius: 6pt, inset: (x: 11pt, y: 9pt))[
  #text(size: 9.9pt)[
    It is often said that a library is the cheapest university, and the phrase is not a compliment to libraries so much as an accusation against universities. A library asks nothing of you but attention: no fees, no entrance examination, no one to impress. What it cannot supply is the thing that a good teacher supplies — the order in which to read, and the sentence that tells you why the last book mattered. A reader alone in a library is free, and freedom of that kind is a difficult gift. Most people who begin it stop, not because the books are hard, but because nothing happens when they finish one.
  ]
]

#table(
  columns: (1.9fr, 2.4fr, 0.5fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Model answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Marks],
  ),
  [(a) Why is the phrase “the cheapest university” an accusation?], [because it implies that a university charges more than it is worth], [2],
  [(b) What does a library ask of a reader?], [nothing except attention, since there are no fees, tests or audiences], [1],
  [(c) What does a teacher give that a library cannot?], [an order for the reading and a reason for continuing it], [2],
  [(d) Why do most readers stop?], [because nothing rewards them when a book is finished], [2],
  [(e) What does the writer mean by “freedom of that kind is a difficult gift”?], [unstructured freedom is hard to use, since it gives no guidance or reward], [2],
)

== I.5 A Speech

*Task.* Write the speech you would give as the senior prefect on the first day of a new term.

#text(size: 9.8pt)[A speech differs from an essay in three ways: it is addressed to people in the room, it repeats its main point, and it ends with a request. Open with the audience (*Mr Principal, members of staff, fellow students*), state the one thing you want in the first thirty seconds, give two reasons with examples from the school, answer the obvious objection (*some will say we cannot afford it*), and close with a sentence that asks for something specific. Keep the sentences short: a sentence that cannot be said in one breath cannot be heard from the back of a hall.]

== I.6 A Report

*Task.* Write a report to the principal on an incident that took place during an inter-house football match.

#table(
  columns: (1.1fr, 3.9fr),
  inset: 4.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Content],
  ),
  [Title], [REPORT ON THE INTER-HOUSE FOOTBALL MATCH HELD ON 12 MARCH],
  [To / From / Date], [three lines, each on its own],
  [Introduction], [the purpose of the report in one sentence],
  [Findings], [what happened, in order, with times],
  [Recommendations], [two numbered suggestions, each actionable],
  [Signature], [name and post],
)

#v(2pt)

#shortcut-box("The four marks every piece of writing earns first")[
  + *Length and relevance.* Answer the question that was set, not the one you prepared.
  + *Paragraphing.* One idea a paragraph, and a new paragraph for a new stage of the argument.
  + *Sentence control.* Vary the length, but never write a comma splice and never write a sentence with no main clause.
  + *Mechanics.* Full stops, capital letters, apostrophes and spelling — the four things the examiner deducts for without comment.
]

#v(5pt)

== I.7 Marking Your Own Writing

#text(size: 9.8pt)[Writing without a marker is rehearsal, not practice. The four headings below are the ones an examiner uses, and you can apply them to your own page in five minutes — which is longer than most candidates spend on a composition and shorter than the marks are worth.]

#table(
  columns: (1.5fr, 2.4fr, 1.3fr),
  inset: (x: 4.5pt, y: 4pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Heading],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question to ask of your own page],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Share],
  ),
  [Content], [have I answered the exact question, in the exact number of points it asked for?], [40 %],
  [Organisation], [does each paragraph hold one idea, and does the order of paragraphs follow a plan?], [20 %],
  [Expression], [are the sentences varied, and is every verb and pronoun in its right form?], [30 %],
  [Mechanics], [full stops, capitals, spelling, apostrophes], [10 %],
)

#v(2pt)

#text(size: 9.6pt)[Mark your last piece against the four rows and write the weakest heading at the top of the next page. Candidates who do this three times stop making the same error, because they have finally seen it in their own handwriting rather than in a model.]

#v(3pt)

#trap-box("Three marks lost in the last line")[
  *The unplanned ending.* A composition that runs out of space mid-argument loses the organisation marks even when the English is good. Count your paragraphs before you begin: five for a letter, six for an argument, four for a report.

  *The borrowed opening.* “In this modern world of today” costs you nothing in grammar and everything in impression. Open with the fact, the number or the question that the topic itself supplies.

  *The uncorrected verb.* One wrong tense in the first sentence sets the marker's expectation. Read the first two sentences aloud before you write the third.
]

