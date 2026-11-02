#import "template.typ": *

#current-chapter.update("Appendix F: Eight Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Eight Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Eight Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The eight layouts the paper asks a candidate to reproduce, each beside the
    half-answer that a hurried candidate writes. The arithmetic is set out line by line,
    because a layout is marked line by line.
  ]
]

#v(5pt)

#text(size: 9pt)[Read the half-answer first and mark it yourself. Most candidates recognise their own habits in it. Then read the full answer and note what was added: a formula, a unit, a sentence of conclusion — never a new fact.]

#v(6pt)

== F.1 The Trading and Profit and Loss Account

*From the following, prepare the trading and profit and loss account of Ngozi Traders for the year ended 31 December: sales ₦900,000; returns inwards ₦20,000; opening stock ₦80,000; purchases ₦560,000; returns outwards ₦15,000; carriage inwards ₦25,000; wages ₦70,000; rent ₦40,000; closing stock ₦95,000.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Sales 900,000 − purchases 560,000 = gross profit *₦340,000*. \
    Less wages 70,000 and rent 40,000: net profit *₦230,000*.
  ],
  [
    *Step 1 — the trading account.* \
    Sales 900,000 less returns inwards 20,000 = *880,000*. \
    Purchases 560,000 less returns outwards 15,000 = 545,000; add carriage inwards 25,000 = 570,000; add opening stock 80,000 = 650,000; less closing stock 95,000 = *cost of sales 555,000*. \
    Gross profit = 880,000 − 555,000 = *₦325,000*. \
    *Step 2 — the profit and loss account.* \
    Gross profit 325,000 less wages 70,000 and rent 40,000 = *net profit ₦215,000*. \
    *Step 3 — the check.* Gross profit margin = 325,000 ÷ 880,000 = 36.9 per cent.
  ],
)

#text(size: 8.6pt)[The half-answer has ignored stock altogether and used the sales figure before returns. Both are marks lost before the arithmetic begins. The trading account has one shape: sales less returns inwards, then cost of sales, then the difference.]

#v(6pt)

== F.2 The Provision for Doubtful Debts

*Debtors before adjustment are ₦420,000. A bad debt of ₦20,000 is to be written off and a provision of 5 per cent made on the remainder. The existing provision is ₦14,000. Show the charge and the net debtors.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Provision = 5% × 420,000 = *₦21,000*. \
    Charge to profit and loss = *₦21,000*. \
    Net debtors = 420,000 − 21,000 = *₦399,000*.
  ],
  [
    *Step 1 — write off the bad debt.* 420,000 − 20,000 = *₦400,000*. \
    *Step 2 — the provision required.* 5% × 400,000 = *₦20,000*. \
    *Step 3 — the charge is the movement, not the balance.* 20,000 − 14,000 existing = *₦6,000*. \
    *Step 4 — net debtors.* 400,000 − 20,000 = *₦380,000*, and the balance sheet shows the provision of ₦20,000 as a deduction.
  ],
)

#text(size: 8.6pt)[The half-answer has charged the whole new provision and left the bad debt inside debtors. The profit and loss account takes the *increase* in the provision; the balance sheet carries the *balance*. Two figures, two places, one mark each.]

#v(6pt)

== F.3 The Sales Ledger Control Account

*Opening debtors ₦260,000; credit sales ₦980,000; receipts from debtors ₦870,000; returns inwards ₦25,000; bad debts written off ₦10,000; discount allowed ₦15,000. Prepare the control account and find the closing balance.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Dr side: 260,000 + 980,000 = 1,240,000. \
    Cr side: 870,000 + 25,000 + 10,000 + 15,000 = 920,000. \
    Closing balance *₦320,000*.
  ],
  [
    *Dr:* opening balance 260,000; credit sales 980,000; total *1,240,000*. \
    *Cr:* receipts 870,000; returns inwards 25,000; bad debts 10,000; discount allowed 15,000; balance c/d *320,000*; total *1,240,000*. \
    The balance c/d of ₦320,000 is brought down on the debit side as the closing debtors. \
    *Check:* the personal ledger total must equal ₦320,000, which is what the control account proves.
  ],
)

