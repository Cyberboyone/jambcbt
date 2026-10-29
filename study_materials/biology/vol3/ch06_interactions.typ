#import "template.typ": *

#current-chapter.update("Chapter 6: Interactions, Food Webs and Energy Flow")
#pagebreak()

#chapter-opener(
  6,
  "Interactions, Food Webs and Energy Flow",
  subtitle: "Food Chains and Trophic Levels, Food Webs and Stability, the Three Ecological Pyramids, the Ten Per Cent Law, Mutualism, Commensalism, Parasitism and Predator–Prey Cycles",
  syllabus-ref: "Sec. C • Topic 6",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define producer, consumer, decomposer and trophic level, and build a five-link food chain.",
    "Explain why a food web is more stable than a food chain.",
    "Distinguish the pyramids of numbers, biomass and energy, and say which one can invert.",
    "Apply the ten per cent law to a simple calculation of energy or biomass.",
    "Distinguish mutualism, commensalism, parasitism and predation with a named example of each.",
    "Describe a predator–prey cycle and explain why the two populations peak out of step.",
  ),
  hotspots: (
    "\\\"The arrows in a food chain show …\\\" — the direction of energy flow, from the food to the feeder.",
    "\\\"A pyramid of … can invert\\\" — numbers, and biomass briefly; a pyramid of *energy* never does.",
    "\\\"If the producers contain 100 000 kJ, the secondary consumers contain …\\\" — about 1000 kJ, two tenths.",
    "\\\"Rhizobium and a legume\\\" — mutualism. \\\"A remora and a shark\\\" — commensalism. \\\"Plasmodium and a human\\\" — parasitism.",
    "\\\"Decomposers are important because …\\\" — they release minerals back to the soil, so matter is recycled.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Reading an arrow backwards: in a food chain the arrow runs *from* the food *to* the feeder, because it shows where the energy goes. (2) Claiming that energy is recycled: it is not — matter cycles, energy flows through once and leaves as heat, which is exactly why a pyramid of energy cannot invert. (3) Calling any relationship in which one organism gains a \\\"parasitism\\\": in parasitism the host is harmed; in commensalism the second organism is unaffected.",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 Food Chains and Trophic Levels

A *food chain* is a sequence of organisms in which each one feeds on the one before it. It always begins with a *producer* — a green plant or an alga that makes its own food by photosynthesis — because a chain of animals cannot start without a source of new energy.

Every position in the chain is a *trophic level*:

#concept-box("The names of the links")[
  *First trophic level* — the producer: grass, a mango tree, phytoplankton. \
  *Second trophic level* — the primary consumer, a herbivore: grasshopper, goat, zooplankton. \
  *Third trophic level* — the secondary consumer, a carnivore that eats herbivores: lizard, fish. \
  *Fourth trophic level* — the tertiary consumer, a top carnivore: snake, hawk, shark. \
  *Decomposers* — bacteria and fungi, which sit *outside* the chain and feed on every level at once.
]

#diagram-fig("diagrams/ch06_foodweb.svg",
  "A food web in a savanna: arrows run from the food to the feeder, so the arrow points in the direction the energy travels. Decomposers sit outside the grazing chains and return minerals to the soil.")

*Decomposers* deserve their own sentence because they close the loop. They break down dead bodies, fallen leaves and dung, releasing carbon dioxide to the air and mineral salts to the soil — which is why a habitat without decomposers would starve within a few years, however much dead matter it contained.

#trap-box("The arrow is the energy, not the eating")[
  Students write \\\"grasshopper → grass\\\" because the grasshopper eats the grass. That is backwards. The arrow runs from the organism that is eaten *to* the organism that eats it, because it shows the direction in which energy moves. When a question asks \\\"which way do the arrows point\\\", the answer is always \\\"from the food to the feeder\\\".
]

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 Food Webs and Why They Are More Stable

Several food chains interlock in any real habitat, and the whole set is a *food web*. A savanna web has three or four producers, several herbivores and two or three top predators, and most species appear in more than one chain.

The stability that follows is easy to state: *the more links a web has, the less damage the loss of any one species does*. If the mice disappear from the web above, the hawk switches to lizards and the owls take more insects; the predator does not automatically starve. Remove a node from a simple chain, by contrast, and every link above it dies out.

