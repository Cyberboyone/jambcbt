#import "template.typ": *


#current-chapter.update("Full Paper 1")

#pagebreak(weak: true)

#hide[#heading(level: 1, outlined: true)[Full Paper 1: Output, Money and the Budget]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[PAPER 1 OF 2]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Full Paper 1]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Forty questions in thirty minutes, in the order and proportions of a real UTME Economics paper: the national accounts first, then money and prices, the budget and taxation, trade and payments, development and labour, and the Nigerian data items that close the paper.
  ]
]

#v(5pt)

+ Attempt *all 40* questions in *30 minutes*. One mark each; there is no negative marking, so leave no box empty.

+ Work in three passes: the questions you know on sight, the ones that need a calculation, then the guesses you were unsure of.

+ Record your answers in the answer sheet at the end of the questions, so that a second attempt is not coloured by the first.

#v(2pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[The paper covers the macro half of the syllabus, but the examiner mixes the two halves without warning: where a question uses a demand curve or an elasticity it is doing microeconomics, and Volume 1 is the reference. Every item still carries a full solution, so the paper remains a true rehearsal.]

#v(6pt)

== Section A — National Income and the Accounts (Questions 1–7)

#mcq(1, [Gross domestic product measures the value of goods and services],
  [produced within a country in a period],
  [produced by a country's citizens anywhere in the world],
  [consumed within a country in a period],
  [sold by a country's firms abroad]
)

#mcq(2, [GNP is obtained from GDP by],
  [subtracting depreciation],
  [adding net factor income from abroad],
  [dividing by the population],
  [adding exports and subtracting imports of goods]
)

#mcq(3, [In the expenditure approach, GDP equals],
  [C + S + T],
  [output of every firm less intermediate purchases],
  [C + I + G + (X − M)],
  [wages + rent + interest + profit]
)

#mcq(4, [To avoid double counting in the output approach, economists sum],
  [the value of second-hand sales],
  [the total sales of all firms],
  [the final value of goods and services],
  [the value of intermediate goods]
)

#mcq(5, [A Nigerian firm's profit earned in Ghana is included in Nigeria's],
  [gross domestic product but not its gross national product],
  [gross domestic product and its gross national product],
  [gross national product but not its gross domestic product],
  [neither, because it was earned abroad]
)

#mcq(6, [If nominal GDP rises from ₦150 billion to ₦180 billion while the price index rises from 100 to 120, real GDP has],
  [stayed the same],
  [risen by 20 per cent],
  [risen by 6 per cent],
  [fallen by 20 per cent]
)

#mcq(7, [Net national product differs from gross national product by],
  [transfer payments],
  [depreciation],
  [net factor income from abroad],
  [indirect taxes]
)

== Section B — Money, Banking and Prices (Questions 8–15)

#mcq(8, [The primary function of money is to serve as],
  [a medium of exchange],
  [a standard for deferred payment],
  [a unit of account],
  [a store of value]
)

#mcq(9, [Which quality of money prevents it from being easily counterfeited?],
  [durability],
  [portability],
  [difficulty of imitation],
  [divisibility]
)

#mcq(10, [The process by which the banking system expands deposits through repeated lending is called],
  [discounting],
  [credit creation],
  [deficit financing],
  [open market operation]
)

#mcq(11, [If the cash ratio is 20 per cent, the credit multiplier is],
  [4],
  [20],
  [2],
  [5]
)

#mcq(12, [A bank's liquidity ratio is held mainly to meet],
  [the demand of shareholders for dividends],
  [the demand of borrowers for long-term loans],
  [the demand of the government for taxes],
  [the demand of depositors for cash withdrawals]
)

#mcq(13, [The lender of last resort in the Nigerian banking system is the],
  [Central Bank of Nigeria],
  [Nigeria Deposit Insurance Corporation],
  [Federal Ministry of Finance],
  [Nigerian Exchange Group]
)

#mcq(14, [When the central bank sells government securities in the open market, the money supply],
  [rises then falls to the same level],
  [falls],
  [rises],
  [is unchanged]
)

#mcq(15, [Demand-pull inflation is caused by],
  [a fall in the money supply],
  [a rise in import prices],
  [a rise in aggregate demand beyond the economy's capacity],
  [a rise in the cost of raw materials]
)

== Section C — Public Finance and Taxation (Questions 16–22)

#mcq(16, [Government borrowing to cover a budget deficit adds directly to],
  [the balance of trade],
  [the money supply, whatever the source of the loan],
  [the external reserves],
  [the public debt]
)

