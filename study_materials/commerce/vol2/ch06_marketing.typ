#import "template.typ": *

#current-chapter.update("Chapter 6: The Marketing Mix and Market Research")

#pagebreak()

#chapter-opener(
  6,
  "The Marketing Mix and Market Research",
  subtitle: "The Four Ps, Segmentation, Research and the Channel That Delivers the Goods",
  syllabus-ref: "Sec. 6 • Marketing",
  utme-weight: "8 Qs a year",
  running: "The Marketing Mix and Market Research",
)

#focus-radar(
  objectives: (
    "Distinguish marketing from selling, and state the marketing concept.",
    "Name the four Ps and give an example of a decision under each.",
    "Explain segmentation and name the basis on which a market may be divided.",
    "Explain the research process and separate primary from secondary data.",
    "Name the channels of distribution and the factors that choose between them.",
    "Classify a buying motive as rational or emotional.",
  ),
  hotspots: (
    "*Marketing is wider than selling.* Selling pushes what has been made; marketing finds out what should be made and then makes it. Richard \"the customer is the boss\" is the sentence the paper tests.",
    "*The four Ps are Product, Price, Place, Promotion.* Place means the channel — wholesaler, retailer, direct — and it is the one candidates forget.",
    "*Primary data is collected for this problem; secondary data already exists.* A questionnaire is primary, a published report is secondary, and an interview can be either.",
    "*A channel is judged by the gaps it removes and the cost it adds.* Fewer links mean a lower price and a bigger selling job for the producer.",
    "*Rational motives are about the product; emotional motives are about the buyer.* Economy and durability are rational; prestige and imitation are emotional.",
  ),
  trap-summary: "Four slips. (1) Treating marketing as advertising. (2) Saying segmentation is dividing the product rather than the market. (3) Calling an existing government report primary data. (4) Listing \"price\" as a channel of distribution.",
)

// ============================================================================
== 6.1 Marketing and Selling

#rule-box("The definition, and the sentence that separates them")[
  *Marketing is the process of identifying what customers want and supplying it at a
  profit.* Selling is the last step of it: the effort to persuade a customer to take what
  has already been produced. *Selling is a part of marketing, not the whole of it,* and a
  firm that sells hard and researches not at all is a firm that will eventually be
  selling the wrong thing very efficiently.
]

#table(
  columns: (1.35fr, 2.25fr, 1.35fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Idea],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The question it answers],
  ),
  [Marketing concept], [the customer's want is the starting point, and profit is the reward for satisfying it], [what should we make?],
  [Selling concept], [the product is given, and the task is to move it], [how do we get rid of this?],
  [Product orientation], [the firm trusts its product and expects the market to follow], [why is our good product not selling?],
  [Market orientation], [the firm studies the market first, then designs the product], [what does the market want next?],
)

#v(2pt)

#text(size: 9.4pt)[The paper's favourite question here is a small scenario: a firm with a good product and falling sales that responds by hiring more salesmen is a *selling-oriented* firm making the wrong response. The right response is research — which is what section 6.4 is for.]

// ============================================================================
== 6.2 The Four Ps

#diagram-fig("diagrams/ch06_marketing.svg",
  "The marketing mix, and the five steps of the research behind it.", width: 100%)

#table(
  columns: (1.1fr, 2.3fr, 1.55fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[P],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The decisions under it],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The trap],
  ),
  [Product], [quality, design, size, brand, packaging, guarantees, after-sales service, the range], [thinking it means only the physical good],
  [Price], [the list price, discounts, credit terms, and the price relative to the competition], [ignoring credit terms, which are part of price],
  [Place], [the channel: direct, through a retailer, through a wholesaler, or a mix; transport and storage], [calling it \"location\" only],
  [Promotion], [advertising, personal selling, sales promotion, publicity], [treating promotion as advertising alone],
)

#v(2pt)

#concept-box("The mix is a combination, not a list")[
  A cheap product sold in a luxury shop fails; an expensive one sold in a market stall fails
  too. The four Ps are chosen *together*, and the examination version of that insight is a
  question that asks which element of the mix a decision belongs to: a change from tins to
  sachets is Product, a move from wholesalers to supermarkets is Place, a two-for-one offer
  is Promotion, and a credit line to retailers is Price.
]

// ============================================================================
== 6.3 Segmentation

