"""The 120-question master bank for Economics Volume 1 — twenty per chapter.

No stem in this file repeats a stem in the chapter drills or in either paper.
"""


def q(s, o, i, sol):
    return (s, o, i, sol)


BANK_1 = [
    q("In economics, wants are best described as", [
        "the goods a person can afford to buy",
        "desires for goods and services that are not limited",
        "the needs a person cannot live without",
        "the goods actually produced in an economy",
    ], 1, "Wants are unlimited desires, whether or not a person can pay for them. What a person can afford is effective demand, and the needs of survival are only a small part of wants."),

    q("A scale of preference is", [
        "a list of wants arranged in order of importance",
        "a table of prices and quantities demanded",
        "a record of a household's income and spending",
        "a government statement of budget priorities",
    ], 0, "It is the ranking of wants that makes choice possible. The price-and-quantity table is a demand schedule, and the income record is a budget."),

    q("A government decides to build a stadium rather than a hospital with the same resources. The opportunity cost of the stadium is", [
        "the money spent building it",
        "the hospital that was not built",
        "the wages paid to the construction workers",
        "the revenue the stadium will earn",
    ], 1, "Opportunity cost is the next best alternative forgone, which here is the hospital. The money spent is the money cost — a different and much smaller idea."),

    q("An outward shift of a country's production possibility curve indicates", [
        "unemployment of resources",
        "economic growth",
        "a movement to a less efficient point",
        "a fall in the population",
    ], 1, "The economy can now produce more of both goods, which is growth. A movement inside the curve is unemployment, and a movement along it is reallocation."),

    q("A movement from a point inside the production possibility curve to a point on it means that", [
        "resources have become more productive",
        "previously idle resources are now employed",
        "the country has acquired new technology",
        "the curve itself has shifted outward",
    ], 1, "The frontier has not moved; the economy has merely stopped wasting capacity. New technology would push the whole curve outward."),

    q("A production possibility curve drawn as a straight line implies", [
        "constant opportunity cost",
        "increasing opportunity cost",
        "zero opportunity cost",
        "unlimited resources",
    ], 0, "A straight line means each extra unit of one good costs the same amount of the other, whatever the mix. The bowed-out curve is the realistic case of increasing cost."),

    q("Which of the following is NOT a factor of production?", [
        "a factory building",
        "money in a current account",
        "a farm labourer",
        "an entrepreneur",
    ], 1, "Money buys factors but is not one: it produces nothing by itself. The building is capital, the labourer is labour and the entrepreneur organises the other three."),

    q("The factor of production rewarded by wages and salaries is", [
        "land",
        "labour",
        "capital",
        "entrepreneurship",
    ], 1, "Labour, including both manual and mental work. Land earns rent, capital earns interest and the entrepreneur earns profit."),

    q("In economics, land as a factor of production includes", [
        "only land used for farming",
        "all natural resources, including minerals and water",
        "buildings and machinery",
        "the money used to buy land",
    ], 1, "Land means every free gift of nature. Restricting it to farmland is the everyday meaning, not the economic one."),

    q("In a free market economy, the questions of what, how and for whom to produce are answered by", [
        "a central planning committee",
        "the price mechanism",
        "a national referendum",
        "the largest firms in each industry",
    ], 1, "Prices carry the information and the incentive. A planning committee is the answer in a command economy."),

    q("A mixed economy is one in which", [
        "all resources are owned by the state",
        "all resources are owned privately",
        "both private individuals and the state allocate resources",
        "there is no government intervention",
    ], 2, "Private enterprise and public enterprise coexist, which describes almost every real economy, Nigeria included."),

    q("A command economy is characterised by", [
        "central planning of production and distribution",
        "the profit motive as the main signal",
        "free entry into every industry",
        "consumer sovereignty in every market",
    ], 0, "The plan replaces the price as the coordinating device. Profit, free entry and consumer sovereignty are features of a market economy."),

    q("The question of 'for whom to produce' is chiefly a question of", [
        "the technique of production",
        "the distribution of output among people",
        "the quantity of output",
        "the location of production",
    ], 1, "Distribution — who gets how much of the product. What to produce concerns the mix, and how to produce concerns the technique."),

    q("Opportunity cost is measured by", [
        "the money actually paid for the choice made",
        "the value of the best alternative given up",
        "the total cost of all the alternatives available",
        "the price the good would fetch if resold",
    ], 1, "The value of the one alternative that would otherwise have been chosen. Summing every alternative gives a figure no decision-maker ever gives up."),

    q("Free goods are those that", [
        "have a zero price because the government subsidises them",
        "are available in unlimited quantity at zero opportunity cost",
        "are given away by charities",
        "are produced only in the public sector",
    ], 1, "Air is the standard example: no scarcity, so no sacrifice to obtain another unit. A subsidised good is still scarce and still has an opportunity cost."),

    q("An economy producing at a point inside its production possibility curve is", [
        "using all its resources efficiently",
        "operating below its capacity",
        "producing beyond its capacity",
        "growing at its maximum rate",
    ], 1, "Inside the curve means some resources are idle or badly used. Every point on the curve is efficient, and every point outside it is unattainable."),

    q("A production possibility curve will shift to the right if", [
        "there is improved technology in both industries",
        "consumers change their tastes",
        "the price of one good rises",
        "some workers become unemployed",
    ], 0, "Better technology raises what the same resources can produce. Tastes and prices change what is demanded, not what is possible, and unemployment moves the economy inside the curve."),

    q("The central economic problem that gives rise to opportunity cost is", [
        "the unequal distribution of income",
        "scarcity of resources relative to wants",
        "the power of monopolies",
        "the level of taxation",
    ], 1, "If resources were unlimited, no choice would be necessary and nothing would be given up. Every other problem on the list is a consequence, not the source."),

    q("A good bought by a household for its own final use is called", [
        "a capital good",
        "a consumer good",
        "an intermediate good",
        "a free good",
    ], 1, "A consumer good satisfies a want directly. A capital good is used to make other goods, and an intermediate good is used up in producing them."),

    q("Production is said to be complete when", [
        "goods leave the factory gate",
        "goods and services reach the final consumer",
        "the goods are paid for by a wholesaler",
        "the raw materials are assembled",
    ], 1, "Production creates utility, and utility is created when the good reaches the person who uses it. Transport, storage and retailing are therefore part of production, not after it."),
]