#mcq(17, [Expansionary fiscal policy in a recession means],
  [raising taxes and cutting spending],
  [cutting taxes and raising spending],
  [selling government securities],
  [raising the monetary policy rate]
)

#mcq(18, [A tax is progressive when],
  [the rate falls as income rises],
  [it is levied on goods rather than incomes],
  [the rate rises as income rises],
  [the rate is the same at all incomes]
)

#mcq(19, [A regressive tax takes],
  [nothing from low incomes],
  [a larger proportion of low incomes than of high incomes],
  [a smaller proportion of low incomes than of high incomes],
  [the same proportion of every income]
)

#mcq(20, [The burden of a tax falls mainly on the consumer when],
  [both demand and supply are elastic],
  [demand is elastic and supply is inelastic],
  [demand is inelastic and supply is elastic],
  [the tax is levied on producers only]
)

#mcq(21, [Public debt is described as 'crowding out' private investment when government borrowing],
  [raises interest rates and reduces funds for firms],
  [lowers the exchange rate],
  [increases exports],
  [reduces the money supply]
)

#mcq(22, [Debt servicing refers to],
  [paying interest and principal as they fall due],
  [borrowing new loans to repay old ones],
  [repaying the principal only],
  [writing off a debt]
)

== Section D — International Trade and Payments (Questions 23–29)

#mcq(23, [The principle of comparative advantage says a country should specialise in the good],
  [for which it has the lowest opportunity cost],
  [which it consumes most of at home],
  [which it can produce most cheaply in money terms],
  [for which it has the largest absolute advantage]
)

#mcq(24, [The terms of trade are calculated as],
  [import price index ÷ export price index × 100],
  [tariff revenue ÷ total trade × 100],
  [export volume ÷ import volume × 100],
  [export price index ÷ import price index × 100]
)

#mcq(25, [A tariff on imports will],
  [raise the domestic price and reduce the quantity imported],
  [leave price and quantity unchanged],
  [raise both the domestic price and imports],
  [lower the domestic price and raise imports]
)

#mcq(26, [Export subsidies are intended to],
  [raise tariff revenue],
  [make a country's exports cheaper in foreign markets],
  [raise the domestic price of exports],
  [reduce the volume of exports]
)

#mcq(27, [Devaluation is expected to improve the balance of payments when],
  [the demand for exports and imports is inelastic],
  [the exchange rate is already floating],
  [the demand for exports and imports is elastic],
  [the country has no trade at all]
)

#mcq(28, [The current account of the balance of payments records],
  [trade in goods and services, income and transfers],
  [changes in the external reserves only],
  [the government budget],
  [long-term capital movements only]
)

#mcq(29, [Nigeria's membership of ECOWAS is expected mainly to],
  [replace the naira with a foreign currency],
  [restrict trade with member states],
  [raise tariffs on all imports],
  [expand markets and encourage intra-regional trade]
)

== Section E — Development, Population and Unemployment (Questions 30–35)

#mcq(30, [An increase in real GDP per capita will necessarily raise welfare only if],
  [the exchange rate is fixed],
  [the money supply is increased],
  [population growth is checked and the extra output is widely shared],
  [the government budget is balanced]
)

#mcq(31, [The Gini coefficient measures],
  [the growth rate of output],
  [the rate of inflation],
  [the level of employment],
  [the degree of inequality in a distribution]
)

#mcq(32, [Unemployment that appears because workers lack the skills employers need is],
  [structural],
  [cyclical],
  [frictional],
  [seasonal]
)

#mcq(33, [The labour force of a country is made up of],
  [all adults who pay tax],
  [the employed only],
  [everyone of working age],
  [the employed and the unemployed who are seeking work]
)

#mcq(34, [A country whose population grows at 2.5 per cent while output grows at 4 per cent will see income per head],
  [fall by about 1.5 per cent],
  [rise by about 1.5 per cent],
  [rise by about 6.5 per cent],
  [stay unchanged]
)

#mcq(35, [A high dependency ratio is likely to],
  [raise income per head at once],
  [reduce the birth rate immediately],
  [reduce savings and increase the burden on workers],
  [raise the savings rate]
)

== Section F — The Nigerian Economy and Data (Questions 36–40)

#mcq(36, [Nigeria's consumer price index is compiled by the],
  [Federal Inland Revenue Service],
  [Securities and Exchange Commission],
  [National Bureau of Statistics],
  [Central Bank of Nigeria]
)

#mcq(37, [The Federation Account exists to],
  [insure bank deposits],
  [regulate the capital market],
  [hold the personal savings of citizens],
  [receive and share revenue among the three tiers of government]
)

