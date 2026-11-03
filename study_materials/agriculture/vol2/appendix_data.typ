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
    Every number the animal-science paper can ask for, in one place, with the calculation that
    turns it into an answer. Learn the ten bold figures; the rest are read off the tables.
  ]
]

#v(6pt)

== D.1 The Seven Calculations

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
  [Animal units], [live weight ÷ 450 kg], [25 goats of 30 kg → 750 ÷ 450 = *1.67 AU*],
  [Stocking number], [area × carrying capacity ÷ AU of the species], [12 ha at 2.5 AU/ha, sheep 0.2 AU → *150 sheep*],
  [Pearson square], [parts of A = target − value of B; parts of B = value of A − target], [maize 9 %, cake 40 %, target 18 % → 22 maize : 9 cake = *71 : 29*],
  [Feed per day], [body weight × feeding rate], [1 500 fish at 50 g at 3 % → 75 g per fish → *112.5 kg/day*],
  [Gestation date], [service date + gestation days], [cow served 1 March → *9 December*],
  [Depreciation], [(cost − salvage) ÷ useful life], [₦65 000 − ₦5 000 over 6 yr → *₦10 000/yr*],
  [Break-even], [fixed cost ÷ gross margin per unit], [₦180 000 ÷ ₦900 → *200 birds*],
)

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[THE ONE HABIT THAT SAVES MARKS]
  #v(3pt)
  #text(size: 9.6pt)[
    Write the formula on the answer sheet *before* you put the numbers into the calculator. Every
    one of these seven is a single line; the paper is not testing arithmetic, it is testing whether
    you knew which line to write. If the units do not cancel to the answer's unit, the formula is
    wrong.
  ]
]

== D.2 The Animals at a Glance

#table(
  columns: (1.02fr, 0.46fr, 0.84fr, 0.52fr, 0.92fr, 1.68fr),
  inset: (x: 4.5pt, y: 2.8pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Animal],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[AU],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Gestation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Cycle],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Sexual maturity],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[One habit],
  ),
  [Cattle], [1.0], [283 d], [21 d], [15 – 18 mths], [ruminates about 8 hours a day],
  [Sheep], [0.2], [148 d], [17 d], [6 – 8 mths], [grazes close, follows the leader],
  [Goat], [0.2], [150 d], [21 d], [6 – 8 mths], [browses, prefers shrubs to grass],
  [Pig], [0.3], [114 d], [21 d], [6 – 7 mths], [cannot sweat, needs shade and water],
  [Rabbit], [0.02], [31 d], [—], [5 – 6 mths], [coprophagy recycles its own pellets],
  [Fowl], [0.01], [21 d incubation], [—], [18 – 20 wks], [needs grit to grind its feed],
  [Guinea fowl], [0.01], [26 – 28 d], [—], [24 wks], [lays in the bush unless confined],
  [Duck], [0.01], [28 d], [—], [20 – 24 wks], [water is for washing, not for swimming only],
  [Catfish], [—], [24 – 30 h hatch], [—], [6 – 8 mths], [breathes air at the surface],
)

== D.3 The Feeds File

#table(
  columns: (1.18fr, 0.72fr, 1.05fr, 1.75fr),
  inset: (x: 5.5pt, y: 3.0pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Feed],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Crude protein],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Best use],
  ),
  [Maize], [9 %], [energy], [the base of every poultry and pig ration],
  [Guinea corn], [10 %], [energy], [a substitute where maize is dear],
  [Rice bran], [12 %], [energy], [bulk in a cattle ration, not a chick ration],
  [Groundnut cake], [40 %], [protein], [the standard plant protein],
  [Soya bean meal], [44 %], [protein], [the best plant protein for chicks],
  [Fish meal], [55 %], [protein], [a little lifts a poor ration],
  [Blood meal], [80 %], [protein], [powerful, unpalatable, use sparingly],
  [Palm kernel cake], [16 %], [protein], [dairy cattle, not poultry],
  [Cowpea husk], [6 %], [roughage], [bulk for ruminants],
  [Elephant grass], [6 %], [roughage], [cut young, before it lignifies],
  [Groundnut haulm], [8 %], [roughage], [dry-season maintenance for cattle],
  [Silage], [8 %], [roughage], [the wet-season surplus carried into the dry],
  [Bone meal], [—], [mineral], [calcium and phosphorus together],
  [Common salt], [—], [mineral], [sodium and chloride, 0.5 per cent of the ration],
  [Premix], [—], [vit. + mineral], [the trace elements a mixed ration lacks],
)

#v(5pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + trap-red, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: trap-red)[A FIGURE THE EXAMINER EXPECTS]
  #v(3pt)
  #text(size: 9.6pt)[
    *Nigeria's livestock are concentrated in the north and the fish in the south.* Cattle, sheep
    and goats follow the savanna and its dry-season grazing; the tsetse belt in the middle and
    south keeps cattle out; and the ponds, creeks and flood plains of the south carry the fish.
    Every question about where an animal is kept is that single map in disguise.
  ]
]

#pagebreak(weak: true)
