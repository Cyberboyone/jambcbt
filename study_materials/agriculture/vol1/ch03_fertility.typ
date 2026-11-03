#import "template.typ": *

#current-chapter.update("Chapter 3: Soil Fertility, Manure and Fertiliser")

#pagebreak()

#chapter-opener(
  3,
  "Soil Fertility, Manure and Fertiliser",
  subtitle: "The Sixteen Nutrients, the Two Ways to Supply Them, and How to Work Out How Much",
  syllabus-ref: "Part I • Soil Science",
  utme-weight: "7 Qs a year",
  running: "Soil Fertility, Manure and Fertiliser",
)

#focus-radar(
  objectives: (
    "Name the sixteen plant nutrients and separate the macro- from the micronutrients.",
    "State the role of each of the three major nutrients and the symptom of its deficiency.",
    "Compare organic manure with inorganic fertiliser, and state when each is used.",
    "Calculate the quantity of a fertiliser needed to supply a stated amount of nutrient.",
    "Identify the types of soil erosion and the conservation measures that control each.",
  ),
  hotspots: (
    "“Which of these is a micronutrient?” — boron, zinc, copper, iron, manganese, molybdenum or chlorine. The trap offers *magnesium* or *sulphur*, which are macronutrients used in smaller amounts.\n",
    "“Nitrogen deficiency is shown by …” — yellowing of the *older* leaves, because nitrogen is mobile and the plant moves it to the growing tip. The trap offers *yellowing of the young leaves*, which is the symptom of an immobile nutrient such as iron.\n",
    "“Farmyard manure improves the soil mainly by …” — adding organic matter, which improves structure and water-holding as well as nutrients. The trap offers *supplying nitrogen quickly*, which is what fertiliser does.\n",
    "“A fertiliser labelled 20-10-10 contains …” — 20 per cent N, 10 per cent P₂O₅ and 10 per cent K₂O. The trap offers *20 kg of nitrogen in the bag*, which confuses a percentage with a weight.\n",
  ),
  trap-summary: "Three slips. (1) Reading the three figures on a fertiliser bag as weights instead of percentages. (2) Treating manure and fertiliser as alternatives when the good farmer uses both — manure for the soil, fertiliser for the season. (3) Forgetting that the first step in any fertiliser calculation is to convert the *nutrient* required into the *product* to be bought.",
)

// ============================================================================
== 3.1 The Sixteen Nutrients

A plant is mostly water and carbon, taken from the air and the rain. The rest — about five per cent
of its dry weight — comes from the soil, and it comes as sixteen chemical elements. Six of them are
needed in large amounts (macronutrients) and ten in very small amounts (micronutrients), but the
small ones are not optional: a shortage of boron can ruin a crop as surely as a shortage of nitrogen.

#table(
  columns: (0.9fr, 1.3fr, 2.0fr, 1.95fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Deficiency symptom],
  ),
  [Macro], [Nitrogen (N)], [leaves, stems, the green colour, protein], [older leaves yellow; stunted, pale plant],
  [Macro], [Phosphorus (P)], [roots, flowering, seed and fruit formation, energy transfer], [purple or reddish stems and leaves; poor root and seed],
  [Macro], [Potassium (K)], [strength of stem, disease resistance, fruit quality, water regulation], [leaf edges scorch and die; weak stalks],
  [Macro], [Calcium (Ca)], [cell walls, root tips, fruit firmness], [blossom-end rot of tomato; curled new leaves],
  [Macro], [Magnesium (Mg)], [the chlorophyll molecule], [older leaves yellow *between* the veins],
  [Macro], [Sulphur (S)], [proteins, oils, the flavour of onions and brassicas], [young leaves pale; thin stems],
  [Micro], [Iron (Fe)], [chlorophyll formation, respiration], [young leaves yellow, veins still green],
  [Micro], [Manganese (Mn)], [photosynthesis, enzyme activation], [grey flecks between the veins],
  [Micro], [Copper (Cu)], [enzymes, pollen fertility], [young leaves wilt and die back],
  [Micro], [Zinc (Zn)], [growth hormones, enzyme systems], [short internodes, small leaves, "little leaf"],
  [Micro], [Boron (B)], [cell division, pollen tube growth, sugar transport], [hollow stem, poor fruit set],
  [Micro], [Molybdenum (Mo)], [nitrogen fixation and nitrate reduction], [pale, narrow leaves; poor pod fill in legumes],
  [Micro], [Chlorine (Cl)], [water balance, photosynthesis], [rare; wilting and stubby roots],
)

#v(2pt)

Three of these carry almost every question: nitrogen for the *leaf*, phosphorus for the *root and
seed*, potassium for the *strength and the fruit*. Learn the three roles as verbs and the deficiency
symptoms follow.