BANK_2 = [
    q("The inverse relationship between the price of a good and the quantity demanded is known as", [
        "the law of supply",
        "the law of demand",
        "the law of diminishing returns",
        "Say's law",
    ], 1, "The law of demand. Its mirror image, a direct relationship, is the law of supply, and diminishing returns is a statement about production."),

    q("The horizontal summation of the individual demand curves of all buyers gives", [
        "the market demand curve",
        "the market supply curve",
        "the demand for one consumer",
        "the equilibrium price",
    ], 0, "At each price the individual quantities are added, which is a horizontal sum. Adding prices instead would sum the curves vertically and answer a different question."),

    q("The demand curve slopes downward from left to right because", [
        "consumers buy less as their incomes rise",
        "a fall in price makes a good cheaper relative to substitutes and raises real income",
        "producers offer less at a higher price",
        "the government fixes lower prices for larger quantities",
    ], 1, "The substitution effect and the income effect work together. The third option describes the supply curve, and the fourth invents a rule that does not exist."),

    q("Effective demand requires", [
        "willingness to buy, without the ability to pay",
        "both the willingness and the ability to pay",
        "the ability to pay, without the willingness to buy",
        "a government subsidy",
    ], 1, "Desire alone is not demand; it must be backed by purchasing power. A want without money is a wish, not an economic demand."),

    q("A rise in the income of consumers will shift the demand curve for a normal good", [
        "to the right",
        "to the left",
        "along itself",
        "downwards only",
    ], 0, "More income means more bought at every price, so the curve shifts right. For an inferior good the same rise shifts it left."),

    q("A fall in the price of a complement will", [
        "reduce the demand for the good it complements",
        "increase the demand for the good it complements",
        "shift the supply curve of the complement",
        "have no effect on demand",
    ], 1, "Cheaper printers mean more printers sold and therefore more ink cartridges demanded. Complements are used together, so their demands move together."),

    q("A rise in income reduces the demand for a particular good. The good is", [
        "a normal good",
        "a luxury good",
        "an inferior good",
        "a Giffen good",
    ], 2, "Demand falling as income rises is the definition of an inferior good, with a negative income elasticity. A Giffen good is a special inferior good whose demand also rises with its own price."),

    q("A good whose demand rises when its price rises, because a high price is taken as a mark of quality, is called", [
        "a Giffen good",
        "a Veblen good",
        "a normal good",
        "a complementary good",
    ], 1, "Conspicuous consumption — the Veblen effect. A Giffen good also breaks the law, but through the income effect on a staple, not through display."),

    q("An increase in the population of a market will", [
        "shift the demand curve to the right",
        "shift the demand curve to the left",
        "shift the supply curve to the left",
        "leave demand unchanged",
    ], 0, "More buyers mean more bought at every price. Population is a determinant of demand, and a larger population shifts the whole curve."),

    q("Consumers expect the price of rice to rise sharply next month. In the current month,", [
        "demand for rice falls",
        "demand for rice rises",
        "the supply of rice falls",
        "the price of rice falls",
    ], 1, "Buyers stock up before the increase, so current demand shifts right. Expectation of a future price change acts on demand today."),

    q("Total utility is", [
        "the satisfaction gained from the last unit consumed",
        "the total satisfaction gained from all units consumed",
        "the money a consumer is willing to pay",
        "the satisfaction gained per naira spent",
    ], 1, "The sum of the satisfaction from every unit. The satisfaction from the last unit is marginal utility, and the satisfaction per naira is the ratio the consumer equalises."),

    q("Marginal utility becomes negative when", [
        "total utility is rising at a decreasing rate",
        "total utility begins to fall",
        "total utility is at its maximum",
        "the price of the good rises",
    ], 1, "A negative marginal utility means the last unit made the consumer worse off, so total utility has turned down. At the maximum of total utility, marginal utility is exactly zero."),

    q("The law of diminishing marginal utility states that as more units of a good are consumed,", [
        "total utility falls immediately",
        "the additional satisfaction from each extra unit falls",
        "the price of the good falls",
        "the consumer's income falls",
    ], 1, "Each extra unit adds less than the one before. Total utility is still rising while marginal utility is positive; it falls only when marginal utility turns negative."),

    q("A consumer maximises satisfaction between two goods X and Y when", [
        "MUx = MUy",
        "MUx ÷ Px = MUy ÷ Py",
        "Px = Py",
        "TUx = TUy",
    ], 1, "Utility per naira must be equal across goods. Equating the marginal utilities would be right only if the prices were also equal."),

    q("If MUx ÷ Px is greater than MUy ÷ Py, the consumer should", [
        "buy more X and less Y",
        "buy more Y and less X",
        "buy less of both goods",
        "change nothing, because utility cannot be improved",
    ], 0, "The last naira spent on X is buying more satisfaction than the last naira spent on Y, so spending should move towards X until the two ratios are equal."),

    q("The measurement of utility in units called utils belongs to the", [
        "ordinal approach",
        "cardinal approach",
        "indifference approach",
        "production approach",
    ], 1, "Cardinal utility assumes satisfaction can be measured in numbers. The ordinal approach ranks bundles instead and uses indifference curves."),

    q("An indifference curve shows combinations of two goods that give the consumer", [
        "the same total expenditure",
        "the same level of satisfaction",
        "the maximum possible satisfaction",
        "different levels of satisfaction at the same price",
    ], 1, "Every point on one indifference curve yields equal satisfaction, which is why the consumer does not mind which point is chosen. The highest attainable curve is a different question."),

    q("A budget line shows the combinations of two goods that a consumer", [
        "can afford with a given income",
        "prefers above all others",
        "can produce with given resources",
        "consumes at zero prices",
    ], 0, "The affordable set. The point chosen on it is where the budget line touches the highest indifference curve."),

    q("A rise in the consumer's income, prices unchanged, will", [
        "shift the budget line outward, parallel to itself",
        "rotate the budget line inward along one axis",
        "leave the budget line unchanged",
        "make the budget line steeper",
    ], 0, "More income moves both intercepts out by the same proportion, so the line shifts parallel. A change in one price rotates the line instead."),

    q("A fall in the price of a good, other things being equal, causes", [
        "an extension of demand",
        "a contraction of demand",
        "a shift of the demand curve to the left",
        "a shift of the supply curve to the right",
    ], 0, "A lower price moves the buyer down and along the curve to a larger quantity — an extension of demand. A rise in price would cause a contraction; neither shifts the curve."),
]

