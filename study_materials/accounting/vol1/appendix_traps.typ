#import "template.typ": *

#current-chapter.update("Appendix H: Twenty-Five Traps")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Twenty-Five Traps]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty-Five Traps]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The twenty-five wrong answers the paper sets most often, each in the words an option
    would use, with the one sentence that turns it aside. Read one a day in the last month
    and the traps stop being traps.
  ]
]

#v(5pt)

#text(size: 9pt)[Each trap is written as a candidate would reason it, then corrected. The correction is deliberately short: in the hall there is no time to reconstruct an argument, only to remember a sentence.]

#v(5pt)

== H.1 Chapters 1 and 2 — Concepts and Double Entry

#table(
  columns: (1.75fr, 2.05fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The way out],
  ),
  [*The trial balance proves the books are correct.*], [It proves only that debits equal credits. Five of the six errors leave it agreeing.],
  [*A debit always means something good, a credit something bad.*], [Debit means left, credit means right. Assets and expenses are debits; capital, income and liabilities are credits.],
  [*Drawings is an expense.*], [Drawings is a reduction of capital, never a charge against profit.],
  [*The owner's private electricity is a business expense because the business paid it.*], [The business entity concept makes it drawings.],
  [*Provision for doubtful debts is a liability.*], [It is a deduction from debtors, not a liability: the firm is owed less, not owing more.],
  [*Depreciation is a fund of cash set aside for a new machine.*], [It is an allocation of cost; no cash is set aside.],
)

#v(5pt)

== H.2 Chapter 3 — Documents, Books and the Trial Balance

#table(
  columns: (1.75fr, 2.05fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The way out],
  ),
  [*A credit note is sent by the buyer.*], [The seller sends it; the buyer sends a debit note.],
  [*A pro forma invoice is a demand for payment.*], [It is a quotation in invoice form, sent before supply.],
  [*Trade discount is posted to the discount account.*], [It is deducted on the invoice and never enters the ledger.],
  [*The cash book is only a book of original entry.*], [It is both a journal and a ledger, which is why it is called a two-in-one book.],
  [*Closing stock appears in the trial balance.*], [It is a year-end adjustment; only opening stock is a ledger balance.],
)

#v(5pt)

== H.3 Chapter 4 — Control Accounts and Reconciliation

#table(
  columns: (1.75fr, 2.05fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The way out],
  ),
  [*A bank statement credit balance is an overdraft.*], [It is money the bank holds for the firm. In the firm's own cash book the same position is a debit balance.],
  [*Unpresented cheques are added to the bank statement balance.*], [They are payments the firm has made and the bank has not recorded, so they are deducted.],
  [*Bank charges are adjusted in the bank statement.*], [They are posted in the cash book; the statement is the bank's record and is not corrected by the customer.],
  [*A dishonoured cheque reduces the creditor's account.*], [It restores the debtor's debt: Dr debtor, Cr bank.],
  [*The control account balance is the profit for the year.*], [It is the total owed by debtors (a debit balance) or owed to creditors (a credit balance).],
)

#v(5pt)

== H.4 Chapters 5 and 6 — Final Accounts and Errors

#table(
  columns: (1.75fr, 2.05fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The way out],
  ),
  [*Carriage outwards belongs in the trading account.*], [It is a selling expense: profit and loss account. Only carriage inwards enters cost of sales.],
  [*The provision is charged in full each year.*], [Only the increase is charged; a decrease is credited to the profit and loss account.],
  [*Net profit is the same as cash in the bank.*], [Profit is accruals; cash is the balance sheet. A profitable firm can be overdrawn.],
  [*Closing stock is added to cost of sales.*], [It is deducted, because it was not sold.],
  [*An error of principle is revealed by the trial balance.*], [It is not, because both entries are equal and on the correct sides of the wrong accounts.],
  [*Suspense is debited when debits exceed credits.*], [It is credited: the smaller side gets the suspense entry.],
  [*A difference of ₦900 means an error of ₦900.*], [It may be a transposition: check whether the difference divides by nine.],
)

