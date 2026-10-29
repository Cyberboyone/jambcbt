#import "template.typ": *

#current-chapter.update("Chapter 3: Variation, Mutation and Adaptation")
#pagebreak()

#chapter-opener(
  3,
  "Variation, Mutation and Adaptation",
  subtitle: "Continuous and Discontinuous Variation, the Causes of Variation, Gene and Chromosome Mutation, and How Organisms Are Adapted to Their Habitats",
  syllabus-ref: "Sec. C • Topic 3",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish continuous from discontinuous variation and give two examples of each.",
    "State the causes of variation and separate the genetic from the environmental.",
    "Define mutation and distinguish a gene mutation from a chromosome mutation.",
    "Name three mutagens and explain why a mutation in a gamete matters more than one in a body cell.",
    "Explain what an adaptation is and give one structural, one behavioural and one physiological example.",
  ),
  hotspots: (
    "\"Which of these is a continuous variation?\" — height, mass, leaf length. Blood group, sex and tongue-rolling are discontinuous.",
    "\"Variation within a species is important because …\" — it is the raw material for natural selection; without it a population cannot adapt.",
    "\"Sickle-cell anaemia is caused by …\" — a gene mutation, a single base substitution in the haemoglobin gene.",
    "\"Down syndrome is caused by …\" — an extra chromosome 21: a chromosome mutation, not a gene mutation.",
    "\"A mutation in a gamete is more important than one in a body cell because …\" — it can be passed to offspring.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Calling a *chromosome* mutation a gene mutation: Down syndrome is a whole extra chromosome, so it is chromosomal. (2) Saying mutation is always harmful — most are neutral, some are harmful, a very few are useful, and the useful ones are what selection works on. (3) Treating an *adaptation* as a change the animal chooses: an adaptation is inherited, and it already exists in the population before the environment changes.",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 Variation — Two Kinds, Two Ways of Measuring

No two members of a species are identical, and the differences between them are called *variation*. The examiner sorts variation into two kinds, and the sorting question appears every year.

#concept-box("Continuous and discontinuous")[
  *Continuous variation* — the characteristic can take any value in a range. You *measure* it, and a graph of many individuals gives a smooth curve. Height, body mass, leaf length, milk yield, skin shade. Caused by many genes acting together, plus the environment. \
  *Discontinuous variation* — the characteristic falls into a few distinct classes with nothing in between. You *count* it, and a graph gives separate bars. Blood group, sex, tongue-rolling, the presence of a widow's peak, cystic fibrosis. Caused by one gene, or by a chromosome difference.
]

#diagram-fig("diagrams/ch03_variation.svg",
  "The two kinds of variation. Height gives a smooth curve because it is continuous; blood group gives separate bars because it is discontinuous.")

#table(
  columns: (1.35fr, 1.9fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Continuous variation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Discontinuous variation],
  ),

  [Values], [a range — 150 cm, 151 cm, 152 cm …], [distinct classes only],
  [How it is recorded], [measured], [counted],
  [Graph], [histogram or a smooth curve], [separate bars],
  [Genes involved], [many genes, each with a small effect], [one or a few genes],
  [Environment], [has a strong effect], [little or no effect],
  [Examples], [height, mass, leaf length, milk yield], [blood group, sex, tongue-rolling, flower colour],
)

#trap-box("Height is not a blood group")[
  The quickest test is the graph: if two individuals can differ by *any* amount between them — 160.5 cm and 160.6 cm — the variation is continuous. If you can only be A, B, AB or O, there is no in-between, so the variation is discontinuous.
]

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 What Causes Variation

Variation has two sources, and the examiner expects both to be named.

#concept-box("Genetic and environmental causes")[
  *Genetic* causes — differences in the DNA, produced by: \
  • *mutation* — a change in the base sequence or in the chromosomes; \
  • *meiosis* — crossing over and independent assortment build new allele combinations; \
  • *random fertilisation* — any one of millions of gamete combinations can fuse. \
  *Environmental* causes — differences caused by conditions rather than by genes: diet, light, water, minerals, temperature, exercise. A well-fed plant is taller than a starved one with exactly the same genes.
]

Most real characteristics are a mixture of both. Height in humans is the standard example: the genes set a range, and diet, health and sleep decide where inside that range a person ends up.

