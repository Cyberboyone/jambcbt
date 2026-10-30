#import "template.typ": *

#current-chapter.update("Chapter 2: Concord")

#pagebreak()

#chapter-opener(
  2,
  "Concord: Making Subject and Verb Agree",
  subtitle: "The Basic Rule, Collective Nouns, Fractions and Quantifiers, the Head Noun Behind the of-Phrase, and the Subjects That Are Fixed in Number",
  syllabus-ref: "Sec. A • Lexis and Structure",
  utme-weight: "6 Qs every year",
  running: "Concord",
)

#focus-radar(
  objectives: (
    "State the rule of concord and name the one verb form that changes in the present tense.",
    "Match a collective noun, a fraction and a quantifier to the right verb.",
    "Find the head noun of a long subject and ignore the phrase that follows it.",
    "Recognise the nouns that are always singular and the nouns that are always plural.",
    "Keep each, every, either and neither singular, and keep the correlatives in step.",
    "Make a pronoun agree with the noun it stands for.",
  ),
  hotspots: (
    "“The committee \_\_\_ not reached a decision.” — *has*, because the committee acts as one body.",
    "“Two thirds of the land \_\_\_ cultivated.” — *is*, because *land* is singular; but two thirds of the *students are*.",
    "“The list of names \_\_\_ missing.” — *was*, because the head noun is *list*, not *names*.",
    "“Neither of the boys \_\_\_ arrived.” — *has*, because neither is singular however many boys follow it.",
    "“A number of students \_\_\_ absent.” — *were*, but “the number of students \_\_\_ rising” takes *is*.",
  ),
  trap-summary: "Three slips. (1) Agreeing with the noun nearest the verb instead of the head noun: the phrase after *of* is a passenger and never controls the verb. (2) Treating *each*, *every*, *either* and *neither* as plural because the phrase after them is plural — they are singular, always. (3) Forgetting that *police*, *cattle* and *people* are plural while *news*, *physics* and *mathematics* are singular, whatever the ending suggests.",
)

// ============================================================================
== 2.1 The Basic Rule

Concord — also called agreement — is the rule that a verb must match its subject in number and person. In the present tense only one form of the verb changes, which is why the rule is easier than it looks: find the third-person singular column and everything else follows it.

#diagram-fig("diagrams/ch02_concord_matrix.svg",
  "The five verb forms that change with the subject. Only the third-person singular differs in the present tense, and only *was* differs in the past.", width: 100%)

#rule-box("The rule, stated once")[
  + A *singular* subject takes a singular verb: the boy *writes*, the news *is*, physics *is*.
  + A *plural* subject takes a plural verb: the boys *write*, the police *are*, the cattle *are*.
  + *I* takes *am* and *have*; *you* takes *are* and *have* whatever its number.
  + The verb *be* changes in the past as well: *was* with singular subjects, *were* with plural ones and with *you*.
  + Every other verb differs only in the third-person singular of the present: he *walks*, they *walk*; he *has*, they *have*; he *does*, they *do*.
]

The examiner does not test the plain rule, because the plain rule is too easy. He tests the four places where the rule is hidden: behind a collective noun, behind a fraction, behind an *of*-phrase, and behind a word that looks like the wrong number. Those four places are the next four sections.

// ============================================================================
== 2.2 Collective Nouns, Fractions and Quantifiers

#concept-box("What a collective noun is")[
  A collective noun names a group as a single thing: *team*, *committee*, *family*, *jury*, *government*, *audience*, *flock*, *herd*. When the group acts as one body the verb is singular — the committee *has* decided. When the members are acting separately the verb may be plural — the committee *are* arguing among themselves. UTME follows the singular, so when the sentence gives you no reason to split the group, choose the singular verb.
]

#diagram-fig("diagrams/ch02_quantifiers.svg",
  "Six subjects that decide the verb for you. Read the second half of each card: the rule is always about what follows the phrase, not about the phrase itself.", width: 100%)

#rule-box("Fractions, percentages and the rest")[
  + A fraction or a percentage takes its number from the noun after *of*: two thirds of the *land is*; two thirds of the *students are*; forty per cent of the *class was* absent.
  + *A number of* means “several” and takes a plural verb; *the number of* means “the count” and takes a singular verb.
  + *Many*, *few*, *both*, *several* are plural: many *are*, both *are*, few *were*.
  + *Much*, *little*, *a little*, *a great deal of* are singular: much *is*, little *was*.
  + *All*, *some*, *most*, *none* and *half* follow the noun after *of*: all of the water *is*; all of the boys *are*.
]

