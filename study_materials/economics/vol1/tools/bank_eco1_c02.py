"""Chapter 2 drill items — demand and utility."""


def q(s, o, i, sol):
    return (s, o, i, sol)


DRILL_2 = [
    q("The law of demand states that, other things being equal,", [
        "price and quantity demanded move in the same direction",
        "price and quantity demanded move in opposite directions",
        "demand rises as income rises",
        "supply creates its own demand",
    ], 1, "Opposite directions. The other three are the law of supply, the income effect and Say's law."),

    q("Demand in economics means the quantity of a good that buyers", [
        "would like to have at any price",
        "are willing and able to buy at each price over a period",
        "actually bought last year",
        "can afford at the current price only",
    ], 1, "Willing and able, at each price, over a period. A wish without purchasing power is not demand."),

    q("A demand schedule is", [
        "a graph of demand against supply",
        "a table showing quantities demanded at different prices",
        "a list of buyers in a market",
        "a record of past purchases",
    ], 1, "A table of price and quantity demanded. The graph drawn from it is the demand curve."),

    q("At ₦10 the quantity demanded is 20 units; at ₦8 it is 30 units. The demand curve therefore", [
        "shifts to the right as price falls",
        "slopes downward",
        "slopes upward",
        "is vertical",
    ], 1, "Lower price, larger quantity: the curve slopes downward. Nothing has shifted, because only the price changed."),

    q("A movement along a demand curve is caused by a change in", [
        "consumers' income",
        "the price of the good itself",
        "the price of a substitute",
        "tastes and fashion",
    ], 1, "The good's own price moves the consumer along the curve. The other three shift the whole curve."),

    q("A shift of the demand curve to the right is called", [
        "a contraction of demand",
        "an increase in demand",
        "an expansion of demand",
        "a decrease in quantity demanded",
    ], 1, "An increase in demand — a larger quantity at every price. An expansion is a movement along the curve caused by a price fall."),

    q("Which of the following will shift the demand curve for a normal good to the left?", [
        "a rise in consumers' income",
        "a fall in consumers' income",
        "a fall in its price",
        "a rise in its price",
    ], 1, "Lower income reduces demand for a normal good. A price change, in either direction, is a movement along the curve."),

    q("If the price of coffee rises, the demand curve for tea is likely to", [
        "shift to the left",
        "shift to the right",
        "remain unchanged",
        "become vertical",
    ], 1, "Tea is a substitute, so dearer coffee sends buyers towards tea and its demand shifts right."),

    q("If the price of petrol rises, the demand curve for cars is likely to", [
        "shift to the right",
        "shift to the left",
        "remain unchanged",
        "slope upward",
    ], 1, "Cars and petrol are complements, so a dearer complement reduces the demand for the car at every price."),

    q("Two goods are complements if", [
        "an increase in the price of one raises the demand for the other",
        "they are used together, so an increase in the price of one reduces demand for the other",
        "they are produced by the same firm",
        "they have the same price",
    ], 1, "Used together. The first option defines substitutes, which is why the two definitions are so often swapped in the options."),

    q("An inferior good is one for which", [
        "demand falls as income rises",
        "demand rises as income rises",
        "demand does not respond to price",
        "the demand curve slopes upward",
    ], 0, "Demand falls as income rises. It is a statement about the relationship, not about the quality of the good."),

    q("An increase in population will", [
        "shift the demand curve for most goods to the right",
        "shift the supply curve to the right",
        "move consumers along the demand curve",
        "have no effect on demand",
    ], 0, "More buyers mean more demanded at every price. Population is a determinant, so the curve moves."),

    q("If buyers expect the price of rice to rise sharply next month, the demand for rice today will", [
        "fall",
        "rise",
        "stay the same",
        "become perfectly inelastic",
    ], 1, "Expectation of a future rise brings buying forward, shifting today's demand right."),

    q("The demand curve for a Giffen good", [
        "slopes downward like any other",
        "slopes upward over part of its range",
        "is horizontal",
        "is vertical",
    ], 1, "Upward over part of its range: a price rise can raise quantity demanded because the good absorbs so much of a poor household's budget."),

    q("Goods bought mainly because they are expensive are called", [
        "Giffen goods",
        "inferior goods",
        "goods of ostentation",
        "complementary goods",
    ], 2, "Veblen or ostentatious goods, where the price is part of the appeal. A Giffen good is bought more when it is dearer for a different reason."),

    q("Utility in economics means", [
        "the usefulness of a good to society",
        "the satisfaction derived from consuming a good",
        "the price a consumer is willing to pay",
        "the total value of goods consumed",
    ], 1, "Satisfaction, which is subjective. Usefulness to society is a different idea, and the paper sets it as the trap."),

    q("Total utility is at a maximum when marginal utility is", [
        "at its maximum",
        "positive",
        "zero",
        "negative",
    ], 2, "Zero. A positive marginal adds to the total and a negative one subtracts, so the turning point is the zero."),

    q("Marginal utility is", [
        "total utility divided by the number of units",
        "the change in total utility from consuming one more unit",
        "the satisfaction from the first unit only",
        "the same as average utility",
    ], 1, "The change in the total from one more unit. The average is the total divided by the number of units."),

    q("The law of diminishing marginal utility states that", [
        "total utility falls as consumption rises",
        "the satisfaction from each additional unit falls as more is consumed in a period",
        "consumers always prefer more to less",
        "utility cannot be measured",
    ], 1, "Each additional unit adds less. Total utility can still be rising while marginal utility falls."),

    q("A consumer's total utility from 1, 2 and 3 units is 8, 14 and 18. The marginal utility of the second unit is", [
        "14",
        "8",
        "6",
        "4",
    ], 2, "14 − 8 = 6. The 14 is total utility and the 8 is the marginal utility of the first unit."),

    q("If the marginal utility of a fourth unit is negative, total utility", [
        "is rising at an increasing rate",
        "is at its maximum",
        "falls when the fourth unit is consumed",
        "is zero",
    ], 2, "It falls. A negative marginal utility subtracts from the total, which is the definition of the third stage of consumption."),

    q("A consumer is in equilibrium when", [
        "total utility is at its maximum for one good",
        "marginal utility per naira is equal for every good bought",
        "marginal utility is zero for every good",
        "average utility is at its maximum",
    ], 1, "Equal marginal utility per naira, with the whole income spent. Equal *total* utility is not required and equal marginal utility alone is not enough when prices differ."),

    q("MU of X is 20 and its price is ₦4; MU of Y is 15 and its price is ₦5. The consumer should", [
        "buy more X and less Y",
        "buy more Y and less X",
        "keep the present combination",
        "buy more of both",
    ], 0, "X returns 5 utils per naira and Y returns 3, so spending should move towards X until the two ratios are equal."),

    q("The demand curve can be derived from utility analysis because a consumer buys an extra unit only when", [
        "the price equals the marginal utility of that unit measured in money",
        "the price equals the total utility of all units",
        "the good is a necessity",
        "the good has no substitutes",
    ], 0, "The consumer equates price with marginal utility in money terms, and since marginal utility falls, a lower price is needed for each extra unit."),

    q("If demand for a good increases while its supply is unchanged, the result is", [
        "a fall in price",
        "a rise in price",
        "no change in price",
        "a fall in quantity",
    ], 1, "A rightward shift of demand along an unchanged supply curve raises the equilibrium price."),

    q("Which of the following is NOT a determinant of demand?", [
        "consumers' income",
        "the price of the good itself",
        "the price of related goods",
        "population",
    ], 1, "The good's own price is not a determinant of demand; it determines the *quantity* demanded. The word NOT is the whole question."),

    q("An increase in the price of a good causes", [
        "a decrease in demand",
        "a decrease in quantity demanded",
        "an increase in demand",
        "a shift of the demand curve to the left",
    ], 1, "A decrease in quantity demanded — a movement along the curve. *Demand* is the whole curve and only a determinant shifts it."),

    q("A normal good is one for which", [
        "demand rises as income rises",
        "demand falls as income rises",
        "demand is unrelated to income",
        "the demand curve slopes upward",
    ], 0, "Positive income elasticity. The opposite relationship defines an inferior good."),

    q("The demand curve for salt is likely to be", [
        "elastic, because salt is widely used",
        "inelastic, because salt has few substitutes and takes a small share of income",
        "perfectly elastic",
        "upward-sloping",
    ], 1, "Inelastic. Few substitutes and a tiny share of the budget are the two strongest reasons for unresponsiveness."),

    q("If a 5% rise in the price of a good reduces quantity demanded by 10%, demand is", [
        "inelastic",
        "unit elastic",
        "elastic",
        "perfectly inelastic",
    ], 2, "10 ÷ 5 = 2, which is greater than one, so demand is elastic."),

    q("The market demand curve is obtained by", [
        "averaging the prices of all consumers",
        "adding the quantities demanded by all consumers at each price",
        "adding the incomes of all consumers",
        "multiplying price by quantity",
    ], 1, "Horizontal summation: at each price, add the quantities. Multiplying price by quantity gives total revenue."),

    q("A movement from a point inside the demand curve to a point on it, after a price fall, is called", [
        "an increase in demand",
        "an expansion of demand",
        "a decrease in demand",
        "a shift of demand",
    ], 1, "Expansion — a movement along the curve caused by a price fall. The curve itself has not moved."),

    q("Which of the following best explains the downward slope of the demand curve?", [
        "the law of diminishing returns",
        "the law of diminishing marginal utility, together with the substitution and income effects",
        "the law of supply",
        "increasing returns to scale",
    ], 1, "Diminishing marginal utility plus the substitution and income effects. Diminishing returns explains the supply curve, not demand."),

    q("If the price of a good falls and, at the same time, consumers' incomes rise, the quantity demanded will", [
        "certainly fall",
        "certainly rise, because both changes push it up",
        "be indeterminate",
        "remain unchanged",
    ], 1, "Both changes push quantity demanded up, so the direction is certain even if the size is not."),

    q("A demand function Q = 100 − 4P gives a quantity demanded of 60 when the price is", [
        "₦5",
        "₦10",
        "₦15",
        "₦40",
    ], 1, "60 = 100 − 4P, so 4P = 40 and P = ₦10. Substituting each option is the quickest check."),

    q("The difference between demand and effective demand is that effective demand", [
        "is backed by the ability to pay",
        "refers only to luxury goods",
        "is measured in units rather than naira",
        "exists only in a command economy",
    ], 0, "Purchasing power. A household that wants a good but cannot afford it creates no effective demand."),

    q("Utility analysis assumes that consumers", [
        "have unlimited income",
        "act rationally to maximise satisfaction within their budgets",
        "always buy the cheapest good",
        "cannot compare different goods",
    ], 1, "Rational maximisation subject to a budget. Assuming unlimited income would remove the budget constraint that makes the equilibrium condition necessary."),

    q("If a good is a necessity, its demand curve is likely to be", [
        "relatively steep",
        "relatively flat",
        "horizontal",
        "vertical",
    ], 0, "Steep, meaning inelastic: quantity barely changes when price changes. A vertical curve would be perfectly inelastic, which is an extreme."),

    q("A consumer spends ₦200 on two goods. If the price of one good rises, the budget line", [
        "shifts outward",
        "shifts inward",
        "pivots inward along the axis of the good whose price rose",
        "is unaffected",
    ], 2, "The same income now buys less of that good, so the intercept on its axis falls and the line pivots."),
    q("When the price of a good falls, consumers can afford to buy more of it because their real income has risen. This is called", [
        "the substitution effect",
        "the income effect",
        "the demonstration effect",
        "the law of diminishing returns",
    ], 1, "The income effect: the same money income now buys more. The substitution effect is the separate pull towards the good that has become relatively cheaper."),
]