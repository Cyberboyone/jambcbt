#import "template.typ": *

#current-chapter.update("Chapter 5: Foreign Trade")

#pagebreak()

#chapter-opener(
  5,
  "Foreign Trade",
  subtitle: "Imports, Exports, the Two Balances, Restrictions, and the Documents That Travel With the Goods",
  syllabus-ref: "Sec. 3 • Foreign Trade",
  utme-weight: "9 Qs a year",
  running: "Foreign Trade",
)

#focus-radar(
  objectives: (
    "Define foreign trade and divide it into import, export and entrepot.",
    "Separate visible from invisible trade, and the balance of trade from the balance of payments.",
    "Explain the terms of trade and say what a fall in them means.",
    "Classify the restrictions on trade, and give the effect of each.",
    "Name the documents of foreign trade and say which party issues each.",
    "Explain why a developing country restricts imports, and what it costs.",
  ),
  hotspots: (
    "*Balance of trade* = visible exports − visible imports. *Balance of payments* = every credit minus every debit, visible, invisible and capital. The second is the wider account and the one that must, in the end, balance.",
    "*The documents:* an indent is an order from abroad, a proforma invoice is a quoted price, a bill of lading is the shipowner's receipt and title, a letter of credit is the bank's promise to pay.",
    "*A tariff taxes the import; a quota limits its quantity; an embargo forbids it; an exchange control rations the currency to buy it.*",
    "*The terms of trade* measure export prices against import prices. A fall means the same exports now buy fewer imports — which is called a deterioration.",
    "*Entrepot trade* is importing in order to re-export, so the goods never enter the importing country's consumption.",
  ),
  trap-summary: "Four slips. (1) Treating the balance of trade as the balance of payments. (2) Calling a quota a tax. (3) Saying a favourable balance of payments is always good — a surplus can be a shortage of imports. (4) Confusing a bill of lading with a bill of exchange: one is a receipt and a title, the other is an order to pay.",
)

// ============================================================================
== 5.1 The Shape of Foreign Trade

#text(size: 9.4pt)[Foreign trade is trade across a national frontier, and it differs from home trade in four hard ways: goods cross a *customs* barrier, payment crosses a *currency* barrier, distance makes *documents* essential, and each country keeps *records* of what passed. Those four differences generate the whole chapter.]

#table(
  columns: (1.05fr, 1.75fr, 2.15fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Example],
  ),
  [*Import*], [goods and services bought from abroad], [Nigeria importing wheat and vehicles],
  [*Export*], [goods and services sold abroad], [Nigeria exporting crude oil, cocoa and sesame],
  [*Entrepot*], [imported in order to be re-exported], [Singapore refining and re-exporting petroleum products],
  [*Visible*], [goods you can see, counted in the balance of trade], [cement, machinery, cocoa],
  [*Invisible*], [services, counted only in the balance of payments], [shipping, insurance, tourism, remittances],
)

#concept-box("Why countries trade")[
  Three reasons, and the paper accepts any of them. *Absolute advantage*: some goods
  cannot be produced at home at all. *Comparative advantage*: even where they can, it is
  cheaper to specialise in what you produce relatively best and buy the rest.
  *Differences in resources, climate and skill*: the same reason a farmer does not bake
  his own bread. Trade is a division of labour between nations, and the gain is measured
  in what each country can consume, not in what each can make.
]

// ============================================================================
== 5.2 The Two Balances

#diagram-fig("diagrams/ch05_foreign.svg",
  "Visible and invisible trade, and the three accounts that make up the balance of payments.", width: 100%)

#table(
  columns: (1.25fr, 1.35fr, 1.7fr),
  inset: (x: 4.6pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Account],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it counts],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[A surplus means],
  ),
  [*Balance of trade*], [visible exports minus visible imports], [the country sells more goods abroad than it buys],
  [*Current account*], [visible trade + invisible trade + transfers], [goods, services and remittances together are in credit],
  [*Capital account*], [capital transfers and non-produced, non-financial assets], [the country is receiving capital transfers],
  [*Financial account*], [direct investment, portfolio investment, reserves], [more money is coming in than going out],
  [*Balance of payments*], [the whole record, which must balance], [a surplus on the whole account, held in reserves],
)

