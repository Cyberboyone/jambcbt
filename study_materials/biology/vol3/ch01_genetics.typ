#import "template.typ": *

#current-chapter.update("Chapter 1: Genetics — Chromosomes, Genes and Inheritance")
#pagebreak()

#chapter-opener(
  1,
  "Genetics: Chromosomes, Genes and Inheritance",
  subtitle: "The Vocabulary of Heredity, the Chromosome, DNA and the Gene, Mitosis against Meiosis, and Mendel's Two Laws",
  syllabus-ref: "Sec. C • Topic 1",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Define gene, allele, genotype, phenotype, homozygous and heterozygous, and use each correctly.",
    "Describe the structure of a chromosome and explain the difference between a diploid and a haploid cell.",
    "Explain how a gene codes for a protein, and why a change in the DNA changes the phenotype.",
    "Compare mitosis and meiosis in at least five features.",
    "Describe the behaviour of chromosomes in meiosis and explain how it produces variation.",
    "State Mendel's law of segregation and use it to explain a 3 : 1 ratio.",
  ),
  hotspots: (
    "\"The alternative forms of a gene are called …\" — alleles. A gene is the *locus*, an allele is the *version*.",
    "\"A human body cell contains … chromosomes\" — 46, in 23 homologous pairs. A gamete contains 23.",
    "\"Meiosis produces four cells, each with …\" — half the chromosome number of the parent cell.",
    "\"The exchange of segments between homologous chromosomes is called …\" — crossing over, and it happens in prophase I.",
    "\"Mitosis produces cells that are …\" — genetically identical to the parent cell, with the same chromosome number.",
  ),
  trap-summary: "Four slips decide this chapter. (1) Saying a *gene* and an *allele* are the same thing: the gene is the position, the allele is the version that sits there. (2) Writing that meiosis produces *two* cells: it produces four. (3) Confusing *haploid* with *half a chromosome* — a haploid cell has one of each pair, not half of each chromosome. (4) Saying mitosis produces variation: mitosis produces identical copies; the variation comes from meiosis and mutation.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 Heredity and the Vocabulary the Examiner Marks

*Genetics* is the study of heredity — how characteristics are passed from parents to offspring — and of variation, why offspring differ from their parents and from each other. Every question in this volume is built on six words, and the examiner marks the words exactly.

#concept-box("The six words, in the order you should learn them")[
  *Gene* — a length of DNA that codes for one protein, and therefore for one characteristic or part of one. \
  *Allele* — one of the alternative forms of a gene. A gene for flower colour may have a red allele and a white allele. \
  *Genotype* — the alleles an organism carries, written as letters: $T T$, $T t$ or $t t$. \
  *Phenotype* — what the organism looks like, or what it does: tall or short. \
  *Homozygous* — both alleles are the same ($T T$ or $t t$). \
  *Heterozygous* — the two alleles are different ($T t$).
]

A *dominant* allele shows its effect even when only one copy is present; it is written with a capital letter ($T$). A *recessive* allele shows its effect only when both copies are present; it is written with a lower-case letter ($t$). This is why a heterozygous plant ($T t$) is tall and only $t t$ is short.

#table(
  columns: (1.1fr, 1.5fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example in a pea plant],
  ),

  [*Gene*], [A length of DNA coding for one protein], [The gene for seed shape],
  [*Allele*], [One form of that gene], [$R$ = round, $r$ = wrinkled],
  [*Genotype*], [The alleles present], [$R r$],
  [*Phenotype*], [The visible characteristic], [Round seed],
  [*Homozygous*], [Two identical alleles], [$R R$ or $r r$],
  [*Heterozygous*], [Two different alleles], [$R r$],
  [*Dominant*], [Expressed even when one copy is present], [$R$],
  [*Recessive*], [Expressed only when both copies are recessive], [$r$],
)

#trap-box("\"Gene\" and \"allele\" are not interchangeable")[
  A gene is a *place* on a chromosome; an allele is a *version* of what sits at that place. Every human has the gene for eye colour at the same locus on the same chromosome — what differs between two people is *which alleles* they carry there. An answer that says "the gene for blue eyes" is loose; "the allele for blue eyes" earns the mark.
]

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 Chromosomes, the Karyotype and Homologous Pairs

