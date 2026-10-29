#import "template.typ": *

#current-chapter.update("Chapter 5: Ecology, Populations and Sampling")
#pagebreak()

#chapter-opener(
  5,
  "Ecology, Populations and Sampling",
  subtitle: "The Levels of Ecology, Abiotic and Biotic Factors, Habitats and Niches, Populations and Their Growth, Quadrats, Transects and Capture–Recapture",
  syllabus-ref: "Sec. C • Topic 5",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Arrange the levels of ecology from organism to biosphere, and place a named example at each level.",
    "Distinguish habitat, niche and environment, and give one example of each.",
    "List the abiotic factors that limit a population and explain how one of them acts.",
    "Define population, population size and population density, and state what changes them.",
    "Describe the sigmoid growth curve and the meaning of carrying capacity.",
    "Estimate a population with a quadrat, a transect and the capture–recapture formula, and state the assumptions of each method.",
  ),
  hotspots: (
    "\\\"The place where an organism lives is its …\\\" — habitat. \\\"The role it plays there is its …\\\" — niche.",
    "\\\"N = (M × C) ÷ R\\\" — the capture–recapture formula, rearranged to find R or C almost as often as N.",
    "\\\"A quadrat is used to estimate the population of …\\\" — plants, and slow-moving animals such as snails.",
    "\\\"The maximum population an environment can support is its …\\\" — carrying capacity.",
    "\\\"Two species cannot occupy the same niche for long\\\" — competitive exclusion.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Mixing up habitat and niche: the habitat is the *address*, the niche is the *job* — a question that gives you \\\"what it eats and where it hides\\\" is asking for the niche. (2) Calling a quadrat suitable for counting fish or birds: quadrats work for plants and slow animals, capture–recapture works for mobile animals, transects show how a habitat *changes* along a line. (3) Forgetting that capture–recapture assumes no births, deaths, immigration or emigration between the two samples — say it, and you earn the mark for assumptions.",
)

// ============================================================================
// SECTION 5.1
// ============================================================================
== 5.1 The Levels of Ecology

*Ecology* is the study of the relationships between living organisms and their environment — with each other and with the non-living surroundings. It is studied at six levels, and each level is built from the one before it.

#diagram-fig("diagrams/ch05_ecosystem.svg",
  "The ecosystem as one system: energy enters as sunlight, passes through producers and consumers, and leaves as heat, while matter is recycled through decomposers and the soil.")

#concept-box("The six levels, smallest to largest")[
  *Organism* — one individual living thing. \
  *Population* — all the organisms of one species in one place at one time. \
  *Community* — all the populations of different species living and interacting in one place. \
  *Ecosystem* — the community plus the non-living environment, working as one system. \
  *Biome* — a large region with a characteristic climate and community, such as tropical rainforest or savanna. \
  *Biosphere* — all the ecosystems of the Earth taken together.
]

Three words are tested more often than the rest, and they are not the same thing.

#table(
  columns: (1.15fr, 1.7fr, 2.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Word],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example in a Nigerian pond],
  ),

  [*Habitat*], [the place where an organism lives — its *address*], [the muddy bottom of the pond, where the catfish rests by day],
  [*Niche*], [everything the organism does there: what it eats, when it feeds, where it shelters and breeds — its *job*], [the catfish feeds on snails and smaller fish at night, shelters in the mud by day and breeds in the shallows],
  [*Environment*], [all the conditions, living and non-living, that surround the organism], [the warm, silty, oxygen-poor water of the pond plus the plants and animals in it],
)

#trap-box("Habitat is the address; niche is the job")[
  A question that says \\\"two species live in the same habitat\\\" is telling you they share an address — that is allowed. A question that says \\\"they share the same niche\\\" is telling you they do the same job at the same time, and *that* cannot last: one will out-compete the other. This is *competitive exclusion*, and it is the reason two species that look identical in every way do not live side by side for long.
]

// ============================================================================
// SECTION 5.2
// ============================================================================
== 5.2 Abiotic and Biotic Factors

The environment is divided into two sets of factors, and examiners like a list of each with the *effect* named.

*Abiotic (physical) factors* are non-living: light, temperature, water and humidity, soil type and pH, salinity, oxygen dissolved in water, wind, and the mineral content of the soil. Each acts as a *limiting factor* — the one factor in shortest supply decides how large the population can become, in the same way that the shortest plank decides the height of a barrel.

*Biotic factors* are living: food supply, predators, parasites and disease, competitors of the same or another species, and mates.

#table(
  columns: (1.3fr, 2.1fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it limits life],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Adaptation it selects for],
  ),

  [Light], [sets the depth at which green plants can photosynthesise], [broad floating leaves in water lilies; small leaves in desert shrubs],
  [Temperature], [sets the rate of enzyme activity and water loss], [thick bark and waxy leaves in the savanna; dormancy in the dry season],
  [Water], [needed for photosynthesis and transport; scarcity limits growth], [deep tap roots; succulent stems that store water],
  [Soil and pH], [supplies minerals and anchorage; waterlogged soil has no oxygen], [mangrove roots that breathe above the mud; acid-tolerant plants in mangrove swamps],
  [Salinity], [too much salt draws water out of the cells], [salt glands in mangrove leaves; osmoregulation in estuarine fish],
  [Predation and disease], [removes individuals from the population], [camouflage, warning colouration, spines, herd behaviour],
)

