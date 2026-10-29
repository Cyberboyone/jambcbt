#import "template.typ": *

#current-chapter.update("Chapter 4: Reproduction in Plants")
#pagebreak()

#chapter-opener(
  4,
  "Reproduction in Plants",
  subtitle: "The Flower, Pollination, Fertilisation, the Seed and the Fruit, Dispersal, and Germination",
  syllabus-ref: "Sec. B • Topic 4",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Label a complete flower in longitudinal section and state the function of each part.",
    "Distinguish pollination from fertilisation and say where each takes place.",
    "Compare wind-pollinated and insect-pollinated flowers in at least four features.",
    "Describe the growth of the pollen tube and the double fusion that follows.",
    "Explain what happens to the ovule, ovary and other parts after fertilisation.",
    "Name the methods of seed and fruit dispersal and give the adaptation for each.",
    "Describe the conditions needed for germination and the changes that follow it.",
  ),
  hotspots: (
    "\"The transfer of pollen from the anther to the stigma is called …\" — pollination. If the question says *fusion of gametes*, the answer is fertilisation.",
    "\"The part of the flower that becomes the fruit is the …\" — the ovary; the ovule becomes the seed.",
    "\"Which flower is wind-pollinated?\" — look for dull colour, no scent, no nectar and large feathery stigmas.",
    "\"The first part of the seed to emerge during germination is the …\" — the radicle.",
    "\"A seed dispersed by wind has …\" — wings, hairs or a parachute, and it is light.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Using *pollination* and *fertilisation* as if they were the same thing — pollination is the transfer of pollen, fertilisation is the fusion of gametes, and one can happen without the other. (2) Saying the *ovary* becomes the seed: the ovary becomes the *fruit* and the *ovule* becomes the seed. (3) Writing that a wind-pollinated flower is brightly coloured because that attracts wind — colour attracts *insects*; wind-pollinated flowers are dull.",
)

// ============================================================================
// SECTION 4.1
// ============================================================================
== 4.1 Why a Flower Is a Reproductive Organ

A flower is a shoot modified for reproduction. Every part of it has one of three jobs: *protect* the bud, *attract* a pollinator, or *produce gametes*. Read the diagram with those three jobs in mind and the labels stop being a random list.

#diagram-fig("diagrams/ch04_flower.svg",
  "A complete flower in longitudinal section. Sepals protect the bud; petals attract pollinators; the stamen is the male part and the carpel the female part.")

#table(
  columns: (1.1fr, 1.15fr, 2.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Also called],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
  ),

  [*Receptacle*], [—], [The swollen end of the stalk on which all the floral parts are borne],
  [*Sepals*], [Calyx], [Protect the flower bud before it opens; usually green and leaf-like],
  [*Petals*], [Corolla], [Coloured and scented to attract insects and other pollinators; also protect the stamens and carpel],
  [*Stamen*], [Androecium — male], [The male organ: the *anther* produces pollen grains, held on the *filament*],
  [*Carpel (pistil)*], [Gynoecium — female], [The female organ: *stigma* receives pollen, *style* carries the pollen tube, *ovary* contains the *ovules*],
  [*Ovule*], [—], [Contains the egg cell (female gamete) and becomes the seed after fertilisation],
)

#shortcut-box("Stamen or carpel? Count the parts")[
  *Stamen* = 2 parts (anther + filament) and produces *pollen*. \
  *Carpel* = 3 parts (stigma + style + ovary) and produces *ovules*. \
  If the exam diagram labels a structure that holds tiny grains, it is an anther; if it encloses tiny round bodies, it is an ovary.
]

#concept-box("Complete and incomplete flowers")[
  A *complete* (bisexual) flower has both stamens and carpels, as well as sepals and petals — hibiscus, maize, mango. \
  An *incomplete* (unisexual) flower has only one set: the maize plant carries male tassels and female cobs on the same plant, and the paw-paw carries male and female flowers on separate plants.
]

// ============================================================================
// SECTION 4.2
// ============================================================================
== 4.2 Pollination

*Pollination* is the transfer of pollen grains from the anther of a flower to the stigma of a flower of the same kind.

#table(
  columns: (1.5fr, 2.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),

  [*Self-pollination*], [Pollen is transferred to the stigma of the same flower, or to another flower on the same plant],
  [*Cross-pollination*], [Pollen is transferred to the stigma of a flower on a *different* plant of the same species],
)

#diagram-fig("diagrams/ch04_pollination.svg",
  "The four agents of pollination, with the flower adaptations that go with each. Wind and insect pollination are the two the examiner tests.")

#table(
  columns: (1.35fr, 1.45fr, 1.45fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Wind-pollinated (maize, grass)],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Insect-pollinated (hibiscus, mango)],
  ),

  [Petals], [Small, dull green or absent], [Large, brightly coloured],
  [Scent and nectar], [Absent], [Present — the reward that brings the insect],
  [Pollen], [Large quantities, small, light, dry, dusty], [Smaller quantities, large, sticky, spiky],
  [Stigma], [Large and feathery, hanging outside the flower to catch pollen], [Small and sticky, inside the flower],
  [Anthers], [Large, hanging outside the flower], [Inside the flower, where the insect brushes them],
  [Number of ovules], [Usually one per ovary (maize has one grain per cob position)], [Many per ovary (a paw-paw has hundreds of seeds)],
)