#worked-example(
  1,
  "Genetic or environmental?",
  tier: "FOUNDATION",
  [Two maize plants from the same pure-breeding line are grown: one in full sunlight with fertiliser, the other in shade without fertiliser. The first is 2.1 m tall and the second 1.2 m. (a) Which kind of variation does this show? (b) What produced it? (c) How would you show that height in maize also has a genetic component?],
  [
    *Step 1 — the cause.* The two plants have the same genes, so the difference cannot be genetic. It is caused by *the environment*: light and mineral nutrients.

    *Step 2 — the kind.* Height is measured on a continuous scale, so this is *continuous variation* — even though the cause here is environmental, not genetic.

    *Step 3 — testing the genetic part.* Grow *different* pure lines in *identical* conditions. If they still reach different heights, the difference must be genetic, because the environment was the same for both.

    *Answers:* (a) continuous (b) the environment — light and minerals (c) grow several pure lines side by side under identical conditions and compare.
  ],
)

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Mutation

A *mutation* is a change in the DNA of an organism — in the base sequence of a gene or in the number or structure of the chromosomes. Mutations happen spontaneously, and their rate is raised by *mutagens*: radiation (ultraviolet, X-rays, gamma rays), certain chemicals (tar in tobacco smoke, mustard gas) and some viruses.

#diagram-fig("diagrams/ch03_mutation.svg",
  "A gene mutation and a chromosome mutation side by side. Changing one base changes one amino acid, which changes the protein; a whole extra or missing chromosome changes many genes at once.")

#table(
  columns: (1.25fr, 1.9fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gene mutation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chromosome mutation],
  ),

  [What changes], [one or a few bases in a gene], [a whole chromosome, or a piece of one],
  [Protein produced], [one protein is altered], [many proteins are altered at once],
  [Visible under a microscope?], [no], [yes — in a karyotype],
  [Examples], [sickle-cell anaemia, albinism, haemophilia], [Down syndrome, Turner syndrome],
)

#concept-box("Why a mutation in a gamete matters")[
  A mutation in a *body* cell (skin, liver, muscle) affects only that cell and its descendants — it dies with the organism. A mutation in a *gamete* is carried into the zygote, so it appears in every cell of the offspring and can be passed on again. That is why a mutation in a gamete is the only kind that can change a species.
]

#worked-example(
  2,
  "Sickle-cell anaemia, from base to symptom",
  tier: "JAMB CHALLENGE",
  [Sickle-cell anaemia is caused by a single base substitution in the gene for the beta chain of haemoglobin, in which adenine replaces thymine. (a) Name the kind of mutation. (b) Explain, in three steps, how one base produces a disease. (c) Explain why the allele remains common in parts of West Africa.],
  [
    *Step 1 — name it.* One base changed for another inside a gene: a *gene mutation* — specifically a substitution.

    *Step 2 — trace the effect.* The triplet that codes for glutamic acid becomes a triplet that codes for valine, so one amino acid in the chain is wrong. The haemoglobin molecule folds differently, and in low oxygen the red cell becomes sickle-shaped — so it blocks capillaries and is destroyed quickly, which causes anaemia and pain.

    *Step 3 — why it survives.* People who are *heterozygous* have some normal haemoglobin and are strongly protected against malaria, which kills many children in the same region. The heterozygote therefore survives better than either homozygote, so the allele is kept in the population by *balancing selection*.

    *Answers:* (a) gene (substitution) mutation (b) base → amino acid → protein shape → cell shape → disease (c) heterozygotes resist malaria and are at an advantage.
  ],
)

#shortcut-box("Harmful, neutral, useful")[
  Most mutations are *neutral*: they change a base in a stretch of DNA that does not code for anything, or they change an amino acid without changing the protein's shape. Some are *harmful* — they break a protein the body needs. A very few are *useful*, and those are the ones natural selection keeps. If a question asks whether mutation is 'good' or 'bad', the marked answer is that it is *random*, and its effect depends on the environment.
]

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 Adaptation

An *adaptation* is an inherited feature that helps an organism survive and reproduce in its habitat. Adaptations are not choices; they are features the population already has, kept because the individuals that had them left more offspring.

