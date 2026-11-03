#import "template.typ": *

#current-chapter.update("Chapter 5: Livestock Production and Management")

#pagebreak()

#chapter-opener(
  5,
  "Livestock Production and Management",
  subtitle: "The Poultry House, the Cattle Kraal, the Pig Pen — and the Breeding That Improves Them",
  syllabus-ref: "Part II • Livestock Husbandry",
  utme-weight: "8 Qs a year",
  running: "Livestock Production and Management",
)

#focus-radar(
  objectives: (
    "Describe the management of poultry from day-old chick to market.",
    "Describe the management of cattle, sheep, goats and pigs.",
    "Distinguish the deep-litter and battery-cage systems of poultry housing.",
    "Name the routine management practices and the age at which each is done.",
    "Compare the breeding systems and select breeding stock on stated criteria.",
  ),
  hotspots: (
    "“The brooding temperature for day-old chicks is about …” — 32–35 °C, falling by 3 °C a week. The trap offers 25 °C, the temperature at which the birds are *finished*.\n",
    "“Debeaking in poultry is done to …” — prevent cannibalism and feather pecking. The trap offers *improve feed conversion*, which it does not do.\n",
    "“A farrowing pen is used for …” — the sow at the time of birth. The trap offers *the boar*, or the *weaner*, both wrong.\n",
    "“Cross-breeding is preferred to inbreeding because …” — it gives hybrid vigour. The trap offers *it fixes the type*, which is what inbreeding does.\n",
  ),
  trap-summary: "Three slips. (1) Mixing up the poultry vaccines: Marek's at the hatchery, Newcastle at day 1 and again at three weeks, Gumboro at two weeks, fowl pox at six to eight weeks. (2) Forgetting that the *boar* is the male pig, the *sow* the female, the *gilt* a female before her first litter, and the *barrow* a castrated male. (3) Treating castration as a health measure when it is a management measure: it makes the male quieter and fatter, and it is done early.",
)

// ============================================================================
== 5.1 Poultry

Poultry is the fastest-returning livestock enterprise on a Nigerian farm: a broiler is ready in
eight weeks and a layer begins to lay at eighteen. It is also the least forgiving — a brooder that
is too cold on the first night kills more chicks than any disease.

#table(
  columns: (1.0fr, 1.5fr, 2.35fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Kept for],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The cycle],
  ),
  [Broiler], [meat], [day-old to 1.8–2.2 kg in 6–8 weeks; feed conversion 1.7 : 1],
  [Layer], [eggs], [point of lay at 18 weeks; 300 eggs in the first year; culled at 72 weeks],
  [Cockerel], [meat, and breeding], [the local dual-purpose bird, sold at 16–20 weeks],
  [Turkey], [meat], [20–24 weeks to market; more delicate than the fowl],
  [Guinea fowl], [meat, and the alarm], [the local bird; 26–28 days to hatch, 16 weeks to market],
  [Duck], [meat, eggs], [28 days to hatch; needs water for the head, not for swimming],
)

#v(4pt)

#table(
  columns: (1.05fr, 1.95fr, 1.85fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Housing],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Its cost],
  ),
  [Deep litter], [a floor of wood shavings 5–8 cm deep; 10 birds per m²], [cheap; the litter must be turned and replaced, and coccidiosis lurks in it],
  [Battery cage], [wire cages stacked in tiers; 3–4 birds a cage], [expensive; eggs stay clean, but the birds cannot exercise and cannibalism rises],
  [Slatted floor], [a wire or timber floor above a pit], [moderate; cleaner than litter, and colder in the harmattan],
  [Free range], [the birds scavenge by day and roost by night], [almost free; the output is low and the losses are high],
)

#v(4pt)

#table(
  columns: (0.95fr, 1.35fr, 2.35fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Age],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Task],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Detail],
  ),
  [Day 1], [brood], [32–35 °C under the hover; glucose water; Marek's vaccine at the hatchery],
  [Day 1], [Newcastle vaccine], [intra-ocular or intra-nasal, one drop per bird],
  [Day 7–10], [debeak], [trim the upper beak tip to stop cannibalism],
  [Week 2], [Gumboro vaccine], [in the drinking water, with the water withheld for two hours first],
  [Week 3], [Newcastle booster], [repeat the day-1 vaccine],
  [Week 6–8], [fowl pox vaccine], [the wing web; layers only],
  [Week 8], [market or point of lay], [broilers sold; pullets moved to the laying house at 16–18 weeks],
  [Week 18], [lighting programme], [14–16 hours of light to start lay],
)

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[READING THE BROODER]
  #v(3pt)
  #text(size: 9.6pt)[
    Chicks huddled under the hover and cheeping loudly are *cold*; chicks spread to the walls and
    gasping are *hot*; chicks evenly spread, eating and drinking, are *comfortable*. The birds
    tell the farmer the temperature long before the thermometer does — and the paper makes a
    question of it.
  ]
]

