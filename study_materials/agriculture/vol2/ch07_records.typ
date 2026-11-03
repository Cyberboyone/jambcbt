#import "template.typ": *

#current-chapter.update("Chapter 7: Farm Records and Accounts")

#pagebreak()

#chapter-opener(
  7,
  "Farm Records and Accounts",
  subtitle: "The Paper Trail from the Receipt to the Balance Sheet, and the Figures a Farmer Decides With",
  syllabus-ref: "Part III • Farm Management",
  utme-weight: "6 Qs a year",
  running: "Farm Records and Accounts",
)

#focus-radar(
  objectives: (
    "State the purpose of farm records and name the four families of record.",
    "Describe the cash book, the ledger and the trial balance.",
    "Calculate depreciation and the value of a farm asset.",
    "Prepare a simple profit-and-loss account and a balance sheet.",
    "Use gross margin, break-even and return on capital to make a decision.",
  ),
  hotspots: (
    "“A record of the animals on a farm, their ages and their values is a …” — livestock inventory. The trap offers *production record*, which records milk or eggs.\n",
    "“Depreciation is …” — the fall in the value of an asset through use, age and obsolescence. The trap offers *the money set aside to replace it*, which is a sinking fund, not depreciation.\n",
    "“In a balance sheet, assets equal …” — liabilities plus capital. The trap offers *liabilities minus capital*, the sign reversed.\n",
    "“The gross margin of an enterprise is …” — output minus variable cost. The trap offers *output minus total cost*, which would be profit.",
  ),
  trap-summary: "Three slips. (1) Calling any money received *profit*: profit is what is left after every cost, including depreciation. (2) Putting a loan in the profit-and-loss account as income: a loan is a liability, not revenue. (3) Forgetting that a *cash-flow* problem can kill a profitable farm — the money is in the barn, but the feed bill is due today.",
)

// ============================================================================
== 7.1 Why a Farm Keeps Records

#table(
  columns: (1.1fr, 2.35fr, 1.35fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Use],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What the record allows],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Who asks for it],
  ),
  [Measure the season], [compare this year with last year, and this field with that one], [the farmer],
  [Plan the next season], [decide what to plant, how much to borrow and when to sell], [the farmer and the family],
  [Obtain credit], [show a lender that the farm can repay], [the bank, the cooperative, NIRSAL],
  [Settle a dispute], [prove a sale, a wage or a debt], [the court, the family, the tax office],
  [Apply for insurance], [value the stock and the asset insured], [the insurer],
  [Improve the enterprise], [find the one enterprise that loses money], [the extension officer and the farmer],
)

#v(3pt)

#rule-box("The test of a record")[
  A record is useful only if it answers a question the farmer actually asks. "How much did the
  layers earn last quarter?" is a question; "a list of every egg collected" is not a record until
  it is added up and set against the feed bill.
]

// ============================================================================
== 7.2 The Four Families of Record

#table(
  columns: (1.05fr, 1.9fr, 1.85fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Family],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What is written down],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example entry],
  ),
  [Production], [what the farm produced, and when], [412 eggs on 4 March; 18 litres of milk],
  [Financial], [every naira that came in or went out], [₦45 000 for feed on 6 March],
  [Inventory], [the stock and the equipment, with values], [24 layers; one Generator, ₦180 000],
  [Labour], [who worked, for how long, and for what pay], [Musa, 6 days, ₦3 000 a day],
)

#v(4pt)

#table(
  columns: (1.05fr, 2.05fr, 1.8fr),
  inset: (x: 6pt, y: 3.6pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Book],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it is kept],
  ),
  [Source document], [the receipt, invoice, waybill or wage sheet], [filed in date order; nothing entered without one],
  [Cash book], [receipts on one side, payments on the other], [written up daily, balanced monthly],
  [Ledger], [one account per enterprise, animal or supplier], [posted from the cash book],
  [Trial balance], [the list of ledger balances, debit and credit], [the two columns must agree],
  [Stock card], [the movement of feed, seed and drugs], [every issue signed for],
)

// ============================================================================
== 7.3 Depreciation and Valuation

#text(size: 9.8pt)[
  A machine is not an expense in the year it is bought; it is an asset that loses value every year
  it is used. That loss is *depreciation*, and it must be charged against the year's profit or the
  profit is overstated.
]

