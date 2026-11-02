#import "template.typ": *

#current-chapter.update("Appendix F: The Formula Sheet")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: The Formula Sheet]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Formula Sheet]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every formula the paper has ever tested, with the symbols defined, the unit stated
    and one worked substitution beside each. Learn the substitutions, not only the
    formulas: the marks are given for the arithmetic, not for the definition.
  ]
]

#v(5pt)

== F.1 National Income

#table(
  columns: (0.95fr, 1.5fr, 2.25fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [*GDP*, expenditure], [C + I + G + (X − M)], [400 + 120 + 150 + (90 − 110) = *₦650bn*],
  [*GDP*, income], [wages + rent + interest + profit], [250 + 80 + 60 + 110 = *₦500bn*],
  [*GDP*, output], [Σ value added], [(100 − 40) + (180 − 100) = *₦140m*],
  [*GNP*], [GDP + net factor income], [650 + (30 − 18) = *₦662bn*],
  [*NNP*], [GNP − depreciation], [662 − 40 = *₦622bn*],
  [*National income*], [NNP − indirect taxes + subsidies], [622 − 52 + 10 = *₦580bn*],
  [*Real GDP*], [nominal ÷ price index × 100], [200 ÷ 1.25 = *₦160bn*],
  [*GDP deflator*], [nominal ÷ real × 100], [200 ÷ 160 × 100 = *125*],
  [*Per capita income*], [national income ÷ population], [₦120tn ÷ 200m = *₦600,000*],
  [*Growth per head*], [growth of output − growth of population], [8 − 3 = *5 per cent*],
)

#v(5pt)

#shortcut-box("The three national-income traps")[
  + *Divide by the index, do not multiply.* ₦200bn at an index of 125 is ₦160bn real, not ₦250bn. The real figure is always the smaller one when prices have risen.
  + *Net factor income, not exports.* GNP adjusts GDP for income earned on factors abroad; the trade balance has nothing to do with the adjustment.
  + *Per head means per person.* Dividing by the labour force gives income per worker, which is a productivity figure and a different question.
]

#v(5pt)

== F.2 The Multiplier

#table(
  columns: (1.05fr, 1.45fr, 2.2fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [*Multiplier*], [1 ÷ (1 − MPC)], [MPC 0.8: 1 ÷ 0.2 = *5*],
  [*Multiplier*], [1 ÷ MPS], [MPS 0.25: 1 ÷ 0.25 = *4*],
  [*Change in income*], [k × change in spending], [5 × ₦2bn = *₦10bn*],
  [*Total of the rounds*], [first change × k], [₦2bn, ₦1.6bn, ₦1.28bn … summing to ₦10bn],
  [*With tax and imports*], [1 ÷ (MPS + MPT + MPM)], [0.1 + 0.15 + 0.1 = 0.35, so k = *2.86*],
  [*Equilibrium condition*], [S + T + M = I + G + X], [120 + 90 + 70 = 100 + 130 + 50],
)

#v(4pt)

#concept-box("Why the multiplier is a reciprocal and not a fraction")[
  The first naira of new spending is spent again, and again. If four-fifths of each round is spent, the rounds sum to 1 + 0.8 + 0.64 + … which equals 1 ÷ (1 − 0.8) = 5. The answer is larger than one because the same money is counted at each hand it passes through — and it is finite because a fifth leaks out each time.
]

#v(5pt)

== F.3 Money and Credit

