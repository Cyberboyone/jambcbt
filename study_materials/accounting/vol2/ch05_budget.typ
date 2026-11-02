#import "template.typ": *

#current-chapter.update("Chapter 5: Budgeting and Budgetary Control")

#pagebreak()

#chapter-opener(
  5,
  "Budgeting and Budgetary Control",
  subtitle: "Planning the Year in Figures, and Finding Out in March That the Plan Was Wrong",
  syllabus-ref: "Sec. 15 • Budgeting and Budgetary Control",
  utme-weight: "5 Qs a year",
  running: "Budgeting and Budgetary Control",
)

#focus-radar(
  objectives: (
    "Define a budget, a budget centre and budgetary control.",
    "State the purposes of budgeting and the order in which the functional budgets are prepared.",
    "Prepare a production budget, a materials purchases budget and a labour budget.",
    "Prepare a cash budget with lagged receipts and payments.",
    "Distinguish a fixed from a flexible budget and compute a simple variance.",
    "Explain the behavioural problems a budget can create.",
  ),
  hotspots: (
    "*The sales budget comes first.* Every other budget is derived from it, so a question that gives production before sales is giving you the answer in the wrong order — and asking you to reverse it.",
    "*Production = sales + closing stock − opening stock.* The same \(+O - C\) shape as the manufacturing ladder, with stock in units rather than naira.",
    "*A cash budget is not a profit budget.* Credit sales enter it when the debtor pays; depreciation never enters it at all.",
    "*A flexible budget is flexed to actual activity before any variance is computed.* Comparing actual cost at 1,200 units with a budget built for 1,000 units tells you nothing except that you produced more.",
  ),
  trap-summary: "Four slips. (1) Preparing the production budget before the sales budget. (2) Adding the closing stock of finished goods instead of deducting the opening. (3) Putting a credit sale into the cash budget in the month of sale. (4) Calling every variance a failure — a variance is favourable or adverse, and an adverse materials variance may be the fault of the purchasing officer or of the production supervisor.",
)

// ============================================================================
== 5.1 What a Budget Is, and What It Is For

A *budget* is a financial plan for a defined period, expressed in quantities or in money, prepared in advance of that period. *Budgetary control* is the use of those budgets to compare what happened with what was planned, and to act on the difference.

#table(
  columns: (1.25fr, 3.1fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Purpose],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it means in practice],
  ),
  [*Planning*], [it forces the firm to decide, in advance, what it intends to sell, make and spend],
  [*Co-ordination*], [the sales manager's plan becomes the production manager's target, and the buyer's order book],
  [*Control*], [actual results are compared with the budget, and the difference is investigated],
  [*Communication*], [every manager knows the figure he is responsible for, and the standard he is judged against],
  [*Motivation*], [a target that is challenging but achievable gives a reason to improve],
  [*Resource allocation*], [money and machine time are given to the activities that the plan says matter],
)

#v(2pt)

#text(size: 9.5pt)[The budget *period* is usually a year, divided into months or quarters so that control can happen during the year rather than after it. The *budget committee* co-ordinates the functional budgets and settles disputes between them, and the *budget centre* is the smallest unit for which a budget is prepared and a manager held responsible. A budget prepared from last year's figures with an adjustment is *incremental*; a budget built from zero, justifying every naira of cost afresh, is *zero-based*. Zero-based budgeting is slower and dearer, and it is used where costs have grown without explanation.]

#concept-box("The budget is a standard, not a forecast")[
  A forecast says what is likely to happen. A budget says what the firm *intends* to make
  happen, and it carries authority: a manager who spends beyond his budget is answerable
  for it. That is why a question asking for the "purpose of a budget" expects control and
  co-ordination, not merely prediction.
]

// ============================================================================
== 5.2 The Functional Budgets, in Order

#table(
  columns: (1.15fr, 1.55fr, 1.65fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Budget],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Built from],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The figure it produces],
  ),
  [*Sales*], [the market forecast, by product and by month], [units to be sold, and sales revenue — the budget every other one depends on],
  [*Production*], [sales units, and the stock policy], [units to be made],
  [*Materials purchases*], [production units × material per unit, and stock policy], [quantity and cost of material to be bought],
  [*Labour*], [production units × hours per unit × the wage rate], [hours and wages, by department],
  [*Overhead*], [each cost centre's expected costs, split fixed and variable], [the overhead to be absorbed or spent],
  [*Cash*], [the receipts and payments of every other budget, with their timing], [the bank balance at the end of each month],
)