#concept-box("Adaptation, not adjustment")[
  A feature that lets an organism survive a factor is an *adaptation* when it is inherited, and it has arisen by natural selection over many generations. It is *not* an adaptation when the organism simply adjusts during its own life — a plant that wilts in the afternoon has not adapted to drought, it has run short of water. The chapter 3 wording holds here too: adaptations are inherited, acclimatisation is temporary.
]

// ============================================================================
// SECTION 5.3
// ============================================================================
== 5.3 Populations and How They Change

A *population* is all the organisms of one species living in the same place at the same time. Its *size* is the number of individuals in it; its *density* is that number divided by the area or volume it occupies. Two populations of the same size can have very different densities — fifty locusts in a hectare and fifty in a square metre are not the same problem.

The size of a population changes for exactly four reasons, and they are best remembered as two that add and two that subtract:

+ *Natality* (births) and *immigration* (individuals arriving) increase the population.
+ *Mortality* (deaths) and *emigration* (individuals leaving) decrease it.

#concept-box("The sigmoid growth curve")[
  A population introduced into a new habitat with plenty of food and no predators grows *slowly at first* (the lag phase, while numbers are small), then *rapidly* (the exponential or log phase), then *more slowly* (the deceleration phase) as resources run short, until it *levels off* at the *carrying capacity* of the habitat. \
  Drawn as a graph it is an S-shape — a *sigmoid* curve. The flat top is the carrying capacity, K: the largest population the habitat can support in the long term. If numbers overshoot K they fall back sharply — a *crash* — because disease and starvation spread faster in a crowded population.
]

#trap-box("Growth rate is not population size")[
  A question may give you the *rate* of increase and ask when the population is largest: the answer is not where the curve is steepest. The steepest part of the sigmoid curve is where the *rate* is greatest; the *size* is greatest at the flat top. Read which of the two the question asks for before you answer.
]

// ============================================================================
// SECTION 5.4
// ============================================================================
== 5.4 Communities, Competition and Ecological Niches

In a community, every species is under pressure from the others. Three interactions do most of the work in exam questions, and the fourth, *symbiosis*, is developed in chapter 6.

+ *Competition* — two species need the same limited resource. If their niches overlap completely, one excludes the other; if they overlap only partly, both survive by using the resource differently, which is why birds that feed on the same tree take insects from different heights.
+ *Predation* — one species eats another. Predator and prey populations rise and fall out of step with each other, because each is the other's limiting factor.
+ *Parasitism and disease* — an organism lives on or in a host and takes food from it, usually without killing it at once.

#concept-box("Why a food web is more stable than a food chain")[
  In a food chain each link has one supplier. In a food web the same consumer can eat several species, so if one prey disappears the predator can switch to another and the whole community does not collapse. Diversity is stability: the more links a web has, the less damage the loss of any one node does.
]

// ============================================================================
// SECTION 5.5
// ============================================================================
== 5.5 Estimating Population Size

You cannot count every organism in a habitat, so ecologists estimate. Three methods cover the syllabus, and each has its own habitat.

#diagram-fig("diagrams/ch05_sampling.svg",
  "The three sampling methods: a quadrat thrown at random for plants, a transect laid along a habitat that changes, and capture–recapture for animals that move.")

*The quadrat.* A square frame of known area — usually 0.5 m × 0.5 m, which is 0.25 m² — is thrown at random several times. Count the species in each quadrat, take the mean count per quadrat, and multiply by the number of quadrats that would fit in the whole area:

#align(center)[
  #text(size: 10.4pt, weight: "bold")[Estimated population = mean count per quadrat × (total area ÷ area of one quadrat)]
]

Random placing matters: thrown where the sampler *thinks* the plants are thickest, the estimate is biased upwards. A quadrat is used for plants, and for animals that move so little they can be counted inside the frame — barnacles, snails, grass.

*The transect.* A tape is laid across the habitat and the organisms are recorded at intervals along it — or a quadrat is placed at each interval (a *belt transect*). A transect does not estimate the total population; it shows how the community *changes* along a line, from the water's edge inland, or from the shade of a tree into open ground.

*Capture–recapture.* Animals are caught, marked harmlessly, released, and a second sample is caught later. The proportion marked in the second sample should equal the proportion marked in the whole population:

#align(center)[
  #text(size: 10.4pt, weight: "bold")[Estimated population N = (M × C) ÷ R]
]

where *M* is the number first caught and marked, *C* the number caught in the second sample, and *R* the number of marked animals in that second sample.

