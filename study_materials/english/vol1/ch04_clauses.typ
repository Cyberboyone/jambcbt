#import "template.typ": *

#current-chapter.update("Chapter 4: Clauses and Punctuation")

#pagebreak()

#chapter-opener(
  4,
  "Clauses, Sentence Types and Punctuation",
  subtitle: "Phrases and Clauses, the Four Sentence Types, Relative Clauses, Adverbial Clauses and the Marks That Decide Meaning",
  syllabus-ref: "Sec. A • Lexis and Structure",
  utme-weight: "5 Qs every year",
  running: "Clauses and Punctuation",
)

#focus-radar(
  objectives: (
    "Tell a phrase from a clause by looking for a subject and a finite verb.",
    "Name a sentence simple, compound, complex or compound-complex by counting the clauses that can stand alone.",
    "Use *that* and *which* correctly in defining and non-defining relative clauses.",
    "Recognise a noun clause and an adverbial clause from the word that introduces it.",
    "Use the comma, semicolon, colon, dash and apostrophe where the sentence needs them.",
    "Repair a fragment, a run-on and a comma splice.",
  ),
  hotspots: (
    "“Although he was tired, \_\_\_” — the main clause follows, and the comma is obligatory after a fronted dependent clause.",
    "“The book, \_\_\_ I bought last week, is missing.” — *which*, because a non-defining clause never takes *that*.",
    "“The rain stopped, we left at once.” — a comma splice: two independent clauses need a semicolon, a full stop or a conjunction.",
    "“It's tail was broken.” — *Its*, because *it's* can only mean *it is* or *it has*.",
    "“The man who came yesterday he is my uncle.” — a fragment of a different kind: the subject is repeated.",
  ),
  trap-summary: "Three slips. (1) Joining two full sentences with a comma: the comma splice is the single most tested punctuation error in the paper. (2) Using *that* after a comma: a non-defining clause takes *which*, never *that*. (3) Writing *it's* for *its*: the apostrophe stands for a missing letter, and there is no letter missing in a possessive.",
)

// ============================================================================
== 4.1 Phrase, Clause and Sentence

A *phrase* is a group of words with no subject and verb of its own: *in the morning*, *the tall boy*, *to arrive early*. A *clause* has both: *when the bell rang*, *the boy arrived*. A *sentence* is a clause that can stand alone, with a capital letter at one end and a full stop at the other.

#diagram-fig("diagrams/ch04_clause_tree.svg",
  "One sentence split into its clauses. Two of the three cannot stand alone, which is what makes this a complex sentence and what fixes the punctuation.", width: 100%)

#concept-box("Independent and dependent")[
  An *independent* clause can stand alone as a sentence: *the match continued*. A *dependent* clause cannot: *although it was raining*. It has a subject and a verb, so it is not a phrase, but the word that introduces it — *although*, *because*, *when*, *if*, *that*, *who* — leaves it waiting for a main clause.

  A dependent clause at the front of a sentence takes a comma after it. A dependent clause at the end does not: *Although it was raining, the match continued* but *The match continued although it was raining*.
]

#trap-box("A phrase is not a sentence")[
  “Because he arrived late.” is not a sentence: it has a subject and a verb but no main clause, so it is a fragment. “Waiting at the bus stop for over an hour.” is not a sentence either — there is no finite verb. The paper offers both as options in sentence-completion questions, and both are always wrong.
]

// ============================================================================
== 4.2 The Four Sentence Types

Sentences are classified by how many independent clauses they contain and whether a dependent clause is attached. The names matter less than the count.

#diagram-fig("diagrams/ch04_sentence_types.svg",
  "The four sentence types. A sentence is not complex because it is long, and not simple because it is short: count the clauses that can stand alone.", width: 100%)

