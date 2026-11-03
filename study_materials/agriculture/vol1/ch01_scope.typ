#import "template.typ": *

#current-chapter.update("Chapter 1: The Scope of Agriculture")

#pagebreak()

#chapter-opener(
  1,
  "The Scope of Agriculture",
  subtitle: "What the Subject Covers, Why It Matters to Nigeria, and How a Farm Is Classified",
  syllabus-ref: "Part I • Principles of Agriculture",
  utme-weight: "5 Qs a year",
  running: "The Scope of Agriculture",
)

#focus-radar(
  objectives: (
    "Define agriculture and distinguish the science from the art of it.",
    "Name the branches of agriculture and the work each one does.",
    "State the importance of agriculture to the Nigerian economy.",
    "Classify farming systems by purpose, intensity, ownership and enterprise.",
    "Identify the problems of Nigerian agriculture and the solution to each.",
  ),
  hotspots: (
    "“Agriculture is best defined as …” — the cultivation of crops and the rearing of animals for food, fibre and income. The trap offers *the growing of crops*, which leaves out the animal half.\n",
    "“Which of these is NOT a branch of agriculture?” — the odd one out is usually *geology* or *meteorology*, a pure science that supports farming without being a branch of it. The trap offers *agronomy*, which is a branch.\n",
    "“A farmer who grows maize and keeps poultry on the same holding is practising …” — mixed farming. The trap offers *mixed cropping*, which is two or more crops on the same plot and says nothing about animals.\n",
    "“Shifting cultivation is characterised by …” — a new plot each season, the old one abandoned to the bush. The trap offers *crop rotation*, which returns to the same land in a fixed order.\n",
  ),
  trap-summary: "Three slips. (1) Calling commercial farming large and subsistence farming small: the distinction is *where the output goes*, not the size of the farm. (2) Treating agriculture as one occupation, when the syllabus divides it into branches with different tools and different questions. (3) Forgetting that the problems of Nigerian agriculture are usually problems of *inputs and infrastructure*, not of soil or weather alone.",
)

// ============================================================================
== 1.1 What Agriculture Is

Agriculture is the cultivation of crops and the rearing of animals for food, fibre, fuel, medicine
and income. The definition has two halves, and the examiner tests both: a candidate who writes
only of crops has answered half a question.

#rule-box("The definition, complete")[
  Agriculture is the *science and art* of cultivating crops and rearing animals for the
  production of food, fibre, fuel and other products useful to people.
]

#v(2pt)

The phrase *science and art* is not decoration. Agriculture is a science because it rests on
tested knowledge: the chemistry of the soil, the physiology of the seed, the life cycle of the
pest. It is an art because the farmer applies that knowledge to one field, in one season, with
the materials at hand — judgement, timing and experience decide the outcome as much as the
textbook does.

A farm is best understood as a system with three parts:

#table(
  columns: (1.1fr, 2.1fr, 1.9fr),
  inset: (x: 6pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part of the system],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it contains],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example on a maize farm],
  ),
  [Inputs], [land, labour, capital, seed, fertiliser, water, management], [two hectares, four workers, a hoe, 20 kg of seed, a bag of NPK],
  [Processes], [the operations that turn an input into a product], [clearing, ploughing, planting, weeding, spraying, harvesting],
  [Outputs], [the product, and what is left over], [three tonnes of maize, stover for the animals, seed for next year],
  [Feedback], [what the farmer learns and puts back into the next season], [the lower yield on the sandy plot changes next year's fertiliser],
)

#v(2pt)

The system idea matters because most examination questions are about one link in it: *why* the
yield fell (a process), *what* was missing (an input), or *what* the farmer should have done
differently (management). Answer in the language of the system and the answer is already half
written.

== 1.2 The Branches of Agriculture

Agriculture is a family of disciplines, not a single trade. The syllabus names the branches, and
a question that asks you to place a piece of work in the right branch is testing whether you know
what each one does.