#text(size: 9.4pt)[The arithmetic that catches candidates: the balance of payments *always balances*, because the accounts are defined to balance, and what the newspapers call a "surplus" or "deficit" is the change in reserves. A country with a visible deficit can still be in overall surplus if its invisibles — shipping, insurance, tourism, remittances — earn more than the goods deficit.]

#rule-box("Terms of trade, in one line")[
  *Terms of trade* = (index of export prices ÷ index of import prices) × 100. If the figure
  falls, each unit of exports buys fewer imports: the terms of trade have *deteriorated*,
  even if the volume of trade has risen.
]

// ============================================================================
== 5.3 Restrictions on Trade

#table(
  columns: (1.0fr, 1.7fr, 2.2fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Restriction],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Its usual purpose],
  ),
  [*Tariff (customs duty)*], [a tax on the imported good], [raise revenue, and make the domestic substitute cheaper by comparison],
  [*Quota*], [a ceiling on the quantity that may be imported], [protect a young industry, and hold the foreign exchange bill down],
  [*Embargo*], [a total ban on trade with a country or in a good], [political pressure, or health and security],
  [*Import licence*], [permission required before importing], [administer a quota, and ration foreign exchange],
  [*Exchange control*], [rationing of foreign currency], [protect reserves when the currency is under pressure],
  [*Subsidy to exports*], [government pays the exporter], [make the good cheaper abroad than at home],
  [*Standards and health rules*], [product must meet a specification], [legitimate safety — and, at the margin, protection],
)

#text(size: 9.4pt)[Two effects are examinable in both directions. Restrictions *protect*: they shelter a young industry from a competitor that has already achieved scale, and they conserve foreign exchange. They also *cost*: the protected producer has no reason to become efficient, the consumer pays more, and the country that restricts invites retaliation. A balanced answer names both, which is what a "discuss" stem wants.]

#trap-box("Tariff, quota, embargo")[
  A *tariff* is a price instrument — the good still enters, but dearer. A *quota* is a
  quantity instrument — the good enters cheaply, but only so much of it. An *embargo*
  is a prohibition — none enters at all. Any option that describes a quota as "a tax on
  imports" is describing a tariff, and it is offered in every paper.
]

// ============================================================================
== 5.4 The Documents

#table(
  columns: (1.25fr, 1.55fr, 2.1fr),
  inset: (x: 4.3pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Issued by],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[What it does],
  ),
  [*Indent*], [the buyer abroad], [the order: what is wanted, at what price and when],
  [*Proforma invoice*], [the seller], [a quoted price sent before the order is confirmed],
  [*Commercial invoice*], [the seller], [the demand for payment, and the customs valuation],
  [*Bill of lading*], [the shipowner], [receipt for the goods, evidence of the contract of carriage, and document of title],
  [*Certificate of origin*], [the chamber of commerce or customs], [where the goods were made, for duty and for preference],
  [*Bill of exchange*], [the seller (drawer)], [an order to the buyer to pay at sight or after a stated period],
  [*Letter of credit*], [the buyer's bank], [a promise to pay the seller against the shipping documents],
  [*Consular invoice*], [the importing country's consulate], [certifies the value and origin for customs],
)

#concept-box("The bill of lading is three documents at once")[
  It is a *receipt* (the shipowner has the goods), a *contract* (the terms of carriage),
  and a *document of title* (whoever holds it can claim the goods). That third function
  is why banks will lend against it, and why the question "which document transfers
  ownership of goods in transit" has one answer.
]

