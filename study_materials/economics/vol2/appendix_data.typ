#import "template.typ": *

#current-chapter.update("Appendix D: The Data File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Data File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Data File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Seven tables that hold the whole macroeconomics half of the paper in a form that
    can be revised in forty minutes. Read them the night before, and again in the
    twenty minutes before you enter the hall.
  ]
]

#v(5pt)

== D.1 The Six Chapters in Six Lines

#table(
  columns: (0.4fr, 1.35fr, 3.1fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Idea],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The one sentence that answers the chapter],
  ),
  [*1*], [National income], [Output, income and expenditure are the same flow measured three ways, and real means divided by a price index],
  [*2*], [Money and banking], [Banks create deposits by lending, and the central bank decides how large the reserve base may be],
  [*3*], [Public finance], [A budget is a plan with three possible positions, and a tax's burden follows elasticity, not law],
  [*4*], [International trade], [Specialise where the opportunity cost is lowest, and record every external transaction twice],
  [*5*], [Development], [Growth is a number and development is a condition, and the labour market is where the two meet],
  [*6*], [The Nigerian economy], [Match every institution to the figure it publishes, then read the figure as a rate, a share or a balance],
)

#v(5pt)

== D.2 The National Accounts in One Table

#table(
  columns: (1.5fr, 1.9fr, 1.5fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Aggregate],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Adjustment from GDP],
  ),
  [GDP at market prices], [output produced inside the country], [the starting point],
  [GDP at factor cost], [output at the cost of the factors that made it], [less indirect taxes, plus subsidies],
  [GNP at market prices], [income of the country's residents], [plus net factor income from abroad],
  [NNP], [GNP with capital consumption removed], [less depreciation],
  [National income], [NNP at factor cost], [less indirect taxes, plus subsidies],
  [Disposable income], [income households may spend or save], [less direct taxes, plus transfers],
)

#v(4pt)

#concept-box("The four adjustments, in the order the paper uses them")[
  + *Domestic to national:* add net factor income from abroad. A Nigerian firm's profit in Ghana belongs to Nigeria's GNP, not its GDP.
  + *Gross to net:* subtract depreciation. The capital used up during the year has to be replaced before income is truly earned.
  + *Market prices to factor cost:* subtract indirect taxes, add subsidies. This removes the tax wedge between what buyers pay and what factors receive.
  + *Total to per head:* divide by population — never by the labour force, which would give output per worker.
]

#v(5pt)

== D.3 Money, Credit and the Instruments

#table(
  columns: (1.35fr, 2.0fr, 1.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[To tighten],
  ),
  [Cash reserve ratio], [share of deposits locked away], [raise it],
  [Liquidity ratio], [share of deposits held in liquid form], [raise it],
  [Policy rate], [the price of central-bank money], [raise it],
  [Open market operations], [buying or selling government securities], [sell securities],
  [Special deposits], [funds called in by the central bank], [call them in],
  [Moral suasion], [persuasion without legal force], [persuade to restrain],
  [Selective credit control], [direction of lending to chosen sectors], [cap consumer credit],
  [Direct control], [ceilings on lending or on interest rates], [impose a ceiling],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[One question settles all eight: does this put money into the banking system or take it out? Raising a ratio or a rate takes money out; buying securities puts it in; selling securities takes it out.]

#v(5pt)

== D.4 The Budget and the Taxes

#table(
  columns: (1.3fr, 1.6fr, 2.0fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Exam note],
  ),
  [Balanced budget], [revenue equals expenditure], [neutral; the textbook starting point],
  [Surplus], [revenue exceeds expenditure], [contractionary; retires debt],
  [Deficit], [expenditure exceeds revenue], [expansionary; adds to debt],
  [Recurrent expenditure], [running costs of the year], [salaries, fuel, stationery],
  [Capital expenditure], [spending that creates an asset], [roads, schools, dams],
  [Direct tax], [on income and profit], [cannot be shifted],
  [Indirect tax], [on goods and services], [can be shifted forward],
  [Progressive], [rate rises with income], [reduces inequality],
  [Proportional], [one rate for all], [neutral between incomes],
  [Regressive], [takes a larger share of low incomes], [most taxes on basics],
  [Incidence], [who finally bears the tax], [the more inelastic side],
  [Evasion], [illegal non-payment], [crime],
  [Avoidance], [legal arrangement to reduce liability], [not a crime, but not a gain either],
)

#v(5pt)

== D.5 The Balance of Payments in One Table

