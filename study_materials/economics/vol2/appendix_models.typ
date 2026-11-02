#import "template.typ": *

#current-chapter.update("Appendix J: Twelve Model Calculations")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: Twelve Model Calculations]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twelve Model Calculations]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The twelve calculations that between them cover almost every mark the
    macroeconomics half of the paper grants. Each is written out step by step, in the
    order a candidate should write it, and each ends with the arithmetic checked a
    second way.
  ]
]

#v(5pt)

#rule-box("The order to write any macro calculation")[
  + *Write the formula.* Every mark after this is arithmetic.
  + *Substitute the figures in one line.* No rounding yet.
  + *Compute, then name the unit.* Naira, per cent, or a ratio with no unit.
  + *Check by a second route.* The series against the formula, the shares against the tax, the two elasticities against the split.
]

#v(5pt)

== J.1 GDP by the Expenditure Method

*An economy has consumption of ₦420bn, gross investment of ₦130bn, government spending of ₦160bn, exports of ₦95bn and imports of ₦115bn. Find GDP and, given net factor income of −₦12bn, find GNP.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + GDP = C + I + G + (X − M) = 420 + 130 + 160 + (95 − 115).
  + Net exports = −₦20bn, so GDP = 420 + 130 + 160 − 20 = *₦690bn*.
  + GNP = GDP + net factor income = 690 − 12 = *₦678bn*.
]

*Check:* adding exports and imports instead of taking the difference would give ₦900bn — a figure larger than the economy, which is the sign that the sign was lost.

#v(4pt)

== J.2 Real GDP and the Deflator

*Nominal GDP rises from ₦240bn to ₦300bn while the price index rises from 100 to 125. Find real GDP in both years and the growth of real output.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Real GDP in the first year = 240 ÷ 1.00 = *₦240bn*.
  + Real GDP in the second year = 300 ÷ 1.25 = *₦240bn*.
  + Growth of real output = 0 ÷ 240 × 100 = *0 per cent*.
  + The deflator is 300 ÷ 240 × 100 = *125*, which is exactly the index given — the whole apparent increase was price.
]

*Check:* nominal growth was 25 per cent and the price level rose 25 per cent, so real growth must be zero. Whenever the two percentages match, the real figure cannot have moved.

#v(4pt)

== J.3 Per Capita Income and Growth per Head

*A country's nominal national income is ₦150tn, its population is 250 million and the price index is 150. Real income per head grows by how much if population grows 2 per cent and real output 3 per cent?*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Real national income = 150 ÷ 1.50 = *₦100tn*.
  + Real income per head = 100,000,000,000,000 ÷ 250,000,000 = *₦400,000*.
  + Growth per head = growth of output − growth of population = 3 − 2 = *1 per cent*.
]

*Check:* ₦400,000 × 1.01 = ₦404,000 the following year. Dividing the nominal figure by the population alone would give ₦600,000 and overstate the standard of living by half.

#v(4pt)

== J.4 The Multiplier

*Investment rises by ₦4bn and the marginal propensity to consume is 0.75. Find the multiplier, the eventual change in national income, and the change if the marginal propensity to import is 0.15 and the tax rate 0.10.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Multiplier = 1 ÷ (1 − 0.75) = 1 ÷ 0.25 = *4*.
  + Change in income = 4 × ₦4bn = *₦16bn*.
  + With leaks: 1 ÷ (0.25 + 0.10 + 0.15) = 1 ÷ 0.50 = *2*, so the change is *₦8bn*.
  + The extra leaks halve the multiplier, exactly as the formula predicts.
]

*Check:* the rounds are ₦4bn, ₦3bn, ₦2.25bn … and the sum of the series is 4 ÷ (1 − 0.75) = ₦16bn. The arithmetic of the series and the formula must agree.

#v(4pt)

== J.5 Credit Creation

*A bank receives a deposit of ₦80,000; the cash reserve ratio is 20 per cent. Find the bank's own excess reserves, the total deposits the system can create, and the credit created.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + The bank keeps 20 per cent: 0.20 × 80,000 = *₦16,000*.
  + It lends the remaining *₦64,000*, which returns to the system as a new deposit.
  + Credit multiplier = 1 ÷ 0.20 = *5*.
  + Total deposits = 80,000 × 5 = *₦400,000*.
  + Credit created = 400,000 − 80,000 = *₦320,000*, which is 64,000 × 5.
]

