#import "template.typ": *

#current-chapter.update("Chapter 4: Warehousing, Transport and Communication")

#pagebreak()

#chapter-opener(
  4,
  "Warehousing, Transport and Communication",
  subtitle: "Time, Place and the Ability to Agree: Three Aids to Trade in Detail",
  syllabus-ref: "Sec. 4 • The Aids to Trade",
  utme-weight: "7 Qs a year",
  running: "Warehousing, Transport and Communication",
)

#focus-radar(
  objectives: (
    "Explain the functions a warehouse performs beyond storage.",
    "Name the kinds of warehouse and say which suits a given trade.",
    "Compare the five modes of transport on cost, speed and cargo.",
    "Choose the document that accompanies goods on each mode.",
    "Explain what communication contributes to a bargain.",
    "Answer the placement questions the paper sets on each aid.",
  ),
  hotspots: (
    "*A warehouse does six things, not one.* It stores, it stabilises price by holding supply back, it grades and blends, it packs and labels, it finances (a warehouse receipt is collateral), and it carries risk while the goods wait.",
    "*Bonded warehouse = duty deferred.* Goods are stored before customs duty is paid, and the duty is paid when they leave. The paper loves this definition.",
    "*Transport creates place utility; warehousing creates time utility.* If a stem asks which utility, that pair answers it.",
    "*Documents follow the mode.* Bill of lading for sea, airway bill for air, waybill or consignment note for road and rail, charter party for a whole ship.",
    "*Communication is an aid to trade because a bargain needs agreement.* Without it there is no contract, only an intention.",
  ),
  trap-summary: "Four slips. (1) Saying a warehouse only stores goods. (2) Confusing a bonded warehouse with a state warehouse. (3) Choosing air transport for bulk cargo because it is fast. (4) Calling an airway bill a document of title, which only a bill of lading is.",
)

// ============================================================================
== 4.1 Why Goods Must Be Stored

Production and consumption do not happen at the same time. A harvest arrives in
September and is eaten until August; a factory runs all year and sells in December.
Warehousing bridges the gap, and in doing so it performs six functions that a Commerce
paper will ask you to name.

#table(
  columns: (1.3fr, 2.4fr, 1.3fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What the warehouse does],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Utility],
  ),
  [Storage], [holds stock safely between production and sale], [time],
  [Price stabilisation], [buys or holds surplus in glut and releases it in scarcity], [time],
  [Grading and blending], [sorts by quality and mixes to a standard], [form],
  [Packing and labelling], [prepares goods in saleable units], [form],
  [Financing], [issues a warehouse receipt against which a bank will lend], [possession],
  [Risk bearing], [carries the risk of loss while the goods are in store], [possession],
)

#v(2pt)

#text(size: 9.4pt)[The sixth function is the one candidates forget: a warehouse that holds your cocoa is carrying a risk you would otherwise carry, and the storage charge is partly a payment for that. The fifth is the one that appears in the paper as \"how does a warehouse help a farmer who needs a loan?\" — the warehouse receipt is the security.]

// ============================================================================
== 4.2 The Kinds of Warehouse

#diagram-fig("diagrams/ch04_aids.svg",
  "The mode and its cargo, the warehouse and its job: two aids that buy time and place.", width: 100%)

#table(
  columns: (1.25fr, 2.35fr, 1.35fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Used by],
  ),
  [Private], [owned and used by one firm for its own stock], [a manufacturer],
  [Public], [rents space to any trader who pays], [importers and exporters],
  [Bonded], [stores imported goods before duty is paid; duty falls due on removal], [an importer who cannot pay duty at once],
  [Cold store], [holds perishables at a controlled temperature], [a fish or dairy trader],
  [Cash and carry], [wholesale self-service: the retailer pays and takes the goods away], [a small retailer without credit],
  [State (buffer) warehouse], [holds strategic reserves, usually of food or fuel], [the government],
  [Distribution centre], [a modern hub that receives, sorts and dispatches daily], [a supermarket chain],
)

