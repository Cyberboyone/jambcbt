#import "template.typ": *

#current-chapter.update("Chapter 2: Inheritance Patterns, Probability and Sex Linkage")
#pagebreak()

#chapter-opener(
  2,
  "Inheritance Patterns, Probability and Sex Linkage",
  subtitle: "The Monohybrid Cross, the Test Cross, the Dihybrid Cross, Probability, Sex Determination, Sex Linkage and Multiple Alleles",
  syllabus-ref: "Sec. C • Topic 2",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Work out the F1 and F2 of a monohybrid cross and state both ratios.",
    "Use a test cross to decide whether an organism is homozygous or heterozygous.",
    "Apply the product rule to find the probability of a named offspring.",
    "Work out a dihybrid cross and explain the 9 : 3 : 3 : 1 ratio.",
    "Explain sex determination and work a sex-linked pedigree.",
    "Explain multiple alleles and codominance using the ABO blood groups.",
  ),
  hotspots: (
    "\"The F2 ratio of a monohybrid cross is …\" — 3 : 1 for the phenotype, 1 : 2 : 1 for the genotype. Read which one is asked.",
    "\"A test cross is carried out to …\" — find out whether an organism showing the dominant character is homozygous or heterozygous.",
    "\"A colour-blind man marries a normal woman. Their sons will be …\" — all normal *if* she is homozygous normal; half colour blind if she is a carrier.",
    "\"The genotype ratio in a cross between two heterozygotes is …\" — 1 : 2 : 1, not 3 : 1.",
    "\"A man of blood group AB marries a woman of group O. The children can be …\" — A or B only, never AB or O.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Giving 3 : 1 when the question asks for the *genotype* ratio, which is 1 : 2 : 1. (2) Forgetting that sex-linked genes behave differently in sons and daughters — a man passes his X only to his daughters. (3) Treating $I^A$ and $I^B$ as ordinary dominance: they are *codominant*, so an $A B$ parent passes either $I^A$ or $I^B$, never both to one gamete.",
)

// ============================================================================
// SECTION 2.1
// ============================================================================
== 2.1 The Monohybrid Cross

A *monohybrid cross* follows one gene with two alleles. The method is always the same, and the examiner awards the method marks separately from the answer: write the parental genotypes, write the gametes, draw the square, then count the classes.

#diagram-fig("diagrams/ch02_monohybrid.svg",
  "The monohybrid cross from parents to F2. Every F1 plant is Tt and tall; the F2 gives 1 TT : 2 Tt : 1 tt, which is 3 tall to 1 short.")

#concept-box("The five-line method that never loses a mark")[
  1. *Write the parents' genotypes* and say which phenotype each gives. \
  2. *Write the gametes* each parent can make — one letter per gamete. \
  3. *Draw the square*, gametes along the top and down the side. \
  4. *Fill the boxes*, then *count the classes* by genotype and by phenotype. \
  5. *State the ratio* and answer the actual question in words.
]

#worked-example(
  1,
  "A monohybrid cross worked in full",
  tier: "FOUNDATION",
  [In maize, coloured grain ($C$) is dominant to colourless grain ($c$). Two heterozygous coloured plants are crossed. (a) State the genotypes of the parents. (b) Write the gametes. (c) Give the genotype and phenotype ratios of the offspring. (d) What fraction of the offspring is colourless?],
  [
    *Step 1 — the parents.* Heterozygous coloured means $C c$ for both: $C c times C c$.

    *Step 2 — the gametes.* Each parent gives $C$ or $c$ in equal numbers — law of segregation.

    *Step 3 — the square.* Cross every gamete of one parent with every gamete of the other:

    #table(
      columns: (auto, 1fr, 1fr),
      inset: 5pt,
      align: (center + horizon, center + horizon, center + horizon),
      stroke: 0.5pt + jamb-border,
      fill: (x, y) => if x == 0 or y == 0 { jamb-light } else { white },
      [], [*C*], [*c*],
      [*C*], [$C C$], [$C c$],
      [*c*], [$C c$], [$c c$],
    )

    *Step 4 — count.* Genotypes: one $C C$, two $C c$, one $c c$ → *1 : 2 : 1*. Phenotypes: three coloured, one colourless → *3 : 1*.

    *Step 5 — answer the question asked.* One box in four is $c c$, so *one quarter* of the offspring is colourless (25 %).
  ],
)

#trap-box("The two ratios are not the same thing")[
  The *genotype* ratio is 1 : 2 : 1 — one homozygous dominant, two heterozygous, one homozygous recessive. The *phenotype* ratio is 3 : 1 — because both $C C$ and $C c$ look coloured. If the question says "the ratio of the offspring", read the previous line to see whether it is asking about genes or about appearance.
]