#worked-example(
  1,
  "The committee has or have",
  [“The committee \_\_\_ not reached a decision, although its members \_\_\_ been arguing all morning.” Options: has / have, have / has, has / has, have / have.],
  [
    *Step 1 — look at the first clause.* *The committee* is a collective noun acting as one body: it has not reached a decision. The verb is singular, *has*.

    *Step 2 — look at the second clause.* The subject there is *its members*, which is plural, so the verb is *have*. The word *members* is what decides it, not the committee.

    *Step 3 — check the possessive.* *Its* is singular, which confirms that the committee itself is being treated as one body throughout.

    *Check.* Replace the subject with a pronoun: “It has not reached a decision, although they have been arguing.” The pronoun substitution gives the same two verbs, so the answer is *has / have*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.3 The Head Noun and the of-Trap

A subject can be long, and the examiner relies on that. The rule is that the verb agrees with the *head* of the subject — the noun the subject is really about — and not with the noun that happens to sit next to the verb.

#diagram-fig("diagrams/ch02_of_trap.svg",
  "The head noun decides the verb. Cross out the prepositional phrase and the agreement becomes obvious, which is exactly why the examiner puts the phrase there.", width: 100%)

#shortcut-box("The bracket test")[
  Put the phrase after *of*, *with*, *together with*, *as well as*, *along with* or *including* in brackets, then read the sentence without it. “The box (of books) *is* heavy” — the verb agrees with *box*. This one habit answers more concord questions than any list of rules, because it turns a hard sentence into an easy one.
]

#trap-box("Together with, as well as, along with")[
  These phrases do not make a singular subject plural. “The teacher, together with the students, *was* present” is correct, because the subject is still *the teacher*. Only *and* makes two subjects plural — “the teacher and the students *were* present”. The same is true of *as well as*, *along with*, *including* and *besides*.
]

#worked-example(
  2,
  "The list of names",
  [“The list of names \_\_\_ missing, and the boxes of files \_\_\_ on the floor.” Options: was / was, were / were, was / were, were / was.],
  [
    *Step 1 — find the head of the first subject.* *The list of names* — the head is *list*, singular. The *of names* is a prepositional phrase describing the list. So the first verb is *was*.

    *Step 2 — find the head of the second subject.* *The boxes of files* — the head is *boxes*, plural. So the second verb is *were*.

    *Step 3 — check that the two halves are independent.* They are joined by *and*, but each has its own subject and verb, so each is decided separately.

    *Check.* Bracket the phrases: “The list (of names) was missing, and the boxes (of files) were on the floor.” Both verbs now agree with the word immediately before the bracket, which is the head noun.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.4 Subjects That Are Fixed in Number

Some nouns carry a number that their spelling does not show, and the paper returns to the same handful every year.

#diagram-fig("diagrams/ch02_tricky_subjects.svg",
  "Subjects that look like the wrong number. The left column always takes a singular verb and the right column always takes a plural one.", width: 100%)

#rule-box("The fixed-number list")[
  + *Always singular:* news, physics, mathematics, economics, politics, athletics, measles, mumps; and any distance, sum of money or period of time treated as one quantity — ten kilometres *is*, twenty naira *is*, three years *is*.
  + *Always plural:* police, cattle, people, clergy, vermin; and the paired objects — scissors, trousers, spectacles, pliers, tongs.
  + *Singular however many follow:* each, every, either, neither, one of, none of (in formal usage), everybody, somebody, nobody, anybody.
  + *The correlatives keep their own number:* either … or and neither … nor take the number of the nearer subject; not only … but also does the same.
]

#trap-box("Bread and butter, rice and stew")[
  Two nouns joined by *and* usually take a plural verb, but a pair that names *one dish or one idea* takes a singular one: bread and butter *is* all I want; rice and stew *was* served. The test is whether the two things are being counted separately or treated as a single item.
]

#worked-example(
  3,
  "Either, neither and each",
  [“Neither of the candidates \_\_\_ the requirements, and each of them \_\_\_ to reapply.” Options: meet / has, meets / have, meet / have, meets / has.],
  [
    *Step 1 — fix the number of neither.* *Neither* is singular even when the phrase after it is plural: neither of the candidates *meets*. The *of the candidates* is a passenger, exactly as in the bracket test.

    *Step 2 — fix the number of each.* *Each* is singular for the same reason: each of them *has* to reapply.

    *Step 3 — confirm with the pronoun.* *Them* shows that the candidates are plural, but neither *neither* nor *each* becomes plural because of it.

    *Check.* Replace the subjects with pronouns: “Neither *he* meets …” and “each *he* has …” are both singular, so both verbs must be singular. The answer is *meets / has*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.5 Pronouns and Concord

A pronoun must agree with the noun it stands for in number, gender and person — and it must point to only one noun. The paper tests the agreement more often than the reference, but both appear.

#diagram-fig("diagrams/ch02_pronoun_agreement.svg",
  "Keeping the pronoun in step with its noun. The reference check in the last panel is what turns a correct pronoun into an ambiguous sentence.", width: 100%)