#v(2pt)

#rule-box("Bonded, in one sentence")[
  A *bonded warehouse* is a warehouse approved by the customs authority in which imported
  goods may be stored *before duty is paid*; the goods are under bond, the duty is
  suspended, and it becomes payable when the goods are removed for home use. If the
  goods are re-exported instead, the duty is never paid at all.
]

// ============================================================================
== 4.3 Transport: The Five Modes

#table(
  columns: (0.95fr, 2.0fr, 2.05fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Mode],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Good at],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Poor at],
  ),
  [Road], [door-to-door delivery, short hauls, the last mile, perishables], [very long distances and heavy bulk; traffic and road condition],
  [Rail], [bulk cargo over land, at a low cost per tonne-kilometre], [flexibility: it runs on fixed lines between fixed terminals],
  [Water], [the heaviest cargo at the lowest cost; international trade], [speed, and inland destinations without a port],
  [Air], [speed, high-value and perishable goods, distant markets], [cost per kilo and the size of the consignment],
  [Pipeline], [continuous flow of liquids and gas], [anything that is not a fluid],
)

#v(2pt)

#concept-box("How the choice is actually made")[
  + *Cost per tonne-kilometre* — water cheapest, then rail, then road, then air.
  + *Speed* — air fastest, water slowest.
  + *Distance and geography* — an island or a coastal trade uses water; a landlocked market uses road and rail.
  + *Nature of the goods* — bulk, fragility, perishability, value per kilo.
  + *Urgency* — a spare part that stops a factory travels by air whatever it costs.
  A question that asks for the *most suitable* mode is asking you to weigh these five, not to name the fastest.
]

// ============================================================================
== 4.4 The Documents That Travel With the Goods

#table(
  columns: (1.25fr, 1.5fr, 2.2fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Mode],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
  ),
  [Bill of lading], [sea], [a receipt, a contract of carriage and a *document of title*: whoever holds it may claim the goods],
  [Airway bill], [air], [a receipt and a contract, but *not* a document of title],
  [Waybill / consignment note], [road and rail], [the carrier's receipt and the terms of carriage],
  [Charter party], [sea], [the contract for the hire of a whole ship, not a single consignment],
  [Delivery note], [any], [lists the goods delivered, and is signed as proof of delivery],
  [Warehouse receipt], [storage], [proof of the goods in store, and collateral for a loan],
)

#v(2pt)

#shortcut-box("The one distinction the paper tests")[
  Only a *bill of lading* is a document of title. An airway bill is a receipt and a
  contract; it is not negotiable and it does not transfer ownership of the goods. If an
  option says \"airway bill is a document of title\", it is wrong however plausible the
  rest of the sentence.
]

// ============================================================================
== 4.5 Communication

Communication is an aid to trade because a bargain is an agreement, and agreement needs
a message. The postal service carries documents; the telephone and the internet carry
the negotiation; the press and broadcasting carry the advertisement. Each removes a
different obstacle.

#table(
  columns: (1.2fr, 2.4fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Means],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is good for],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it cannot do],
  ),
  [Post], [documents, parcels, a written record], [speed],
  [Telephone], [immediate negotiation and correction], [no permanent record unless written up],
  [Telex and fax], [a written message at a distance], [superseded by e-mail],
  [Radio and television], [reaching many people at once], [no reply, and no privacy],
  [Internet and e-mail], [instant written messages, files, payments, a record], [needs a connection, and is vulnerable to fraud],
)

#v(2pt)

#text(size: 9.4pt)[The examinable point is not the list of devices but the *function*: communication lets the parties to a trade agree, confirm and pay without meeting. That is why a question about a bill of exchange or a letter of credit is really a question about communication as much as about finance.]

