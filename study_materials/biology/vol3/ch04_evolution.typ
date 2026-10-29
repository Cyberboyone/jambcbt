#import "template.typ": *

#current-chapter.update("Chapter 4: Evolution and the Evidence for It")
#pagebreak()

#chapter-opener(
  4,
  "Evolution and the Evidence for It",
  subtitle: "What Evolution Means, the Fossil Record, Homologous and Analogous Structures, Natural Selection, Lamarck against Darwin, Speciation and the Human Line",
  syllabus-ref: "Sec. C • Topic 4",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define evolution and state what it is not.",
    "Give five kinds of evidence for evolution and one example of each.",
    "Distinguish homologous from analogous structures, and explain vestigial organs.",
    "Outline natural selection in five steps and apply it to one named example.",
    "Compare Lamarck's and Darwin's explanations of the same observation.",
    "Explain how a new species can arise from an isolated population.",
  ),
  hotspots: (
    "\"The forelimbs of a bat and the wings of a bird are …\" — homologous. A bird's wing and a butterfly's wing are analogous.",
    "\"Vestigial organs such as the appendix are evidence for evolution because …\" — they are reduced structures that had a function in an ancestor.",
    "\"The main mechanism of evolution is …\" — natural selection acting on variation.",
    "\"Lamarck's theory was rejected because …\" — acquired characteristics are not inherited.",
    "\"A new species forms when …\" — populations are isolated, so they stop interbreeding and accumulate different alleles.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Calling a bat's wing and a butterfly's wing homologous: one has bones, the other does not — they are *analogous*, which shows a common *need*, not a common ancestor. (2) Writing that an animal \"adapts itself\" — that is Lamarck, and it is the distractor in every question on the topic. (3) Saying evolution proves life began by itself: evolution explains the *diversity* of life, not its origin.",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 What Evolution Means

*Evolution* is a change in the inherited characteristics of a population over many generations. It is not a change in one individual during its life, and it is not progress towards a goal — it is simply the result, generation after generation, of some individuals leaving more offspring than others.

#concept-box("The four words the examiner marks")[
  *Population* — a group of organisms of the same species living in the same place at the same time. \
  *Species* — a group whose members can interbreed to produce fertile offspring. \
  *Natural selection* — the process by which individuals better adapted to their environment survive and reproduce more successfully. \
  *Speciation* — the formation of a new species from an existing one, usually after a period of isolation.
]

Two ideas are often confused. *Evolution* is the pattern — life has changed. *Natural selection* is the mechanism — the process that produces the change. A question that asks "how did the giraffe get a long neck?" is asking for the mechanism, not the pattern.

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 The Evidence from Fossils

A *fossil* is the preserved remains or trace of an organism that lived in the past. Fossils are found in sedimentary rock, and they are laid down in order: the oldest rocks are at the bottom, the youngest at the top.

#diagram-fig("diagrams/ch04_fossils.svg",
  "A rock face read from the top down. The youngest rocks hold modern mammals; the oldest hold single-celled organisms only — and the fossils in between get simpler as you go deeper.")

The record shows three things the examiner expects you to state:

+ *Species of the past are not the species of today.* Many fossil species have no living descendant; others are clearly related to living forms but different.
+ *Simpler forms lie in older rock.* The order in the strata is an order in time, because the rock was deposited in layers.
+ *Transitional forms exist.* *Archaeopteryx* has feathers and wings like a bird but teeth, claws and a long bony tail like a reptile — one group can be ancestral to another.

#concept-box("How a fossil is dated")[
  Sedimentary rock is dated by *radiometric dating*: unstable isotopes decay at a known rate, so the ratio of parent to daughter isotope gives the age of the rock around the fossil. The fossil itself is dated by the layer it lies in — which is why the *order* of fossils is more reliable evidence than the age of any single specimen.
]

#trap-box("Fossils are rare, and that is not a weakness")[
  Soft-bodied organisms decay before they can be fossilised, so the record is incomplete and biased towards animals with shells, bones or wood. This is why a "missing link" is missing: absence of a fossil is not evidence of absence of the organism. Examiners accept "the fossil record is incomplete" as a limitation, but not as a disproof.
]

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 The Evidence from Structure