#trap-box("Pollination is not fertilisation")[
  *Pollination* is the transfer of pollen to a stigma — it happens *outside* the ovule. *Fertilisation* is the fusion of the male gamete with the egg inside the ovule — it happens *inside* the ovary, days after pollination. A flower can be pollinated and never fertilised (pollen from the wrong species, or a dry spell), which is why a farmer may see flowers fall without fruit setting.
]

// ============================================================================
// SECTION 4.3
// ============================================================================
== 4.3 Fertilisation

Once a pollen grain lands on a compatible stigma, it grows a *pollen tube*. The tube digests its way down through the style and into the ovary, and the male gamete travels down the tube. When the tube reaches the ovule, the male nucleus fuses with the egg nucleus — *fertilisation*.

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[Fertilisation in six steps]
]

+ A pollen grain lands on the *stigma* and germinates.
+ A *pollen tube* grows down through the *style*.
+ The tube enters the *ovary* and reaches the *ovule* through the micropyle.
+ The male gamete passes down the tube and fuses with the *egg cell* inside the ovule.
+ This fusion produces the *zygote*, which divides to form the embryo.
+ The ovule becomes the seed and the ovary becomes the fruit.

#concept-box("Double fertilisation — an extension worth knowing")[
  In flowering plants a second fusion usually takes place: a second male gamete fuses with two polar nuclei to form the *endosperm*, the food store of the seed. That is why a maize grain has a large endosperm, while a bean stores its food in the cotyledons instead.
]

// ============================================================================
// SECTION 4.4
// ============================================================================
== 4.4 From Flower to Fruit

After fertilisation the flower changes quickly. The petals wither and fall, the stamens and stigma dry up, and the ovary swells to become the fruit. Every part has a fate, and the exam asks for the pairs.

#table(
  columns: (1.35fr, 1.35fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Before fertilisation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[After fertilisation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example in the tomato],
  ),

  [Ovule], [Seed], [The pips inside the tomato],
  [Ovary wall], [Fruit wall (pericarp)], [The fleshy red part],
  [Ovary], [Fruit], [The whole tomato],
  [Zygote], [Embryo of the seed], [The tiny plant inside a pip],
  [Integuments of the ovule], [Testa (seed coat)], [The skin of the pip],
  [Petal, stamen, stigma], [Wither and fall off], [The dry remains at the top of the fruit],
)

#trap-box("Ovary → fruit; ovule → seed")[
  The commonest error in this chapter is writing that the *ovary becomes the seed*. Learn the pair as one sentence: *the ovule becomes the seed and the ovary becomes the fruit that protects it.* A tomato is one ovary with many ovules; a mango is one ovary with one seed.
]

#worked-example(
  1,
  "Which part is which?",
  tier: "FOUNDATION",
  [A paw-paw flower is pollinated but the farmer notices that no fruit forms. Give two possible reasons and state which part of the flower would have had to change for a fruit to form.],
  [
    *Reason 1:* the pollen may have come from a different species, so the pollen tube could not grow — *incompatibility*. \
    *Reason 2:* the weather may have been too dry or too cold for the pollen tube to grow, or the pollinating insects may not have visited.

    *For a fruit to form*, fertilisation must take place and the *ovary* must then develop. No fertilisation means the ovary simply withers and drops, and the flower falls without fruit.

    *Model answer:* pollinated but not fertilised; the ovary would have become the fruit only after fertilisation of the ovules inside it.
  ],
)

// ============================================================================
// SECTION 4.5
// ============================================================================
== 4.5 Fruit and Seed Dispersal

A seed that falls at the foot of its parent competes with it for light, water and minerals. Dispersal moves the seed away, and each mechanism has a matching set of adaptations.

#table(
  columns: (1.15fr, 2.0fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Agent],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Adaptation of the fruit or seed],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [*Wind*], [Light; wings, hairs or a parachute; small and dry], [Dandelion, silk-cotton, *Tridax*, mahogany with its winged fruit],
  [*Water*], [Light and waterproof; fibrous husk enclosing air spaces so it floats], [Coconut, water lily],
  [*Animals*], [Fleshy, brightly coloured, scented and nutritious so the animal eats it and passes the seed; or hooked spines that grip fur], [Mango, guava; *Bidens* and *Desmodium* with hooks],
  [*Explosion*], [The pod dries and bursts, throwing the seeds away from the parent], [*Flamboyant* (Delonix), castor oil plant, *Bauhinia*],
  [*Self-dispersal by the plant*], [The fruit bends as it dries, then straightens sharply, flicking the seed], [*Pachira*, okra to some extent],
)

#shortcut-box("Match the adaptation to the agent")[
  Wings, hairs, parachutes → *wind*. Air spaces and waterproof coats → *water*. Flesh, colour, sugar, hooks → *animals*. A dry pod that splits explosively → *explosion*. In a diagram question the adaptation names the agent before you read the question.
]

