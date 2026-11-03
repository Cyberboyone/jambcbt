#import "template.typ": *

#current-chapter.update("Chapter 1: The Animal on the Farm")

#pagebreak()

#chapter-opener(
  1,
  "The Animal on the Farm",
  subtitle: "Why Nigeria Keeps Animals, How They Are Classified, and How They Are Raised",
  syllabus-ref: "Part II • Animal Science",
  utme-weight: "5 Qs a year",
  running: "The Animal on the Farm",
)

#focus-radar(
  objectives: (
    "State the importance of livestock in Nigerian agriculture.",
    "Classify farm animals by stomach type, by use and by scientific name.",
    "Describe the five systems of livestock production.",
    "Name the important Nigerian breeds and the exotic breeds used for crossing.",
    "Identify the problems of the livestock industry and the solution to each.",
  ),
  hotspots: (
    "“Which of these is a ruminant animal?” — cattle, sheep, goat and buffalo. The trap offers the *pig* or the *rabbit*, both monogastric, and the *fowl*, which has no teeth and a gizzard.\n",
    "“The scientific name of the domestic fowl is …” — *Gallus gallus domesticus*. The trap offers *Gallus domesticus*, missing the genus-and-species pair the paper wants.\n",
    "“Cattle reared on open natural pasture with the herd moved from place to place is …” — extensive or nomadic. The trap offers *ranching*, which is fenced and managed.\n",
    "“A farm that keeps cattle, goats and poultry and also grows maize is practising …” — mixed farming. The trap offers *mixed cropping*, which says nothing about animals.\n",
  ),
  trap-summary: "Three slips. (1) Using *livestock* to mean only cattle: the syllabus includes sheep, goats, pigs, poultry, rabbits, snails, bees and fish. (2) Confusing a *breed* with a *species*: White Fulani is a breed of cattle, not a species. (3) Treating free range as a kindness: the extensive system exposes the animal to disease, theft and feed shortage, and the paper expects that answer.",
)

// ============================================================================
== 1.1 Why the Farm Keeps Animals

The crop pays the farmer once a year. The animal pays him all year — in milk, eggs, meat, manure
and draught power — and it does it on land and feed that the crop cannot use.

#table(
  columns: (1.15fr, 2.0fr, 1.95fr),
  inset: (x: 6pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Contribution],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What the animal supplies],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it is seen],
  ),
  [Food], [meat, milk, eggs, cheese, honey, fish], [every market in the country, and the protein in every meal],
  [Manure], [dung and urine, richer than straw], [the vegetable garden and the fish pond],
  [Power], [draught oxen, donkeys, camels], [the plough in the savanna, the cart in the north],
  [Raw material], [hides and skins, wool, bones, horns], [the tannery at Kano, the glue works, the button trade],
  [Income and savings], [a goat sold to pay school fees], [the household that has no bank account],
  [Risk spreading], [an animal can be sold in a bad crop year], [the mixed farm in a drought],
  [Employment], [herdsmen, poultry hands, butchers, feed millers], [the poultry belt round Ibadan, the abattoirs],
)

#v(3pt)

#rule-box("The animal as a converter")[
  A farm animal is a *converter*. It takes material people cannot or will not eat — grass, straw,
  bran, kitchen waste, fish offal — and turns it into protein people will pay for. The efficiency
  of that conversion is the whole of animal science, and every question in this volume is a
  question about one of its inputs: feed, health, housing or breeding.
]

// ============================================================================
== 1.2 How the Farm Animal Is Classified

Three classifications matter: by *stomach*, by *use* and by *scientific name*.

#table(
  columns: (1.25fr, 1.55fr, 2.0fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[By the stomach],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Which animals],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What follows for the farmer],
  ),
  [Ruminant], [cattle, sheep, goats, buffalo, camel], [four compartments; can live on grass and crop residue; needs cobalt and salt],
  [Monogastric], [pig, rabbit, horse, dog], [one simple stomach; needs concentrates — grain and cake],
  [Poultry], [fowl, guinea fowl, turkey, duck], [no teeth; crop, proventriculus and gizzard; needs grit and mash],
  [Aquatic], [catfish, tilapia, carp], [gills; needs water of the right temperature and oxygen],
  [Insect], [honey bee, silkworm], [feeds on nectar or leaves; kept in a hive or a shed],
)