The bodies of living organisms carry the same story. Three kinds of structural evidence are examined.

#diagram-fig("diagrams/ch04_homologous.svg",
  "Homologous and analogous structures. The human arm, the bat wing and the whale flipper contain the same bones in the same order; the insect wing and the bird wing do the same job with no bones in common.")

#table(
  columns: (1.2fr, 1.6fr, 2.2fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [*Homologous*], [same basic structure and origin, different function — evidence of a *common ancestor*], [forelimbs of a human, a bat, a whale and a horse],
  [*Analogous*], [different structure and origin, same function — evidence of a *common need*, not common ancestry], [bird wing and insect wing; fish fin and dolphin flipper],
  [*Vestigial*], [a reduced structure that has lost most or all of its function — evidence of an ancestor that used it], [human appendix and coccyx; pelvic bones in whales; wings of a flightless bird],
)

Three further lines of evidence are worth one sentence each. *Embryology*: the embryos of fish, reptiles, birds and mammals pass through stages in which they look alike, with gill slits and a tail. *Biochemistry*: the same genetic code, the same amino acids and similar proteins (cytochrome c, haemoglobin) in organisms that are otherwise unlike. *Observed selection*: the peppered moth, and antibiotic resistance in bacteria, show natural selection happening within a human lifetime.

#shortcut-box("Homologous or analogous? Two questions")[
  Ask: *do they contain the same parts?* If yes → homologous → common ancestry. \
  Ask: *do they do the same job?* If yes but the parts differ → analogous → common need. \
  A structure can be both — the wings of a bat and of a bird are homologous as forelimbs and analogous as wings. Say which comparison the question is making.
]

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 Natural Selection in Five Steps

Charles Darwin's explanation, published in 1859, is the mechanism every examiner wants. It has five steps, and they must be in order.

#diagram-fig("diagrams/ch04_selection.svg",
  "Natural selection in five steps, with the peppered moth as the worked example: soot darkened the tree trunks, pale moths were seen and eaten, and the dark form spread.")

#concept-box("The five steps, in the words that earn the marks")[
  1. *Variation* — individuals in a population differ, and some of the differences are inherited. \
  2. *Competition* — more young are produced than the habitat can support, so there is competition for food, space and mates. \
  3. *Selection* — the individuals whose variations suit the environment best survive and reproduce; the others leave fewer offspring. \
  4. *Inheritance* — the favourable alleles are passed to the next generation. \
  5. *Change* — over many generations the population shifts, and the favourable feature becomes common.
]

#worked-example(
  1,
  "Antibiotic resistance, in five steps",
  tier: "UTME STANDARD",
  [A patient is treated with an antibiotic for a bacterial infection. After a course of treatment, some bacteria survive and the infection returns; the same antibiotic no longer works. Explain, using natural selection, how this happens.],
  [
    *Step 1 — variation.* In the bacterial population a few cells already carry a mutation that makes them resistant. The mutation existed *before* the antibiotic was used.

    *Step 2 — competition and selection.* The antibiotic kills the non-resistant cells, which removes the competition. The resistant cells are the ones that survive.

    *Step 3 — inheritance.* The survivors divide by binary fission and pass the resistance allele to their offspring, so the resistant cells become the majority.

    *Step 4 — change.* The next course of the same antibiotic meets a population that is mostly resistant, so it fails. This is evolution by natural selection, and it is why courses must be completed and antibiotics must not be used for viral infections.

    *Note the wording:* the antibiotic does not *create* resistance — it *selects* the resistant cells that mutation had already produced.
  ],
)