#table(
  columns: (1.15fr, 1.5fr, 2.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it helps],
  ),

  [*Structural*], [Cactus: thick waxy stem, leaves reduced to spines], [Waxy cuticle cuts water loss; spines are modified leaves that also deter herbivores],
  [*Structural*], [Fish: gills with many filaments], [A large, thin, moist surface for exchanging oxygen and carbon dioxide in water],
  [*Behavioural*], [Desert lizard: active at dawn and dusk, sheltering at midday], [Avoids the hottest part of the day, so it loses less water and does not overheat],
  [*Behavioural*], [Birds: migration before winter], [Moves to where food is available instead of starving through the cold season],
  [*Physiological*], [Mammals: sweating and vasodilation when hot], [Evaporation cools the skin, and more blood near the surface loses heat faster],
  [*Physiological*], [Mangrove roots: salt glands and aerial roots], [Excrete excess salt and obtain oxygen in waterlogged mud],
)

#concept-box("Three words that must not be confused")[
  *Adaptation* — an inherited feature that improves survival; it belongs to the population, not the individual. \
  *Acclimatisation* — a short-term adjustment within one lifetime (a person moving to a hot climate sweats more). Not inherited. \
  *Acquired characteristic* — a change caused by use or the environment (a weightlifter's muscles). Not inherited and not an adaptation.
]

#worked-example(
  3,
  "Explaining an adaptation for full marks",
  tier: "UTME STANDARD",
  [A cactus lives in a desert. State three adaptations of the cactus and explain how each helps it survive.],
  [
    *Step 1 — choose features that can be named.* A cactus has a thick, fleshy stem; leaves reduced to spines; a thick waxy cuticle; and its stomata are few and closed by day.

    *Step 2 — link each feature to a *benefit*, not just a name.*
    The thick stem *stores water*, so the plant survives long dry periods.
    The waxy cuticle *reduces transpiration*, so less water is lost from the surface.
    Spines *reduce water loss* (they are leaves with almost no surface) and *deter animals* that would eat the plant.

    *Step 3 — finish with the consequence.* Fewer water losses in a habitat where water is the limiting factor means the plant survives to flower and set seed.

    *Answer scheme:* name the feature → state how it works → link to survival in the desert.
  ],
)

#trap-box("\"It adapted\" is not an answer")[
  An individual does not adapt to order, and a feature does not appear because an animal needs it. Write the population version instead: *individuals with the feature survive and leave more offspring, so the feature becomes common*. Answers that describe a need turning into a feature are not awarded the mark.
]

// ============================================================================
// SECTION 3.5 — CHECKLIST
// ============================================================================
== 3.5 Chapter 3 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define variation and give two examples of each kind;
  + say how each kind is recorded and what graph each produces;
  + list three genetic causes of variation and three environmental ones;
  + define mutation and distinguish a gene mutation from a chromosome mutation;
  + name three mutagens and explain why gamete mutations are the important ones;
  + explain sickle-cell anaemia from base to symptom;
  + define adaptation and give one structural, one behavioural and one physiological example;
  + explain why an acquired characteristic is not an adaptation.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Variation is either continuous — a measured range, many genes plus the environment — or discontinuous — a few counted classes, one gene. Its causes are mutation, meiosis and random fertilisation, plus the environment. Mutation is a change in the DNA: a gene mutation alters one protein, a chromosome mutation alters many at once. An adaptation is an inherited feature that keeps its owners alive long enough to breed, and selection is what makes it common.
  ]
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: continuous and discontinuous variation, mutation and adaptation.", width: 100%)

// ============================================================================
// SECTION 3.6 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Which of the following is an example of continuous variation?], [Blood group], [Body height], [Sex], [Ability to roll the tongue])
#mcq(2, [A mutation that occurs in a body cell is not passed to offspring because], [body cells do not divide], [the gametes are not affected], [body cells have no DNA], [the mutation is always corrected])
#mcq(3, [Down syndrome is an example of], [a gene mutation], [a chromosome mutation], [an environmental effect], [a dominant allele])
#mcq(4, [The thick waxy cuticle of a desert plant is an adaptation that], [increases water loss], [reduces transpiration], [attracts insects], [stores food])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [height can take any value in a range and is measured; blood group, sex and tongue-rolling are distinct classes.]),
  ("B", [only mutations in the gametes are carried into the zygote and so into the next generation.]),
  ("B", [an extra chromosome 21 is a change in chromosome number, so it is chromosomal, not a gene mutation.]),
  ("B", [the waxy layer is almost waterproof, so less water evaporates from the surface of the plant.]),
))

#include "drill_ch03.typ"