#v(4pt)

#table(
  columns: (1.25fr, 1.25fr, 1.25fr, 1.3fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Animal],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Scientific name],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[By use],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The Nigerian breed],
  ),
  [Cattle], [*Bos indicus* / *Bos taurus*], [beef, milk, draught], [White Fulani, Sokoto Gudali, Muturu, Ndama],
  [Sheep], [*Ovis aries*], [meat, wool, skin], [Yankasa, Balami, Uda, West African Dwarf],
  [Goat], [*Capra hircus*], [meat, milk, skin], [West African Dwarf, Red Sokoto, Sahel],
  [Pig], [*Sus scrofa*], [pork, lard], [Large White, Landrace, Duroc, the local unimproved pig],
  [Fowl], [*Gallus gallus domesticus*], [meat, eggs], [the local fowl; broiler and layer hybrids],
  [Guinea fowl], [*Numida meleagris*], [meat, eggs, alarm], [the local pearl guinea fowl],
  [Rabbit], [*Oryctolagus cuniculus*], [meat, fur], [Chinchilla, California White, New Zealand],
  [Catfish], [*Clarias gariepinus*], [food], [the African catfish],
  [Tilapia], [*Oreochromis niloticus*], [food], [the Nile tilapia],
  [Snail], [*Archachatina marginata*], [food], [the giant African land snail],
  [Honey bee], [*Apis mellifera*], [honey, wax, pollination], [the local African bee],
)

#v(3pt)

#text(size: 9.6pt)[
  *By use*, the same species can be classified three ways: a *dairy* animal is kept for milk, a
  *beef* animal for meat, and a *dual-purpose* animal for both. Cattle are also classed as *work*
  animals when they pull a plough. Learn one example of each, because the paper asks for the
  example rather than the label.
]

// ============================================================================
== 1.3 The Five Systems of Production

#table(
  columns: (1.05fr, 1.75fr, 2.2fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How the animal is kept],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example, and its weakness],
  ),
  [Intensive], [housed all its life; feed and water carried to it; climate controlled], [battery-cage layers; costly in feed and capital, and disease spreads fast],
  [Semi-intensive], [housed at night, grazed or scavenging by day], [village poultry and tethered goats; low output, high survival],
  [Extensive], [free range on natural pasture; the herd moves with the season], [nomadic Fulani cattle; the animal finds its own feed, but grows slowly and is often stolen],
  [Mixed farming], [animals and crops on the same holding, each feeding the other], [the typical smallholding; needs labour, and the animals may damage the crop],
  [Ranching], [fenced range with planned grazing, water points and a crush], [the modern cattle ranch; high capital, but controlled breeding and health],
)

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE CHOICE IS AN ECONOMIC ONE]
  #v(3pt)
  #text(size: 9.6pt)[
    The system is decided by the price of land relative to the price of feed. Where land is cheap
    and plentiful — the savanna — the animal is allowed to walk to its feed. Where land is
    expensive — a plot behind a Lagos house — the feed is carried to the animal and the animal is
    stacked in cages. Neither system is kinder; both are answers to the same arithmetic.
  ]
]

// ============================================================================
#diagram-fig("diagrams/agr2_ch01_animal.svg",
  "1.1 — the animal classified by stomach and by use, beside the five systems under which it is kept.", width: 98%)

== 1.4 Breeds: The Local and the Exotic

