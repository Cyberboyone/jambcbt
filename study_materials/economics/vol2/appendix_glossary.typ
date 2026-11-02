#import "template.typ": *

#current-chapter.update("Appendix G: Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: Glossary]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every technical term the volume uses, defined in the words the examiner expects and
    no more. Where a term has a textbook definition and a careless everyday meaning, the
    everyday meaning is named as the trap.
  ]
]

#v(5pt)

#[
  #set text(size: 8.3pt)
  #set par(leading: 0.6em)
#table(
  columns: (0.95fr, 2.95fr, 0.95fr, 2.95fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Absolute advantage*], [The ability to produce more of a good than another country with the same resources.], [*Aggregate demand*], [Total planned expenditure on domestic output: C + I + G + (X − M).],
  [*Aggregate supply*], [Total output producers are willing to supply at each price level.], [*Appreciation*], [A market rise in the value of a floating currency.],
  [*Automatic stabiliser*], [A tax or benefit that damps the cycle without a new policy decision.], [*Balance of payments*], [The record of all transactions between residents and the rest of the world.],
  [*Balance of trade*], [Visible exports minus visible imports.], [*Balanced budget*], [A budget in which revenue equals expenditure.],
  [*Bank rate*], [The rate at which the central bank lends to commercial banks.], [*Barter*], [Trade by exchange of goods, without money.],
  [*Budget*], [The government's statement of expected revenue and proposed expenditure.], [*Capital account*], [The record of capital flows: loans, investment and reserves.],
  [*Capital expenditure*], [Government spending that creates a lasting asset.], [*Cash reserve ratio*], [The share of deposits a bank must hold as cash or with the central bank.],
  [*Central bank*], [The bank that issues currency, controls credit and acts as lender of last resort.], [*Circular flow*], [The flow of income and spending among households, firms, government and the foreign sector.],
  [*Commercial bank*], [A bank that accepts deposits and lends to the public for profit.], [*Comparative advantage*], [The ability to produce a good at a lower opportunity cost than another country.],
  [*Consumer price index*], [A measure of the cost of a representative basket of goods, used to compute inflation.], [*Consumption*], [Household spending on goods and services.],
  [*Cost-push inflation*], [Inflation caused by rising costs of production.], [*Credit creation*], [The expansion of bank deposits through lending.],
  [*Credit multiplier*], [The total deposits a banking system can create from a unit of reserves: 1 ÷ the reserve ratio.], [*Crowding out*], [The reduction in private investment caused by government borrowing raising interest rates.],
  [*Current account*], [Goods, services, income and transfers in the balance of payments.], [*Cyclical unemployment*], [Unemployment caused by a deficiency of aggregate demand.],
  [*Debt service*], [The interest and principal paid on public debt as they fall due.], [*Deficit*], [The excess of expenditure over revenue in a period.],
  [*Deflation*], [A sustained fall in the general price level.], [*Demand-pull inflation*], [Inflation caused by demand growing faster than output.],
  [*Demographic transition*], [The movement from high birth and death rates to low ones.], [*Dependency ratio*], [Dependants as a percentage of the working-age population.],
  [*Depreciation*], [A market fall in the value of a floating currency; also the wearing out of capital.], [*Devaluation*], [A deliberate fall in a currency's value under a fixed exchange rate.],
  [*Development*], [Improvement in welfare, including income, health, education and distribution.], [*Direct tax*], [A tax on income or profit that cannot be shifted.],
  [*Disposable income*], [Income left after direct taxes and transfers.], [*Economic growth*], [A sustained rise in real national output.],
  [*Embargo*], [A complete ban on trade with a country.], [*Exchange rate*], [The price of one currency in terms of another.],
  [*Expansionary policy*], [Policy that raises aggregate demand: higher spending, lower taxes, lower rates.], [*External reserves*], [Foreign-currency assets held by the central bank.],
  [*Fiscal policy*], [The use of taxation and government spending to influence the economy.], [*Frictional unemployment*], [Short-term unemployment while changing jobs.],
  [*GDP*], [The market value of final goods and services produced within a country in a period.], [*Gini coefficient*], [A measure of inequality from 0 (equality) to 1 (complete inequality).],
  [*GNP*], [GDP plus net factor income from abroad.], [*Human capital*], [The skills and health embodied in people, which raise productivity.],
  [*Human development index*], [A composite of income per capita, life expectancy and schooling.], [*Import quota*], [A physical limit on the quantity of a good that may be imported.],
  [*Incidence of a tax*], [The final distribution of a tax's burden between buyers and sellers.], [*Income elasticity*], [The responsiveness of demand to a change in income.],
  [*Inflation*], [A sustained rise in the general price level.], [*Informal sector*], [Activity that is unregistered and therefore untaxed and under-measured.],
  [*Injection*], [Spending entering the circular flow: investment, government spending, exports.], [*Investment*], [Spending on capital goods, including inventories.],
  [*J-curve*], [The initial worsening of the trade balance after a devaluation.], [*Labour force*], [The employed plus the unemployed who are actively seeking work.],
  [*Laffer curve*], [The relationship between the tax rate and the revenue it yields.], [*Leakage*], [Income leaving the circular flow: saving, taxation, imports.],
  [*Legal tender*], [Money that a creditor must accept in settlement of a debt.], [*Lender of last resort*], [The central bank's role in lending to banks in temporary difficulty.],
  [*Liquidity*], [The ease with which an asset can be converted into cash.], [*Monetary policy*], [Control of the money supply and credit by the central bank.],
  [*Money supply*], [Currency in circulation plus bank deposits.], [*Moral suasion*], [Persuasion of banks to follow policy without legal compulsion.],
  [*Multiplier*], [The ratio of the change in national income to the change in spending that caused it.], [*Net factor income*], [Income earned by a country's factors abroad less income paid to foreign factors at home.],
  [*Nominal*], [Measured at current prices, without removing inflation.], [*Open market operations*], [The central bank's buying and selling of government securities.],
  [*Opportunity cost*], [The value of the next best alternative forgone.], [*Per capita income*], [National income divided by population.],
  [*Phillips curve*], [The short-run relationship between inflation and unemployment.], [*Progressive tax*], [A tax taking a larger proportion of income as income rises.],
  [*Proportional tax*], [A tax taking the same proportion of every income.], [*Public debt*], [The total money owed by government at a point in time.],
  [*Public good*], [A good that is non-excludable and non-rival, so the market under-provides it.], [*Real income*], [Income measured at constant prices.],
  [*Recurrent expenditure*], [Government spending on the running costs of the year.], [*Regressive tax*], [A tax taking a larger proportion of low incomes than of high ones.],
  [*Reserve ratio*], [See cash reserve ratio.], [*Seasonal unemployment*], [Unemployment caused by the seasonal pattern of work.],
  [*Stagflation*], [Rising prices together with falling output and rising unemployment.], [*Structural unemployment*], [Unemployment caused by a mismatch between skills and jobs.],
  [*Tariff*], [A tax on imported goods.], [*Terms of trade*], [Export prices relative to import prices, × 100.],
  [*Trade creation*], [The replacement of high-cost domestic production by lower-cost partner imports in a union.], [*Trade diversion*], [The replacement of low-cost outside imports by higher-cost partner imports in a union.],
  [*Transfer payment*], [A payment for which nothing is currently produced.], [*Underemployment*], [Work below the worker's capacity or below the hours desired.],
  [*Unemployment rate*], [The unemployed as a percentage of the labour force.], [*Value added*], [The value of output less the value of intermediate purchases.],
)
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Where the paper offers a definition as an option, it is almost always the textbook one, stripped of the example. Learn the stripped form; keep the example for the explanation.]
