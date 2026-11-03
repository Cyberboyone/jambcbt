#import "template.typ": *

#current-chapter.update("Chapter 2: The Body of the Farm Animal")

#pagebreak()

#chapter-opener(
  2,
  "The Body of the Farm Animal",
  subtitle: "The Stomach That Decides the Feed, and the Cycle That Produces the Next Calf",
  syllabus-ref: "Part II • Anatomy and Physiology",
  utme-weight: "4 Qs a year",
  running: "The Body of the Farm Animal",
)

#focus-radar(
  objectives: (
    "Describe the digestive system of the ruminant and of the monogastric animal.",
    "Explain the role of the rumen micro-organisms and of rumination.",
    "Describe the digestive tract of the fowl.",
    "Name the organs of the reproductive system and describe the oestrus cycle.",
    "State the gestation period of the common farm animals.",
  ),
  hotspots: (
    "“The true stomach of the ruminant is the …” — abomasum. The trap offers *rumen*, which is the largest compartment but not a glandular stomach.\n",
    "“Rumination is important because it …” — breaks the feed into smaller particles and exposes it to the bacteria. The trap offers *adds water*, which the saliva does, not the chewing.\n",
    "“The gestation period of the sow is approximately …” — 114 days. The trap offers 283, the cow's figure, or 150, the goat's.\n",
    "“The fowl has no teeth; it grinds its feed in the …” — gizzard. The trap offers *crop*, which only stores the feed.\n",
  ),
  trap-summary: "Three slips. (1) Putting the abomasum before the omasum in the order of compartments: the order is rumen, reticulum, omasum, abomasum. (2) Confusing oestrus (the period of heat) with the oestrus cycle (the whole 21-day interval). (3) Forgetting that the hen's 21 days is *incubation*, not gestation — a bird lays an egg and the embryo develops outside her body.",
)

// ============================================================================
== 2.1 Why the Stomach Comes First

The whole of animal husbandry follows from one anatomical fact: whether the animal has one
stomach or four. A farmer who understands that can answer a feeding question without memorising
a feed table, because he knows what the animal is able to do with what he gives it.

#rule-box("The one sentence to carry")[
  A *ruminant* ferments its feed in a forestomach before digesting it; a *monogastric* digests its
  feed directly. Everything else — the feed, the cost, the disease, the housing — follows from
  that difference.
]

// ============================================================================
== 2.2 The Ruminant: Four Compartments

#table(
  columns: (1.05fr, 2.1fr, 2.0fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Compartment],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens in it],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why the farmer cares],
  ),
  [Rumen], [a fermentation vat held at 38–40 °C; bacteria and protozoa break down cellulose], [the animal can live on grass; sudden feed change kills the bacteria and the animal],
  [Reticulum], [sorts the feed; heavy objects are held back], [swallowed wire stays here and can pierce the heart — hardware disease],
  [Omasum], [absorbs water and grinds the particles finer], [the last chance to recover water from a dry diet],
  [Abomasum], [the true stomach: acid and pepsin digest protein], [the compartment that functions like the monogastric stomach],
)

#v(4pt)

#text(size: 9.8pt)[
  *Rumination* is the return of a bolus of feed to the mouth, where it is chewed again and mixed
  with saliva before being swallowed. A cow spends six to eight hours a day at it and produces
  100–150 litres of saliva, which buffers the acid the rumen bacteria make. A cow that has stopped
  chewing the cud is a sick cow, and the paper uses that fact as a diagnostic clue.
]

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE FOUR RULES OF RUMEN MANAGEMENT]
  #v(3pt)
  #text(size: 9.6pt)[
    *Change feed slowly* — over seven to ten days, so the bacteria adapt. *Give roughage with the
    concentrate* — the fibre keeps the rumen working. *Never feed mouldy hay* — the mould kills the
    flora. *Supply minerals and salt* — cobalt for the bacteria, and salt for the appetite.
  ]
]

// ============================================================================
== 2.3 The Monogastric and the Fowl

#table(
  columns: (1.1fr, 1.55fr, 2.35fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Organ],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Monogastric — pig, rabbit],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Fowl — hen, guinea fowl],
  ),
  [Mouth], [teeth cut and chew; saliva begins starch digestion], [a beak, no teeth; feed is swallowed whole],
  [Oesophagus], [carries feed to the stomach], [carries feed to the crop],
  [Crop], [absent], [stores and softens the feed],
  [Stomach], [acid and enzymes digest protein], [proventriculus: acid and enzymes; the glandular stomach],
  [Gizzard], [absent], [a muscular mill that grinds feed with grit],
  [Small intestine], [the main site of digestion and absorption], [the main site; bile and pancreatic juice enter here],
  [Caecum], [small; ferments a little fibre], [two caeca; ferment a little fibre],
  [Large intestine], [water absorbed; droppings formed], [short; droppings and uric acid leave together],
)

#v(4pt)

