#import "template.typ": *

#current-chapter.update("Chapter 6: Market Structures")

#pagebreak()

#chapter-opener(
  6,
  "Market Structures",
  subtitle: "The Four Tests, Perfect and Monopolistic Competition, Monopoly and Its Sources, Oligopoly and the Kinked Demand Curve, and What Each Structure Does to Price, Output and Efficiency",
  syllabus-ref: "Sec. A • Market Structures",
  utme-weight: "3 Qs a year on structure",
  running: "Market Structures",
)

#focus-radar(
  objectives: (
    "Test a market against the four assumptions and name the structure.",
    "Draw the price taker's horizontal demand curve and find its profit-maximising output.",
    "Explain how a monopolist chooses output and why its price is above marginal cost.",
    "Name the sources of monopoly power, and explain price discrimination.",
    "Say what each structure does to price, output and consumer surplus, and what a cartel is.",
  ),
  hotspots: (
    "“A firm in perfect competition faces a demand curve that is …” — horizontal. The trap is a downward-sloping curve, which belongs to every other structure.",
    "“The demand curve facing a monopolist is …” — the market demand curve, downward-sloping, with MR below it.",
    "“Which is a source of monopoly power?” — control of a raw material, patents, licences, economies of scale. An option that says *many sellers* is the reverse.",
    "“A kinked demand curve explains …” — price rigidity in oligopoly.",
    "“In the long run, a firm in perfect competition earns …” — normal profit only, because entry and exit compete it away.",
  ),
  trap-summary: "Three slips. (1) Giving a perfectly competitive firm a downward-sloping demand curve: it is a price taker, so its curve is horizontal at the market price. (2) Reading the monopolist's price off the marginal revenue curve — the output comes from MR = MC, but the price comes from the *demand* curve at that output. (3) Treating monopolistic competition as monopoly with a spelling mistake: it has many sellers and free entry, and it competes on product difference rather than on restriction.",
)

// ============================================================================
== 6.1 The Four Tests That Name a Market

A market structure is a description of the conditions under which firms compete. Four
tests sort every market you will be asked about.

#diagram-fig("diagrams/ch06_spectrum.svg",
  "The spectrum from many sellers to one. The four tests — number of sellers, product, entry and information — move together as you go from left to right.", width: 100%)

#rule-box("The four tests")[
  + *Number of sellers.* Very many, many, few, or one.
  + *Nature of the product.* Identical (homogeneous), differentiated, or unique with no close substitute.
  + *Conditions of entry.* Free entry and exit, or blocked.
  + *Knowledge.* Perfect information, or imperfect.
]

#concept-box("The two structures that are easy to confuse")[
  *Perfect competition* has many sellers of an *identical* product, free entry and perfect
  knowledge. *Monopolistic competition* has many sellers of a *differentiated* product, free
  entry and imperfect knowledge — the difference is the product, not the number.

  A market with ten thousand sellers of identical tomatoes is perfectly competitive; a market
  with ten thousand sellers of differently branded soap is monopolistically competitive.
]

#trap-box("“Few sellers” is oligopoly, not monopoly")[
  Monopoly means one seller and no close substitute. Oligopoly means a *few* sellers, each of
  whom must watch the others — a market with two airlines is an oligopoly even though each
  airline has considerable power. The tell is *interdependence*: in an oligopoly, one firm's
  price decision changes what the others must do.
]

// ============================================================================
== 6.2 Perfect Competition, and the Price Taker

In perfect competition the individual firm is so small relative to the market that it
cannot affect the price. It takes the market price as given, and that single fact
determines the shape of every curve it faces.

#diagram-fig("diagrams/ch06_perfect.svg",
  "The price taker's demand curve is horizontal at the market price, so price, average revenue and marginal revenue are the same line. Output is where MR equals MC.", width: 92%)

