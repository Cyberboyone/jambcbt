#import "template.typ": *

#current-chapter.update("Appendix H: The Rules File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: The Rules File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Rules File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Thirty rules, each in a line you can memorise, with the sentence that shows it. The grammar block is ten questions in every paper; these thirty cover nearly all of them.]
]

#v(5pt)

== H.1 Concord — the Verb and Its Subject

#table(
  columns: (1.55fr, 2.55fr, 1.4fr),
  inset: (x: 4.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it says],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The sentence that shows it],
  ),
  [1. Basic concord], [a singular subject takes a singular verb, a plural subject a plural verb], [The teacher *marks*; the teachers *mark*.],
  [2. Parenthetical], [with *as well as*, *together with*, *along with*, the verb agrees with the first subject], [The teacher, as well as the pupils, *was* late.],
  [3. Neither … nor], [the verb agrees with the nearer subject], [Neither the principal nor the teachers *were* present.],
  [4. Either … or], [the same rule as *neither … nor*], [Either the boys or the girl *has* the key.],
  [5. *Each*, *every*, *one of*], [singular, whatever follows], [Each of the candidates *was* given a booklet.],
  [6. *A number of*], [plural; *the number of* is singular], [A number of students *were* late; the number of errors *is* small.],
  [7. Collectives], [singular when the body acts as one, plural when its members act separately], [The committee *is* divided; the committee *are* arguing among themselves.],
  [8. Uncountables], [singular: *news*, *furniture*, *equipment*, *money*, *advice*, *information*], [The news *is* good; the furniture *is* new.],
  [9. *Police*, *cattle*], [plural in form and in use], [The police *are* investigating.],
  [10. Relative pronoun], [the verb agrees with the antecedent of *who* or *which*], [It is I who *am* to blame.],
)

#v(3pt)

== H.2 Tense and Mood

#table(
  columns: (1.55fr, 2.55fr, 1.4fr),
  inset: (x: 4.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it says],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The sentence that shows it],
  ),
  [11. Past perfect], [the earlier of two past events takes *had* + participle], [By the time we arrived, the meeting *had begun*.],
  [12. Present perfect], [a past action still relevant now; never with a finished time word], [She *has* written; she wrote *yesterday*.],
  [13. Future perfect], [finished by a future point: *will have* + participle], [By December she *will have worked* here ten years.],
  [14. Second conditional], [*if* + past, *would* + base; *were* for every person], [If I *were* you, I would apologise.],
  [15. Third conditional], [*if* + past perfect, *would have* + participle], [If she *had worked* harder, she would have passed.],
  [16. Reported speech], [present becomes past, and the perfect becomes past perfect], [She said she *had* finished the work.],
  [17. Subjunctive], [after *it is high time*, *I wish*, *as if*, the past form is used], [It is high time we *started*.],
  [18. Bare subjunctive], [after *insist*, *demand*, *suggest* + *that*, the base form is used], [He insisted that the report *be* read.],
)

#v(3pt)

== H.3 Words That Go Together

#table(
  columns: (1.55fr, 2.55fr, 1.4fr),
  inset: (x: 4.5pt, y: 3.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it says],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The sentence that shows it],
  ),
  [19. Gerund after preposition], [*on*, *of*, *for*, *without*, *despite* + -ing], [She insisted on *paying*.],
  [20. Verb + gerund], [*deny*, *suggest*, *avoid*, *enjoy*, *consider* + -ing], [He denied *taking* the money.],
  [21. Verb + infinitive], [*agree*, *refuse*, *hope*, *decide* + *to* + base], [They agreed *to come*.],
  [22. *Make* and *let*], [bare infinitive, no *to*], [She made the pupils *recite*.],
  [23. *Used to*], [*used to* + base is past habit; *be used to* + -ing is familiarity], [He *used to* teach; he is used to *teaching*.],
  [24. Fixed prepositions], [*accused of*, *married to*, *prefer to*, *afraid of*, *interested in*], [He was accused *of* negligence.],
  [25. *Since* and *for*], [*since* a point, *for* a period], [She has taught here *since* 2015, *for* ten years.],
  [26. *So* and *such*], [*so* + adjective; *such* + noun phrase], [He was *so* tired that he slept; it was *such* a long day that he slept.],
  [27. Comparatives], [two things: comparative; three or more: superlative], [He is the *taller* of the two brothers.],
  [28. *Fewer* and *less*], [*fewer* with count nouns, *less* with uncountables], [*Fewer* pupils, *less* noise.],
  [29. Inversion], [after *hardly*, *scarcely*, *no sooner*, *not only*, the auxiliary comes first], [Hardly *had he* sat down when the bell rang.],
  [30. The pairs], [*hardly … when*; *no sooner … than*; *not only … but also*], [No sooner had he arrived *than* it began to rain.],
)

#v(4pt)

#concept-box("The five questions to ask of every blank")[
  + *Who or what is the subject?* Find it before you look at the options; the verb answers to it, not to the noun nearest it.
  + *What time is it?* A finished past time word kills the present perfect; *since* and *for* usually demand it.
  + *What does the word govern?* A preposition takes a gerund; *deny* takes a gerund; *agree* takes an infinitive.
  + *Is there a fixed frame?* *Hardly … when*, *no sooner … than*, *so … that*, *not only … but also*. Frames are questions you can answer without reading the sentence.
  + *Does the sentence read as one thought?* If the blank needs a connector, choose by the relation — cause, contrast, condition, purpose — not by the sound of the word.
]

#v(4pt)

== H.4 The Ten Errors the Paper Repeats

+ A plural noun beside a singular subject, offered as the subject — *neither … nor* and *as well as* are the two places it happens.
+ The present perfect with a finished time word: *has written yesterday*.
+ *Since* used for a period and *for* used for a point.
+ A gerund after *to* when the *to* belongs to a preposition: *look forward to hear*.
+ An infinitive after *deny*, *suggest* or *avoid*.
+ *Than* after *hardly* and *when* after *no sooner*.
+ A comparative used for three things, or a superlative used for two.
+ *Less* with a count noun: *less pupils*.
+ A double negative that reverses the sense: *hardly no*.
+ A passive formed without the participle: *was wrote*, *has being done*.