#text(size: 9.6pt)[
  The rabbit and the pig are *hindgut fermenters*: a little fibre is digested in the caecum, but
  nothing like a ruminant's capacity. The fowl is the most efficient converter of the three on a
  concentrate diet, which is why poultry feed is the most carefully formulated feed on the farm.
  The absence of teeth is why the bird must be given *grit*: without it the gizzard cannot grind.
]

// ============================================================================
#diagram-fig("diagrams/agr2_ch02_body.svg",
  "2.1 — the four compartments of the ruminant, and the single stomach of the pig and the fowl.", width: 98%)

== 2.4 Digestion and Absorption

Digestion is the breakdown of feed into molecules small enough to cross the gut wall. It happens
in three ways at once, and the paper names all three.

#table(
  columns: (1.1fr, 2.0fr, 1.95fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What does it],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it produces],
  ),
  [Mechanical], [teeth, rumination, gizzard, gut movement], [smaller particles, more surface area],
  [Chemical], [acid in the stomach, bile in the intestine], [a soluble, emulsified mass],
  [Enzymatic], [amylase, protease, lipase from the gut and pancreas], [glucose, amino acids, fatty acids],
  [Microbial], [bacteria and protozoa in the rumen and caecum], [volatile fatty acids, microbial protein, vitamins B and K],
)

#v(3pt)

#text(size: 9.7pt)[
  Absorption takes place mostly in the *small intestine*, whose lining carries villi that multiply
  the surface many times over. Water is recovered in the large intestine, which is why a pig on a
  watery diet produces loose dung and a healthy animal on a dry diet produces firm droppings. The
  *liver* is not part of the gut but stands between it and the rest of the body: every nutrient
  absorbed passes through it before the blood carries it anywhere else.
]

// ============================================================================
== 2.5 The Reproductive System and the Cycle

#table(
  columns: (1.05fr, 0.95fr, 0.95fr, 1.05fr, 1.0fr),
  inset: (x: 4pt, y: 3.4pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Animal],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Puberty],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Cycle],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Gestation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Young],
  ),
  [Cattle], [12–18 months], [21 days], [283 days], [one calf],
  [Sheep], [6–9 months], [17 days], [148 days], [one or two lambs],
  [Goat], [6–9 months], [21 days], [150 days], [one or two kids],
  [Pig], [6–8 months], [21 days], [114 days], [8–12 piglets],
  [Rabbit], [4–5 months], [induced], [31 days], [6–10 kittens],
  [Fowl], [5–6 months], [— (lays)], [21 days incubation], [one chick per egg],
  [Guinea fowl], [6–8 months], [— (lays)], [26–28 days incubation], [one keet per egg],
  [Duck], [6–7 months], [— (lays)], [28 days incubation], [one duckling per egg],
)

#v(4pt)

#text(size: 9.6pt)[
  *The oestrus cycle* is the interval from one heat to the next. *Oestrus* itself is the few hours
  in which the female will accept the male: about 18 hours in the cow, 30–40 in the sow, and
  almost silent in the goat. The cycle runs in four phases — *pro-oestrus*, *oestrus*,
  *met-oestrus* and *dioestrus* — and the farmer's whole breeding calendar is built on recognising
  the second of them.
]

#v(3pt)

#table(
  columns: (1.15fr, 2.4fr, 1.5fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Figure for a cow],
  ),
  [Service], [the mating, natural or artificial], [at the standing heat],
  [Conception], [the fertilisation of the egg], [within 12 hours of service],
  [Gestation], [pregnancy, from conception to birth], [283 days],
  [Parturition], [the act of giving birth], [calving, usually unaided],
  [Lactation], [the period of milk production], [305 days in a dairy cow],
  [Dry period], [the rest before the next calving], [60 days],
  [Weaning], [the removal of the young from the milk], [8–12 weeks for a calf],
)

// ============================================================================
== 2.6 The Other Systems the Paper Names

#table(
  columns: (1.05fr, 2.1fr, 2.0fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Main parts],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The fact the paper uses],
  ),
  [Skeletal], [bones, joints, the vertebral column], [the number of lumbar vertebrae fixes the length of the loin, and the butcher grades on it],
  [Muscular], [skeletal and smooth muscle], [meat is muscle; exercise makes it darker and tougher],
  [Respiratory], [nostrils, trachea, lungs], [pneumonia is the commonest killer in a damp, crowded house],
  [Circulatory], [heart, arteries, veins], [the pulse and the mucous membrane are the quickest health check],
  [Urinary], [kidneys, bladder], [the colour of the urine is the first sign of a water problem],
  [Skin and coat], [epidermis, hair, horns, hooves], [a rough coat means parasites or poor feed],
  [Mammary], [udder and teats], [mastitis is an infection of the quarter, not of the whole udder],
)

// ============================================================================
== 2.7 Four Worked Questions