Inside the nucleus, the DNA is wound round protein and packed into *chromosomes* — thread-like structures that become visible as separate bodies when a cell divides. A chromosome is best drawn as two *sister chromatids* joined at a *centromere*, because that is what the examiner draws.

#diagram-fig("diagrams/ch01_chromosome.svg",
  "DNA is wound into a chromosome; a gene is a length of that DNA and its position is the locus. A homologous pair carries the same genes in the same order, one chromosome from each parent.")

#concept-box("Diploid and haploid")[
  A *diploid* cell has two of every chromosome — one from the mother and one from the father. Its chromosome number is written $2 n$. A *haploid* cell has one of every chromosome, written $n$. \
  In humans, $2 n = 46$ (23 pairs) and $n = 23$. In a pea plant, $2 n = 14$ and $n = 7$.
]

The two chromosomes of a pair are called *homologous chromosomes*. They are the same length, have the same shape and carry the same genes in the same order — but not necessarily the same alleles. One came from each parent, which is why you can have your mother's eyes and your father's chin.

#table(
  columns: (1.35fr, 1.35fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Organism],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Diploid number ($2 n$)],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Haploid number ($n$)],
  ),

  [Human], [46], [23],
  [Pea plant], [14], [7],
  [Maize], [20], [10],
  [Housefly], [12], [6],
  [Onion], [16], [8],
)

The full set of chromosomes photographed and arranged in pairs is a *karyotype*. Two of the 46 are the *sex chromosomes*: females have $X X$, males have $X Y$. The other 44 are *autosomes*, and they are the same in both sexes.

#shortcut-box("The karyotype question in one line")[
  If a question gives you the diploid number and asks for the number of chromosomes in a gamete, halve it. If it gives the haploid number and asks for a zygote, double it. A fertilised egg is diploid because two haploid gametes fused.
]

// ============================================================================
// SECTION 1.3
// ============================================================================
== 1.3 DNA, the Gene and How a Gene Becomes a Characteristic

DNA is a double helix: two strands twisted round each other, held together by pairs of bases. There are four bases — adenine ($A$), thymine ($T$), guanine ($G$) and cytosine ($C$) — and they always pair the same way: $A$ with $T$, $G$ with $C$. That fixed pairing is what allows DNA to copy itself exactly.

A gene is a sequence of bases. The sequence is read three bases at a time, and each triplet specifies one amino acid; the chain of amino acids folds into a protein. Proteins are what actually produce characteristics: they are enzymes, structural fibres, pigments and transporters.

#concept-box("From gene to characteristic, in four steps")[
  1. The gene's base sequence is copied into messenger RNA in the nucleus. \
  2. The messenger RNA leaves the nucleus and attaches to a ribosome. \
  3. The ribosome reads the triplets and joins amino acids into a chain — a protein. \
  4. The protein does a job: an enzyme catalyses a reaction, a pigment colours a petal, a fibre gives shape. Change the protein and you change the characteristic.
]

This chain explains mutation. If one base is substituted for another, one triplet changes, one amino acid changes, the protein folds differently and the characteristic changes. *Sickle-cell anaemia* is the standard example: a single base substitution in the gene for the beta chain of haemoglobin makes the red cell sickle-shaped.

#worked-example(
  1,
  "Gene, allele, genotype, phenotype",
  tier: "FOUNDATION",
  [In guinea pigs, black coat ($B$) is dominant to white coat ($b$). A black guinea pig is crossed with a white one and produces both black and white offspring. (a) State the genotype of the white parent. (b) Deduce the genotype of the black parent. (c) Write the genotype of each type of offspring.],
  [
    *Step 1 — read the dominance.* Black is dominant, so black can be $B B$ or $B b$; white must be $b b$, because a recessive characteristic appears only when both alleles are recessive.

    *Step 2 — use the offspring to decide the black parent.* White offspring must be $b b$, and they can only get a $b$ from each parent. The white parent gives one $b$; therefore the black parent must also carry a $b$. Its genotype is $B b$ — heterozygous.

    *Step 3 — write the offspring.* The cross is $B b times b b$. The gametes of the black parent are $B$ and $b$; the gametes of the white parent are all $b$. Offspring: $B b$ (black) and $b b$ (white), in equal numbers.

    *Answers:* (a) $b b$ (b) $B b$ (c) black offspring $B b$, white offspring $b b$ — a 1 : 1 ratio.
  ],
)

