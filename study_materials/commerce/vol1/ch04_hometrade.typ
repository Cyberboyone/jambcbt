#import "template.typ": *

#current-chapter.update("Chapter 4: Home Trade")

#pagebreak()

#chapter-opener(
  4,
  "Home Trade",
  subtitle: "Retail Trade, Wholesale Trade, Large-Scale Retailing and the Four Channels",
  syllabus-ref: "Sec. 3 • Home Trade",
  utme-weight: "9 Qs a year",
  running: "Home Trade",
)

#focus-radar(
  objectives: (
    "Define home trade and separate it into wholesale and retail.",
    "List the functions of the wholesaler and the retailer, and say who pays for each.",
    "Describe the four types of large-scale retailer and tell them apart.",
    "Explain the four channels of distribution and when each is used.",
    "Say what a middleman adds, and answer the question of why he is not simply cut out.",
    "Compute a trade discount, a cash discount and a mark-up.",
  ),
  hotspots: (
    "*The wholesaler's functions* are the examinable list: buying in bulk, breaking bulk, storage, grading, transport, finance, advice and risk-bearing.",
    "*A department store* is one shop with many departments; *a multiple shop* is one owner with many branches. They are the pair the paper tests most.",
    "*A supermarket* is self-service and food-led; a *hypermarket* is larger and mixes food with household goods; a *mail-order* house sells from a catalogue.",
    "*Trade discount* is deducted on the invoice and is never recorded in the books; *cash discount* is for early payment and is recorded.",
    "*Mark-up* is on cost; *margin* is on selling price. The paper swaps them, and the arithmetic differs.",
  ),
  trap-summary: "Four slips. (1) Saying the wholesaler sells to the consumer. (2) Mixing up a department store and a multiple shop. (3) Adding trade discount to the ledger — it never enters the books. (4) Computing mark-up on the selling price.",
)

// ============================================================================
== 4.1 Home Trade and Its Two Halves

#text(size: 9.4pt)[Home trade is the buying and selling of goods and services within one country. It divides by *who buys*: the *wholesaler* buys from the producer and sells to the retailer; the *retailer* buys from the wholesaler or the producer and sells to the final consumer. The division is not about size — a large supermarket is a retailer — but about the customer.]

#table(
  columns: (1.15fr, 1.9fr, 1.85fr),
  inset: (x: 4.5pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Wholesaler],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Retailer],
  ),
  [*Buying*], [in bulk, from many producers], [in smaller lots, from wholesalers or producers],
  [*Breaking bulk*], [divides the producer's lot into retailer-sized lots], [divides the retailer's lot into household-sized lots],
  [*Storage*], [holds stock so the retailer need not], [holds display stock so the consumer need not],
  [*Grading and packing*], [grades, brands and packs], [displays and prices],
  [*Transport*], [moves goods from factory to warehouse], [moves goods from shop to home, or offers collection],
  [*Finance*], [gives credit to the retailer], [gives credit to the consumer, and takes card and transfer payments],
  [*Advice*], [tells the producer what is selling], [tells the wholesaler what the customer asks for],
  [*Risk*], [carries the risk of unsold stock and price fall], [carries the risk of shoplifting, spoilage and fashion],
)

#concept-box("Why the middleman survives")[
  Every generation announces that the wholesaler is about to be cut out, and every
  generation keeps him, because the functions he performs do not disappear when he does
  — they move. Cut out the wholesaler and the retailer must find capital for stock, space
  for storage, vans for delivery and staff for credit control. The middleman's margin is
  the price of those functions, and it is usually cheaper in bulk than it would be
  piecemeal.
]

// ============================================================================
== 4.2 The Retailer

#table(
  columns: (1.05fr, 1.7fr, 2.15fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where it wins and where it loses],
  ),
  [*Hawker / kiosk*], [a small stall or a moving seller], [wins on proximity and price, loses on range and credit],
  [*Single shop*], [one owner, one shop, counter service], [wins on personal service, loses on cost per unit],
  [*Department store*], [one building, many departments, one management], [wins on range and prestige, loses on cost and space],
  [*Multiple shop (chain)*], [one owner, many branches, central buying], [wins on bulk buying and standard display, loses on flexibility],
  [*Supermarket*], [self-service, food-led, checkout at the door], [wins on volume and price, loses on personal service],
  [*Mail order / e-commerce*], [sells from a catalogue or a site, delivers], [wins on reach, loses on delivery cost and returns],
  [*Cooperative store*], [owned by members, sells at cost plus a margin], [wins on price to members, loses on capital],
)

#shortcut-box("Three pairs the paper loves to swap")[
  + *Department store vs multiple shop.* One building with many departments, versus many buildings with the same goods.
  + *Supermarket vs hypermarket.* Food and household, self-service, versus a larger floor mixing food, clothing and electronics.
  + *Mail order vs e-commerce.* A printed catalogue posted, versus a website; the principle — selling before stocking — is identical.
]

// ============================================================================
== 4.3 Large-Scale Retailing

#text(size: 9.4pt)[Large-scale retailing grows for four reasons, and the paper asks for them as a list: the *variety* a single roof can offer, the *lower prices* that bulk buying makes possible, the *advertising* that a large name can afford, and the *self-service* that reduces the wage bill. Against those, the large retailer carries higher rent, higher stock, slower decisions and a personal service the small shop can still beat.]

#diagram-fig("diagrams/ch04_channels.svg",
  "The four channels of distribution, from the shortest to the longest.", width: 100%)