#v(2pt)

#formula-box("The two budgets the paper asks for by name")[
  #text(size: 9.4pt)[
    *Production units* = sales units + closing stock of finished goods − opening stock of finished goods \
    *Material purchases* = material required for production + closing stock of material − opening stock of material \
    *Labour hours* = production units × standard hours per unit
  ]
]

#v(2pt)

#text(size: 9.5pt)[Both formulas are the same formula: what you need, plus what you want left over, less what you already have. In the production budget the "need" is sales; in the materials budget it is production usage. A question that gives you opening and closing stock in naira rather than in units is testing whether you can convert them — divide by the cost per unit before you use them.]

#shortcut-box("Write the skeleton before you read the figures")[
  + Production: *sales units*, *add closing stock*, *less opening stock*, *equals units to make*.
  + Materials: *usage*, *add closing stock*, *less opening stock*, *equals purchases*.
  + Cash: *opening balance*, *add receipts*, *less payments*, *equals closing balance*.
  Four lines each, in that order. The examiner's figures then have only one place to go, and the arithmetic is four lines long instead of twenty.
]

// ============================================================================
== 5.3 Budgetary Control and the Flexible Budget

Control compares the budget with the actual, and the difference is a *variance*. A variance in the firm's favour is *favourable* (F); one against it is *adverse* (A).

#table(
  columns: (1.25fr, 1.35fr, 1.75fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Variance],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Favourable when],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Who usually explains it],
  ),
  [Sales variance], [actual sales exceed budget], [the sales manager, or a price change in the market],
  [Materials price variance], [the actual price is below standard], [the purchasing officer],
  [Materials usage variance], [less material was used than standard], [the production supervisor],
  [Labour rate variance], [the actual rate is below standard], [the personnel or production manager],
  [Labour efficiency variance], [fewer hours were worked than standard], [the production supervisor],
  [Overhead expenditure variance], [less was spent than budgeted], [the cost-centre manager],
)

#v(3pt)

#text(size: 9.5pt)[A *fixed budget* is built for one level of activity, and it is useless for control the moment the actual activity differs. A *flexible budget* is rebuilt at the actual activity before the comparison: the variable costs are recalculated at the actual units, and the fixed costs stay as they were. Only then does the variance measure the thing it is supposed to measure — cost control, not the volume of production.]

#table(
  columns: (1.5fr, 1.05fr, 1.05fr, 1.1fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, right + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Fixed budget 1,000 units ₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Flexed to 1,200 units ₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Actual 1,200 units ₦],
  ),
  [Variable cost at ₦20 a unit], [20,000], [24,000], [24,500],
  [Fixed cost], [10,000], [10,000], [9,800],
  [*Total*], [*30,000*], [*34,000*], [*34,300*],
)

#v(2pt)

#text(size: 9.5pt)[Compared with the *fixed* budget, the actual total of ₦34,300 looks ₦4,300 over. Compared with the *flexed* budget it is ₦300 over — and that ₦300 is the only figure that reflects control: ₦500 overspent on variable cost and ₦200 saved on fixed cost. The other ₦4,000 is simply the variable cost of producing 200 more units, which is what the plan intended.]

// ============================================================================
== 5.4 The Cash Budget

The cash budget is the one budget that can stop a profitable firm. It records cash *received* and cash *paid*, in the month the money moves, and it ends with the bank balance for each month.

#table(
  columns: (1.0fr, 1.55fr, 1.85fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Section],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What enters it],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What does not],
  ),
  [*Receipts*], [cash sales; debtors paying, by their credit period; loans received; sale of an asset; capital introduced], [a credit sale, until the debtor pays],
  [*Payments*], [cash purchases; creditors paid; wages; rent; rates; tax; dividends; purchase of an asset; loan repayment and interest], [depreciation; a provision; a bad debt written off],
  [*Balance*], [opening balance + receipts − payments = closing balance], [the closing balance of profit as a substitute for cash],
)

#v(2pt)

#diagram-fig("diagrams/ch05_budget.svg",
  "The master budget: the sales budget at the top, the production, materials and labour budgets derived from it, and the cash budget built beside them from the same figures but with different timing.", width: 97%)

#v(2pt)

