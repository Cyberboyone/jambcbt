#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sixty one-line prompts with the answer beside each: twenty definitions, twenty
    formulas and twenty facts about the figures and the institutions. Cover the
    right-hand column with a sheet of paper and work down the list — ten seconds a
    line. Anything you cannot answer in ten seconds is a chapter to reread tonight.
  ]
]

#v(5pt)

== A.1 Twenty Definitions

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [National income], [the money value of all goods and services produced in a year],
  [GDP], [output produced *within* a country's borders in a period],
  [GNP], [GDP plus net factor income from abroad],
  [Net national product], [GNP less depreciation],
  [National income at factor cost], [NNP at market prices less indirect taxes plus subsidies],
  [Transfer payment], [a payment for which nothing is currently produced — pension, scholarship],
  [Circular flow], [the flow of income and spending between households, firms, government and the foreign sector],
  [Leakage], [income leaving the domestic flow: saving, taxation, imports],
  [Injection], [spending entering the domestic flow: investment, government spending, exports],
  [Multiplier], [the ratio of the change in national income to the change that caused it],
  [Real income], [income measured at constant prices],
  [Per capita income], [national income divided by population],
  [Credit creation], [the expansion of bank deposits through lending],
  [Cash reserve ratio], [the proportion of deposits a bank must hold as cash or with the central bank],
  [Monetary policy], [control of the money supply and credit by the central bank],
  [Inflation], [a sustained rise in the general price level],
  [Fiscal policy], [the use of taxation and government spending to influence the economy],
  [Direct tax], [a tax on income or profit that cannot be shifted],
  [Progressive tax], [a tax taking a larger proportion of income as income rises],
  [Public debt], [the total money owed by government at a point in time],
)
]

#v(4pt)

== A.2 Twenty Formulas and Numbers

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Real GDP], [nominal GDP ÷ price index × 100],
  [GDP deflator], [nominal GDP ÷ real GDP × 100],
  [GDP, expenditure method], [C + I + G + (X − M)],
  [GDP, income method], [wages + rent + interest + profit],
  [Value added], [value of output − value of intermediate purchases],
  [Multiplier], [1 ÷ (1 − MPC), which is 1 ÷ MPS],
  [Change in income], [multiplier × initial change in spending],
  [Per capita income], [national income ÷ population],
  [Credit multiplier], [1 ÷ cash reserve ratio],
  [Total credit created], [initial deposit × credit multiplier],
  [Inflation rate], [(new index − old index) ÷ old index × 100],
  [Real interest rate], [nominal rate − inflation rate],
  [Budget balance], [revenue − expenditure (a negative sign is a deficit)],
  [Tax as a share of income], [tax paid ÷ income × 100],
  [Terms of trade], [export price index ÷ import price index × 100],
  [Balance of trade], [visible exports − visible imports],
  [Current account balance], [goods + services + income + transfers],
  [Dependency ratio], [dependants ÷ working-age population × 100],
  [Unemployment rate], [unemployed ÷ labour force × 100],
  [Growth per head], [growth of output − growth of population],
)
]

#v(4pt)

== A.3 Twenty Facts About the Figures and the Institutions

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [The central bank of Nigeria], [Central Bank of Nigeria — money and the exchange rate],
  [Who compiles GDP and the CPI], [the National Bureau of Statistics],
  [Who collects federal taxes], [the Federal Inland Revenue Service],
  [Who insures deposits], [the Nigeria Deposit Insurance Corporation],
  [Who regulates the capital market], [the Securities and Exchange Commission],
  [Who monitors the budget], [the Fiscal Responsibility Commission],
  [Revenue-sharing formula], [equality, population, land mass, derivation and social development],
  [Largest employer in Nigeria], [agriculture],
  [Largest foreign-exchange earner], [crude petroleum and gas],
  [Main import item], [refined petroleum products and machinery],
  [Three tiers of government], [federal, state and local],
  [Nigeria's main regional grouping], [ECOWAS, with AfCFTA at continental level],
  [The policy rate], [the monetary policy rate, set by the Monetary Policy Committee],
  [Instruments of monetary policy], [open market operations, the reserve ratio, the policy rate, moral suasion],
  [Two measures of the money supply], [M1, currency plus demand deposits; M2, M1 plus savings and time deposits],
  [The GDP that ignores inflation], [nominal GDP],
  [The HDI components], [income per capita, life expectancy, schooling],
  [Gini coefficient range], [0 for equality to 1 for complete inequality],
  [Types of unemployment], [frictional, structural, cyclical, seasonal],
  [Demographic transition], [high birth and death rates falling to low ones],
)
]

#v(5pt)

#trap-box("The seven pairs candidates invert")[
  + *GDP and GNP.* GDP is about *where* the output was produced; GNP is about *who owns the factors*.
  + *Nominal and real.* Nominal is at current prices; real is at base-year prices. Real is always the smaller of the two when prices have risen.
  + *Depreciation and devaluation.* Depreciation is a market fall in a floating currency; devaluation is a deliberate fall under a fixed one.
  + *Deficit and debt.* The deficit is this year's gap; the debt is the accumulated total.
  + *Direct and indirect tax.* Direct falls on income and cannot be shifted; indirect falls on goods and can.
  + *Balance of trade and balance of payments.* Trade is goods only; payments is every external transaction.
  + *Frictional and structural.* Frictional is search time; structural is a mismatch of skills.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Two full passes through this appendix, a week apart, will recover more marks than a third reading of any chapter. The pairs are deliberately one line each: the paper asks for one line each.]

#v(5pt)

== A.4 The Seven-Day Rapid-Fire Plan

#table(
  columns: (0.6fr, 1.35fr, 2.2fr, 1.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rows],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it repairs],
  ),
  [*1*], [A.1 rows 1–10], [cover the answer, say it aloud, uncover, mark the miss], [the words the paper uses for definitions],
  [*2*], [A.1 rows 11–20], [same, then write the six you missed from memory], [the definitions of money and of taxation],
  [*3*], [A.2 rows 1–10], [write the formula first, then the substitution], [real, nominal and the multiplier],
  [*4*], [A.2 rows 11–20], [same, but say what each formula is *for*], [credit, incidence and the accounts],
  [*5*], [A.3 rows 1–10], [say the body, then its publication], [the institutions],
  [*6*], [A.3 rows 11–20], [same, then name the wrong body the paper offers], [the data and the pairings],
  [*7*], [all three, misses only], [one pass, timed at ten seconds a row], [whatever is still fragile],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Sixty rows over seven days is under nine a day. The plan works because the *misses* are practised twice and the rows already known are practised once: revision time goes where the marks are lost, not where they are already safe.]