#rule-box("Joining clauses legally")[
  + Two independent clauses may be joined by a *comma plus one of the seven coordinating conjunctions*: for, and, nor, but, or, yet, so.
  + They may be joined by a *semicolon* with no conjunction: the rain stopped; we left.
  + They may be joined by a *full stop*, which makes two sentences.
  + They may *not* be joined by a comma alone. That is a comma splice.
  + A dependent clause may be attached to an independent one with no punctuation at all, or with a comma if it comes first.
]

#shortcut-box("The two-second test for a sentence")[
  Cover everything before the comma. If what remains can stand alone as a sentence, the comma is joining two independent clauses — and a comma cannot do that. If what remains cannot stand alone, the comma is doing its proper job of setting off a dependent clause.
]

// ============================================================================
== 4.3 Relative Clauses

A relative clause describes a noun, and it is introduced by *who*, *whom*, *whose*, *which* or *that*. Whether it takes commas depends on whether it is telling you *which one* or merely *adding a comment*.

#diagram-fig("diagrams/ch04_relative.svg",
  "Defining and non-defining relative clauses. The comma is not decoration: it is the difference between identifying a group and commenting on all of it.", width: 100%)

#rule-box("That, which and who")[
  + *who* for people, *which* for things, *that* for either — but only in a *defining* clause.
  + A *non-defining* clause takes commas and never *that*: the book, *which* I bought last week, is missing.
  + *whose* shows possession and works for people and things: the girl *whose* bag was stolen; the house *whose* roof leaks.
  + *whom* is the object form: the man *whom* we met. In modern usage *who* is accepted in speech, but *whom* follows a preposition: to *whom* it may concern.
]

#worked-example(
  1,
  "Choosing between which and that",
  [“The car \_\_\_ was parked outside belongs to my uncle, and the other one, \_\_\_ is older, belongs to his brother.” Options: that / that, which / that, that / which, which / which.],
  [
    *Step 1 — look for commas in the first clause.* There are none, so the clause is defining: it tells you which car. Both *that* and *which* are allowed, but the option list pairs each first choice with a second, so decide the second first.

    *Step 2 — look at the second clause.* It is set off by commas — *the other one, … , belongs* — so it is non-defining. A non-defining clause never takes *that*; it takes *which*.

    *Step 3 — eliminate.* Any option whose second word is *that* is now wrong, which leaves *that / which* and *which / which*.

    *Step 4 — prefer the defining *that*.* With no comma, *that* is the safer choice in formal writing, and it is the one the examiner expects in a defining clause about a thing.

    *Check.* Read the sentence with the commas restored: “the other one, which is older, belongs to his brother” — correct, because removing the clause would still leave a complete sentence about a car already identified as “the other one”.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.4 Noun Clauses and Adverbial Clauses

Two kinds of dependent clause carry most of the marks: the noun clause, which does the job of a noun, and the adverbial clause, which does the job of an adverb.

#concept-box("Noun clauses")[
  A noun clause can be the subject, the object or the complement of a sentence: *What he said* surprised everyone; I know *that she is right*; the truth is *that nobody came*. The words that introduce it are *that*, *what*, *whether*, *if*, *who*, *why*, *how*, *when* and *where*.

  A noun clause is not set off by a comma when it is the object — *I know that she is right* — because the comma would suggest a pause that English does not make.
]

#rule-box("Adverbial clauses by the question they answer")[
  + *Time:* when, while, before, after, as soon as, until, since — *When the bell rang*, we left.
  + *Reason:* because, since, as — *Because it rained*, the match was cancelled.
  + *Concession:* although, though, even though, whereas — *Although he was tired*, he finished.
  + *Condition:* if, unless, provided that, as long as — *If you hurry*, you will catch it.
  + *Purpose:* so that, in order that, lest — *so that we might arrive early*.
  + *Result:* so … that, such … that — *He ran so fast that he fell*.

  A fronted adverbial clause takes a comma; one that follows the main clause does not.
]