#mcq(38, [A fall in the world price of crude oil will most directly],
  [reduce Nigeria's foreign exchange earnings and government revenue],
  [reduce Nigeria's imports of petroleum products],
  [raise Nigeria's foreign exchange earnings],
  [raise the naira's external value]
)

#mcq(39, [Monetary policy in Nigeria is conducted by the],
  [National Bureau of Statistics],
  [Federal Ministry of Finance],
  [Central Bank of Nigeria],
  [Fiscal Responsibility Commission]
)

#mcq(40, [Nigeria's balance of payments would show a deficit on the current account if],
  [visible and invisible exports together were less than imports and outflows],
  [the naira were devalued],
  [the external reserves were rising],
  [the capital account were in surplus]
)

== How This Paper Is Marked

#block(breakable: false, width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[MARK YOURSELF]
  #v(4pt)
  #table(
    columns: (1.0fr, 2.6fr),
    inset: 4pt,
    align: (left + horizon, left + horizon),
    stroke: none,
    [*35–40*], [300-plus territory. The paper is secure; now work on speed rather than accuracy.],
    [*30–34*], [250 to 290. Reread the solutions to the questions you missed and name the chapter of each.],
    [*24–29*], [200 to 240. The gap is topic knowledge, not exam technique. Rework the two weakest chapters before the next paper.],
    [*0–23*], [Below 200. Work the chapters again, then retake this paper cold a week later.],
  )
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[A score is a diagnosis, not a verdict. What matters is the block that lost the marks: look down the score bands, then find the sections in which the misses cluster.]

#v(5pt)

== Where the Missed Marks Came From

#table(
  columns: (1.75fr, 0.65fr, 2.4fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Marks],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[If you missed more than a third, reread],
  ),
  [A — National income], [7], [Chapter 1, sections 1.2 to 1.5],
  [B — Money and prices], [8], [Chapter 2, especially 2.2 and 2.4],
  [C — Public finance], [7], [Chapter 3, sections 3.3 and 3.4],
  [D — Trade and payments], [7], [Chapter 4, sections 4.2 and 4.5],
  [E — Development and labour], [6], [Chapter 5, sections 5.1 and 5.3],
  [F — Nigerian economy and data], [5], [Chapter 6, then Appendix D],
)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[A section of four marks cannot be judged on one miss, and a section of fifteen cannot be judged on three. Repair the block that lost the most marks per question asked, not the one that lost the most marks.]

#v(6pt)

== Score Log

#table(
  columns: (0.9fr, 0.9fr, 0.7fr, 0.7fr, 0.7fr, 0.7fr, 0.7fr, 1.6fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Attempt],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[A],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[B],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[C],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[D],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[E],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Total],
  ),
  [First sitting], [#v(9pt)], [], [], [], [], [], [],
  [Second sitting], [#v(9pt)], [], [], [], [], [], [],
  [Third sitting], [#v(9pt)], [], [], [], [], [], [],
)

#v(4pt)

#text(size: 9.2pt)[Three sittings are enough to see a trend, and a trend is what the log is for. Fill the first line the day you mark this paper, and the second a week later with the same paper cold: the difference between the two totals is the amount the marking taught you. A third sitting a fortnight before the examination should be the best of the three, and if it is not, the chapters named in the solutions are still the ones to reread.]

#v(6pt)

== Answer Sheet

#text(size: 8.8pt)[Write the letter you chose in the box under each question number. If you change an answer, cross the old letter out and write the new one beside it — a crossed-out letter is easier to audit than an erased one.]

#v(3pt)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 8pt, inset: 8pt)[
  #set text(size: 8.2pt)
  #table(
    columns: (1fr,) * 10,
    inset: (x: 3pt, y: 2.5pt),
    align: center + horizon,
    stroke: 0.4pt + jamb-border,
    [#align(center)[*1*]], [#align(center)[*2*]], [#align(center)[*3*]], [#align(center)[*4*]], [#align(center)[*5*]], [#align(center)[*6*]], [#align(center)[*7*]], [#align(center)[*8*]], [#align(center)[*9*]], [#align(center)[*10*]],
    [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)],
    [#align(center)[*11*]], [#align(center)[*12*]], [#align(center)[*13*]], [#align(center)[*14*]], [#align(center)[*15*]], [#align(center)[*16*]], [#align(center)[*17*]], [#align(center)[*18*]], [#align(center)[*19*]], [#align(center)[*20*]],
    [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)],
    [#align(center)[*21*]], [#align(center)[*22*]], [#align(center)[*23*]], [#align(center)[*24*]], [#align(center)[*25*]], [#align(center)[*26*]], [#align(center)[*27*]], [#align(center)[*28*]], [#align(center)[*29*]], [#align(center)[*30*]],
    [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)],
    [#align(center)[*31*]], [#align(center)[*32*]], [#align(center)[*33*]], [#align(center)[*34*]], [#align(center)[*35*]], [#align(center)[*36*]], [#align(center)[*37*]], [#align(center)[*38*]], [#align(center)[*39*]], [#align(center)[*40*]],
    [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)], [#v(17pt)],
  )
]

#v(6pt)

== Rough Work

#text(size: 8.6pt)[Thirty seconds of written arithmetic beats two minutes of mental arithmetic. Use the lines for the elasticity, cost or equilibrium calculation you cannot do in your head, and leave the rest of the page for the questions you intend to revisit.]

#v(4pt)
#line(length: 100%, stroke: 0.4pt + jamb-border)
#v(13pt)
#line(length: 100%, stroke: 0.4pt + jamb-border)
#v(13pt)
#line(length: 100%, stroke: 0.4pt + jamb-border)
#v(13pt)
#line(length: 100%, stroke: 0.4pt + jamb-border)
#v(13pt)
#line(length: 100%, stroke: 0.4pt + jamb-border)
#v(13pt)

#pagebreak(weak: true)

#current-chapter.update("Full Paper 1 — Key")

=== Answer Key

#answer-key-grid((
  "A", "B", "C", "C", "C", "A", "B", "A", "C", "B",
  "D", "D", "A", "B", "C", "D", "B", "C", "B", "C",
  "A", "A", "A", "D", "A", "B", "C", "A", "D", "C",
  "D", "A", "D", "B", "C", "C", "D", "A", "C", "A",
))

