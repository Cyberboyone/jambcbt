#import "template.typ": *

#current-chapter.update("Chapter 1: The Scope of Commerce")

#pagebreak()

#chapter-opener(
  1,
  "The Scope of Commerce",
  subtitle: "Wants, Production, Occupations, the Branches of Commerce and the Chain of Distribution",
  syllabus-ref: "Sec. 1 • Introduction to Commerce",
  utme-weight: "6 Qs a year",
  running: "The Scope of Commerce",
)

#focus-radar(
  objectives: (
    "Define commerce, and separate it from trade and from industry.",
    "Place any occupation in the industrial or commercial family.",
    "Name the three levels of production and give an example of each.",
    "Draw the chain of distribution and say what each link removes.",
    "Explain the five utilities that trade creates.",
    "Answer the definition and classification questions the paper actually sets.",
  ),
  hotspots: (
    "*Commerce = trade + aids to trade.* Trade is buying and selling; the aids (banking, insurance, transport, warehousing, advertising, communication) exist to make the buying and selling possible.",
    "*Production is not only manufacturing.* It is the creation of utility, so a lorry driver and a teacher are producing just as a factory is.",
    "*The three levels:* primary (extractive), secondary (manufacturing and construction), tertiary (services and distribution).",
    "*Occupation* divides into industrial (primary, secondary, constructive) and commercial (trade and aids) — and the paper asks which family an example belongs to.",
    "*Utility* is the examinable word: form, place, time, possession and information utility, each created by a different link.",
  ),
  trap-summary: "Four slips. (1) Saying commerce is the same as trade. (2) Treating production as manufacturing only. (3) Putting a transporter in the industrial family, when transport is a commercial service. (4) Confusing *commerce* with *industry*: industry makes the goods, commerce moves and sells them.",
)

// ============================================================================
== 1.1 What Commerce Is

Human wants are unlimited and the things that satisfy them are not. Production is the
process of turning resources into things that satisfy wants, and *commerce* is
everything that happens between the point of production and the point of consumption:
the buying and selling, and the services that make the buying and selling possible.

#rule-box("The definition, in the words the paper accepts")[
  *Commerce* is the study of trade and the aids to trade. *Trade* is the buying and
  selling of goods and services. The *aids to trade* are the services — banking,
  insurance, transport, warehousing, advertising and communication — that remove the
  obstacles standing between a producer and a consumer.
]

#text(size: 9.4pt)[Two lines of that definition are examinable on their own. First, commerce includes the aids: an option that defines commerce as "buying and selling" is only half an answer, and a stem that says "commerce differs from trade because" is testing exactly that. Second, commerce deals in *goods and services*, so a bank selling a loan and an airline selling a seat are both engaged in trade.]

#concept-box("Industry, commerce and the third term")[
  *Industry* produces goods: it extracts, grows, manufactures or constructs. *Commerce*
  distributes them. The bridge between the two is *direct service*: the professions —
  law, medicine, teaching, accountancy — which serve the public but neither make nor
  sell goods.

  The examiner's classification is therefore three-cornered: *industry* (production),
  *commerce* (distribution) and *direct services* (the professions). A carpenter is in
  industry; a haulier is in commerce; a doctor is in direct service.
]

// ============================================================================
== 1.2 Production and Its Three Levels

#diagram-fig("diagrams/ch01_scope.svg",
  "From wants to the shop counter: production, trade and the aids that hold the chain together.", width: 100%)

#table(
  columns: (0.85fr, 1.45fr, 1.9fr, 1.15fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Level],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Examples],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Utility created],
  ),
  [*Primary*], [extracts from nature], [farming, fishing, mining, forestry, quarrying], [form utility — the raw material begins to exist],
  [*Secondary*], [manufactures and builds], [baking, weaving, refining, construction, assembly], [form utility — the material becomes a product],
  [*Tertiary*], [provides services and distributes], [banking, transport, teaching, retailing, insurance], [place, time and possession utility],
)

#text(size: 9.4pt)[A loaf of bread passes through all three. The farmer grows the wheat (primary), the miller grinds it and the baker bakes it (secondary), and the van driver, the wholesaler and the shopkeeper get it to your street at seven in the morning (tertiary). The examinable point is that *all three are production*, because each adds utility — and the paper will happily ask which level a transporter belongs to.]

#shortcut-box("The five utilities, and who creates each")[
  + *Form utility* — changing the shape or nature of a thing: the baker, the carpenter, the refinery.
  + *Place utility* — moving it to where it is wanted: the haulier, the shipping line, the courier.
  + *Time utility* — holding it until it is wanted: the warehouse, the cold store, the grain silo.
  + *Possession utility* — transferring ownership: the wholesaler, the retailer, the market trader.
  + *Information utility* — telling the market the thing exists: the advertiser, the broker, the agent.
]

