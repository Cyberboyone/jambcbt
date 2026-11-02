#import "template.typ": *

#current-chapter.update("Appendix D: The Glossary, A to Z")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Glossary, A to Z]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Glossary, A to Z]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every term the paper has used, defined in one line. The definitions are written to
    be quoted, not paraphrased: an examiner marking a definition question is looking for
    the words in the right order, and half a definition scores nothing.
  ]
]

#v(5pt)

#text(size: 9pt)[A term that appears in bold anywhere in Chapters 1 to 8 appears here. Where two terms are routinely confused with each other, the confused pair is collected at D.2 and the distinction is stated in the form the paper tests it.]

#v(5pt)

#[
  #set text(size: 8.2pt)
#table(
  columns: (1.05fr, 3.15fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Meaning]),
  [*Account*], [A record of the transactions affecting one item, kept in the ledger under a heading with two sides.],
  [*Accounting*], [The design of the financial system, the recording of transactions and the reporting and interpretation of the result.],
  [*Accounting equation*], [Assets = capital + liabilities; every transaction preserves the equality.],
  [*Accruals concept*], [Income and expense are recognised in the period they relate to, not when the cash moves.],
  [*Accrued expense*], [An expense that has been incurred but not yet paid; a current liability.],
  [*Accumulated depreciation*], [The total depreciation charged on an asset since it was bought; a deduction from cost.],
  [*Acid test ratio*], [Current assets less stock, divided by current liabilities; the strict test of liquidity.],
  [*Appropriation account*], [The account that divides profit among partners or among reserves and dividends in a company.],
  [*Assets*], [Resources controlled by the business from which future benefit is expected.],
  [*Bad debt*], [A debt that is known to be irrecoverable and is written off as an expense.],
  [*Balance b/d*], [Balance brought down: the opening figure carried from the previous period.],
  [*Balance c/d*], [Balance carried down: the closing figure written to make the two sides of an account agree.],
  [*Balance sheet*], [The statement of assets, liabilities and capital at a date.],
  [*Bank reconciliation statement*], [A statement that explains the difference between the cash book balance and the bank statement balance.],
  [*Bank statement*], [The bank's copy of the customer's account, sent periodically.],
  [*Book value*], [The cost of an asset less the accumulated depreciation charged on it.],
  [*Business entity concept*], [The business is treated as an entity separate from its owner.],
  [*Capital*], [The owner's claim on the business: assets less liabilities.],
  [*Capital expenditure*], [Spending that creates or improves a fixed asset, or extends its useful life.],
  [*Capital reserve*], [A reserve that cannot be distributed as dividend, such as a share premium.],
  [*Carriage inwards*], [The cost of bringing goods into the business; part of cost of sales.],
  [*Carriage outwards*], [The cost of delivering goods to customers; a selling expense in the profit and loss account.],
  [*Cash book*], [The book that records cash and bank receipts and payments; both a journal and a ledger.],
  [*Cash discount*], [A reduction allowed for prompt payment; recorded in the ledger.],
  [*Closing stock*], [Stock on hand at the end of the period; deducted in cost of sales and shown as a current asset.],
  [*Compensating error*], [Two errors of equal amount on opposite sides that cancel each other in the trial balance.],
  [*Consistency*], [The same accounting method is applied from one period to the next.],
  [*Contra entry*], [An entry made on both sides of the cash book when cash is banked or withdrawn for office use.],
  [*Control account*], [A summary account whose balance should equal the total of the personal ledger it controls.],
  [*Cost of sales*], [Opening stock plus purchases plus carriage inwards, less closing stock.],
  [*Credit note*], [A document issued by a seller to reduce the amount owed by a buyer.],
  [*Creditors*], [Suppliers to whom the business owes money; a current liability.],
  [*Current assets*], [Assets that will be realised in cash within the trading cycle: stock, debtors, cash.],
  [*Current liabilities*], [Debts payable within one year: creditors, accruals, overdraft.],
  [*Current ratio*], [Current assets divided by current liabilities.],
  [*Debenture*], [A long-term loan to a company, carrying fixed interest and secured on its assets.],
  [*Debit note*], [A document issued by a buyer claiming a reduction from a supplier.],
  [*Debtors*], [Customers who owe the business money; a current asset.],
  [*Depreciation*], [The systematic allocation of the cost of a fixed asset over its useful life.],
  [*Direct debit*], [An arrangement by which the payee claims a variable amount from the payer's account.],
  [*Discount allowed*], [A reduction given to a customer; an expense.],
  [*Discount received*], [A reduction obtained from a supplier; an income.],
  [*Dividend*], [The part of a company's distributable profit paid to its shareholders.],
  [*Double entry*], [Every transaction is recorded twice, with equal debits and credits.],
  [*Drawings*], [Money or goods taken from the business by its owner for private use.],
  [*Error of commission*], [The right class of account, but the wrong person's account.],
  [*Error of omission*], [A transaction left out of the books entirely.],
  [*Error of original entry*], [The wrong amount entered, but in the right accounts.],
  [*Error of principle*], [A transaction entered in the wrong class of account, such as capital treated as revenue.],
)
]

#v(4pt)

#[
  #set text(size: 8.2pt)
#table(
  columns: (1.05fr, 3.15fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Meaning]),
  [*Final accounts*], [The trading account, profit and loss account and balance sheet prepared at the year end.],
  [*Fixed assets*], [Assets held for use in the business rather than for resale.],
  [*General journal*], [The book of original entry for non-routine transactions, opening entries and corrections.],
  [*Going concern*], [The assumption that the business will continue in operation for the foreseeable future.],
  [*Goodwill*], [The value of a firm's reputation and customer connection, paid for on admission or purchase.],
  [*Gross profit*], [Sales less returns inwards and cost of sales.],
  [*Historical cost*], [Assets are recorded at the amount paid for them.],
  [*Imprest system*], [A petty cash float restored to a fixed amount at each reimbursement.],
  [*Income and expenditure account*], [The accruals-based account of a not-for-profit organisation.],
  [*Invoice*], [A document sent by a seller showing the goods supplied and the amount due.],
  [*Journal*], [A book of original entry; also the act of recording an entry.],
  [*Ledger*], [The book of accounts, containing the nominal, personal and private ledgers.],
  [*Liabilities*], [Amounts owed by the business to outsiders.],
  [*Liquidity*], [The ability of a firm to meet its short-term obligations as they fall due.],
  [*Mark-up*], [Gross profit expressed as a percentage of cost of sales.],
  [*Materiality*], [The principle that only items large enough to affect a decision need separate disclosure.],
  [*Net book value*], [Cost less accumulated depreciation.],
  [*Net profit*], [Gross profit plus other income, less expenses.],
  [*Nominal ledger*], [The ledger of nominal accounts: expenses, income, purchases and sales.],
  [*Nominal value*], [The face value of a share stated in the memorandum of association.],
  [*Opening stock*], [Stock on hand at the start of the period; the first line of cost of sales.],
  [*Ordinary shares*], [Shares that carry the residual risk and reward of the company; dividends vary with profit.],
  [*Overdraft*], [A facility allowing the current account to go into debit, repayable on demand.],
  [*Petty cash book*], [The book that records small payments, usually on the imprest system.],
  [*Preference shares*], [Shares entitled to a fixed dividend before ordinary shareholders are paid.],
  [*Prepayment*], [An expense paid in advance; a current asset.],
  [*Profit and loss account*], [The account that matches gross profit and other income against expenses.],
  [*Provision for doubtful debts*], [An estimate of debts that may prove irrecoverable, deducted from debtors.],
  [*Prudence*], [The convention that provides for losses but never anticipates profits.],
  [*Realisation concept*], [Revenue is recognised when the sale is made and the goods pass to the buyer.],
  [*Receipts and payments account*], [A summary of cash received and paid by a not-for-profit organisation.],
  [*Reserve*], [Part of profit set aside and not distributed.],
  [*Residual profit*], [Profit remaining after salaries and interest on capital have been appropriated.],
  [*Returns inwards*], [Goods returned to the business by customers; deducted from sales.],
  [*Returns outwards*], [Goods returned by the business to suppliers; deducted from purchases.],
  [*Revenue expenditure*], [Spending on the day-to-day running of the business, charged to the profit and loss account.],
  [*Revaluation*], [The restatement of assets at current values, usually on the admission or retirement of a partner.],
  [*Share premium*], [The excess of the issue price of shares over their nominal value.],
  [*Standing order*], [An instruction to the bank to pay a fixed sum at fixed intervals.],
  [*Statement of account*], [A periodic summary sent by a supplier of the transactions on a customer's account.],
  [*Stock*], [Goods held for resale or for use in production.],
  [*Suspense account*], [A temporary account opened to hold a trial balance difference until the error is found.],
  [*Trade discount*], [A reduction from list price given by a supplier; never recorded in the ledger.],
  [*Trading account*], [The account that computes gross profit from sales and cost of sales.],
  [*Trial balance*], [A list of ledger balances at a date, used to test the double entry.],
  [*Unpresented cheque*], [A cheque issued and recorded by the firm but not yet presented to the bank.],
  [*Working capital*], [Current assets less current liabilities; the money that keeps the trading cycle turning.],
)
]

#v(6pt)

== D.2 Twelve Pairs That Are Always Confused

#text(size: 9pt)[Each pair below is tested in the same way: four options, two of which are the pair. The distinction in the middle column is the sentence to remember, not the paragraph.]

#v(3pt)

#table(
  columns: (1.35fr, 1.5fr, 1.35fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The distinction],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[How it is tested],
  ),
  [Capital / revenue expenditure], [capital buys or improves an asset; revenue runs the business], [whether the item belongs in the balance sheet or the profit and loss account],
  [Trade discount / cash discount], [trade discount changes the invoice price; cash discount changes the amount paid later], [a discount that must never appear in the ledger],
  [Mark-up / margin], [mark-up divides by cost; margin divides by selling price], [the same figures as 25 per cent against 20 per cent],
  [Provision / write-off], [a provision estimates a doubtful debt; a write-off removes a bad one], [whether debtors are reduced],
  [Accrual / prepayment], [an accrual is owed; a prepayment is already paid], [which one is added to the expense],
  [Error of principle / error of original entry], [principle is the wrong class of account; original entry is the wrong amount in the right accounts], [whether the trial balance still agrees],
  [Error of commission / error of omission], [commission is the wrong person; omission leaves the entry out], [whether anything was recorded],
  [Suspense account / control account], [suspense holds a difference; a control account checks a ledger], [what the account was opened for],
  [Debenture / preference share], [the debenture is a loan; the preference share is ownership], [who is paid first, and whether the payment depends on profit],
  [Receipts and payments / income and expenditure], [the first is cash; the second is accruals], [whether a non-cash item may appear],
  [Surplus / profit], [a surplus belongs to a not-for-profit; a profit belongs to an owner], [what the balance is called and who may take it],
  [Nominal value / market value], [nominal is fixed at incorporation; market moves with demand], [which figure the dividend is computed on],
)