#trap-box("Recessive does not mean rare")[
  A recessive allele is one that is *hidden* in a heterozygote; it is not necessarily uncommon. The allele for white coat may be just as frequent in a population as the allele for black. The word describes *expression*, not frequency.
]

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 Mitosis and Meiosis Compared

A cell divides for one of two reasons: to make more cells like itself (growth and repair), or to make gametes. The first is *mitosis*, the second is *meiosis*, and the examiner tests the difference every year because it separates two whole chapters of the syllabus.

#table(
  columns: (1.05fr, 1.9fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mitosis],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meiosis],
  ),

  [Where it happens], [Body (somatic) cells — root tip, skin, bone marrow], [Reproductive organs — anther, ovary, testis],
  [Number of divisions], [One], [Two],
  [Cells produced], [Two], [Four],
  [Chromosome number in the products], [Same as the parent — $2 n → 2 n$], [Half the parent — $2 n → n$],
  [Genetic result], [Daughter cells identical to the parent], [Each daughter cell different],
  [Crossing over], [None], [Yes — in prophase I],
  [Purpose], [Growth, repair, asexual reproduction], [Production of gametes and variation],
)

#concept-box("The one-sentence version")[
  Mitosis *conserves* the chromosome number and makes copies; meiosis *halves* it and makes variation. If a question says "growth", answer mitosis; if it says "gamete" or "variation", answer meiosis.
]

// ============================================================================
// SECTION 1.5
// ============================================================================
== 1.5 Meiosis Step by Step

Meiosis is two divisions run back to back, and the examiner expects the stages in order.

#diagram-fig("diagrams/ch01_meiosis.svg",
  "Meiosis. One diploid cell with four chromosomes gives four haploid cells: the first division separates homologous chromosomes, the second separates sister chromatids.")

#table(
  columns: (1.15fr, 2.15fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the examiner asks],
  ),

  [Interphase], [DNA is copied, so each chromosome is now two sister chromatids], [When is DNA replicated? — before meiosis begins],
  [Prophase I], [Homologous chromosomes pair up (bivalents); segments are exchanged at the chiasmata — *crossing over*], [Name the process that produces new allele combinations],
  [Metaphase I], [The pairs line up at the equator; the two members of each pair face opposite poles at random], [Source of variation: independent assortment],
  [Anaphase I], [Homologous chromosomes are pulled apart to opposite poles], [What separates in the first division? — homologues],
  [Telophase I], [Two haploid cells form ($n$ chromosomes, each still two chromatids)], [Are the cells haploid yet? — yes],
  [Metaphase II / Anaphase II], [The two cells divide again; sister chromatids separate], [What separates in the second division? — chromatids],
  [Telophase II], [Four haploid cells, each genetically different], [How many cells, and what chromosome number?],
)

#concept-box("Two sources of variation, and the difference between them")[
  *Crossing over* produces new combinations *within* a chromosome: segments of maternal and paternal chromatids are swapped, so the chromosome that ends up in a gamete is a mosaic of both parents. \
  *Independent assortment* produces new combinations *between* chromosomes: each pair lines up independently of the others, so which maternal chromosome goes with which paternal one is random. \
  With 23 pairs, independent assortment alone gives $2^23$ different combinations — about eight million — before crossing over is counted.
]

#trap-box("Meiosis does not make the chromosomes smaller")[
  A haploid cell does not contain half of each chromosome; it contains *one whole chromosome from each pair*. A gamete with 23 chromosomes has 23 complete chromosomes, not 23 half-chromosomes. The number of chromosomes is halved; the size of each one is not.
]

// ============================================================================
// SECTION 1.6
// ============================================================================
== 1.6 Mendel's Two Laws

Gregor Mendel worked with pea plants, chose clear-cut characteristics, and counted thousands of offspring. His conclusions are still the framework for every genetics question in the paper.