#table(
  columns: (1.25fr, 2.1fr, 1.85fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Branch],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it studies],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[A question it answers],
  ),
  [Crop science], [the plant and its production: agronomy, horticulture, plant breeding, plant pathology, entomology], [which maize variety yields more on this soil?],
  [Soil science], [the soil as a body: formation, physics, chemistry, fertility and conservation], [why does this plot yield less each year?],
  [Animal science], [livestock production: husbandry, nutrition, breeding, health], [why has this hen stopped laying?],
  [Agricultural economics], [cost, price, marketing, farm management and policy], [is it better to sell the maize now or store it?],
  [Extension education], [the transfer of research findings to the farmer, and of the farmer's problems back to the researcher], [how do we get this variety into the village?],
  [Fisheries and forestry], [fish production and the management of forest resources], [which fish species suits this pond?],
)

#v(2pt)

Two of these branches are frequently mistaken for separate subjects. *Agronomy* is the part of
crop science that deals with field crops — maize, rice, cowpea — while *horticulture* deals with
garden crops: fruits, vegetables and ornamentals. *Pedology* is the study of soil formation and
classification; *edaphology* is the study of the soil as a medium for plant growth. The examiner
uses the first pair far more often than the second.

#trap-box("A branch is not a supporting science")[
  Botany, chemistry, geology and meteorology all serve agriculture, but none of them is a branch
  of it. If an option names a pure science with no production in it, it is the odd one out in a
  "which is NOT a branch" question.
]

== 1.3 Why Agriculture Matters to Nigeria

Agriculture is not a relic of the pre-oil economy. It is the largest single employer in the
country, the source of most of what Nigerians eat, and the base of a group of industries that
process what the farm produces.

#table(
  columns: (1.25fr, 2.05fr, 1.9fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Contribution],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),
  [Food supply], [it feeds the population and supplies the raw material of every meal], [cassava, yam, rice, maize, beans, oil],
  [Employment], [it employs a larger share of the labour force than any other sector], [about a third of Nigerian workers, most of them smallholders],
  [Raw materials], [it supplies the factories that process farm products], [cocoa to beverages, cotton to textiles, oil palm to soap, hides to leather],
  [Foreign exchange], [it earns hard currency from exports and saves it by import substitution], [cocoa, sesame, cashew, ginger, rubber],
  [Market for industry], [farmers buy tools, fertiliser, fuel and cloth], [a tractor, a knapsack sprayer, a bag of urea],
  [Capital formation], [surplus from farming is invested in other sectors], [farm savings that build a shop or pay school fees],
  [Rural development], [farm income keeps the village alive and slows the drift to the cities], [a cooperative that builds a market stall],
)

#v(2pt)

The figures the paper expects are broad, not precise. Agriculture contributes roughly a quarter of
Nigeria's gross domestic product and employs roughly a third of its workforce; about nine-tenths
of the output comes from smallholders working two hectares or less. Learn the *proportions* and
the *direction* of the argument; the examiner rarely asks for a decimal.

== 1.4 Systems of Farming

Every farm in the syllabus can be classified on four axes. A single farm carries one label from
each axis, and the labels combine: a *peasant, subsistence, extensive, mixed-crop* farm is a
perfectly ordinary Nigerian farm.

#table(
  columns: (1.15fr, 1.4fr, 1.35fr, 1.3fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Axis],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[One end],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The other end],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What separates them],
  ),
  [Purpose], [subsistence — for the family], [commercial — for sale], [where the output goes],
  [Intensity], [intensive — high inputs per hectare], [extensive — large area, low inputs], [inputs per unit of land],
  [Scale and ownership], [peasant or smallholder], [plantation or estate], [size, capital and hired labour],
  [Enterprise], [arable, pastoral or mixed], [monoculture or mixed cropping], [what is produced, and how many things],
)

#v(2pt)

#table(
  columns: (1.3fr, 2.1fr, 1.8fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it is found],
  ),
  [Shifting cultivation], [a plot is cleared, cropped for two or three years, then abandoned to regenerate], [sparsely populated forest and savanna],
  [Land rotation], [plots are cropped in turn and the farmer returns to the first when it has recovered], [areas with more land pressure than shifting allows],
  [Continuous cropping], [the same land is cropped every year, with inputs to replace what is removed], [near cities, where land is scarce],
  [Mixed cropping], [two or more crops grown together on the same plot in the same season], [yams with maize and melon; cassava with maize],
  [Crop rotation], [a fixed sequence of different crops on the same land, season after season], [any farm with a plan for fertility and pests],
  [Mixed farming], [crops and livestock on the same holding, each feeding the other], [maize and poultry; cattle and guinea corn],
  [Plantation], [one cash crop on a large estate, with capital, hired labour and processing], [cocoa in Ondo, oil palm in Cross River, rubber in Edo],
)

