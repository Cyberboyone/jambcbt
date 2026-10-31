"""Paper 1 — forty questions in the proportions of a real UTME Economics paper.

Distribution: basics 4, demand and supply 8, elasticity 4, production and cost 4,
market structures 3, the national economy 15, current affairs 2.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


PAPER_1 = [
    # ---- basics (1-4) -----------------------------------------------------
    q("Economics is chiefly concerned with", [
        "how firms can maximise their profits",
        "how scarce resources are allocated among competing wants",
        "how governments can collect more tax",
        "how the prices of shares are forecast",
    ], 1, "Allocation of scarce resources among competing wants. Profit, tax and share prices are three small applications of that central problem, not the problem itself."),

    q("The statement that the government should spend more on education is", [
        "a positive statement",
        "a normative statement",
        "a definition",
        "a hypothesis that data can test",
    ], 1, "*Should* makes it a value judgement: it recommends rather than describes, so no figure can prove it wrong. Positive statements describe what is and can be tested."),

    q("A free good is best described as one that", [
        "has no opportunity cost because it is not scarce",
        "is given away by the government",
        "carries a zero price but is still scarce",
        "is produced only by the public sector",
    ], 0, "No scarcity, so no sacrifice, so no opportunity cost. A zero price with scarcity — a rationed good — is the trap; the test is scarcity, not price."),

    q("The reward for the factor of production called entrepreneurship is", [
        "rent", "interest", "profit", "wages",
    ], 2, "Profit, and it is the residual: the entrepreneur receives what is left after the other three factors are paid. Rent belongs to land, interest to capital and wages to labour."),

    # ---- demand, supply and price (5-12) ----------------------------------
    q("A change in the price of a good, other things being equal, produces", [
        "a shift of its demand curve",
        "a movement along its demand curve",
        "a shift of its supply curve",
        "a change in consumers' tastes",
    ], 1, "The price of the good is the one variable that moves the buyer along the curve. A shift needs a change in a determinant such as income, tastes or population."),

    q("Which of the following will shift the supply curve of maize but not the demand curve?", [
        "a rise in the price of fertiliser",
        "a rise in consumers' incomes",
        "a fall in the price of a substitute food",
        "a change in consumers' tastes",
    ], 0, "Fertiliser is an input, so it acts on the producer. The other three act on buyers and move the demand curve — the stems of three common distractors."),

    q("Demand for a good falls while its supply rises. Which outcome is certain?", [
        "the price rises",
        "the price falls",
        "the quantity traded rises",
        "the quantity traded falls",
    ], 1, "Both changes push the price down, so the price must fall. Quantity could move either way, because one change raises it and the other lowers it."),

    q("A maximum price fixed below the equilibrium price will most likely produce", [
        "a surplus and a fall in price",
        "a shortage and a black market",
        "a surplus and a black market",
        "no change, because the market ignores the law",
    ], 1, "Below equilibrium, quantity demanded exceeds quantity supplied, so the queue replaces the price and some buyers pay above the ceiling illegally. A surplus belongs to a minimum price, not a maximum."),

    q("A subsidy paid to producers of a good will", [
        "shift supply to the left and raise the price",
        "shift supply to the right and lower the price",
        "shift demand to the right and raise the price",
        "leave both price and quantity unchanged",
    ], 1, "A subsidy lowers the cost of production, so supply shifts right, price falls and quantity rises. A tax does the same thing in the opposite direction."),

    q("Demand for a good rises while its supply is perfectly inelastic. The result is", [
        "a higher price and a larger quantity",
        "a higher price and an unchanged quantity",
        "a lower price and a larger quantity",
        "no change in price, because supply cannot respond",
    ], 1, "A vertical supply curve cannot move, so the whole adjustment falls on price. The quantity sold stays at the fixed amount and buyers bid the price up."),

    q("Given Qd = 80 − 2P and Qs = 20 + 2P, the equilibrium price and quantity are", [
        "₦15 and 50 units",
        "₦25 and 30 units",
        "₦10 and 60 units",
        "₦20 and 40 units",
    ], 0, "Set 80 − 2P = 20 + 2P, so 60 = 4P and P = ₦15; then Qd = 80 − 30 = 50. The other three pairs fail when substituted back."),

    q("Which of the following will NOT shift the demand curve for bread?", [
        "a rise in the price of bread",
        "a rise in the incomes of bread eaters",
        "a fall in the price of butter, a complement",
        "a successful advertising campaign for bread",
    ], 0, "The good's own price moves buyers along the curve; it never shifts it. The other three are determinants of demand and shift the curve."),

    # ---- elasticity (13-16) ----------------------------------------------
    q("The price of a good falls from ₦20 to ₦18 and quantity demanded rises from 100 to 120 units. The price elasticity of demand is", [
        "0.5", "2.0", "1.0", "20.0",
    ], 1, "Quantity rises 20 per cent and price falls 10 per cent, so PED = 20 ÷ 10 = 2.0. Dividing the other way gives 0.5, the commonest error in the chapter."),

    q("A supply curve that is perfectly inelastic is drawn as", [
        "a horizontal line",
        "a vertical line",
        "a line sloping upward to the right",
        "a curve bowed towards the origin",
    ], 1, "Quantity supplied does not respond at all, so the line stands at one quantity whatever the price. A horizontal supply curve is the perfectly elastic case."),

    q("When the demand for a good is elastic, a fall in its price will", [
        "raise total revenue",
        "lower total revenue",
        "leave total revenue unchanged",
        "raise total cost",
    ], 0, "Elastic demand means quantity rises proportionately more than price falls, so the quantity effect outweighs the price effect and revenue rises."),

    q("The price of good Y rises by 10 per cent and the quantity of good X demanded falls by 5 per cent. The cross elasticity of demand is", [
        "+2.0 and the goods are substitutes",
        "−0.5 and the goods are complements",
        "+0.5 and the goods are complements",
        "−2.0 and the goods are substitutes",
    ], 1, "XED = −5 ÷ +10 = −0.5. The negative sign is the definition of complements: one good dearer, the other bought less."),

    # ---- production and cost (17-20) -------------------------------------
    q("The law of diminishing returns applies", [
        "in the long run, when all factors change",
        "in the short run, when at least one factor is fixed",
        "only when output falls",
        "only in agriculture",
    ], 1, "The law is a short-run statement: it describes what happens as more of a variable factor is added to a fixed factor. In the long run every factor can change, so the law has nothing to say."),

    q("A firm's fixed cost is ₦200 and its average variable cost is ₦30 at an output of 10 units. Its total cost is", [
        "₦230", "₦300", "₦500", "₦2,300",
    ], 2, "TC = TFC + TVC = 200 + (30 × 10) = ₦500. Adding the two figures without multiplying by output gives ₦230."),

    q("A firm sells every unit at ₦40 and its total cost is TC = 300 + 25Q. Its break-even output is", [
        "12 units", "15 units", "20 units", "40 units",
    ], 2, "Break-even means TR = TC: 40Q = 300 + 25Q, so 15Q = 300 and Q = 20. Dividing the fixed cost by the price alone gives 7.5, which is below the answer."),

    q("Economies of scale are present when", [
        "long-run average cost falls as output rises",
        "short-run marginal cost rises as output rises",
        "total fixed cost rises with output",
        "average variable cost is constant",
    ], 0, "Economies of scale are a long-run idea: the firm grows, all factors change, and average cost falls. Rising marginal cost is the short-run law of diminishing returns."),

    # ---- market structures (21-23) ---------------------------------------
    q("Which of the following is NOT a feature of perfect competition?", [
        "many buyers and sellers",
        "a homogeneous product",
        "product differentiation",
        "free entry and exit",
    ], 2, "Perfect competition requires identical products, so differentiation is exactly what is absent. Differentiation is the defining feature of monopolistic competition."),

    q("A monopolist faces the demand curve P = 60 − Q and has a constant marginal cost of ₦10. Its profit-maximising output is", [
        "20 units", "25 units", "30 units", "50 units",
    ], 1, "MR = 60 − 2Q; setting MR = MC gives 60 − 2Q = 10, so Q = 25. Setting price equal to marginal cost — the competitive rule — gives 50, which is the trap."),

    q("Deadweight loss arises under monopoly because the monopolist", [
        "charges a price equal to marginal cost",
        "produces less than the allocatively efficient output",
        "earns only normal profit",
        "faces a horizontal demand curve",
    ], 1, "Output stops where MR = MC, short of the point where price equals marginal cost, so some mutually beneficial trades never happen and the surplus is lost."),

    # ---- the national economy (24-38) ------------------------------------
    q("Gross domestic product is the", [
        "total value of all goods and services sold in a country in a year",
        "market value of final goods and services produced within a country in a year",
        "total income earned by a country's citizens anywhere in the world",
        "value of a country's exports minus its imports",
    ], 1, "Final goods, produced within the country, valued at market prices. Sales of second-hand goods and intermediate goods are excluded, and citizens' income abroad belongs to GNP."),

    q("Gross national product differs from gross domestic product by", [
        "net factor income from abroad",
        "depreciation",
        "indirect taxes",
        "the rate of inflation",
    ], 0, "GNP = GDP + net factor income from abroad — the earnings of residents from abroad minus the earnings of foreigners at home."),

    q("Real GDP is preferred to nominal GDP because it", [
        "includes the underground economy",
        "removes the effect of price changes",
        "counts only manufactured goods",
        "excludes government spending",
    ], 1, "Real GDP is valued at constant prices, so a rise means more output rather than higher prices. Nominal GDP can rise while output stands still."),

    q("Per capita income is obtained by dividing national income by", [
        "the labour force",
        "the population",
        "the number of households",
        "the value of exports",
    ], 1, "Income per head: national income divided by total population. Dividing by the labour force gives income per worker, which is a different and much larger figure."),

    q("Which of the following is excluded from GDP?", [
        "a new house built by a construction firm",
        "a pension paid to a retired teacher",
        "a haircut paid for at a salon",
        "a tractor sold to a farm",
    ], 1, "A pension is a transfer payment: money changes hands but nothing is produced. The other three are payments for currently produced goods or services."),

    q("When money is used to compare the values of different goods, it is functioning as a", [
        "medium of exchange",
        "store of value",
        "unit of account",
        "standard of deferred payment",
    ], 2, "Comparing values is the unit-of-account function. Paying for goods is the medium of exchange; keeping wealth is the store of value."),

    q("The principal instrument of monetary policy used by the Central Bank of Nigeria is", [
        "open market operations",
        "an increase in company income tax",
        "a change in government capital spending",
        "the fixing of market prices",
    ], 0, "Open market operations — buying and selling treasury bills — change the reserves of the banks. Tax and government spending are fiscal instruments, not monetary ones."),

    q("If the cash reserve ratio is 20 per cent, the credit multiplier is", [
        "2", "4", "5", "20",
    ], 2, "Multiplier = 1 ÷ reserve ratio = 1 ÷ 0.2 = 5. Using the ratio itself as the multiplier gives 20, and halving it gives 2.5."),

    q("Inflation is best defined as", [
        "a rise in the price of one essential good",
        "a persistent rise in the general price level",
        "a fall in the value of the naira against the dollar",
        "a rise in the volume of money in circulation",
    ], 1, "General and persistent: one good's price is not inflation, and a rise in the money supply is a cause rather than the definition."),

    q("Demand-pull inflation is caused by", [
        "aggregate demand rising faster than output",
        "a rise in the cost of imported inputs",
        "a rise in the exchange rate",
        "an increase in the level of unemployment",
    ], 0, "Too much money chasing too few goods. Rising input costs are cost-push inflation, which is the other side of the same chapter."),

    q("Which group loses most from an unanticipated inflation?", [
        "debtors who borrowed at a fixed rate",
        "people living on fixed money incomes",
        "traders who hold goods in stock",
        "owners of landed property",
    ], 1, "A fixed income buys less as prices rise, and the loss cannot be recovered. Debtors gain, because the real value of their debt falls."),

    q("A worker who has left one job and is looking for another is", [
        "structurally unemployed",
        "frictionally unemployed",
        "seasonally unemployed",
        "cyclically unemployed",
    ], 1, "Moving between jobs is frictional unemployment, and it is short-lived. A mismatch of skills is structural, and a slump in demand is cyclical."),

    q("The Phillips curve shows the short-run trade-off between", [
        "inflation and unemployment",
        "inflation and the balance of payments",
        "output and population",
        "taxation and government spending",
    ], 0, "Inflation against unemployment, in the short run. The trade-off weakens in the long run, when expectations adjust — the point the examiner likes to test."),

    q("Which of the following is an instrument of fiscal policy?", [
        "an increase in government spending on roads",
        "a rise in the cash reserve ratio",
        "a sale of treasury bills by the central bank",
        "a change in the rediscount rate",
    ], 0, "Fiscal policy works through taxation and government spending. The other three are monetary instruments operated by the central bank."),

    q("A tax that takes a larger percentage of the income of the rich than of the poor is", [
        "regressive",
        "proportional",
        "progressive",
        "indirect",
    ], 2, "Progressive, because the average rate rises with income. A regressive tax takes a larger share from the poor, and a proportional tax takes the same share from everyone."),

    # ---- current affairs and data (39-40) --------------------------------
    q("The institution responsible for monetary policy in Nigeria is the", [
        "Federal Ministry of Finance",
        "Central Bank of Nigeria",
        "National Bureau of Statistics",
        "Nigerian Stock Exchange",
    ], 1, "The Central Bank of Nigeria sets the monetary policy rate and manages the money supply. The Ministry of Finance handles fiscal policy, and the Bureau publishes the data."),

    q("The rate of value added tax in Nigeria is", [
        "5 per cent", "7.5 per cent", "10 per cent", "15 per cent",
    ], 1, "7.5 per cent, the rate that has applied since 2020. Five per cent is the old rate, and 15 per cent is the standard rate in several other countries."),
]