#text(size: 8.6pt)[The half-answer reaches the right figure by luck of layout and loses the marks for the account. The paper marks the four lines of the credit side separately, and a list of numbers is not an account. Write the two sides, the totals and the balance carried down.]

#v(6pt)

== F.4 The Bank Reconciliation

*The cash book shows a debit balance of ₦472,000. The bank statement shows ₦545,000. Bank charges ₦12,000 and a standing order ₦40,000 appear only on the statement; a direct credit of ₦60,000 also appears only on the statement. Unpresented cheques total ₦95,000 and lodgements not yet credited ₦30,000. Prepare the adjusted cash book and the reconciliation.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Adjusted cash book = 472,000 + 60,000 − 12,000 − 40,000 = *₦480,000*. \
    Bank statement = 545,000 − 95,000 + 30,000 = *₦480,000*. \
    The two agree.
  ],
  [
    *Step 1 — the adjusted cash book.* Balance b/d 472,000; add direct credit 60,000 = 532,000; less bank charges 12,000 and standing order 40,000 = *₦480,000*. \
    *Step 2 — the reconciliation, starting from the statement.* Balance per statement 545,000; add lodgements not yet credited 30,000 = 575,000; less unpresented cheques 95,000 = *₦480,000*. \
    *Step 3 — the direction check.* Unpresented cheques are payments the firm has made and the bank has not, so they are *deducted* from the statement. Lodgements are receipts the bank has not seen, so they are *added*.
  ],
)

#text(size: 8.6pt)[The half-answer has the right figures and no working. In a reconciliation question the marks sit in the direction of every item: an unpresented cheque deducted, a lodgement added, a bank charge deducted from the cash book and a direct credit added to it. Write the label before the figure.]

#v(6pt)

== F.5 The Suspense Account

*The trial balance showed debits exceeding credits by ₦27,000 and a suspense account was opened. It was then found that the sales day book had been undercast by ₦18,000 and that purchases of ₦9,000 had been entered twice in the purchases account. Show the suspense account and the corrections.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Debits exceeded credits, so the suspense account is *debited* with ₦27,000. \
    Correction: credit suspense ₦27,000 and debit sales ₦18,000 and purchases ₦9,000.
  ],
  [
    *Step 1 — which side?* Debits are *larger*, so the suspense account must be *credited* to make the columns agree: suspense Cr ₦27,000. \
    *Step 2 — the corrections.* Undercast sales: Dr suspense 18,000, Cr sales 18,000. Purchases entered twice: Cr purchases 9,000, Dr suspense 9,000. \
    *Step 3 — the account.* Dr suspense 18,000 + 9,000 = 27,000; Cr balance 27,000. The account closes at nil. \
    *Step 4 — the effect on profit.* Sales rise 18,000 and purchases fall 9,000, so profit rises by *₦27,000*.
  ],
)

#text(size: 8.6pt)[The half-answer has the side of the suspense account backwards, which is the commonest single error in the chapter. Say it aloud: the bigger side is the side that is *right*, and suspense goes on the *smaller* side to make up the difference.]

#v(6pt)

== F.6 The Partnership Appropriation Account

*A and B share profits 3 : 2. Net profit for the year is ₦900,000. Interest on drawings is ₦10,000; salaries are A ₦150,000 and B ₦100,000; interest on capital at 5 per cent is allowed on capitals of A ₦600,000 and B ₦400,000. Prepare the appropriation account.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    A gets 3/5 × 900,000 = *₦540,000*. \
    B gets 2/5 × 900,000 = *₦360,000*.
  ],
  [
    *Step 1 — the divisible profit.* Net profit 900,000 + interest on drawings 10,000 = *₦910,000*. \
    *Step 2 — the appropriations.* Salaries 150,000 + 100,000 = 250,000; interest on capital 30,000 + 20,000 = 50,000; total 300,000. \
    *Step 3 — the residual.* 910,000 − 300,000 = *₦610,000*, shared 3 : 2: A 366,000, B 244,000. \
    *Step 4 — each partner's total.* A 150,000 + 30,000 + 366,000 = *₦546,000*; B 100,000 + 20,000 + 244,000 = *₦364,000*. The two total ₦910,000.
  ],
)