#rule-box("Three pronoun rules worth memorising")[
  + *Everyone, everybody, anyone, nobody, each* take a singular verb but a plural pronoun in modern usage: everyone *has* brought *their* book. The formal alternative is *his or her*, which the paper also accepts.
  + A pronoun agrees with the noun, not with the possessive: “Each of the girls has brought *her* bag”, not *their* bag, if the sentence is formal.
  + *One* must stay *one* throughout: “One should do *one's* best”, not “*his* best”, in the same sentence.
]

#worked-example(
  4,
  "A number of, the number of",
  [“A number of students \_\_\_ absent, and the number of absentees \_\_\_ rising.” Options: were / is, was / are, were / are, was / is.],
  [
    *Step 1 — read the two phrases.* *A number of* means “several” and takes a plural verb: a number of students *were* absent. *The number of* means “the count” and takes a singular verb: the number of absentees *is* rising.

    *Step 2 — check the article.* The difference is the article: *a* number is many, *the* number is one figure. That single letter is the whole question.

    *Step 3 — test with the bracket.* “A number (of students) were absent” — the subject is *a number*, and it means many. “The number (of absentees) is rising” — the subject is one count.

    *Check.* Substitute a synonym: “Several students were absent” works, and “the count is rising” works. Both substitutes carry the same number as the answer chosen, so *were / is* is correct.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "Three traps in one sentence",
  [“Ten kilometres \_\_\_ a long walk, and the police \_\_\_ already arrived at the scene where the cattle \_\_\_ grazing.” Options: is / have / were, are / has / was, is / has / were, are / have / was.],
  [
    *Step 1 — the distance.* *Ten kilometres* names one distance, so the verb is singular: *is*. A measurement used as a single quantity is singular however large the number.

    *Step 2 — the police.* *Police* is one of the fixed plural nouns, so the verb is *have*, whatever the sentence says about them.

    *Step 3 — the cattle.* *Cattle* is also fixed plural: *were grazing*. The word *was* cannot follow it.

    *Check.* All three decisions are list decisions, not meaning decisions: distances are singular, police and cattle are plural. The answer is *is / have / were*, and no part of it needed a judgement about the scene.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: concord.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Concord is the agreement of verb and subject in number and person, and in the present tense only the third-person singular differs: he writes, they write; he has, they have; he is, they are. The verb agrees with the head of the subject, so an of-phrase, a together with or an as well as is a passenger — bracket it and read the sentence again. Collective nouns take a singular verb when the group acts as one body; fractions, percentages, all, some and most follow the noun after of; a number of is plural while the number of is singular. Each, every, either, neither, everybody and nobody are singular however many nouns follow them, while police, cattle, people, scissors and trousers are plural whatever the sentence suggests. News, physics, mathematics and politics are singular, and a distance, a sum of money or a period of time is one quantity. Where either … or or neither … nor is used, the verb follows the nearer subject.
  ]
]

== 2.6 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The committee \_\_\_ not reached a decision on the matter.], [have], [has], [were], [are])
#mcq(2, [Two thirds of the land in the village \_\_\_ left uncultivated.], [are], [were], [is], [have been])
#mcq(3, [The list of names of the successful candidates \_\_\_ pasted on the board.], [were], [are], [have been], [was])
#mcq(4, [Neither of the two candidates \_\_\_ the minimum qualification.], [meet], [meets], [have met], [are meeting])

#answer-key-grid(("B", "C", "D", "B"))

#answer-notes((
  ("B", [the committee acts as one body, so the verb is singular: has. Have would be right only if the members were being treated separately, and the sentence gives no reason to split them.]),
  ("C", [a fraction takes its number from the noun after of, and land is uncountable and singular, so the verb is is. Are and were would need a plural noun such as students.]),
  ("D", [the head of the subject is list, not names and not candidates: the list was pasted. Every of-phrase in the subject is a passenger.]),
  ("B", [neither is singular however many candidates follow it, so the verb is meets. Meet would be right only after a plural subject such as both of the candidates.]),
))

#chapter-checklist("Before you leave Chapter 2", (
  [State the rule of concord and name the one present-tense form that changes.],
  [Give the verb for a collective noun acting as one body, and for one acting as individuals.],
  [Decide the verb after two thirds of, a number of and the number of.],
  [Apply the bracket test to a subject with two of-phrases in it.],
  [List five nouns that are always singular and five that are always plural.],
  [Keep each, either, neither and every singular under pressure.],
))

#concept-box("Carry this into Chapter 3")[
  A verb has to agree with its subject, and it also has to carry the right tense. Chapter 3 takes the same verb and asks a different question: not *how many* but *when*, and whether the action was finished, still going on, or being done to the subject rather than by it.
]

#include "drill_ch02.typ"