#rule-box("Perfect competition, in five lines")[
  + Many buyers and sellers, each too small to affect price.
  + A homogeneous product, so buyers have no reason to prefer one seller.
  + Free entry and exit, so profit attracts rivals and loss drives them out.
  + Perfect knowledge of prices and technology.
  + The firm's demand curve is horizontal: *P = AR = MR*, and the firm produces where *MR = MC*.
]

#concept-box("Why the long run is normal profit")[
  If firms in the industry are making supernormal profit, new firms enter — entry is free —
  supply shifts right, the price falls, and profit falls with it. If firms are making losses,
  some leave, supply shifts left, and the price recovers. The long-run equilibrium is therefore
  the point at which profit is exactly *normal*: enough to keep the firm in the industry, and
  not enough to attract another.

  Normal profit is not zero profit. It is the minimum return needed to keep the entrepreneur
  in this industry rather than the next one, and it is counted as a cost by the economist.
]

#worked-example(
  1,
  "The curve the firm faces",
  [A firm in a perfectly competitive market faces a demand curve that is

    A. downward-sloping and steep \
    B. downward-sloping and flat \
    C. horizontal at the market price \
    D. vertical at the firm's output],
  [
    *Step 1 — the defining feature.* The firm is a price taker: whatever quantity it sells, it sells at the market price, because its output is too small to move the market.

    *Step 2 — draw it.* A price that does not change as quantity changes is a horizontal line at the market price.

    *Step 3 — the alternatives.* A and B are the monopoly and monopolistic-competition cases; D would mean the firm can sell any quantity at one price only if it chose its quantity first, which is not what a price taker does.

    *Check.* Price taker equals horizontal demand equals *P = AR = MR*. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 6.3 Monopoly

A monopolist is the only seller of a product with no close substitute, and entry is
blocked. That single fact reverses the shape of the demand curve the firm faces: the firm
*is* the market, so its demand curve is the market's.

#diagram-fig("diagrams/ch06_monopoly.svg",
  "The monopolist produces where MR equals MC, then reads the price off the demand curve — which is why the price is above marginal cost.", width: 92%)

#rule-box("How a monopolist chooses price and output")[
  + Find the output where *MR = MC*.
  + Read the *price* off the demand curve at that output, not off the MR curve.
  + Because MR is below AR, the price exceeds marginal cost, and output is lower than it would be under competition.
]

#concept-box("Where monopoly power comes from")[
  + *Control of a raw material* — one firm owns the only deposit.
  + *Patents and copyright* — the law grants a temporary exclusive right.
  + *Licences and franchises* — the state permits only one operator.
  + *Economies of scale* — a natural monopoly, where one firm can supply the whole market more cheaply than two could.
  + *Control of outlets or of a strategic input* — the firm owns the only route to the buyer.
]

#concept-box("Price discrimination")[
  A monopolist with two separable groups of buyers and no way for one group to resell to the
  other can charge them different prices for the same good — full fares and student fares,
  peak and off-peak electricity, hardback and paperback.

  Three conditions are required: some monopoly power, separable markets, and no resale between
  them. Remove any one and the discrimination collapses, because the cheap buyer resells to the
  dear one.
]

#worked-example(
  2,
  "The output and the price",
  [A monopolist faces the demand curve P = 100 − 2Q and has marginal cost of ₦20 per unit. Its profit-maximising output is

    A. 20 units \
    B. 25 units \
    C. 40 units \
    D. 50 units],
  [
    *Step 1 — get marginal revenue.* For a linear demand curve P = a − bQ, MR = a − 2bQ, so MR = 100 − 4Q.

    *Step 2 — set MR equal to MC.* 100 − 4Q = 20, so 4Q = 80 and Q = 20 units.

    *Step 3 — the price, if it were asked.* Read it off demand: P = 100 − 2(20) = ₦60, which is well above the ₦20 marginal cost — the mark of monopoly power.

    *Check.* D is where MR would be zero (revenue-maximising), and B is where price would equal MC (the competitive output). Neither maximises profit. The answer is *A*.
  ],
  tier: "JAMB CHALLENGE",
)