#worked-example(
  1,
  "The order of the compartments",
  [The parts of the ruminant stomach, in the order in which feed passes through them, are

    A. rumen, reticulum, omasum, abomasum \\
    B. reticulum, rumen, abomasum, omasum \\
    C. abomasum, omasum, reticulum, rumen \\
    D. rumen, omasum, reticulum, abomasum],
  [
    *Step 1 — fix the two ends.* Feed enters at the rumen and leaves at the abomasum, the true
    stomach.

    *Step 2 — place the middle two.* The reticulum lies against the rumen and sorts the feed; the
    omasum follows it and absorbs water.

    *Step 3 — check the sequence.* Rumen, reticulum, omasum, abomasum — the order the textbook
    prints and the order the examiner builds his distractors by shuffling.

    *Answer: A.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Why the hen needs grit",
  [A poultry farmer who feeds his birds only maize and water notices that they do not digest the
  grain well. The most likely explanation is that the birds lack

    A. a crop \\
    B. grit in the gizzard \\
    C. a caecum \\
    D. a proventriculus],
  [
    *Step 1 — recall the bird's anatomy.* A hen has no teeth. The feed is stored in the crop and
    ground in the gizzard.

    *Step 2 — see what does the grinding.* The gizzard is a muscular mill, and a mill needs stones.
    Without grit the grain passes through whole.

    *Step 3 — dismiss the alternatives.* The crop stores, the caeca ferment a little fibre, and the
    proventriculus secretes acid; none of them can grind. Only the grit can.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The sow and the calendar",
  [A sow was served on 1 March. Her expected farrowing date is about

    A. 1 May \\
    B. 23 June \\
    C. 9 July \\
    D. 1 September],
  [
    *Step 1 — recall the gestation.* The sow carries for 114 days, about three months, three weeks
    and three days.

    *Step 2 — count forward.* From 1 March, three months brings 1 June; three weeks brings 22 June;
    three days brings 25 June.

    *Step 3 — choose the nearest option.* 23 June is the closest figure in the list; 1 May is 61
    days, 9 July is 130, and 1 September is 184.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The cow that stopped chewing",
  [A dairy cow is off its feed and has stopped chewing the cud. The most immediate concern is that

    A. the rumen bacteria are not functioning \\
    B. the animal has mastitis \\
    C. the animal is in oestrus \\
    D. the abomasum has grown larger],
  [
    *Step 1 — link the sign to the organ.* Rumination depends on the rumen flora producing gas and
    acid; if the cud has stopped, the fermentation has slowed.

    *Step 2 — explain the mechanism.* A sick rumen means no volatile fatty acids, no microbial
    protein and no appetite — the animal is in a spiral that can end in bloat.

    *Step 3 — dismiss the rest.* Mastitis is an udder infection, oestrus is a normal cycle, and the
    abomasum does not enlarge. The rumen is the organ the sign points to.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 2.8 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The true stomach of the ruminant is the], [rumen], [reticulum], [omasum], [abomasum])

#mcq(2, [The gestation period of the goat is about], [114 days], [150 days], [283 days], [21 days])

#mcq(3, [In the fowl, the feed is ground in the], [crop], [gizzard], [proventriculus], [caecum])

#mcq(4, [The period during which a female animal accepts the male is called], [gestation], [lactation], [oestrus], [parturition])

#answer-key-grid(("D", "B", "B", "C"))

#answer-notes((
  ("D", [The abomasum is glandular and secretes acid; the rumen is a fermentation vat.]),
  ("B", [Goat 150 days; ewe 148; sow 114; cow 283.]),
  ("B", [The gizzard is the muscular mill; the crop only stores, the proventriculus only secretes.]),
  ("C", [Oestrus is the heat; the cycle is the whole interval from one heat to the next.]),
))

#diagram-fig("diagrams/recap_agr2_ch02.svg",
  "Chapter 2 recap card: the four compartments, the monogastric gut, the fowl and the reproductive clock.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The ruminant has four compartments — rumen, reticulum, omasum, abomasum — and its bacteria
    digest the fibre that the animal itself cannot. It ruminates for six to eight hours a day, and
    a cow that stops chewing is a cow in trouble. The monogastric has one stomach and a short gut,
    and the fowl adds a crop to store and a gizzard to grind. Reproduction runs on a clock: oestrus
    every 21 days in the cow, 114 days of gestation in the sow, 283 in the cow, and 21 days of
    incubation for the egg.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Name the four compartments of the ruminant stomach, in order.],
  [Explain, in one sentence, what the rumen bacteria do for the cow.],
  [State four differences between the pig's gut and the fowl's.],
  [Give the gestation period of the cow, the ewe, the doe and the sow.],
  [Define oestrus, service, conception, parturition and lactation.],
))

#concept-box("Carry this into Chapter 3")[
  Because the rumen bacteria digest fibre, a cow can be fed on grass and straw; because the pig
  cannot, it must be fed grain and cake. That single sentence is the bridge into nutrition: the
  animal's anatomy decides which feeds are possible, and the farmer's arithmetic decides which of
  the possible feeds is cheapest.
]

#include "drill_ch02.typ"
