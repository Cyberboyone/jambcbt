#import "template.typ": *

#current-chapter.update("Appendix E: The Grammar Map")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Grammar Map]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Grammar Map]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Fifty rules, one line each, with an example and the chapter that teaches it. This is the page to revise in the last week: a rule you cannot place in its chapter is a rule you will not recognise in the hall.]
]

#v(4pt)

== E.1 The Fifty Rules

#table(
  columns: (0.38fr, 1.75fr, 2.35fr, 0.4fr),
  inset: (x: 4pt, y: 3.4pt),
  align: (center + horizon, left + horizon, left + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Example],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Ch],
  ),
  [1], [A word's class is its job in the sentence], [book is a noun in “the book”, a verb in “book a seat”], [1],
  [2], [Mass nouns take no plural], [some advice, much furniture, a piece of information], [1],
  [3], [Plurals in -f change to -ves, with exceptions], [knives, leaves, but chiefs and roofs], [1],
  [4], [Latin and Greek nouns keep their own plurals], [criteria, phenomena, analyses, data], [1],
  [5], [A preposition takes the object form], [between you and me; to him and her], [1],
  [6], [Myself needs the same person as the subject], [I hurt myself; not my brother and myself], [1],
  [7], [have, has, had take the past participle], [has gone, had written, have begun], [1],
  [8], [A linking verb takes an adjective], [the soup tastes good; she looks happy], [1],
  [9], [A subject and verb agree in number], [the boy writes; the boys write], [2],
  [10], [The verb agrees with the head noun], [the box of books is; the books in the box are], [2],
  [11], [Collective nouns are singular as one body], [the committee has decided], [2],
  [12], [A fraction follows the noun after of], [two thirds of the land is; of the students are], [2],
  [13], [A number of is plural, the number of is singular], [a number of students are; the number is rising], [2],
  [14], [each, every, either, neither are singular], [each of the boys has; neither of them meets], [2],
  [15], [either … or and neither … nor follow the nearer subject], [neither the girl nor the boys are], [2],
  [16], [news, physics, mathematics are singular], [the news is; physics is difficult], [2],
  [17], [police, cattle, people are plural], [the police are; the cattle are grazing], [2],
  [18], [A distance, sum or period is one quantity], [ten kilometres is; twenty naira is], [2],
  [19], [together with, as well as do not make a plural], [the teacher, with the students, was], [2],
  [20], [Bread and butter, rice and stew are singular], [bread and butter is all I want], [2],
  [21], [Three times and four aspects make twelve forms], [writes, is writing, has written, has been writing], [3],
  [22], [since and for pull the present perfect], [has lived here since 2019; for six years], [3],
  [23], [A finished time pulls the simple past], [I saw him yesterday; not have seen], [3],
  [24], [The past perfect orders two past events], [the train had left before we arrived], [3],
  [25], [The first conditional is present plus will], [if it rains, we will stay], [3],
  [26], [The second conditional is past plus would], [if I were you, I would accept], [3],
  [27], [The third conditional is had plus would have], [if I had known, I would have come], [3],
  [28], [A past reporting verb moves the tense back], [he said he was tired; she said she had gone], [3],
  [29], [The passive is be plus the past participle], [the ball was kicked; the letter had been typed], [3],
  [30], [Only a transitive verb has a passive], [was arrived and was happened do not exist], [3],
  [31], [A clause has a subject and a finite verb], [when the bell rang is a clause; in the morning is not], [4],
  [32], [Two independent clauses need more than a comma], [use a full stop, a semicolon or a conjunction], [4],
  [33], [A fronted dependent clause takes a comma], [although it rained, the match continued], [4],
  [34], [A non-defining clause takes commas and never that], [the book, which I bought, is missing], [4],
  [35], [A defining clause takes no commas], [the students who worked hard passed], [4],
  [36], [Although and but do not pair], [although he was tired, he finished], [4],
  [37], [Because and so do not pair], [because he was late, he missed the bus], [4],
  [38], [its is possessive; it's means it is], [the dog wagged its tail; it's raining], [4],
  [39], [A plural in -s takes the apostrophe alone], [the boys' books; the children's toys], [4],
  [40], [An adverb describes everything except a noun], [he ran quickly; a quick run], [5],
  [41], [Comparatives compare two, superlatives three or more], [the better of the two; the best of all], [5],
  [42], [The comparison is never doubled], [better, not more better; tallest, not most tallest], [5],
  [43], [A participial phrase opens with its doer], [walking home, I was caught in the rain], [5],
  [44], [only sits before the word it limits], [only Chidi passed; Chidi only passed], [5],
  [45], [at a point, on a surface or day, in an enclosure], [at noon, on Monday, in the hall], [5],
  [46], [The fixed pairs belong to their verbs], [depend on, consist of, comply with, married to], [5],
  [47], [A conjunctive adverb takes a semicolon], [the road was flooded; however, we arrived], [5],
  [48], [A synonym must fit the sentence], [frugal is thrifty, not poor], [6],
  [49], [An idiom is learned as one unit], [to bury the hatchet means to make peace], [6],
  [50], [Register is the last filter], [a formal letter takes no slang or contraction], [6],
)

#v(4pt)

== E.2 The Ten Rules That Carry the Most Marks

#table(
  columns: (0.45fr, 2.1fr, 2.6fr),
  inset: 4.5pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rank],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question it answers],
  ),
  [1], [The verb agrees with the head noun (rule 10)], [“The list of names \_\_\_ missing.” — was],
  [2], [The participle follows have, has, had (rule 7)], [“She has \_\_\_ the letter.” — written],
  [3], [A preposition takes the object form (rule 5)], [“Between you and \_\_\_.” — me],
  [4], [Two clauses need more than a comma (rule 32)], [“The rain stopped, we left.” — semicolon],
  [5], [each and neither are singular (rule 14)], [“Neither of the boys \_\_\_ arrived.” — has],
  [6], [A finished time takes the simple past (rule 23)], [“I \_\_\_ him yesterday.” — saw],
  [7], [The passive is be plus the participle (rule 29)], [“The results \_\_\_ yesterday.” — were announced],
  [8], [A linking verb takes an adjective (rule 8)], [“The soup tastes \_\_\_.” — good],
  [9], [The comparison is never doubled (rule 42)], [“more better” — better],
  [10], [A conjunctive adverb takes a semicolon (rule 47)], [“..., however we arrived” — ; however,],
)

#v(3pt)

#shortcut-box("How to revise this appendix")[
  + Read the ten rules in E.2 aloud, then cover the second column and say each rule from the question.
  + Work down E.1 and write the chapter number beside any rule you cannot give an example for. The number is the chapter to reread.
  + The week before the examination, read E.2 twice a day. Ten lines is five minutes, and they are worth about a third of the lexis and structure marks.
]