#concept-box("Why chains are short")[
  Only about a tenth of the energy at one level reaches the next, so the fourth or fifth link has so little energy left that it cannot support a viable population. Most food chains in nature have four or five links, and the number is a direct consequence of the ten per cent law in section 6.3.
]

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 Energy Flow and the Three Pyramids

Energy enters an ecosystem as *sunlight*, is captured by producers in *photosynthesis*, and is passed along the chain as chemical energy in food. At every transfer most of it is lost:

+ as *heat* from respiration;
+ in *movement*, and in keeping warm;
+ in *waste* products — urine, dung and shed parts;
+ in the parts of the food that are *not eaten* or not digested.

The *ten per cent law* states the net result: only about 10 % of the energy in one trophic level is transferred to the next. An *ecological pyramid* draws this as a stack of bars, one per trophic level, and it can show numbers, biomass or energy.

#diagram-fig("diagrams/ch06_pyramids.svg",
  "Three pyramids. The pyramid of numbers can invert — one tree can carry thousands of insects; the pyramid of biomass can invert briefly, as when spring plankton are eaten faster than they multiply; the pyramid of energy never inverts, because energy is lost at every step.")

#table(
  columns: (1.25fr, 1.85fr, 1.45fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pyramid],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the bars measure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Can it invert?],
  ),

  [*Pyramid of numbers*], [the number of individuals at each level], [*Yes* — one oak tree, thousands of aphids, hundreds of ladybirds],
  [*Pyramid of biomass*], [the total mass of living tissue at each level], [*Briefly* — plankton are eaten as fast as they multiply in spring],
  [*Pyramid of energy*], [the energy passing through each level in a year], [*Never* — energy is lost as heat at every transfer],
)

#worked-example(
  1,
  "The ten per cent law in figures",
  tier: "UTME STANDARD",
  [In a grassland food chain the producers store 200 000 kJ of energy per square metre per year. Calculate the energy available to the primary consumers, to the secondary consumers and to the tertiary consumers, and state how much of the original energy is lost by the time the tertiary consumers feed.],
  [
    *Primary consumers* — one tenth of 200 000 kJ = *20 000 kJ*.

    *Secondary consumers* — one tenth of 20 000 kJ = *2000 kJ*.

    *Tertiary consumers* — one tenth of 2000 kJ = *200 kJ*.

    *Energy lost altogether* — 200 000 − 200 = *199 800 kJ*, which is 99.9 % of the original. The top carnivore is living on a thousandth of what the grass captured, which is exactly why a chain cannot go on for ever.

    *Exam wording:* write the loss as \\\"lost as heat during respiration, in movement and in waste\\\", not simply \\\"lost\\\". The mark is for *how* it is lost.
  ],
)

#shortcut-box("Energy or matter? Say which")[
  *Energy flows* — it enters as sunlight, passes along the chain and leaves as heat; it is never recycled. \
  *Matter cycles* — carbon, nitrogen, oxygen and mineral salts are used again and again, which is why decomposers matter. \
  A question containing the word \\\"recycled\\\" is about matter. A question containing \\\"lost\\\" is about energy.
]

// ============================================================================
// SECTION 6.4
// ============================================================================
== 6.4 Interactions Between Species

Species in a community interact in four ways that the syllabus names, and the sign convention (+, −, 0) makes them easy to keep apart: a plus means the organism benefits, a minus means it is harmed, and a zero means it is unaffected.

#diagram-fig("diagrams/ch06_symbiosis.svg",
  "The four interactions, with a Nigerian or textbook example of each. Competition is the fifth: two species needing the same resource, from which neither benefits.")

#table(
  columns: (1.25fr, 1.1fr, 1.95fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Interaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Signs],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [*Mutualism*], [(+, +)], [both species benefit, and often neither can survive alone], [Rhizobium in the root nodules of a legume; alga and fungus in a lichen],
  [*Commensalism*], [(+, 0)], [one benefits, the other is neither helped nor harmed], [a remora fish rides on a shark and eats its scraps; an epiphyte on a tree branch],
  [*Parasitism*], [(+, −)], [one lives on or in the other and feeds on it, harming it], [Plasmodium in a human; mistletoe on a cocoa tree; tapeworm in the gut],
  [*Predation*], [(+, −)], [one kills and eats the other], [a hawk takes mice; a praying mantis takes grasshoppers],
  [*Competition*], [(−, −)], [two species need the same limited resource], [two species of finch eating the same seeds],
)

