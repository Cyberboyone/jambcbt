"""Chapter 3 drill items — supply and equilibrium."""


def q(s, o, i, sol):
    return (s, o, i, sol)


DRILL_3 = [
    q("The law of supply states that, other things being equal,", [
        "price and quantity supplied move in the same direction",
        "price and quantity supplied move in opposite directions",
        "supply rises when demand falls",
        "quantity supplied is fixed in the short run",
    ], 0, "Same direction: higher prices bring forth more output. The opposite relationship is the law of demand."),

    q("The supply curve of a commodity slopes upward because", [
        "consumers buy less at higher prices",
        "producers offer more at higher prices",
        "the government requires it",
        "costs fall as output rises",
    ], 1, "Producers respond to price. The first option is the demand law and the last is a separate claim about costs."),

    q("Supply in economics means the quantity of a good that sellers", [
        "have in stock at the end of the year",
        "are willing and able to offer at each price over a period",
        "have already sold",
        "would like to sell at any price at all",
    ], 1, "Willing and able, at each price, over a period — the same structure as the definition of demand."),

    q("A movement along a supply curve is caused by a change in", [
        "the cost of raw materials",
        "the price of the good itself",
        "technology",
        "the number of sellers",
    ], 1, "The good's own price. The other three are determinants, so they shift the curve."),

    q("A rise in the cost of raw materials will shift the supply curve", [
        "to the right",
        "to the left",
        "along itself",
        "not at all",
    ], 1, "Left: at every price the firm now offers less, because each unit costs more to make."),

    q("An improvement in technology will shift the supply curve", [
        "to the left",
        "to the right",
        "along itself",
        "to a vertical position",
    ], 1, "Right: lower unit cost means more can be supplied at every price."),

    q("A subsidy paid to producers will", [
        "shift supply to the left",
        "shift supply to the right",
        "shift demand to the right",
        "have no effect on supply",
    ], 1, "A subsidy is a negative cost, so supply shifts right and the price paid by buyers falls."),

    q("An increase in the number of sellers in a market will", [
        "shift supply to the right",
        "shift supply to the left",
        "shift demand to the right",
        "raise the equilibrium price",
    ], 0, "More sellers mean more offered at every price. The price effect is a fall, not a rise."),

    q("Equilibrium in a market occurs where", [
        "quantity demanded equals quantity supplied",
        "demand equals supply in price terms",
        "the price is fixed by government",
        "supply is at its maximum",
    ], 0, "The quantities are equal. *Demand equals supply* is loose language that gives the right answer only when it is read as a quantity statement."),

    q("If the market price is above the equilibrium price, there will be", [
        "a shortage, and the price will rise",
        "a surplus, and the price will fall",
        "a surplus, and the price will rise",
        "equilibrium",
    ], 1, "A surplus pushes the price down. Sellers with unsold stock cut prices until the excess is cleared."),

    q("If the market price is below the equilibrium price, there will be", [
        "a surplus, and the price will fall",
        "a shortage, and the price will rise",
        "a shortage, and the price will fall",
        "equilibrium",
    ], 1, "A shortage pulls the price up: buyers who cannot get the good bid against each other."),

    q("At ₦5, quantity demanded is 80 and quantity supplied is 40. The market is experiencing", [
        "equilibrium",
        "a surplus of 40",
        "a shortage of 40",
        "a shortage of 80",
    ], 2, "Demand exceeds supply by 40 at that price, which is a shortage and will push the price up."),

    q("At ₦12, quantity demanded is 30 and quantity supplied is 55. The market has", [
        "a shortage of 25",
        "a surplus of 25",
        "a surplus of 55",
        "equilibrium",
    ], 1, "Supply exceeds demand by 25, an unsold surplus that forces the price down."),

    q("Demand rises while supply is unchanged. The new equilibrium will have", [
        "a higher price and a larger quantity",
        "a higher price and a smaller quantity",
        "a lower price and a larger quantity",
        "a lower price and a smaller quantity",
    ], 0, "A rightward demand shift along a fixed supply curve gives a higher price and a larger quantity."),

    q("Supply rises while demand is unchanged. The new equilibrium will have", [
        "a higher price and a larger quantity",
        "a lower price and a larger quantity",
        "a lower price and a smaller quantity",
        "a higher price and a smaller quantity",
    ], 1, "A rightward supply shift lowers the price and increases the quantity traded."),

    q("Demand falls while supply is unchanged. The result is", [
        "a higher price and a larger quantity",
        "a lower price and a smaller quantity",
        "a lower price and a larger quantity",
        "no change in price",
    ], 1, "A leftward demand shift lowers both price and quantity."),

    q("Supply falls while demand is unchanged. The result is", [
        "a higher price and a smaller quantity",
        "a lower price and a smaller quantity",
        "a higher price and a larger quantity",
        "a lower price and a larger quantity",
    ], 0, "A leftward supply shift raises the price and reduces the quantity traded."),

    q("A maximum price fixed below the equilibrium price will cause", [
        "a surplus",
        "a shortage",
        "an increase in supply",
        "equilibrium to be restored",
    ], 1, "Below equilibrium, demand exceeds supply: the ceiling is binding and the shortage appears at once."),

    q("A minimum price fixed above the equilibrium price will cause", [
        "a shortage",
        "a surplus",
        "a fall in demand",
        "an increase in quantity demanded",
    ], 1, "Above equilibrium, supply exceeds demand and the surplus must be absorbed, often by the state."),

    q("A black market is most likely to develop when", [
        "a maximum price is fixed below equilibrium",
        "a minimum price is fixed above equilibrium",
        "the market is in equilibrium",
        "supply rises sharply",
    ], 0, "A binding ceiling creates a shortage, and buyers who cannot get the good legally will pay more than the ceiling illegally."),

    q("A tax imposed on a commodity will", [
        "shift the supply curve to the right",
        "shift the supply curve to the left",
        "shift the demand curve to the right",
        "leave both curves unchanged",
    ], 1, "A tax is a cost, so supply shifts left; the price buyers pay rises and the price sellers keep falls."),

    q("A government subsidy on a commodity will", [
        "raise the price paid by buyers",
        "lower the price paid by buyers and raise the quantity",
        "shift demand to the left",
        "have no effect on quantity",
    ], 1, "A subsidy shifts supply right, lowering the price and raising the quantity traded."),

    q("Price is described as a signal because it", [
        "is printed on the packaging",
        "conveys information that coordinates buyers and sellers",
        "is fixed by the government",
        "never changes",
    ], 1, "A price transmits information about scarcity, and the responses of buyers and sellers coordinate without any planner."),

    q("The equilibrium price is the price at which", [
        "sellers make the largest possible profit",
        "there is neither a surplus nor a shortage",
        "the government fixes the market",
        "demand is at its maximum",
    ], 1, "Neither surplus nor shortage, so there is no pressure on the price to move."),

    q("If both demand and supply increase, the equilibrium quantity will", [
        "fall",
        "rise",
        "remain unchanged",
        "be indeterminate",
    ], 1, "Both shifts push quantity up. Price, by contrast, could move either way, which is the question that follows."),

    q("If demand increases and supply decreases, the equilibrium price will", [
        "rise",
        "fall",
        "remain unchanged",
        "be indeterminate",
    ], 0, "Both changes push the price up, so the price is certain even though the quantity is not."),

    q("A price floor is effective only if it is set", [
        "below the equilibrium price",
        "above the equilibrium price",
        "at the equilibrium price",
        "by a foreign government",
    ], 1, "Above equilibrium, so that the market price cannot fall to its natural level. Set below, the floor never binds."),

    q("Which of the following would shift the supply curve of maize to the left?", [
        "a good harvest",
        "a drought",
        "a fall in the price of maize",
        "an increase in consumers' income",
    ], 1, "A drought reduces output at every price. A good harvest shifts supply right, a price fall is a movement, and income affects demand."),

    q("The supply of a good is likely to be more elastic in", [
        "the short run",
        "the long run",
        "a market with a fixed capacity",
        "a market with one seller",
    ], 1, "The long run allows capacity to be built and inputs reorganised, which is what makes supply responsive."),

    q("In a free market, a shortage of a good will lead to", [
        "a fall in its price",
        "a rise in its price",
        "a fall in demand",
        "a government subsidy",
    ], 1, "Buyers bid the price up, which both rations the existing supply and calls forth more of it."),

    q("An increase in demand accompanied by an equal increase in supply will leave", [
        "price unchanged and quantity higher",
        "price higher and quantity unchanged",
        "price unchanged and quantity unchanged",
        "price lower and quantity lower",
    ], 0, "The price effects cancel and the quantity effects reinforce, so quantity rises and price stays where it was."),

    q("Which of the following is NOT a determinant of supply?", [
        "the cost of inputs",
        "technology",
        "the price of the good itself",
        "the number of sellers",
    ], 2, "The good's own price moves the firm along the supply curve; it does not shift it. The other three are determinants."),

    q("The demand and supply functions are Qd = 100 − 2P and Qs = 40 + 2P. The equilibrium price is", [
        "₦15",
        "₦20",
        "₦25",
        "₦30",
    ], 0, "100 − 2P = 40 + 2P gives 60 = 4P, so P = ₦15 and Q = 70. Substituting back checks both equations."),

    q("Using the same functions, the equilibrium quantity is", [
        "40",
        "60",
        "70",
        "100",
    ], 2, "At P = ₦15, Qd = 100 − 30 = 70 and Qs = 40 + 30 = 70, so the equilibrium quantity is 70 units."),

    q("A surplus in a market is eliminated by", [
        "a rise in price",
        "a fall in price",
        "an increase in demand only",
        "government purchase of the surplus",
    ], 1, "Sellers cut the price to clear unsold stock, which raises quantity demanded and reduces quantity supplied until they match."),

    q("Rationing by price means that goods go to", [
        "those who need them most",
        "those who are willing and able to pay the price",
        "those who arrive first",
        "those chosen by the government",
    ], 1, "Ability and willingness to pay. The other three describe rationing by queue, by coupon or by need, each of which requires a non-price rule."),

    q("When a market is in equilibrium,", [
        "every buyer who wants the good gets it",
        "there is no tendency for the price to change",
        "sellers earn supernormal profit",
        "the government is satisfied",
    ], 1, "No pressure on the price. Buyers without the ability to pay are still excluded, which is why the first option is wrong."),

    q("The supply curve of a perishable good brought to market in a single day is likely to be", [
        "perfectly elastic",
        "perfectly inelastic",
        "downward-sloping",
        "unit elastic",
    ], 1, "The quantity is fixed once the goods arrive, so it is offered at whatever price it will fetch — a vertical supply curve."),

    q("An increase in the price of a substitute for good X will", [
        "shift the demand for X to the right",
        "shift the supply of X to the right",
        "move consumers along the demand curve for X",
        "reduce the demand for X",
    ], 0, "Buyers switch towards X, so demand for X rises at every price. The substitute's price is a determinant of X's demand."),
    q("Demand and supply both fall at the same time. What can be said with certainty?", [
        "the price will rise",
        "the price will fall",
        "the quantity will fall",
        "the quantity will rise",
    ], 2, "Quantity falls because both shifts push it down; price could move either way depending on which shift is larger."),
]