#text(size: 9.5pt)[Three timing rules do most of the work. A debtor who pays one month after the sale puts this month's credit sales into *next* month's receipts. A creditor paid two months after the purchase puts this month's purchases into the receipts and payments of the month after next. And a depreciation charge, being neither received nor paid, never appears in the cash budget at all, however large it is in the profit and loss account.]

#trap-box("Depreciation is a cost with no cash")[
  Every cash budget question contains at least one figure that must be left out, and
  depreciation is the usual one. The others are a provision for doubtful debts, a bad debt
  written off, and the profit or loss on the sale of an asset — the cash figure is the
  *proceeds*, not the profit. If a figure appears in the profit and loss account but no
  money moved, it does not belong in the cash budget.
]

// ============================================================================
== 5.5 When the Budget Itself Is the Problem

A budget is a human document, and it changes behaviour in ways the arithmetic does not predict.

#table(
  columns: (1.35fr, 2.85fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Problem],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What happens, and the remedy],
  ),
  [*Budget slack*], [a manager pads his budget so that he can beat it; the remedy is a challenge from above and a comparison with similar centres],
  [*Incrementalism*], [last year's figure plus five per cent, whether or not the cost is still needed; the remedy is zero-based budgeting],
  [*Short-termism*], [spending on training and maintenance is cut to protect this year's figure; the remedy is a longer budget period and non-financial measures],
  [*Departmental rivalry*], [each manager defends his own figure; the remedy is a budget committee with authority to settle],
  [*Unrealistic targets*], [a budget that cannot be met demotivates the whole centre; the remedy is participation in setting it],
)

#v(2pt)

#text(size: 9.5pt)[A budget prepared *bottom-up* by the managers who will be held to it is more realistic and more accepted, but slower and more prone to slack. A budget imposed *top-down* is fast and tight, but it may be resented and ignored. The examination answer is usually "participative budgeting, with a challenge from the budget committee" — which is both, in the right order.]

// ============================================================================
== 5.6 Worked Examples

#worked-example(
  1,
  "The production budget",
  tier: "FOUNDATION",
  [
    Budgeted sales are 5,000 units. Opening stock of finished goods is 400 units and the closing stock is to be 600 units. Production for the year is

    A. 4,800 units \\
    B. 5,000 units \\
    C. 5,200 units \\
    D. 6,000 units
  ],
  [
    *Step 1 — the skeleton.* Sales + closing stock − opening stock.

    *Step 2 — substitute.* 5,000 + 600 − 400 = *5,200 units*.

    *Step 3 — eliminate.* A reverses the stock adjustment; B ignores stock; D adds both figures instead of subtracting the opening.

    *Answer: C.*
  ],
)

#worked-example(
  2,
  "The materials purchases budget",
  tier: "UTME STANDARD",
  [
    Each unit needs 2 kg of material. Production is budgeted at 5,200 units. Opening stock of material is 800 kg and closing stock is to be 1,000 kg. Material costs ₦5 a kg. The purchases budget is

    A. 10,400 kg, ₦52,000 \\
    B. 10,600 kg, ₦53,000 \\
    C. 10,200 kg, ₦51,000 \\
    D. 11,200 kg, ₦56,000
  ],
  [
    *Step 1 — usage.* 5,200 × 2 = *10,400 kg*.

    *Step 2 — adjust for stock.* 10,400 + 1,000 − 800 = *10,600 kg*.

    *Step 3 — value.* 10,600 × 5 = *₦53,000*.

    *Step 4 — eliminate.* A forgets the stock adjustment; C reverses it; D uses 5,600 units of production instead of 5,200.

    *Answer: B.*
  ],
)

#worked-example(
  3,
  "A month of the cash budget",
  tier: "UTME STANDARD",
  [
    The opening cash balance is ₦20,000. Cash sales are ₦30,000 and debtors from last month's sales pay ₦40,000. Payments are creditors ₦35,000, wages ₦15,000 and rent ₦10,000. Depreciation of ₦5,000 is charged in the accounts. The closing cash balance is

    A. ₦25,000 \\
    B. ₦30,000 \\
    C. ₦35,000 \\
    D. ₦20,000
  ],
  [
    *Step 1 — receipts.* 30,000 + 40,000 = ₦70,000.

    *Step 2 — payments.* 35,000 + 15,000 + 10,000 = ₦60,000. Depreciation is excluded: no cash moved.

    *Step 3 — balance.* 20,000 + 70,000 − 60,000 = *₦30,000*.

    *Step 4 — eliminate.* A deducts the depreciation as well; C adds it; D ignores the receipts and payments altogether and keeps the opening balance.

    *Answer: B.*
  ],
)