// ============================================================================
#diagram-fig("diagrams/agr2_ch05_management.svg",
  "5.1 — the broiler cycle from chick to table, the breeding systems, and the four management tasks.", width: 98%)

== 5.2 Cattle

#table(
  columns: (1.05fr, 2.1fr, 1.85fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Enterprise],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What the herd is for],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The management that matters],
  ),
  [Dairy], [milk, and the calf], [calving every 12–13 months; a 305-day lactation; milking twice a day; mastitis hygiene],
  [Beef], [meat], [a long growing period; good pasture; castration of the non-breeding males; finishing on concentrate],
  [Dual purpose], [milk and meat], [the White Fulani and the Sokoto Gudali; the compromise most Nigerian herds make],
  [Draught], [power], [oxen trained young; fed well in the working season; rested in the dry season],
)

#v(4pt)

#table(
  columns: (1.1fr, 2.0fr, 1.9fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Practice],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[When and how],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why],
  ),
  [Dehorning], [calves, by paste or hot iron], [safety in the crush; less bruising],
  [Castration], [bull calves at 2–4 months], [quieter, fatter, no unwanted calves],
  [Identification], [ear notch, tag or brand at birth], [the record and the breeding plan],
  [Hoof trimming], [twice a year], [lameness and foot rot],
  [Dipping], [weekly in the tick season], [ticks and tick-borne disease],
  [Milking], [twice a day, at fixed hours, hands washed], [yield and mastitis control],
)

// ============================================================================
== 5.3 Sheep and Goats

#table(
  columns: (1.05fr, 1.6fr, 2.3fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Task],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Sheep],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Goat],
  ),
  [Housing], [a shed open to the east, dry floor, 1 m² per head], [same; the West African Dwarf needs a raised slatted floor in the wet south],
  [Grazing], [communal or fenced range; browse and grass], [browse — leaves, shrubs and kitchen waste; a browser, not a grazer],
  [Breeding], [ewe lambs at 6–9 months; 148 days; 1–2 lambs], [doe kids at 6–9 months; 150 days; 1–2 kids],
  [Feeding], [grass, legume hay, salt lick, crop residue], [browse, legume, kitchen waste, concentrate for the milking doe],
  [Health], [deworming, foot rot, sheep pox, external parasites], [deworming, mange, pneumonia, PPR],
  [Products], [mutton, wool (limited in Nigeria), skin], [chevon, milk, skin — the Red Sokoto skin is the export product],
)

// ============================================================================
== 5.4 Pigs, Rabbits and the Micro-livestock

#table(
  columns: (1.05fr, 2.15fr, 1.8fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Animal],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The management that decides the profit],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The one number to remember],
  ),
  [Pig], [a concrete floor, washed daily; a farrowing pen with a creep rail for the piglets], [114 days' gestation; 8–12 piglets; iron injection in the first three days],
  [Rabbit], [a hutch off the ground, shade, a nest box for the doe], [31 days; 6–10 kittens; the doe kindles in the dark],
  [Snail], [a shaded pen, moist soil, leaves and fruit waste], [9–12 months to table size; the giant African snail],
  [Honey bee], [a hive in the shade, away from people and animals], [one hive yields 15–25 kg of honey a year],
)

#v(4pt)

#text(size: 9.6pt)[
  The pig is the most efficient converter of concentrate on the farm — a piglet can reach 90 kg in
  six months — and the least tolerant of dirt. The rabbit is the cheapest meat for a household,
  because it eats forage and kitchen waste and needs no grazing land. Both are *micro-livestock*:
  small, quick, and suited to the compound rather than the ranch.
]

// ============================================================================
== 5.5 Breeding and Selection

#table(
  columns: (1.05fr, 2.0fr, 1.95fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Used for],
  ),
  [Inbreeding], [mating close relatives; fixes type and exposes defects], [a stud that wants a uniform line, and can afford the loss],
  [Line breeding], [one ancestor repeated at a distance], [keeping a family while limiting the damage],
  [Out-crossing], [unrelated animals of the same breed], [restoring vigour inside a breed],
  [Cross-breeding], [two different breeds], [hybrid vigour — the Nigerian route to better stock],
  [Up-grading], [a pure sire onto local dams, generation after generation], [improving a village herd without buying females],
  [Artificial insemination], [semen from a proven sire, introduced mechanically], [one bull serves a district; no disease travels],
)

#v(4pt)

#text(size: 9.7pt)[
  *Selection* is the choice of which animals to keep. The criteria are *growth rate*, *feed
  conversion*, *milk yield*, *disease resistance*, *conformation* and *temperament*, and every one
  of them is measured against the record: an animal without a record cannot be selected, only
  guessed at. That is why the next chapter but one is about farm records.
]

// ============================================================================
== 5.6 Four Worked Questions