#trap-box("Is the host killed? That is the question")[
  A *parasite* lives on or in its host and takes food from it, usually without killing it immediately — a good parasite does not destroy its own habitat. A *predator* kills its prey and eats it whole or in pieces. A tapeworm is a parasite; a hawk is a predator. A remora that benefits while the shark is unaffected is neither: it is a commensal.
]

// ============================================================================
// SECTION 6.5
// ============================================================================
== 6.5 Predator–Prey Cycles and Biological Control

Predator and prey populations rise and fall together, but out of step: the prey peaks first and the predator peaks a little later, because the predator needs time to convert the extra food into more offspring. When predators become too numerous the prey falls, and the predators then starve back — and the cycle repeats.

#concept-box("Biological control")[
  *Biological control* is the introduction of a natural predator, parasite or pathogen to control a pest instead of a chemical pesticide. Its advantages are that it does not pollute, it costs less to maintain and the pest is unlikely to become resistant. Its risks are that the control organism may attack a non-target species, may itself become a pest, or may simply leave when the pest becomes scarce. The examiner wants one advantage and one risk, and the second is the one candidates forget.
]

#shortcut-box("The five-mark answer on energy flow")[
  Sunlight → producers (photosynthesis) → consumers, with about 10 % transferred at each step. \
  Lost as heat in respiration, in movement, and in undigested waste. \
  Therefore chains are short, and a pyramid of energy always tapers.
]

// ============================================================================
// SECTION 6.6 — CHECKLIST
// ============================================================================
== 6.6 Chapter 6 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + define producer, consumer, decomposer and trophic level;
  + build a five-link food chain and label every trophic level;
  + explain why the arrows run from the food to the feeder;
  + explain why a food web is more stable than a food chain;
  + distinguish the three pyramids and say which one can invert, and why;
  + apply the ten per cent law to a simple calculation;
  + state three ways in which energy is lost between trophic levels;
  + distinguish mutualism, commensalism, parasitism, predation and competition with an example of each;
  + describe a predator–prey cycle and explain the time lag;
  + give one advantage and one risk of biological control.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A food chain runs from producer to top consumer, with the arrow pointing from the food to the feeder because it shows the direction of energy flow. Food webs join several chains and are therefore more stable. Energy enters as sunlight, only about a tenth passes to the next level — the rest is lost as heat, movement and waste — so chains are short and a pyramid of energy never inverts, though the pyramids of numbers and biomass sometimes do. Species interact as mutualists (+, +), commensals (+, 0), parasites or predators (+, −), or competitors (−, −).
  ]
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: food chain, food web, energy and interactions.", width: 100%)

// ============================================================================
// SECTION 6.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 6.7 Chapter 6 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [In a food chain, the arrow points from the food to the feeder because it shows], [which organism is the larger], [the direction of energy flow], [the direction in which decay happens], [which organism is more important])
#mcq(2, [A pyramid of energy never inverts because], [energy is created at each trophic level], [producers are always the largest organisms], [consumers are always fewer than producers in every habitat], [energy is lost as heat at every trophic level])
#mcq(3, [A relationship in which both organisms benefit is called], [mutualism], [commensalism], [parasitism], [predation])
#mcq(4, [Rhizobium bacteria in the root nodules of a legume and the legume itself have a relationship of], [parasitism], [commensalism], [mutualism], [competition])

#answer-key-grid(("B", "D", "A", "C"))

#answer-notes((
  ("B", [the arrow shows the transfer of energy, so it runs from the organism eaten to the organism that eats it.]),
  ("D", [only about a tenth of the energy passes on; the rest is lost as heat in respiration, in movement and in waste, so each higher level must be smaller.]),
  ("A", [mutualism is (+ , +): both species gain, as the bacterium gains sugars and the legume gains nitrate.]),
  ("C", [both benefit: the bacterium fixes nitrogen for the plant, and the plant supplies the bacterium with sugars and shelter.]),
))

#include "drill_ch06.typ"