#table(
  columns: (1.5fr, 1.9fr, 1.4fr),
  inset: (x: 4.5pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Channel],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Used when],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Cost],
  ),
  [Producer → Consumer], [perishables, services, direct selling, factory shops], [lowest price, highest producer risk],
  [Producer → Retailer → Consumer], [large retailers who can buy in bulk], [one margin, some producer risk],
  [Producer → Wholesaler → Retailer → Consumer], [small producers, small shops, wide markets], [two margins, least producer risk],
  [Producer → Agent → Wholesaler → Retailer → Consumer], [imports, agricultural produce, distant markets], [three margins, agent expertise],
)

// ============================================================================
== 4.4 Discounts and Mark-Up

#formula-box("The four calculations in this chapter")[
  *Trade discount* = list price × rate. Deducted on the invoice; never entered in the ledger. \
  *Net price* = list price − trade discount. \
  *Cash discount* = amount due × rate, for payment within the stated period. \
  *Mark-up* = (selling price − cost) ÷ cost. *Margin* = (selling price − cost) ÷ selling price.
]

#shortcut-box("Mark-up and margin, on the same naira")[
  A trader buys at ₦4,000 and sells at ₦5,000. His mark-up is 25% (1,000 ÷ 4,000) and
  his margin is 20% (1,000 ÷ 5,000). Both figures describe the same naira, which is why
  the paper can offer 25% and 20% as two options in the same question.
]

// ============================================================================
== 4.5 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [Home trade is best described as trade

    A. between two countries \\
    B. within one country \\
    C. between a producer and a consumer only \\
    D. in imported goods only],
  [
    *Step 1 — take the word.* Home means domestic, so the boundary is the national border.

    *Step 2 — eliminate.* A describes foreign trade; C describes one channel; D describes the goods, not the boundary.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Retail type",
  [A trader owns twelve shops in different towns, all selling the same goods under one name, buying centrally. The business is a

    A. department store \\
    B. multiple shop \\
    C. supermarket \\
    D. cooperative store],
  [
    *Step 1 — count roofs.* Twelve shops means twelve separate premises with one owner.

    *Step 2 — match.* One owner, many branches, central buying is a multiple shop (chain store).

    *Step 3 — eliminate.* A department store is one building; a supermarket is a method of selling; a cooperative is a form of ownership.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Discount",
  [Goods with a list price of ₦20,000 are sold subject to 10% trade discount and 5% cash discount for payment within a week. A buyer who pays at once pays

    A. ₦17,000 \\
    B. ₦17,100 \\
    C. ₦18,000 \\
    D. ₦19,000],
  [
    *Step 1 — take the trade discount first.* 10% of ₦20,000 = ₦2,000, so the invoice is ₦18,000.

    *Step 2 — apply the cash discount to the invoice.* 5% of ₦18,000 = ₦900.

    *Step 3 — subtract.* ₦18,000 − ₦900 = ₦17,100.

    *Step 4 — check the trap.* ₦17,000 (A) comes from adding the two rates and taking 15% of the list price, which double-counts the trade discount.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Middleman",
  [A manufacturer who sells directly to consumers rather than through wholesalers and retailers will normally

    A. keep the middlemen's margins but take on their functions \\
    B. sell fewer goods and make less profit \\
    C. avoid all storage costs \\
    D. be unable to advertise],
  [
    *Step 1 — remove two links.* Two margins are saved.

    *Step 2 — add back the functions.* Storage, delivery, credit and breaking bulk now fall on the manufacturer.

    *Step 3 — choose the option that holds both.* A is the only one that names the gain and the cost.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.6 Two-Minute Set

#mcq(1, [The wholesaler sells mainly to], [the final consumer], [the retailer], [the producer], [the government])

#mcq(2, [A department store is], [one shop with many departments], [many shops with one department], [a chain of supermarkets], [a cooperative])

#mcq(3, [Trade discount is], [recorded in the ledger], [deducted on the invoice and not recorded], [the same as cash discount], [a penalty for late payment])

#mcq(4, [If cost is ₦800 and selling price ₦1,000, the mark-up is], [20%], [25%], [80%], [125%])

#answer-key-grid(("B", "A", "B", "B"))

#answer-notes((
  ("B", [The wholesaler's customer is the retailer; the retailer's customer is the consumer, and that is the whole division.]),
  ("A", [Many departments under one roof and one management; a multiple shop is the reverse — one department repeated in many buildings.]),
  ("B", [Trade discount reduces the invoice; it is a pricing convention, not a transaction, so it never enters the books.]),
  ("B", [Mark-up is profit over cost: 200 ÷ 800 = 25%. The 20% figure would be the margin, on selling price.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: the functions, the retail types, the channels and the discounts.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Home trade is trade within one country, divided by customer into wholesale and retail. The wholesaler buys in bulk, breaks it, stores, grades, transports, finances the retailer, advises the producer and carries the risk of unsold stock; the retailer does the same on a smaller scale and adds display and personal service. Large-scale retailing takes four shapes — the department store, the multiple shop, the supermarket and mail order — and grows on variety, price, advertising and self-service. The four channels run from producer to consumer directly, through a retailer, through a wholesaler and retailer, or through an agent as well; each link removed saves a margin and returns a function. Trade discount is deducted on the invoice and never recorded; cash discount is for early payment; mark-up is on cost and margin on selling price.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Give six functions of the wholesaler.],
  [Distinguish a department store from a multiple shop.],
  [Name the four channels and say when each is used.],
  [Explain why cutting out the middleman does not remove his functions.],
  [Compute a trade discount and a cash discount in the right order.],
  [Convert a mark-up into a margin.])
)

#concept-box("Carry this into Chapter 5")[
  Everything so far has happened inside one country. Chapter 5 crosses the border, where the
  same functions reappear in a harder form: customs, currencies, documents, and two balances
  that candidates constantly confuse.
]

#include "drill_ch04.typ"
