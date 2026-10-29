#import "template.typ": *

#current-chapter.update("Chapter 3: Cell Division")
#pagebreak()

#chapter-opener(
  3,
  "Cell Division",
  subtitle: "Why Cells Divide, the Stages of Mitosis, Meiosis I and II, Crossing Over, Chromosome Numbers, and the Consequences of Getting It Wrong",
  syllabus-ref: "Sec. B • Topic 2",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "State why cells divide and name the two kinds of division.",
    "Describe the behaviour of the chromosomes in each stage of mitosis.",
    "Explain meiosis as two divisions that halve the chromosome number.",
    "State the chromosome number of the products of mitosis and of meiosis.",
    "Explain how crossing over and independent assortment produce variation.",
  ),
  hotspots: (
    "\"The number of chromosomes in each daughter cell after mitosis is …\" — the same as the parent cell.",
    "\"After meiosis the chromosome number is …\" — halved; four cells, each with n.",
    "\"Crossing over occurs during …\" — prophase I of meiosis.",
    "\"A human cell with 46 chromosomes divides by meiosis. Each product has …\" — 23.",
    "\"Which stage shows chromosomes lined up at the equator?\" — metaphase.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying meiosis makes “two cells” — it makes *four*, because there are two divisions. (2) Writing that the chromosome number doubles in mitosis — it does not; the DNA replicates first, then the copies separate, so each daughter has the *same* number. (3) Confusing the products of mitosis (identical) with those of meiosis (all different).",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 Why Cells Divide

A cell cannot grow indefinitely: as it enlarges, its surface area grows more slowly than its volume, so it can no longer take in food and get rid of waste fast enough. The remedy is *division* — one cell becomes two, each with a full set of instructions and a workable size.

Cells divide for three reasons:

+ *growth* — an organism gets bigger by making more cells, not by making bigger ones;
+ *repair and replacement* — worn-out cells (skin, red blood cells, gut lining) are replaced continuously;
+ *reproduction* — in unicellular organisms, division *is* reproduction; in multicellular organisms, special cells divide to make gametes.

#concept-box("Two divisions, two jobs")[
  *Mitosis* makes body cells that are genetically identical to the parent — used for growth, repair and asexual reproduction.

  *Meiosis* makes gametes (sperm, eggs, pollen) that carry *half* the chromosomes — used only for sexual reproduction. Without meiosis, the chromosome number would double in every generation.
]

#table(
  columns: (1fr, 1.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it happens],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Mitosis],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Meiosis],
  ),

  [Site], [All body (somatic) cells], [Reproductive organs — testes, ovaries, anthers],
  [Number of divisions], [One], [Two, one after the other],
  [Number of products], [Two], [Four],
  [Chromosome number in products], [Same as the parent ($2n$)], [Halved ($n$)],
  [Genetic result], [Identical to the parent], [All four different from one another],
  [Crossing over], [Does not occur], [Occurs in prophase I],
  [Purpose], [Growth, repair, asexual reproduction], [Formation of gametes; variation],
)

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 The Cell Cycle

Before a cell divides it must copy everything it needs. The *cell cycle* has two main phases:

- *interphase* — the cell is not dividing; it grows, makes proteins and *replicates its DNA*. Interphase occupies by far the largest part of the cycle and is subdivided into G₁ (growth), S (synthesis of DNA) and G₂ (further growth and preparation).
- *M phase* — mitosis (nuclear division) followed by *cytokinesis* (division of the cytoplasm).

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The one fact most candidates miss]
  #v(3pt)
  #text(size: 10pt)[
    DNA replication happens in *interphase*, not during mitosis. By the time prophase begins, each chromosome is already a pair of identical *chromatids* joined at a *centromere*. The whole of mitosis is the orderly *separation* of copies that were made earlier.
  ]
]

#diagram-fig("diagrams/ch03_mitosis.svg",
  "The stages of mitosis. Learn the chromosome behaviour at each stage, because the exam asks “what happens in …?” far more often than it asks for a definition.")

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Mitosis, Stage by Stage

