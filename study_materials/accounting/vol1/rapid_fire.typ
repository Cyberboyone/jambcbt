#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sixty one-line prompts with the answer beside each: twenty definitions, twenty
    figures and formulas, and twenty facts about the way the accounts are organised.
    Cover the right-hand column with a sheet of paper and work down the list — ten
    seconds a line. Anything you cannot answer in ten seconds is a chapter to reread
    tonight.
  ]
]

#v(5pt)

== A.1 Twenty Definitions

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Accounting], [the measurement and communication of financial information for decisions],
  [Bookkeeping], [the recording and classifying of transactions],
  [Business entity], [the business is treated as separate from its owner],
  [Going concern], [the firm will continue in operation for the foreseeable future],
  [Accruals], [income and expense are matched to the period they relate to, not to the cash],
  [Realisation], [revenue is recognised when the sale is made and the goods pass],
  [Prudence], [provide for losses, never anticipate profit],
  [Consistency], [the same method is used from one period to the next],
  [Money measurement], [only items measurable in money are recorded],
  [Historical cost], [assets are recorded at what they cost, not at market value],
  [Materiality], [an item is disclosed if its omission would change a decision],
  [Capital expenditure], [spending that creates or improves a fixed asset],
  [Revenue expenditure], [spending on the day-to-day running of the business],
  [Debit], [an entry on the left-hand side of an account],
  [Trial balance], [a list of ledger balances at a date, to test the arithmetic],
  [Suspense account], [a temporary account holding a trial balance difference],
  [Control account], [a summary account that carries the totals of a personal ledger],
  [Provision for doubtful debts], [an estimate of the debts that may never be collected],
  [Working capital], [current assets less current liabilities],
  [Appropriation], [the division of profit among the owners],
)
]

#v(6pt)

== A.2 Twenty Figures and Formulas

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [The accounting equation], [assets = capital + liabilities],
  [The expanded equation], [assets = capital + profit − drawings + liabilities],
  [Cost of sales], [opening stock + purchases + carriage inwards − closing stock],
  [Gross profit], [sales − returns inwards − cost of sales],
  [Net profit], [gross profit + other income − expenses],
  [Closing capital], [opening capital + profit + capital introduced − drawings],
  [Working capital], [current assets − current liabilities],
  [Current ratio], [current assets ÷ current liabilities],
  [Acid test ratio], [(current assets − stock) ÷ current liabilities],
  [Gross profit margin], [gross profit ÷ sales × 100],
  [Mark-up], [gross profit ÷ cost of sales × 100],
  [Net profit ratio], [net profit ÷ sales × 100],
  [Return on capital employed], [net profit ÷ capital employed × 100],
  [Straight-line depreciation], [(cost − residual value) ÷ useful life],
  [Reducing balance depreciation], [a fixed percentage of the book value each year],
  [Provision charge], [closing provision − opening provision],
  [Partnership residual profit], [net profit + interest on drawings − salaries − interest on capital],
  [Company retained profit], [profit after tax − reserves − preference dividend − ordinary dividend],
  [Club subscriptions income], [received + arrears at start − arrears at end + advance at end − advance at start],
  [A difference divisible by nine], [a transposition],
)
]

#v(6pt)

== A.3 Twenty Facts About the Organisation of the Accounts

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [The five books of original entry], [sales, purchases, returns inwards, returns outwards, general journal],
  [The two-column book], [the cash book, which is both journal and ledger],
  [The order of the books], [document → day book → ledger → trial balance → final accounts],
  [The imprest], [a fixed float, reimbursed by the amount spent],
  [A contra entry], [an entry on both sides of the cash book, for cash banked or withdrawn],
  [A debit note is issued by], [the buyer],
  [A credit note is issued by], [the seller],
  [The document of title in foreign trade], [the bill of lading],
  [The sales ledger control account balance], [a debit balance, the total owed by debtors],
  [The purchases ledger control account balance], [a credit balance, the total owed to creditors],
  [A bank statement credit balance], [money held for the firm by the bank],
  [A cash book credit balance in the bank column], [an overdraft],
  [Unpresented cheques], [added to the bank statement balance or deducted from the cash book balance],
  [Errors that the trial balance reveals], [one-sided errors],
  [Errors that it does not reveal], [errors of principle, omission, commission, original entry and compensating errors],
  [The first step in correcting an error], [decide what should have been done, then what was done],
  [Interest on capital], [an appropriation, credited to the partner's current account],
  [A debit balance on a current account], [the partner has over-drawn],
  [A debenture], [a loan to a company, carrying fixed interest],
  [A receipts and payments account], [a summary of cash, on the cash basis],
)
]

#v(4pt)

#v(6pt)

== A.4 Five Formats to Write From Memory

#text(size: 9pt)[The paper does not ask you to recite these; it asks you to *use* them, under a clock, on a page. Cover the right-hand column and write each format out in full on rough paper. A format you can write in ninety seconds is a format you can use in the hall.]

#v(3pt)

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.45fr, 2.75fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + top, left + top),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Format],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The lines, in order]),
  [*The trading account*], [sales less returns inwards; opening stock; purchases less returns outwards; carriage inwards; less closing stock; gross profit],
  [*The sales ledger control account*], [Dr: opening balance, credit sales. Cr: receipts, returns inwards, bad debts, discount allowed, balance c/d],
  [*The bank reconciliation*], [adjusted cash book first: charges and standing orders out, direct credits in; then statement balance, add lodgements, less unpresented cheques],
  [*The appropriation account*], [profit plus interest on drawings, less salaries, less interest on capital; residual by ratio; then each partner's current account],
  [*The company appropriation*], [profit after tax, less transfer to reserve, less preference dividend, less ordinary dividend, add retained profit brought forward],
)
]

#v(4pt)

#concept-box("Ten seconds a line, out loud")[
  + *Read the prompt, say the answer, then look.* Looking first turns the exercise into reading, and reading is not recall.
  + *Mark the misses in the margin, not in your head.* The three or four lines you miss are tonight's revision, and the margin is the only record of them.
  + *Run the list twice on the morning of the paper.* Not to learn anything new — to arrive with the vocabulary already loaded.
]
