"""Chapter 1 drill items — the economic problem."""


def q(s, o, i, sol):
    return (s, o, i, sol)


DRILL_1 = [
    q("Economics is best defined as the study of", [
        "how money is made and spent by governments",
        "how scarce resources are allocated among competing wants",
        "the laws that govern international trade",
        "how businesses keep their accounts",
    ], 1, "Scarcity and allocation — the definition turns on scarce resources and competing wants, not on money, trade or bookkeeping."),

    q("The fundamental economic problem arises because", [
        "resources are limited while wants are unlimited",
        "wants are limited while resources are unlimited",
        "some people are richer than others",
        "prices keep rising",
    ], 0, "Unlimited wants against limited resources. The reverse pairing, equal abundance of both, is the answer that reads quickly and is wrong."),

    q("The three basic questions every economy must answer are", [
        "what, how and for whom to produce",
        "when, where and how to produce",
        "why, when and for whom to produce",
        "what, how much and at what price",
    ], 0, "What, how and for whom — the allocation questions. Price is the answer in a market economy, not one of the questions."),

    q("Opportunity cost is the", [
        "money paid for the good chosen",
        "value of the next best alternative forgone",
        "total value of every alternative available",
        "price of the good in a free market",
    ], 1, "The next best alternative forgone. Money paid is the money cost, and the sum of every alternative is a figure nobody could give up."),

    q("A student who leaves a job paying ₦3,000 an hour to attend a four-hour lecture incurs an opportunity cost of", [
        "₦750",
        "₦3,000",
        "₦12,000",
        "zero, because a lecture is free",
    ], 2, "4 × 3,000 = ₦12,000 in wages forgone. ₦3,000 is one hour's pay, and zero confuses no cash payment with no cost."),

    q("A free good is one that", [
        "is given away by the government",
        "is so abundant that it commands no price",
        "is cheap because it is produced in large quantities",
        "is available only to the poor",
    ], 1, "Abundance, not charity. A cheap good is still an economic good because it is scarce relative to demand."),

    q("Scarcity in economics refers to", [
        "a temporary shortage of a particular commodity",
        "the gap between unlimited wants and limited resources",
        "the poverty of a section of the population",
        "the failure of a market to clear",
    ], 1, "The permanent gap between wants and resources. A shortage is a market condition; scarcity is the reason markets exist."),

    q("Which of the following is an economic good?", [
        "sunlight in an open field",
        "air in the countryside",
        "a bag of rice in a market",
        "the wind over the sea",
    ], 2, "Rice is scarce relative to demand and carries a price. The other three are free goods in ordinary circumstances."),

    q("The production possibility curve shows", [
        "the maximum combinations of two goods an economy can produce with given resources",
        "the quantity of a good consumers will buy at each price",
        "the cost of producing one more unit of a good",
        "the relationship between income and consumption",
    ], 0, "The maximum attainable combinations. Each distractor describes another curve: demand, marginal cost and the consumption function."),

    q("A point on the production possibility curve indicates", [
        "unemployment of resources",
        "full and efficient use of resources",
        "an unattainable combination",
        "economic growth",
    ], 1, "On the curve is efficiency. Unemployment lies inside and an unattainable combination lies outside."),

    q("A point inside the production possibility curve indicates", [
        "efficiency in production",
        "unemployment or inefficient use of resources",
        "an unattainable combination",
        "a rise in technology",
    ], 1, "Inside the curve the economy could produce more of either good without giving anything up, which is the signature of idle resources."),

    q("A point outside the production possibility curve", [
        "is attainable in the short run",
        "is attainable only if the curve shifts outward",
        "shows unemployment",
        "shows efficiency",
    ], 1, "Outside is unattainable with present resources and technology; growth or better technology moves the curve out and makes it reachable."),

    q("The production possibility curve is bowed outward because", [
        "resources are equally suited to both goods",
        "resources are not equally suited to both goods, so opportunity cost rises",
        "technology is always improving",
        "consumers prefer one good to the other",
    ], 1, "Increasing opportunity cost. A straight line would mean every resource was equally good at producing both goods."),

    q("An outward shift of the production possibility curve may be caused by", [
        "a rise in unemployment",
        "an improvement in technology",
        "a fall in the price of one good",
        "a reallocation of resources between the two goods",
    ], 1, "Better technology raises capacity. Unemployment and reallocation move the point, not the curve, and a price change does not move either."),

    q("The four factors of production are", [
        "land, labour, capital and entrepreneur",
        "land, money, labour and machines",
        "capital, labour, technology and government",
        "land, capital, raw materials and profit",
    ], 0, "Land, labour, capital and enterprise. Money and raw materials are not factors: money buys capital, and raw materials are part of land."),

    q("The reward for land as a factor of production is", [
        "rent",
        "interest",
        "profit",
        "wages",
    ], 0, "Rent. Interest belongs to capital, profit to the entrepreneur and wages to labour."),

    q("The reward for the entrepreneur is", [
        "rent",
        "wages",
        "interest",
        "profit",
    ], 3, "Profit, and it is a residual: the entrepreneur is paid last and only if anything is left."),

    q("Interest is the reward for", [
        "land",
        "labour",
        "capital",
        "enterprise",
    ], 2, "Capital, the produced means of production. The four rewards are a fixed pairing and the exam tests the pairing directly."),

    q("Money is not regarded as capital because", [
        "it cannot be used to buy machinery",
        "it does not itself produce goods and services",
        "it is issued by the central bank",
        "it loses value over time",
    ], 1, "Capital produces; money only buys. The test is whether the thing can be used to make other goods."),

    q("Which of the following is a capital good?", [
        "a bag of cement bought for resale",
        "a sewing machine in a tailor's shop",
        "a loaf of bread",
        "a naira note in a drawer",
    ], 1, "The sewing machine is used to make other goods. The cement, bread and note are consumed, sold or held, not used to produce."),

    q("A market economy answers the three questions mainly through", [
        "central planning",
        "the price mechanism",
        "government decrees",
        "custom and tradition",
    ], 1, "The price mechanism. Planning and decrees describe a command economy, and custom describes a traditional one."),

    q("In a command economy, the allocation of resources is decided by", [
        "the interaction of demand and supply",
        "a central planning authority",
        "individual households",
        "the profit motive alone",
    ], 1, "A central authority decides what, how and for whom. Prices may exist, but they do not allocate."),

    q("Nigeria is best described as", [
        "a pure market economy",
        "a pure command economy",
        "a mixed economy",
        "a traditional economy",
    ], 2, "Mixed: private ownership and prices operate alongside state ownership, taxation and regulation."),

    q("A merit good is one that", [
        "is produced only by the state",
        "society believes should be consumed even if individuals would not choose it",
        "is consumed only by the rich",
        "carries no opportunity cost",
    ], 1, "Education and vaccination are the examples: the state subsidises or compels them because the social benefit exceeds the private choice."),

    q("A public good is characterised by", [
        "rivalry in consumption and easy exclusion",
        "non-rivalry in consumption and difficult exclusion",
        "being produced only by private firms",
        "a price that rises with demand",
    ], 1, "Street lighting and defence: one person's use does not reduce another's, and no one can easily be excluded — which is why the market under-provides them."),

    q("The opportunity cost of building a hospital is", [
        "the money spent on the building",
        "the school that could have been built instead",
        "the wages of the doctors",
        "the cost of the equipment",
    ], 1, "The next best use of the same resources. The money is a transfer, not a cost in the economist's sense."),

    q("Scarcity means that", [
        "goods are necessarily expensive",
        "a choice must be made between competing uses",
        "the poor cannot afford necessities",
        "production is always below capacity",
    ], 1, "Choice is the consequence of scarcity. Expensiveness and poverty are separate matters, and production below capacity is unemployment."),

    q("The study of economics is divided into", [
        "microeconomics and macroeconomics",
        "demand and supply",
        "production and consumption",
        "money and banking",
    ], 0, "Micro studies the individual unit and the market; macro studies the economy as a whole. The other three are topics inside the two."),

    q("Which of the following is a normative statement?", [
        "the price of rice rose by 20 per cent last year",
        "the government ought to subsidise fertiliser",
        "unemployment rose to 33 per cent",
        "inflation is measured by the consumer price index",
    ], 1, "Ought is the marker of a value judgement. The other three are positive statements that can be checked against data."),

    q("A positive economic statement is one that", [
        "can be tested against evidence",
        "expresses an opinion about what should happen",
        "is always true",
        "describes only growth in the economy",
    ], 0, "Positive statements describe and can be tested; normative statements judge and cannot."),

    q("If a country can produce either 100 tonnes of rice or 50 tonnes of beans, the opportunity cost of one tonne of beans is", [
        "half a tonne of rice",
        "one tonne of rice",
        "two tonnes of rice",
        "fifty tonnes of rice",
    ], 2, "100 ÷ 50 = 2 tonnes of rice per tonne of beans. The inverse, half a tonne, is the cost of one tonne of rice."),

    q("A movement along the production possibility curve represents", [
        "economic growth",
        "a reallocation of resources between the two goods",
        "an increase in unemployment",
        "an improvement in technology",
    ], 1, "Reallocation with capacity unchanged. Growth is the curve shifting out, and unemployment is a point moving inside."),

    q("The basic economic problem is common to", [
        "only developing countries",
        "only developed countries",
        "all societies, whatever their system",
        "only countries with a shortage of food",
    ], 2, "Scarcity is universal, which is why every system, rich or poor, must choose."),

    q("Which of the following best illustrates opportunity cost?", [
        "a firm paying ₦50,000 for raw materials",
        "a student using a free scholarship to study instead of earning a salary",
        "a trader paying tax to the government",
        "a household buying food with its income",
    ], 1, "Time spent studying is income forgone. The other three are money costs or transfers, not forgone alternatives."),

    q("The reward for labour is", [
        "profit",
        "rent",
        "wages or salary",
        "interest",
    ], 2, "Wages or salary. Labour is human effort, mental or physical, and its reward is the payment for that effort."),

    q("An economy that relies on custom and tradition to answer the three questions is", [
        "a market economy",
        "a command economy",
        "a traditional economy",
        "a mixed economy",
    ], 2, "Traditional. The answers are inherited rather than chosen, which is the fourth system some syllabuses name."),

    q("Production is said to be efficient when", [
        "it uses the cheapest possible labour",
        "no more of one good can be produced without producing less of another",
        "it produces only what consumers want",
        "it employs the whole labour force",
    ], 1, "Efficiency is the on-the-curve condition. Employing everybody is not the same as employing them well, which is why a point inside the curve can still have full employment."),

    q("The downward slope of the production possibility curve illustrates", [
        "the law of demand",
        "the existence of opportunity cost",
        "increasing returns to scale",
        "the law of diminishing marginal utility",
    ], 1, "To get more of one good you must give up some of the other, which is opportunity cost drawn as a slope."),

    q("Which statement about the factors of production is correct?", [
        "the entrepreneur supplies capital to the firm",
        "capital earns rent",
        "land earns rent and capital earns interest",
        "labour earns profit",
    ], 2, "Land rent and capital interest. The other three swap the rewards, which is the most common trap in the topic."),
    q("An economy that devotes more of its resources to capital goods and fewer to consumer goods will, in future,", [
        "have a larger production possibility curve",
        "have a smaller production possibility curve",
        "have no opportunity cost",
        "produce only consumer goods",
    ], 0, "Capital goods raise future capacity, which shifts the PPC outward. The sacrifice of current consumer goods is the opportunity cost of that growth."),
]