#table(
  columns: (1.15fr, 1.5fr, 2.35fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Breed],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Species and home],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is known for],
  ),
  [White Fulani (Bunaji)], [cattle; the northern savanna], [the commonest beef and milk zebu; white with black points; tolerant of heat and poor feed],
  [Sokoto Gudali], [cattle; the north-west], [good milk, heavy frame, the hump of the zebu],
  [Muturu], [cattle; the south and the middle belt], [small, trypanotolerant, resistant to tsetse — but slow],
  [Ndama], [cattle; the west and the delta], [trypanotolerant, small, the breed for the tsetse belt],
  [Yankasa], [sheep; the northern savanna], [white with brown patches, hornless, the commonest sheep],
  [Balami], [sheep; the north-east], [tall, long-legged, a meat breed],
  [Uda], [sheep; the north], [brown and white, long tail, the ram with a mane],
  [West African Dwarf goat], [goat; the south], [small, trypanotolerant, the household goat],
  [Red Sokoto (Maradi)], [goat; the north-west], [red-brown, the best skin in the world for light leather],
  [Sahel goat], [goat; the far north], [long-legged, milk and meat, walks far for water],
  [Large White], [pig; imported], [the exotic bacon breed, white, prolific],
  [Landrace], [pig; imported], [long body, drooping ears, the mothering breed],
  [Duroc], [pig; imported], [red, fast-growing, used as a terminal sire],
)

#v(4pt)

#text(size: 9.6pt)[
  The local breeds are not inferior — they are *adapted*. The Muturu and the Ndama survive
  trypanosomiasis, the West African Dwarf goat survives the humid south, and the Red Sokoto goat
  produces a skin the leather trade buys by name. What they lack is growth rate. The standard
  Nigerian improvement is therefore *cross-breeding*: a local dam for hardiness, an exotic sire
  for growth, and a first-cross offspring that carries both.
]

// ============================================================================
== 1.5 The Problems of the Livestock Industry

#table(
  columns: (1.1fr, 2.0fr, 1.9fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Problem],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it does to the industry],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The remedy],
  ),
  [Feed shortage], [the dry season strips the range; grain competes with human food], [residue treatment, fodder banks, silage, agro-industrial by-products],
  [Disease], [trypanosomiasis, rinderpest historically, Newcastle, anthrax], [vaccination, tsetse control, quarantine, dipping],
  [Poor genetic quality], [local stock grows slowly and yields little milk], [artificial insemination, cross-breeding, breed improvement centres],
  [Capital and credit], [animals are expensive and slow to repay], [livestock loans, cooperative purchase, insurance],
  [Marketing], [no cold chain; the middleman takes the margin], [abattoirs, cold stores, cooperative marketing],
  [Nomadic conflict], [herdsmen and crop farmers compete for land], [grazing reserves, ranching, the grazing route],
  [Theft and rustling], [the herd is a mobile bank and walks away], [branding, community policing, ranching],
)

// ============================================================================
== 1.6 The Arithmetic of the Herd

Three measures govern how many animals a farm can carry.

#table(
  columns: (1.2fr, 1.9fr, 1.6fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Worked value],
  ),
  [Animal unit], [one mature cow of about 450 kg; other stock is a fraction of it], [a goat is 0.2 AU, a sheep 0.2, a pig 0.3, a fowl 0.01],
  [Stocking rate], [animal units per hectare], [2 AU/ha on good savanna pasture],
  [Carrying capacity], [the number of animals the land can feed without damage], [a 10 ha farm at 2 AU/ha carries 20 cows, or 100 goats],
)

#v(3pt)

#text(size: 9.6pt)[
  A *stocking rate* above the carrying capacity is overstocking: the pasture is eaten to the root,
  the bare soil erodes, and the herd starves in the next dry season. The paper often gives a
  pasture area and an animal unit figure and asks for the number of animals; the arithmetic is a
  single division.
]

// ============================================================================
== 1.7 Four Worked Questions

