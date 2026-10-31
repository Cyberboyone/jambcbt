"""Chapter 4 drill items — elasticity."""


def q(s, o, i, sol):
    return (s, o, i, sol)


DRILL_4 = [
    q("Price elasticity of demand measures", [
        "the change in price caused by a change in quantity",
        "the responsiveness of quantity demanded to a change in price",
        "the responsiveness of supply to a change in price",
        "the total revenue earned at each price",
    ], 1, "Responsiveness of quantity demanded to price. The third option describes elasticity of supply and the fourth is total revenue."),

    q("The price of a good falls from ₦10 to ₦8 and quantity demanded rises from 40 to 60 units. The price elasticity of demand is", [
        "0.4",
        "0.5",
        "2.0",
        "2.5",
    ], 3, "Quantity rises 50% and price falls 20%, so 50 ÷ 20 = 2.5. Using the new price as the base gives 2.0, which is the trap."),

    q("A 10% rise in price reduces quantity demanded by 10%. Demand is", [
        "elastic",
        "inelastic",
        "unit elastic",
        "perfectly inelastic",
    ], 2, "Equal percentage changes give an elasticity of one, which is unit elastic and leaves total revenue unchanged."),

    q("If the price elasticity of demand for a good is 0.4, demand is", [
        "elastic",
        "inelastic",
        "unit elastic",
        "perfectly elastic",
    ], 1, "Below one is inelastic: quantity responds proportionately less than price."),

    q("Demand is said to be perfectly inelastic when the demand curve is", [
        "horizontal",
        "vertical",
        "downward-sloping at 45 degrees",
        "upward-sloping",
    ], 1, "A vertical curve means the same quantity is demanded whatever the price, so the elasticity is zero."),

    q("Demand is perfectly elastic when the demand curve is", [
        "vertical",
        "horizontal",
        "steeply downward-sloping",
        "upward-sloping",
    ], 1, "A horizontal curve means any rise in price destroys demand entirely, so the elasticity is infinite."),

    q("If demand for a good is elastic, a fall in its price will", [
        "reduce total revenue",
        "increase total revenue",
        "leave total revenue unchanged",
        "reduce quantity demanded",
    ], 1, "Quantity rises proportionately more than price falls, so the product of the two rises. This is the revenue test."),

    q("If demand for a good is inelastic, a rise in its price will", [
        "increase total revenue",
        "reduce total revenue",
        "leave total revenue unchanged",
        "increase quantity demanded",
    ], 0, "Quantity falls proportionately less than price rises, so total revenue rises — which is why taxes are heavy on inelastic goods."),

    q("Total revenue is at its maximum when price elasticity of demand is", [
        "zero",
        "one",
        "greater than one",
        "infinite",
    ], 1, "Unit elasticity. Revenue rises through the elastic range, peaks at one, and falls through the inelastic range."),

    q("A farmer whose harvest is unusually large may earn less because", [
        "the demand for the crop is inelastic",
        "the demand for the crop is elastic",
        "supply has fallen",
        "the government controls prices",
    ], 0, "Inelastic demand: the extra output depresses the price by more than the quantity rises, so revenue falls."),

    q("Which of the following goods is likely to have the most elastic demand?", [
        "salt",
        "petrol in the short run",
        "a particular brand of soft drink",
        "household electricity",
    ], 2, "A single brand has many close substitutes, which is the strongest determinant of elasticity."),

    q("The demand for a necessity is generally", [
        "elastic",
        "inelastic",
        "perfectly elastic",
        "unit elastic",
    ], 1, "Inelastic: few substitutes and a small share of income, so quantity barely responds to price."),

    q("Demand becomes more elastic in the long run because", [
        "prices are lower in the long run",
        "consumers can find substitutes and change their habits",
        "incomes always rise",
        "the government intervenes",
    ], 1, "Time allows substitution and adjustment, which is why the long-run elasticity exceeds the short-run one."),

    q("The elasticity of demand for a good that takes a large share of a consumer's income is likely to be", [
        "low",
        "high",
        "zero",
        "negative",
    ], 1, "High, or elastic: a large share of income makes a given percentage price rise impossible to ignore."),

    q("Price elasticity of supply measures the responsiveness of", [
        "quantity demanded to a change in price",
        "quantity supplied to a change in price",
        "supply to a change in income",
        "price to a change in cost",
    ], 1, "Quantity supplied to price. It is always positive, because the supply curve slopes upward."),

    q("The supply of land in a city is", [
        "perfectly elastic",
        "perfectly inelastic",
        "unit elastic",
        "elastic in the short run",
    ], 1, "The quantity is fixed, so the supply curve is vertical and the elasticity is zero."),

    q("Supply is likely to be more elastic when", [
        "the firm has spare capacity",
        "the period is very short",
        "the good is perishable",
        "there is only one seller",
    ], 0, "Spare capacity allows output to rise quickly, which is what elasticity of supply measures."),

    q("When consumers' income rises by 10% and quantity demanded rises by 5%, income elasticity is", [
        "0.5 and the good is a luxury",
        "0.5 and the good is a normal necessity",
        "2.0 and the good is a luxury",
        "2.0 and the good is inferior",
    ], 1, "5 ÷ 10 = 0.5, positive and below one, which is a normal necessity. Above one would be a luxury."),

    q("A negative income elasticity of demand indicates", [
        "a normal good",
        "a luxury good",
        "an inferior good",
        "a complementary good",
    ], 2, "Demand falls as income rises, which is the definition of an inferior good."),

    q("When the price of good A rises and the quantity demanded of good B rises, the cross elasticity is", [
        "positive and the goods are substitutes",
        "positive and the goods are complements",
        "negative and the goods are substitutes",
        "zero and the goods are unrelated",
    ], 0, "Both changes are in the same direction, so the elasticity is positive and the goods are substitutes."),

    q("A negative cross elasticity of demand between two goods means that they are", [
        "substitutes",
        "complements",
        "unrelated",
        "inferior goods",
    ], 1, "One good becoming dearer reduces demand for the other, which is what complements do — car and petrol."),

    q("A cross elasticity of zero between two goods means that they are", [
        "substitutes",
        "complements",
        "unrelated",
        "the same good",
    ], 2, "No relationship at all: a change in the price of one leaves demand for the other untouched."),

    q("If the cross elasticity between tea and coffee is +1.2, the goods are", [
        "complements, because the figure is positive",
        "substitutes, because the figure is positive",
        "complements, because the figure exceeds one",
        "unrelated",
    ], 1, "The sign, not the size, names the relationship: positive means substitutes."),

    q("The burden of a tax on a commodity falls mainly on", [
        "the side of the market that is more elastic",
        "the side of the market that is less elastic",
        "the government",
        "the side that hands the money over",
    ], 1, "The less elastic side cannot walk away, so it absorbs more of the tax whatever the formal arrangement."),

    q("A government wants to raise revenue with the least reduction in consumption. It should tax a good whose demand is", [
        "elastic",
        "inelastic",
        "unit elastic",
        "perfectly elastic",
    ], 1, "Inelastic demand: quantity barely falls, so the revenue is raised without much change in behaviour."),

    q("A 20% fall in price leads to a 30% rise in quantity demanded. Total revenue will", [
        "fall, because price fell",
        "rise, because demand is elastic",
        "remain unchanged",
        "rise, because demand is inelastic",
    ], 1, "30 ÷ 20 = 1.5, elastic, so the quantity effect dominates and revenue rises."),

    q("Elasticity along a straight-line downward-sloping demand curve", [
        "is constant at every point",
        "falls from infinity at the price axis to zero at the quantity axis",
        "rises as price falls",
        "is always equal to one",
    ], 1, "Along a straight line the elasticity varies: perfectly elastic where it meets the price axis and perfectly inelastic where it meets the quantity axis."),

    q("If the demand curve for a good is unit elastic throughout, a fall in price will", [
        "increase total revenue",
        "reduce total revenue",
        "leave total revenue unchanged",
        "reduce quantity demanded",
    ], 2, "The percentage fall in price is exactly matched by the percentage rise in quantity, so the product does not change."),

    q("Which pair of goods is most likely to have a negative cross elasticity of demand?", [
        "tea and coffee",
        "butter and margarine",
        "cars and petrol",
        "Coca-Cola and Pepsi",
    ], 2, "Cars and petrol are complements. The other three pairs are substitutes, whose cross elasticity is positive."),

    q("The elasticity of demand for a good with many close substitutes is", [
        "low",
        "high",
        "zero",
        "negative",
    ], 1, "High, because a buyer can switch when the price rises — substitutes are the strongest determinant of elasticity."),

    q("The short-run supply of agricultural produce is generally", [
        "more elastic than in the long run",
        "less elastic than in the long run",
        "perfectly elastic",
        "unrelated to price",
    ], 1, "The harvest is fixed once planted, so the short-run response is small; in the long run farmers can plant more."),

    q("A firm's total revenue rises when it cuts its price. This shows that demand for its product is", [
        "inelastic",
        "elastic",
        "unit elastic",
        "perfectly inelastic",
    ], 1, "Elastic: the quantity response outweighs the price cut, so revenue rises."),

    q("If a 5% rise in price reduces quantity demanded by 2%, the price elasticity of demand is", [
        "0.4",
        "2.5",
        "0.25",
        "5.0",
    ], 0, "2 ÷ 5 = 0.4, which is inelastic. Dividing the percentages the other way round gives 2.5, the elastic answer."),

    q("The demand for a good is elastic. A producer wishing to increase total revenue should", [
        "raise the price",
        "lower the price",
        "leave the price unchanged",
        "reduce output without changing price",
    ], 1, "Elastic demand means a price cut raises revenue, because the quantity effect is larger than the price effect."),

    q("Two goods have a cross elasticity of −0.8. A rise in the price of the first will cause the demand for the second to", [
        "rise",
        "fall",
        "stay the same",
        "become perfectly inelastic",
    ], 1, "A negative cross elasticity marks complements: one dearer means less of the other is bought."),

    q("Income elasticity of demand for a luxury good is", [
        "negative",
        "between zero and one",
        "greater than one",
        "exactly zero",
    ], 2, "Above one: demand rises proportionately more than income, which is what makes a good a luxury."),

    q("The main determinant of the price elasticity of supply is", [
        "the number of consumers",
        "time, together with the availability of spare capacity",
        "the income of buyers",
        "the price of substitutes",
    ], 1, "Time and capacity. The other options are determinants of demand, not of supply."),

    q("A good whose price rises by 10% and whose quantity demanded falls by 25% has an elasticity of", [
        "0.4",
        "2.5",
        "1.0",
        "25",
    ], 1, "25 ÷ 10 = 2.5, elastic. The 0.4 figure reverses the division, which is the most common arithmetic error in the topic."),

    q("Which statement about elasticity is correct?", [
        "elasticity is the same as the slope of the demand curve",
        "elasticity compares percentage changes, while slope compares absolute changes",
        "a steep curve is always elastic",
        "elasticity is measured in naira",
    ], 1, "Percentage changes against absolute changes. Elasticity is unit-free, which is why it can compare salt and cars."),
    q("If the price elasticity of supply of a good is 0.3, its supply is", [
        "elastic",
        "inelastic",
        "unit elastic",
        "perfectly elastic",
    ], 1, "Below one is inelastic supply: quantity supplied responds proportionately less than price, which is typical of a good that takes time to produce."),
]