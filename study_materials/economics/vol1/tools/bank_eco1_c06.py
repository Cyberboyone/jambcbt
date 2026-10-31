"""Chapter 6 drill items — market structures."""


def q(s, o, i, sol):
    return (s, o, i, sol)


DRILL_6 = [
    q("A market structure is best described as", [
        "the building in which trading takes place",
        "the conditions under which firms compete in a market",
        "the total value of sales in an industry",
        "the number of consumers in a market",
    ], 1, "The competitive conditions — number of firms, product, entry, knowledge. The physical market is a different sense of the word."),

    q("Which of the following is NOT one of the tests used to classify a market structure?", [
        "the number of sellers",
        "the nature of the product",
        "the level of taxation",
        "the conditions of entry",
    ], 2, "Taxation is a policy variable, not a structural test. The fourth test the syllabus uses is knowledge."),

    q("Perfect competition requires that the product be", [
        "differentiated",
        "homogeneous",
        "unique with no close substitute",
        "expensive",
    ], 1, "Homogeneous, so that buyers have no reason to prefer one seller. Differentiation is the mark of monopolistic competition."),

    q("In perfect competition, the individual firm is a", [
        "price maker",
        "price taker",
        "price leader",
        "price discriminator",
    ], 1, "A price taker: its output is too small to affect the market price, so it accepts the price the market sets."),

    q("The demand curve facing a perfectly competitive firm is", [
        "downward-sloping",
        "horizontal",
        "vertical",
        "upward-sloping",
    ], 1, "Horizontal at the market price, and therefore also its AR and MR curve."),

    q("For a firm in perfect competition, price equals", [
        "average revenue only",
        "marginal revenue only",
        "both average revenue and marginal revenue",
        "marginal cost at every level of output",
    ], 2, "P = AR = MR, because every unit is sold at the same price. MC equals price only at the chosen output."),

    q("In the long run, a perfectly competitive firm earns", [
        "supernormal profit",
        "normal profit only",
        "a persistent loss",
        "revenue equal to its fixed cost",
    ], 1, "Normal profit, because free entry competes any supernormal profit away and exit restores a loss-making industry."),

    q("Normal profit is best described as", [
        "zero profit",
        "the minimum return needed to keep the firm in the industry",
        "profit above the opportunity cost of capital",
        "the profit earned by a monopolist",
    ], 1, "The minimum return that keeps the entrepreneur in this industry; the economist counts it as a cost, which is why it is not zero."),

    q("Supernormal profit is profit", [
        "above normal profit",
        "below normal profit",
        "equal to normal profit",
        "earned only in perfect competition",
    ], 0, "Above the normal return. It is what attracts new firms into an industry with free entry, and what blocked entry preserves."),

    q("Which of the following markets is closest to perfect competition?", [
        "the market for mobile telephone services",
        "a market for a homogeneous farm produce with many small sellers",
        "the market for electricity transmission",
        "the market for passenger aircraft",
    ], 1, "Many sellers and a homogeneous product — the textbook case. The other three each have few sellers, high entry costs or a unique product."),

    q("Monopolistic competition is characterised by", [
        "many sellers and a differentiated product",
        "one seller and a unique product",
        "few sellers and an identical product",
        "two sellers and blocked entry",
    ], 0, "Many sellers with product differentiation and free entry — the structure of most retail markets."),

    q("The main difference between perfect competition and monopolistic competition is", [
        "the number of sellers",
        "whether the product is homogeneous or differentiated",
        "whether profit can be earned",
        "whether the firm has a cost curve",
    ], 1, "The product. Both have many sellers and free entry, so the difference that matters is differentiation."),

    q("In the long run, a firm in monopolistic competition earns", [
        "supernormal profit",
        "normal profit only",
        "a loss",
        "profit equal to its advertising budget",
    ], 1, "Normal profit, because free entry competes any temporary supernormal profit away — the same mechanism as in perfect competition."),

    q("A monopoly exists when", [
        "a firm has a large share of the market",
        "there is a single seller of a product with no close substitute and entry is blocked",
        "prices are fixed by the government",
        "two firms agree on a price",
    ], 1, "One seller, no close substitute and blocked entry. A large market share is not enough if rivals can enter."),

    q("The demand curve facing a monopolist is", [
        "horizontal",
        "the downward-sloping market demand curve",
        "vertical",
        "the same as its marginal cost curve",
    ], 1, "The monopolist is the market, so it faces the market demand curve, which slopes downward."),

    q("For a monopolist, marginal revenue is", [
        "equal to price",
        "above price",
        "below price",
        "zero at every output",
    ], 2, "Below price, because selling an extra unit means lowering the price on all units sold."),

    q("A monopolist maximises profit by producing where", [
        "price equals marginal cost",
        "marginal revenue equals marginal cost",
        "average revenue equals average cost",
        "total revenue is at its maximum",
    ], 1, "MR = MC. Price is then read off the demand curve, which is why the price exceeds marginal cost."),

    q("A monopolist facing demand P = 100 − 2Q and marginal cost of ₦20 will produce", [
        "20 units",
        "25 units",
        "40 units",
        "50 units",
    ], 0, "MR = 100 − 4Q, so 100 − 4Q = 20 gives Q = 20. The ₦25 figure is where price would equal marginal cost."),

    q("Using the same demand curve, the monopolist's price is", [
        "₦20",
        "₦40",
        "₦60",
        "₦100",
    ], 2, "At Q = 20, P = 100 − 40 = ₦60. Reading the price off the marginal cost line gives the competitive answer, not the monopoly one."),

    q("Which of the following is a source of monopoly power?", [
        "many sellers in the market",
        "a patent granted by the state",
        "a homogeneous product",
        "free entry into the industry",
    ], 1, "A patent is a legal barrier to entry, and barriers are what make monopoly possible."),

    q("A natural monopoly arises when", [
        "one firm can supply the whole market at a lower cost than two firms could",
        "the government creates the firm by law",
        "the product is homogeneous",
        "the firm is very small",
    ], 0, "Economies of scale are so large that a single supplier is the cheapest arrangement — electricity transmission and water mains are the examples."),

    q("Price discrimination requires all of the following EXCEPT", [
        "some degree of monopoly power",
        "separate markets",
        "no resale between the markets",
        "identical elasticities of demand in both markets",
    ], 3, "Identical elasticities would remove the gain from discriminating. The profit comes from charging more where demand is less elastic."),

    q("An example of price discrimination is", [
        "charging the same price to every buyer",
        "charging students less than other adults for the same ticket",
        "raising the price when demand rises",
        "a firm selling at the market price",
    ], 1, "Different prices to separable groups for the same good. Raising a price when demand rises is ordinary market pricing, not discrimination."),

    q("An oligopoly is a market with", [
        "one seller",
        "a few large sellers who are interdependent",
        "many small sellers of identical goods",
        "no barriers to entry",
    ], 1, "A few interdependent firms. Interdependence is the defining feature: each firm's decision changes what the others must do."),

    q("The kinked demand curve is used to explain", [
        "price rigidity in oligopoly",
        "the shut-down point",
        "normal profit in perfect competition",
        "economies of scale in monopoly",
    ], 0, "Price rigidity: rivals are expected to match price cuts but not price rises, so the firm's demand curve bends at the current price."),

    q("A cartel is", [
        "a group of firms agreeing to fix prices or share a market",
        "a firm that sells to many markets",
        "the demand curve of a monopolist",
        "a government board that sets prices",
    ], 0, "Collusion among firms. It is treated as a restriction of competition and is illegal under competition law in Nigeria and elsewhere."),

    q("Compared with perfect competition, a monopoly will", [
        "produce more and charge less",
        "produce less and charge more",
        "produce the same and charge the same",
        "produce more and charge more",
    ], 1, "Less output at a higher price, because the monopolist restricts output to raise the price above marginal cost."),

    q("Consumer surplus is", [
        "the difference between what consumers are willing to pay and what they actually pay",
        "the total amount consumers spend",
        "the profit earned by producers",
        "the tax paid on a good",
    ], 0, "Willingness to pay minus the price paid. Monopoly reduces it by raising the price and pricing some buyers out altogether."),

    q("Deadweight loss under monopoly refers to", [
        "the monopolist's profit",
        "the consumer surplus and output lost because price exceeds marginal cost",
        "the fixed cost of production",
        "the tax paid by the monopolist",
    ], 1, "The welfare lost when output is restricted below the competitive level: some buyers who would pay more than the cost of production are excluded."),

    q("A market with four firms, high entry costs and products that differ slightly is best described as", [
        "perfect competition",
        "monopolistic competition",
        "oligopoly",
        "monopoly",
    ], 2, "Few firms and high entry costs point to oligopoly, even though the products are differentiated."),

    q("In which market structure is advertising likely to be most important?", [
        "perfect competition",
        "monopolistic competition and oligopoly",
        "a market with a homogeneous product",
        "a market with one seller of a unique product",
    ], 1, "Where products differ or where a few firms compete for share. A perfectly competitive firm selling an identical product has nothing to advertise."),

    q("A firm in a perfectly competitive market that raises its price above the market price will", [
        "sell slightly less",
        "sell nothing at all",
        "earn more revenue",
        "attract more customers",
    ], 1, "Nothing: buyers can purchase all they want at the market price from other sellers, and the product is identical."),

    q("Which statement about a monopoly is correct?", [
        "a monopolist can charge any price it likes",
        "a monopolist is constrained by the demand curve even though entry is blocked",
        "a monopolist always makes a profit",
        "a monopolist produces where price equals marginal cost",
    ], 1, "The demand curve still constrains it: raise the price too far and quantity demanded falls. Blocked entry protects its position but not its price."),

    q("An example of a barrier to entry is", [
        "a large number of existing firms",
        "a licence required by law to operate",
        "a homogeneous product",
        "perfect information",
    ], 1, "Licensing restricts entry by law. The other three either describe competition or make entry easier."),

    q("Monopolistic competition differs from monopoly mainly in that", [
        "there are many sellers and entry is free",
        "the product is homogeneous",
        "price equals marginal cost",
        "there is no advertising",
    ], 0, "Many sellers and free entry, which competes supernormal profit away in the long run — the opposite of monopoly."),

    q("In an oligopoly, firms are described as interdependent because", [
        "they all sell identical products",
        "each firm's decisions affect the others and invite a response",
        "entry is free",
        "there is only one firm",
    ], 1, "Interdependence: a price change by one firm changes the demand facing the others, so each must anticipate the rest."),

    q("Under perfect competition, the long-run equilibrium condition is", [
        "price equals minimum average cost",
        "price equals maximum average cost",
        "price exceeds marginal cost",
        "marginal revenue is zero",
    ], 0, "P = minimum AC, which is the same as saying that profit is normal and no firm can do better by entering or leaving."),

    q("Which market structure is associated with the greatest consumer surplus?", [
        "monopoly",
        "oligopoly",
        "perfect competition",
        "monopolistic competition",
    ], 2, "Perfect competition, where price is driven to marginal cost and output is at its highest."),

    q("A firm in monopolistic competition competes mainly through", [
        "price alone",
        "product differentiation and advertising",
        "restricting entry",
        "government licences",
    ], 1, "Differentiation, quality and branding, because price competition is limited by the fact that each firm faces only a small part of the market."),

    q("If a monopoly is broken up into many competing firms, the likely result is", [
        "higher price and lower output",
        "lower price and higher output",
        "no change in price or output",
        "higher profit for each firm",
    ], 1, "Competition pushes price towards marginal cost and output towards the competitive level, which is the efficiency gain argued for in competition policy."),
]