#text(size: 8.6pt)[The half-answer has divided the net profit and ignored every appropriation. Salaries and interest on capital come *out* of profit before the residual is shared, and interest on drawings goes *in*. The shares look close — ₦540,000 against ₦546,000 — which is why the error survives a careless check.]

#v(6pt)

== F.7 The Company Appropriation Account

*Profit before tax is ₦3,000,000 and tax is 30 per cent. The company transfers ₦250,000 to general reserve, pays an 8 per cent preference dividend on ₦1,500,000 of preference shares and a 15 per cent ordinary dividend on ₦3,000,000 of ordinary shares. Retained profit brought forward was ₦720,000. Compute the retained profit carried forward.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    3,000,000 − preference dividend 120,000 − ordinary dividend 450,000 = *₦2,430,000*. \
    Add retained profit 720,000 = *₦3,150,000* carried forward.
  ],
  [
    *Step 1 — tax first.* 30% × 3,000,000 = 900,000, so profit after tax = *₦2,100,000*. \
    *Step 2 — the appropriations.* Reserve 250,000; preference dividend 8% × 1,500,000 = 120,000; ordinary dividend 15% × 3,000,000 = 450,000; total 820,000. \
    *Step 3 — retained for the year.* 2,100,000 − 820,000 = *₦1,280,000*. \
    *Step 4 — carried forward.* 720,000 + 1,280,000 = *₦2,000,000*.
  ],
)

#text(size: 8.6pt)[The half-answer has paid the dividends out of untaxed profit and forgotten the reserve. Tax is a charge before any appropriation; reserves and dividends are appropriations of what is left. The order of the four lines is worth as much as the figure at the bottom.]

#v(6pt)

== F.8 The Club's Subscriptions Income

*A club has 400 members paying ₦2,500 a year. During the year it received ₦1,020,000 in subscriptions. Arrears at the start were ₦60,000 and at the end ₦100,000; subscriptions received in advance at the start were ₦20,000. Compute the subscriptions income for the year.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Subscriptions income = cash received = *₦1,020,000*. \
    Check: 400 × 2,500 = 1,000,000, so ₦20,000 is missing.
  ],
  [
    *Step 1 — the accruals adjustment.* Received 1,020,000; add arrears at the start 60,000 (last year's income, received this year); less arrears at the end 100,000 (this year's income, not yet received); add advance at the start 20,000 (this year's income, received last year). \
    *Step 2 — the income.* 1,020,000 + 60,000 − 100,000 + 20,000 = *₦1,000,000*. \
    *Step 3 — the check.* 400 members × ₦2,500 = *₦1,000,000*, which is exactly the figure the accruals method produced. The cash figure is not the income, and the membership count proves it.
  ],
)

#text(size: 8.6pt)[The half-answer has used the receipts and payments figure, which is a cash summary, as though it were income. A club can receive more cash than it earned and less than it earned; only the accruals adjustment and the membership count tell you which happened.]

#v(4pt)

#concept-box("The eight layouts, in one sentence each")[
  + *Trading account:* sales less returns inwards, less cost of sales (opening stock + purchases − returns outwards + carriage inwards − closing stock).
  + *Provision:* write off the bad debt, compute the provision on the remainder, charge only the movement.
  + *Control account:* two sides, all five items, balance carried down and brought down.
  + *Reconciliation:* adjust the cash book first, then explain the statement difference with the two timing items.
  + *Suspense:* the smaller side gets the suspense entry; correct both accounts, then close the account.
  + *Appropriation:* profit plus interest on drawings, less salaries and interest on capital, then the residual by ratio.
  + *Company:* tax first, then reserve, then preference dividend, then ordinary dividend, then carry forward.
  + *Club:* received, plus arrears at the start, less arrears at the end, plus advances at the start, less advances at the end.
]
