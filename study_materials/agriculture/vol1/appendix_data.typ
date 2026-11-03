#import "template.typ": *

#current-chapter.update("Appendix D: The Figures File")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Appendix D: The Figures File]]

#block(width: 100%, fill: jamb-navy, stroke: 1.5pt + jamb-bright, radius: 10pt, inset: 16pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(5pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Figures File]
  #v(4pt)
  #text(size: 10pt, fill: rgb("#CBD5E1"))[
    Every number the paper can ask for, in one place, with the calculation that turns it into an
    answer. Learn the ten bold figures; the rest are read off the tables.
  ]
]

#v(6pt)

== D.1 The Six Calculations

#table(
  columns: (1.05fr, 1.65fr, 2.05fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Worked example],
  ),
  [Plant population], [10 000 ÷ (row × within-row, in m)], [0.75 m × 0.25 m → 10 000 ÷ 0.1875 = *53 333* plants/ha],
  [Seed rate], [recommendation ÷ germination fraction], [20 kg/ha at 80 % → 20 ÷ 0.8 = *25 kg/ha*],
  [Fertiliser product], [nutrient required ÷ fraction in the bag], [60 kg N/ha from urea → 60 ÷ 0.46 = *130 kg urea*],
  [Germination], [germinated ÷ sown × 100], [180 of 200 → *90 per cent*],
  [Profit], [revenue − cost], [₦480 000 − ₦310 000 = *₦170 000*],
  [Yield per hectare], [total yield ÷ area], [3.6 t from 1.5 ha → *2.4 t/ha*],
)

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE ONE HABIT THAT SAVES MARKS]
  #v(3pt)
  #text(size: 9.6pt)[
    Write the formula on the answer sheet *before* you put the numbers into the calculator. Every
    one of these six is a single line; the paper is not testing arithmetic, it is testing whether
    you know which line to write. In the plant-population question, convert centimetres to metres
    first — 75 cm × 25 cm is 0.75 m × 0.25 m, not 75 × 25.
  ]
]

== D.2 Land Measure and the Units the Paper Uses

#table(
  columns: (1.25fr, 1.15fr, 2.35fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Unit],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Equals],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Where it appears],
  ),
  [1 hectare], [10 000 m² = 2.471 acres], [every yield and population question],
  [1 acre], [4 047 m² ≈ 0.405 ha], [the old extension leaflets],
  [1 square metre], [10 000 cm²], [spacing converted to metres],
  [1 tonne], [1 000 kg], [yield and fertiliser questions],
  [1 bag of fertiliser], [50 kg in the NPK trade], [nutrient content questions],
  [1 bag of urea], [50 kg, of which 23 kg is N], [top-dressing questions],
  [1 man-day], [one adult's work for one day], [labour and cost questions],
  [1 animal unit], [one mature cow; a goat is 0.2], [stocking-rate questions, Vol. 2],
)

== D.3 What Is Inside the Bag

#table(
  columns: (1.30fr, 0.75fr, 0.75fr, 0.75fr, 1.35fr),
  inset: (x: 6pt, y: 3.2pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Fertiliser],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[N %],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[P₂O₅ %],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[K₂O %],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Use],
  ),
  [Urea], [46], [0], [0], [the strongest straight nitrogen; top dressing],
  [Ammonium sulphate], [21], [0], [0], [nitrogen plus sulphur; acidifying],
  [Single superphosphate], [0], [16–20], [0], [phosphorus at planting; also supplies calcium],
  [Triple superphosphate], [0], [44–46], [0], [concentrated phosphorus],
  [Muriate of potash], [0], [0], [60], [potassium; fruit fill and stem strength],
  [NPK 15:15:15], [15], [15], [15], [the balanced compound for a soil test that shows no single lack],
  [NPK 20:10:10], [20], [10], [10], [the maize and cereal compound],
  [NPK 25:10:10], [25], [10], [10], [a heavier nitrogen compound for the savanna],
  [Farmyard manure], [0.5], [0.2], [0.6], [structure first, nutrients second],
  [Poultry manure], [1.5–3.0], [1.0], [0.5], [the richest of the local manures],
  [Compost], [0.5–1.0], [0.3], [0.5], [humus and slow release],
)

#v(4pt)

#text(size: 9.4pt)[
  *Reading the bag.* The three numbers are always N, then P₂O₅, then K₂O, and always as
  percentages of the bag's mass. A 50 kg bag of NPK 20:10:10 therefore carries 10 kg N, 5 kg
  P₂O₅ and 5 kg K₂O, with 30 kg of carrier and filler. Multiply the percentage by the bag mass,
  never by 100.
]

#pagebreak(weak: true)

== D.4 The Constants of the Main Crops

