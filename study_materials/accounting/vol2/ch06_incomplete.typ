#import "template.typ": *

#current-chapter.update("Chapter 6: Incomplete Records")

#pagebreak()

#chapter-opener(
  6,
  "Incomplete Records",
  subtitle: "Reconstructing a Profit from a Cash Book and a List of What Is Owed",
  syllabus-ref: "Sec. 16 • Incomplete Records and Single Entry",
  utme-weight: "5 Qs a year",
  running: "Incomplete Records",
)

#focus-radar(
  objectives: (
    "Explain why a small business keeps incomplete records.",
    "Prepare a statement of affairs at the start and at the end of a period.",
    "Compute profit from the movement in capital, adjusted for drawings and capital introduced.",
    "Reconstruct sales and purchases from the cash book and the debtors and creditors.",
    "Use a mark-up or a margin to find sales, cost of sales and stock.",
    "Distinguish a statement of affairs from a balance sheet.",
  ),
  hotspots: (
    "*Capital = assets − liabilities.* That single line gives both the opening and the closing capital, and their difference is not yet the profit.",
    "*Profit = closing capital + drawings − capital introduced − opening capital.* Drawings are added back because they reduced capital without being an expense; capital introduced is deducted because it raised capital without being a profit.",
    "*Mark-up is on cost; margin is on sales.* A mark-up of 25 per cent is a margin of 20 per cent, and a question that gives one and asks for the other is testing exactly that conversion.",
    "*Sales are reconstructed, not remembered.* Cash sales from the cash book, credit sales from the debtors' control account, and the total checked against the stock and the margin.",
  ),
  trap-summary: "Four slips. (1) Forgetting to add drawings back, which understates profit by the amount the owner took. (2) Adding capital introduced instead of deducting it. (3) Applying a mark-up as though it were a margin — 25 per cent of cost is not 25 per cent of sales. (4) Treating the increase in capital as the profit of the year when the owner has paid in new money or taken goods for himself.",
)

// ============================================================================
== 6.1 Why the Books Are Incomplete

A market trader, a tailor, a small transport owner and a restaurant keep a cash book, a bundle of invoices and a memory. They do not keep a ledger, they do not post a trial balance, and they often do not separate the business's money from their own. The records are *single entry*: each transaction is written once, if at all, and there is no double entry to check.

#table(
  columns: (1.4fr, 2.8fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Record that exists],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it can and cannot tell you],
  ),
  [Cash book or bank statement], [every receipt and payment, in date order — but not what was owed, and not what the owner took],
  [Invoices and receipts], [the cost of purchases and the price of sales, if they were kept],
  [Debtors' list], [what customers still owe, and therefore what was sold on credit],
  [Creditors' list], [what the firm still owes, and therefore what was bought on credit],
  [Physical stock count], [the closing stock, valued at cost],
  [Owner's memory], [drawings, capital introduced, and the private use of business goods — the least reliable record of all],
)

#v(2pt)

#text(size: 9.5pt)[The accountant's task is not to recreate the missing ledger. It is to produce the two figures the owner actually wants — the profit for the year and the value of the business at the end of it — from the records that survive. There are two routes, and a good answer uses both and checks one against the other.]

// ============================================================================
== 6.2 Route One: the Statement of Affairs

A *statement of affairs* is a list of assets and liabilities at a date, from which capital is computed as the difference. It is not a balance sheet: a balance sheet is prepared from a ledger and it balances by construction; a statement of affairs is prepared from a list of what the business owns and owes, and it *produces* the capital figure.

#table(
  columns: (1.75fr, 1.1fr, 1.15fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Statement of affairs at 31 December],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[₦],
  ),
  [*Assets*], [], [],
  [Fixtures and fittings, at valuation], [120,000], [],
  [Motor vehicle, at valuation], [380,000], [],
  [Stock, at cost], [95,000], [],
  [Debtors], [140,000], [],
  [Bank and cash], [65,000], [],
  [*Total assets*], [], [*800,000*],
  [*Less liabilities*], [], [],
  [Creditors], [(150,000)], [],
  [Bank loan], [(100,000)], [],
  [*Total liabilities*], [], [*(250,000)*],
  [*Capital (assets less liabilities)*], [], [*550,000*],
)