#worked-example(
  4,
  "The loan the budget forces",
  tier: "JAMB CHALLENGE",
  [
    A firm's cash budget for March shows an opening balance of ₦12,000, receipts of ₦68,000 and payments of ₦96,000. The firm's policy is to keep a minimum balance of ₦10,000. The loan it must arrange in March is

    A. ₦16,000 \\
    B. ₦26,000 \\
    C. ₦28,000 \\
    D. ₦38,000
  ],
  [
    *Step 1 — the balance before borrowing.* 12,000 + 68,000 − 96,000 = *−₦16,000*, an overdraft.

    *Step 2 — the shortfall to the minimum.* The firm must reach ₦10,000 from −₦16,000, which is 10,000 − (−16,000) = *₦26,000*.

    *Step 3 — check.* 12,000 + 68,000 + 26,000 − 96,000 = ₦10,000, exactly the minimum.

    *Step 4 — eliminate.* A stops at the overdraft and forgets the minimum. C adds the minimum to the overdraft only once (16,000 + 10,000 is right only if the balance was zero, not negative). D adds the opening balance twice.

    *Answer: B.*
  ],
)

#v(2pt)

#trap-box("Do not budget a negative balance away")[
  A cash budget that ends in a negative figure is not a mistake in the arithmetic; it is the
  finding. The firm has two honest responses — borrow, or delay a payment — and one
  dishonest one, which is to move a payment into the next month so that the page looks
  better. The examiner's option list rarely contains the dishonest one, but it always
  contains the figure you get if you ignore the minimum balance.
]

// ============================================================================
== 5.7 Two-Minute Set

#mcq(1, [The budget from which all the other functional budgets are derived is the], [production budget], [sales budget], [cash budget], [materials budget])

#mcq(2, [Production is 4,000 units, opening stock 300, closing stock 500. Sales were], [3,800], [4,200], [4,800], [4,000])

#mcq(3, [Which item does NOT appear in a cash budget?], [payment of a creditor], [depreciation of machinery], [proceeds of a loan], [purchase of a vehicle for cash])

#mcq(4, [A flexible budget is one which], [is fixed for the year], [is adjusted to the actual level of activity], [is prepared by the budget committee], [contains only variable costs])

#answer-key-grid(("B", "A", "B", "B"))

#answer-notes((
  ("B", [The sales budget sets the volume that production, materials and labour must serve, so it is prepared first.]),
  ("A", [Sales = production + opening stock − closing stock = 4,000 + 300 − 500 = 3,800 units; reverse the production formula.]),
  ("B", [Depreciation is an allocation of a past cost, not a movement of cash, so it never enters the cash budget.]),
  ("B", [A flexible budget is rebuilt at the actual activity so that the variance measures control rather than volume.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: the order of the budgets, the production formula, the cash budget and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A budget is a plan with authority, and budgetary control is the comparison that follows it. The sales budget comes first; production is sales plus closing stock less opening; materials are usage plus closing stock less opening; labour is units times hours. The cash budget is built beside them from the same figures but with different timing: a credit sale enters when the debtor pays, a credit purchase when the creditor is paid, and depreciation never. Control compares actual with a *flexed* budget, so that the variance measures cost rather than volume, and the variances are labelled favourable or adverse and traced to the manager who can explain them. The weaknesses are human — slack, incrementalism, short-termism — and the remedy is participation with a challenge.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Define a budget, a budget centre and budgetary control.],
  [State four purposes of budgeting.],
  [Prepare a production and a materials purchases budget from sales and stock figures.],
  [Explain why the sales budget is prepared first.],
  [Prepare a simple cash budget with one month's lag on debtors.],
  [Distinguish fixed from flexible budgeting, and flex a budget at actual activity.],
))

#concept-box("Carry this into Chapter 6")[
  Chapters 1 to 5 assumed a ledger. Chapter 6 removes it. When the books are lost, incomplete
  or never kept, the profit has to be reconstructed from a cash book, a list of debtors and
  a physical count — and the two routes that do it are the subject of the next chapter.
]

#include "drill_ch05.typ"