// ============================================================================
// SECTION 2.2
// ============================================================================
== 2.2 Using a Cross to Answer a Real Question

Most UTME questions do not ask for a whole square. They give you parents and ask for one probability, or they give you offspring and ask you to deduce the parents. Both are quick once the method is automatic.

#shortcut-box("Reading a ratio backwards")[
  *3 : 1* in the offspring means both parents were *heterozygous* ($A a times A a$). \
  *1 : 1* means one parent was *heterozygous* and the other *homozygous recessive* ($A a times a a$). \
  *All the same* means at least one parent was *homozygous dominant* ($A A times$ anything). \
  These three facts answer most deduction questions without a square.
]

#worked-example(
  2,
  "Deducing the parents from the offspring",
  tier: "UTME STANDARD",
  [A tall pea plant is crossed with a short pea plant. Of 200 offspring, 104 are tall and 96 are short. Deduce the genotypes of both parents, and explain your reasoning.],
  [
    *Step 1 — spot the ratio.* $104 : 96$ is as near to $1 : 1$ as 200 plants allow.

    *Step 2 — match the ratio to a cross.* A 1 : 1 ratio comes from a heterozygote crossed with a homozygous recessive: $T t times t t$.

    *Step 3 — check it.* $T t$ gives $T$ and $t$; $t t$ gives only $t$. Offspring: $T t$ (tall) and $t t$ (short) in equal numbers — exactly what was counted.

    *Step 4 — state the answer with the reason.* The tall parent was heterozygous $T t$ and the short parent was $t t$; the 1 : 1 ratio is the signature of a test cross.
  ],
)

// ============================================================================
// SECTION 2.3
// ============================================================================
== 2.3 The Test Cross

A tall plant can be $T T$ or $T t$ — you cannot tell by looking. To find out, cross it with a *homozygous recessive* plant and look at the offspring.

#diagram-fig("diagrams/ch02_testcross.svg",
  "The test cross. Crossed with tt, a TT plant gives only tall offspring; a Tt plant gives tall and short in equal numbers.")

#concept-box("The test cross in one sentence")[
  Cross the unknown individual with a homozygous recessive. Any recessive offspring proves the unknown parent carried the recessive allele — so it was *heterozygous*. If every offspring shows the dominant character, the parent was most likely *homozygous dominant*.
]

#worked-example(
  3,
  "What a test cross can and cannot prove",
  tier: "JAMB CHALLENGE",
  [A black guinea pig is test-crossed with a white one ($b b$) and produces six black offspring and no white ones. A student concludes that the black parent is $B B$. Is the conclusion safe?],
  [
    *Step 1 — what the cross shows.* $B- times b b$: if the parent is $B B$, every offspring is $B b$ and black; if the parent is $B b$, each offspring has a one-in-two chance of being $b b$ and white.

    *Step 2 — what six offspring can prove.* With a heterozygous parent, the chance that all six offspring are black is $(1\/2)^6 = 1\/64$ — about 1.6 %. So *probably* the parent is $B B$.

    *Step 3 — but.* "Probably" is not "certainly". Six offspring is a small sample; a heterozygous parent could still have produced this litter. The safe answer is that the evidence *supports* $B B$ but does not prove it, and more offspring would be needed.

    *Answer:* the conclusion is reasonable but not certain — a test cross gives certainty only with large numbers of offspring.
  ],
)

// ============================================================================
// SECTION 2.4
// ============================================================================
== 2.4 Probability: the Arithmetic of Gametes

Genetics questions become easy once you stop drawing squares for everything and start multiplying. Two rules do all the work.

#formula-box("The two rules of probability")[
  *Product rule* — the chance of two independent events both happening is the product of their chances: $P(A " and " B) = P(A) times P(B)$. \
  *Sum rule* — the chance of either of two mutually exclusive events is the sum: $P(A " or " B) = P(A) + P(B)$.
]

Each gamete is formed independently, and each fertilisation is independent of the last — so the product rule applies to every cross.