#v(2pt)

#formula-box("Profit from two statements of affairs")[
  #text(size: 9.4pt)[
    *Opening capital* = opening assets − opening liabilities \
    *Closing capital* = closing assets − closing liabilities \
    *Profit* = closing capital + drawings − capital introduced − opening capital
  ]
]

#v(2pt)

#text(size: 9.5pt)[The logic is worth stating in words, because it turns a formula into something you can defend. Capital rises for two reasons: the business made a profit, or the owner put more money in. Capital falls for two reasons: the business made a loss, or the owner took money out as drawings. So the *unexplained* rise — the rise after adding back drawings and deducting new capital — is the profit.]

#trap-box("Drawings are not an expense, and that is why they are added back")[
  When the owner takes ₦40,000 out of the business, capital falls by ₦40,000 and no expense
  has been incurred. If you simply compare the two capital figures, the ₦40,000 looks like
  a loss. Adding it back to the closing capital restores the figure the profit would have
  produced. The same reasoning runs the other way for capital introduced: it raised capital
  without any trading, so it is deducted.
]

// ============================================================================
== 6.3 Route Two: the Margin Method

The second route works from the trading account backwards. If the trader knows his *mark-up* — the percentage he adds to cost — then sales, cost of sales and stock can each be derived from the others.

#table(
  columns: (0.9fr, 1.65fr, 1.7fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Given],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Asked for],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The relationship],
  ),
  [Mark-up, 25%], [margin], [mark-up ÷ (100 + mark-up) = 25 ÷ 125 = 20%],
  [Margin, 20%], [mark-up], [margin ÷ (100 − margin) = 20 ÷ 80 = 25%],
  [Cost of sales, ₦400,000], [sales at 25% mark-up], [400,000 × 1.25 = ₦500,000],
  [Sales, ₦500,000], [gross profit at 20% margin], [500,000 × 0.20 = ₦100,000],
  [Sales and opening stock], [purchases], [cost of sales + closing stock − opening stock],
)

#v(3pt)

#text(size: 9.5pt)[Then the *expenses* are taken from the cash book, adjusted for the accruals and prepayments that the statement of affairs reveals, and the net profit is gross profit less those expenses. The two routes are a check on each other: a statement-of-affairs profit of ₦116,000 and a margin profit of ₦116,000 is an answer; a disagreement of ₦20,000 is a missing drawing or a stock figure that was valued at the wrong price, and finding it is worth more marks than either calculation.]

#shortcut-box("Which route does the question want?")[
  + If the question gives *assets and liabilities at two dates*, use the statement of affairs.
  + If it gives a *mark-up or a margin*, use the margin method.
  + If it gives both, use the margin method for the trading account and the statement of affairs as the check.
  + If it gives *cash and bank balances plus debtors and creditors only*, reconstruct sales and purchases from the control accounts and build the trading account.
]

// ============================================================================
== 6.4 Reconstructing Sales, Purchases and Stock

Three reconstructions carry most of the marks, and each one is a control account turned inside out.

