#import "template.typ": *

#current-chapter.update("Chapter 3: Animal Nutrition and Feeding")

#pagebreak()

#chapter-opener(
  3,
  "Animal Nutrition and Feeding",
  subtitle: "The Six Nutrients, the Four Feed Classes, and the Arithmetic of a Balanced Ration",
  syllabus-ref: "Part II • Animal Nutrition",
  utme-weight: "6 Qs a year",
  running: "Animal Nutrition and Feeding",
)

#focus-radar(
  objectives: (
    "Name the six classes of nutrient and state the function of each.",
    "Classify feedstuffs into roughages, concentrates, supplements and additives.",
    "State the factors that determine an animal's nutrient requirement.",
    "Balance a simple ration using the Pearson square.",
    "Identify the common feed poisons and anti-nutritional factors.",
  ),
  hotspots: (
    "“The nutrient required in the largest quantity by farm animals is …” — *water*. The trap offers carbohydrate, because it is the largest part of the *feed*.\n",
    "“Maize is classified as a …” — concentrate (energy feed). The trap offers *roughage*, because maize is a plant.\n",
    "“A feed that supplies protein is…” — groundnut cake, soya bean meal, fish meal. The trap offers *cassava peel*, which is almost pure fibre and starch.\n",
    "“The Pearson square is used to …” — balance two feeds to a target nutrient percentage. The trap offers *estimate the feed intake*, which is read from a table, not computed.\n",
  ),
  trap-summary: "Three slips. (1) Confusing *roughage* with *concentrate* by thinking in terms of the plant rather than the fibre: roughage has more than 18 per cent crude fibre. (2) Forgetting that water is a nutrient and the largest requirement. (3) Treating the Pearson square as a division: it is a subtraction on the diagonals, and the answer is a *ratio*, not a weight.",
)

// ============================================================================
== 3.1 The Six Classes of Nutrient

#table(
  columns: (0.95fr, 1.75fr, 2.35fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Nutrient],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Where it comes from],
  ),
  [Water], [the medium of every reaction; carries nutrients and heat; the largest need of all], [the trough, the stream, the succulent feed],
  [Carbohydrate], [energy for movement, growth and milk; the bulk of every ration], [maize, sorghum, millet, cassava, rice bran],
  [Protein], [growth, muscle, milk, eggs, the repair of tissue], [groundnut cake, soya bean meal, fish meal, palm kernel cake],
  [Fat], [concentrated energy; carries the fat-soluble vitamins], [oil seeds, palm oil, tallow, maize germ],
  [Mineral], [bone and shell, the electrolyte balance, the action of enzymes], [bone meal, oyster shell, salt lick, limestone],
  [Vitamin], [the small regulators — vision, clotting, growth, reproduction], [green forage, sunlight, premix],
)

#v(3pt)

#rule-box("Deficiency and excess both show")[
  A *deficiency* of a nutrient produces a named symptom: night blindness without vitamin A, rickets
  without vitamin D or calcium, poor clotting without vitamin K, anaemia without iron or copper. An
  *excess* is equally dangerous — too much salt, too much urea, too much of a mineral — and the
  paper tests both directions.
]

// ============================================================================
== 3.2 The Four Classes of Feed

#table(
  columns: (1.0fr, 1.55fr, 2.4fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Examples],
  ),
  [Roughage], [more than 18 per cent crude fibre; bulky and low in energy], [grass, hay, silage, straw, maize stover, groundnut haulm],
  [Concentrate], [less than 18 per cent crude fibre; rich in energy or protein], [maize, sorghum, cassava chips, groundnut cake, soya bean meal],
  [Supplement], [a feed added to correct a specific lack], [fish meal, bone meal, oyster shell, salt, premix, urea for ruminants],
  [Additive], [a non-nutritive substance added for a purpose], [antibiotic growth promoter, coccidiostat, antioxidant, colourant],
)

#v(4pt)

#text(size: 9.6pt)[
  The *concentrates* divide again into *energy feeds* — the cereals and roots, with starch as their
  bulk — and *protein feeds*, the cakes and meals left after oil is pressed. The test is simple:
  an energy feed has less than 20 per cent crude protein, a protein feed has more. Groundnut cake
  at 40 per cent and soya bean meal at 44 per cent are the two the paper names most often.
]

// ============================================================================
== 3.3 What Decides the Requirement