#table(
  columns: (1.05fr, 1.45fr, 2.2fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [*Credit multiplier*], [1 ÷ cash reserve ratio], [ratio 20 per cent: 1 ÷ 0.20 = *5*],
  [*Total deposits*], [initial deposit × multiplier], [₦50,000 × 4 at 25 per cent = *₦200,000*],
  [*One bank's lending*], [deposit × (1 − ratio)], [₦100,000 × 0.75 = *₦75,000*],
  [*Inflation rate*], [(new − old) ÷ old × 100], [120 to 132: 12 ÷ 120 = *10 per cent*],
  [*Real interest rate*], [nominal − inflation], [18 − 12 = *6 per cent*],
  [*Real wage*], [nominal wage ÷ price index × 100], [₦66,000 ÷ 1.12 = *₦58,929*],
  [*Change in real wage*], [(new real − old real) ÷ old real], [(58,929 − 60,000) ÷ 60,000 = *−1.8 per cent*],
  [*Money supply, M1*], [currency + demand deposits], [₦2.1tn + ₦6.4tn = *₦8.5tn*],
)

#v(5pt)

== F.4 Public Finance

#table(
  columns: (1.05fr, 1.45fr, 2.2fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [*Budget balance*], [revenue − expenditure], [8.5 − 7.2 = *−₦1.3tn*, a deficit],
  [*Deficit as a share of GDP*], [deficit ÷ GDP × 100], [1.3 ÷ 60 = *2.2 per cent*],
  [*Average tax rate*], [tax paid ÷ income × 100], [₦90,000 on ₦600,000 = *15 per cent*],
  [*Marginal tax rate*], [change in tax ÷ change in income], [₦90,000 more tax on ₦600,000 more income = *15 per cent*],
  [*Tax yield*], [rate × base], [7.5 per cent of ₦40tn = *₦3tn*],
  [*Debt service ratio*], [debt service ÷ export earnings × 100], [₦2.4bn ÷ ₦40bn = *6 per cent*],
  [*Consumer's share of a tax*], [Es ÷ (Ed + Es)], [Ed 2, Es 1: 1 ÷ 3 = *33 per cent*],
  [*Producer's share of a tax*], [Ed ÷ (Ed + Es)], [Ed 2, Es 1: 2 ÷ 3 = *67 per cent*],
)

#v(4pt)

#trap-box("Incidence: who pays is decided by elasticity, not by the law")[
  The side of the market that cannot escape the tax pays it. If demand is perfectly inelastic, the consumer pays all of it, whatever the statute says. If supply is perfectly inelastic, the producer pays all of it. Between the two, the shares follow Es ÷ (Ed + Es) for the consumer and Ed ÷ (Ed + Es) for the producer.
]

#v(5pt)

== F.5 International Trade

#table(
  columns: (1.05fr, 1.45fr, 2.2fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [*Opportunity cost*], [other good given up ÷ good gained], [4 h cloth for 2 h rice: *2 bales of cloth per bag*],
  [*Terms of trade*], [export price index ÷ import price index × 100], [140 ÷ 125 × 100 = *112*],
  [*Balance of trade*], [visible exports − visible imports], [40 − 55 = *−₦15bn*],
  [*Current account*], [trade balance + services + income + transfers], [−15 + 6 = *−₦9bn*],
  [*Overall balance*], [current + capital], [−9 + 12 = *+₦3bn*],
  [*Tariff revenue*], [tariff per unit × quantity imported], [₦3 × 8,000 = *₦24,000*],
  [*Domestic price with a tariff*], [world price + tariff], [4.60 + 1.50 = *₦6.10*],
)

#v(5pt)

== F.6 Development and Labour

#table(
  columns: (1.05fr, 1.45fr, 2.2fr),
  inset: (x: 5pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Worked substitution],
  ),
  [*Dependency ratio*], [dependants ÷ working-age × 100], [(30 + 10) ÷ 60 = *66.7 per cent*],
  [*Labour-force rate*], [labour force ÷ working-age × 100], [40 ÷ 60 = *66.7 per cent*],
  [*Unemployment rate*], [unemployed ÷ labour force × 100], [4 ÷ 40 = *10 per cent*],
  [*Employment rate*], [employed ÷ labour force × 100], [36 ÷ 40 = *90 per cent*],
  [*Per capita growth*], [output growth − population growth], [2 − 3 = *−1 per cent*],
  [*Real income per head*], [national income ÷ population ÷ price index], [₦90tn ÷ 180m ÷ 1.5 = *₦333,333*],
  [*Poverty share*], [people below the line ÷ population × 100], [84m ÷ 200m = *42 per cent*],
)

#v(4pt)

#shortcut-box("Four bases that never change")[
  + *Unemployment is a share of the labour force*, not of the population and not of the employed.
  + *Per capita income is a share of the population*, not of the labour force.
  + *The dependency ratio is dependants over workers*, and the labour-force rate is workers over the working-age population.
  + *The inflation rate is a change in an index over twelve months*, never the index itself.
]

#v(5pt)

== F.7 The Five Mistakes That Survive a Correct Formula

#table(
  columns: (1.55fr, 3.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mistake],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The correction],
  ),
  [Multiplying by the price index], [A nominal figure is *divided* by it: ₦200bn at 125 is ₦160bn, not ₦250bn],
  [Dividing by the labour force for per capita income], [The denominator is the *population*; the labour force gives output per worker],
  [Dividing unemployment by the population], [The denominator is the *labour force*; the population share is a smaller, different number],
  [Reading the reserve ratio as the multiplier], [The multiplier is 1 ÷ the ratio: 20 per cent gives 5, not 0.20],
  [Reading index points as a rate], [A move from 240 to 264 is 10 per cent, because the change is divided by 240],
)

#v(4pt)

#concept-box("Why these five, and not the others")[
  Every one of them is a substitution error, not a recall error: the candidate knows the formula and puts the wrong number underneath it. That is why the check at the end of each worked example is always a *second route to the same answer* — a division done twice cannot be wrong in the same direction twice.
]