#diagram-fig("diagrams/agr1_ch03_nutrients.svg",
  "Figure 3.1 — what each macronutrient does, and how nitrogen moves through the soil, the plant and the air.", width: 98%)

#rule-box("The mobile-nutrient rule")[
  A nutrient the plant can move — nitrogen, phosphorus, potassium, magnesium — shows its deficiency
  first in the *older* leaves, because the plant strips them to feed the new growth. A nutrient the
  plant cannot move — iron, calcium, boron — shows first in the *young* leaves.
]

== 3.2 Manure: Feeding the Soil

Organic manure is any material of plant or animal origin added to the soil to supply nutrients and
improve its condition. Its value is double: it feeds the crop *and* it feeds the soil.

#table(
  columns: (1.25fr, 1.9fr, 2.05fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How it is used],
  ),
  [Farmyard manure], [the mixed dung and bedding of cattle, goats, poultry or pigs, rotted in a heap], [spread before ploughing, 5–10 t per hectare],
  [Compost], [plant and household waste rotted in a pit or heap until it is dark and crumbly], [spread on beds and around plants; also a nursery medium],
  [Green manure], [a crop grown to be ploughed in while still green], [mucuna, cowpea or centrosema, turned in at flowering],
  [Cover crop / mulch], [a low crop that covers the soil, or its residue laid on the surface], [reduces erosion and evaporation and adds organic matter],
  [Poultry droppings], [the richest of the common manures in nitrogen], [used sparingly, composted first, or it burns the seedlings],
  [Night soil and slurry], [human waste and animal washings, properly treated], [used only after treatment; a health matter as well as a nutrient one],
)

#v(2pt)

#table(
  columns: (1.6fr, 1.6fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Advantages of manure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Limitations],
  ),
  [adds humus and improves structure], [bulky: large quantities are needed],
  [improves water-holding and drainage at once], [nutrient content is low and variable],
  [feeds soil organisms and earthworms], [slow to release; not a rescue for a starving crop],
  [cheap, and made on the farm], [can carry weed seeds and disease if not rotted],
  [supplies several nutrients at once], [labour-heavy to collect, carry and spread],
  [reduces leaching by holding nutrients], [not enough of it is produced where it is needed],
)

#v(2pt)

#rule-box("Making compost, in six steps")[
  *1.* Choose a shaded site and clear it. *2.* Put a layer of coarse material at the bottom for
  drainage. *3.* Alternate layers of dry matter (straw, leaves) and green matter (kitchen waste,
  fresh weeds), with a little soil or dung between them. *4.* Keep it as damp as a wrung cloth.
  *5.* Turn it every two to three weeks so that air reaches the middle. *6.* It is ready when it is
  dark, crumbly and smells of earth — usually in six to twelve weeks.
]

== 3.3 Fertiliser: Feeding the Season

Inorganic fertiliser is a concentrated salt that supplies one or more nutrients in a form the root
takes up at once. It is the opposite of manure: small in bulk, high in analysis, quick in action,
and no help at all to soil structure.

#table(
  columns: (1.15fr, 0.95fr, 2.1fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Fertiliser],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Analysis],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it is for],
  ),
  [Urea], [46-0-0], [the highest nitrogen of the common fertilisers; for leaf growth and top dressing],
  [Calcium ammonium nitrate (CAN)], [26-0-0], [nitrogen with calcium; less acidifying than urea],
  [Single superphosphate (SSP)], [0-20-0], [phosphorus with calcium and sulphur; for roots and for legumes],
  [Triple superphosphate (TSP)], [0-46-0], [concentrated phosphorus for basal placement],
  [Muriate of potash (MOP)], [0-0-60], [potassium for fruit, tuber and stem strength],
  [NPK 15-15-15], [15-15-15], [the general compound for maize, rice and vegetables],
  [NPK 20-10-10], [20-10-10], [the nitrogen-heavy compound for cereals and leafy crops],
  [NPK 10-20-20], [10-20-20], [the phosphorus- and potash-heavy compound for roots and tubers],
)

#v(2pt)

The three numbers on the bag are always in the same order: *nitrogen, phosphorus, potassium*, and
always as percentages of N, P₂O₅ and K₂O. A 50 kg bag of NPK 20-10-10 contains 10 kg of nitrogen,
5 kg of P₂O₅ and 5 kg of K₂O — and 30 kg of filler.