BANK_3 = [
    q("The direct relationship between the price of a good and the quantity supplied is called", [
        "the law of demand",
        "the law of supply",
        "the law of variable proportions",
        "the law of diminishing utility",
    ], 1, "The law of supply, and it is why the supply curve slopes upward. The law of variable proportions is the short-run production law."),

    q("A supply schedule is", [
        "a table showing quantities supplied at different prices",
        "a graph of quantity against price",
        "a list of firms in an industry",
        "the total stock of a good in a warehouse",
    ], 0, "A table of price and quantity supplied. The graph of the same data is the supply curve, and the stock in the warehouse is inventory, not supply."),

    q("The supply curve slopes upward because", [
        "consumers are willing to pay more for larger quantities",
        "producers must cover rising marginal costs as output expands",
        "the government requires higher prices",
        "demand rises with price",
    ], 1, "Beyond a point, extra output costs more per unit, so a higher price is needed to make it worth producing. The first option confuses supply with demand."),

    q("Which of the following will shift the supply curve of a good to the right?", [
        "an increase in the price of the good",
        "an improvement in production technology",
        "a rise in consumers' incomes",
        "an increase in the price of a complement",
    ], 1, "Better technology lowers cost, so more is supplied at every price. The good's own price moves the seller along the curve, and income and complements act on demand."),

    q("An increase in an indirect tax on a good will shift its supply curve", [
        "to the right",
        "to the left",
        "along itself",
        "not at all",
    ], 1, "The tax is an extra cost at every quantity, so less is offered at every price. A subsidy would shift the curve the other way."),

    q("A drought that destroys a large part of the maize harvest will", [
        "shift the supply of maize to the right",
        "shift the supply of maize to the left",
        "shift the demand for maize to the right",
        "leave the supply of maize unchanged",
    ], 1, "Producers can offer less at every price, so supply shifts left and the price rises. The demand curve has not moved; the change is on the supply side."),

    q("The equilibrium price in a market is the price at which", [
        "quantity demanded exceeds quantity supplied",
        "quantity demanded equals quantity supplied",
        "the government has fixed the price",
        "supply is at its maximum",
    ], 1, "The price that clears the market, with neither a surplus nor a shortage. Any other price sets up a force that pushes the market back towards it."),

    q("At a price below the equilibrium price there will be", [
        "a surplus, and the price will fall",
        "a shortage, and the price will rise",
        "a shortage, and the price will fall",
        "equilibrium, because buyers set the price",
    ], 1, "Buyers want more than sellers offer, so unsatisfied buyers bid the price up. A surplus is the result of a price above equilibrium."),

    q("Excess demand in a market will cause the price to", [
        "rise",
        "fall",
        "stay the same",
        "fall to zero",
    ], 0, "Unmet demand is a queue, and a queue bids the price up until the excess disappears. Excess supply does the opposite."),

    q("A price ceiling is effective only when it is set", [
        "above the equilibrium price",
        "below the equilibrium price",
        "exactly at the equilibrium price",
        "at the price the producers prefer",
    ], 1, "A ceiling above equilibrium is not binding, because the market price is already lower. Only a ceiling below equilibrium forces a shortage."),

    q("A minimum price legislation is designed to protect", [
        "buyers, by keeping prices low",
        "producers, by keeping prices high",
        "the government's tax revenue",
        "importers of the good",
    ], 1, "A floor above equilibrium is usually a producer-support measure, and minimum wage legislation is its labour-market version. A ceiling protects buyers and is set below equilibrium."),

    q("Demand for a good increases while its supply curve slopes upward. The new equilibrium will have", [
        "a higher price and a larger quantity",
        "a lower price and a larger quantity",
        "a higher price and a smaller quantity",
        "an unchanged price and quantity",
    ], 0, "The demand curve shifts right along an upward-sloping supply curve, so both the equilibrium price and quantity rise. That combination is the signature of a demand increase."),

    q("Demand falls and supply falls at the same time. Which outcome is certain?", [
        "the price falls",
        "the price rises",
        "the quantity falls",
        "the quantity rises",
    ], 2, "Both shifts push quantity down, so quantity must fall. They push price in opposite directions, so the price change is indeterminate."),

    q("A per-unit tax imposed on sellers of a good will", [
        "raise the equilibrium price and reduce the quantity traded",
        "lower the equilibrium price and raise the quantity traded",
        "raise both the price and the quantity",
        "leave the market unchanged",
    ], 0, "The tax shifts supply left, so the price rises and quantity falls. Part of the tax is passed to buyers, which is why the price does not rise by the full amount of the tax."),

    q("The burden of an indirect tax falls mostly on consumers when", [
        "demand is elastic and supply is inelastic",
        "demand is inelastic and supply is elastic",
        "both demand and supply are perfectly elastic",
        "the tax is very small",
    ], 1, "The side that cannot escape bears the tax. Inelastic buyers cannot walk away, so they pay; elastic producers can, so they do not."),

    q("A subsidy paid to consumers of a good will", [
        "shift the demand curve to the right",
        "shift the demand curve to the left",
        "shift the supply curve to the left",
        "raise the price paid by consumers",
    ], 0, "The subsidy raises the buyers' effective purchasing power, so demand shifts right. A subsidy to producers would shift supply right instead."),

    q("The price mechanism performs the functions of", [
        "rationing, signalling and providing incentives",
        "taxation, borrowing and spending",
        "planning, directing and controlling",
        "producing, distributing and consuming",
    ], 0, "Prices ration scarce goods, signal where demand is strong, and reward the producers who respond. Taxation, borrowing and spending are government instruments."),

    q("A market is said to be in stable equilibrium when", [
        "the price never changes again",
        "any movement away from equilibrium sets up forces that restore it",
        "the government fixes the price",
        "demand and supply are both perfectly inelastic",
    ], 1, "Stability means self-correction: a surplus pushes the price down, a shortage pushes it up, and both roads lead back to the same point."),

    q("Demand and supply both rise, and demand rises by the larger amount. The result is", [
        "a higher price and a larger quantity",
        "a lower price and a larger quantity",
        "a higher price and a smaller quantity",
        "an unchanged price and quantity",
    ], 0, "Both shifts raise quantity, but only demand raises price; because the demand shift is larger, the price rises too. Equal shifts would leave the price unchanged."),

    q("Producer surplus is the difference between the price received and the", [
        "average cost of production",
        "minimum price at which the producer would have supplied",
        "price paid by the consumer",
        "total revenue of the firm",
    ], 1, "It is the gain from selling above the lowest acceptable price, and it is the area above the supply curve and below the price. The gap between price and average cost measures profit, not surplus."),
]

