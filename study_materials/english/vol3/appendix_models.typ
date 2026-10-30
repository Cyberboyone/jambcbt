#import "template.typ": *

#current-chapter.update("Appendix I: Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Five answers written at the length and in the shape the paper rewards: a summary, four comprehension answers, and two answers on the novel. Read them for the method, not for the wording.]
]

#v(5pt)

== I.1 A Model Summary

#text(size: 9.6pt)[The passage is the Oja-Oba market passage of Paper 1. The summary question asks for the passage in about sixty words, in your own words, and without examples.]

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-border, radius: 8pt, inset: 12pt)[
  #text(size: 9.4pt)[*Model.* When the Oja-Oba market burned, the traders rebuilt it themselves, in stages, before the council's contractor arrived with a plan and a budget six times larger. The writer argues that the people who use a place know its needs first, and that a plan paid for by its users is cheaper than one drawn for them — though their independence, which made them fast, also kept them narrow.]
]

#v(3pt)

#concept-box("Why this summary earns its marks")[
  + It keeps the *claims* (users know the order of need; a user-financed plan is cheaper; independence cuts both ways) and drops the *examples* (the levy, the cement bag, the yam sellers' roof).
  + It is in the writer's sense but not the writer's words: *rebuilt in stages* and *six times larger* replace the passage's sentences.
  + It names the qualification, because a summary that leaves out the last sentence's *though* has changed the passage's argument into a slogan.
  + It is one paragraph and about seventy words. Length beyond the instruction is not marked; it is only risked.
]

== I.2 Four Model Comprehension Answers

#text(size: 9.4pt)[Each answer gives the option, the sentence that proves it, and the reason the nearest distractor fails. This is the paragraph you should be able to say to yourself in the hall, in four seconds, without writing anything.]

#v(3pt)

#table(
  columns: (0.45fr, 1.75fr, 1.75fr, 1.55fr),
  inset: (x: 4pt, y: 3.4pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Q],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Answer and proof],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The trap beside it],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The four seconds],
  ),
  [1], [*B.* The third paragraph states it: the people who use a place know what it needs first.], [*A*, “councils are useless”, is an overstatement; the passage concedes the council was slow, not useless.], [the claim every paragraph supports],
  [2], [*B.* The roof over the yam sellers, because they had the most to lose and the least cover.], [*A*, drainage, is the second stage — true of the passage, false of the question.], [find the word *first*],
  [3], [*B.* The contractor's name and a budget six times the committee's.], [*A*, no money, is never said; the council had more money, not less.], [cause, not sympathy],
  [4], [*B.* A regular contribution agreed by a group: eleven traders, two hundred naira a week.], [*A*, a tax, is imposed; this levy is agreed.], [the clause decides the sense],
  [5], [*B.* Admiring but clear-eyed: the last sentence praises the speed and names the narrowness in one breath.], [*A*, contemptuous, is what the passage would feel if the *though* were missing.], [adjectives and verbs, not topic],
)

#v(4pt)

== I.3 A Model Novel Answer

#text(size: 9.4pt)[The question: *“Migration can be reasonable and still be a loss.” How far does the novel support this view? Answer in about a hundred words.*]

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-border, radius: 8pt, inset: 12pt)[
  #text(size: 9.4pt)[*Model.* The novel makes the case for leaving before it judges it. Seri earns about £10,000 a month as a nurse, Bepo's post would pay £3,600 against his ₦400,000, and the argument is delivered in figures, not in slogans. What it then shows is the bill: a household split between two countries, Mrs Ignatius's family broken by a DNA result inside a visa process, and a cooperative loan that leaves the country with Mr Nku and stays as a debt. Bepo's decision at the airport is not a refutation of the case; it is a judgement that the loss has become larger than the gain. *Japa* is reasonable, and the novel's last word is that it is still a loss.]
]

#v(3pt)

#concept-box("The shape of a full-mark novel answer")[
  + *Concede the case* in its own terms — figures, not adjectives.
  + *Show the cost* with two or three named particulars, and name the chapters only if the question asks for them.
  + *Return to the exact wording of the question*, which is usually a pair of terms (*reasonable* / *loss*) that your answer must hold together.
  + *End on the novel's own last position*, not on your opinion of it. The examiner marks the book, not your view of emigration.
]

== I.4 A Model Character Answer

#text(size: 9.4pt)[The question: *What does Mr Fafore's near-dismissal reveal about the school? Answer in about eighty words.*]

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-border, radius: 8pt, inset: 12pt)[
  #text(size: 9.4pt)[*Model.* It reveals a school that can be wrong and can be told so. The sentence at the centre of the row is correct, the parent is mistaken, and the MD is ready to sack the teacher to keep the peace. What saves him is not the rule but a principal willing to say so to her face. Beesway, by contrast, has an owner nobody can correct, which is why the episode matters: Stardom's health is not that it employs better teachers but that its head can be contradicted by evidence.]
]

#v(4pt)

#concept-box("One habit, four answers")[
  + Every model above does the same thing: it *quotes or names the evidence*, then states the claim, then returns to the question's own words.
  + The order matters. Evidence first stops the answer drifting into opinion; the return to the question's wording stops it drifting into a different question.
  + In the CBT paper you will not write any of this. You will do it in four seconds, in your head, between the option and the next question — which is why the models are short.
]

#v(4pt)

== I.5 Your Turn

#text(size: 9.6pt)[Take the passage of Paper 1 and do these three things on one sheet of paper, in fifteen minutes, without looking at the models above.]

+ Write the summary in sixty words. Then count the words and cut ten.
+ Answer question 3 in the model's shape: option, proof, the trap beside it.
+ Write one hundred words on *“The committee's weakness was the same as its strength.” How far does the passage support this?* — concede the case, show the cost, return to the question's own words.

#v(3pt)

#text(size: 9.4pt)[Then compare with I.1 to I.4. The comparison is the lesson; the writing is only the rehearsal.]

#v(3pt)

== I.6 Six Faults in Written Answers

#table(
  columns: (1.6fr, 3.5fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Fault],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it costs and how to cure it],
  ),
  [Summary by quotation], [the marks are for your words; convert every quotation into a claim],
  [Opinion instead of evidence], [“I think japa is bad” earns nothing; name the chapter and the cost],
  [Theme named, not claimed], [“The novel is about migration” is a subject; say what the novel says about it],
  [Plot retold], [a paragraph of story answers a question nobody asked; answer the question's last five words],
  [One-sided answer], [a “how far” question needs the concession before the judgement],
  [Drift at the end], [the last sentence must return to the question's own terms, not to your conclusion about life],
)