// ============================================================================
== 4.6 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [A warehouse in which imported goods are kept before customs duty is paid is a

    A. private warehouse \\
    B. state warehouse \\
    C. bonded warehouse \\
    D. cash-and-carry warehouse],
  [
    *Step 1 — the defining detail is duty.* The stem says the goods are held before duty is paid.

    *Step 2 — match.* That suspension of duty is what \"bonded\" means.

    *Step 3 — eliminate.* Private and state describe ownership and purpose, not the duty; cash and carry is a method of wholesale selling.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Utility",
  [A cold store that holds fish until the price rises is creating

    A. form utility \\
    B. place utility \\
    C. time utility \\
    D. possession utility],
  [
    *Step 1 — what changed?* The fish was not processed, moved or sold; it was kept.

    *Step 2 — match.* Holding a good until it is wanted is time utility.

    *Step 3 — eliminate.* Form belongs to processing, place to transport, possession to the sale.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Classification",
  [Which document is a document of title to goods?

    A. airway bill \\
    B. bill of lading \\
    C. consignment note \\
    D. delivery note],
  [
    *Step 1 — define a document of title.* It is one whose holder can claim the goods, and it can be transferred to transfer ownership.

    *Step 2 — match.* The bill of lading is the only one of the four that does this.

    *Step 3 — eliminate.* An airway bill, a consignment note and a delivery note are all receipts and evidence, none of them is negotiable.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Application",
  [A firm must send twenty tonnes of coal 600 km inland at the lowest cost. The best mode is

    A. air \\
    B. road \\
    C. rail \\
    D. pipeline],
  [
    *Step 1 — weigh the factors.* Bulk, low value, long distance inland, cost above speed.

    *Step 2 — match.* Rail carries bulk over land at the lowest cost per tonne-kilometre.

    *Step 3 — eliminate.* Air is absurd for coal, road is dearer for this bulk over this distance, and coal is not a fluid.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.7 Two-Minute Set

#mcq(1, [Warehousing creates], [form utility], [place utility], [time utility], [possession utility])

#mcq(2, [Goods stored in a bonded warehouse become liable to duty when], [they arrive], [they are graded], [they are removed for home use], [the warehouse is sold])

#mcq(3, [The document that accompanies goods sent by air is the], [bill of lading], [airway bill], [charter party], [warehouse receipt])

#mcq(4, [The cheapest mode per tonne-kilometre for heavy cargo over water is], [road], [rail], [air], [water])

#answer-key-grid(("C", "C", "B", "D"))

#answer-notes((
  ("C", [Holding goods until they are wanted is the creation of time utility.]),
  ("C", [Duty is suspended while the goods are under bond and falls due when they leave for home use.]),
  ("B", [Each mode has its own consignment document, and air has the airway bill.]),
  ("D", [Sea freight is the cheapest per tonne-kilometre, which is why bulk trade goes by ship.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: warehousing, transport, documents and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Warehousing buys time and transport buys place, and each is more than its name
    suggests: a warehouse also stabilises price, grades, packs, finances and carries
    risk, and the bonded version suspends customs duty until the goods leave. Transport
    is chosen by weighing cost, speed, distance, cargo and urgency — water cheapest,
    air fastest, rail best for bulk over land. The documents follow the mode, and only
    the bill of lading is a document of title. Communication is the third aid in this
    chapter because a bargain needs agreement before any goods move at all.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Name the six functions of a warehouse.],
  [Define a bonded warehouse and say when duty is paid.],
  [Compare the five modes of transport on cost and speed.],
  [Match four transport documents to their modes.],
  [Explain why a bill of lading is a document of title and an airway bill is not.],
  [Say what communication contributes to a contract of sale.],
))

#concept-box("Carry this into Chapter 5")[
  A warehouse makes goods available and a carrier moves them, but neither makes them
  *known*. Chapter 5 takes the aid that creates the demand in the first place:
  advertising, the media that carry it, and the sales promotion that turns a want into
  a purchase this week.
]

#include "drill_ch04.typ"