#trap-box("Output at MR = MC, price at the demand curve")[
  The two-step procedure is where marks are lost: a candidate who reads ₦20 off the MC line as
  the price has answered a different question. The monopolist restricts output *in order to*
  charge a higher price, and the higher price exists only on the demand curve.
]

// ============================================================================
== 6.4 Oligopoly and the Kinked Demand Curve

An oligopoly is a market with a few large sellers, each of whom must take the others'
reactions into account. It is the structure with the most variety and the fewest certain
predictions.

#rule-box("Oligopoly in four lines")[
  + A few large firms, so each one's decision affects the others.
  + Interdependence: firms watch each other's prices, output and advertising.
  + Entry is difficult but not impossible — often because of scale, brand or capital.
  + Outcomes range from price war to collusion, which is why the theory is less tidy than the other three.
]

#concept-box("The kinked demand curve, and price rigidity")[
  Each firm believes that if it *raises* its price the others will not follow, so it loses
  many customers — demand is elastic above the current price. It also believes that if it
  *cuts* its price the others will match it, so it gains few customers — demand is inelastic
  below the current price.

  The result is a kink at the current price, a vertical gap in the marginal revenue curve at
  that output, and prices that do not move even when costs change a little. That stickiness is
  what the kinked demand curve is used to explain.
]

#trap-box("Collusion is not competition")[
  A cartel — firms agreeing to fix prices or share the market — behaves like a single
  monopolist and is illegal in most jurisdictions, including Nigeria, under competition law.
  A question that describes firms *agreeing* to charge one price is asking about collusion, not
  about the invisible hand.
]

// ============================================================================
== 6.5 The Comparison the Examiner Wants

#diagram-fig("diagrams/ch06_compare.svg",
  "The four structures against six tests. Learn the six rows and every identification question becomes a lookup.", width: 100%)

#rule-box("What each structure does to price and output")[
  + *Perfect competition:* price equals marginal cost, output is at its highest, and the firm earns normal profit in the long run.
  + *Monopolistic competition:* price exceeds marginal cost by a small margin, output is slightly lower, and the firm earns normal profit in the long run because entry is free.
  + *Oligopoly:* price is above marginal cost, output is lower than competition, and long-run supernormal profit is possible because entry is difficult.
  + *Monopoly:* price is furthest above marginal cost, output is lowest, and long-run supernormal profit persists because entry is blocked.
]

#concept-box("Efficiency, in one paragraph")[
  Competition maximises *consumer surplus* — the gap between what buyers would have paid and
  what they did pay — because price is driven down to marginal cost. A monopoly transfers part
  of that surplus to the producer and destroys the rest, since some buyers who would have paid
  more than the cost of production are priced out altogether.

  That lost surplus is the *deadweight loss*, and it is the economist's case against monopoly —
  not that the monopolist is rich, but that the market produces less than it could.
]