*Check:* the new deposits must be a multiple of the first one and the created credit must be the deposit times the multiplier less the original deposit. Both routes give the same ₦320,000.

#v(4pt)

== J.6 The Inflation Rate and the Real Interest Rate

*The consumer price index moves from 240 to 264 over a year. A bank pays 18 per cent on deposits. Find the inflation rate and the real return.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Inflation = (264 − 240) ÷ 240 × 100 = 24 ÷ 240 × 100 = *10 per cent*.
  + Real interest = nominal − inflation = 18 − 10 = *8 per cent*.
  + More exactly, (1.18 ÷ 1.10) − 1 = *7.3 per cent*; the subtraction is the answer the paper expects.
]

*Check:* the index rose by 24 points on a base of 240, which is a tenth — not 24 per cent. Reading the points as the rate is the single commonest arithmetic error in the paper.

#v(4pt)

== J.7 The Budget Balance

*Revenue is ₦8.5tn and expenditure ₦7.2tn, of which ₦2.1tn is capital. If GDP is ₦60tn, find the balance, the balance as a share of GDP, and what the government must do with the surplus.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Balance = revenue − expenditure = 8.5 − 7.2 = *+₦1.3tn*, a surplus.
  + As a share of GDP: 1.3 ÷ 60 × 100 = *2.2 per cent*.
  + The surplus can retire debt, be saved in the excess crude account, or fund extra capital spending without borrowing.
  + Recurrent spending is 7.2 − 2.1 = *₦5.1tn*, so 71 per cent of expenditure is recurrent.
]

*Check:* a surplus means no new borrowing, so the public debt cannot rise from this year's budget — only from refinancing.

#v(4pt)

== J.8 Splitting the Burden of a Tax

*A tax of ₦3 per unit is imposed. Demand elasticity is 2 and supply elasticity is 1. Find the consumer's share and the producer's share.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Consumer's share = Es ÷ (Ed + Es) = 1 ÷ 3 = *33.3 per cent*, or ₦1.00.
  + Producer's share = Ed ÷ (Ed + Es) = 2 ÷ 3 = *66.7 per cent*, or ₦2.00.
  + The two shares add to the tax, ₦1 + ₦2 = ₦3.
  + The more elastic side escapes, so the less elastic side — here the producer — pays more.
]

*Check:* the price buyers pay rises by ₦1 and the price sellers keep falls by ₦2. The consumer's share is the smaller because demand is the more elastic.

#v(4pt)

== J.9 Comparative Advantage and the Gains from Trade

*Nigeria needs 2 hours for a bag of rice and 4 hours for a bale of cloth; Ghana needs 3 hours for rice and 3 hours for cloth. Find each country's opportunity costs and the direction of trade.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Nigeria: 1 bag of rice costs 2 ÷ 4 = *0.5 bales of cloth*; 1 bale of cloth costs *2 bags of rice*.
  + Ghana: 1 bag of rice costs 3 ÷ 3 = *1 bale of cloth*; 1 bale of cloth costs *1 bag of rice*.
  + Nigeria has the lower cost of rice (0.5 against 1), so Nigeria specialises in rice.
  + Ghana has the lower cost of cloth (1 against 2), so Ghana specialises in cloth.
]

*Check:* Nigeria is also the absolutely cheaper producer of rice, so the two rules agree there — but for cloth Ghana wins on comparative advantage while Nigeria wins on neither absolute measure for cloth. The comparative rule is the one that decides.

#v(4pt)

== J.10 The Balance of Payments

*Exports of goods ₦40bn, imports of goods ₦55bn, services sold abroad ₦9bn, services bought ₦3bn, remittances in ₦6bn, and capital inflow ₦12bn. Find the trade balance, the current-account balance and the overall balance.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Balance of trade = 40 − 55 = *−₦15bn*, a visible deficit.
  + Net services = 9 − 3 = +₦6bn; transfers = +₦6bn.
  + Current account = −15 + 6 + 6 = *−₦3bn*.
  + Overall balance = −3 + 12 = *+₦9bn*, so the reserves rise by ₦9bn.
]

*Check:* the current deficit is smaller than the trade deficit because the invisible surplus covers part of it. A deficit that shrinks when invisibles are added is the normal case for a country with a large services or remittance inflow.