#v(4pt)

#concept-box("Why the pairs matter more than the definitions")[
  + *The paper rarely asks for a definition on its own.* It asks which of two near-identical terms applies, and the mark turns on one word.
  + *The wrong option is designed from the other half of the pair.* If you have only learned one of the two, the other is exactly what the examiner will offer you.
  + *Twelve pairs, twelve marks.* In a forty-question paper, the confused pairs account for roughly a fifth of the items — the cheapest fifth to secure.
]

#v(6pt)

#shortcut-box("The one-word test")[
  Before you accept a definition of your own, ask which single word carries the meaning: *identifies*,
  *systematic*, *estimate*, *ledger*, *net*, *division*, *loan*, *accruals*, *temporary*. If your sentence
  does not contain that word, it is a description, not a definition.
]

== D.3 Ten Definitions That Lose a Mark

#text(size: 9pt)[Each line below is a definition a candidate might write, followed by the sentence that earns the mark. The difference is never length; it is the one word the examiner is looking for.]

#v(3pt)

#[
  #set text(size: 8.1pt)
#table(
  columns: (1.75fr, 1.95fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The half-definition],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What to write instead],
  ),
  [Accounting is the recording of transactions.], [Accounting identifies, records, classifies, summarises, communicates and interprets; recording alone is bookkeeping.],
  [A provision is money set aside for bad debts.], [A provision is an estimate, charged against profit, of debts that may not be collected; no money is set aside.],
  [Depreciation is the fall in the value of an asset.], [Depreciation is the systematic allocation of the cost of an asset over its useful life.],
  [A trial balance is a list of assets and liabilities.], [A trial balance is a list of ledger balances at a date, used to test the arithmetic of the double entry.],
  [Working capital is the cash the business has.], [Working capital is current assets less current liabilities: the short-term cushion, of which cash is only one part.],
  [A control account is a summary of the ledger.], [A control account is a summary of a personal ledger, whose balance should equal the total of that ledger.],
  [An appropriation is an expense of the partnership.], [An appropriation is a division of profit among the owners, not a charge against it.],
  [A debenture is a share in the company.], [A debenture is a loan to the company, carrying fixed interest, and the holder is a creditor.],
  [A club's surplus is its cash balance.], [A club's surplus is the excess of accruals-based income over expenditure; the cash balance belongs to the receipts and payments account.],
  [A suspense account is an expense account.], [A suspense account is a temporary account that holds a trial balance difference until the error is found.],
)
]