// ============================================================================
// SECTION 4.6
// ============================================================================
== 4.6 The Seed and Germination

#diagram-fig("diagrams/ch04_seed.svg",
  "A bean seed in longitudinal section. The testa protects the seed; the cotyledon stores food; the plumule is the young shoot and the radicle the young root; water enters through the micropyle.")

#table(
  columns: (1.35fr, 2.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Part of the seed],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
  ),

  [Testa (seed coat)], [Tough outer coat that protects the embryo and controls when water can enter],
  [Micropyle], [Small pore through which water is absorbed at the start of germination],
  [Cotyledon(s)], [Stores food — starch, protein and oil — for the germinating seedling; in a bean it also becomes the first green leaves],
  [Plumule], [The young shoot, which grows upward and produces the first foliage leaves],
  [Radicle], [The young root, which emerges first and anchors the seedling while it absorbs water],
  [Endosperm (in cereals)], [The food store of a maize or rice grain, separate from the single cotyledon],
)

#concept-box("The three conditions for germination")[
  *Water* — softens the testa and activates the enzymes that digest the stored food. \
  *Oxygen* — needed for aerobic respiration to release the energy for growth. \
  *Suitable temperature* — the enzymes work only within a narrow range; most seeds germinate best between about 20 °C and 30 °C. \
  *Light is not needed* for germination itself, which is why seeds germinate in the dark soil — but the seedling needs light as soon as it turns green.
]

#worked-example(
  2,
  "Designing a germination experiment",
  tier: "UTME STANDARD",
  [A student claims that light is necessary for germination. Describe an experiment to test the claim, stating the variable changed, the variables kept constant and one control.],
  [
    - *Hypothesis:* light is not necessary for germination.
    - *Method:* place equal numbers of healthy bean seeds on moist cotton wool in two dishes. Put one dish in a dark cupboard and the other on a bench in daylight. Keep everything else the same.
    - *Variable changed:* light (present / absent).
    - *Kept constant:* number and type of seeds, amount of water, temperature, oxygen supply.
    - *Control:* the dish in the light; the comparison shows whether light made any difference.
    - *Expected result:* seeds germinate in both dishes, so light is *not* required for germination.

    *Note the examiner's requirement:* one variable changed, all others controlled, and a named control. A description with two things changed at once earns nothing.
  ],
)

// ============================================================================
// SECTION 4.7
// ============================================================================
== 4.7 Asexual Reproduction in Plants

Plants can also reproduce without seeds, and gardeners use this deliberately because the offspring are identical to the parent.

#table(
  columns: (1.35fr, 2.0fr, 1.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [*Runners (stolons)*], [A horizontal stem runs along the ground and roots at intervals], [Sweet potato, lawn grass],
  [*Rhizomes*], [An underground stem thickens and sends up new shoots], [Ginger, cocoyam, *Imperata*],
  [*Suckers*], [New shoots grow from the base of the parent], [Banana, plantain, paw-paw],
  [*Bulbs*], [Fleshy underground buds with stored food], [Onion, garlic],
  [*Corms*], [Swollen underground stem base], [Cocoyam],
  [*Tubers*], [Swollen underground stem with buds ('eyes')], [Irish potato],
  [*Cuttings*], [A piece of stem is planted and roots], [Cassava, sugar cane, hibiscus],
)

// ============================================================================
// SECTION 4.8 — CHECKLIST
// ============================================================================
== 4.8 Chapter 4 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + label a complete flower and give the function of the receptacle, sepals, petals, stamen, carpel and ovule;
  + define pollination and distinguish self- from cross-pollination;
  + compare wind- and insect-pollinated flowers in at least four features;
  + describe the growth of the pollen tube and the fusion that follows;
  + state what the ovule, ovary, zygote and integuments become after fertilisation;
  + explain the meaning of double fertilisation;
  + name four agents of dispersal and give the adaptation for each;
  + label the parts of a bean seed and state the function of each;
  + state the three conditions needed for germination and design a controlled experiment to test one of them;
  + name five methods of asexual reproduction in plants with one example of each.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The anther makes pollen and the ovary holds ovules; pollination carries the pollen to the stigma; the pollen tube carries the male gamete to the egg; and fertilisation turns the ovule into a seed and the ovary into a fruit that is built to carry that seed away.
  ]
]

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the flower, pollination, fertilisation and dispersal.", width: 100%)

// ============================================================================
// SECTION 4.9 — TWO-MINUTE SET
// ============================================================================
== 4.9 Chapter 4 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [The transfer of pollen from the anther to the stigma of a flower is called], [fertilisation], [pollination], [germination], [dispersal])
#mcq(2, [After fertilisation, the ovule becomes the], [fruit], [seed], [zygote], [endosperm])
#mcq(3, [A flower with large, brightly coloured petals, scent and nectar is most likely pollinated by], [wind], [water], [insects], [gravity])
#mcq(4, [The first part of a germinating bean seed to emerge is the], [plumule], [radicle], [cotyledon], [testa])

#answer-key-grid(("B", "B", "C", "B"))
]