#worked-example(
  1,
  "The first night",
  [The recommended brooding temperature for day-old chicks is about

    A. 20 °C \\
    B. 25 °C \\
    C. 32 °C \\
    D. 40 °C],
  [
    *Step 1 — recall the figure.* A chick cannot regulate its own body temperature for the first
    fortnight, so the brooder supplies it: 32–35 °C on day one.

    *Step 2 — recall the fall.* The temperature is lowered by about 3 °C a week, reaching 24 °C at
    about three weeks.

    *Step 3 — choose.* 32 °C is the day-one figure; 25 °C is where the house ends up, and 40 °C
    would kill the chicks.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The pen with the rail",
  [A farrowing pen with a creep rail is provided for a

    A. boar at service \\
    B. sow at the time of giving birth \\
    C. weaner at market weight \\
    D. gilt before puberty],
  [
    *Step 1 — read the word.* *Farrowing* is the sow's act of giving birth.

    *Step 2 — see why the rail.* The rail runs round the pen at floor level so that the piglets can
    escape under it when the sow lies down.

    *Step 3 — dismiss the others.* A boar, a weaner and a gilt are not giving birth, and none of
    them has a litter to protect.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The cross that carries both",
  [A farmer crosses a West African Dwarf doe with a Sahel buck. The advantage of the first-cross
  offspring is that it

    A. is purebred \\
    B. combines hardiness with size, and shows hybrid vigour \\
    C. cannot reproduce \\
    D. is smaller than either parent],
  [
    *Step 1 — identify the two parents.* The Dwarf is small, hardy and trypanotolerant; the Sahel is
    taller and faster-growing but less adapted to the humid south.

    *Step 2 — recall the first cross.* The F1 carries half of each parent and typically grows faster
    than either — *hybrid vigour* — while keeping much of the Dwarf's hardiness.

    *Step 3 — dismiss the rest.* A first cross is not purebred, is fully fertile, and is larger than
    the Dwarf, not smaller.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The vaccine on the wrong day",
  [A poultry farmer vaccinates his birds against Gumboro at day 1 and against Newcastle at two
  weeks. In the sixth week the flock breaks with Newcastle. The most likely explanation is that

    A. the Gumboro vaccine was wasted \\
    B. the Newcastle vaccine was given too early and the booster was never given \\
    C. the birds were too old for any vaccine \\
    D. Newcastle cannot be prevented],
  [
    *Step 1 — recall the schedule.* Newcastle is given at day 1 and repeated at three weeks, because
    the maternal antibody the chick carries fades and the first dose may be neutralised by it.

    *Step 2 — see what was missed.* The farmer gave one dose at two weeks and no booster, so the
    flock was never properly covered.

    *Step 3 — explain the timing.* A single dose in a young bird with maternal antibody gives
    partial protection at best; the booster is the dose that completes it.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [Debeaking in poultry is carried out to], [improve egg size], [prevent cannibalism], [increase feed intake], [control coccidiosis])

#mcq(2, [The gestation period of the sow is], [114 days], [150 days], [283 days], [31 days])

#mcq(3, [A castrated male pig is called a], [boar], [gilt], [barrow], [sow])

#mcq(4, [The main advantage of cross-breeding is], [it fixes the type], [hybrid vigour], [it reduces the feed], [it prevents disease])

#answer-key-grid(("B", "A", "C", "B"))

#answer-notes((
  ("B", [The trimmed beak stops feather pecking and cannibalism in a crowded house.]),
  ("A", [Sow 114 days; ewe 148; doe 150; cow 283; rabbit 31.]),
  ("C", [Boar is the entire male, gilt the young female, sow the mature female, barrow the castrated male.]),
  ("B", [Crossing two breeds gives the first cross more vigour than either parent — the opposite of inbreeding.]),
))

#diagram-fig("diagrams/recap_agr2_ch05.svg",
  "Chapter 5 recap card: the poultry cycle, the breeding systems and the four management tasks.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Poultry runs on a calendar of eight weeks and a brooder that starts at 32 °C; cattle on a
    calving interval and a milking routine; sheep and goats on browse, salt and a dry floor; pigs
    on a clean pen and a farrowing rail. In every species the same four inputs decide the output —
    breeding, feeding, health and housing — and the breeding is decided by records, not by the eye.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Give the brooding temperature for day-old chicks and the weekly fall.],
  [State the vaccination schedule for Newcastle and Gumboro.],
  [Name the male and female of cattle, sheep, goats and pigs.],
  [Describe the farrowing pen and explain the creep rail.],
  [Define inbreeding, cross-breeding, up-grading and artificial insemination.],
))

#concept-box("Carry this into Chapter 6")[
  Everything in this chapter assumes land — a paddock, a range, a pond. The next chapter takes the
  other two uses of the farm's land and water: the fish pond that turns a swamp into protein, and
  the woodlot that turns a hillside into timber, fuel and shade, both of them without displacing
  the crop.
]

#include "drill_ch05.typ"
