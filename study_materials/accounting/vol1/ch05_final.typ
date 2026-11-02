#import "template.typ": *

#current-chapter.update("Chapter 5: Final Accounts of a Sole Trader")

#pagebreak()

#chapter-opener(
  5,
  "Final Accounts of a Sole Trader",
  subtitle: "Trading Account, Profit and Loss Account, Balance Sheet, and the Six Adjustments",
  syllabus-ref: "Sec. 5 • Final Accounts and Year-End Adjustments",
  utme-weight: "10 Qs a year",
  running: "Final Accounts of a Sole Trader",
)

#focus-radar(
  objectives: (
    "Prepare a trading account and compute cost of sales and gross profit.",
    "Prepare a profit and loss account and compute net profit.",
    "Prepare a balance sheet in the vertical or the horizontal form.",
    "Treat accruals, prepayments, depreciation, bad debts, provisions and closing stock.",
    "Compute the capital figure from the adjusted net profit and drawings.",
    "Recognise the statement in which each adjustment belongs.",
  ),
  hotspots: (
    "*Cost of sales = opening stock + purchases − closing stock.* Returns inwards reduce sales; returns outwards reduce purchases; carriage inwards is part of cost.",
    "*Gross profit = sales − cost of sales*, and *net profit = gross profit + other income − expenses*.",
    "*Closing stock appears twice:* in the trading account as a deduction, and in the balance sheet as a current asset.",
    "*Accrued expense:* add to the expense and show a current liability. *Prepaid expense:* deduct from the expense and show a current asset.",
    "*Depreciation* is an expense in the profit and loss account and a deduction from the asset in the balance sheet.",
    "*Capital in the balance sheet* = opening capital + net profit + fresh capital − drawings.",
  ),
  trap-summary: "Four slips. (1) Adding closing stock instead of deducting it. (2) Putting depreciation in the trading account, where it does not belong. (3) Forgetting that a provision for doubtful debts is charged to the profit and loss account and deducted from debtors in the balance sheet. (4) Showing the accrual only in the balance sheet and forgetting to add it to the expense.",
)

// ============================================================================
== 5.1 The Trading Account

The trading account answers one question: *what did the goods we sold cost us?* Everything else in the final accounts follows from that figure.

#formula-box("Trading account, for the year ended 31 December")[
  #text(size: 9.5pt)[*Sales − returns inwards = net sales*] \
  #text(size: 9.5pt)[*Opening stock + purchases − returns outwards + carriage inwards − closing stock = cost of sales*] \
  #text(size: 9.5pt)[*Net sales − cost of sales = GROSS PROFIT*]
]

#table(
  columns: (2.1fr, 0.9fr, 0.9fr),
  inset: (x: 6pt, y: 4.4pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Trading account],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[₦],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[₦],
  ),
  [Sales], [], [420,000],
  [Less returns inwards], [], [(20,000)],
  [*Net sales*], [], [*400,000*],
  [Opening stock], [40,000], [],
  [Add purchases], [260,000], [],
  [Less returns outwards], [(10,000)], [],
  [Add carriage inwards], [10,000], [],
  [Goods available for sale], [300,000], [],
  [Less closing stock], [(50,000)], [],
  [*Cost of sales*], [], [*(250,000)*],
  [*Gross profit c/d*], [], [*150,000*],
)

#v(3pt)

Three figures in that account decide most marks. *Carriage inwards* is part of the cost of the goods and belongs in the trading account; *carriage outwards* is a selling expense and belongs in the profit and loss account. *Returns inwards* reduces sales; *returns outwards* reduces purchases. And *closing stock* is deducted, never added — a candidate who adds it produces a cost of sales that is too high by twice the stock.

// ============================================================================
== 5.2 The Profit and Loss Account

The profit and loss account starts with the gross profit brought down and charges against it every expense of running the business, together with any income that is not trading income.

#formula-box("Profit and loss account")[
  #text(size: 9.5pt)[*Gross profit + other income − expenses = NET PROFIT*] \
  #text(size: 9.3pt)[discount received and rent received are income; discount allowed, wages, rent, rates, depreciation, bad debts and the provision charge are expenses]
]

#table(
  columns: (1.35fr, 1.35fr, 1.35fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Goes in the trading account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Goes in the profit and loss account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Goes in the balance sheet only],
  ),
  [opening stock, purchases, carriage inwards], [wages, rent, rates, depreciation, bad debts, provision charge, carriage outwards], [closing stock, debtors, creditors, cash, capital, drawings, fixed assets],
  [returns inwards and outwards], [discount allowed and received], [accruals and prepayments as balances],
  [closing stock (as a deduction)], [interest paid and received], [the provision itself, deducted from debtors],
)

#v(3pt)