#concept-box("Mendel's laws, stated as the examiner wants them")[
  *Law of segregation* — the two alleles of a gene separate when gametes are formed, so each gamete carries only one allele of each pair. \
  *Law of independent assortment* — the alleles of different genes are distributed to gametes independently of one another (true when the genes are on different chromosomes).
]

The law of segregation is simply a description of anaphase I: homologous chromosomes are pulled to opposite poles, so a gamete gets one or the other, never both. That is why a heterozygote ($T t$) produces two kinds of gamete, $T$ and $t$, in equal numbers — and the equal numbers are what make the 3 : 1 ratio of chapter 2 arithmetic rather than luck.

#worked-example(
  2,
  "Why a heterozygote gives two kinds of gamete",
  tier: "UTME STANDARD",
  [A pea plant is heterozygous for seed shape ($R r$). (a) State the law that explains why its gametes are of two kinds. (b) State the ratio of the gametes. (c) A plant is homozygous recessive ($r r$): how many kinds of gamete does it produce?],
  [
    *Step 1 — identify the genotype.* $R r$: one dominant and one recessive allele at the same locus.

    *Step 2 — apply segregation.* At anaphase I the two homologous chromosomes — one carrying $R$, one carrying $r$ — are pulled to opposite poles. Each gamete receives exactly one of them.

    *Step 3 — give the ratio.* Half the gametes carry $R$ and half carry $r$, so the ratio is *1 $R$ : 1 $r$*.

    *Step 4 — the homozygote.* A plant that is $r r$ has the same allele on both homologues, so every gamete receives $r$: *one kind of gamete only*.

    *Answers:* (a) the law of segregation (b) 1 : 1 (c) one kind, all $r$.
  ],
)

#shortcut-box("Writing gametes without a crossing square")[
  A heterozygote ($A a$) gives $A$ and $a$ in equal numbers. A homozygote ($A A$ or $a a$) gives one kind only. For two genes, write the first gene's alleles against the second's and combine: $A a B b$ gives $A B$, $A b$, $a B$ and $a b$ in equal numbers. This saves a minute on every genetics question in the paper.
]

// ============================================================================
// SECTION 1.7 — CHECKLIST
// ============================================================================
== 1.7 Chapter 1 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define gene, allele, genotype, phenotype, homozygous, heterozygous and dominant;
  + draw a chromosome and label the chromatids and the centromere;
  + state the diploid and haploid numbers for humans, pea, maize and onion;
  + explain how a gene is read to make a protein, and what a mutation does to that protein;
  + give five differences between mitosis and meiosis;
  + name the stages of meiosis in order and say what separates in each division;
  + explain crossing over and independent assortment, and why each produces variation;
  + state Mendel's two laws in the examiner's words;
  + write the gametes of a homozygote and a heterozygote without drawing a square.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A gene is a length of DNA; its alternative forms are alleles; the pair of alleles an organism carries is its genotype and what you see is its phenotype. Chromosomes come in homologous pairs, so body cells are diploid and gametes are haploid. Meiosis halves the number in two divisions, and crossing over plus independent assortment make every gamete different.
  ]
]

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the gene, the chromosome, meiosis and why the halving matters.", width: 100%)

// ============================================================================
// SECTION 1.8 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 1.8 Chapter 1 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The alternative forms of a gene are called], [alleles], [loci], [chromatids], [chromosomes])
#mcq(2, [A human gamete contains how many chromosomes?], [46], [23], [22], [92])
#mcq(3, [Crossing over takes place during], [prophase I of meiosis], [anaphase of mitosis], [telophase II of meiosis], [interphase of meiosis])
#mcq(4, [Which of these is a difference between mitosis and meiosis?], [Mitosis produces four cells], [Meiosis produces cells with half the chromosome number], [Mitosis involves crossing over], [Meiosis produces identical cells])

#answer-key-grid(("A", "B", "A", "B"))

#answer-notes((
  ("A", [alleles are the alternative versions of a gene; the locus is the position, not the version.]),
  ("B", [a human body cell has 46 chromosomes in 23 pairs, so each gamete carries 23 — one of each pair.]),
  ("A", [homologous chromosomes pair in prophase I and exchange segments at the chiasmata.]),
  ("B", [meiosis halves the chromosome number ($2 n → n$); mitosis keeps it the same.]),
))

#include "drill_ch01.typ"