#worked-example(
  1,
  "Capture–recapture, twice over",
  tier: "UTME STANDARD",
  [A biologist catches 40 grasshoppers in a meadow, marks them, and releases them. Two days later she catches 60 grasshoppers, of which 12 are marked. (a) Estimate the population. (b) A second estimate the following month uses the same 60-animal second sample but finds only 8 marked animals. What does the change suggest?],
  [
    *(a)* Write the formula and substitute. \
    #text(size: 10.2pt)[N = (M × C) ÷ R = (40 × 60) ÷ 12 = 2400 ÷ 12 = *200 grasshoppers*.]

    *(b)* With R = 8, N = (40 × 60) ÷ 8 = *300*. Fewer marked animals in the same-sized second sample means marked animals are now a smaller fraction of the population — the population has grown, or marked animals have died or moved away.

    *State the assumptions when asked:* no births or deaths between the samples; no immigration or emigration; marking does not make an animal more likely to be caught or eaten; marks do not come off; and marked animals mix fully with unmarked ones. If any assumption fails, the estimate is wrong — and an examiner will give a mark for naming one.
  ],
)

#worked-example(
  2,
  "A quadrat estimate in a school field",
  tier: "UTME STANDARD",
  [A student throws a 0.5 m × 0.5 m quadrat ten times in a field of 200 m² and counts 6, 9, 4, 8, 7, 5, 10, 6, 8 and 7 dandelion plants. Estimate the number of dandelions in the field.],
  [
    *Step 1 — mean per quadrat.* (6 + 9 + 4 + 8 + 7 + 5 + 10 + 6 + 8 + 7) ÷ 10 = 70 ÷ 10 = *7 plants per quadrat*.

    *Step 2 — area of one quadrat.* 0.5 m × 0.5 m = *0.25 m²*.

    *Step 3 — how many quadrats fit in the field.* 200 ÷ 0.25 = *800 quadrats*.

    *Step 4 — multiply.* 7 × 800 = *5600 dandelions*.

    *Check the units:* plants per quadrat × quadrats in the field gives plants. If your answer is in m², you multiplied by the area instead of by the number of quadrats.
  ],
)

#shortcut-box("Which method, in one line each")[
  Plants, or animals that barely move → *quadrat*, thrown at random. \
  How a habitat changes along a line → *transect*. \
  Animals that move about → *capture–recapture*, with N = (M × C) ÷ R. \
  A question that asks for the *total* population wants a quadrat or capture–recapture; a question that asks how the community *varies* wants a transect.
]

// ============================================================================
// SECTION 5.6 — CHECKLIST
// ============================================================================
== 5.6 Chapter 5 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + list the six levels of ecology from organism to biosphere, with an example of each;
  + distinguish habitat, niche and environment, and explain competitive exclusion;
  + name five abiotic factors and state how each limits a population;
  + name four biotic factors and give one adaptation each selects for;
  + define population size and population density, and name the four processes that change size;
  + describe the sigmoid growth curve and define carrying capacity;
  + explain why a food web is more stable than a food chain;
  + describe the quadrat, transect and capture–recapture methods, and say when each is used;
  + calculate a population estimate by quadrat and by capture–recapture, and state the assumptions of the second.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Ecology climbs from organism to population to community to ecosystem to biome to biosphere. A habitat is where an organism lives and a niche is what it does there; two species cannot share one niche, which is competitive exclusion. Populations change through births, deaths, immigration and emigration, and grow along a sigmoid curve to the carrying capacity. Ecologists estimate populations with random quadrats for plants, transects for change along a line, and capture–recapture — N = (M × C) ÷ R — for animals that move, provided nothing is born, dies, arrives or leaves between the two samples.
  ]
]

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: ecosystem, niche, population and sampling.", width: 100%)

// ============================================================================
// SECTION 5.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The role an organism plays in its habitat is called its], [habitat], [population], [niche], [community])
#mcq(2, [Two species that need exactly the same resources in the same habitat will eventually], [both increase together], [exclude one another, because one out-competes the other], [share the resources equally for ever], [become one species])
#mcq(3, [A quadrat is the most suitable method for estimating the population of], [birds in a forest], [fish in a river], [plants in a field], [insects in flight])
#mcq(4, [In capture–recapture, if 50 animals are marked and a second sample of 80 contains 10 marked animals, the estimated population is], [40], [400], [800], [5000])

#answer-key-grid(("C", "B", "C", "B"))

#answer-notes((
  ("C", [the niche is the organism's role — what it eats, where it shelters and when it breeds; the habitat is only the place.]),
  ("B", [complete overlap of niches means competition for the same limited resources, and the better-adapted species excludes the other.]),
  ("C", [quadrats suit plants and animals that do not move out of the frame; birds, fish and flying insects need capture–recapture or direct observation.]),
  ("B", [N = (M × C) ÷ R = (50 × 80) ÷ 10 = 4000 ÷ 10 = 400.]),
))

#include "drill_ch05.typ"