A market is not one crowd; it is a set of groups with different wants. *Segmentation* is
the division of a market into such groups, and *targeting* is the choice of which group
to serve.

#table(
  columns: (1.25fr, 2.3fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Basis],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[How the market is divided],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Example],
  ),
  [Geographic], [by region, climate, town size or density], [air conditioners in the north, umbrellas in the south],
  [Demographic], [by age, sex, income, occupation, education or family size], [school shoes for children aged six to twelve],
  [Psychographic], [by lifestyle, values and personality], [a premium brand for the status-conscious],
  [Behavioural], [by use, loyalty, benefit sought or occasion], [a family pack for heavy users, a sachet for the occasional buyer],
)

#v(2pt)

#shortcut-box("Why a firm segments at all")[
  Because a single product aimed at everyone is usually second-best for everyone. The
  segmented firm accepts a smaller market and serves it better, and the paper's phrasing
  for that is \"concentrating resources on the segment where the firm has an advantage\".
]

// ============================================================================
== 6.4 Market Research

#table(
  columns: (1.2fr, 2.3fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Weakness],
  ),
  [Survey (questionnaire)], [asks a sample of the market a fixed set of questions], [people say what they think the questioner wants],
  [Interview], [a conversation that can follow up an answer], [expensive, slow, and open to the interviewer's bias],
  [Observation], [records what people actually do, in a shop or a street], [it shows behaviour, not motive],
  [Experiment (test market)], [the product is tried in one area before a national launch], [the test area may not represent the whole market],
  [Secondary research], [reads what already exists: reports, statistics, competitors' prices], [may be out of date, or collected for another purpose],
)

#table(
  columns: (0.5fr, 2.3fr, 1.9fr),
  inset: (x: 4.6pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What is done],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The common failure],
  ),
  [1], [define the problem and the decision it serves], [research with no question],
  [2], [choose the method and the sample], [a sample that is too small or too unrepresentative],
  [3], [collect the data], [leading questions in the questionnaire],
  [4], [tabulate, analyse and interpret], [percentages of a sample with no base stated],
  [5], [act on the finding], [a report that is filed and never used],
)

#v(2pt)

#text(size: 9.4pt)[Two words decide most research questions. *Primary* data is collected for this problem, by this firm, now; *secondary* data was collected by someone else for something else, and is cheaper and often older. And a *sample* is only useful if it is representative: a survey of shoppers in one Lagos mall says nothing about Nigeria.]

// ============================================================================
== 6.5 Channels of Distribution

#table(
  columns: (1.55fr, 1.9fr, 1.45fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Channel],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Suits],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Cost to the producer],
  ),
  [Producer → consumer], [perishables, high-value goods, direct selling, services], [the whole selling cost is the producer's],
  [Producer → retailer → consumer], [large retailers who can buy in bulk], [a trade discount, and no sales force],
  [Producer → wholesaler → retailer → consumer], [small scattered retailers and low-value fast-moving goods], [two margins, but a small selling job],
  [Producer → agent → wholesaler → retailer → consumer], [exports and goods needing local knowledge], [commission to the agent],
)

#v(2pt)

#concept-box("Choosing the channel: four questions")[
  + *How perishable?* A short life pushes the goods towards a short channel.
  + *How many buyers, and how scattered?* Many small buyers need a wholesaler.
  + *How much can the producer afford?* A direct sales force is dear; a wholesaler is cheap in cash but expensive in margin.
  + *How much service does the product need?* A machine needs a direct or agent channel for installation.
  The paper asks which channel is *most suitable*, and the answer is always argued from these four.
]

// ============================================================================
== 6.6 Buying Motives

#table(
  columns: (1.15fr, 2.3fr, 1.45fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Motive],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Example],
  ),
  [Economy], [rational], [the cheaper of two similar packets],
  [Durability and reliability], [rational], [a builder buying a known brand of cement],
  [Utility and convenience], [rational], [a shop that opens early for commuters],
  [Safety], [rational], [a car with airbags],
  [Prestige and status], [emotional], [a designer bag],
  [Imitation and fashion], [emotional], [the shoe the whole class is wearing],
  [Fear and anxiety], [emotional], [insurance bought after a neighbour's fire],
  [Affection], [emotional], [a gift bought for a child],
)

#v(2pt)