#diagram-fig("diagrams/ch05_final.svg",
  "The three statements and where each adjustment lands: the trading account takes stock and carriage, the profit and loss account takes the running expenses, and the balance sheet takes the balances that survive the year.", width: 96%)

#text(size: 8.9pt)[Read the figure as an instruction. Every item on the trial balance is asked one question — *do you belong to the goods, to the running of the business, or to the position at the year end?* — and the answer decides which of the three statements receives it. An item put in the wrong box is a mark lost twice: once where it is written, and once where it should have been.]

// ============================================================================
== 5.3 The Balance Sheet

The balance sheet is a *position at a date*, not a period: assets on one side, capital and liabilities on the other, and the two sides equal because the equation says they must.

#formula-box("The balance sheet, in vertical form")[
  #text(size: 9.4pt)[*Fixed assets* (cost less depreciation) + *current assets* (stock, debtors less provision, cash) − *current liabilities* = *net assets*] \
  #text(size: 9.4pt)[and *net assets = capital* (opening + profit + fresh capital − drawings)]
]

#table(
  columns: (1.15fr, 1.55fr, 1.55fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The trap],
  ),
  [*Fixed assets*], [land, buildings, machinery, vehicles, furniture — at cost less accumulated depreciation], [depreciation is deducted here, not shown as a liability],
  [*Current assets*], [stock, debtors (less provision), prepayments, cash and bank], [a debit balance at the bank is a current liability, not an asset],
  [*Current liabilities*], [creditors, accruals, bank overdraft], [an accrual is a liability, never an asset],
  [*Long-term liabilities*], [loans and debentures repayable after a year], [the current portion of a loan belongs with current liabilities],
  [*Capital*], [opening capital + net profit + capital introduced − drawings], [drawings reduce capital; they are not an expense],
)

#v(2pt)

*Ratios* finish the chapter. The *current ratio* is current assets ÷ current liabilities; the *acid test* removes stock first, because stock may take months to sell; *gross profit margin* is gross profit ÷ sales; and *return on capital employed* is net profit ÷ capital. Each answers a question the lender or the owner actually asks, which is why the paper asks them by name.

// ============================================================================
== 5.4 The Six Adjustments

A trial balance is drawn before the year's loose ends are tidied. The six adjustments below tidy them, and each one touches *two* places: the profit and loss account and the balance sheet.

#table(
  columns: (1.2fr, 1.6fr, 1.6fr),
  inset: (x: 4.4pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Adjustment],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[In the profit and loss account],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[In the balance sheet],
  ),
  [*Accrued expense*], [add to the expense], [current liability],
  [*Prepaid expense*], [deduct from the expense], [current asset],
  [*Accrued income*], [add to the income], [current asset],
  [*Income in advance*], [deduct from the income], [current liability],
  [*Depreciation*], [an expense for the year], [deduct from the asset as accumulated depreciation],
  [*Bad debts and provision*], [write-off is an expense; the increase in the provision is an expense], [deduct from debtors],
)

#v(2pt)

#trap-box("The provision is not the debt")[
  A *bad debt* is money that will never be collected, and it is written off. A *provision
  for doubtful debts* is an estimate of debts that may not be collected, and it is
  deducted from debtors without touching any individual account. The charge to the profit
  and loss account is only the *movement* in the provision — the new provision minus the
  old — not the provision itself. An option that charges the whole new provision when an
  old one exists is the classic distractor.
]

// ============================================================================
== 5.5 Four Worked Questions