#table(
  columns: (1.2fr, 2.1fr, 1.5fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Example],
  ),
  [Cost], [the price paid, plus the cost of bringing it to the farm], [a sprayer ₦60 000, carriage ₦5 000: cost ₦65 000],
  [Salvage value], [what it will be worth at the end of its life], [₦5 000],
  [Useful life], [the years the farm expects to use it], [6 years],
  [Annual depreciation], [(cost − salvage) ÷ useful life], [(65 000 − 5 000) ÷ 6 = ₦10 000 a year],
  [Book value], [cost − the depreciation charged so far], [₦65 000 − 3 × ₦10 000 = ₦35 000 after three years],
)

#v(3pt)

#block(width: 100%, fill: jamb-light, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[WHAT IS DEPRECIATED AND WHAT IS NOT]
  #v(3pt)
  #text(size: 9.6pt)[
    Depreciate the *durable* asset: the plough, the sprayer, the generator, the pond, the building,
    the dairy cow. Do not depreciate the *current* asset: feed, seed, drugs and fuel are used up in
    the season and are simply an expense. Land is not depreciated, because it does not wear out.
  ]
]

// ============================================================================
== 7.4 The Three Statements

#table(
  columns: (1.15fr, 2.05fr, 1.75fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Statement],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it shows],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[The formula],
  ),
  [Profit and loss], [the result of the season's trading], [revenue − (variable + fixed costs) = profit or loss],
  [Balance sheet], [what the farm owns and owes on one day], [assets = liabilities + capital],
  [Cash flow], [the money that actually moved, month by month], [opening cash + receipts − payments = closing cash],
)

#v(4pt)

#text(size: 9.7pt)[
  The *profit-and-loss account* separates the *variable costs* that rise with the size of the
  enterprise — feed, drugs, casual labour, fuel — from the *fixed costs* that do not — rent,
  depreciation, the salary of a permanent worker, insurance. The separation is what makes the
  gross margin possible, and the gross margin is what tells the farmer which enterprise to expand.
]

// ============================================================================
#diagram-fig("diagrams/agr2_ch07_records.svg",
  "7.1 — the paper trail from source document to balance sheet, and the three statements.", width: 98%)

== 7.5 The Decision Figures

#table(
  columns: (1.15fr, 2.05fr, 1.75fr),
  inset: (x: 6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What it answers],
  ),
  [Gross margin], [output − variable cost], [which enterprise deserves the next naira],
  [Net profit], [gross margin − fixed cost], [whether the farm as a whole made money],
  [Break-even], [fixed cost ÷ gross margin per unit], [how many birds or bags before the farm covers itself],
  [Return on capital], [(profit ÷ capital) × 100], [whether the money would do better elsewhere],
  [Labour productivity], [output ÷ number of workers], [whether to hire or to mechanise],
)

#v(3pt)

#text(size: 9.7pt)[
  A *budget* is the same arithmetic done before the season rather than after it: the expected
  output, the expected cost, and the difference. A *farm plan* puts the budgets together with the
  land, the labour and the cash available, and asks whether the farm can do all of it at once.
  The plan is the farmer's answer to the question the lender asks: *what will you do with the
  money, and what will it earn?*
]

// ============================================================================
== 7.6 Four Worked Questions

