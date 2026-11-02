#import "template.typ": *

#current-chapter.update("Chapter 6: Aids to Trade")

#pagebreak()

#chapter-opener(
  6,
  "Aids to Trade",
  subtitle: "Banking, Insurance, Transport, Warehousing, Advertising and Communication",
  syllabus-ref: "Sec. 4 • Aids to Trade",
  utme-weight: "9 Qs a year",
  running: "Aids to Trade",
)

#focus-radar(
  objectives: (
    "Name the six aids and the problem each one solves.",
    "Describe the three bank accounts, the cheque, and the services a bank sells.",
    "State the six principles of insurance and distinguish the three types of insurance.",
    "Compare road, rail, sea, air and pipeline on cost, speed and cargo.",
    "Distinguish bonded, state and private warehousing, and say what each is for.",
    "Classify advertising by purpose and by medium.",
  ),
  hotspots: (
    "*Every aid exists because trade would otherwise stop.* Say the obstacle first — distance, risk, time, quantity, ignorance, agreement — and the aid names itself.",
    "*Insurance principles:* insurable interest, utmost good faith, indemnity, subrogation, contribution, proximate cause. The first two are the ones candidates miss.",
    "*A bonded warehouse* holds imported goods on which duty has not yet been paid; the goods are released only when the duty is paid.",
    "*Warehousing creates time utility* and steadies prices by holding supply back from a glut.",
    "*Advertising* informs, persuades and reminds; the three purposes answer three different question stems.",
  ),
  trap-summary: "Four slips. (1) Calling insurance a gamble because the loss may not happen. (2) Saying a current account earns interest. (3) Mixing a bonded warehouse with a state warehouse. (4) Naming transport as an industry rather than an aid to trade.",
)

// ============================================================================
== 6.1 The Six Aids, and the Six Problems

#diagram-fig("diagrams/ch06_aids.svg",
  "Each aid answers a specific obstacle. If you can name the obstacle, the aid names itself.", width: 100%)

#table(
  columns: (1.05fr, 1.75fr, 2.15fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Aid],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The obstacle it removes],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it creates],
  ),
  [*Banking*], [the gap between paying and being paid, and the risk of carrying cash], [a means of payment, credit and safe custody],
  [*Insurance*], [the risk of loss by fire, theft, accident or sea], [certainty for a known premium],
  [*Transport*], [distance between producer and consumer], [place utility],
  [*Warehousing*], [the gap between harvest and demand, or between shipment and sale], [time utility and price stability],
  [*Advertising*], [the buyer does not know the good exists], [information utility, and a wider market],
  [*Communication*], [the parties cannot meet or agree quickly], [speed of negotiation and of instruction],
)

// ============================================================================
== 6.2 Banking

#table(
  columns: (1.05fr, 1.6fr, 2.25fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Account],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[For],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Interest and withdrawal],
  ),
  [*Current*], [business and daily payments], [usually no interest; withdraw by cheque any time],
  [*Savings*], [the small saver], [interest at a low rate; withdrawals by slip or card, sometimes limited],
  [*Fixed (time) deposit*], [money not needed for a stated period], [the highest rate; withdrawal before maturity costs interest],
)

#text(size: 9.4pt)[The *cheque* is the instrument of the current account: an unconditional order in writing, addressed by the drawer to the bank, signed, requiring the bank to pay a stated sum to a named person or bearer on demand. The words are examinable in that order, and a question that asks for "an unconditional order in writing" is asking for a cheque, not a promissory note.]

#shortcut-box("The seven services a bank sells")[
  + Accepting deposits, and paying them out on demand. + Lending: overdraft, loan, discounting bills.
  + Safe custody of documents and valuables. + Transfer of money, at home and abroad.
  + Standing orders and direct debits. + Foreign exchange and letters of credit.
  + Advice: investment, business planning and status enquiries about customers.
]

// ============================================================================
== 6.3 Insurance

#rule-box("The six principles, in the order the paper tests them")[
  + *Insurable interest* — you may insure only what you would lose money by losing.
  + *Utmost good faith* — both sides must disclose every material fact.
  + *Indemnity* — the payout restores the loss, and never profits from it.
  + *Subrogation* — after paying, the insurer inherits the insured's right to sue the wrongdoer.
  + *Contribution* — where two policies cover the same loss, they share it in proportion.
  + *Proximate cause* — the nearest cause of the loss decides whether the policy pays.
]

#table(
  columns: (1.1fr, 1.75fr, 2.1fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Covers],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Example],
  ),
  [*Life assurance*], [a stated sum on death, or on survival to a stated date], [term assurance, endowment, whole life],
  [*Marine*], [loss of ships and cargo at sea], [hull, cargo, freight policies],
  [*Fire*], [loss of property by fire and the perils named with it], [a shop and its stock],
  [*Accident*], [injury, liability and motor], [third-party motor, employer's liability],
  [*Fidelity guarantee*], [loss through the dishonesty of an employee], [a cashier who steals],
)

#trap-box("Insurance is not a gamble")[
  A gamble creates a risk that did not exist; insurance transfers a risk that already
  exists. The insured must have an *insurable interest*, so the payout can only make
  good a loss — never create a profit. A candidate who writes "the insured hopes the
  house burns" has failed to notice that indemnity is the principle that makes insurance
  a service rather than a wager.
]

// ============================================================================
== 6.4 Transport, Warehousing, Advertising, Communication

