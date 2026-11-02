"""Paper 1 — forty questions in the proportions of a real UTME Economics paper.

Distribution (half-open slices, matching SECTIONS in papers_eco2.py):
national income 7, money and banking 8, public finance 7, international trade 7,
development and labour 6, the Nigerian economy and data 5.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_1 = [
    # ---- national income (Q1-7) -------------------------------------------
    q("Gross domestic product measures the value of goods and services", [
        "produced within a country in a period",
        "produced by a country's citizens anywhere in the world",
        "consumed within a country in a period",
        "sold by a country's firms abroad",
    ], 0, "Produced inside the territory. The second option is gross national product, the third is expenditure without regard to origin, and the fourth counts only exports."),

    q("GNP is obtained from GDP by", [
        "adding exports and subtracting imports of goods",
        "adding net factor income from abroad",
        "subtracting depreciation",
        "dividing by the population",
    ], 1, "GNP = GDP + net factor income from abroad. The first option would be a trade-balance adjustment, the third gives net domestic product, and the fourth gives a per capita figure."),

    q("In the expenditure approach, GDP equals", [
        "C + I + G + (X − M)",
        "C + S + T",
        "wages + rent + interest + profit",
        "output of every firm less intermediate purchases",
    ], 0, "Consumption plus investment plus government spending plus net exports. The second is the income disposal identity, the third is the income approach, and the fourth is the output approach."),

    q("To avoid double counting in the output approach, economists sum", [
        "the final value of goods and services",
        "the total sales of all firms",
        "the value of intermediate goods",
        "the value of second-hand sales",
    ], 0, "Only final value. Summing all sales counts intermediate goods again and again, and second-hand sales add no new output at all."),

    q("A Nigerian firm's profit earned in Ghana is included in Nigeria's", [
        "gross domestic product but not its gross national product",
        "gross national product but not its gross domestic product",
        "gross domestic product and its gross national product",
        "neither, because it was earned abroad",
    ], 1, "It is income of a Nigerian resident factor, so it belongs in GNP; it was produced in Ghana, so it belongs in Ghana's GDP."),

    q("If nominal GDP rises from ₦150 billion to ₦180 billion while the price index rises from 100 to 120, real GDP has", [
        "risen by 20 per cent",
        "stayed the same",
        "fallen by 20 per cent",
        "risen by 6 per cent",
    ], 1, "₦180 ÷ 1.20 = ₦150 billion, which is exactly the starting figure: the whole apparent rise was price change."),

    q("Net national product differs from gross national product by", [
        "depreciation",
        "indirect taxes",
        "net factor income from abroad",
        "transfer payments",
    ], 0, "Gross less depreciation gives net. Net factor income separates GNP from GDP, and indirect taxes carry the product aggregate from market prices to factor cost, which gives national income."),

    # ---- money and banking (Q8-15) ----------------------------------------
    q("The primary function of money is to serve as", [
        "a store of value",
        "a medium of exchange",
        "a unit of account",
        "a standard for deferred payment",
    ], 1, "Medium of exchange — it removes the double coincidence of wants that barter required. The others are genuine but secondary functions."),

    q("Which quality of money prevents it from being easily counterfeited?", [
        "divisibility",
        "durability",
        "difficulty of imitation",
        "portability",
    ], 2, "Difficulty of imitation, which protects the medium of exchange. Divisibility, durability and portability are the other desired qualities."),

    q("The process by which the banking system expands deposits through repeated lending is called", ["credit creation", "deficit financing", "open market operation", "discounting"], 0, "Credit creation. Deficit financing is government borrowing from the central bank, and open market operations and discounting are instruments of monetary control."),

    q("If the cash ratio is 20 per cent, the credit multiplier is", [
        "2",
        "4",
        "5",
        "20",
    ], 2, "1 ÷ 0.20 = 5. The reciprocal of 2 and 4 would follow from cash ratios of 50 and 25 per cent, and 20 is the ratio read off as if it were the multiplier."),

    q("A bank's liquidity ratio is held mainly to meet", [
        "the demand of depositors for cash withdrawals",
        "the demand of shareholders for dividends",
        "the demand of the government for taxes",
        "the demand of borrowers for long-term loans",
    ], 0, "Liquidity is there for withdrawals. Long-term lending is precisely what liquidity restrains, and tax and dividends are not paid out of the liquidity ratio."),

    q("The lender of last resort in the Nigerian banking system is the", [
        "Federal Ministry of Finance",
        "Central Bank of Nigeria",
        "Nigeria Deposit Insurance Corporation",
        "Nigerian Exchange Group",
    ], 1, "The central bank lends to banks in temporary difficulty so that a shortage of cash does not become a run."),

    q("When the central bank sells government securities in the open market, the money supply", ["falls", "rises", "is unchanged", "rises then falls to the same level"], 0, "Buyers pay with deposits, so bank reserves fall and the credit multiplier works in reverse."),

    q("Demand-pull inflation is caused by", [
        "a rise in the cost of raw materials",
        "a rise in aggregate demand beyond the economy's capacity",
        "a fall in the money supply",
        "a rise in import prices",
    ], 1, "Demand beyond capacity pulls prices up. Rising raw material and import costs are cost-push, and a fall in the money supply would restrain rather than cause inflation."),

    # ---- public finance and taxation (Q16-22) -----------------------------
    q("Government borrowing to cover a budget deficit adds directly to", ["the public debt", "the money supply, whatever the source of the loan", "the external reserves", "the balance of trade"], 0, "Borrowing is debt by definition; whether the money supply also rises depends on who lends, so the second option is too strong."),

    q("Expansionary fiscal policy in a recession means", [
        "raising taxes and cutting spending",
        "cutting taxes and raising spending",
        "raising the monetary policy rate",
        "selling government securities",
    ], 1, "Tax cuts and higher spending raise aggregate demand. The reverse is contractionary, and the last two are monetary instruments."),

    q("A tax is progressive when", [
        "the rate rises as income rises",
        "the rate falls as income rises",
        "the rate is the same at all incomes",
        "it is levied on goods rather than incomes",
    ], 0, "The rate rises with income, so the rich pay a larger proportion — the defining property of progression."),

    q("A regressive tax takes", [
        "a larger proportion of low incomes than of high incomes",
        "a smaller proportion of low incomes than of high incomes",
        "the same proportion of every income",
        "nothing from low incomes",
    ], 0, "A larger proportion from the poor, which is why taxes on basic goods are criticised as regressive even when the rate is uniform."),

    q("The burden of a tax falls mainly on the consumer when", [
        "demand is inelastic and supply is elastic",
        "demand is elastic and supply is inelastic",
        "both demand and supply are elastic",
        "the tax is levied on producers only",
    ], 0, "When buyers cannot escape the tax, they carry it. Statutory incidence — who hands the money over — does not decide the economic incidence."),

    q("Public debt is described as 'crowding out' private investment when government borrowing", [
        "raises interest rates and reduces funds for firms",
        "reduces the money supply",
        "lowers the exchange rate",
        "increases exports",
    ], 0, "Government demand for loanable funds pushes up the interest rate, so some private investment is displaced."),

    q("Debt servicing refers to", [
        "repaying the principal only",
        "paying interest and principal as they fall due",
        "borrowing new loans to repay old ones",
        "writing off a debt",
    ], 1, "Interest plus principal. Rolling over old loans is refinancing and writing off is forgiveness."),

    # ---- international trade and payments (Q23-29) ------------------------
    q("The principle of comparative advantage says a country should specialise in the good", [
        "for which it has the lowest opportunity cost",
        "which it can produce most cheaply in money terms",
        "for which it has the largest absolute advantage",
        "which it consumes most of at home",
    ], 0, "Lowest opportunity cost. Absolute advantage in money terms is not the basis of the gain — that is the central insight of the theory."),

    q("The terms of trade are calculated as", [
        "export price index ÷ import price index × 100",
        "import price index ÷ export price index × 100",
        "export volume ÷ import volume × 100",
        "tariff revenue ÷ total trade × 100",
    ], 0, "The ratio of export to import prices. A rise means each unit exported buys more imports."),

    q("A tariff on imports will", [
        "raise the domestic price and reduce the quantity imported",
        "lower the domestic price and raise imports",
        "raise both the domestic price and imports",
        "leave price and quantity unchanged",
    ], 0, "It is a tax on imports, so it raises the home price and cuts the volume — which is also why consumers lose and producers gain."),

    q("Export subsidies are intended to", ["make a country's exports cheaper in foreign markets", "raise the domestic price of exports", "reduce the volume of exports", "raise tariff revenue"], 0, "The subsidy lowers the price the exporter can accept abroad, which is why they are treated as a trade barrier by partner countries."),

    q("Devaluation is expected to improve the balance of payments when", [
        "the demand for exports and imports is elastic",
        "the demand for exports and imports is inelastic",
        "the country has no trade at all",
        "the exchange rate is already floating",
    ], 0, "Elastic demand means the quantity response outweighs the price effect; with inelastic demand the trade balance worsens instead."),

    q("The current account of the balance of payments records", [
        "trade in goods and services, income and transfers",
        "long-term capital movements only",
        "changes in the external reserves only",
        "the government budget",
    ], 0, "The current account covers goods, services, primary income and transfers; long-term capital belongs to the capital and financial accounts."),

    q("Nigeria's membership of ECOWAS is expected mainly to", [
        "restrict trade with member states",
        "expand markets and encourage intra-regional trade",
        "raise tariffs on all imports",
        "replace the naira with a foreign currency",
    ], 1, "A common market widens the market and lowers barriers between members, which is also why trade diversion is the risk to watch."),

    # ---- development and labour (Q30-35) ----------------------------------
    q("An increase in real GDP per capita will necessarily raise welfare only if", [
        "population growth is checked and the extra output is widely shared",
        "the money supply is increased",
        "the exchange rate is fixed",
        "the government budget is balanced",
    ], 0, "Distribution and population growth both intervene: income per head can rise while most people are worse off."),

    q("The Gini coefficient measures", [
        "the degree of inequality in a distribution",
        "the rate of inflation",
        "the level of employment",
        "the growth rate of output",
    ], 0, "Inequality, from 0 (perfect equality) to 1 (complete inequality). The other three have their own measures."),

    q("Unemployment that appears because workers lack the skills employers need is", [
        "frictional",
        "structural",
        "cyclical",
        "seasonal",
    ], 1, "Structural: a mismatch of skills, cured by training rather than by demand stimulus."),

    q("The labour force of a country is made up of", [
        "everyone of working age",
        "the employed and the unemployed who are seeking work",
        "the employed only",
        "all adults who pay tax",
    ], 1, "Employed plus actively seeking. Those outside the labour force — students, retirees, discouraged workers — are excluded."),

    q("A country whose population grows at 2.5 per cent while output grows at 4 per cent will see income per head", [
        "rise by about 1.5 per cent",
        "fall by about 1.5 per cent",
        "rise by about 6.5 per cent",
        "stay unchanged",
    ], 0, "The difference between the two rates — about 1.5 percentage points of growth per head."),

    q("A high dependency ratio is likely to", [
        "raise the savings rate",
        "reduce savings and increase the burden on workers",
        "reduce the birth rate immediately",
        "raise income per head at once",
    ], 1, "More non-workers per worker means more consumption and less saving, which is why it constrains investment."),

    # ---- the Nigerian economy and data (Q36-40) ---------------------------
    q("Nigeria's consumer price index is compiled by the", [
        "Central Bank of Nigeria",
        "National Bureau of Statistics",
        "Federal Inland Revenue Service",
        "Securities and Exchange Commission",
    ], 1, "The NBS compiles the index and publishes the inflation rate derived from it."),

    q("The Federation Account exists to", [
        "receive and share revenue among the three tiers of government",
        "hold the personal savings of citizens",
        "insure bank deposits",
        "regulate the capital market",
    ], 0, "It is the constitutional pool from which the monthly allocation is made, with derivation as one of the sharing principles."),

    q("A fall in the world price of crude oil will most directly", [
        "raise Nigeria's foreign exchange earnings",
        "reduce Nigeria's foreign exchange earnings and government revenue",
        "reduce Nigeria's imports of petroleum products",
        "raise the naira's external value",
    ], 1, "Both the export earnings and the oil-linked revenue fall together, which is the single-commodity vulnerability the chapter describes."),

    q("Monetary policy in Nigeria is conducted by the", [
        "Federal Ministry of Finance",
        "Central Bank of Nigeria",
        "Fiscal Responsibility Commission",
        "National Bureau of Statistics",
    ], 1, "The CBN sets the monetary policy rate and uses the reserve and liquidity ratios and open market operations."),

    q("Nigeria's balance of payments would show a deficit on the current account if", [
        "visible and invisible exports together were less than imports and outflows",
        "the capital account were in surplus",
        "the external reserves were rising",
        "the naira were devalued",
    ], 0, "A current-account deficit means the credits on goods, services and transfers are smaller than the debits."),
]
