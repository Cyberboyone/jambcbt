#import "template.typ": *

#current-chapter.update("Chapter 3: Cell Division")
#pagebreak()

#chapter-opener(
  3,
  "Cell Division",
  subtitle: "Chromosomes, the Cell Cycle, Mitosis Stage by Stage, Meiosis and Crossing Over, and Why the Two Kinds of Division Exist",
  syllabus-ref: "Sec. B • Topic 2",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define chromosome, chromatid, centromere, diploid and haploid.",
    "Describe the stages of mitosis in order and say what happens in each.",
    "Describe meiosis I and II, including crossing over and independent assortment.",
    "State the chromosome number of the products of mitosis and of meiosis.",
    "Give the significance of mitosis and of meiosis in one line each.",
  ),
  hotspots: (
    "\"The number of chromosomes in each daughter cell after mitosis is …\" — the same as the parent cell ($2n$).",
    "\"After meiosis the chromosome number is …\" — halved ($n$); that is the point of meiosis.",
    "\"Crossing over occurs at …\" — prophase I of meiosis, between homologous chromosomes.",
    "\"The stage at which chromosomes line up at the equator is …\" — metaphase.",
    "\"Mitosis is important for …\" — growth, repair and asexual reproduction.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying meiosis produces *two* cells — it produces *four*. (2) Confusing the *number* of chromosomes with the number of *chromatids*: after replication each chromosome has two chromatids but is still one chromosome. (3) Writing that mitosis halves the chromosome number — it does the opposite: it keeps it constant.",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 Chromosomes and the Cell Cycle

A *chromosome* is a thread-like structure in the nucleus that carries the genes. In a non-dividing cell the chromosomes are long, thin threads called *chromatin*; just before division they shorten and thicken, and each becomes visible as two identical strands — two *chromatids* — joined at a point called the *centromere*.

#table(
  columns: (1.1fr, 2.2fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Meaning],
  ),

  [*Chromosome*], [A DNA-containing structure in the nucleus that carries genes.],
  [*Chromatid*], [One of the two identical strands of a replicated chromosome, joined at the centromere.],
  [*Centromere*], [The point at which the two chromatids are joined and to which spindle fibres attach.],
  [*Homologous chromosomes*], [A matching pair — one from each parent — carrying genes for the same features.],
  [*Diploid ($2n$)*], [Having two sets of chromosomes, i.e. both members of every homologous pair. Human body cells are $2n = 46$.],
  [*Haploid ($n$)*], [Having one set only — one chromosome of each pair. Human gametes are $n = 23$.],
)

#v(5pt)

#concept-box("Every number in this chapter comes from one sentence")[
  *Mitosis keeps the chromosome number the same; meiosis halves it.* Everything else — the four cells, the crossing over, the variation — follows from that single difference in purpose: mitosis makes more of the same cell, meiosis makes gametes.
]

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 Mitosis

Mitosis is division that produces *two genetically identical daughter cells*, each with the *same* chromosome number as the parent. It is the division used for growth, for repair of damaged tissues, and for asexual reproduction.

#diagram-fig("diagrams/ch03_mitosis.svg",
  "Mitosis in four stages. The chromosomes condense, line up at the equator, separate to opposite poles, and two nuclei re-form.")

#table(
  columns: (1fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens],
  ),

  [*Interphase*], [Not part of mitosis. The cell grows, the DNA replicates, and the organelles double.],
  [*Prophase*], [Chromosomes shorten and thicken and become visible as two chromatids; the nuclear membrane begins to break down; spindle fibres form.],
  [*Metaphase*], [Chromosomes line up along the *equator* of the cell; spindle fibres attach to the centromeres.],
  [*Anaphase*], [The centromeres split and the chromatids are pulled to *opposite poles*; each chromatid is now a chromosome.],
  [*Telophase*], [The chromosomes reach the poles, uncoil, and a *new nuclear membrane* forms around each group.],
  [*Cytokinesis*], [The cytoplasm divides: a cell plate forms in plants, a cleavage furrow in animals. Two daughter cells result.],
)

#v(5pt)

#shortcut-box("The four words that answer any stage question")[
  *Prophase* — appear. *Metaphase* — middle. *Anaphase* — apart. *Telophase* — two nuclei. If you can say those four phrases, you can name the stage from any description, drawing or photograph.
]

#worked-example(
  1,
  "Chromosome counting after mitosis",
  tier: "FOUNDATION",
  [A body cell of an organism has 24 chromosomes. How many chromosomes will each daughter cell have after mitosis, and why?],
  [
    Mitosis produces two daughter cells, each with the *same* number of chromosomes as the parent cell.

    During interphase each chromosome replicates into two chromatids; in anaphase the chromatids separate, so each daughter receives one copy of every chromosome.

    *Answer:* 24 chromosomes in each daughter cell.
  ],
)

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Meiosis

Meiosis is division that produces *four haploid cells* from one diploid cell. It happens only in the reproductive organs, and it makes *gametes* (sperm and egg cells in animals; pollen and egg cells in plants). It is a *reduction division*: the chromosome number is halved.

#diagram-fig("diagrams/ch03_meiosis.svg",
  "Meiosis: one diploid cell gives four haploid cells through two divisions, with crossing over in prophase I.")