#v(4pt)

== J.11 The Dependency Ratio and the Labour-Force Rate

*A country has 34 million people under 15, 8 million over 64, 78 million aged 15 to 64, of whom 52 million are in the labour force. Find the dependency ratio, the labour-force rate and the unemployment rate if 4.7 million are unemployed.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Dependants = 34 + 8 = 42 million; working-age = 78 million.
  + Dependency ratio = 42 ÷ 78 × 100 = *53.8 per cent*.
  + Labour-force rate = 52 ÷ 78 × 100 = *66.7 per cent*.
  + Unemployment rate = 4.7 ÷ 52 × 100 = *9.0 per cent*.
]

*Check:* the unemployment rate divides by the labour force, not by the working-age population — 4.7 ÷ 78 would give 6.0 per cent and understate the problem by a third.

#v(4pt)

== J.12 The Terms of Trade and the Tariff

*Export prices rise from an index of 120 to 138 while import prices rise from 120 to 144. A good with a world price of ₦4.60 carries a tariff of ₦1.50. Find the change in the terms of trade and the domestic price with the tariff.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Terms of trade = export index ÷ import index × 100 = 138 ÷ 144 × 100 = *95.8*.
  + Base year terms of trade were 120 ÷ 120 × 100 = *100*, so the terms have *deteriorated* by 4.2 per cent.
  + Domestic price with the tariff = 4.60 + 1.50 = *₦6.10*.
  + The tariff raises the domestic price by 1.50 ÷ 4.60 × 100 = *32.6 per cent*.
]

*Check:* exports rose 15 per cent and imports 20 per cent, so the ratio must fall — the terms of trade deteriorate whenever import prices rise faster than export prices.

#v(5pt)

#v(5pt)

== J.13 How the Paper Combines Two Formulas

#table(
  columns: (1.85fr, 1.55fr, 1.45fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[First formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Second formula],
  ),
  [Real income per head], [real = nominal ÷ index], [divide by the population],
  [Growth of income per head], [output growth], [minus population growth],
  [The effect of a rise in investment on income per head], [the multiplier], [divide by the population],
  [Credit created after a reserve-ratio change], [the new credit multiplier], [multiply by the first deposit],
  [The real value of a tax take], [deflate by the price index], [divide by the population, or by GDP for a share],
  [The balance of payments after a devaluation], [the trade balance], [add services, income and transfers],
  [A budget deficit as a share of GDP], [revenue − expenditure], [divide by GDP and multiply by 100],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Every composite question is written as two familiar questions in one sentence. Split it at the comma, answer the first part in naira, then apply the second formula to that answer — and never round between the two steps.]

#v(5pt)

== J.14 The Twelve in One Line Each

#[
  #set text(size: 8.3pt)
#table(
  columns: (0.42fr, 1.45fr, 3.0fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*1*], [Expenditure GDP], [add C, I and G, then *subtract* imports from exports before adding],
  [*2*], [Real GDP], [divide the nominal total by the index; if the two percentages match, real growth is zero],
  [*3*], [Per head], [deflate first, then divide by the population — never by the labour force],
  [*4*], [Multiplier], [1 ÷ (1 − MPC); add the tax and import leaks to the denominator to shrink it],
  [*5*], [Credit], [total deposits = first deposit × (1 ÷ reserve ratio); credit created is that total less the first deposit],
  [*6*], [Inflation], [divide the *change* in the index by the *old* index; real return is nominal less inflation],
  [*7*], [Budget], [revenue less expenditure; a negative sign is a deficit, and a share of GDP is the deficit ÷ GDP],
  [*8*], [Incidence], [the less elastic side pays more: Es ÷ (Ed + Es) to the consumer, the rest to the producer],
  [*9*], [Comparative advantage], [opportunity cost of the good you gain, measured in the good you give up],
  [*10*], [Balance of payments], [trade balance, then add services and transfers for the current account, then capital],
  [*11*], [Dependency], [dependants ÷ working-age × 100; the labour-force rate and the unemployment rate use the labour force],
  [*12*], [Terms of trade], [export index ÷ import index × 100 — a ratio of prices, never of volumes],
)

  #v(4pt)

  #text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Read this table before the drill, not after: the twelve lines are the whole arithmetic of the paper, and every worked example in this appendix is one of them with the numbers filled in.]
]