// ============================================================================
== 1.3 Occupations: Industrial and Commercial

Every working person in the economy sits in one of two families, and the paper's
classification question is almost always "which family does this example belong to".

#table(
  columns: (1.0fr, 1.15fr, 1.9fr, 1.2fr),
  inset: (x: 4.4pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Family],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Sub-division],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What the worker does],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Example],
  ),
  [*Industrial*], [primary], [extracts raw material from nature], [a fisherman, a tin miner],
  [], [secondary], [converts raw material into finished goods], [a tailor, a baker, a refinery operator],
  [], [constructive], [assembles a structure in one place], [a bricklayer, a road engineer],
  [*Commercial*], [trade], [buys and sells], [a market trader, an exporter],
  [], [aids to trade], [serves the buyers and sellers], [a bank clerk, an insurer, a haulier],
  [*Direct service*], [the professions], [serves the public directly], [a doctor, a lawyer, a teacher],
)

#text(size: 9.4pt)[The classification is decided by *what the work does*, not by where it is done. A clerk in a factory's accounts office is in commercial occupation — the aid of banking and record-keeping — while the machine operator beside him is in secondary industry. That separation is the single most examined idea in this chapter.]

#trap-box("Three classification traps")[
  *Transport is commercial, not industrial.* Moving a finished good creates place utility, and place utility is a commercial service. The lorry belongs to a commercial occupation even when the factory owns it.

  *Construction is secondary, not tertiary.* A builder creates form utility — a house — and form utility belongs to industry. A house agent, who only sells the house, is in commerce.

  *Farming is primary even when it is commercial in scale.* A mechanised poultry farm is still extracting and rearing from nature; scale does not change the family.
]

// ============================================================================
== 1.4 Trade and Its Divisions

Trade is the buying and selling of goods and services, and it divides in one direction
at a time: by *place* and by *who buys*.

#table(
  columns: (1.05fr, 1.6fr, 2.25fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Division],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The examinable point],
  ),
  [*Home trade*], [buying and selling within one country], [it divides into wholesale and retail: the wholesaler sells to the retailer, the retailer to the consumer],
  [*Foreign trade*], [buying and selling across a national border], [it divides into import, export and entrepot; it is governed by customs, currencies and documents],
  [*Entrepot trade*], [importing goods in order to re-export them], [the goods are not consumed in the importing country; Singapore and Dubai are the stock examples],
  [*Visible trade*], [goods you can see and touch], [recorded in the balance of trade],
  [*Invisible trade*], [services: shipping, insurance, tourism, remittances], [recorded in the balance of payments, never in the balance of trade],
)

#concept-box("Why a country trades at all")[
  Two reasons, and the paper wants both. First, *absolute difference*: some things
  cannot be produced at home — Nigeria has no tin of the kind Bolivia has, and no
  climate for wheat on the scale it eats. Second, *comparative advantage*: even where
  a country could produce everything, it gains by specialising in what it produces
  relatively most cheaply and buying the rest. Trade is therefore not a confession of
  weakness but a division of labour between nations.
]

// ============================================================================
== 1.5 The Chain of Distribution

Goods do not usually travel from maker to user in one step. They pass along a
*channel*, and each link in the channel exists because it closes a gap that would
otherwise stop the goods.

#table(
  columns: (1.15fr, 2.0fr, 1.75fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Discrepancy],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Who removes it],
  ),
  [*Place*], [the maker and the buyer are in different places], [the transporter and the courier],
  [*Time*], [the good is ready before or after it is wanted], [the warehouse and the cold store],
  [*Quantity*], [the maker sells in tonnes, the buyer wants a cup], [the wholesaler and the retailer, by breaking bulk],
  [*Assortment*], [one factory makes one thing; the buyer wants many], [the wholesaler, who assembles a range],
  [*Ownership*], [the good must change hands], [the trader, who buys and resells],
  [*Information*], [the buyer does not know the good exists], [the advertiser, the agent and the broker],
)

#text(size: 9.4pt)[The chain is not a rule but a choice. A bakery selling over its own counter uses the shortest channel — producer to consumer — and takes on every function itself: it stores, it retails, it advertises and it carries the credit. A soap factory selling through distributors uses a long channel, and each distributor is paid a margin for taking one of those functions off the factory's hands.]