#trap-box("Although … but")[
  *Although* and *but* both mark contrast, and English uses one or the other, never both: “Although he was tired, he finished” or “He was tired, but he finished”. The same prohibition applies to *because … so*: use one, not both. The paper offers the doubled version because it is a direct translation from Nigerian languages, and it is always wrong.
]

// ============================================================================
== 4.5 Punctuation That Changes Meaning

Punctuation is not a matter of taste in this paper: each mark has one job, and a question is usually decided by which job the sentence needs.

#diagram-fig("diagrams/ch04_punctuation.svg",
  "The nine marks and the one job each was invented for. The semicolon and the colon are the two the paper tests most often.", width: 100%)

#diagram-fig("diagrams/ch04_comma_repair.svg",
  "Three ways to repair a comma splice. A comma plus an adverb — however, therefore, moreover — is not one of them: those words are not conjunctions.", width: 100%)

#rule-box("The apostrophe in one line")[
  + *Possession:* singular adds *'s* (the boy's book); a plural already ending in *-s* adds only the apostrophe (the boys' books); an irregular plural adds *'s* (the children's toys).
  + *Omission:* the apostrophe replaces missing letters — *it's* = it is or it has, *don't* = do not, *can't* = cannot.
  + *Never* in a plain plural: *three book's* is wrong, and so is *the 1990's* in formal writing.
  + *Its* is the possessive with no apostrophe; *it's* is only ever a contraction.
]

#worked-example(
  2,
  "The comma splice",
  [“The rain stopped, we left at once.” Which of these is the best repair? (a) The rain stopped, we left at once. (b) The rain stopped; we left at once. (c) The rain stopped; and we left at once. (d) The rain stopped, however we left at once.],
  [
    *Step 1 — identify the fault.* There are two independent clauses — *the rain stopped* and *we left at once* — joined by a comma alone. That is a comma splice.

    *Step 2 — test each repair.* (a) repeats the fault. (b) uses a semicolon, which is exactly the mark for joining two independent clauses with no conjunction. (c) is wrong twice: a semicolon is not used before *and*, and the capital after it is misplaced. (d) leaves the comma splice in place, because *however* is an adverb and not a conjunction.

    *Step 3 — confirm (b).* The semicolon says the two statements belong together without saying which one causes the other, which is precisely the meaning of the original.

    *Check.* Replace the semicolon with a full stop: “The rain stopped. We left at once.” Both sentences stand alone, which confirms that the semicolon is joining equals and not attaching a dependent clause.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Its and it's",
  [“The dog wagged \_\_\_ tail when \_\_\_ owner arrived.” Options: it's / its, its / its, its / it's, it's / it's.],
  [
    *Step 1 — test each blank.* Substitute the long form: *it is* or *it has*. “The dog wagged it is tail” makes no sense, so the first blank is the possessive *its*.

    *Step 2 — test the second blank.* “when it is owner arrived” is equally impossible, so the second blank is also *its*.

    *Step 3 — state the rule.* *Its* is a possessive pronoun, like *his* and *hers*, and possessives take no apostrophe. *It's* is a contraction and can only ever mean *it is* or *it has*.

    *Check.* Any time you are about to write *it's*, read the sentence with *it is*. If that reading works, keep the apostrophe; if it does not, delete it.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  4,
  "Repairing a fragment",
  [Which of these is a complete sentence? (a) Because the bus was late. (b) Although he had studied hard for the examination. (c) The bus, which was late, arrived at noon. (d) Waiting at the bus stop for over an hour.],
  [
    *Step 1 — look for a main clause.* (a) and (b) are dependent clauses: *because* and *although* leave them waiting for a main clause. (d) is a participial phrase with no finite verb at all.

    *Step 2 — test (c).* *The bus arrived at noon* is an independent clause, and *which was late* is a non-defining relative clause attached to it. The sentence is complete.

    *Step 3 — confirm by removing the dependent clause.* Take out *which was late* and “The bus arrived at noon” still stands, which is the test of a sentence that has a main clause.

    *Check.* Every complete sentence answers the question “what happened?” on its own. Only (c) does.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  5,
  "The colon and the semicolon in one sentence",
  [“The committee reached one conclusion \_\_\_ the proposal was too expensive \_\_\_ it had to be abandoned.” Options: : / ;, ; / :, : / ,, , / :],
  [
    *Step 1 — the first blank.* It introduces the content of the conclusion, in the way that *namely* would: the proposal was too expensive. A colon is the mark that introduces an explanation, so the first blank is a colon.

    *Step 2 — the second blank.* *The proposal was too expensive* and *it had to be abandoned* are both independent clauses, and there is no conjunction between them, so a semicolon is required. A comma there would be a splice.

    *Step 3 — eliminate the rest.* A semicolon in the first blank would join two clauses where the second explains the first, which the colon does better. A comma in either blank is a splice, and the option with two commas is wrong twice over.

    *Check.* Substitute the meaning of each mark: the colon reads as *namely*, the semicolon as a full stop. “The committee reached one conclusion, namely the proposal was too expensive. It had to be abandoned.” The meaning survives both substitutions, which confirms colon then semicolon.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: clauses and punctuation.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A phrase has no subject and verb of its own; a clause has both; a sentence is a clause that can stand alone. Sentences are simple, compound, complex or compound-complex according to how many independent clauses they contain and whether a dependent clause is attached, and the length of the sentence tells you nothing. Two independent clauses may be joined by a comma plus one of the seven coordinating conjunctions, by a semicolon, or by a full stop — never by a comma alone, which is the comma splice. A relative clause that identifies takes no commas and may take that; one that merely comments takes commas and takes which. Noun clauses act as subjects and objects; adverbial clauses answer when, why, how and under what condition, and a fronted one takes a comma. Each punctuation mark has one job: the semicolon joins equals, the colon introduces, the dash interrupts, and the apostrophe marks possession or a missing letter.
  ]
]

== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [Choose the option that correctly completes the sentence: “Although the road was flooded, \_\_\_”], [and the bus could not pass], [but the bus could not pass], [the bus could not pass], [so the bus could not pass])
#mcq(2, [The book, \_\_\_ I bought last week, has already been stolen.], [that], [which], [who], [whose])
#mcq(3, [Which of these sentences is punctuated correctly?], [The rain stopped, we left at once.], [The rain stopped; we left at once.], [The rain stopped: we left, at once.], [The rain stopped and, we left at once.])
#mcq(4, [The dog wagged \_\_\_ tail when it saw its owner.], [it's], [its'], [its], [it is])

#answer-key-grid(("C", "B", "B", "C"))

#answer-notes((
  ("C", [although already marks the contrast, so the main clause follows with no conjunction. And, but and so would double the contrast, which is the error the question is built on.]),
  ("B", [the clause is set off by commas, so it is non-defining and takes which. That is barred from a non-defining clause, and who and whose cannot refer to a book.]),
  ("B", [two independent clauses joined by a semicolon. A is a comma splice; C misuses the colon and the comma; D puts a comma between a conjunction and its clause.]),
  ("C", [its is the possessive with no apostrophe. It's means it is, its' does not exist, and it is would not fit before a noun.]),
))

#chapter-checklist("Before you leave Chapter 4", (
  [Tell a phrase from a clause in one glance.],
  [Name the four sentence types and count the independent clauses in each.],
  [Use that and which correctly in defining and non-defining clauses.],
  [List the words that introduce noun clauses and adverbial clauses.],
  [Repair a comma splice three different ways.],
  [Use it's and its without thinking about it.],
))

#concept-box("Carry this into Chapter 5")[
  The clauses are now in the right places; the next chapter is about the words that hang on them. A modifier in the wrong position changes the meaning of a correct sentence, and a connective in the wrong slot joins two clauses that should not be joined at all.
]

#include "drill_ch04.typ"