#table(
  columns: (1.1fr, 2.0fr, 2.1fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it is done],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Best for],
  ),
  [Broadcasting], [scattered evenly over the whole plot and worked in], [close-planted cereals and pastures; quick but wasteful],
  [Banding / placement], [put in a band or a hole 5–8 cm from the plant and below the seed], [maize, sorghum, cassava; the most efficient method],
  [Side-dressing], [applied beside the growing plant after establishment], [the nitrogen top dressing at three to six weeks],
  [Foliar spray], [dissolved and sprayed on the leaves], [a quick correction of a micronutrient deficiency],
  [Fertigation], [dissolved in irrigation water], [vegetables under irrigation and greenhouses],
)

#v(2pt)

Four rules keep the fertiliser where the crop can use it. *Place it*, do not scatter it on a windy
day. *Cover it*, because urea loses nitrogen to the air as ammonia. *Split it*, so that the nitrogen
comes in two doses rather than one and the rain cannot wash it all away. *Never apply it to wet
leaves*, because the salt burns them.

#worked-example(
  1,
  "From nutrient to bag",
  [A farmer is advised to apply 60 kg of nitrogen per hectare. How much urea (46 per cent N) must he
  buy for one hectare?

    A. 60 kg \
    B. 100 kg \
    C. 130 kg \
    D. 276 kg],
  [
    *Step 1 — write the relationship.* The product needed = nutrient required ÷ the fraction of nutrient in the product.

    *Step 2 — convert the percentage.* 46 per cent is 0.46.

    *Step 3 — divide.* 60 ÷ 0.46 = 130.4 kg. He needs about 130 kg of urea.

    *Step 4 — check the sense.* Urea is under half nitrogen, so the product must weigh more than twice the nutrient. C is the only answer above 120 kg.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

== 3.4 Soil Fertility and How It Is Maintained

Fertility is the ability of a soil to supply nutrients in the amounts and proportions a crop needs.
It is not a fixed quantity: it rises with organic matter and careful cropping and falls with
continuous harvest and erosion.

#table(
  columns: (1.4fr, 2.0fr, 1.8fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Practice],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),
  [Crop rotation with legumes], [the legume fixes atmospheric nitrogen and breaks the pest cycle], [maize → cowpea → maize],
  [Fallow], [the land rests and the bush restores the organic matter], [two years of bush between crops],
  [Application of manure], [replaces organic matter and returns several nutrients], [farmyard manure before ploughing],
  [Liming], [raises pH and supplies calcium, unlocking phosphorus], [agricultural lime on acidic laterite],
  [Mulching], [protects the surface, keeps it cool and damp, and rots into humus], [straw or grass between rows],
  [Agroforestry and alley cropping], [trees pump nutrients from depth and drop them as litter], [leucaena hedges between maize rows],
  [Contour cultivation], [slows runoff, so soil and nutrients stay on the slope], [contour ridges across a hillside],
)

== 3.5 Soil Erosion and Its Control

Erosion is the *detachment and transport* of soil by water or wind. It is the fastest way to lose
fertility, because it removes the A horizon first — the part with the humus and the nutrients.

#table(
  columns: (1.15fr, 1.9fr, 2.1fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it looks like],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Control],
  ),
  [Splash], [rain drops break the crumbs and seal the surface], [mulch, cover crop, organic matter],
  [Sheet], [a thin layer is removed over a whole slope; the field looks paler, not scarred], [contour ploughing, strip cropping, grass strips],
  [Rill], [small channels a few centimetres deep], [fill the rills and plough across the slope],
  [Gully], [deep channels that cannot be crossed with a hoe], [check dams, terracing, afforestation, gully reclamation],
  [Wind], [fine material lifted and drifted; the surface becomes stony], [windbreaks, shelter belts, mulching, stubble retention],
  [Stream-bank], [the bank is undercut and collapses], [planting bamboo and grass along the bank],
)

#v(2pt)

The conditions that make erosion worse are all manageable: a bare surface, a steep slope, a long
slope, heavy rain, fine soil, and a farmer who ploughs up and down the hill instead of across it.
Remove one condition and the loss falls.

#trap-box("The three confusions the paper counts on")[
  *Manure against fertiliser.* Manure improves the soil; fertiliser feeds the season. A question that
  asks which one "improves soil structure" is not asking which one is stronger.
  *Weathering against erosion.* Weathering breaks the rock; erosion carries it away.
  *Leaching against erosion.* Leaching dissolves and carries nutrients *down* through the profile;
  erosion carries soil *sideways* off the field.
]

== 3.6 Soil Survey and Sampling

Before a fertiliser recommendation is made, the soil is sampled. A sample that does not represent
the field produces a recommendation that does not fit it, and the farmer pays for both.

