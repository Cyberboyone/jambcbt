#import "template.typ": *

#current-chapter.update("Appendix F: Glossary of Grammar Terms")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary of Grammar Terms]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary of Grammar Terms]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every term the book uses, defined in the words a candidate needs — one line, one example, no history of the language.]
]

#v(4pt)

#table(
  columns: (1.25fr, 3.9fr),
  inset: (x: 4.5pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning, with an example where the term needs one],
  ),
  [Abstract noun], [a noun naming a quality or state that cannot be seen or counted: honesty, courage, freedom],
  [Active voice], [the subject does the action: the player kicked the ball],
  [Adjective], [a word that describes or limits a noun: tall, three, Nigerian],
  [Adverb], [a word that describes a verb, an adjective or another adverb: quickly, very, here],
  [Adverbial clause], [a dependent clause that answers when, why, how or on what condition: because it rained],
  [Agreement], [the matching of verb and subject in number and person; also called concord],
  [Antonym], [a word opposite in meaning to another: hot and cold],
  [Apostrophe], [the mark that shows possession or a missing letter: the boy's, it's],
  [Article], [a, an (indefinite) and the (definite), the words that mark a noun],
  [Aspect], [the form of a verb that says whether an action is a fact, in progress or finished: writes, is writing, has written],
  [Auxiliary], [a helping verb that carries the tense: be, have, do, will, can, must],
  [Clause], [a group of words with its own subject and finite verb],
  [Collective noun], [a noun naming a group as one thing: team, committee, flock],
  [Colon], [the mark that introduces a list, a quotation or an explanation],
  [Comma splice], [two independent clauses joined by a comma alone — the commonest punctuation error],
  [Comparative], [the form of an adjective that compares two things: taller, better],
  [Complement], [the word or phrase that completes the meaning of a verb: she is a doctor],
  [Compound sentence], [two or more independent clauses joined by a conjunction, a semicolon or a colon],
  [Conditional], [a sentence with an if-clause and a main clause, in one of four set tense patterns],
  [Concord], [see agreement],
  [Conjunction], [a word that joins words, phrases or clauses: and, but, because, although],
  [Conjunctive adverb], [an adverb that joins sentences and takes a semicolon before it: however, therefore],
  [Continuous aspect], [the form that puts an action in progress: is writing, was writing],
  [Coordinating conjunction], [one of the seven that join equals: for, and, nor, but, or, yet, so],
  [Count noun], [a noun that can be counted and has a plural: chair, boy, idea],
  [Dangling modifier], [a modifier with nothing in the sentence to describe: walking home, the rain began],
  [Defining clause], [a relative clause that identifies which one, taking no commas and allowing that],
  [Demonstrative], [this, that, these, those — pointing words that can stand alone as pronouns],
  [Dependent clause], [a clause that cannot stand alone as a sentence],
  [Direct speech], [the exact words spoken, in quotation marks],
  [Ellipsis], [the omission of a word that the sentence implies: she can swim and he can too],
  [Finite verb], [a verb carrying tense and agreeing with its subject],
  [Fragment], [a group of words punctuated as a sentence that has no independent clause],
  [Gerund], [the -ing form used as a noun: swimming is fun],
  [Imperative], [the form of a verb used for a command: sit down],
  [Independent clause], [a clause that can stand alone as a sentence],
  [Indirect speech], [reported speech, with the tense moved back after a past reporting verb],
  [Infinitive], [the base form of a verb with to: to write],
  [Interjection], [a word expressing sudden feeling: oh, alas, bravo],
  [Intransitive verb], [a verb that takes no object: sleep, arrive, happen],
  [Main clause], [the independent clause a sentence is built on],
  [Mass noun], [a noun with no plural and no a or an: advice, furniture, water],
  [Modal], [can, may, must, shall, will, should, could, might, would — the verbs of possibility and duty],
  [Modifier], [a word or phrase that describes another: an adjective, an adverb or a participial phrase],
  [Non-defining clause], [a relative clause that adds a comment, taking commas and never that],
  [Noun clause], [a dependent clause doing the work of a noun: what he said surprised everyone],
  [Object], [the word or phrase that receives the action of a transitive verb or follows a preposition],
  [Participle], [the -ing form or the third form of a verb, used as an adjective or after an auxiliary],
  [Passive voice], [the object becomes the subject: the ball was kicked],
  [Phrase], [a group of words with no subject and finite verb of its own],
  [Predicate], [everything in the sentence after the subject],
  [Preposition], [a word showing the relation of a noun to the rest of the sentence: in, on, under, despite],
  [Pronoun], [a word standing in for a noun: he, they, who, this],
  [Proper noun], [the name of a particular person, place or day, always capitalised],
  [Reflexive pronoun], [myself, yourself, himself — used when subject and object are the same person],
  [Register], [the level of formality a piece of writing requires],
  [Relative clause], [a clause introduced by who, which, whose or that, describing a noun],
  [Semicolon], [the mark that joins two independent clauses],
  [Simple sentence], [one independent clause and nothing else],
  [Subject], [the word or phrase the sentence is about, which the verb agrees with],
  [Subjunctive], [the verb form used for unreal or wished states: if I were you],
  [Subordinating conjunction], [a conjunction that begins a dependent clause: because, although, unless],
  [Superlative], [the form of an adjective that compares three or more: tallest, best],
  [Synonym], [a word close in meaning to another, in the sentence where it is used],
  [Tense], [the form of a verb that places an action in past, present or future time],
  [Transitive verb], [a verb that takes an object and can therefore be made passive],
  [Verb], [the word that says what the subject does or is],
  [Voice], [whether the subject acts (active) or is acted upon (passive)],
)

#v(3pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[A term you cannot define in one line is a term you will not recognise when a question uses it. Cover the right-hand column and work down the left.]

#v(4pt)

== F.2 Nine Terms That Are Confused With Each Other

#table(
  columns: (1.5fr, 1.5fr, 2.4fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The difference],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Example],
  ),
  [Phrase / clause], [a clause has a subject and a finite verb; a phrase has neither], [in the morning / when morning came],
  [Tense / aspect], [tense places the action in time; aspect says how it sits there], [wrote / was writing],
  [Gerund / participle], [a gerund does a noun's work; a participle does an adjective's], [Swimming is fun / the swimming boy],
  [Clause / sentence], [a sentence is a clause that can stand alone], [because it rained / it rained],
  [Object / complement], [an object receives the action; a complement completes the verb], [she kicked the ball / she is a nurse],
  [Conjunction / conjunctive adverb], [a conjunction joins inside one sentence; the adverb joins sentences], [but it rained / it rained; however, we left],
  [Defining / non-defining], [defining identifies, non-defining comments], [the book that I bought / the book, which I bought],
  [Direct / indirect speech], [direct quotes the words; indirect reports them and moves the tense], [she said, “I am tired” / she said she was tired],
  [Synonym / antonym], [a synonym means the same; an antonym means the opposite], [thrifty / wasteful],
)

#v(2pt)

#text(font: "DejaVu Sans", size: 8.8pt, fill: jamb-muted)[The paper rarely asks you to define these terms. It uses them in the stem of a question — “choose the option that contains a defining relative clause” — and a candidate who confuses the pair answers the wrong question correctly.]