#table(
  columns: (1.1fr, 2.35fr, 1.35fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it changes the ration],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),
  [Age and weight], [a young animal grows tissue; an old one only maintains it], [a calf needs 16 per cent protein; a dry cow 10],
  [Production stage], [milk and eggs take protein and calcium out of the body], [a laying hen needs 16–18 per cent protein and 3.5 per cent calcium],
  [Pregnancy], [the last third of gestation is when the foetus grows], [a ewe's ration is raised in the last six weeks],
  [Work], [draught animals burn energy], [a plough ox is fed extra maize],
  [Climate], [cold and wet weather raise the energy need], [the same cow eats more in the harmattan],
  [Health], [a sick animal eats less and absorbs less], [a worm burden means a higher protein ration],
)

// ============================================================================
== 3.4 The Pearson Square, Step by Step

The square mixes two feeds of known protein content to reach a target.

#text(size: 9.8pt)[
  *Worked mix.* A farmer wants an 18 per cent protein ration from maize at 9 per cent and groundnut
  cake at 40 per cent.
]

#table(
  columns: (1.6fr, 1.0fr, 2.2fr),
  inset: (x: 6pt, y: 4.0pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it means],
  ),
  [1. Write the two feeds and the target], [9, 40, 18], [maize 9 %; cake 40 %; target 18 %],
  [2. Subtract on the first diagonal], [40 − 18 = 22], [22 parts of maize],
  [3. Subtract on the second diagonal], [18 − 9 = 9], [9 parts of groundnut cake],
  [4. Write the ratio], [22 : 9], [22 kg maize to 9 kg cake],
  [5. Convert to a percentage of the mix], [22 ÷ 31 and 9 ÷ 31], [71 per cent maize, 29 per cent cake],
  [6. Check], [(0.71 × 9) + (0.29 × 40)], [6.4 + 11.6 = 18 per cent — the check agrees],
)

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE THREE MISTAKES IN THE SQUARE]
  #v(3pt)
  #text(size: 9.6pt)[
    *Subtracting the wrong way round* — always target minus feed, on both diagonals, and take the
    positive figure. *Writing the ratio upside down* — the parts opposite a feed belong to it: the
    40 − 18 sits on the maize side. *Forgetting to add minerals* — a square balances protein only;
    the salt, bone meal and premix go in afterwards, at 1–2 per cent of the mix.
  ]
]

// ============================================================================
#diagram-fig("diagrams/agr2_ch03_nutrition.svg",
  "3.1 — the six classes of nutrient, and the Pearson square worked from 9 per cent and 40 per cent to 18 per cent.", width: 98%)

== 3.5 Feeding Practice

#table(
  columns: (1.05fr, 2.45fr, 1.3fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Practice],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it is done],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why],
  ),
  [Feeding standard], [a table of the nutrients each class of stock needs], [it replaces the guess with a figure],
  [Group feeding], [animals of one age and stage fed together], [the strong do not starve the weak],
  [Feed intake], [2.5–3 per cent of body weight a day for a ruminant], [a 300 kg heifer eats 7.5–9 kg dry matter],
  [Water], [free access; 40–80 litres a day for a cow], [a cow gives milk that is 87 per cent water],
  [Salt lick], [a block in the pen, replaced weekly], [sodium and chlorine, and appetite],
  [Feed storage], [dry, cool, off the floor, closed against rodents], [mould produces aflatoxin],
  [Feed transition], [change over seven to ten days], [the rumen bacteria need time to adapt],
)

// ============================================================================
== 3.6 The Poisons in the Feed

#table(
  columns: (1.15fr, 2.35fr, 1.4fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Toxin],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it comes from],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How to avoid it],
  ),
  [Hydrocyanic acid], [fresh cassava peel and root], [dry it, ferment it, or limit it to a fifth of the ration],
  [Gossypol], [whole cottonseed and cottonseed cake], [use the cake sparingly; pigs and young stock are most at risk],
  [Aflatoxin], [mouldy groundnut and maize], [buy dry, store dry, never feed a mouldy bag],
  [Urea poisoning], [urea fed to a ruminant in one large dose], [mix it into the ration; never feed it alone or to a hungry animal],
  [Nitrate], [young, drought-stressed forage], [do not graze the fresh regrowth after rain],
  [Salt], [too much salt in the mix or a broken lick], [keep the lick off the ground; supply water],
)

// ============================================================================
== 3.7 Four Worked Questions