#table(
  columns: (1.25fr, 2.0fr, 1.65fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Account],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Credits],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Debits],
  ),
  [Visible trade], [goods exported], [goods imported],
  [Invisible trade], [services sold — shipping, insurance, tourism], [services bought],
  [Income], [earnings on assets abroad], [profits repatriated abroad],
  [Transfers], [remittances received], [remittances sent, aid given],
  [*Current account*], [the four rows above], [the four rows above],
  [Capital account], [loans received, investment inflow], [loans repaid, investment outflow],
  [Reserves], [reserve drawdown], [reserve accumulation],
  [*Overall balance*], [current plus capital], [must be zero after reserves],
)

#v(4pt)

#shortcut-box("Reading any balance-of-payments question in four steps")[
  + *Sort the items.* Goods and services and transfers go in the current account; loans, portfolio flows and direct investment go in the capital account.
  + *Add the credits, add the debits.* A trade balance uses goods only; the current balance adds services, income and transfers.
  + *Subtract.* A current-account deficit must be matched by a capital inflow or a fall in reserves.
  + *Name the policy.* A deficit is met by borrowing, by reserves, or by expenditure-switching (devaluation) and expenditure-reducing (deflation) measures.
]

#v(5pt)

== D.6 The Development Indicators

#table(
  columns: (1.4fr, 1.75fr, 1.75fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Indicator],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it measures],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The catch],
  ),
  [GDP per capita], [average output per person], [says nothing about distribution],
  [HDI], [income, health and schooling combined], [a low HDI with high income means growth without development],
  [Gini coefficient], [inequality, 0 to 1], [a single number hides who is where],
  [Poverty line], [the share below a fixed real income], [absolute and relative poverty differ],
  [Dependency ratio], [dependants per 100 workers], [a young population is a future labour force, not only a burden],
  [Literacy rate], [share of adults who can read], [a social indicator, not an economic one],
  [Life expectancy], [average years of life], [falls sharply with infant mortality],
  [Unemployment rate], [unemployed ÷ labour force], [misses discouraged and underemployed workers],
  [Labour-force rate], [labour force ÷ working-age population], [the figure that exposes a falling participation rate],
)

#v(5pt)

== D.7 The Numbers Worth Knowing

#table(
  columns: (2.3fr, 2.6fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [A question every 45 seconds], [forty questions in thirty minutes],
  [One mark a question], [no negative marking, so never leave a blank],
  [Macro questions in the paper], [about seventeen of forty],
  [Naira abbreviations], [₦1bn is a thousand million naira],
  [Typical inflation question], [an index change over twelve months, not a monthly change],
  [Typical growth question], [growth of output less growth of population],
  [Typical multiplier question], [1 ÷ (1 − MPC), then multiply by the initial change],
  [Typical credit question], [1 ÷ the reserve ratio, then multiply by the first deposit],
  [Typical incidence question], [the side that cannot escape pays],
  [Typical devaluation question], [elastic demand is required for the trade balance to improve],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[These are not statistics to memorise — they are the shapes the questions take. The examiner supplies the numbers; you supply the method.]

#v(5pt)

== D.8 Five Question Shapes the Data File Answers

#table(
  columns: (1.35fr, 1.75fr, 2.2fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question says],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[You are given],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[You do],
  ),
  [“Find the balance”], [revenue and expenditure, or credits and debits], [subtract; a negative sign is a deficit],
  [“Find the rate”], [two index numbers, or two output figures], [divide the *change* by the *old* figure, × 100],
  [“Find the share”], [one item and a total], [divide the item by the total, × 100],
  [“Find it per head”], [an aggregate and a population], [divide by the population, never the labour force],
  [“Find the ratio”], [two price or quantity indices], [divide one by the other; × 100 only if an index is asked for],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Every arithmetic question in the paper is one of these five, dressed in the vocabulary of the chapter it comes from. Name the shape first, and the formula follows without a decision.]

#v(4pt)

#shortcut-box("The five shapes, and the verb that announces each")[
  + *“Balance”, “surplus”, “deficit”* — a subtraction. Write the two sides in one line and subtract.
  + *“Rate”, “per cent”, “growth”, “inflation”* — a change over an old figure, × 100.
  + *“Share”, “proportion”, “as a percentage of”* — the item over the total, × 100.
  + *“Per head”, “per capita”* — an aggregate over the population.
  + *“Ratio”, “terms of”, “multiplier”, “index”* — one quantity over another, with the denominator fixed by the definition.
]