BANK_4 = [
    q("Elasticity in economics measures", [
        "the slope of a curve",
        "the responsiveness of one variable to a change in another",
        "the difference between price and cost",
        "the total revenue of a firm",
    ], 1, "Responsiveness, and it is measured in percentages so that units cancel. Slope is a different idea: a steep curve may still be elastic."),

    q("Price elasticity of demand is calculated as", [
        "change in quantity ÷ change in price",
        "percentage change in quantity demanded ÷ percentage change in price",
        "change in price ÷ change in quantity demanded",
        "price × quantity demanded",
    ], 1, "Percentage changes, so that the answer is unit-free. Using absolute changes gives a figure that depends on the units chosen."),

    q("Demand is perfectly inelastic when the elasticity coefficient is", [
        "zero",
        "one",
        "greater than one",
        "infinity",
    ], 0, "Zero: quantity does not change at all, and the demand curve is vertical. Infinite elasticity is the other extreme, a horizontal curve."),

    q("A perfectly elastic demand curve is drawn as", [
        "a vertical line",
        "a horizontal line",
        "a line sloping down to the right",
        "a curve convex to the origin",
    ], 1, "Any rise in price loses every buyer, so quantity collapses to zero — a horizontal line at the ruling price. Perfect competition's individual firm faces this curve."),

    q("Demand is said to be elastic when the coefficient of price elasticity is", [
        "greater than one",
        "equal to one",
        "between zero and one",
        "negative",
    ], 0, "Above one, quantity responds proportionately more than price. Between zero and one is inelastic, and exactly one is unit elastic."),

    q("A rise in price when demand is elastic will", [
        "raise total revenue",
        "reduce total revenue",
        "leave total revenue unchanged",
        "raise total revenue only in the long run",
    ], 1, "Quantity falls proportionately more than price rises, so the quantity effect dominates and revenue falls. This is the revenue test in one sentence."),

    q("When demand is unit elastic, a change in price", [
        "raises total revenue",
        "lowers total revenue",
        "leaves total revenue unchanged",
        "makes revenue zero",
    ], 2, "The two effects are exactly equal and cancel, so total revenue stays put. Revenue is at its maximum at this point on a straight-line demand curve."),

    q("The demand for a good becomes more elastic when", [
        "it has more close substitutes",
        "it becomes more of a necessity",
        "its share of the household budget falls",
        "the time allowed to adjust becomes shorter",
    ], 0, "Substitutes give the buyer somewhere else to go. Necessity, a small budget share and a short time period all push towards inelasticity."),

    q("The demand for life-saving medicine is likely to be", [
        "elastic, because it is expensive",
        "inelastic, because there is no substitute and it is a necessity",
        "perfectly elastic, because the supplier sets the price",
        "unit elastic in every time period",
    ], 1, "No substitute and no postponement, so buyers pay whatever is asked. Price is not the same as elasticity of demand."),

    q("The larger the share of income spent on a good, the", [
        "less elastic its demand is likely to be",
        "more elastic its demand is likely to be",
        "higher its price must be",
        "smaller its supply is",
    ], 1, "A large budget share makes buyers sensitive to the price. The same proportion of income test explains why salt is inelastic and a car is elastic."),

    q("The longer the time period allowed, the", [
        "less elastic demand becomes",
        "more elastic demand becomes",
        "more inelastic supply becomes",
        "lower the price must be",
    ], 1, "Buyers find substitutes and change habits given time, so responsiveness rises. Demand is always more elastic in the long run than in the short run."),

    q("The price of a good rises by 10 per cent and quantity supplied rises by 20 per cent. The price elasticity of supply is", [
        "0.5, and supply is inelastic",
        "2.0, and supply is elastic",
        "0.5, and supply is elastic",
        "2.0, and supply is inelastic",
    ], 1, "PES = 20 ÷ 10 = 2.0, which is above one, so supply is elastic. Inverting the division gives 0.5, the usual slip."),

    q("Supply is likely to be inelastic in the short run because", [
        "firms can build new factories quickly",
        "at least one factor of production is fixed",
        "consumers do not respond to price",
        "prices are set by the government",
    ], 1, "Capacity cannot be expanded at once, so output responds only slowly. In the long run all factors can change and supply becomes more elastic."),

    q("A 12 per cent fall in price raises quantity demanded by 8 per cent. The price elasticity of demand is", [
        "0.67, and demand is inelastic",
        "1.5, and demand is elastic",
        "0.67, and demand is elastic",
        "1.5, and demand is inelastic",
    ], 0, "PED = 8 ÷ 12 = 0.67, which is below one, so demand is inelastic. The 1.5 figures invert the division."),

    q("The price of a good rises from ₦10 to ₦12 and quantity demanded falls from 50 to 40 units. The price elasticity of demand is", [
        "0.5", "1.0", "2.0", "5.0",
    ], 1, "Quantity falls 20 per cent and price rises 20 per cent, so PED = 1.0. Comparing absolute changes instead gives 10 ÷ 2 = 5, the commonest arithmetic error in the topic."),

    q("A good has an income elasticity of demand of +0.3. The good is", [
        "a luxury",
        "a necessity",
        "an inferior good",
        "a Giffen good",
    ], 1, "Positive but below one: demand rises with income, but proportionately less, which is the definition of a necessity. A luxury has an elasticity above one."),

    q("A good has an income elasticity of demand of +2.5. The good is", [
        "a necessity",
        "a luxury",
        "an inferior good",
        "a substitute",
    ], 1, "Above one, so demand rises faster than income — a luxury. Necessities sit between zero and one, and inferior goods are negative."),

    q("An income elasticity of demand of zero means that", [
        "quantity demanded does not change when income changes",
        "the good is inferior",
        "the good is a luxury",
        "price has no effect on demand",
    ], 0, "Zero responsiveness to income, which is the mark of a good consumed in a fixed amount whatever the household earns. Inferior goods are negative, not zero."),

    q("A cross elasticity of demand of zero between two goods means that they are", [
        "substitutes",
        "complements",
        "unrelated",
        "both inferior",
    ], 2, "No relationship: a change in the price of one leaves the demand for the other untouched. Positive means substitutes and negative means complements."),

    q("Supply is inelastic and demand is elastic. An indirect tax on the good will be borne mainly by", [
        "consumers",
        "producers",
        "the government",
        "the importers of the good",
    ], 1, "The inelastic side absorbs the tax. Producers cannot cut output much, so they accept a lower net price while the market price barely moves."),
]

