"""Paper 2 — forty questions, same distribution as Paper 1, no repeat of any stem.

Distribution: basics 4, demand and supply 8, elasticity 4, production and cost 4,
market structures 3, the national economy 15, current affairs 2.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_2 = [
    # ---- basics (1-4) -----------------------------------------------------
    q("Scarcity in economics means that", [
        "some people cannot afford what they want",
        "resources are limited relative to the wants they must satisfy",
        "goods are in short supply only during a harvest failure",
        "money is in short supply in the banking system",
    ], 1, "Scarcity is a relationship between limited resources and unlimited wants, and it applies to every society, rich or poor. Poverty and a temporary shortage are narrower ideas."),

    q("The production possibility curve is concave to the origin because", [
        "resources are not equally suited to both goods",
        "resources are unemployed",
        "technology is improving",
        "wants are limited",
    ], 0, "As output of one good grows, ever less suitable resources are transferred, so each further transfer costs more. Constant opportunity cost would give a straight line."),

    q("Which of the following is a positive statement?", [
        "The government ought to reduce the price of petrol",
        "A rise in the price of a good reduces the quantity demanded",
        "The rich should pay more tax",
        "Every family deserves a home of its own",
    ], 1, "A testable claim about what happens. The other three are value judgements — they recommend, and no figure can prove them right or wrong."),

    q("Capital, as a factor of production, includes", [
        "money kept in a savings account",
        "machinery and buildings used in production",
        "the skill of a trained engineer",
        "land used for farming",
    ], 1, "Capital means produced means of production: machines, tools and buildings. Money in a bank is a claim on capital, not capital itself, and skill is human capital, which belongs to labour."),

    # ---- demand, supply and price (5-12) ----------------------------------
    q("An increase in the price of a substitute for tea will", [
        "reduce the demand for tea",
        "increase the demand for tea",
        "increase the supply of tea",
        "leave the demand for tea unchanged",
    ], 1, "The substitute becomes dearer, so buyers switch towards tea and its demand curve shifts right. A complement becoming dearer would reduce demand."),

    q("Demand rises and supply rises at the same time. Which outcome must follow?", [
        "price rises",
        "price falls",
        "quantity traded rises",
        "quantity traded falls",
    ], 2, "Both shifts push quantity up, so quantity must rise. They push price in opposite directions, so the price change depends on which shift is larger."),

    q("A minimum price fixed above equilibrium will create", [
        "a shortage that clears itself",
        "a surplus that the government may have to buy",
        "a fall in the quantity supplied",
        "an immediate new equilibrium at the floor",
    ], 1, "A binding floor holds the price above equilibrium, so sellers offer more than buyers will take. The unsold surplus is why support-buying schemes exist."),

    q("Which of the following is a determinant of market supply?", [
        "the number of sellers in the market",
        "the incomes of consumers",
        "the tastes of consumers",
        "the population of the country",
    ], 0, "Suppliers, not buyers, determine supply: the number of sellers, input prices and technology. The other three act on the demand side."),

    q("A good is selling above its equilibrium price. The market adjusts because", [
        "buyers bid the price further up",
        "sellers cut the price to clear unsold stock",
        "the government lowers the price by law",
        "supply immediately falls to zero",
    ], 1, "A surplus means unsold stock, and unsold stock is expensive to hold, so sellers undercut one another until the price reaches equilibrium."),

    q("The supply curve of a good will shift to the left if", [
        "a tax is imposed on producers",
        "the price of the good rises",
        "consumers' incomes rise",
        "the number of consumers rises",
    ], 0, "A tax raises the cost of production, so less is offered at every price. A rise in the good's own price is a movement along the curve, not a shift."),

    q("Given Qd = 100 − 3P and Qs = 20 + 2P, the equilibrium price and quantity are", [
        "₦16 and 52 units",
        "₦20 and 40 units",
        "₦12 and 64 units",
        "₦25 and 25 units",
    ], 0, "Set 100 − 3P = 20 + 2P, so 80 = 5P and P = ₦16; then Qs = 20 + 32 = 52. Each other pair fails on substitution."),

    q("Which of the following will NOT shift the supply curve of a good?", [
        "a change in the price of the good itself",
        "a change in the price of raw materials",
        "a change in technology",
        "a change in the number of producers",
    ], 0, "The good's own price moves the seller along the supply curve. The other three are determinants of supply, and each shifts the whole curve."),

    # ---- elasticity (13-16) ----------------------------------------------
    q("The price of a good rises from ₦50 to ₦55 and quantity demanded falls from 200 to 180. The price elasticity of demand is", [
        "0.2", "1.0", "5.0", "10.0",
    ], 1, "Quantity falls 10 per cent and price rises 10 per cent, so PED = 10 ÷ 10 = 1.0, unit elastic. Reading the absolute change rather than the percentage gives 20 ÷ 5 = 4."),

    q("The demand for table salt is likely to be inelastic because", [
        "it has many close substitutes",
        "it takes a very small share of the household budget",
        "it is a luxury good",
        "it is produced by a monopoly",
    ], 1, "A small budget share and few substitutes both make buyers unresponsive. Many substitutes would make demand elastic, and a luxury good usually has an elasticity above one."),

    q("A 15 per cent fall in price raises quantity demanded by 5 per cent. Demand is", [
        "elastic, with PED = 3.0",
        "inelastic, with PED = 0.33",
        "unit elastic, with PED = 1.0",
        "perfectly inelastic, with PED = 0",
    ], 1, "PED = 5 ÷ 15 = 0.33, which is below one, so demand is inelastic. Inverting the division gives 3.0, the classic slip."),

    q("Two goods are complements if the cross elasticity of demand between them is", [
        "positive",
        "negative",
        "zero",
        "greater than one",
    ], 1, "A price rise for one reduces demand for the other, so the changes move in opposite directions and the elasticity is negative. Substitutes give a positive figure."),

    # ---- production and cost (17-20) -------------------------------------
    q("Marginal product begins to fall when", [
        "total product begins to fall",
        "diminishing returns set in",
        "fixed cost begins to rise",
        "average product reaches zero",
    ], 1, "Marginal product turns down at the point of diminishing returns, while total product is still rising. Total product falls only later, when marginal product becomes negative."),

    q("Average fixed cost always falls as output rises because", [
        "fixed cost itself falls",
        "a constant fixed cost is spread over more units",
        "variable cost falls with output",
        "marginal cost is constant",
    ], 1, "TFC never changes, so dividing it by a growing Q must give a falling AFC. The curve is a rectangular hyperbola and never touches either axis."),

    q("Total fixed cost is ₦600 and output is 30 units. Average fixed cost is", [
        "₦2", "₦20", "₦30", "₦18,000",
    ], 1, "AFC = TFC ÷ Q = 600 ÷ 30 = ₦20. Multiplying instead of dividing gives 18,000, which is a common slip under time pressure."),

    q("Normal profit is earned when", [
        "total revenue exceeds total cost",
        "average revenue equals average cost",
        "price equals marginal cost",
        "marginal revenue is zero",
    ], 1, "Normal profit is the cost of the entrepreneur's own effort and capital; it is earned when AR = AC, and it is included in cost. Supernormal profit is the excess above it."),

    # ---- market structures (21-23) ---------------------------------------
    q("In the long run, a firm in perfect competition earns", [
        "supernormal profit only",
        "normal profit only",
        "a loss",
        "whatever profit the market allows the largest firm",
    ], 1, "Free entry and exit compete any supernormal profit away, so price settles at minimum average cost. That is the long-run equilibrium the examiner tests."),

    q("Successful price discrimination requires", [
        "a single market with one elasticity",
        "separate markets with different elasticities and no resale",
        "a homogeneous product and free entry",
        "a price equal to marginal cost",
    ], 1, "The seller must charge more where demand is inelastic, so the markets must be separable and resale must be impossible. A single market cannot be charged two prices."),

    q("A cartel is most likely to be formed in", [
        "perfect competition",
        "monopolistic competition",
        "oligopoly",
        "a market with a single seller",
    ], 2, "A cartel is an agreement among a few large firms to act like a monopoly — which presupposes that there are a few. A single seller needs no agreement."),

    # ---- the national economy (24-38) ------------------------------------
    q("The approach that measures national income by adding all incomes earned by the factors of production is the", [
        "expenditure approach",
        "income approach",
        "output approach",
        "balance of payments approach",
    ], 1, "The income approach adds wages, rent, interest and profit. The output approach adds value added, and the expenditure approach adds consumption, investment, government spending and net exports."),

    q("In the circular flow of income, households", [
        "sell factor services to firms and buy goods from them",
        "buy factor services from firms and sell goods to them",
        "lend only to the government",
        "neither buy nor sell, because they save",
    ], 0, "Households own the factors, so they sell factor services and receive income, which they spend on the goods firms produce. Saving is a leakage from that flow, not a reason to stand outside it."),

    q("If the marginal propensity to consume is 0.8, the multiplier is", [
        "1.25", "4", "5", "8",
    ], 2, "Multiplier = 1 ÷ (1 − MPC) = 1 ÷ 0.2 = 5. Dividing by the MPC itself gives 1.25, which is the reciprocal of the wrong number."),

    q("A budget deficit occurs when", [
        "government revenue exceeds expenditure",
        "government expenditure exceeds revenue",
        "exports exceed imports",
        "the money supply exceeds the demand for money",
    ], 1, "Spending above revenue in a year, financed by borrowing. The export–import gap is the trade balance, which is a different account."),

    q("The balance of payments records", [
        "only trade in goods",
        "all transactions between residents of a country and the rest of the world",
        "the government's revenue and expenditure",
        "the assets and liabilities of the central bank",
    ], 1, "Goods, services, income and financial flows, all in one account. Restricting it to goods records only the visible trade balance."),

    q("Devaluation of a currency is intended to", [
        "make exports cheaper and imports dearer",
        "make exports dearer and imports cheaper",
        "raise the domestic price level permanently",
        "reduce the volume of exports",
    ], 0, "A weaker currency lowers the foreign price of exports and raises the domestic price of imports, which should improve the trade balance if demand responds."),

    q("A tariff is a tax on", [
        "income earned by companies",
        "imported goods",
        "goods sold within a state",
        "the profits of banks",
    ], 1, "A tariff is a tax on imports, and it raises their domestic price. A tax on goods sold inside the country is an excise or sales tax, not a tariff."),

    q("The Human Development Index combines income per head with", [
        "education and life expectancy",
        "inflation and unemployment",
        "exports and imports",
        "tax revenue and public debt",
    ], 0, "Income, schooling and health — three dimensions of welfare. The index exists because income per head alone says nothing about how long or how well people live."),

    q("Rapid population growth is most likely to", [
        "raise the dependency ratio if it outpaces output",
        "reduce the demand for social services",
        "raise income per head immediately",
        "remove the need for taxation",
    ], 0, "A young population has many dependants per worker, so consumption pressure rises before the children become producers. Income per head can fall even while total output grows."),

    q("Open unemployment exists when", [
        "people are working fewer hours than they would like",
        "people able and willing to work cannot find jobs",
        "people have stopped looking for work",
        "workers are in jobs below their skill level",
    ], 1, "The standard definition: able, willing and without work. Working fewer hours is underemployment, and having stopped looking removes a person from the labour force."),

    q("The monetary policy rate is used mainly to", [
        "influence the cost and availability of credit",
        "set the exchange rate directly",
        "determine the level of company tax",
        "fix the price of petroleum products",
    ], 0, "It is the rate at which the central bank lends to the banks, and it anchors every other interest rate in the economy. Company tax is fiscal, and the exchange rate is a separate instrument."),

    q("A rise in the cash reserve ratio will", [
        "increase the ability of banks to create credit",
        "reduce the ability of banks to create credit",
        "have no effect on the money supply",
        "raise the value of the naira immediately",
    ], 1, "A larger share of deposits must be held with the central bank, so less can be lent, and the credit multiplier falls. The effect on the exchange rate is indirect and uncertain."),

    q("Which of the following is a direct tax?", [
        "value added tax",
        "import duty",
        "personal income tax",
        "excise duty",
    ], 2, "Direct taxes are levied on income and wealth, and their burden cannot be passed on. VAT, import duty and excise are indirect taxes, collected by firms and passed to the buyer in the price."),

    q("Public debt is serviced from", [
        "government revenue",
        "the profits of private firms",
        "foreign reserves only",
        "the money held in commercial bank vaults",
    ], 0, "Interest and principal are paid out of revenue, which is why a large debt service bill crowds out spending on services. Reserves may be used to repay external debt, but they are not the routine source."),

    q("Economic development differs from economic growth because development", [
        "measures only the rise in output",
        "includes changes in welfare, structure and distribution",
        "is measured in naira while growth is measured in dollars",
        "applies only to developed countries",
    ], 1, "Growth is a bigger total; development is a better life — income, health, schooling, and a changing structure of production. Growth without development is the case the examiner describes as jobless growth."),

    # ---- current affairs and data (39-40) --------------------------------
    q("The agency that publishes Nigeria's national accounts is the", [
        "Central Bank of Nigeria",
        "National Bureau of Statistics",
        "Federal Inland Revenue Service",
        "Securities and Exchange Commission",
    ], 1, "The National Bureau of Statistics compiles GDP, inflation and unemployment figures. The central bank publishes monetary and balance-of-payments data."),

    q("Nigeria is a member of the", [
        "Organisation of Petroleum Exporting Countries",
        "Organisation for Economic Co-operation and Development",
        "European Union",
        "North Atlantic Treaty Organisation",
    ], 0, "OPEC, as a major oil producer and exporter. The OECD is a club of mostly high-income economies, and the EU and NATO are not African organisations."),
]