#[
  #set text(size: 9.0pt)
  #set par(leading: 0.63em, spacing: 0.68em)

  #block(breakable: false)[
  === Complete Solutions

  #sol-item(1, "A", dense: true, pad: 6.56pt)[
    Produced inside the territory. The second option is gross national product, the third is expenditure without regard to origin, and the fourth counts only exports.
  ]

  #sol-item(2, "B", dense: true, pad: 6.56pt)[
    GNP = GDP + net factor income from abroad. The first option would be a trade-balance adjustment, the third gives net domestic product, and the fourth gives a per capita figure.
  ]
  ]

  #sol-item(3, "C", dense: true, pad: 6.56pt)[
    Consumption plus investment plus government spending plus net exports. The second is the income disposal identity, the third is the income approach, and the fourth is the output approach.
  ]

  #sol-item(4, "C", dense: true, pad: 6.56pt)[
    Only final value. Summing all sales counts intermediate goods again and again, and second-hand sales add no new output at all.
  ]

  #sol-item(5, "C", dense: true, pad: 6.56pt)[
    It is income of a Nigerian resident factor, so it belongs in GNP; it was produced in Ghana, so it belongs in Ghana's GDP.
  ]

  #sol-item(6, "A", dense: true, pad: 6.56pt)[
    ₦180 ÷ 1.20 = ₦150 billion, which is exactly the starting figure: the whole apparent rise was price change.
  ]

  #sol-item(7, "B", dense: true, pad: 6.56pt)[
    Gross less depreciation gives net. Net factor income separates GNP from GDP, and indirect taxes carry the product aggregate from market prices to factor cost, which gives national income.
  ]

  #sol-item(8, "A", dense: true, pad: 6.56pt)[
    Medium of exchange — it removes the double coincidence of wants that barter required. The others are genuine but secondary functions.
  ]

  #sol-item(9, "C", dense: true, pad: 6.56pt)[
    Difficulty of imitation, which protects the medium of exchange. Divisibility, durability and portability are the other desired qualities.
  ]

  #sol-item(10, "B", dense: true, pad: 6.56pt)[
    Credit creation. Deficit financing is government borrowing from the central bank, and open market operations and discounting are instruments of monetary control.
  ]

  #sol-item(11, "D", dense: true, pad: 6.56pt)[
    1 ÷ 0.20 = 5. The reciprocal of 2 and 4 would follow from cash ratios of 50 and 25 per cent, and 20 is the ratio read off as if it were the multiplier.
  ]

  #sol-item(12, "D", dense: true, pad: 6.56pt)[
    Liquidity is there for withdrawals. Long-term lending is precisely what liquidity restrains, and tax and dividends are not paid out of the liquidity ratio.
  ]

  #sol-item(13, "A", dense: true, pad: 6.56pt)[
    The central bank lends to banks in temporary difficulty so that a shortage of cash does not become a run.
  ]

  #sol-item(14, "B", dense: true, pad: 6.56pt)[
    Buyers pay with deposits, so bank reserves fall and the credit multiplier works in reverse.
  ]

  #sol-item(15, "C", dense: true, pad: 6.56pt)[
    Demand beyond capacity pulls prices up. Rising raw material and import costs are cost-push, and a fall in the money supply would restrain rather than cause inflation.
  ]

  #sol-item(16, "D", dense: true, pad: 6.56pt)[
    Borrowing is debt by definition; whether the money supply also rises depends on who lends, so the second option is too strong.
  ]

  #sol-item(17, "B", dense: true, pad: 6.56pt)[
    Tax cuts and higher spending raise aggregate demand. The reverse is contractionary, and the last two are monetary instruments.
  ]

  #sol-item(18, "C", dense: true, pad: 6.56pt)[
    The rate rises with income, so the rich pay a larger proportion — the defining property of progression.
  ]

  #sol-item(19, "B", dense: true, pad: 6.56pt)[
    A larger proportion from the poor, which is why taxes on basic goods are criticised as regressive even when the rate is uniform.
  ]

  #sol-item(20, "C", dense: true, pad: 6.56pt)[
    When buyers cannot escape the tax, they carry it. Statutory incidence — who hands the money over — does not decide the economic incidence.
  ]

  #sol-item(21, "A", dense: true, pad: 6.56pt)[
    Government demand for loanable funds pushes up the interest rate, so some private investment is displaced.
  ]

  #sol-item(22, "A", dense: true, pad: 6.56pt)[
    Interest plus principal. Rolling over old loans is refinancing and writing off is forgiveness.
  ]

  #sol-item(23, "A", dense: true, pad: 6.56pt)[
    Lowest opportunity cost. Absolute advantage in money terms is not the basis of the gain — that is the central insight of the theory.
  ]

  #sol-item(24, "D", dense: true, pad: 6.56pt)[
    The ratio of export to import prices. A rise means each unit exported buys more imports.
  ]

  #sol-item(25, "A", dense: true, pad: 6.56pt)[
    It is a tax on imports, so it raises the home price and cuts the volume — which is also why consumers lose and producers gain.
  ]

  #sol-item(26, "B", dense: true, pad: 6.56pt)[
    The subsidy lowers the price the exporter can accept abroad, which is why they are treated as a trade barrier by partner countries.
  ]

  #sol-item(27, "C", dense: true, pad: 6.56pt)[
    Elastic demand means the quantity response outweighs the price effect; with inelastic demand the trade balance worsens instead.
  ]

  #sol-item(28, "A", dense: true, pad: 6.56pt)[
    The current account covers goods, services, primary income and transfers; long-term capital belongs to the capital and financial accounts.
  ]

  #sol-item(29, "D", dense: true, pad: 6.56pt)[
    A common market widens the market and lowers barriers between members, which is also why trade diversion is the risk to watch.
  ]

  #sol-item(30, "C", dense: true, pad: 6.56pt)[
    Distribution and population growth both intervene: income per head can rise while most people are worse off.
  ]

  #sol-item(31, "D", dense: true, pad: 6.56pt)[
    Inequality, from 0 (perfect equality) to 1 (complete inequality). The other three have their own measures.
  ]

  #sol-item(32, "A", dense: true, pad: 6.56pt)[
    Structural: a mismatch of skills, cured by training rather than by demand stimulus.
  ]

  #sol-item(33, "D", dense: true, pad: 6.56pt)[
    Employed plus actively seeking. Those outside the labour force — students, retirees, discouraged workers — are excluded.
  ]

  #sol-item(34, "B", dense: true, pad: 6.56pt)[
    The difference between the two rates — about 1.5 percentage points of growth per head.
  ]

  #sol-item(35, "C", dense: true, pad: 6.56pt)[
    More non-workers per worker means more consumption and less saving, which is why it constrains investment.
  ]

  #sol-item(36, "C", dense: true, pad: 6.56pt)[
    The NBS compiles the index and publishes the inflation rate derived from it.
  ]

  #sol-item(37, "D", dense: true, pad: 6.56pt)[
    It is the constitutional pool from which the monthly allocation is made, with derivation as one of the sharing principles.
  ]

  #sol-item(38, "A", dense: true, pad: 6.56pt)[
    Both the export earnings and the oil-linked revenue fall together, which is the single-commodity vulnerability the chapter describes.
  ]

  #sol-item(39, "C", dense: true, pad: 6.56pt)[
    The CBN sets the monetary policy rate and uses the reserve and liquidity ratios and open market operations.
  ]

  #sol-item(40, "A", dense: true, pad: 6.56pt)[
    A current-account deficit means the credits on goods, services and transfers are smaller than the debits.
  ]

]