#v(2pt)

The pair that the paper returns to is *mixed cropping* against *crop rotation*. Mixed cropping is
a matter of *space*: two crops share the ground at the same time. Crop rotation is a matter of
*time*: one crop follows another on the same ground. A farmer can do both, and good farmers do.

#diagram-fig("diagrams/agr1_ch01_scope.svg",
  "Figure 1.1 — the four branches of the subject, and the chain that carries a harvest from the field to the consumer.", width: 98%)

== 1.5 Types of Farming by Enterprise

A farm is also named by what it produces. The syllabus lists seven enterprise types, and each
has its own vocabulary.

#table(
  columns: (1.15fr, 2.1fr, 1.95fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Enterprise],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Nigerian example],
  ),
  [Arable farming], [the growing of crops on cultivated land], [maize and cassava in Ogun],
  [Pastoral farming], [the rearing of animals, often on grazing land], [cattle in Adamawa, goats in Sokoto],
  [Mixed farming], [crops and animals together on one holding], [sorghum and cattle in Kano],
  [Plantation agriculture], [large-scale production of one cash crop], [cocoa in Ondo, oil palm in Cross River],
  [Horticulture], [fruits, vegetables and ornamentals, usually intensive], [tomatoes in Kano, flowers in Plateau],
  [Aquaculture], [the rearing of fish in ponds, tanks or cages], [catfish in Delta, tilapia in Oyo],
  [Agroforestry], [trees grown together with crops or livestock], [parkland trees in the Sahel; alley cropping with leucaena],
)

#v(2pt)

Horticulture deserves the extra line. It is the most *intensive* of the enterprise types — a
hectare of tomatoes costs more and earns more than a hectare of sorghum — and it is the type most
often tested through a named crop rather than through the word itself.

== 1.6 The Problems of Nigerian Agriculture

The syllabus asks for the problems *and* the solutions, and marks them as pairs. A problem without
its remedy is half an answer.

#table(
  columns: (1.5fr, 1.75fr, 1.95fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Problem],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why it lowers output],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The remedy],
  ),
  [Low yields], [traditional seed, little fertiliser, rain-fed fields], [improved varieties, fertiliser, irrigation],
  [Land tenure and fragmentation], [plots are small and scattered, and cannot be used as collateral], [land reform, consolidation, title deeds],
  [Crude implements], [a hoe cannot prepare a hectare in time for the rains], [tractor hire, animal traction, cooperative machinery],
  [Pests and diseases], [a third of the crop can be lost in the field], [resistant varieties, IPM, timely spraying],
  [Poor storage], [the harvest is lost after it has been grown], [cribs, silos, hermetic bags, drying],
  [Poor credit], [the farmer cannot buy inputs at planting time], [agricultural banks, cooperative credit, anchor borrowers],
  [Weak extension], [research never reaches the farm], [more extension agents, demonstration plots, radio],
  [Poor infrastructure], [produce cannot reach the market in good condition], [rural roads, rural electrification, storage near markets],
  [Marketing problems], [middlemen take the margin; prices swing], [cooperatives, commodity boards, price information],
  [Climate dependence], [one dry spell ruins a rain-fed season], [irrigation, drought-tolerant varieties, early planting],
)

#v(2pt)

Read the table downwards and a pattern appears: most of the problems are not about the soil. They
are about *what the farmer can buy, know and reach* — inputs, advice and roads. That is why the
answer to "how can Nigerian agriculture be improved?" is rarely "more rain".

== 1.7 Four Worked Questions