#table(
  columns: (1.10fr, 1.05fr, 0.95fr, 1.00fr, 1.35fr),
  inset: (x: 5pt, y: 2.9pt),
  align: (left + horizon, left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Spacing],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Population /ha],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Maturity],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Seed rate or planting material],
  ),
  [Maize], [75 × 25 cm], [53 000], [90–120 days], [20–25 kg seed],
  [Rice], [20 × 20 cm], [250 000], [110–150 days], [40–60 kg seed, or seedlings],
  [Sorghum], [75 × 30 cm], [44 000], [110–140 days], [8–12 kg seed],
  [Millet], [75 × 30 cm], [44 000], [90–120 days], [5–8 kg seed],
  [Cowpea], [60 × 30 cm], [55 000], [70–90 days], [20–25 kg seed],
  [Groundnut], [60 × 20 cm], [83 000], [90–120 days], [60–80 kg pods],
  [Soya bean], [60 × 10 cm], [166 000], [90–120 days], [50–60 kg seed],
  [Cassava], [1 m × 1 m], [10 000], [9–12 months], [about 10 000 stem cuttings],
  [Yam], [1 m × 1 m], [10 000], [8–10 months], [2–2.5 t setts],
  [Cocoa], [3 m × 3 m], [1 100], [3–5 years to first crop], [seedlings or budded clones],
  [Oil palm], [9 m × 9 m], [123], [3–4 years to first crop], [nursery seedlings],
  [Cotton], [90 × 30 cm], [37 000], [150–180 days], [15–20 kg seed],
)

#v(4pt)

#text(size: 9.2pt)[
  The populations are the arithmetic result of the spacing, not a separate fact: 10 000 ÷
  (0.75 × 0.25) = 53 333, and 10 000 ÷ (3 × 3) = 1 111. If a question gives you a spacing the
  table does not carry, do the division — it is quicker than trying to remember.
]

== D.5 What Each Crop Needs from the Weather

#table(
  columns: (1.20fr, 1.15fr, 1.15fr, 1.35fr),
  inset: (x: 6pt, y: 3.0pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Crop],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rainfall (mm)],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Zone],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Limiting factor],
  ),
  [Rice], [1 000–2 000], [all zones, wet valleys], [water — it will not yield without it],
  [Maize], [750–1 500], [forest to Guinea savanna], [drought at tasselling],
  [Sorghum], [500–800], [Guinea and Sudan savanna], [birds and *Striga*],
  [Millet], [400–600], [Sudan savanna and Sahel], [the shortest rains in the country],
  [Cowpea], [500–1 000], [all savannas], [flower thrips and storage weevils],
  [Groundnut], [500–1 000], [Guinea savanna], [rosette virus and poor calcium],
  [Cassava], [1 000–1 500], [forest and derived savanna], [mosaic virus and poor soils],
  [Yam], [1 000–1 500], [Guinea savanna and forest edge], [nematodes and the cost of setts],
  [Cocoa], [1 250–2 000], [forest belt], [black pod in the wet season],
  [Oil palm], [1 500–2 000], [forest belt], [the dry season and the beetle],
  [Cotton], [500–1 000], [Guinea savanna], [bollworm and late rain],
)


#pagebreak(weak: true)

== D.6 The Twelve Figures to Carry Into the Hall

#table(
  columns: (0.4fr, 1.55fr, 1.2fr, 1.9fr),
  inset: (x: 5pt, y: 2.9pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The question it answers],
  ),
  [1], [One hectare], [10 000 m²], [any "per hectare" question],
  [2], [Neutral pH], [7.0], [whether a soil is acid or alkaline],
  [3], [Urea nitrogen], [46 per cent], [how much N in a bag],
  [4], [NPK 20:10:10], [20, 10, 10 per cent], [the nutrient in a compound bag],
  [5], [Safe grain moisture], [12–13 per cent], [whether a store will hold],
  [6], [Maize maturity], [90–120 days], [when to harvest],
  [7], [Cassava maturity], [9–12 months], [when to lift],
  [8], [Maize population at 75 × 25 cm], [53 000 plants/ha], [plant population],
  [9], [Seed allowance at 80 per cent], [recommendation ÷ 0.8], [seed rate],
  [10], [Germination], [germinated ÷ sown × 100], [seed quality],
  [11], [Field capacity of a loam], [about 25 per cent], [how much water a soil holds],
  [12], [Time per question], [about 45 seconds], [whether to leave a question and return],
)

#v(5pt)

#text(size: 9.3pt)[
  Twelve figures is a small enough list to write on one side of a card. The examiner cannot ask
  all of them in one paper, but every calculation question in the syllabus leans on one of the
  first eleven, and the twelfth is the one that decides whether you finish.
]

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[A FIGURE THE EXAMINER EXPECTS]
  #v(3pt)
  #text(size: 9.6pt)[
    *Nigerian rainfall falls from more than 2 000 mm on the coast to less than 500 mm at the
    Sahel edge.* Every crop question about belts is that single gradient in disguise: rice and
    oil palm in the wet south, maize and cassava in the middle, sorghum and millet in the dry
    north. If you cannot remember which crop grows where, ask how much rain it needs.
  ]
]

#pagebreak(weak: true)