#worked-example(
  1,
  "The largest requirement",
  [The nutrient required by farm animals in the largest quantity is

    A. carbohydrate \\
    B. protein \\
    C. water \\
    D. fat],
  [
    *Step 1 — read the word "required".* The question asks what the animal needs most of, not what
    the feed contains most of.

    *Step 2 — compare the quantities.* A cow drinks 40–80 litres a day and its body is 60–70 per
    cent water; its feed is mostly carbohydrate but the water is the greater weight.

    *Step 3 — dismiss the trap.* Carbohydrate is the largest part of the *dry matter*, and that is
    why the option is there.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classify the feed",
  [Which of the following is a protein concentrate?

    A. Maize \\
    B. Cassava peel \\
    C. Groundnut cake \\
    D. Maize stover],
  [
    *Step 1 — use the definition.* A concentrate has less than 18 per cent fibre; a protein
    concentrate has more than 20 per cent crude protein.

    *Step 2 — test each.* Maize is an energy concentrate at about 9 per cent protein; cassava peel
    is a roughage; maize stover is a roughage; groundnut cake is 40 per cent protein.

    *Step 3 — answer.* Groundnut cake is the only protein concentrate in the list.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "A ration in three lines",
  [A farmer mixes maize at 10 per cent protein with fish meal at 55 per cent to make a 20 per cent
  ration. What is the ratio of maize to fish meal?

    A. 35 : 10 \\
    B. 10 : 35 \\
    C. 45 : 10 \\
    D. 20 : 55],
  [
    *Step 1 — write the square.* Maize 10, fish meal 55, target 20.

    *Step 2 — subtract on the diagonals.* 55 − 20 = 35 parts maize; 20 − 10 = 10 parts fish meal.

    *Step 3 — check the direction.* The answer should be mostly maize, because fish meal is far
    richer than the target. 35 : 10 is 78 per cent maize, which agrees.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The bag that killed the herd",
  [A farmer who had never used urea mixed two handfuls into a bucket of water and gave it to his
  cattle, which had eaten nothing that morning. Three died within the hour. The mistake was

    A. the dose and the empty rumen \\
    B. the water, which should have been warm \\
    C. the time of day \\
    D. the breed of cattle],
  [
    *Step 1 — recall how urea is used.* Urea supplies non-protein nitrogen to the rumen bacteria,
    which turn it into microbial protein — but only at 1–2 per cent of the ration.

    *Step 2 — see what went wrong twice.* The dose was unmeasured and far too high, and the animals
    were hungry: an empty rumen absorbs the ammonia at once and the liver cannot clear it.

    *Step 3 — dismiss the distractors.* Water temperature, time of day and breed have nothing to do
    with it; the dose and the empty rumen are the whole mechanism.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.8 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [The feed with the highest crude fibre content among these is], [maize], [groundnut cake], [maize stover], [fish meal])

#mcq(2, [The Pearson square is used to], [estimate the water intake], [balance two feeds to a target nutrient level], [count the animals on a pasture], [calculate the gestation period])

#mcq(3, [A feed containing 40 per cent crude protein is], [maize], [cassava chips], [groundnut cake], [rice bran])

#mcq(4, [Aflatoxin in a feed store is produced by], [bacteria], [moulds], [insects], [viruses])

#answer-key-grid(("C", "B", "C", "B"))

#answer-notes((
  ("C", [Stover is a roughage with more than 18 per cent fibre; the other three are concentrates.]),
  ("B", [The square mixes two feeds of known analysis to a target percentage.]),
  ("C", [Groundnut cake is a protein concentrate; the others are energy feeds or roughages.]),
  ("B", [The *Aspergillus* mould grows on damp groundnut and maize and produces the toxin.]),
))

#diagram-fig("diagrams/recap_agr2_ch03.svg",
  "Chapter 3 recap card: the six nutrients, the four feed classes, the ration and the square.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    An animal needs water, carbohydrate, protein, fat, minerals and vitamins, and it needs them in
    a ration balanced for its age, its production and its climate. Feeds are roughages if they are
    fibrous and concentrates if they are not, and the concentrates divide into energy feeds and
    protein feeds. The Pearson square mixes two of them to a target percentage by subtracting on
    the diagonals, and the answer is a ratio. What the animal cannot use, and what the store
    allows to spoil, are the two ways a cheap feed becomes an expensive one.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Name the six classes of nutrient and one function of each.],
  [Distinguish roughage from concentrate, and energy feed from protein feed.],
  [State four factors that change an animal's nutrient requirement.],
  [Balance a 16 per cent ration from maize at 9 per cent and soya bean meal at 44 per cent.],
  [Name three feed poisons and the practice that prevents each.],
))

#concept-box("Carry this into Chapter 4")[
  A ration is only worth its cost if the animal is healthy enough to eat it. The next chapter takes
  the other half of the same problem: what goes wrong inside the animal, how the farmer recognises
  it before the herd does, and what vaccination, quarantine and sanitation actually buy.
]

#include "drill_ch03.typ"