#shortcut-box("The chain, written as one line")[
  *producer → wholesaler → retailer → consumer*, with the aids standing beside every
  arrow. Chapter 4 draws the four channels properly and compares what each one costs.
]

// ============================================================================
== 1.6 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [Commerce is best defined as

    A. the buying and selling of goods \\
    B. trade and the aids to trade \\
    C. the production of goods and services \\
    D. the transport of goods from producer to consumer],
  [
    *Step 1 — read the word "best".* The stem wants the complete definition, not one branch of it.

    *Step 2 — eliminate.* A describes trade only; C describes industry and production; D describes one aid.

    *Step 3 — check B.* Trade plus the aids is the definition the syllabus gives, and it is wider than A and narrower than C.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classification",
  [A clerk who keeps the accounts of a manufacturing company is engaged in

    A. primary production \\
    B. secondary production \\
    C. a commercial occupation \\
    D. direct service],
  [
    *Step 1 — separate the firm from the job.* The firm manufactures; the clerk does not.

    *Step 2 — classify the job.* Record-keeping is an aid to trade, and the aids are commercial occupations.

    *Step 3 — eliminate.* Primary and secondary describe what happens to materials; direct service describes the professions, not clerical work in a firm.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Utility",
  [A cold store that keeps tomatoes until the price rises is creating

    A. form utility \\
    B. place utility \\
    C. time utility \\
    D. possession utility],
  [
    *Step 1 — ask what changed.* Nothing was made, nothing was moved, nothing was sold; the tomatoes were simply held.

    *Step 2 — match.* Holding a good until it is wanted is time utility.

    *Step 3 — eliminate.* Form belongs to manufacture, place to transport, possession to the sale itself.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Chain",
  [A retailer who buys directly from a manufacturer, rather than through a wholesaler, will normally

    A. pay a lower price per unit but carry more stock and more risk \\
    B. pay a higher price and carry less risk \\
    C. sell fewer goods \\
    D. be unable to advertise],
  [
    *Step 1 — remove one link.* The wholesaler's margin disappears, so the unit price falls.

    *Step 2 — add back the functions.* The functions the wholesaler performed — storage, breaking bulk, credit — now fall on the retailer.

    *Step 3 — choose the option that holds both halves.* A is the only option that names the saving and the cost together.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 1.7 Two-Minute Set

#mcq(1, [The aids to trade exist in order to], [produce goods], [make trade possible], [regulate prices], [collect taxes])

#mcq(2, [Farming, fishing and mining are], [secondary production], [primary production], [tertiary production], [commercial occupations])

#mcq(3, [A haulage company creates], [form utility], [place utility], [time utility], [possession utility])

#mcq(4, [Entrepot trade means], [importing for consumption], [importing in order to re-export], [exporting raw materials], [trading within a country])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Banking, insurance, transport, warehousing, advertising and communication are services that remove obstacles to trade; they do not produce the goods themselves.]),
  ("B", [All three extract from nature, which is the definition of primary production, whatever the scale or the machinery.]),
  ("B", [A haulier moves goods to where they are wanted, which is place utility; form belongs to manufacture and time to storage.]),
  ("B", [Entrepot trade imports goods only to send them out again, so the goods are never consumed in the importing country.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the definition, the levels, the families and the chain.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Commerce is trade plus the aids to trade, and it exists because production and consumption are separated by place, time, quantity, assortment, ownership and information. Production is the creation of utility and has three levels: primary, which extracts from nature; secondary, which manufactures and builds; and tertiary, which serves and distributes. Occupations divide into industrial — primary, secondary and constructive — and commercial, which is trade and the aids, with the professions standing as direct service. Trade divides by place into home and foreign, and foreign divides into import, export and entrepot; by visibility it divides into visible goods, recorded in the balance of trade, and invisible services, recorded in the balance of payments. The chain of distribution runs from producer through wholesaler and retailer to consumer, and every link removed takes a margin away and puts a function back on somebody else.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Define commerce in one sentence, naming trade and the aids.],
  [Name the three levels of production with two examples each.],
  [Classify six jobs into industrial, commercial or direct service.],
  [Name the five utilities and the worker who creates each.],
  [Draw the chain of distribution from memory.],
  [Say why entrepot trade is foreign trade and not home trade.])
)

#concept-box("Carry this into Chapter 2")[
  Chapter 1 answered *what commerce does*. Chapter 2 asks *who does it*: the smallest
  business unit, the sole trader, and the two forms that grow out of it — the
  partnership and the cooperative. The examinable axis is always the same three
  words: *owner, liability, control*.
]

#include "drill_ch01.typ"