#table(
  columns: (0.9fr, 1.1fr, 1.6fr, 1.35fr),
  inset: (x: 4.2pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[Mode],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[Best at],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[Weak at],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[Cargo],
  ),
  [*Road*], [door to door, short haul, flexibility], [long haul, bulky loads, congestion], [almost everything],
  [*Rail*], [bulk, long haul, heavy goods], [flexibility, rural reach], [coal, cement, containers, grain],
  [*Sea*], [low cost per tonne, very heavy loads], [speed, inland reach], [oil, containers, bulk cargo],
  [*Air*], [speed, high value, perishables], [cost, weight and bulk], [documents, flowers, electronics],
  [*Pipeline*], [continuous flow of liquid and gas], [only fluids, fixed route], [crude oil, gas, water],
)

#table(
  columns: (1.1fr, 1.6fr, 2.2fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Warehouse],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Who owns it, and what it holds],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Why it matters],
  ),
  [*Bonded*], [licensed by customs; holds imported goods before duty is paid], [duty is deferred until the goods leave, which frees working capital],
  [*State*], [owned by government; holds strategic reserves], [stabilises supply and price in a shortage],
  [*Private*], [owned by a firm for its own stock], [keeps production running between deliveries],
  [*Public (general)*], [a business that rents space to anyone], [lets a small trader hold stock without owning a building],
  [*Cold store*], [refrigerated; holds perishables], [creates time utility for food, drugs and flowers],
)

#text(size: 9.4pt)[*Advertising* divides by purpose and by medium. By purpose: *informative* (a new product, a new branch), *persuasive* (why this brand rather than that), *reminder* (the brand you already know). By medium: press, broadcast, outdoor, direct mail and digital. The paper usually asks which purpose a given advertisement serves, and the answer is in the tense: a new product is informative, a comparison is persuasive, a familiar logo is reminder.]

// ============================================================================
== 6.5 Four Worked Questions

#worked-example(
  1,
  "Classification",
  [Which of these is an aid to trade?

    A. Farming \\
    B. Insurance \\
    C. Mining \\
    D. Manufacturing],
  [
    *Step 1 — recall the six aids.* Banking, insurance, transport, warehousing, advertising, communication.

    *Step 2 — eliminate.* Farming and mining are primary production; manufacturing is secondary.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Insurance principle",
  [The principle that a person may insure only what he would lose money by losing is

    A. indemnity \\
    B. insurable interest \\
    C. subrogation \\
    D. contribution],
  [
    *Step 1 — read the definition.* The right to insure depends on a financial loss.

    *Step 2 — match.* That is insurable interest; indemnity is the size of the payout once the interest is established.

    *Step 3 — eliminate.* Subrogation transfers the right to sue; contribution shares a loss between policies.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Warehousing",
  [Imported goods on which customs duty has not yet been paid are stored in a

    A. state warehouse \\
    B. bonded warehouse \\
    C. private warehouse \\
    D. cold store],
  [
    *Step 1 — take the key fact.* Duty is unpaid and the goods are imported.

    *Step 2 — match.* Only a bonded warehouse is licensed to hold goods before duty is paid.

    *Step 3 — eliminate.* A state warehouse holds government reserves; a private warehouse belongs to a firm; a cold store is about temperature.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Banking",
  [A customer who needs to make many payments by cheque, with no interest, should open a

    A. savings account \\
    B. current account \\
    C. fixed deposit account \\
    D. domiciliary account],
  [
    *Step 1 — take the two needs.* Cheque payments and no interest.

    *Step 2 — match.* A current account is the only one operated by cheque on demand, and it traditionally pays no interest.

    *Step 3 — eliminate.* Savings accounts pay interest but are not cheque accounts; a fixed deposit locks the money; a domiciliary account is a foreign-currency account.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.6 Two-Minute Set

#mcq(1, [Warehousing creates], [form utility], [place utility], [time utility], [possession utility])

#mcq(2, [The principle that the insured must disclose all material facts is], [indemnity], [utmost good faith], [subrogation], [proximate cause])

#mcq(3, [The fastest mode of transport for high-value perishables is], [road], [rail], [sea], [air])

#mcq(4, [An advertisement that reminds buyers of an established brand is], [informative], [persuasive], [reminder], [competitive])

#answer-key-grid(("C", "B", "D", "C"))

#answer-notes((
  ("C", [Holding goods until they are wanted creates time utility, which is the whole purpose of a warehouse.]),
  ("B", [Utmost good faith requires both parties to disclose everything material; concealment can void the policy.]),
  ("D", [Air is the most expensive per tonne and the fastest, which is exactly the trade-off for flowers, drugs and documents.]),
  ("C", [Reminder advertising keeps an established brand in view; informative advertising introduces, persuasive compares.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the six aids, the accounts, the insurance principles and the modes.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The six aids to trade each answer an obstacle: banking answers the gap between paying and being paid, insurance answers risk, transport answers distance with place utility, warehousing answers time with time utility, advertising answers ignorance, communication answers the need to agree quickly. Banks offer current, savings and fixed deposit accounts, and sell lending, custody, transfer, standing orders, foreign exchange and advice. Insurance rests on insurable interest, utmost good faith, indemnity, subrogation, contribution and proximate cause, and divides into life, marine, fire, accident and fidelity guarantee. Transport compares road, rail, sea, air and pipeline on cost, speed and cargo; warehousing divides into bonded, state, private, public and cold; advertising informs, persuades and reminds.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Name the six aids and the obstacle each removes.],
  [Give the three bank accounts and one feature of each.],
  [State the six principles of insurance.],
  [Explain what a bonded warehouse defers.],
  [Compare road and rail on two advantages each.],
  [Distinguish informative, persuasive and reminder advertising.])
)

#concept-box("Carry this into Chapter 7")[
  Every service in this chapter has to be paid for, and every good that moves has to be
  financed and documented. Chapter 7 turns to the money — where a business gets it, and
  the paper trail that follows a single order from enquiry to receipt.
]

#include "drill_ch06.typ"