#worked-example(
  4,
  "Probability without a square",
  tier: "UTME STANDARD",
  [Two pea plants heterozygous for two genes are crossed: $R r Y y times R r Y y$, where $R$ = round, $r$ = wrinkled, $Y$ = yellow, $y$ = green. Find the probability that an offspring is (a) wrinkled and yellow, (b) round and green, (c) round and yellow.],
  [
    *Step 1 — treat the genes separately.* For seed shape, $R r times R r$ gives $3\/4$ round and $1\/4$ wrinkled. For seed colour, $Y y times Y y$ gives $3\/4$ yellow and $1\/4$ green.

    *Step 2 — multiply.*
    (a) wrinkled and yellow: $1\/4 times 3\/4 = 3\/16$.
    (b) round and green: $3\/4 times 1\/4 = 3\/16$.
    (c) round and yellow: $3\/4 times 3\/4 = 9\/16$.

    *Step 3 — check.* The four classes are $9\/16$, $3\/16$, $3\/16$ and $1\/16$: they add up to 1, which is the 9 : 3 : 3 : 1 ratio.

    *Answers:* (a) $3\/16$ (b) $3\/16$ (c) $9\/16$.
  ],
)

#trap-box("Do not add the parents' ratios")[
  A common error is to write "3 : 1 plus 3 : 1 gives 6 : 2". Ratios do not add; *probabilities multiply*. Two independent 3 : 1 ratios give $9 : 3 : 3 : 1$, not 6 : 2.
]

// ============================================================================
// SECTION 2.5
// ============================================================================
== 2.5 The Dihybrid Cross

A *dihybrid cross* follows two genes at once. The method is the same, but each parent now makes four kinds of gamete.

#concept-box("The 9 : 3 : 3 : 1 ratio, and where it comes from")[
  A double heterozygote $R r Y y$ makes four gametes — $R Y$, $R y$, $r Y$, $r y$ — in equal numbers. A $4 times 4$ square gives 16 boxes: *9* round yellow, *3* round green, *3* wrinkled yellow, *1* wrinkled green. \
  The ratio holds only when the two genes are on *different* chromosomes and assort independently.
]

#table(
  columns: (1.3fr, 1.1fr, 1.1fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cross],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gametes],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[F2 ratio],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it tests],
  ),

  [Monohybrid $A a times A a$], [2], [3 : 1], [One gene; complete dominance],
  [Test cross $A a times a a$], [2 × 1], [1 : 1], [Whether the parent is heterozygous],
  [Dihybrid $A a B b times A a B b$], [4], [9 : 3 : 3 : 1], [Two genes assorting independently],
  [Dihybrid test cross $A a B b times a a b b$], [4 × 1], [1 : 1 : 1 : 1], [Linkage — a departure from this ratio means the genes are linked],
)

// ============================================================================
// SECTION 2.6
// ============================================================================
== 2.6 Sex Determination and Sex Linkage

In humans, sex is decided by a pair of chromosomes: females have $X X$ and males have $X Y$. The mother can only give an $X$; the father gives either an $X$ or a $Y$. The father therefore decides the sex of the child, and the chance of each is one in two.

#concept-box("Sex-linked genes")[
  The $X$ chromosome carries many genes that the $Y$ does not — including the genes for colour vision and for blood clotting. Such genes are *sex-linked*. \
  A male has only one $X$, so a recessive allele on it is expressed at once: he is *hemizygous*. A female has two $X$ chromosomes, so she can be a *carrier* — she has the allele but does not show it.
]

#diagram-fig("diagrams/ch02_pedigree.svg",
  "Sex linkage in one family. The sons take their only X from their mother, so a recessive allele she carries appears in half of them; the daughters receive a normal X from their father and are unaffected.")

#table(
  columns: (1.5fr, 1.2fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cross],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Sons],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Daughters],
  ),

  [Carrier mother $X^B X^b$ × normal father $X^B Y$], [half colour blind, half normal], [all normal — half are carriers],
  [Colour-blind mother $X^b X^b$ × normal father $X^B Y$], [all colour blind], [all normal, all carriers],
  [Normal mother $X^B X^B$ × colour-blind father $X^b Y$], [all normal], [all normal, all carriers],
  [Carrier mother × colour-blind father], [half colour blind], [half colour blind, half carriers],
)

#trap-box("\"Carrier\" is not \"affected\"")[
  A carrier shows the dominant, normal phenotype but can pass the recessive allele on. In a pedigree, a carrier mother is drawn as a circle with a dot — never as a filled (affected) symbol. The examiner checks this: half the marks in a pedigree question are for using the symbols correctly.
]

// ============================================================================
// SECTION 2.7
// ============================================================================
== 2.7 Multiple Alleles and Codominance

Some genes have more than two alleles in the population, and some pairs of alleles are both expressed at once. The ABO blood group is the standard example of both.

#diagram-fig("diagrams/ch02_bloodgroups.svg",
  "The ABO blood groups: one gene, three alleles, six genotypes and four phenotypes, with IA and IB codominant.")

