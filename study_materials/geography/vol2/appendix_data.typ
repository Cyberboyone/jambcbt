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
    Every figure the paper can ask for, in one place, with the calculation that turns it into an
    answer. Learn the ten bold figures; the rest are read off the tables.
  ]
]

#v(6pt)

== D.1 Nigeria's Vital Statistics

#table(
  columns: (1.55fr, 1.05fr, 2.1fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Note],
  ),
  [*Area*], [*923 768 km²*], [about 924 000 km² — the figure the syllabus uses],
  [Latitude], [4°N – 14°N], [tropical, entirely in the northern hemisphere],
  [Longitude], [3°E – 15°E], [one hour ahead of Greenwich],
  [Coastline], [about 853 km], [from Badagry to the Cross River],
  [Population, 2006 census], [140 million], [the last published census],
  [Population, current estimate], [over 200 million], [the largest in Africa],
  [Growth rate], [about 2.5 % a year], [doubling time about 28 years],
  [Density], [about 215 per km²], [national average; the range is far wider],
  [Urban share], [about 52 %], [and rising by about 4 % a year],
  [Life expectancy], [about 55 years], [lower for men than for women],
  [Number of states], [36 + FCT], [and 774 local government areas],
  [Highest point], [2 419 m], [Chappal Waddi, Taraba],
)

== D.2 The Physical Figures

#table(
  columns: (1.55fr, 1.05fr, 2.1fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Note],
  ),
  [Annual rainfall, south], [over 2 000 mm], [the coast and the delta],
  [Annual rainfall, north], [under 600 mm], [the Sahel margin],
  [Rainy season, south], [March – October], [bimodal on the coast],
  [Rainy season, north], [June – September], [one short season],
  [Mean temperature], [26 – 28 °C], [the range widens inland],
  [Length of the Niger], [4 180 km], [the third longest in Africa],
  [Length of the Benue], [about 1 400 km], [rises in Cameroon],
  [Lake Chad], [shrinking], [from about 25 000 km² in 1963 to under 2 000 km²],
  [Highest rainfall in West Africa], [over 4 000 mm], [the Sierra Leone–Liberia coast],
  [The Sahel], [250 – 500 mm], [the dry margin south of the Sahara],
)

== D.3 The Ten Calculations

#table(
  columns: (1.5fr, 2.1fr, 2.3fr),
  inset: (x: 6pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),
  [Density], [people ÷ area], [120 000 000 ÷ 600 000 = 200 per km²],
  [Natural increase], [birth rate − death rate], [42 − 14 = 28 per 1 000, or 2.8 %],
  [Growth rate], [natural increase + net migration], [2.8 % + 0.3 % = 3.1 %],
  [Doubling time], [70 ÷ growth rate in per cent], [70 ÷ 3.5 = 20 years],
  [Dependency ratio], [(under 15 + over 64) ÷ 15–64 × 100], [80 ÷ 100 × 100 = 80 dependants per 100],
  [Balance of trade], [visible exports − visible imports], [₦9 bn − ₦6 bn = ₦3 bn surplus],
  [Terms of trade], [(export price index ÷ import price index) × 100], [120 ÷ 100 × 100 = 120],
  [Map scale], [map distance ÷ ground distance], [4 cm ÷ 2 km = 1 : 50 000],
  [Gradient], [vertical interval ÷ horizontal distance × 100], [40 m ÷ 800 m × 100 = 5 %],
  [Population projection], [P × (1 + r)ⁿ], [100 m × 1.03⁵ ≈ 116 m],
)

== D.4 Reading a Figure Question

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE FOUR MOVES]
  #v(4pt)
  #text(size: 10.2pt)[
    *1. Write the formula first.* The examiner awards the method; a wrong answer with the right
    formula still shows the reasoning and prevents a second error. \
    *2. Convert to one unit.* Kilometres to metres, millions to units, per cent to a decimal. \
    *3. Estimate before you calculate.* If density should be about 200, an answer of 2 000 is a
    slip, not a surprise. \
    *4. Give the unit.* "200" is not an answer; "200 people per square kilometre" is.
  ]
]

#v(4pt)

#block(width: 100%, fill: tip-bg, stroke: 0.9pt + tip-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: tip-amber)[THE THREE TRAPS]
  #v(3pt)
  #text(size: 9.6pt)[
    *Square kilometres, not kilometres.* Area questions use km² throughout. \
    *Rates are per thousand, percentages are per hundred.* A birth rate of 40 is 4 %, not 40 %. \
    *Net means subtract.* Net migration, natural increase and the balance of trade are all
    differences; only the gross figures add.
  ]
]

#v(4pt)

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[THE FOUR FIGURES TO KNOW COLD]
  #v(3pt)
  #text(size: 9.7pt)[
    *923 768 km²* — the area of Nigeria. *140 million* — the 2006 census. *4°N to 14°N* — the
    latitudes. *15°E* — the meridian that gives the country its hour. Every other figure can be
    reasoned from these four or read off the table above.
  ]
]