#table(
  columns: (1.0fr, 1.75fr, 1.5fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The reconstruction],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where each piece comes from],
  ),
  [*Credit sales*], [cash received from debtors + closing debtors − opening debtors + discounts allowed], [cash book, debtors' list, discount column],
  [*Total sales*], [cash sales + credit sales], [cash book, control account],
  [*Credit purchases*], [cash paid to creditors + closing creditors − opening creditors + discounts received], [cash book, creditors' list],
  [*Cost of sales*], [opening stock + purchases − closing stock], [stock count, purchases reconstruction],
  [*Expenses*], [cash paid, adjusted for opening and closing accruals and prepayments], [cash book, statement of affairs],
)

#v(2pt)

#text(size: 9.5pt)[A *discount allowed* is money the firm gave up to be paid early, and it reduces what the debtor owed without bringing in cash. That is why it is *added* when reconstructing credit sales: the debtor's account was credited with the full sale, but only part of it arrived as cash. A discount *received* works the other way in the creditors' reconstruction — the firm paid less cash than the purchases it had made.]

#concept-box("Single entry is not an excuse for a wrong figure")[
  A set of incomplete records can still be audited, because every reconstruction ends in a
  figure that can be checked against another record: sales against the stock and the margin,
  purchases against the creditors' list, expenses against the cash book. A candidate who
  produces a figure without a check has answered half the question, and the second half is
  usually worth two of the marks.
]

// ============================================================================
== 6.5 Worked Examples

#worked-example(
  1,
  "Capital from a statement of affairs",
  tier: "FOUNDATION",
  [
    A trader's assets are ₦800,000 and his liabilities are ₦250,000. His capital is

    A. ₦250,000 \\
    B. ₦550,000 \\
    C. ₦800,000 \\
    D. ₦1,050,000
  ],
  [
    *Step 1 — the definition.* Capital = assets − liabilities.

    *Step 2 — substitute.* 800,000 − 250,000 = *₦550,000*.

    *Step 3 — eliminate.* A is the liabilities; C is the assets; D adds them, which would be right only if the liabilities were also owned.

    *Answer: B.*
  ],
)

#worked-example(
  2,
  "Profit from two capitals",
  tier: "UTME STANDARD",
  [
    Opening capital was ₦550,000 and closing capital is ₦646,000. Drawings were ₦60,000 and the owner introduced ₦40,000 during the year. Profit for the year was

    A. ₦96,000 \\
    B. ₦116,000 \\
    C. ₦136,000 \\
    D. ₦36,000
  ],
  [
    *Step 1 — the formula.* Profit = closing capital + drawings − capital introduced − opening capital.

    *Step 2 — substitute.* 646,000 + 60,000 − 40,000 − 550,000 = *₦116,000*.

    *Step 3 — check by reasoning.* Capital rose by 96,000. Of that rise, 40,000 was new money and 60,000 was taken out, so trading must have added 116,000. The reasoning and the formula agree.

    *Step 4 — eliminate.* A is the raw rise in capital, which ignores both drawings and the new money; C adds the drawings but forgets to deduct the capital introduced; D deducts the drawings instead of adding them.

    *Answer: B.*
  ],
)

#worked-example(
  3,
  "Mark-up into sales",
  tier: "UTME STANDARD",
  [
    A trader's cost of sales for the year was ₦400,000 and he sells at a mark-up of 25 per cent. His sales were

    A. ₦480,000 \\
    B. ₦500,000 \\
    C. ₦520,000 \\
    D. ₦533,333
  ],
  [
    *Step 1 — what a mark-up is.* A mark-up is a percentage of *cost*, so sales = cost × 1.25.

    *Step 2 — substitute.* 400,000 × 1.25 = *₦500,000*.

    *Step 3 — check the gross profit.* 100,000 on sales of 500,000 is a margin of 20 per cent, which is exactly the margin that a 25 per cent mark-up produces.

    *Step 4 — eliminate.* A applies 20 per cent to cost; C adds ₦120,000 for no stated reason; D divides by 0.75, which applies a margin of 25 per cent to cost as though it were a mark-up.

    *Answer: B.*
  ],
)