#table(
  columns: (1fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens],
  ),

  [*Prophase I*], [Homologous chromosomes pair up (*synapsis*) and exchange segments — *crossing over* — producing new combinations of genes.],
  [*Metaphase I*], [The homologous *pairs* line up at the equator.],
  [*Anaphase I*], [The homologous chromosomes separate to opposite poles; the centromeres do *not* split.],
  [*Telophase I*], [Two haploid cells form (each chromosome still has two chromatids).],
  [*Meiosis II*], [The two cells divide again, in a division like mitosis: chromatids separate, giving *four haploid cells* in all.],
)

#v(5pt)

#concept-box("Two sources of variation in meiosis")[
  *Crossing over* in prophase I swaps segments between homologous chromosomes, so each chromosome carries a mixture of maternal and paternal genes.

  *Independent assortment* in metaphase I arranges each homologous pair randomly, so the two gametes receive random mixes of the parent's chromosomes. With 23 pairs, a human can produce $2^23$ different gametes from this alone — about eight million.
]

#worked-example(
  2,
  "Chromosome counting after meiosis",
  tier: "UTME STANDARD",
  [A cell with 46 chromosomes undergoes meiosis. State the number of cells produced and the chromosome number of each.],
  [
    Meiosis consists of *two* divisions. One diploid cell gives *four* haploid cells.

    The chromosome number is halved once, in meiosis I, when the homologous chromosomes separate. Meiosis II separates chromatids but does not halve the number again.

    *Answer:* four cells, each with 23 chromosomes.
  ],
)

#worked-example(
  3,
  "Which division is it?",
  tier: "JAMB CHALLENGE",
  [In a certain tissue, one cell divides and the two daughter cells each contain 12 chromosomes, exactly as the parent did. Name the type of division and state one function it serves in that organism.],
  [
    The daughter cells have the *same* chromosome number as the parent (12), and there are *two* of them. That is the signature of *mitosis*.

    Meiosis would have given four cells with half the number (6).

    *Answer:* mitosis; it serves growth, repair of tissues, or asexual reproduction, depending on the organ.
  ],
)

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 Mitosis and Meiosis Compared

#table(
  columns: (1fr, 1.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Mitosis],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Meiosis],
  ),

  [Number of divisions], [One], [Two],
  [Daughter cells], [Two], [Four],
  [Chromosome number], [Same as the parent ($2n$)], [Half the parent ($n$)],
  [Genetic result], [Identical to the parent], [Genetically different],
  [Crossing over], [None], [In prophase I],
  [Where it occurs], [Body (somatic) cells], [Reproductive organs],
  [Function], [Growth, repair, asexual reproduction], [Formation of gametes, variation],
)

#v(4pt)

#trap-box("The four-cell trap")[
  A question that says "a cell divides to form four cells" is *always* meiosis. A question that says "two identical cells" is *always* mitosis. Read the number of products before you read anything else — it settles the question in one second.
]

// ============================================================================
// SECTION 3.5
// ============================================================================
== 3.5 Chromosome Numbers Worth Knowing

#table(
  columns: (1.4fr, auto, 1.4fr, auto),
  inset: 5.5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Organism],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Body cell ($2n$)],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Organism],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Body cell ($2n$)],
  ),

  [Human], [46], [Maize], [20],
  [Housefly], [12], [Onion], [16],
  [Dog], [78], [Rice], [24],
  [Fruit fly], [8], [Garden pea], [14],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The rule, whichever number is given]
  #v(3pt)
  #text(size: 10pt)[
    Gamete (after meiosis) $= 2n div 2$. Zygote (after fertilisation) $= n + n = 2n$. A cell after mitosis $= 2n$ again. Every chromosome-number question in the paper is one of those three lines.
  ]
]

// ============================================================================
// SECTION 3.6 — CHECKLIST
// ============================================================================
== 3.6 Chapter 3 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define chromosome, chromatid, centromere, diploid and haploid;
  + name the stages of mitosis in order and describe each in one line;
  + name the stages of meiosis and say where crossing over occurs;
  + state the number and chromosome content of the products of each division;
  + give two differences between mitosis and meiosis without hesitating;
  + explain why meiosis produces variation and mitosis does not;
  + work out the chromosome number of a gamete from the body-cell number.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Mitosis copies: two cells, same number, identical. Meiosis shuffles and halves: four cells, half the number, all different. Crossing over in prophase I is where the variety comes from.
  ]
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the stages, the numbers and the two purposes.", width: 62%)

// ============================================================================
// SECTION 3.7 — TWO-MINUTE SET
// ============================================================================
== 3.7 Chapter 3 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [A body cell with 24 chromosomes divides by mitosis. Each daughter cell will contain], [12 chromosomes], [24 chromosomes], [48 chromosomes], [6 chromosomes])
#mcq(2, [Crossing over takes place during], [prophase of mitosis], [anaphase I of meiosis], [prophase I of meiosis], [telophase II of meiosis])
#mcq(3, [The number of cells produced when one cell undergoes meiosis is], [two], [three], [four], [eight])
#mcq(4, [Mitosis is important because it], [halves the chromosome number], [produces gametes], [produces genetically identical cells for growth and repair], [introduces variation])

#answer-key-grid(("B", "C", "C", "C"))