#text(size: 9.4pt)[The distinction is not about the product but about the *reason*. The same car may be bought for safety (rational) or for display (emotional), and a paper that asks which motive is at work will describe the buyer's reasoning rather than the object.]

// ============================================================================
== 6.7 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [Marketing is best described as

    A. advertising and selling \\
    B. identifying customer wants and satisfying them profitably \\
    C. keeping records of sales \\
    D. transporting goods to customers],
  [
    *Step 1 — test the scope.* Advertising, selling and transport are each one activity inside a wider process.

    *Step 2 — match.* The wider process is finding out what is wanted and supplying it at a profit.

    *Step 3 — eliminate.* A and D name parts; C is bookkeeping.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classification",
  [A firm divides its market by income and occupation. It is segmenting on

    A. geographic grounds \\
    B. demographic grounds \\
    C. psychographic grounds \\
    D. behavioural grounds],
  [
    *Step 1 — name the variables.* Income and occupation describe the person, not the place, the attitude or the purchase behaviour.

    *Step 2 — match.* Those are demographic variables.

    *Step 3 — eliminate.* Geographic is location, psychographic is lifestyle, behavioural is use.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Decision",
  [A small producer of fresh bread wants to reach many scattered retailers. The most suitable channel is

    A. producer to consumer directly \\
    B. producer to wholesaler to retailer \\
    C. producer to agent to consumer \\
    D. producer to a single supermarket],
  [
    *Step 1 — weigh the four questions.* Perishable (short channel), many scattered buyers (long channel), small producer (cannot fund a sales force).

    *Step 2 — reconcile.* Bread is perishable, so the wholesaler must be a fast distributor; but the outlets are many and small, so a middleman is unavoidable.

    *Step 3 — eliminate.* A direct round cannot reach them all; an agent does not distribute bread; one supermarket cannot absorb the output.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Research",
  [A firm uses the sales records already held by its trade association. The data is

    A. primary \\
    B. secondary \\
    C. experimental \\
    D. observational],
  [
    *Step 1 — who collected it, and for what?* Someone else, for another purpose.

    *Step 2 — match.* Data collected by another party for another purpose is secondary.

    *Step 3 — eliminate.* It was not collected by this firm for this problem, so it is not primary, experimental or observational in the technical sense.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.8 Two-Minute Set

#mcq(1, [The four Ps of the marketing mix are], [product, price, place, promotion], [product, profit, place, people], [price, packaging, promotion, profit], [plan, product, price, people])

#mcq(2, [Data collected by a firm for its own present problem is], [secondary], [primary], [tertiary], [historical])

#mcq(3, [Selling a product through a wholesaler rather than directly means], [a higher price to the consumer and a smaller selling job for the producer], [a lower price and a larger selling job], [no change in price], [the producer keeps the whole margin])

#mcq(4, [Buying a watch because it is accurate is a], [rational motive], [emotional motive], [social motive], [patronage motive])

#answer-key-grid(("A", "B", "A", "A"))

#answer-notes((
  ("A", [Product, price, place and promotion are the four controllable elements of the mix.]),
  ("B", [Primary data is gathered first-hand, for the question in hand.]),
  ("A", [The wholesaler's margin raises the final price, but the producer no longer has to sell to every retailer.]),
  ("A", [Accuracy is a product attribute, so the motive is rational and product-based.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the mix, segmentation, research, channels and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Marketing begins with the customer's want and ends with a profit, and selling is the
    last step of it. The mix is four decisions taken together — product, price, place and
    promotion — and the channel is the one candidates forget. Segmentation divides the
    market by geography, demography, lifestyle or behaviour so that the firm can serve one
    group well. Research is five steps from a defined problem to an acted-on finding, and
    the only distinction the paper insists on is primary against secondary data.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Define marketing, and distinguish it from selling.],
  [Give two decisions under each of the four Ps.],
  [Segment a named market in four different ways.],
  [List the five steps of research and the weakness of each method.],
  [Choose a channel for a stated product and justify it from the four questions.],
  [Classify six buying motives as rational or emotional.],
))

#concept-box("Carry this into Chapter 7")[
  Every firm in this chapter sells inside a national market. Chapter 7 widens the frame:
  the organisations that write the rules between nations, the groupings that lower the
  tariffs, and the balance of payments that records what crosses the border.
]

#include "drill_ch06.typ"