#worked-example(
  1,
  "Depreciation in one line",
  [A tractor costs ₦2 400 000, has a salvage value of ₦400 000 and a useful life of 8 years. Its
  annual depreciation is

    A. ₦200 000 \\
    B. ₦250 000 \\
    C. ₦300 000 \\
    D. ₦350 000],
  [
    *Step 1 — write the formula.* Depreciation = (cost − salvage) ÷ useful life.

    *Step 2 — substitute.* (2 400 000 − 400 000) ÷ 8 = 2 000 000 ÷ 8.

    *Step 3 — divide.* 2 000 000 ÷ 8 = ₦250 000 a year.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The gross margin",
  [A layer enterprise sold eggs worth ₦480 000 in a quarter. Feed cost ₦260 000, drugs ₦20 000 and
  casual labour ₦40 000; rent and depreciation were ₦60 000. The gross margin is

    A. ₦100 000 \\
    B. ₦160 000 \\
    C. ₦220 000 \\
    D. ₦480 000],
  [
    *Step 1 — separate the costs.* Variable: feed 260 000 + drugs 20 000 + labour 40 000 = 320 000.
    Fixed: rent and depreciation 60 000.

    *Step 2 — apply the formula.* Gross margin = output − variable cost = 480 000 − 320 000 =
    160 000.

    *Step 3 — check against the other figure.* Net profit would be 160 000 − 60 000 = 100 000. The
    question asks for the gross margin, so 160 000 is the answer and 100 000 is the trap.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Break-even",
  [A poultry farmer has fixed costs of ₦240 000 a year. Each bird sold gives a gross margin of
  ₦1 200. How many birds must she sell to break even?

    A. 120 \\
    B. 200 \\
    C. 240 \\
    D. 288],
  [
    *Step 1 — recall the formula.* Break-even = fixed cost ÷ gross margin per unit.

    *Step 2 — substitute.* 240 000 ÷ 1 200 = 200 birds.

    *Step 3 — interpret.* Below 200 birds the farm loses money; above it, every bird adds ₦1 200 to
    profit. That number is the single most useful figure in the plan.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The loan that looked like income",
  [A farmer borrows ₦500 000 and records it in the receipts column of the profit-and-loss account.
  At the end of the year he reports a profit of ₦500 000 on a farm that actually lost ₦80 000. The
  error is that

    A. the loan was not spent \\
    B. a loan is a liability, not revenue \\
    C. the interest was too high \\
    D. the cash book should not be used],
  [
    *Step 1 — classify the item.* A loan increases the cash and increases what the farm owes. It does
    not arise from selling anything.

    *Step 2 — place it correctly.* It belongs on the balance sheet as a liability, and the interest
    on it belongs in the profit-and-loss account as a cost.

    *Step 3 — explain the distortion.* Putting the principal in receipts turns a borrowing into a
    profit and hides a losing year — the commonest error in farm book-keeping, and the reason a
    lender asks for the cash book as well as the profit statement.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 7.7 Chapter 7 in the Exam Hall — a Two-Minute Set

#mcq(1, [The record that shows the number and value of animals on a farm is the], [production record], [livestock inventory], [cash book], [labour record])

#mcq(2, [Depreciation is best described as], [money set aside to replace an asset], [the fall in the value of an asset through use and age], [the cost of repairs], [the interest on a loan])

#mcq(3, [In a balance sheet, assets are equal to], [liabilities − capital], [liabilities + capital], [capital − liabilities], [revenue − cost])

#mcq(4, [Gross margin is], [output minus total cost], [output minus variable cost], [profit plus fixed cost], [fixed cost minus variable cost])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The inventory lists the animals, their ages, their sex and their value.]),
  ("B", [Depreciation is the loss in value; a sinking fund is the money set aside.]),
  ("B", [Assets = liabilities + capital is the accounting identity; everything the farm owns was financed by a debt or by the owner.]),
  ("B", [Variable costs only. Subtract fixed costs as well and you have net profit.]),
))

#diagram-fig("diagrams/recap_agr2_ch07.svg",
  "Chapter 7 recap card: the record families, the books, the three statements and the four figures.", width: 70%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A farm's records divide into production, financial, inventory and labour, and every entry
    begins with a source document. The cash book records the money, the ledger sorts it by
    enterprise, and the trial balance proves the arithmetic. Depreciation spreads the cost of a
    durable asset over its life; the profit-and-loss account measures the season; the balance sheet
    values the farm; the cash flow keeps it alive. Gross margin, break-even and return on capital
    are the three figures a farmer actually decides with.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [Name the four families of record and one entry in each.],
  [Distinguish a receipt, an invoice, a cash book and a ledger.],
  [Calculate the annual depreciation of an asset, given its cost, salvage and life.],
  [Write the formulas for gross margin, net profit, break-even and return on capital.],
  [Explain why a profitable farm can still fail for want of cash.],
))

#concept-box("Carry this into Chapter 8")[
  A farmer who keeps those records has something to show an extension officer, a cooperative and a
  bank — and the last chapter is about all three. Extension carries the method to the farm, the
  cooperative carries the farmer's voice to the market, and policy decides the price of the credit,
  the fertiliser and the insurance that sit underneath both.
]

#include "drill_ch07.typ"
