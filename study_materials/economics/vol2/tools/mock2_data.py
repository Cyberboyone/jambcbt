"""Paper 2 — forty questions in the same proportions as Paper 1, no repeats.

Distribution (half-open slices, matching SECTIONS in papers_eco2.py):
national income 7, money and banking 8, public finance 7, international trade 7,
development and labour 6, the Nigerian economy and data 5.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_2 = [
    # ---- national income (Q1-7) -------------------------------------------
    q("The circular flow of income shows the relationship between", [
        "households and firms through the factor and product markets",
        "the central bank and the commercial banks",
        "exports and imports only",
        "taxation and government spending only",
    ], 0, "Households supply factors and buy goods; firms buy factors and sell goods. The other three are parts of the flow, not the whole of it."),

    q("A leakage from the circular flow is", [
        "saving",
        "investment",
        "government spending",
        "exports",
    ], 0, "Saving leaves the domestic flow unspent, as do taxes and imports; investment, government spending and exports are injections."),

    q("In the income approach, national income is the sum of", [
        "wages, rent, interest and profit",
        "consumption, investment and government spending",
        "the value added by every industry",
        "all sales by all firms",
    ], 0, "The four factor incomes — wages for labour, rent for land, interest for capital and profit for enterprise."),

    q("Goods produced in a year but not sold are", [
        "excluded from GDP",
        "treated as inventory investment in that year",
        "counted only when they are sold as second-hand goods",
        "counted twice, once as output and once as stock",
    ], 1, "They are investment in stocks, so the expenditure approach still matches the output approach in that year."),

    q("Real GDP is preferred to nominal GDP because it", [
        "removes the effect of price changes",
        "includes the informal sector",
        "counts only traded goods",
        "excludes government spending",
    ], 0, "It is measured at constant prices, so a change in it reflects a change in output rather than a change in prices."),

    q("GDP per capita is calculated by dividing GDP by", [
        "the labour force",
        "the population",
        "the number of firms",
        "government expenditure",
    ], 1, "Population — the average output per person, which is why rapid population growth can hold it down."),

    q("If the marginal propensity to consume is 0.75, the multiplier is", [
        "1.33",
        "3",
        "4",
        "7.5",
    ], 2, "1 ÷ (1 − 0.75) = 1 ÷ 0.25 = 4. The 1.33 figure comes from dividing by 0.75 rather than by the marginal propensity to save."),

    # ---- money and banking (Q8-15) ----------------------------------------
    q("Barter is inefficient chiefly because it requires", [
        "a double coincidence of wants",
        "a central bank",
        "coins and notes",
        "a stock exchange",
    ], 0, "Both parties must want what the other has at the same moment — money removes that requirement."),

    q("The value of money falls when", [
        "the general price level rises",
        "the general price level falls",
        "the money supply is reduced",
        "output grows faster than money supply",
    ], 0, "A rise in prices means each naira buys less, so the value of money and the price level move in opposite directions."),

    q("Which is a secondary function of money?", [
        "acting as a medium of exchange",
        "acting as a store of value",
        "acting as legal tender",
        "acting as a means of settling tax",
    ], 1, "Storing value is secondary. The medium of exchange is the primary function, and legal tender is a status rather than a function."),

    q("A commercial bank's assets include", [
        "customers' current account balances",
        "loans to customers and holdings of securities",
        "deposits held for savings customers",
        "the bank's issued share capital",
    ], 1, "Loans and securities are what the bank owns; deposits are liabilities because the bank owes them back."),

    q("If a bank receives a deposit of ₦100,000 and the cash ratio is 25 per cent, it can lend", [
        "₦25,000",
        "₦75,000",
        "₦100,000",
        "₦400,000",
    ], 1, "It keeps ₦25,000 and lends the remaining ₦75,000; the multiplier of 4 then describes the whole banking system's expansion, not this single loan."),

    q("The central bank's function of issuing currency means that", [
        "it decides how many notes and coins enter circulation",
        "it lends to the government",
        "it regulates the stock exchange",
        "it insures bank deposits",
    ], 0, "Only the central bank may put new notes and coins into circulation, which is why it is called the bank of issue."),

    q("Moral suasion as an instrument of monetary policy means", [
        "persuading banks to follow policy without compulsion",
        "fixing the interest rate by law",
        "buying government securities",
        "changing the cash reserve ratio",
    ], 0, "Persuasion rather than rule. The other three are quantitative instruments with legal or market force behind them."),

    q("Cost-push inflation is most likely to be caused by", [
        "a rise in wages or raw material prices",
        "a fall in taxation",
        "a rise in consumer demand",
        "a rise in the money supply",
    ], 0, "Costs push prices up from the supply side; the other three act through demand."),

    # ---- public finance and taxation (Q16-22) -----------------------------
    q("Which of these items of government expenditure is capital expenditure?", ["building a new bridge", "paying civil servants' salaries", "buying stationery for ministries", "paying interest on the national debt"], 0, "It creates an asset that lasts for years; salaries, stationery and interest are consumed or paid within the year."),

    q("A balanced budget is one in which", [
        "revenue equals expenditure",
        "revenue exceeds expenditure",
        "expenditure exceeds revenue",
        "there is no borrowing at all",
    ], 0, "Equality of the two sides. A budget can balance while still borrowing to refinance maturing debt, so the fourth option is too strong."),

    q("Contractionary fiscal policy is used to", [
        "reduce aggregate demand and control inflation",
        "increase employment in a recession",
        "raise the exchange rate",
        "expand the money supply",
    ], 0, "Higher taxes and lower spending reduce demand, which is the fiscal answer to demand-pull inflation."),

    q("A proportional tax takes", [
        "the same proportion of every income",
        "a larger proportion of high incomes",
        "a larger proportion of low incomes",
        "nothing from the lowest incomes",
    ], 0, "A constant rate. Progression rises with income and regression falls with it."),

    q("Direct taxes are those levied on", [
        "income and profits",
        "goods and services",
        "imports only",
        "exports only",
    ], 0, "Income, profits and gains — the burden cannot be shifted. Taxes on goods and services are indirect."),

    q("The economic incidence of a tax is the", [
        "person legally obliged to pay it",
        "person who finally bears it",
        "rate written into the law",
        "revenue collected by government",
    ], 1, "Who finally bears it, which depends on the elasticities of demand and supply — not on who hands the money over."),

    q("A country's debt is a burden on future generations mainly when", [
        "it is used for consumption rather than investment",
        "it is denominated in the domestic currency",
        "it is held by domestic citizens",
        "it is repaid on time",
    ], 0, "Borrowing to consume leaves the repayment without the productive asset that would have helped to meet it."),

    # ---- international trade and payments (Q23-29) ------------------------
    q("A country has an absolute advantage in a good when it can produce it", [
        "using fewer resources than another country",
        "at a lower opportunity cost than another country",
        "with a larger labour force",
        "only for export",
    ], 0, "Fewer resources per unit is absolute advantage; lower opportunity cost is comparative advantage, and the two need not coincide."),

    q("Trade between two countries is mutually beneficial when each specialises according to", [
        "absolute advantage",
        "comparative advantage",
        "the size of its population",
        "its level of tariffs",
    ], 1, "Comparative advantage is the basis of mutual gain — a country can gain even when it is absolutely worse at everything."),

    q("An improvement in the terms of trade means that", [
        "each unit of exports buys more imports",
        "each unit of exports buys fewer imports",
        "exports have risen in volume",
        "tariffs have been raised",
    ], 0, "The price ratio has moved in the country's favour, so the same exports command more imports."),

    q("A balance of payments deficit is settled by", [
        "drawing on reserves or borrowing abroad",
        "raising domestic taxes",
        "increasing government spending",
        "printing more currency",
    ], 0, "The accounts must balance, so a deficit is financed from reserves or by capital inflow — the other options act on the domestic economy, not the external accounts."),

    q("An invisible export is", [
        "a service sold to a foreigner",
        "a good sold abroad without documentation",
        "a good smuggled across a border",
        "a capital transfer",
    ], 0, "A service such as banking, insurance, shipping or tourism. It crosses the border without appearing in the customs record of goods."),

    q("The main argument for protecting an infant industry is that", [
        "it needs time to reach a scale where it can compete",
        "it is already the most efficient in the world",
        "protection raises consumer welfare at once",
        "it reduces the price of imports",
    ], 0, "Temporary protection while costs fall with experience — the difficulty being that the protection is rarely withdrawn on time."),

    q("A common market differs from a customs union because a common market also allows", [
        "free movement of labour and capital",
        "a common external tariff",
        "free trade in goods",
        "a single currency",
    ], 0, "The four freedoms — goods, services, labour and capital. A common external tariff is what a customs union already has, and a single currency goes further still."),

    # ---- development and labour (Q30-35) ----------------------------------
    q("Economic development is measured by", [
        "real GDP alone",
        "a range of indicators including income, health and education",
        "the inflation rate alone",
        "the balance of payments",
    ], 1, "A range of indicators, of which the HDI is the best-known composite. GDP alone is growth, not development."),

    q("A country's HDI falls when", [
        "life expectancy falls, other things equal",
        "national income rises, other things equal",
        "school enrolment rises, other things equal",
        "the population rises, other things equal",
    ], 0, "Health is one of the three components, so a fall in life expectancy lowers the index directly."),

    q("The demographic transition begins with", [
        "a fall in the death rate",
        "a fall in the birth rate",
        "a rise in the death rate",
        "a rise in net migration",
    ], 0, "Death rates fall first, which is why the fastest population growth occurs in the middle of the transition before birth rates follow."),

    q("Seasonal unemployment is best reduced by", [
        "diversifying the local economy",
        "raising aggregate demand",
        "retraining the workforce",
        "cutting interest rates",
    ], 0, "Diversification gives work in the off-season; the other three act on demand, skills or credit rather than on the calendar."),

    q("The unemployment rate is calculated as", [
        "the unemployed divided by the labour force, times 100",
        "the unemployed divided by the population, times 100",
        "the unemployed divided by the employed, times 100",
        "the labour force divided by the population, times 100",
    ], 0, "Unemployed over labour force — the standard definition, which is why discouraged workers dropping out can lower the rate."),

    q("Investment in human capital is expected to", [
        "raise productivity and future output",
        "reduce the labour force",
        "raise the dependency ratio permanently",
        "increase the price level",
    ], 0, "Skills and health raise output per worker, which is the engine of long-run growth."),

    # ---- the Nigerian economy and data (Q36-40) ---------------------------
    q("The Federal Inland Revenue Service is responsible for", [
        "collecting federal taxes",
        "issuing currency",
        "compiling the national accounts",
        "regulating the stock exchange",
    ], 0, "Assessment and collection of federal taxes including company income tax and VAT."),

    q("Nigeria's external reserves are a useful buffer because they", [
        "can pay for imports when other inflows fall",
        "earn a fixed rate of interest",
        "replace the need for taxation",
        "guarantee a fixed exchange rate",
    ], 0, "They are usable foreign exchange, so a fall in oil earnings does not immediately halt essential imports."),

    q("Derivation as a revenue-sharing principle benefits", [
        "states where the revenue was generated",
        "states with the largest population",
        "states with the largest land area",
        "all states equally",
    ], 0, "It returns a share to the area of origin, which in Nigeria means the oil-producing states benefit most."),

    q("A rise in a country's consumer price index from 160 to 168 represents an inflation rate of", [
        "5 per cent",
        "8 per cent",
        "4.8 per cent",
        "16.8 per cent",
    ], 0, "8 ÷ 160 × 100 = 5 per cent. Reading the index points as the rate gives 8 per cent, which is the standard trap."),

    q("Nigeria's dependence on oil revenue makes fiscal policy unstable because", [
        "oil prices fluctuate and revenue moves with them",
        "oil is a renewable resource",
        "the oil sector employs most workers",
        "oil exports are unaffected by world demand",
    ], 0, "Revenue swings with a price the country cannot control, so budgets must be planned and saved against a price that will not hold."),
]