#table(
  columns: (1.35fr, 1.85fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Lamarck],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Darwin],
  ),

  [Source of variation], [produced by need, during the animal's life], [already present in the population, from mutation and meiosis],
  [Mechanism], [use and disuse; a used organ grows], [natural selection — the better adapted leave more offspring],
  [Inheritance], [acquired characteristics are inherited], [only inherited variation is passed on],
  [Giraffe's neck], [stretching to reach high leaves lengthened the neck, and the longer neck was inherited], [long-necked individuals reached more food and left more offspring],
  [Status], [rejected — acquired characteristics are not inherited], [accepted — supported by fossil, structural and biochemical evidence],
)

#trap-box("\"Use and disuse\" is always the distractor")[
  Any option that says an organ grew because it was used, or was lost because it was not, is *Lamarck's* explanation and is wrong. The Darwinian answer always begins with variation that was already there and ends with differential survival.
]

// ============================================================================
// SECTION 4.5
// ============================================================================
== 4.5 Speciation, and the Human Line

A new species forms when populations of one species become *isolated* — by a river, a mountain range, a sea or simply distance — so that they stop interbreeding. Each population then accumulates its own mutations, and after enough generations the two cannot interbreed even if they meet again. At that point they are separate species.

#concept-box("The three steps of speciation")[
  *Isolation* — a barrier prevents gene flow between two populations of the same species. \
  *Divergence* — mutation, genetic drift and different selection pressures make the two gene pools different. \
  *Reproductive isolation* — the differences become so great that the two populations can no longer produce fertile offspring; a new species exists.
]

The human line is used as a short illustration rather than a separate topic. The trend across the fossils runs in one direction: a larger brain case, a flatter face with a smaller jaw, teeth that are smaller and less specialised, and a fully upright posture with the spine entering the skull from below. *Australopithecus* walked upright with a small brain; *Homo erectus* was taller with a larger brain and used fire and tools; *Homo sapiens* has the largest brain case of all and a pronounced chin.

#trap-box("Evolution is not a ladder")[
  The human line is drawn as a bush, not a ladder: several species of *Homo* and *Australopithecus* lived at the same time, and the others did not "turn into" us. Modern apes did not become humans — apes and humans share a common ancestor that lived millions of years ago, which is a different statement.
]

// ============================================================================
// SECTION 4.6 — CHECKLIST
// ============================================================================
== 4.6 Chapter 4 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define evolution, natural selection and speciation;
  + state three things the fossil record shows, and name one transitional fossil;
  + distinguish homologous, analogous and vestigial structures with an example of each;
  + name three other lines of evidence for evolution;
  + list the five steps of natural selection in order;
  + apply natural selection to antibiotic resistance or the peppered moth;
  + give two differences between Lamarck's and Darwin's explanations;
  + explain the three steps by which a new species can form;
  + describe three trends in the human fossil record.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Evolution is a change in the inherited characteristics of a population over generations, and natural selection is the mechanism: variation, competition, selection, inheritance, change. The evidence is the fossil record with its transitional forms, homologous structures that show common ancestry, vestigial organs that no longer work, embryos that resemble each other and proteins that are almost the same. Isolation plus divergence plus reproductive isolation gives a new species.
  ]
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: evolution, natural selection, the evidence and speciation.", width: 100%)

// ============================================================================
// SECTION 4.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 4.7 Chapter 4 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The wings of a bat and the wings of a bird are], [analogous structures], [homologous structures], [vestigial structures], [identical structures])
#mcq(2, [The appendix in humans is an example of], [a homologous organ], [a vestigial organ], [an analogous organ], [an acquired characteristic])
#mcq(3, [Lamarck's theory of evolution was rejected because], [he could not explain variation], [acquired characteristics are not inherited], [he did not study fossils], [he believed in natural selection])
#mcq(4, [A new species is most likely to arise when populations are], [interbreeding freely], [geographically isolated], [in the same habitat], [of the same size])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [both are forelimbs built on the same bone plan — humerus, radius and ulna, carpals, digits — so they are homologous; a bat wing and an insect wing would be the analogous pair.]),
  ("B", [the appendix is a reduced structure; it had a digestive function in an ancestor and no longer does.]),
  ("B", [characteristics acquired during an organism's life are not passed to its offspring.]),
  ("B", [isolation stops gene flow, so the separated populations diverge until they can no longer interbreed.]),
))

#include "drill_ch04.typ"