#rule-box("Taking a representative sample")[
  *1.* Divide the field into areas that look alike. *2.* Walk a *W* or a zig-zag across each area.
  *3.* Take 10–20 cores from 0–15 cm depth (0–30 cm for tree crops), discarding the litter. *4.* Mix
  the cores in a clean bucket — this is the *composite* sample. *5.* Quarter the heap and keep
  opposite quarters until about 500 g remains. *6.* Label it with the field, the depth and the date,
  and send it to the laboratory.
]

== 3.7 Four Worked Questions

#worked-example(
  2,
  "Reading a deficiency",
  [A maize crop shows yellowing that begins on the older leaves and moves up the plant, with stunted
  growth. The most likely deficiency is

    A. iron \
    B. nitrogen \
    C. boron \
    D. calcium],
  [
    *Step 1 — use the mobility rule.* The symptom starts on the *oldest* leaves, so the nutrient must be one the plant can move.

    *Step 2 — match the symptom.* General yellowing plus stunting is the classic nitrogen picture.

    *Step 3 — reject the immobile nutrients.* Iron, boron and calcium all show on the young leaves first.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Which fertiliser, and why",
  [A farmer growing groundnut is advised to apply single superphosphate at planting. The reason is
  that SSP

    A. supplies nitrogen for leaf growth \
    B. supplies phosphorus for root and pod development and contains calcium and sulphur \
    C. raises the pH of the soil to neutral \
    D. kills soil pests],
  [
    *Step 1 — identify the crop.* Groundnut is a legume: it fixes its own nitrogen, so a nitrogen fertiliser is neither needed nor wise.

    *Step 2 — identify the element.* A legume's yield is set by root and pod development, which is phosphorus work.

    *Step 3 — add what SSP carries.* Single superphosphate also supplies calcium and sulphur, both useful to a podding legume.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The banding question",
  [Fertiliser is banded rather than broadcast in a sandy soil because banding

    A. reduces the contact between fertiliser and soil, so less is leached and less is fixed \
    B. increases the number of plants that can be grown \
    C. supplies organic matter to the soil \
    D. raises the pH of the soil],
  [
    *Step 1 — recall the weakness of sand.* Sandy soil has little capacity to hold nutrients, so broadcast fertiliser is leached below the root zone.

    *Step 2 — recall what banding does.* It concentrates the fertiliser in a strip beside the root, where the plant can take it before the rain moves it.

    *Step 3 — dismiss the rest.* Banding changes neither plant population, organic matter nor pH.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

== 3.8 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [Which of the following is a micronutrient?], [zinc], [calcium], [magnesium], [sulphur])

#mcq(2, [The nutrient most responsible for root and seed development is], [nitrogen], [potassium], [phosphorus], [calcium])

#mcq(3, [A 50 kg bag of NPK 20-10-10 contains how much nitrogen?], [20 kg], [10 kg], [5 kg], [50 kg])

#mcq(4, [The type of erosion that removes a thin layer of soil over a whole slope is], [gully erosion], [rill erosion], [wind erosion], [sheet erosion])

#answer-key-grid(("A", "C", "B", "D"))

#answer-notes((
  ("A", [Zinc is needed in traces. Calcium, magnesium and sulphur are macronutrients.]),
  ("C", [Phosphorus drives roots, flowering and seed. Nitrogen drives leaves; potassium drives strength and fruit quality.]),
  ("B", [Twenty per cent of 50 kg is 10 kg. The figure on the bag is a percentage, not a weight.]),
  ("D", [Sheet erosion is the thin, even loss; rills are small channels and gullies are deep ones.]),
))

#diagram-fig("diagrams/recap_agr1_ch03.svg",
  "Chapter 3 recap card: the nutrients, manure, fertiliser and fertility.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Sixteen elements feed a crop: six in quantity and ten in traces, with nitrogen for leaves,
    phosphorus for roots and seed and potassium for strength and fruit. Manure feeds the soil and
    fertiliser feeds the season, and the good farmer uses both. The three numbers on a bag are
    percentages of N, P₂O₅ and K₂O, and the weight to buy is the nutrient required divided by that
    percentage. Fertility is kept by rotation, fallow, manure, lime and cover; it is lost fastest
    by erosion, which strips the A horizon the crop lives in.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [List the six macronutrients and four micronutrients.],
  [Give the role and the deficiency symptom of N, P and K.],
  [State three advantages of manure that fertiliser does not have.],
  [Convert 80 kg N per hectare into kilograms of urea.],
  [Name three types of erosion and one control for each.]),
)

#concept-box("Carry this into Chapter 4")[
  A fertile soil still has to be prepared before a seed goes into it, and the preparation is a
  sequence: clear, plough, harrow, level, plant. The next chapter takes that sequence apart
  implement by implement, and adds the practices that follow planting — spacing, weeding, mulching,
  pruning and water.
]

#include "drill_ch03.typ"