#worked-example(
  1,
  "Cost of sales and gross profit",
  [Opening stock ₦40,000; purchases ₦260,000; closing stock ₦50,000; sales ₦420,000. Gross profit is

    A. ₦150,000 \\
    B. ₦170,000 \\
    C. ₦190,000 \\
    D. ₦210,000],
  [
    *Step 1 — cost of sales.* Opening stock 40,000 + purchases 260,000 − closing stock 50,000 = *₦250,000*.

    *Step 2 — gross profit.* Sales 420,000 − cost of sales 250,000 = *₦170,000*.

    *Check.* If closing stock had been added instead of deducted, cost of sales would have been 350,000 and gross profit ₦70,000 — a different option, and a different mistake.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "An accrual",
  [Rent paid during the year was ₦60,000, of which ₦10,000 was for next year, and ₦15,000 was owing at the year end. The rent charged to the profit and loss account is

    A. ₦45,000 \\
    B. ₦55,000 \\
    C. ₦65,000 \\
    D. ₦85,000],
  [
    *Step 1 — remove what belongs to next year.* 60,000 − 10,000 = ₦50,000.

    *Step 2 — add what belongs to this year but is unpaid.* 50,000 + 15,000 = *₦65,000*.

    *Step 3 — where does the rest go?* The ₦10,000 prepayment is a current asset; the ₦15,000 accrual is a current liability.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Net profit and capital",
  [A trader's gross profit is ₦300,000. Expenses are wages ₦70,000, rent ₦40,000, depreciation ₦30,000 and bad debts ₦10,000. His opening capital was ₦500,000, he introduced ₦50,000 and drew ₦60,000 during the year. His closing capital is

    A. ₦590,000 \\
    B. ₦610,000 \\
    C. ₦640,000 \\
    D. ₦700,000],
  [
    *Step 1 — net profit.* 300,000 − (70,000 + 40,000 + 30,000 + 10,000) = 300,000 − 150,000 = *₦150,000*.

    *Step 2 — the capital account.* Opening 500,000 + net profit 150,000 + capital introduced 50,000 − drawings 60,000.

    *Step 3 — closing capital.* 500,000 + 150,000 + 50,000 − 60,000 = *₦640,000*.

    *Step 4 — check.* Net assets must equal this figure: if the closing assets are 890,000 and the liabilities 250,000, net assets are 640,000, and the balance sheet balances.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "The provision for doubtful debts",
  [Debtors are ₦240,000 and a provision of 5% is required. The existing provision is ₦8,000. The charge to the profit and loss account and the net debtors in the balance sheet are

    A. ₦4,000 and ₦228,000 \\
    B. ₦12,000 and ₦228,000 \\
    C. ₦4,000 and ₦240,000 \\
    D. ₦8,000 and ₦232,000],
  [
    *Step 1 — the new provision.* 5% of 240,000 = *₦12,000*.

    *Step 2 — the charge.* Only the increase goes to the profit and loss account: 12,000 − 8,000 = *₦4,000*.

    *Step 3 — net debtors.* 240,000 − 12,000 = *₦228,000*.

    *Step 4 — eliminate.* B charges the whole provision and ignores the old one; C forgets to deduct it; D uses the old figure.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

#v(2pt)

#trap-box("Two figures that must agree")[
  After every final-accounts question, check the same figure in two places. The net profit
  carried to the capital account must equal the net profit in the profit and loss account;
  the net assets in the balance sheet must equal the closing capital. When the two agree,
  the arithmetic is right even if a line has been classified oddly; when they disagree, the
  mistake is in the posting and not in the addition.
]

// ============================================================================
== 5.6 Two-Minute Set

#mcq(1, [Cost of sales is], [opening stock plus purchases plus closing stock], [opening stock plus purchases less closing stock], [sales less closing stock], [purchases less opening stock])

#mcq(2, [Carriage outwards is charged in the], [trading account], [profit and loss account], [balance sheet as an asset], [capital account])

#mcq(3, [A prepayment at the year end is], [a current liability], [a current asset], [an expense of the year], [a deduction from capital])

#mcq(4, [Closing capital equals], [opening capital plus profit plus drawings], [opening capital plus profit plus capital introduced less drawings], [opening capital less profit plus drawings], [net assets plus liabilities])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Goods available for sale less what is left gives what was sold; adding closing stock would count the unsold goods as sold.]),
  ("B", [Carriage outwards is the cost of delivering to customers, a selling expense; carriage inwards is part of the cost of the goods.]),
  ("B", [The benefit has not yet been consumed, so it is an asset carried into next year, and the expense of this year is reduced by it.]),
  ("B", [Profit and fresh capital increase the owner's stake; drawings reduce it; the closing figure is the net assets.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the three statements and where each adjustment belongs.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The trading account turns stock and purchases into cost of sales, and sales into gross profit. The profit and loss account charges every running expense against that gross profit, adds any other income, and produces net profit. The balance sheet then states the position at a date: fixed assets less depreciation, current assets including stock and net debtors, less current liabilities, equals net assets, which equals capital plus profit plus fresh capital less drawings. The six adjustments each touch two places — an accrual adds to an expense and creates a liability, a prepayment reduces an expense and creates an asset, depreciation charges the profit and loss account and reduces the asset, and a provision for doubtful debts charges only its movement while reducing debtors by the whole provision.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Write the cost of sales formula and compute it from five figures.],
  [State where carriage inwards and carriage outwards are charged.],
  [Treat an accrual and a prepayment, naming both entries each time.],
  [Compute closing capital from opening capital, profit and drawings.],
  [Compute the charge for a provision when an old provision exists.],
  [Name the four ratios and say what each one measures.],
))

#concept-box("Carry this into Chapter 6")[
  Everything in Chapter 5 assumed the trial balance was right. Chapter 6 asks what happens
  when it is not: the six errors, which of them the trial balance can see, and the suspense
  account that holds the difference until the last one is found.
]

#include "drill_ch05.typ"