#concept-box("The three words that decide the blood-group question")[
  *Multiple alleles* — the gene has more than two forms in the population ($I^A$, $I^B$ and $i$). An individual still has only two. \
  *Codominance* — both alleles are fully expressed in the heterozygote: $I^A I^B$ gives group AB, with both antigens on the red cell. \
  *Complete dominance* — one allele hides the other: $I^A i$ gives group A, exactly as $I^A I^A$ does.
]

#worked-example(
  5,
  "A blood-group cross, worked both ways",
  tier: "JAMB CHALLENGE",
  [A man of blood group AB marries a woman of group O. (a) State the possible blood groups of their children. (b) Could a child of theirs be group AB? Explain. (c) What does the answer tell you about the alleles $I^A$ and $I^B$?],
  [
    *Step 1 — the genotypes.* A man of group AB is $I^A I^B$; a woman of group O is $i i$.

    *Step 2 — the gametes.* He gives $I^A$ or $I^B$ (never both); she gives only $i$.

    *Step 3 — the offspring.* $I^A i$ is group A; $I^B i$ is group B. Half A, half B.

    *Step 4 — answer (b) and (c).* A group AB child would need an $I^A$ and an $I^B$, but the mother has neither — so *no*, group AB is impossible. The result shows that $I^A$ and $I^B$ are *codominant* with each other (an $I^A I^B$ person shows both antigens) and each is dominant to $i$.

    *Answers:* (a) A or B, in equal numbers (b) no — the mother can give only $i$ (c) codominant with each other, dominant to $i$.
  ],
)

#shortcut-box("Blood groups in ten seconds")[
  Group O is always $i i$, and can therefore have children of *any* group only if the partner carries $I^A$ or $I^B$. Group AB is always $I^A I^B$ and cannot have an O child. Groups A and B are the ones written two ways — $I^A I^A$ or $I^A i$, $I^B I^B$ or $I^B i$ — so a question about "a group A parent" is a question about *which* of the two.
]

// ============================================================================
// SECTION 2.8 — CHECKLIST
// ============================================================================
== 2.8 Chapter 2 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + draw a monohybrid cross from parents to F2 and give both the 3 : 1 and the 1 : 2 : 1 ratios;
  + state which ratio a question is asking for before I write it down;
  + test cross a dominant individual and explain what the result proves;
  + use the product rule instead of a square when two genes are involved;
  + work a dihybrid cross and explain the 9 : 3 : 3 : 1 ratio;
  + explain sex determination and the difference between a carrier and an affected person;
  + work a sex-linked pedigree for sons and daughters separately;
  + list the six ABO genotypes and the four phenotypes;
  + explain the difference between codominance and complete dominance.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Write the parents, write the gametes, draw the square, count the classes. A cross of two heterozygotes gives 3 : 1 by appearance and 1 : 2 : 1 by genotype; a test cross gives 1 : 1 and tells you what the dominant parent hides. Two genes assort independently and give 9 : 3 : 3 : 1, unless they are linked. Sex-linked genes sit on the X, so sons take them from their mother alone, and the ABO genes are three alleles with two of them codominant.
  ]
]

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the monohybrid cross, the test cross, sex linkage and probability.", width: 100%)

// ============================================================================
// SECTION 2.9 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 2.9 Chapter 2 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The genotype ratio in the F2 generation of a monohybrid cross is], [3 : 1], [1 : 2 : 1], [1 : 1], [9 : 3 : 3 : 1])
#mcq(2, [A test cross is used to determine whether an organism is], [homozygous or heterozygous], [male or female], [linked or unlinked], [a mutant or a hybrid])
#mcq(3, [A colour-blind man marries a woman who is a carrier. The proportion of their sons who will be colour blind is], [0], [1/4], [1/2], [all])
#mcq(4, [A man of blood group AB marries a woman of group O. Their children will be], [all group AB], [all group O], [group A or group B], [group AB or group O])

#answer-key-grid(("B", "A", "C", "C"))

#answer-notes((
  ("B", [the genotypes in the F2 are one $A A$, two $A a$ and one $a a$ — 1 : 2 : 1. The 3 : 1 is the *phenotype* ratio.]),
  ("A", [cross the unknown with a homozygous recessive: recessive offspring prove it was heterozygous.]),
  ("C", [the mother is $X^B X^b$, so half her X gametes carry $b$; each son therefore has a one-in-two chance.]),
  ("C", [the father gives $I^A$ or $I^B$ and the mother gives only $i$, so the children are $I^A i$ (A) or $I^B i$ (B).]),
))

#include "drill_ch02.typ"