// ============================================================================
== 5.5 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [Trade between Nigeria and Ghana is

    A. home trade \\
    B. foreign trade \\
    C. entrepot trade \\
    D. invisible trade],
  [
    *Step 1 — find the border.* Two sovereign states means a frontier is crossed.

    *Step 2 — eliminate.* Home trade is within one country; entrepot is importing to re-export; invisible trade is services, which this stem does not specify.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The two balances",
  [A country's visible exports are ₦800m and visible imports ₦950m. Its invisible earnings are ₦220m. Its balance of trade and current account are respectively

    A. −₦150m and +₦70m \\
    B. +₦150m and +₦70m \\
    C. −₦150m and −₦70m \\
    D. −₦150m and −₦370m],
  [
    *Step 1 — balance of trade.* Visible exports minus visible imports: 800 − 950 = −₦150m.

    *Step 2 — current account.* Add invisible earnings: −150 + 220 = +₦70m.

    *Step 3 — check the distractors.* D adds the invisibles with the wrong sign; B gets the trade balance sign wrong.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  3,
  "Restrictions",
  [A limit placed on the quantity of a good that may be imported is a

    A. tariff \\
    B. quota \\
    C. embargo \\
    D. subsidy],
  [
    *Step 1 — read the instrument.* "Quantity" is the operative word.

    *Step 2 — match.* A quota caps quantity; a tariff taxes price; an embargo bans; a subsidy pays the producer.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Documents",
  [The document that serves as a receipt for goods shipped, evidence of the contract of carriage, and a document of title is the

    A. bill of exchange \\
    B. bill of lading \\
    C. proforma invoice \\
    D. certificate of origin],
  [
    *Step 1 — take the three functions.* Receipt, contract, title.

    *Step 2 — match.* Only the bill of lading carries all three.

    *Step 3 — eliminate.* A bill of exchange orders payment; a proforma quotes a price; a certificate proves origin.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 5.6 Two-Minute Set

#mcq(1, [Visible trade is recorded in the], [balance of payments only], [balance of trade], [capital account], [current transfers])

#mcq(2, [A tax on imports is a], [quota], [tariff], [subsidy], [embargo])

#mcq(3, [Entrepot trade involves], [importing for consumption], [importing in order to re-export], [exporting services], [barter])

#mcq(4, [A deterioration in the terms of trade means that], [exports buy more imports], [exports buy fewer imports], [imports are banned], [the exchange rate is fixed])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Visible goods are counted in the balance of trade; invisibles are added only when the wider balance of payments is drawn up.]),
  ("B", [A tariff is a tax on the imported good, which raises its price rather than limiting its quantity.]),
  ("B", [The goods enter only to leave again, so they are never consumed in the importing country.]),
  ("B", [The ratio of export prices to import prices has fallen, so a given volume of exports now buys less.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the divisions, the two balances, the restrictions and the documents.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Foreign trade crosses a border, and so it crosses customs, currency, distance and record-keeping. It divides into import, export and entrepot, and into visible goods, counted in the balance of trade, and invisible services, counted only in the balance of payments. The balance of trade is visible exports minus visible imports; the current account adds invisibles and transfers; the capital and financial accounts carry investment and reserves; and the balance of payments is the whole record, which always balances. The terms of trade compare export prices with import prices, and a fall means the exports buy less. The restrictions are tariffs, quotas, embargoes, licences, exchange control, subsidies and standards, each protecting something and costing something. The documents follow the goods: indent, proforma and commercial invoice, bill of lading, certificate of origin, bill of exchange and letter of credit.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Distinguish visible from invisible trade, with two examples each.],
  [Compute a balance of trade and a current account from four figures.],
  [Define the terms of trade and say what a fall means.],
  [Name five restrictions and the instrument each uses.],
  [Say what a bill of lading does, in its three functions.],
  [Explain why a country might restrict imports, and what it costs.])
)

#concept-box("Carry this into Chapter 6")[
  Goods now cross borders, which means they spend weeks in transit, in warehouses and in
  the hands of insurers and bankers. Chapter 6 is about those six services — the aids to
  trade — and the precise vocabulary each one uses.
]

#include "drill_ch05.typ"