#worked-example(
  4,
  "Reconstructing credit sales",
  tier: "JAMB CHALLENGE",
  [
    A trader had debtors of ₦140,000 at the start of the year and ₦190,000 at the end. During the year he received ₦620,000 from debtors and allowed them discounts of ₦10,000. Credit sales for the year were

    A. ₦570,000 \\
    B. ₦660,000 \\
    C. ₦680,000 \\
    D. ₦610,000
  ],
  [
    *Step 1 — draw the debtors' account.* Debit: opening balance 140,000 and credit sales. Credit: cash received 620,000, discounts allowed 10,000 and closing balance 190,000.

    *Step 2 — balance it.* Credit sales = 620,000 + 10,000 + 190,000 − 140,000 = *₦680,000*.

    *Step 3 — check.* Debit side 140,000 + 680,000 = 820,000; credit side 620,000 + 10,000 + 190,000 = 820,000. The account balances.

    *Step 4 — eliminate.* A subtracts the closing debtors instead of adding them; D omits the discount allowed and the opening balance adjustment; B omits the discount allowed.

    *Answer: C.*
  ],
)

#v(2pt)

#trap-box("A statement of affairs is not a balance sheet")[
  The two look alike and are marked differently. A balance sheet is drawn from a ledger
  that has already been proved by a trial balance, and it balances because the double entry
  says it must. A statement of affairs is drawn from a list of assets and liabilities, and
  it *derives* the capital that makes it balance. An examination question that asks "why is
  a statement of affairs not a balance sheet?" expects exactly that sentence.
]

// ============================================================================
== 6.6 Two-Minute Set

#mcq(1, [In a statement of affairs, capital is], [assets plus liabilities], [assets less liabilities], [liabilities less assets], [the balance of the cash book])

#mcq(2, [Closing capital ₦500,000, drawings ₦40,000, capital introduced ₦25,000, opening capital ₦450,000. Profit is], [₦75,000], [₦65,000], [₦85,000], [₦50,000])

#mcq(3, [Goods cost ₦80,000 and are sold at a margin of 20 per cent on sales. The selling price is], [₦96,000], [₦100,000], [₦104,000], [₦120,000])

#mcq(4, [Debtors opening ₦60,000, closing ₦90,000; cash received from debtors ₦300,000; discounts allowed ₦5,000. Credit sales are], [₦325,000], [₦335,000], [₦345,000], [₦305,000])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The statement of affairs lists what is owned and owed, and the difference is the capital.]),
  ("B", [500,000 + 40,000 − 25,000 − 450,000 = ₦65,000; drawings are added back and new capital is deducted.]),
  ("B", [A margin of 20 per cent means cost is 80 per cent of sales, so 80,000 ÷ 0.8 = ₦100,000.]),
  ("B", [300,000 + 5,000 + 90,000 − 60,000 = ₦335,000.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the statement of affairs, the profit formula, the margin method and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Incomplete records are single entry: each transaction written once, if at all, and no trial balance to prove anything. Two routes recover the profit. The statement of affairs lists assets and liabilities at two dates, computes capital as the difference, and turns the movement into profit by adding back drawings and deducting capital introduced. The margin method works from the trading account backwards, converting a mark-up into a margin and a margin into a mark-up, deriving sales from cost of sales and stock from purchases. Sales and purchases are reconstructed from the debtors' and creditors' accounts, with discounts allowed added and discounts received deducted. A good answer runs both routes and quotes the agreement, because the agreement is the proof.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Explain why a small trader's records are described as single entry.],
  [Prepare a statement of affairs and compute capital.],
  [State and apply the formula for profit from two capitals.],
  [Convert a mark-up of 25 per cent into a margin, and back again.],
  [Reconstruct credit sales from debtors and cash received.],
  [Say why a statement of affairs is not a balance sheet.],
))

#concept-box("Carry this into Chapter 7")[
  Chapter 6 recovered a profit for an owner. Chapter 7 shares one between partners, and then
  handles the hardest questions in the syllabus: what happens to the accounts when a new
  partner buys in, when an old one retires, and when the firm itself is wound up.
]

#include "drill_ch06.typ"