#table(
  columns: (1fr, 2.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens],
  ),

  [*Interphase*], [DNA replicates; the cell grows and makes proteins. Chromosomes are long, thin threads and cannot be seen individually.],
  [*Prophase*], [Chromosomes shorten and thicken and become visible as pairs of chromatids. The nuclear membrane breaks down and the nucleolus disappears. Spindle fibres begin to form.],
  [*Metaphase*], [Chromosomes line up along the *equator* of the cell. Spindle fibres from opposite poles attach to the centromeres.],
  [*Anaphase*], [The centromeres split; the two chromatids of each chromosome separate and are pulled to opposite poles. Each pole now has a full set.],
  [*Telophase*], [Chromosomes uncoil and lengthen again; a nuclear membrane forms around each set; the nucleolus reappears.],
  [*Cytokinesis*], [The cytoplasm divides — by a furrow in animal cells, by a new cell plate in plant cells — giving two separate daughter cells.],
)

#shortcut-box("The four words that answer any stage question")[
  Prophase — *visible*. Metaphase — *middle*. Anaphase — *away*. Telophase — *two*. If you can say that sequence, you can place any event in the right stage.
]

#worked-example(
  1,
  "Counting chromosomes through mitosis",
  tier: "FOUNDATION",
  [A body cell of a rat contains 42 chromosomes. State the number of chromosomes in (a) the cell at the end of interphase, (b) each cell after mitosis.]
  ,[
    (a) At the end of interphase the DNA has replicated, so there are still 42 *chromosomes*, but each now consists of two chromatids joined at a centromere. The chromosome number does not double — only the amount of DNA does.

    (b) After mitosis each daughter cell receives one chromatid from each chromosome, so it has 42 chromosomes — exactly the same as the parent.

    *Answer:* (a) 42; (b) 42 in each cell.
  ],
)

#worked-example(
  2,
  "Where is mitosis fastest?",
  tier: "UTME STANDARD",
  [Name two tissues in a mammal where mitosis occurs rapidly and explain why.]
  ,
  [
    The *lining of the small intestine* — cells are constantly worn away by abrasive food, so they must be replaced continuously.

    The *skin (epidermis)* — surface cells are rubbed off and must be replaced from the basal layer.

    Other acceptable answers: the bone marrow (red blood cells are made there and live only about 120 days), the root tip of a plant, or the meristem at a shoot tip.

    *Rule:* mitosis is fastest where cells are lost fastest or where growth is happening.
  ],
)

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 Meiosis

Meiosis is *two* divisions in sequence, and it halves the chromosome number.

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[The two divisions]
  #v(4pt)
  #text(size: 10pt)[
    *Meiosis I (the reduction division).* The *homologous* chromosomes pair up (one from each parent), crossing over occurs in prophase I, then the pairs line up at the equator and separate — one whole chromosome of each pair to each pole. The chromosome number is halved here.

    *Meiosis II.* No replication takes place. The two cells divide again, this time separating the chromatids exactly as in mitosis. The result is four haploid cells.
  ]
]

#diagram-fig("diagrams/ch03_crossing_over.svg",
  "Crossing over in prophase I. Sections of chromatid are exchanged between homologous chromosomes, so each gamete carries a new combination of the parents' genes.")

#diagram-fig("diagrams/ch03_meiosis_compare.svg",
  "Mitosis and meiosis side by side — the comparison table an examiner can turn into a six-mark question.")

#worked-example(
  3,
  "Chromosome bookkeeping",
  tier: "UTME STANDARD",
  [A human cell with 46 chromosomes undergoes meiosis. State the number of cells produced and the chromosome number in each. Then state what would happen to the chromosome number if gametes were formed by mitosis instead.]
  ,
  [
    Meiosis involves two divisions, so *four* cells are produced. Each receives one chromosome from each homologous pair, so each has *23* chromosomes.

    If gametes were formed by mitosis, each would have 46. At fertilisation the zygote would have 92 chromosomes, and the number would double again in the next generation. Meiosis exists precisely to prevent that doubling.

    *Answer:* four cells, 23 chromosomes each; without meiosis the chromosome number would double every generation.
  ],
  source: "JAMB 2020 style",
)

