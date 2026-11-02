"""The 120-question master bank for Economics Volume 2 — twenty per chapter.

No stem in this file repeats a stem in the chapter drills or in either paper.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


BANK_1 = [
    q("The central problem of economics arises because", [
        "wants are unlimited and resources are scarce",
        "governments collect too much tax",
        "prices keep changing",
        "population grows every year",
    ], 0, "Scarcity against unlimited wants is the definition of the economic problem; the other options are consequences or applications of it."),

    q("Which of these is a factor of production?", [
        "money",
        "capital",
        "a share certificate",
        "a bank loan",
    ], 1, "Capital — goods used to produce other goods. Money and its paper claims are means of acquiring factors, not factors themselves."),

    q("The reward for enterprise is", [
        "wages",
        "rent",
        "interest",
        "profit",
    ], 3, "Profit, and with it the risk of loss. Wages go to labour, rent to land and interest to capital."),

    q("A production possibility curve that shifts outwards indicates", [
        "economic growth",
        "unemployment",
        "inflation",
        "inefficiency",
    ], 0, "The economy can produce more of both goods than before — the graphical signature of growth."),

    q("A point inside a production possibility curve shows", [
        "full employment",
        "idle resources",
        "an impossible combination",
        "a fall in demand",
    ], 1, "The economy could produce more of both goods, so resources are idle or inefficiently used."),

    q("The opportunity cost of choosing one good is", [
        "the money paid for it",
        "the next best alternative forgone",
        "the total cost of production",
        "the tax on the good",
    ], 1, "The alternative given up. Money cost is a price, and the other two are accounting rather than economic costs."),

    q("Which of the following transactions is included in this year's GDP?", ["a newly built house sold this year", "the sale of a five-year-old car", "a pension paid to a retiree", "the purchase of shares on the stock exchange"], 0, "The new house is output produced this year. The used car was counted when it was built, a pension is a transfer, and buying shares merely exchanges one asset for another."),

    q("Transfer payments are excluded from GDP because they", [
        "involve no production of goods or services",
        "are paid only to the poor",
        "are too small to measure",
        "are counted as exports",
    ], 0, "A pension moves income between people; nothing new is produced, so counting it would double count."),

    q("Intermediate goods are excluded from GDP to", [
        "avoid double counting",
        "reduce the size of the figure for political reasons",
        "exclude imports",
        "exclude the informal sector",
    ], 0, "Their value is already inside the final good; counting them again would inflate GDP by the number of stages of production."),

    q("In an open economy, the circular flow is enlarged by", [
        "exports, imports, taxes and government spending",
        "consumption and saving only",
        "investment and saving only",
        "the money supply",
    ], 0, "Government and the foreign sector add injections and leakages to the simple two-sector model."),

    q("Equilibrium in the circular flow occurs when", [
        "injections equal leakages",
        "saving equals consumption",
        "exports equal imports",
        "taxes equal government spending",
    ], 0, "S + T + M = I + G + X. Each of the other equalities is a single pair within that balance, not the balance itself."),

    q("A deflator is used to", [
        "convert nominal values into real values",
        "raise the price level",
        "convert foreign currency into naira",
        "convert savings into investment",
    ], 0, "It strips the price change out, leaving the change in real output."),

    q("If nominal GDP is ₦120 billion and the price index is 150, real GDP at the base year's prices is", [
        "₦80 billion",
        "₦90 billion",
        "₦180 billion",
        "₦120 billion",
    ], 0, "₦120 ÷ 1.50 = ₦80 billion. Multiplying by the index instead of dividing gives ₦180 billion, which is the predictable error."),

    q("National income per head is a poor measure of welfare because it omits", [
        "income distribution and unpaid work",
        "the value of exports",
        "the level of investment",
        "the size of the labour force",
    ], 0, "Two people with the same average income can have very different distributions, and housework and subsistence output appear in no account."),

    q("Which item is a leakage from the circular flow?", [
        "government spending",
        "exports",
        "taxation",
        "investment",
    ], 2, "Taxation takes purchasing power out of the domestic flow; the other three are injections into it."),

    q("If government spending rises by ₦2 billion and the marginal propensity to consume is 0.8, national income eventually rises by", [
        "₦2.5 billion",
        "₦10 billion",
        "₦4 billion",
        "₦1.6 billion",
    ], 1, "The multiplier is 1 ÷ 0.2 = 5, so 5 × ₦2 billion = ₦10 billion — the whole of the successive rounds of spending, not just the first."),

    q("An increase in the multiplier will occur if", [
        "the marginal propensity to save rises",
        "the marginal propensity to consume rises",
        "taxes rise",
        "imports rise",
    ], 1, "A higher marginal propensity to consume leaves less of each round leaking out, so the successive rounds are larger."),

    q("GNP exceeds GDP when a country", [
        "receives more factor income from abroad than it pays out",
        "exports more than it imports",
        "has a budget surplus",
        "has a current account deficit",
    ], 0, "Net factor income is positive, so adding it to GDP gives a larger GNP — the position of a country with substantial overseas investment."),

    q("Depreciation is deducted from GNP because it", [
        "represents capital used up in production",
        "is a transfer payment",
        "is a tax on firms",
        "counts as an import",
    ], 0, "The capital worn out during the year must be replaced before the economy's income can be counted as net."),

    q("Which of these is the best measure of the change in a country's living standards over time?", [
        "nominal GDP",
        "real GDP per capita",
        "the money supply",
        "the balance of payments",
    ], 1, "It removes both the price change and the population change, so what is left is output per person at constant prices."),
]


BANK_2 = [
    q("Money is defined in economics as", [
        "anything generally accepted as a means of payment",
        "the coins and notes issued by the central bank",
        "the total of all bank deposits",
        "the wealth of a country",
    ], 0, "General acceptability is the defining property; notes and coins are only one form of it and wealth is a much wider category."),

    q("The unit-of-account function of money makes it possible to", [
        "compare the values of different goods",
        "store wealth for the future",
        "settle debts later",
        "avoid double counting in GDP",
    ], 0, "A common measure of value allows prices to be compared and accounts to be kept."),

    q("Money must be portable so that it", [
        "can be carried about easily",
        "does not wear out quickly",
        "can be divided into small units",
        "is hard to forge",
    ], 0, "Portability is about carriage; durability is about wear, divisibility about small purchases and difficulty of imitation about forgery."),

    q("Inflation reduces the usefulness of money as", [
        "a medium of exchange",
        "a store of value",
        "a unit of account",
        "legal tender",
    ], 1, "Money held loses purchasing power, so people hold less of it and buy goods instead — the flight from money."),

    q("The money supply in a modern economy consists mainly of", [
        "currency and bank deposits",
        "gold and foreign reserves",
        "shares and bonds",
        "land and buildings",
    ], 0, "Notes, coins and, above all, deposits. Gold and reserves back the currency but are not themselves the money supply."),

    q("Credit creation by commercial banks is limited by", [
        "the cash reserve ratio and the demand for loans",
        "the number of bank branches",
        "the level of exports",
        "the government's tax rate",
    ], 0, "The reserve ratio sets the arithmetic limit and the demand for loans sets the practical one; neither branch numbers nor exports enters it."),

    q("A bank's liabilities are", [
        "the deposits customers hold with it",
        "the loans it has made",
        "the securities it owns",
        "its buildings and equipment",
    ], 0, "Deposits are owed to customers. Loans, securities and buildings are the assets that back them."),

    q("The cash reserve ratio is the proportion of", [
        "deposits that banks must keep as cash or with the central bank",
        "loans that must be repaid each year",
        "profits paid as dividends",
        "capital held in foreign currency",
    ], 0, "It is a reserve requirement against deposits, which is why raising it reduces the funds available for lending."),

    q("The central bank acts as banker to the government when it", [
        "holds government accounts and manages its debt",
        "lends to commercial banks",
        "issues currency",
        "supervises the stock exchange",
    ], 0, "Keeping the accounts and handling borrowing are the banking services; the other options are separate functions."),

    q("Open market operations affect the money supply by", [
        "changing the reserves of commercial banks",
        "changing the tax rate",
        "changing the exchange rate directly",
        "changing the level of government spending",
    ], 0, "Buying securities adds reserves and selling them drains reserves, and reserves determine how much credit the banks can create."),

    q("A rise in the bank rate is likely to", [
        "increase borrowing and investment",
        "reduce borrowing and investment",
        "raise exports",
        "reduce taxation",
    ], 1, "Borrowing becomes dearer, so credit falls and investment with it. The effect on exports would come only indirectly through the exchange rate."),

    q("Specialisation in banking refers to the", [
        "division of banking functions such as merchant, commercial and development banking",
        "merging of all banks into one",
        "closing of rural branches",
        "fixing of interest rates",
    ], 0, "Different institutions serve different functions, which is what the term describes."),

    q("A development bank differs from a commercial bank because it", [
        "provides long-term finance for development projects",
        "accepts demand deposits from the public",
        "issues currency",
        "lends only to households",
    ], 0, "Long-term project finance rather than short-term commercial lending — the gap that commercial banks normally leave."),

    q("The main asset of a commercial bank is", [
        "its loans and advances",
        "its cash holdings",
        "its customers' deposits",
        "its share capital",
    ], 0, "Loans and advances earn the income and form the largest asset; deposits are on the other side of the balance sheet."),

    q("A persistent rise in prices accompanied by falling output and rising unemployment is called", ["demand-pull inflation", "cost-push inflation", "stagflation", "hyperinflation"], 2, "Stagflation — stagnation plus inflation. It defeats the standard remedies, since fighting inflation deepens the slump and fighting the slump feeds the inflation."),

    q("Demand-pull inflation can be controlled by", [
        "raising taxes and interest rates",
        "raising government spending",
        "increasing the money supply",
        "lowering interest rates",
    ], 0, "Both instruments reduce aggregate demand, which is what is pulling prices up."),

    q("Cost-push inflation is difficult to control because", [
        "it requires incomes policy rather than demand management",
        "it is caused by too much money",
        "it affects only imports",
        "it cannot be measured",
    ], 0, "Restraining demand would raise unemployment without touching the cost pressure, so prices and incomes policy or supply-side measures are needed."),

    q("Deflation increases the real burden of", ["debt", "savings held in cash", "wages paid in kind", "exports"], 0, "A fixed money debt is repaid in money that is worth more, so the real burden rises — the reason central banks fear deflation as much as inflation."),

    q("Which group loses most during inflation?", [
        "debtors",
        "creditors and people on fixed incomes",
        "holders of real assets",
        "traders in goods",
    ], 1, "A fixed money income buys less and a fixed money claim is repaid in cheaper currency, so both lose while debtors gain."),

    q("The short-run Phillips curve suggests a trade-off between", [
        "inflation and unemployment",
        "growth and inflation",
        "unemployment and the exchange rate",
        "taxation and the budget deficit",
    ], 0, "Lower unemployment is associated with higher inflation along the curve, though the curve shifts when expectations change."),
]


BANK_3 = [
    q("Taxation may be defined as", ["a compulsory levy imposed by government on persons, goods and activities", "a voluntary contribution to public services", "a charge for a service rendered by government", "a loan made by citizens to government"], 0, "It is compulsory and general; a voluntary payment is a donation, a service charge is a price, and a loan must be repaid."),

    q("The budget is best described as", [
        "a statement of expected revenue and proposed expenditure",
        "a record of past spending only",
        "a list of government assets",
        "the central bank's credit plan",
    ], 0, "It looks forward, setting out what the government expects to receive and intends to spend."),

    q("A budget deficit is financed by", [
        "borrowing and drawing on reserves",
        "raising the cash reserve ratio",
        "reducing the money supply",
        "devaluing the currency",
    ], 0, "Borrowing at home or abroad, or using accumulated reserves; the other options are monetary actions, not sources of funds."),

    q("Which of the following is NOT an objective of fiscal policy?", ["full employment", "price stability", "economic growth", "fixing the exchange rate"], 3, "The exchange rate is set by the monetary authority, not by the budget. The other three are standard fiscal objectives."),

    q("Which of these is a direct tax?", [
        "value added tax",
        "import duty",
        "personal income tax",
        "excise duty",
    ], 2, "Income tax is levied on the person's income and cannot be shifted; the other three are indirect taxes on transactions."),

    q("Progressive taxation is justified mainly because it", [
        "reduces inequality",
        "raises more revenue per naira of tax",
        "is easier to administer",
        "encourages imports",
    ], 0, "The rich pay a larger proportion, which narrows the gap between incomes."),

    q("A tax on a good with perfectly inelastic demand will be borne", [
        "entirely by the consumer",
        "entirely by the producer",
        "equally by both",
        "by the government",
    ], 0, "Buyers cannot reduce quantity, so they pay the whole tax — the extreme case of the incidence rule."),

    q("The burden of a tax falls more heavily on producers when", [
        "demand is elastic and supply is inelastic",
        "demand is inelastic and supply is elastic",
        "both curves are inelastic",
        "the tax is levied on the buyers",
    ], 0, "Producers cannot pass it on to buyers who can easily walk away, so they absorb it."),

    q("The Laffer curve shows the relationship between", [
        "tax rate and tax revenue",
        "tax rate and inflation",
        "spending and employment",
        "debt and interest",
    ], 0, "Revenue rises with the rate up to a point and then falls, because high rates discourage the activity being taxed."),

    q("At the top of the Laffer curve", [
        "an increase in the tax rate reduces revenue",
        "an increase in the tax rate raises revenue",
        "revenue is zero",
        "the tax rate is zero",
    ], 0, "Beyond the peak the tax base shrinks faster than the rate rises, so revenue falls."),

    q("Indirect taxes are regressive in effect because", [
        "they fall on goods that take a larger share of low incomes",
        "they are paid by producers",
        "they are collected at the border",
        "they raise the price of luxury goods",
    ], 0, "The same rate on a basic good takes a bigger proportion of a small income, which is regression in effect."),

    q("Public expenditure on education is classified as", [
        "capital expenditure because it creates human capital",
        "recurrent expenditure because it is consumption",
        "a transfer payment",
        "debt servicing",
    ], 0, "Spending that builds a lasting asset — here human capital — is capital expenditure, even though much of the salary bill inside it recurs annually."),

    q("Transfer payments by government include", [
        "pensions and unemployment benefits",
        "salaries of civil servants",
        "purchase of office equipment",
        "interest on the national debt",
    ], 0, "Payments for which no good or service is currently produced in return; salaries and purchases buy services and goods, and interest is a payment for the use of capital."),

    q("The main aim of fiscal policy in a boom is to", [
        "restrain demand and prevent overheating",
        "increase demand to create jobs",
        "raise the exchange rate",
        "increase imports",
    ], 0, "Contraction: higher taxes and lower spending, which is the mirror image of the recession policy."),

    q("Automatic stabilisers are those that", [
        "operate without a new policy decision",
        "are passed by the legislature each year",
        "apply only to foreign trade",
        "are set by the central bank",
    ], 0, "Progressive taxes and unemployment benefits move automatically with the cycle, damping both booms and recessions."),

    q("Internal public debt is owed to", [
        "citizens and institutions of the same country",
        "foreign governments",
        "international organisations",
        "foreign private banks",
    ], 0, "It is domestic borrowing, so repayment stays within the economy, though it still transfers income to bondholders."),

    q("Debt servicing becomes a fiscal problem when", [
        "it absorbs a large share of government revenue",
        "the debt is held domestically",
        "the debt is long-term",
        "interest rates are low",
    ], 0, "When servicing crowds out spending on services and infrastructure, the debt has become a fiscal constraint."),

    q("Borrowing to finance a budget deficit may be inflationary because it", [
        "increases aggregate demand without increasing output",
        "reduces the money supply",
        "lowers prices",
        "reduces government spending",
    ], 0, "The spending enters the flow while the economy's capacity has not grown, so prices are bid up."),

    q("The principle of fiscal federalism in Nigeria divides", [
        "taxing powers and spending responsibilities among the tiers of government",
        "the national debt among the states",
        "the civil service between ministries",
        "the money supply among the banks",
    ], 0, "Powers and duties are allocated across federal, state and local government, with revenue shared through the Federation Account."),

    q("A tax is said to be equitable when it", [
        "is based on the taxpayer's ability to pay",
        "is easy to collect",
        "raises the maximum possible revenue",
        "falls on imported goods",
    ], 0, "Ability to pay is the equity criterion; ease of collection is administrative efficiency and maximum revenue is yield."),
]


BANK_4 = [
    q("International trade differs from domestic trade because it involves", [
        "different currencies and legal systems",
        "no transport costs",
        "no gains from specialisation",
        "no government intervention",
    ], 0, "Currency, law, language and distance all cross a border; the gains from specialisation are the same in both."),

    q("Absolute advantage means producing a good", [
        "with fewer resources than another country",
        "at a lower opportunity cost than another country",
        "with more labour",
        "at a higher price",
    ], 0, "Fewer inputs per unit. Comparative advantage, by contrast, is about the opportunity cost of the alternative given up."),

    q("A country has a comparative advantage in cloth if", [
        "the opportunity cost of cloth in terms of the other good is lower than abroad",
        "it produces more cloth in total than any other country",
        "it has more workers in cloth",
        "its cloth is cheaper in money terms",
    ], 0, "The opportunity-cost comparison is the definition; total output and money prices are absolute, not comparative, measures."),

    q("The gains from trade arise from", [
        "specialisation according to comparative advantage",
        "uniform tariffs in every country",
        "fixed exchange rates",
        "equal wages in every country",
    ], 0, "Specialise where the opportunity cost is lowest and exchange — both partners can end up with more than in autarky."),

    q("The terms of trade improve when", [
        "export prices rise relative to import prices",
        "import prices rise relative to export prices",
        "export volumes rise",
        "tariffs are raised on imports",
    ], 0, "The ratio has moved in the country's favour; a rise in export volume at unchanged prices does not change the terms of trade."),

    q("A specific tariff is levied as", ["a fixed amount of money per unit imported", "a percentage of the value of the import", "a limit on the number of units imported", "a payment to domestic exporters"], 0, "A fixed sum per unit. A percentage of value is an ad valorem tariff, a quantity limit is a quota, and a payment to exporters is a subsidy."),

    q("One effect of a tariff is that", [
        "domestic consumers pay more",
        "domestic consumers pay less",
        "the government loses revenue",
        "import volume rises",
    ], 0, "The price rises for domestic buyers, which is exactly why producers want protection and consumers lose."),

    q("A quota differs from a tariff in that the revenue from a quota accrues to", [
        "holders of import licences",
        "the government automatically",
        "domestic consumers",
        "foreign exporters only",
    ], 0, "The scarcity rent from the licence goes to whoever holds it, whereas tariff revenue goes to the treasury by definition."),

    q("The infant-industry argument for protection is weakened because", [
        "protected industries rarely become competitive",
        "infant industries always succeed",
        "tariffs raise no revenue",
        "consumers do not pay for protection",
    ], 0, "Shelter from competition removes the pressure to cut costs, so the protection tends to become permanent."),

    q("Devaluation of a currency makes", [
        "exports cheaper in foreign currency and imports dearer at home",
        "exports dearer and imports cheaper",
        "both exports and imports cheaper",
        "no difference to trade",
    ], 0, "That is precisely the relative-price change intended, which is why the elasticity of demand determines whether the trade balance improves."),

    q("The J-curve describes", [
        "the initial worsening of the trade balance after devaluation",
        "the rise in tariffs over time",
        "the fall in exports during a boom",
        "the growth of the money supply",
    ], 0, "Contracts are fixed in the short run, so the trade balance worsens before the quantity response arrives."),

    q("A surplus on the current account will be matched by", ["a rise in reserves or an outflow of capital", "a fall in reserves", "a rise in imports", "a fall in exports"], 0, "The accounts must balance, so a current-account surplus shows up as reserve accumulation or capital export."),

    q("A deficit on the current account can be financed by", [
        "a surplus on the capital account",
        "a rise in domestic consumption",
        "a fall in the exchange rate",
        "an increase in tariffs",
    ], 0, "Capital inflow finances the current-account deficit; the balance of payments identity requires it."),

    q("The current account includes", [
        "goods, services and unilateral transfers",
        "long-term loans only",
        "portfolio investment only",
        "changes in reserves only",
    ], 0, "Visible trade, invisible trade and transfers such as remittances form the current account; loans and portfolio flows are capital."),

    q("Remittances from Nigerians abroad are recorded in the balance of payments as", [
        "a current-account transfer",
        "a capital-account inflow",
        "a visible export",
        "an invisible import",
    ], 0, "They are unilateral transfers — income sent home with nothing supplied in return — so they sit in the current account."),

    q("A customs union differs from a free trade area because it also has", [
        "a common external tariff",
        "free movement of labour",
        "a single currency",
        "a common central bank",
    ], 0, "Member states adopt one tariff against outsiders; free movement of labour and a single currency go beyond a customs union."),

    q("Trade creation occurs when a customs union", [
        "replaces high-cost domestic production with lower-cost imports from a partner",
        "diverts imports from a low-cost outsider to a high-cost partner",
        "raises tariffs against all outsiders",
        "reduces the volume of trade",
    ], 0, "Genuine efficiency gain; the second option is trade diversion, its opposite."),

    q("ECOWAS aims principally to", [
        "promote economic integration among West African states",
        "fix a common currency for all Africa",
        "regulate world oil prices",
        "set interest rates for member states",
    ], 0, "Integration through trade liberalisation and cooperation, with a single currency still a long-standing aspiration rather than a fact."),

    q("AfCFTA is intended to", [
        "create a single market for goods and services across Africa",
        "raise tariffs between African states",
        "replace ECOWAS",
        "fix a common African exchange rate",
    ], 0, "A continental free trade area, progressively removing tariffs on intra-African trade."),

    q("Nigeria's exports are dominated by crude oil, so its export earnings are", [
        "sensitive to a price it cannot control",
        "stable because demand is fixed",
        "independent of world conditions",
        "determined by domestic wages",
    ], 0, "Price-taking in a world market is the vulnerability; domestic costs affect the volume little in the short run."),
]


BANK_5 = [
    q("Economic growth refers to", [
        "an increase in real national output over time",
        "an increase in welfare",
        "a fall in unemployment",
        "a rise in the price level",
    ], 0, "Real output over time. Welfare, employment and prices can move with growth but are not the definition of it."),

    q("Which of the following is an indicator of economic development but not of growth?", [
        "an increase in real GDP",
        "an increase in life expectancy",
        "an increase in the money supply",
        "an increase in exports",
    ], 1, "Health is a welfare indicator, which development includes and growth does not measure."),

    q("The human development index combines income per capita with", [
        "life expectancy and schooling",
        "inflation and unemployment",
        "exports and imports",
        "population and land area",
    ], 0, "Health and knowledge — three components combined as a geometric mean."),

    q("A country with rising GDP per capita but a falling HDI is likely to have", [
        "worsening health or schooling",
        "falling population",
        "a trade surplus",
        "low inflation",
    ], 0, "The non-income components have deteriorated enough to outweigh the income gain — growth without development."),

    q("The Gini coefficient ranges from", [
        "0 to 1",
        "0 to 100",
        "−1 to 1",
        "1 to 10",
    ], 0, "Zero is perfect equality and one is complete inequality; the conventional measure is scaled to the unit interval."),

    q("A rise in the Gini coefficient indicates", [
        "greater inequality",
        "less inequality",
        "higher growth",
        "lower inflation",
    ], 0, "The distribution has become more unequal, whichever direction average income moved."),

    q("Absolute poverty is measured against", [
        "a fixed minimum standard of living",
        "the average income of the country",
        "the richest ten per cent",
        "the exchange rate",
    ], 0, "A poverty line fixed in real terms; relative poverty uses the society's own average as the reference."),

    q("The dependency ratio falls when", [
        "the working-age population grows faster than the dependent population",
        "birth rates rise",
        "life expectancy falls",
        "the retirement age falls",
    ], 0, "More workers per dependant, which is the demographic dividend — and a temporary window, since the workers will eventually age."),

    q("A population pyramid describes", [
        "the age and sex structure of a population",
        "the growth of national income",
        "the distribution of income",
        "the pattern of migration",
    ], 0, "Ages on one axis, numbers on the other, split by sex — a picture of structure rather than of totals."),

    q("A broad-based population pyramid implies", [
        "a high birth rate and a young population",
        "an ageing population",
        "a declining population",
        "a stable population",
    ], 0, "Many children at the base, which means both high dependency now and rapid labour-force growth later."),

    q("Population growth that outstrips output growth will", [
        "reduce income per head",
        "raise income per head",
        "raise wages",
        "reduce unemployment",
    ], 0, "More people sharing slower-growing output — the arithmetic of the population trap."),

    q("The labour force excludes", [
        "full-time students and retired people",
        "the unemployed who are seeking work",
        "part-time workers",
        "the self-employed",
    ], 0, "Neither students nor retirees are available for work or seeking it; the unemployed who are seeking work are inside the definition by contrast."),

    q("The unemployment rate is", [
        "the unemployed as a percentage of the labour force",
        "the unemployed as a percentage of the population",
        "the employed as a percentage of the labour force",
        "the labour force as a percentage of the population",
    ], 0, "Unemployed over labour force. The second overstates, the third is the employment rate and the fourth is participation."),

    q("Frictional unemployment is", [
        "short-term unemployment while changing jobs",
        "unemployment caused by a fall in demand",
        "unemployment caused by obsolete skills",
        "unemployment caused by the seasons",
    ], 0, "Search time between jobs, which is normal in any working labour market and is not usually counted as a policy problem."),

    q("Structural unemployment is best remedied by", [
        "retraining and labour mobility",
        "raising aggregate demand",
        "cutting interest rates",
        "increasing government spending",
    ], 0, "The problem is a mismatch, so the remedy is to change the match; demand measures would leave the mismatch intact."),

    q("Cyclical unemployment is caused by", [
        "a deficiency of aggregate demand",
        "a change in the structure of industry",
        "seasonal factors",
        "time spent searching for a job",
    ], 0, "It rises in recessions and falls in recoveries, which is why it is also called demand-deficient unemployment."),

    q("Underemployment is high in developing economies because", [
        "many workers are in low-productivity or part-time work",
        "unemployment is officially zero",
        "wages are too high",
        "the labour force is too small",
    ], 0, "The formal sector cannot absorb the labour force, so people work fewer hours or below their skill level and still count as employed."),

    q("A fall in the labour-force participation rate can", [
        "lower the unemployment rate while the labour market worsens",
        "raise the unemployment rate",
        "raise income per head",
        "reduce the dependency ratio",
    ], 0, "Discouraged workers leave the labour force, so they leave the unemployment count as well — the reason to read participation alongside the rate."),

    q("Investment in education raises", [
        "human capital",
        "physical capital",
        "natural capital",
        "financial capital",
    ], 0, "The skills embodied in people, which is what distinguishes human from the other forms of capital."),

    q("Rural-urban migration in developing countries is mainly explained by", [
        "the expected wage gap between town and country",
        "lower rents in cities",
        "higher agricultural prices",
        "government relocation programmes",
    ], 0, "Expected earnings, not guaranteed ones — many migrants end up in the informal urban sector, which is part of the problem."),
]


BANK_6 = [
    q("The Central Bank of Nigeria was established mainly to", [
        "issue currency and regulate the monetary system",
        "collect company income tax",
        "compile the consumer price index",
        "insure bank deposits",
    ], 0, "Currency issue and monetary management are the core functions; the other three belong to the FIRS, the NBS and the NDIC."),

    q("Which institution compiles Nigeria's gross domestic product figures?", [
        "the National Bureau of Statistics",
        "the Central Bank of Nigeria",
        "the Federal Inland Revenue Service",
        "the Securities and Exchange Commission",
    ], 0, "The NBS produces the national accounts; the CBN also publishes research but does not compile the official GDP series."),

    q("Nigeria's monetary policy rate is set by", [
        "the Monetary Policy Committee of the Central Bank",
        "the Federal Executive Council",
        "the National Assembly",
        "the Securities and Exchange Commission",
    ], 0, "The committee meets to set the rate, which is then implemented through the CBN's instruments."),

    q("The cash reserve ratio instrument works by", [
        "requiring banks to hold a proportion of deposits with the central bank",
        "fixing the interest rate on loans",
        "taxing bank profits",
        "insuring deposits",
    ], 0, "A higher ratio immobilises part of the deposit base, so less can be lent and the credit multiplier falls."),

    q("Nigeria's external reserves are held in", [
        "foreign currencies and gold",
        "naira notes",
        "government buildings",
        "commercial bank shares",
    ], 0, "Foreign-currency assets and gold, which is what makes them usable to pay for imports or support the exchange rate."),

    q("The naira's external value falls when", [
        "demand for foreign currency exceeds its supply",
        "exports rise sharply",
        "the central bank sells foreign currency",
        "inflation falls relative to trading partners",
    ], 0, "Excess demand for dollars pushes its naira price up and the naira's value down — depreciation or devaluation according to the regime."),

    q("A depreciation of the naira is likely to", [
        "raise the naira price of imports",
        "lower the naira price of imports",
        "leave import prices unchanged",
        "reduce export earnings in naira",
    ], 0, "Each unit of imports costs more naira, which is also how it raises domestic inflation."),

    q("Nigeria's fiscal year runs for", [
        "twelve months, from January to December",
        "eighteen months",
        "six months",
        "twenty-four months",
    ], 0, "The budget year is the calendar year, though the appropriation act is often passed after it has begun."),

    q("The Federation Account Allocation Committee meets to", [
        "share federally collected revenue among the tiers of government",
        "set the monetary policy rate",
        "approve the federal budget",
        "regulate the stock exchange",
    ], 0, "It distributes the monthly allocation under the constitutional formula, including the derivation share."),

    q("Personal income tax in Nigeria is principally administered by", [
        "state governments",
        "the Federal Inland Revenue Service",
        "local governments",
        "the Central Bank",
    ], 0, "States administer personal income tax, which is one of the clearest examples of divided taxing powers under fiscal federalism."),

    q("Which of these is a major component of Nigeria's imports?", [
        "refined petroleum products",
        "crude petroleum",
        "cocoa beans",
        "groundnut",
    ], 0, "Refined products are imported even though crude is exported, which is why domestic refining capacity would cut the import bill."),

    q("Agriculture's share of Nigeria's employment is high while its share of export earnings is low because", [
        "output is mostly consumed domestically and productivity is low",
        "farmers do not sell their produce",
        "the sector is fully mechanised",
        "agriculture receives no government support",
    ], 0, "Subsistence output stays out of the export accounts and yields per hectare are low, so many hands produce little surplus for sale."),

    q("The informal sector matters for Nigerian employment statistics because it", [
        "employs a large share of workers who are not captured in formal records",
        "pays the highest wages",
        "is fully taxed",
        "is concentrated in oil",
    ], 0, "Most informal work is unrecorded, so official employment data systematically understates the labour absorbed."),

    q("A budget deficit financed by the central bank is called", [
        "deficit financing through the printing of money",
        "external borrowing",
        "a fiscal surplus",
        "debt rescheduling",
    ], 0, "The central bank creates the money to buy the government's securities, which expands the money supply and is inflationary."),

    q("Petroleum revenue in Nigeria is shared on the basis of", [
        "a formula including equality, population, land mass and derivation",
        "the number of banks in each state",
        "the level of each state's exports",
        "equal shares with no conditions",
    ], 0, "A weighted formula, with derivation returning a share to the producing states."),

    q("The main objective of the Central Bank's monetary policy is", [
        "price stability and a sound financial system",
        "collecting taxes",
        "building roads",
        "insuring depositors",
    ], 0, "Price and financial stability as the framework, with supporting objectives such as exchange-rate and balance of payments stability."),

    q("Nigeria's balance of payments position is published by the", [
        "Central Bank of Nigeria",
        "National Bureau of Statistics",
        "Federal Inland Revenue Service",
        "Fiscal Responsibility Commission",
    ], 0, "The CBN compiles the external accounts, just as the NBS compiles output and prices."),

    q("A structural adjustment programme typically included", [
        "privatisation, deregulation and devaluation",
        "higher tariffs and subsidies",
        "expansion of the public sector",
        "fixed wages and prices",
    ], 0, "The standard package of liberalisation and fiscal discipline attached to adjustment lending in the 1980s."),

    q("Diversifying Nigeria's export base would", [
        "reduce the economy's exposure to oil price shocks",
        "raise the oil price",
        "eliminate the need for imports",
        "remove the need for taxation",
    ], 0, "Several export products mean one price can no longer swing the whole of foreign exchange earnings and revenue."),

    q("Nigeria's HDI ranking is lower than its income ranking would suggest, which indicates", [
        "weak health and education outcomes relative to income",
        "an error in the index",
        "that income per head is understated",
        "that the population is too small",
    ], 0, "The two non-income components are pulling the index down, which is the definition of growth without development."),
]


BANK = {1: BANK_1, 2: BANK_2, 3: BANK_3, 4: BANK_4, 5: BANK_5, 6: BANK_6}