BANK_5 = [
    q("A production function shows the relationship between", [
        "price and quantity supplied",
        "inputs used and the maximum output obtainable",
        "cost and revenue",
        "profit and output",
    ], 1, "Inputs to maximum output, given the technology. It is a physical relationship; cost and revenue enter only after the output is known."),

    q("The short run in production theory is a period in which", [
        "all factors of production are variable",
        "at least one factor of production is fixed",
        "no factor of production can be changed",
        "the firm makes only normal profit",
    ], 1, "One fixed factor defines the short run, and it is what makes the law of diminishing returns possible. In the long run every factor is variable."),

    q("When successive units of a variable factor are added to a fixed factor and total product rises at a decreasing rate, the firm is experiencing", [
        "increasing returns",
        "diminishing returns",
        "constant returns",
        "economies of scale",
    ], 1, "Each extra worker adds less than the one before, so total product still rises but more slowly. Economies of scale is a long-run statement about average cost."),

    q("Average product of labour is calculated as", [
        "total product ÷ number of workers",
        "change in total product ÷ change in workers",
        "total product × number of workers",
        "total cost ÷ total product",
    ], 0, "Output per worker. The change in output over the change in workers is marginal product, which is a different and more sensitive measure."),

    q("Marginal product of labour is", [
        "total output divided by the number of workers",
        "the change in total output from employing one more worker",
        "the total output of the firm",
        "the wage paid to the last worker",
    ], 1, "The change in the total. Marginal values are always changes in totals, never totals or averages themselves."),

    q("Average product is at its maximum where", [
        "marginal product is zero",
        "marginal product equals average product",
        "total product is zero",
        "marginal product is at its maximum",
    ], 1, "While marginal product is above average product, the average is rising; when it falls below, the average falls. They meet at the peak of the average."),

    q("The rational stage of production for a firm is the stage in which", [
        "average product is rising and marginal product is rising",
        "average product is falling but marginal product is still positive",
        "marginal product is negative",
        "total product is zero",
    ], 1, "Stage two: output still rises with more labour, but less than proportionately. Stage three, with negative marginal product, is always irrational."),

    q("Diminishing returns begin at the point where", [
        "total product begins to fall",
        "marginal product begins to fall",
        "average product reaches zero",
        "fixed cost begins to rise",
    ], 1, "The law bites when each extra worker adds less than the one before, which happens while total product is still rising. Total product falls much later."),

    q("Which of the following is a fixed cost?", [
        "the wages of casual workers",
        "the rent of the factory building",
        "the cost of raw materials",
        "the electricity used in production",
    ], 1, "Rent is payable whatever the output, so it does not vary with production. The other three rise and fall with the level of output."),

    q("Which of the following is a variable cost?", [
        "insurance on the factory",
        "the salary of the managing director",
        "the cost of packaging materials",
        "the rent of the land",
    ], 2, "Packaging is used up in proportion to output. Insurance, a director's salary and rent are fixed in the short run."),

    q("Total cost is the sum of", [
        "fixed cost and variable cost",
        "fixed cost and marginal cost",
        "average cost and marginal cost",
        "price and profit",
    ], 0, "TC = TFC + TVC. Adding fixed cost to marginal cost mixes a total with a per-unit figure and gives a meaningless number."),

    q("Average total cost is calculated as", [
        "total cost ÷ output",
        "total cost × output",
        "total fixed cost ÷ output",
        "change in total cost ÷ change in output",
    ], 0, "Cost per unit. Dividing only the fixed cost gives average fixed cost, and the change in total cost gives marginal cost."),

    q("Marginal cost is", [
        "total cost divided by output",
        "the change in total cost from producing one more unit",
        "the change in fixed cost from producing one more unit",
        "total variable cost divided by output",
    ], 1, "The extra cost of the extra unit. Fixed cost does not change with output, so the marginal cost is entirely a variable-cost idea."),

    q("The marginal cost curve cuts the average cost curve", [
        "at the maximum of average cost",
        "at the minimum of average cost",
        "where average cost is zero",
        "nowhere, because they are parallel",
    ], 1, "Below the minimum, marginal cost is the cheaper unit that pulls the average down; above it, the dearer unit pulls the average up. That is why the crossing is always at the minimum."),

    q("The average fixed cost curve is", [
        "a horizontal straight line",
        "a rectangular hyperbola that falls continuously",
        "a U-shaped curve",
        "an upward-sloping straight line",
    ], 1, "A constant total spread over a growing output must fall, and it never reaches zero. The U shape belongs to average total cost."),

    q("In the long run, all costs are", [
        "fixed",
        "variable",
        "zero",
        "average costs only",
    ], 1, "Every factor can be changed, so no cost is fixed. That is why the long-run average cost curve is built from the lowest point of each short-run curve."),

    q("Internal economies of scale arise from", [
        "the growth of the firm itself",
        "the growth of the whole industry",
        "a rise in the price of inputs",
        "government subsidies",
    ], 0, "Internal economies come from within — bulk buying, specialisation, better finance. Growth of the whole industry produces external economies, which benefit every firm."),

    q("The upward-sloping section of a firm's long-run average cost curve represents", [
        "economies of scale",
        "diseconomies of scale",
        "the law of diminishing returns",
        "falling fixed cost",
    ], 1, "Rising long-run average cost as the firm grows is diseconomies of scale. Diminishing returns is a short-run law and would be drawn on a different set of curves."),

    q("The break-even point of a firm is the output at which", [
        "total revenue equals total cost",
        "total revenue is at its maximum",
        "marginal revenue equals marginal cost",
        "average revenue equals marginal cost",
    ], 0, "Zero economic profit: the firm covers every cost, including normal profit, and no more. Maximum profit is a different point, where MR = MC."),

    q("A firm is earning supernormal profit when", [
        "average revenue exceeds average cost",
        "average revenue equals average cost",
        "price equals marginal cost",
        "marginal revenue is zero",
    ], 0, "Revenue per unit above cost per unit leaves a surplus after every cost is paid. AR = AC is normal profit, which is the break-even condition."),
]