#worked-example(
  3,
  "The structure from its features",
  [An industry has four large firms, each producing a differentiated product, with high capital costs of entry and each firm watching the others' prices closely. The market structure is

    A. perfect competition \
    B. monopolistic competition \
    C. oligopoly \
    D. monopoly],
  [
    *Step 1 — count.* Four large firms with high entry costs: not many, not one, so the choice is between *few* and *many*.

    *Step 2 — the interdependence.* *Each firm watching the others' prices closely* is the definition of oligopoly, and it is the phrase that settles the question.

    *Step 3 — the near miss.* B has many firms and free entry, and its firms do not watch each other because none is large enough to matter. Four firms with high capital costs is the opposite.

    *Check.* Count the firms, then look for interdependence. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The long run, in competition",
  [In the long run, a firm in perfect competition earns

    A. supernormal profit \
    B. normal profit only \
    C. a loss \
    D. whatever profit the market allows the largest firm],
  [
    *Step 1 — the mechanism.* Free entry means supernormal profit attracts new firms, which increases supply and pushes the price down until the profit disappears.

    *Step 2 — the level.* What remains is normal profit — the minimum return that keeps the firm in the industry.

    *Step 3 — the contrast.* A is the monopoly answer, where entry is blocked; C would drive firms out until the price recovered; D describes a price leader, which is an oligopoly idea.

    *Check.* Free entry competes profit away; blocked entry preserves it. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "Price discrimination, and its conditions",
  [A monopolist charges different prices to two groups of buyers for the same product. This practice is possible only if

    A. the two markets can be separated and resale between them is prevented \
    B. the firm is a price taker \
    C. the product is homogeneous and entry is free \
    D. both groups have the same elasticity of demand],
  [
    *Step 1 — the definition.* Price discrimination is charging different prices for the same good to different buyers, and it requires monopoly power.

    *Step 2 — the conditions.* Separable markets, no resale, and different elasticities. A states the first two.

    *Step 3 — kill the rest.* B and C describe perfect competition, where no firm has the power to discriminate; D is the reverse of the reason discrimination works, because the profits come from charging more where demand is *less* elastic.

    *Check.* No separation, no discrimination — the cheap buyer would resell to the dear one. The answer is *A*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: market structures.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Four tests name a market: how many sellers, what the product is, how easy entry is, and how much buyers know. Perfect competition has many sellers of an identical product, free entry and a horizontal demand curve for each firm, so price equals marginal revenue and long-run profit is normal. Monopolistic competition has many sellers of a differentiated product and the same free entry, so it too ends at normal profit. Oligopoly has a few interdependent firms, a kinked demand curve and sticky prices, and it may collude in a cartel. Monopoly has one seller, blocked entry, and a downward-sloping demand curve with marginal revenue below it: output is where MR equals MC, price is read off demand, and the result is a price above marginal cost, lower output and a deadweight loss. Price discrimination needs separable markets, no resale and different elasticities.
  ]
]

== 6.6 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [A firm in perfect competition is described as a price taker because], [it sets the market price], [its output is too small to affect the market price], [its product is differentiated], [entry into the industry is blocked])

#mcq(2, [The demand curve facing a monopolist is], [horizontal], [vertical], [the downward-sloping market demand curve], [the same as its marginal cost curve])

#mcq(3, [A kinked demand curve is used to explain], [price rigidity in oligopoly], [price leadership in monopoly], [normal profit in perfect competition], [the shut-down point])

#mcq(4, [In the long run, supernormal profit is most likely to persist in], [perfect competition], [monopolistic competition], [oligopoly and monopoly], [a market with free entry])

#answer-key-grid(("B", "C", "A", "C"))

#answer-notes((
  ("B", [Its output is too small to affect the market price, which is the definition of a price taker. A is the reverse, C describes monopolistic competition, and D describes a monopoly.]),
  ("C", [The market demand curve, because the monopolist is the market. A belongs to perfect competition, B would mean the quantity is fixed whatever the price, and D confuses demand with cost.]),
  ("A", [Price rigidity in oligopoly: firms expect rivals to match a price cut but not a price rise, so prices stick. B inverts the structure, and C and D have nothing to do with the kink.]),
  ("C", [Oligopoly and monopoly, both of which block entry. A and B have free entry, which competes profit away, and D is that same free entry stated directly.]),
))

#chapter-checklist("Before you leave Chapter 6", (
  [Name the four tests and use them to classify a market in one sentence.],
  [Draw the demand curve facing a perfectly competitive firm and explain why it is horizontal.],
  [Explain the two steps a monopolist takes: output at MR = MC, price from the demand curve.],
  [Name four sources of monopoly power and the three conditions for price discrimination.],
  [Explain the kinked demand curve and what it is used to explain.],
  [Say what each structure does to price, output and long-run profit.],
))

#concept-box("Carry this into the papers")[
  Everything in this book now points at two timed papers. Paper 1 and Paper 2 are forty-question papers in the CBT format, thirty minutes each, drawn from all six chapters. Sit each one against the clock, mark it against the key, and read the note on every option — including the ones you got right. The notes are where the method is stored, and the method is what the second paper measures.
]

#include "drill_ch06.typ"