#worked-example(
  1,
  "The definition, and the half that is usually dropped",
  [Agriculture is best defined as

    A. the growing of crops for food \
    B. the cultivation of crops and the rearing of animals \
    C. the processing of farm produce for sale \
    D. the study of soils and their fertility],
  [
    *Step 1 — read the whole option.* A is true but incomplete: it leaves out animals.

    *Step 2 — test C.* Processing is a stage of the value chain, not the definition of agriculture itself.

    *Step 3 — test D.* Soil science is a branch of agriculture, not its definition.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "A branch question, tested by the odd one out",
  [Which of the following is NOT a branch of agriculture?

    A. Agronomy \
    B. Horticulture \
    C. Meteorology \
    D. Animal science],
  [
    *Step 1 — sort the three that are branches.* Agronomy is field-crop production, horticulture is garden-crop production, animal science is livestock production. All three produce.

    *Step 2 — test the fourth.* Meteorology studies the atmosphere. It supplies agriculture with weather forecasts, but it does not produce a crop or an animal.

    *Step 3 — state the rule.* A branch of agriculture is defined by what it produces, not by what it studies for the sake of others.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Mixed farming against mixed cropping",
  [A farmer grows maize, cassava and vegetables on one plot and keeps twelve goats and a flock of
  hens on the same holding. The system is best described as

    A. mixed cropping \
    B. mixed farming \
    C. plantation agriculture \
    D. continuous cropping],
  [
    *Step 1 — count the enterprises.* The holding carries both crops and animals. That is the definition of mixed farming.

    *Step 2 — distinguish A.* Mixed cropping is about the crops alone: three crops on one plot would qualify, but it says nothing about the goats and hens.

    *Step 3 — dismiss C and D.* A plantation grows one cash crop; continuous cropping describes how often the land is used, not what is on it.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The shifting-cultivation question, with the trap inside it",
  [A farmer clears a fresh plot each year, crops it for two seasons, and moves on. He returns to
  the first plot only after about ten years. The system he practises is

    A. crop rotation \
    B. continuous cropping \
    C. shifting cultivation \
    D. land rotation],
  [
    *Step 1 — find the defining feature.* A new plot each year, the old one abandoned to the bush: that is shifting cultivation.

    *Step 2 — separate it from land rotation.* Land rotation also moves from plot to plot, but it follows a *fixed order* and returns on a known cycle, without the bush fallow of a decade.

    *Step 3 — reject the other two.* Crop rotation is a sequence of crops on the same land; continuous cropping never leaves the land at all.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

== 1.8 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [Agriculture is best described as the], [growing of crops for food], [cultivation of crops and rearing of animals], [processing of farm produce], [study of the soil])

#mcq(2, [Which of these is a branch of agriculture?], [geology], [meteorology], [agronomy], [botany])

#mcq(3, [A farmer who produces only enough to feed his household is practising], [commercial farming], [subsistence farming], [plantation agriculture], [mixed farming])

#mcq(4, [The growing of two or more crops together on the same plot is called], [crop rotation], [mixed farming], [continuous cropping], [mixed cropping])

#answer-key-grid(("B", "C", "B", "D"))

#answer-notes((
  ("B", [The definition has two halves; an option with only crops is half an answer.]),
  ("C", [Agronomy produces field crops. Geology, meteorology and botany are supporting sciences, not branches.]),
  ("B", [The output goes to the household, not the market — that is what makes it subsistence.]),
  ("D", [Two crops sharing the ground at one time is mixed cropping; a sequence in time would be rotation.]),
))

#diagram-fig("diagrams/recap_agr1_ch01.svg",
  "Chapter 1 recap card: the definition, the branches, the importance and the systems.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Agriculture is the science and art of growing crops and rearing animals, and every farm is a
    system of inputs, processes and outputs. The subject divides into branches — crop science,
    soil science, animal science, economics and extension — and into systems that are classified
    by purpose, intensity, scale and enterprise. In Nigeria it feeds the country, employs a third
    of the workforce and supplies the factories, but it is held back less by soil and weather
    than by inputs, credit, extension and roads.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Define agriculture in one sentence, with both halves in it.],
  [Name five branches and say what each one produces.],
  [Distinguish mixed cropping from mixed farming, and crop rotation from shifting cultivation.],
  [State four problems of Nigerian agriculture, each with its remedy.],
  [Classify any farm you know on all four axes — purpose, intensity, scale, enterprise.],
))

#concept-box("Carry this into Chapter 2")[
  Every one of those systems rests on the same thin layer: the topsoil. The next chapter goes down
  into it — the rock it came from, the horizons it has formed, the texture that decides whether
  water drains or stands, and the chemistry that decides whether a crop can feed from it at all.
]

#include "drill_ch01.typ"