#worked-example(
  1,
  "The ruminant, from the list",
  [Which of the following farm animals is a ruminant?

    A. Pig \\
    B. Rabbit \\
    C. Goat \\
    D. Fowl],
  [
    *Step 1 — recall the definition.* A ruminant has a four-compartment stomach and chews the cud.

    *Step 2 — test each option.* The pig and the rabbit have a single stomach and cannot digest
    grass; the fowl has a crop and a gizzard but no rumen. The goat has rumen, reticulum, omasum
    and abomasum.

    *Step 3 — remember the companions.* Cattle, sheep, goats, buffalo and camels are ruminants;
    pigs, rabbits, horses and poultry are not.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Carrying capacity, as a division",
  [A farmer has 12 hectares of good savanna pasture with a carrying capacity of 2.5 animal units
  per hectare. How many goats of 0.2 animal unit can the farm carry?

    A. 30 \\
    B. 60 \\
    C. 150 \\
    D. 300],
  [
    *Step 1 — find the total animal units.* 12 ha × 2.5 AU/ha = 30 AU.

    *Step 2 — convert to goats.* Each goat is 0.2 AU, so the number of goats is 30 ÷ 0.2 = 150.

    *Step 3 — sanity-check the answer.* A goat is a fifth of a cow, so the farm should carry five
    times as many goats as cows; 5 × 30 = 150. The check agrees.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Which system, and why",
  [A poultry farmer keeps 5 000 layers in cages inside a ventilated house, with feed and water
  brought to the birds and the temperature controlled. The system he practises is

    A. extensive \\
    B. semi-intensive \\
    C. intensive \\
    D. ranching],
  [
    *Step 1 — identify the markers.* Housed all its life, feed carried in, climate controlled:
    every marker points one way.

    *Step 2 — match the definition.* That is the intensive system. Semi-intensive would let the
    birds out by day; extensive would let them find their own feed.

    *Step 3 — dismiss ranching.* Ranching is a grazing system for ruminants on fenced range, and
    has nothing to do with a cage house.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The breed and the reason",
  [The Muturu cattle of southern Nigeria are preferred by some farmers in the tsetse belt because
  they

    A. grow faster than the White Fulani \\
    B. are tolerant of trypanosomiasis \\
    C. produce more milk than the Sokoto Gudali \\
    D. are heavier at maturity than the Ndama],
  [
    *Step 1 — locate the Muturu.* It is a small West African shorthorn of the forest and the middle
    belt, kept where the tsetse fly lives.

    *Step 2 — ask what kills cattle there.* Trypanosomiasis, carried by the tsetse. The Muturu
    survives the disease; the zebu breeds do not.

    *Step 3 — reject the comparisons.* The Muturu is smaller and slower-growing than the White
    Fulani, and a poorer milker than the Gudali. Its one advantage is the one the question names.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 1.8 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [The scientific name of the domestic fowl is], [Gallus domesticus], [Gallus gallus domesticus], [Numida meleagris], [Meleagris gallopavo])

#mcq(2, [Which of these animals is a monogastric?], [goat], [sheep], [pig], [cattle])

#mcq(3, [Cattle kept on open natural pasture and moved from place to place are said to be reared under the], [intensive system], [semi-intensive system], [extensive system], [ranching system])

#mcq(4, [The Red Sokoto goat is important in Nigeria mainly for its], [milk], [skin], [wool], [draught power])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [The genus and the species are both required: *Gallus gallus*, then the subspecies *domesticus*.]),
  ("C", [The pig has one stomach and cannot digest grass; the other three are ruminants.]),
  ("C", [Free range and a moving herd are the marks of the extensive system; ranching is fenced.]),
  ("B", [The Red Sokoto skin is the famous product — light leather for gloves and bookbinding.]),
))

#diagram-fig("diagrams/recap_agr2_ch01.svg",
  "Chapter 1 recap card: why animals are kept, the four classes, the five systems and the problems.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The animal is a converter: it turns grass, residue and waste into protein, manure and power.
    Farm animals are classified by stomach — ruminant, monogastric, poultry, aquatic — and by use
    and scientific name, and they are kept under five systems that run from the cage house to the
    open range. Nigeria's local breeds are hardy but slow; its exotic breeds are fast but fragile;
    the standard improvement is a cross. The industry's problems are feed, disease, genes, credit
    and markets, and every one of them has a named remedy.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [State five contributions of livestock to a Nigerian farm.],
  [Classify a goat, a pig, a fowl and a catfish by stomach type.],
  [Give the scientific name of cattle, sheep, goats and poultry.],
  [Name the five systems of production and one weakness of each.],
  [Calculate the animals a pasture can carry, given its area and the animal unit.],
))

#concept-box("Carry this into Chapter 2")[
  The classification is not a label; it is a prediction. Say "ruminant" and you have said what the
  animal can eat, how long it must chew, and why it survives on grass. The next chapter goes
  inside the animal to show the machinery behind that prediction — the four compartments, the
  single stomach, and the reproductive tract that decides when the farm gets its next calf.
]

#include "drill_ch01.typ"
