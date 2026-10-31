"""Chapter 5 drill items — production and cost."""


def q(s, o, i, sol):
    return (s, o, i, sol)


DRILL_5 = [
    q("The short run in production is a period in which", [
        "all factors of production can be varied",
        "at least one factor of production is fixed",
        "no factor of production can be varied",
        "the firm makes no profit",
    ], 1, "At least one factor is fixed. The long run is the period in which every factor can change — it is defined by flexibility, not by a number of months."),

    q("In the short run, the factor usually treated as fixed is", [
        "labour",
        "raw materials",
        "plant and machinery",
        "electricity",
    ], 2, "Capital, in the form of plant and machinery. Labour is the variable factor in almost every textbook table."),

    q("Total product is", [
        "output per unit of the variable factor",
        "the total output produced from a given quantity of the variable factor",
        "the extra output from one more worker",
        "output divided by the number of firms",
    ], 1, "Total output. The first option is average product and the third is marginal product."),

    q("Average product is calculated as", [
        "total product divided by the quantity of the variable factor",
        "the change in total product",
        "total product multiplied by the variable factor",
        "total revenue divided by output",
    ], 0, "TP ÷ quantity of the variable factor. The last option is average revenue, a different ratio altogether."),

    q("Marginal product is", [
        "total product divided by the number of workers",
        "the change in total product from employing one more unit of the variable factor",
        "the output of the most productive worker",
        "the total product of the last firm to enter",
    ], 1, "The change in the total. Marginal always means *the change in*, and here it is the change in output, not in cost."),

    q("A firm's total product with 1, 2, 3 and 4 workers is 8, 20, 30 and 36 units. The marginal product of the third worker is", [
        "10 units",
        "12 units",
        "6 units",
        "30 units",
    ], 0, "30 − 20 = 10. The 12 is the second worker's marginal product, and 30 is the total product of three workers."),

    q("Using the same figures, the average product of four workers is", [
        "9 units",
        "6 units",
        "36 units",
        "8 units",
    ], 0, "36 ÷ 4 = 9. The 6 is the fourth worker's marginal product, which is a different figure."),

    q("The law of diminishing returns states that, as more of a variable factor is added to a fixed factor,", [
        "total output eventually falls",
        "the marginal product eventually falls",
        "average product falls from the first unit",
        "costs fall",
    ], 1, "Marginal product eventually falls. Total output can keep rising for a long time afterwards, which is why the first option is wrong."),

    q("Diminishing returns set in because", [
        "workers become lazy",
        "the fixed factor is being shared among more variable units",
        "technology gets worse",
        "prices fall",
    ], 1, "The ratio changes: one machine shared among more workers means each additional worker adds less. The law describes a ratio, not a worker's character."),

    q("Stage two of production is the rational stage because", [
        "marginal product is rising",
        "marginal product is positive but below average product",
        "marginal product is negative",
        "total product is falling",
    ], 1, "MP positive but below AP, with AP falling and TP still rising. Stage three is negative MP and falling TP, which no firm chooses."),

    q("Total product is at its maximum when marginal product is", [
        "at its maximum",
        "zero",
        "negative",
        "equal to average product",
    ], 1, "Zero. A positive marginal product adds to the total and a negative one subtracts, so the peak is exactly where MP passes through zero."),

    q("Marginal product cuts average product at", [
        "average product's maximum",
        "average product's minimum",
        "the origin",
        "total product's maximum",
    ], 0, "AP's maximum. While MP is above AP the average rises, and while it is below the average falls, so the crossing is the turning point."),

    q("Total fixed cost is", [
        "zero when output is zero",
        "constant at every level of output, including zero",
        "the same as total variable cost",
        "the cost of the last unit produced",
    ], 1, "Constant, and paid even at zero output. Variable cost is the one that is zero when output is zero."),

    q("Total cost equals", [
        "total fixed cost minus total variable cost",
        "total fixed cost plus total variable cost",
        "average cost multiplied by marginal cost",
        "total revenue minus profit",
    ], 1, "TFC + TVC. The last option is a rearrangement of the profit identity, not a definition of cost."),

    q("A firm has total fixed cost of ₦120. Its total cost is ₦220 at 2 units and ₦300 at 3 units. Its marginal cost at the third unit is", [
        "₦80",
        "₦100",
        "₦60",
        "₦40",
    ], 0, "300 − 220 = ₦80. The ₦60 is the marginal cost of the second unit, and ₦100 is average variable cost at two units."),

    q("Using the same figures, average total cost at 3 units is", [
        "₦80",
        "₦90",
        "₦100",
        "₦120",
    ], 2, "300 ÷ 3 = ₦100. Average cost always divides total cost by output, not variable cost."),

    q("Average fixed cost", [
        "rises continuously as output rises",
        "falls continuously as output rises",
        "is U-shaped",
        "is equal to marginal cost",
    ], 1, "It falls continuously, because a fixed sum is divided by a growing output. It is the only one of the cost curves that never turns upward."),

    q("Average variable cost is", [
        "total variable cost divided by output",
        "total cost divided by output",
        "the change in total cost",
        "fixed cost divided by output",
    ], 0, "TVC ÷ Q. The second is average total cost and the fourth is average fixed cost."),

    q("The relationship between average cost and average variable cost is that", [
        "average cost equals average variable cost at every output",
        "average cost is average variable cost plus average fixed cost",
        "average variable cost is always above average cost",
        "average cost is always falling",
    ], 1, "AC = AVC + AFC, so AC is always above AVC by the amount of AFC, and the gap narrows as output rises."),

    q("Marginal cost cuts average cost", [
        "at average cost's minimum point",
        "at average cost's maximum point",
        "where average cost is zero",
        "nowhere",
    ], 0, "At the minimum. While MC is below AC the average falls, and while it is above the average rises, so the crossing is the minimum."),

    q("If marginal cost is below average cost, then average cost is", [
        "rising",
        "falling",
        "constant",
        "at its minimum",
    ], 1, "Falling: an addition below the average pulls the average down. The reverse is true when MC is above AC."),

    q("Total revenue is", [
        "price multiplied by quantity sold",
        "price divided by quantity",
        "the change in quantity",
        "total cost plus profit",
    ], 0, "P × Q. Total cost plus profit is an identity for revenue, not a definition, and it cannot be calculated without the profit."),

    q("Under perfect competition, a firm's total revenue curve is", [
        "a straight line through the origin whose slope is the price",
        "a curve that falls as output rises",
        "a horizontal line at the level of the price",
        "a U-shaped curve",
    ], 0, "With the price fixed, TR = P × Q, so revenue rises in a straight line from the origin. A falling revenue curve belongs to a firm that must cut its price to sell more."),

    q("For a firm facing a downward-sloping demand curve, marginal revenue is", [
        "equal to price",
        "above price",
        "below price",
        "zero at every output",
    ], 2, "Below price, because selling one more unit requires cutting the price on all units, so revenue rises by less than the price of the extra unit."),

    q("Profit is maximised where", [
        "marginal revenue equals marginal cost",
        "average revenue equals average cost",
        "total revenue is at its maximum",
        "price equals average cost",
    ], 0, "MR = MC. AR = AC is the break-even condition and maximising revenue ignores cost altogether."),

    q("A firm sells 200 units at ₦60 each and its average cost is ₦45. Its total profit is", [
        "₦15",
        "₦3,000",
        "₦9,000",
        "₦12,000",
    ], 1, "Profit per unit is ₦15 and 15 × 200 = ₦3,000. The ₦12,000 is total revenue, and ₦9,000 is total cost."),

    q("A firm's total cost is ₦400 + ₦50Q and it sells at ₦100 per unit. Its break-even output is", [
        "4 units",
        "8 units",
        "10 units",
        "20 units",
    ], 1, "100Q = 400 + 50Q, so 50Q = 400 and Q = 8. The 4 comes from dividing the fixed cost by the price alone."),

    q("At the break-even output,", [
        "the firm makes supernormal profit",
        "total revenue equals total cost",
        "marginal cost is zero",
        "average cost is zero",
    ], 1, "Revenue equals cost, so profit is zero — the firm earns only normal profit, which is the minimum needed to stay in business."),

    q("A firm should shut down in the short run when price falls below", [
        "average total cost",
        "marginal cost",
        "minimum average variable cost",
        "average fixed cost",
    ], 2, "Minimum AVC. Below it the firm cannot cover its variable cost, so every unit produced adds to the loss."),

    q("A firm whose price lies between average variable cost and average total cost should", [
        "shut down immediately",
        "continue producing in the short run",
        "raise its price",
        "expand output indefinitely",
    ], 1, "Continue: the firm covers its variable cost and part of its fixed cost, so it loses less by producing than by stopping."),

    q("In the long run, a firm", [
        "has at least one fixed factor",
        "can vary all its factors of production",
        "cannot change its plant size",
        "always earns supernormal profit",
    ], 1, "All factors can vary. The long run is the planning horizon in which the scale of the firm itself can be chosen."),

    q("Economies of scale occur when", [
        "long-run average cost falls as output rises",
        "long-run average cost rises as output rises",
        "short-run marginal cost falls",
        "the firm's fixed cost rises",
    ], 0, "Falling long-run average cost as scale increases — bulk buying, specialisation, better machinery, cheaper finance."),

    q("Diseconomies of scale occur when", [
        "long-run average cost falls as output rises",
        "long-run average cost rises as output rises",
        "fixed cost falls",
        "marginal cost becomes negative",
    ], 1, "Rising long-run average cost: management becomes unwieldy, coordination costs rise, and the firm becomes too large to respond quickly."),

    q("The optimum scale of a firm is the output at which", [
        "long-run average cost is at its minimum",
        "total cost is at its minimum",
        "marginal cost is zero",
        "total revenue is at its maximum",
    ], 0, "The minimum of the long-run average cost curve, where economies of scale are exhausted and diseconomies have not yet begun."),

    q("A firm's fixed cost is ₦120 and its total variable cost at 4 units is ₦280. Its total cost at 4 units is", [
        "₦160",
        "₦280",
        "₦400",
        "₦520",
    ], 2, "120 + 280 = ₦400. The ₦160 is the fixed cost alone and ₦280 the variable cost alone."),

    q("Using the same figures, average total cost at 4 units is", [
        "₦70",
        "₦100",
        "₦120",
        "₦30",
    ], 1, "400 ÷ 4 = ₦100. The ₦70 is average variable cost (280 ÷ 4) and ₦30 is average fixed cost (120 ÷ 4)."),

    q("Marginal cost is significant to the firm because it", [
        "is the cost of producing the last unit and decides whether that unit is worth producing",
        "is always the largest of the cost figures",
        "equals average cost at every output",
        "includes the fixed cost of the plant",
    ], 0, "It is the cost of one more unit, which is exactly what a firm compares with the revenue from that unit when choosing output."),

    q("The supply curve of a perfectly competitive firm in the short run is", [
        "its average cost curve",
        "the part of its marginal cost curve above minimum average variable cost",
        "its total cost curve",
        "a horizontal line at the market price",
    ], 1, "MC above minimum AVC: below that point the firm shuts down and supplies nothing, so only the upper part of the curve is its supply."),

    q("A firm's total cost at 5 units is ₦520 and its total fixed cost is ₦120. Its total variable cost at 5 units is", [
        "₦120",
        "₦400",
        "₦520",
        "₦640",
    ], 1, "TC − TFC = 520 − 120 = ₦400. Adding the two instead of subtracting gives the ₦640 that the last option offers."),

    q("If a firm's marginal cost is rising and equal to its marginal revenue at 30 units, the firm should produce", [
        "less than 30 units",
        "30 units",
        "more than 30 units",
        "nothing at all",
    ], 1, "Thirty units: at MR = MC with MC rising, every unit beyond 30 costs more than it earns and every unit short of 30 could still earn a profit."),
]