#worked-example(
  4,
  "Why siblings are not identical",
  tier: "JAMB CHALLENGE",
  [Two children of the same parents are not genetically identical. Explain, using meiosis, why not.]
  ,
  [
    Three processes in meiosis shuffle the genes.

    *Crossing over* in prophase I exchanges sections between homologous chromosomes, so each chromosome entering a gamete is a mixture of the grandparents' genes.

    *Independent assortment* in metaphase I: each pair of homologous chromosomes lines up independently of the others, so the 23 pairs can be distributed in $2^23$ different combinations.

    *Random fertilisation*: any one of millions of sperm may fuse with any one egg.

    *Answer:* crossing over, independent assortment and random fertilisation together mean that no two gametes are alike, so no two offspring are alike.
  ],
)

// ============================================================================
// SECTION 3.5
// ============================================================================
== 3.5 Why Division Sometimes Goes Wrong

Cell division is controlled by genes. If the genes that regulate the cycle are damaged — by radiation, certain chemicals, some viruses, or simply by copying errors — a cell may divide without limit. The result is a *tumour*; if the cells invade other tissues, it is *cancer*.

#table(
  columns: (1.15fr, 2.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What has gone wrong],
  ),

  [*Cancer*], [Cells divide uncontrollably because the genes controlling the cell cycle are mutated; the cells do not differentiate and may spread.],
  [*Benign tumour*], [A mass of cells that grows but does not spread to other tissues.],
  [*Malignant tumour*], [Cells break away, enter the blood or lymph and form secondary tumours elsewhere — metastasis.],
  [*Non-disjunction*], [During meiosis a pair of chromosomes fails to separate, so one gamete has an extra chromosome and another has one too few. Down syndrome (three copies of chromosome 21) is the classic example.],
)

#trap-box("“Meiosis makes two cells” — the commonest error in this chapter")[
  Meiosis has *two* divisions, so it produces *four* cells. Candidates who write "two" lose the mark even when the chromosome number is right. Say it out loud: *two divisions, four cells, half the chromosomes*.
]

// ============================================================================
// SECTION 3.6 — CHECKLIST
// ============================================================================
== 3.6 Chapter 3 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + state three reasons why cells divide;
  + describe what happens in interphase, prophase, metaphase, anaphase and telophase;
  + explain the difference between mitosis and meiosis in a table of at least six rows;
  + calculate the chromosome number of the products of either division from the parent number;
  + explain crossing over and independent assortment, and link both to variation;
  + explain what non-disjunction is and give one example;
  + say why a gamete formed by mitosis would be a disaster for the species.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Mitosis copies: one cell into two identical cells, the chromosome number unchanged, for growth and repair. Meiosis halves and shuffles: one cell into four different gametes, half the chromosomes, for reproduction and variation. Everything else in the chapter is detail hanging on those two sentences.
  ]
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: mitosis, meiosis, chromosome numbers and the sources of variation.", width: 100%)

// ============================================================================
// SECTION 3.7 — TWO-MINUTE SET
// ============================================================================
== 3.7 Chapter 3 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [A cell with 24 chromosomes divides by mitosis. Each daughter cell will contain], [$12$ chromosomes], [$24$ chromosomes], [$48$ chromosomes], [$6$ chromosomes])
#mcq(2, [Crossing over takes place during], [prophase I of meiosis], [metaphase of mitosis], [anaphase II of meiosis], [telophase of mitosis])
#mcq(3, [Meiosis in a human male produces], [two cells with 46 chromosomes], [four cells with 23 chromosomes], [four cells with 46 chromosomes], [two cells with 23 chromosomes])
#mcq(4, [The stage at which chromosomes line up at the equator is], [prophase], [anaphase], [telophase], [metaphase])

#answer-key-grid(("B", "A", "B", "D"))
]


#include "drill_ch03.typ"