#v(5pt)

== H.5 Chapters 7 and 8 — Partnership, Company and Club

#table(
  columns: (1.75fr, 2.05fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The way out],
  ),
  [*Partners' salaries are an expense of the firm.*], [They are an appropriation of profit: the partners are the owners.],
  [*With no deed, profits are shared in the capital ratio.*], [They are shared equally.],
  [*Interest on capital is credited to the capital account.*], [It is credited to the current account, as is every appropriation.],
  [*Debenture interest is an appropriation.*], [It is a finance cost charged against profit, payable whether or not a profit is made.],
  [*A dividend is calculated on the market price of the share.*], [It is calculated on the nominal value.],
  [*A receipts and payments account shows the surplus.*], [It shows the movement in cash. The surplus belongs to the income and expenditure account.],
  [*Subscriptions received are the income of the year.*], [Adjust for arrears and advances; only then is the figure income.],
)

#v(6pt)

== H.6 The Trap Self-Test — Ten Questions

#text(size: 9pt)[Ten questions, one on each of the traps above. Cover the key at the foot of the page, answer all ten, then mark. Nine or ten is ready; seven or eight means reread the columns above; six or fewer means the chapter, not the appendix.]

#v(4pt)

#mcq(1, "A trial balance agrees. Which conclusion is safe?", "every transaction has been recorded", "no error has been made", "the debits and credits are equal in total", "the profit is correct")
#mcq(2, "Goods taken by the owner for his own use should be debited to", "drawings", "purchases", "capital", "expenses")
#mcq(3, "A provision for doubtful debts is shown in the balance sheet as", "a current liability", "part of capital", "an intangible asset", "a deduction from debtors")
#mcq(4, "A credit note is issued by", "the buyer, claiming a reduction", "the seller, reducing the buyer's account", "the carrier, for loss in transit", "the bank, for charges")
#mcq(5, "The bank statement shows a credit balance. In the firm's books this is", "money at the bank", "an overdraft", "a loan from the bank", "a bank charge")
#mcq(6, "Carriage outwards is charged in the", "trading account", "the balance sheet as an asset", "profit and loss account", "cost of sales")
#mcq(7, "Debits exceed credits by ₦27,000. The suspense account is", "debited with ₦27,000", "not required", "credited with ₦54,000", "credited with ₦27,000")
#mcq(8, "Where there is no partnership deed, profits are shared", "in the capital ratio", "equally", "in the drawings ratio", "by seniority")
#mcq(9, "Debenture interest is", "a charge against profit", "an appropriation of profit", "a dividend", "payable only if profit is made")
#mcq(10, "Subscriptions received in advance at the year end are", "income of the year", "a current liability", "a current asset", "part of capital")

#v(3pt)

#answer-key-grid(("C", "A", "D", "B", "A", "C", "D", "B", "A", "B"))

#v(2pt)

#text(size: 8.6pt)[The letters are deliberately mixed, so that a candidate who marks by pattern rather than by reason finds himself wrong. Nine of the ten items turn on a single word — *equal*, *drawings*, *deduction*, *seller*, *credit* — and the ten marks are the cheapest in this appendix.]


#v(6pt)

== H.7 Your Own Traps

#text(size: 9pt)[The twenty-five above are the traps the paper sets for everyone. The next page holds the ones it sets for you. Every wrong answer you record in a drill belongs here, with the reason in six words or fewer: the six words are what you will read on the morning of the paper, and they must be short enough to read under pressure.]

#v(3pt)

#table(
  columns: (0.6fr, 2.0fr, 1.05fr, 1.35fr),
  inset: (x: 5pt, y: 4.6pt),
  align: (center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Date],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The question, in four words],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What I chose],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The reason, in six],
  ),
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
  [#v(7pt)], [], [], [],
)

#v(4pt)

#shortcut-box("Read the log, not the chapter, on the last night")[
  A chapter is twelve pages of material you half know; the log is twelve lines of material you
  demonstrably do not. The last night is worth more spent on the lines than on the pages.
]