BANK_6 = [
    q("Market structure refers to", [
        "the physical layout of a market place",
        "the number of firms, the nature of the product and the conditions of entry",
        "the total value of sales in a market",
        "the price charged by the largest firm",
    ], 1, "The organisational features that determine how firms behave: numbers, product type, entry and information. The physical market place has nothing to do with it."),

    q("The four main market structures are", [
        "perfect competition, monopolistic competition, oligopoly and monopoly",
        "perfect competition, duopoly, oligopoly and cartel",
        "monopoly, monopsony, oligopoly and duopoly",
        "competition, collusion, cartel and merger",
    ], 0, "The standard spectrum from many sellers to one. A cartel is a behaviour found inside oligopoly, not a structure in its own right."),

    q("Perfect competition is characterised by", [
        "a few large firms and differentiated products",
        "many small firms selling an identical product",
        "a single firm protected by patents",
        "two firms sharing the market",
    ], 1, "Many sellers, a homogeneous product, free entry and perfect information. Differentiation and a few large firms belong to monopolistic competition and oligopoly."),

    q("For a perfectly competitive firm, price equals average revenue and marginal revenue because", [
        "the firm sets the price for the whole market",
        "it can sell any quantity at the ruling market price",
        "the government fixes the price",
        "its product is differentiated",
    ], 1, "The firm is a price taker, so every extra unit sells at the same price and MR = P = AR. A price maker would have MR below price."),

    q("A perfectly competitive firm maximises profit in the short run by producing where", [
        "price equals marginal cost",
        "price equals average fixed cost",
        "marginal revenue is zero",
        "average revenue equals average variable cost",
    ], 0, "Since P = MR for a price taker, MR = MC becomes P = MC. The other conditions either describe break-even or maximise revenue rather than profit."),

    q("A firm will shut down in the short run when price falls below", [
        "average total cost",
        "minimum average variable cost",
        "marginal cost",
        "average fixed cost",
    ], 1, "Below minimum AVC the firm cannot even cover the cost of the inputs it could switch off, so every unit produced adds to the loss. Between AVC and AC it loses money but loses less by producing."),

    q("A market with many sellers, differentiated products and free entry is", [
        "perfect competition",
        "monopolistic competition",
        "oligopoly",
        "monopoly",
    ], 1, "Many sellers and free entry are competitive; differentiation is what separates it from perfect competition and gives each firm a little price power."),

    q("In the long run, firms in monopolistic competition", [
        "earn supernormal profit",
        "earn only normal profit, and operate with excess capacity",
        "shut down",
        "collude to fix prices",
    ], 1, "Free entry drives the demand curve down to the point of tangency with average cost, so profit is normal and output is below minimum-cost scale. That gap is excess capacity."),

    q("Which of the following is a barrier to entry into a monopoly market?", [
        "many small firms in the industry",
        "ownership of a patent or a key raw material",
        "a homogeneous product",
        "perfect information among buyers",
    ], 1, "A patent, a licence or control of a resource keeps rivals out, and that protection is what allows the monopoly to persist. Many firms, a homogeneous product and perfect information are competitive features."),

    q("The marginal revenue of a monopolist is below the price because", [
        "the monopolist has no costs",
        "to sell one more unit it must lower the price on every unit",
        "the government taxes monopoly profit",
        "demand is perfectly elastic",
    ], 1, "A price cut applies to all units, not only the extra one, so the gain from the extra unit is partly offset. Under perfect competition the price is constant, so MR equals price."),

    q("A natural monopoly arises where", [
        "one firm owns all the shops in a town",
        "average cost falls over the whole range of market demand",
        "the government bans all competition by law",
        "the product is differentiated",
    ], 1, "Declining long-run average cost means one firm can supply the market more cheaply than two, as with water and electricity networks. Legal protection is a statutory monopoly, which is a different source of the same power."),

    q("A monopolist maximises profit by producing where marginal revenue equals marginal cost and then", [
        "charging a price equal to marginal cost",
        "reading the price off the demand curve at that output",
        "charging the highest price any buyer will pay",
        "setting price equal to average cost",
    ], 1, "Output is set by MR = MC, and the price comes from the demand curve at that output. Charging marginal cost would be the competitive rule and would give away the profit."),

    q("Oligopoly is best described as a market with", [
        "many sellers of identical goods",
        "a few large firms whose decisions affect one another",
        "one seller and many buyers",
        "one buyer and many sellers",
    ], 1, "Interdependence is the defining feature: each firm must guess what its rivals will do. That is why oligopoly models rely on assumptions about rival behaviour."),

    q("The kinked demand curve model of oligopoly explains", [
        "why prices are rigid once established",
        "why monopolies earn supernormal profit",
        "why competitive firms earn only normal profit",
        "why cartels always break down",
    ], 0, "Rivals are assumed to match a price cut but not a price rise, so demand is elastic above the ruling price and inelastic below it, and marginal revenue has a vertical gap. The firm has no incentive to move."),

    q("A successful cartel is likely to lead to", [
        "lower prices and larger output",
        "higher prices and restricted output",
        "normal profit for every member",
        "the entry of many small firms",
    ], 1, "Members behave like a single monopolist, so price rises and output is held down. The high profit is exactly what tempts members to cheat, which is why cartels are unstable."),

    q("Price leadership in an oligopoly occurs when", [
        "the largest firm sets a price and the others follow",
        "each firm independently sets its own price",
        "the government sets a maximum price",
        "consumers bargain for lower prices",
    ], 0, "A recognised leader — often the largest or lowest-cost firm — announces a price and the rest match it, which achieves coordination without a formal agreement."),

    q("First-degree price discrimination means charging each consumer", [
        "the same price for the same good",
        "the highest price that consumer is willing to pay",
        "a price equal to marginal cost",
        "a price below average cost",
    ], 1, "Every buyer pays their own reservation price, so the whole consumer surplus is extracted. Second-degree discrimination charges different prices for different quantities, and third-degree separates market segments."),

    q("Perfect competition is said to be allocatively efficient because", [
        "price equals marginal cost",
        "price equals average cost",
        "firms earn supernormal profit",
        "the product is differentiated",
    ], 0, "The price buyers pay equals the cost of the last unit produced, so exactly the right quantity is made. Price equal to average cost is productive efficiency and normal profit, not allocative efficiency."),

    q("Compared with a perfectly competitive market, a monopoly will", [
        "charge a higher price and produce a smaller output",
        "charge a lower price and produce a larger output",
        "charge a higher price and produce a larger output",
        "charge the same price and produce the same output",
    ], 0, "Restricting output is how the monopolist keeps the price up, which is exactly why the market is allocatively inefficient. Charging a higher price and producing more would require demand to cooperate, and it does not."),

    q("The threat of new entry can discipline a monopolist even when entry does not occur. Such a market is called", [
        "a contestable market",
        "a cartel",
        "a natural monopoly",
        "a monopsony",
    ], 0, "Contestability depends on the absence of sunk costs rather than on the number of firms. If a rival could enter cheaply, the incumbent must keep prices near cost to avoid inviting it."),
]

BANK = {1: BANK_1, 2: BANK_2, 3: BANK_3, 4: BANK_4, 5: BANK_5, 6: BANK_6}
