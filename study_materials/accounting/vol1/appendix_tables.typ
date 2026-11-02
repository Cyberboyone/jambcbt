#import "template.typ": *

#current-chapter.update("Appendix E: The Classification Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Classification Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Classification Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The tables the paper keeps asking for, on six pages: which account, which side,
    which book, which statement, and which of the six errors. Learn them as tables and
    the classification questions become free marks.
  ]
]

#v(5pt)

== E.1 The Five Kinds of Account and Their Normal Balance

#table(
  columns: (1.25fr, 0.95fr, 0.95fr, 1.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Increases with],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Normal balance],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Where it ends up],
  ),
  [*Assets*], [debit], [debit], [balance sheet],
  [*Expenses*], [debit], [debit], [trading or profit and loss account],
  [*Drawings*], [debit], [debit], [deducted from capital],
  [*Liabilities*], [credit], [credit], [balance sheet],
  [*Income*], [credit], [credit], [trading or profit and loss account],
  [*Capital*], [credit], [credit], [balance sheet],
)

#v(4pt)

#shortcut-box("DEAD CLIC")[
  *D*ebit *E*xpenses, *A*ssets, *D*rawings. *C*redit *L*iabilities, *I*ncome, *C*apital.
  The six words are the whole of double entry. If you can say them in the hall, you can
  post any transaction the paper invents.
]

#v(5pt)

== E.2 The Books of Original Entry

#table(
  columns: (1.35fr, 1.65fr, 1.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Book],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Records],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Posted to],
  ),
  [Sales day book], [credit sales of goods], [Dr debtors, Cr sales],
  [Purchases day book], [credit purchases of goods], [Dr purchases, Cr creditors],
  [Returns inwards book], [goods returned by customers], [Dr returns inwards, Cr debtor],
  [Returns outwards book], [goods returned to suppliers], [Dr creditor, Cr returns outwards],
  [General journal], [opening entries, corrections, purchase and sale of fixed assets on credit], [whichever accounts the entry names],
  [Cash book], [all cash and bank receipts and payments; discounts allowed and received], [the ledger, in total or in detail],
  [Petty cash book], [small payments under the imprest], [the ledger, by analysis column],
)

#v(5pt)

== E.3 One Credit Sale, Document by Document

#table(
  columns: (1.2fr, 0.9fr, 1.95fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Issued by],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it does],
  ),
  [Enquiry / order], [buyer], [asks for goods at a price],
  [Quotation / pro forma invoice], [seller], [states the price before the goods are sent],
  [Delivery note], [seller], [lists the goods; signed by the buyer as evidence of receipt],
  [Invoice], [seller], [demands payment and states the terms],
  [Debit note], [buyer], [claims a reduction for short delivery, damage or overcharge],
  [Credit note], [seller], [accepts the claim and reduces the buyer's account],
  [Statement of account], [seller], [summarises the month and states the balance],
  [Receipt], [seller], [acknowledges the money received],
  [Cheque / transfer], [buyer], [pays],
)

#v(5pt)

== E.4 The Six Errors and the Trial Balance

#table(
  columns: (1.3fr, 1.55fr, 0.85fr, 0.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Error],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What went wrong],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[TB agrees?],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Profit?],
  ),
  [Omission], [a transaction left out entirely], [yes], [wrong],
  [Commission], [the right class, the wrong person], [yes], [right],
  [Principle], [the wrong class of account], [yes], [wrong],
  [Original entry], [the wrong amount in both accounts], [yes], [wrong],
  [Reversal], [debit and credit entered the wrong way round], [yes], [wrong],
  [Compensating], [two equal errors that cancel], [yes], [either],
  [One-sided], [only one side posted, or posted twice], [no], [wrong],
)

#text(size: 8.8pt)[A difference divisible by nine points to a transposition; a difference of exactly twice an amount points to a figure entered on the wrong side. Those two tests solve most of the suspense questions in the paper.]

#v(5pt)

== E.5 Which Statement Does It Belong To?

#table(
  columns: (1.75fr, 0.85fr, 0.85fr, 0.85fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Trading],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[P&L],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Balance sheet],
  ),
  [Opening stock], [yes], [—], [—],
  [Purchases and carriage inwards], [yes], [—], [—],
  [Returns inwards and outwards], [yes], [—], [—],
  [Closing stock], [yes (credit)], [—], [current asset],
  [Carriage outwards], [—], [yes], [—],
  [Discount allowed and received], [—], [yes], [—],
  [Bad debts and provision charge], [—], [yes], [—],
  [Depreciation charge], [—], [yes], [—],
  [Accruals and prepayments], [—], [adjust the expense], [current liability or asset],
  [Drawings], [—], [—], [deducted from capital],
  [Loan interest], [—], [yes], [—],
  [Debenture interest], [—], [yes], [—],
  [Transfer to reserve], [—], [appropriation], [reserve],
  [Goodwill], [—], [—], [intangible asset],
)

#v(5pt)

== E.6 The Ratios, and What a Rise Means

#table(
  columns: (1.35fr, 1.65fr, 1.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Ratio],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[A rise means],
  ),
  [Current ratio], [current assets ÷ current liabilities], [better short-term cover],
  [Acid test], [(current assets − stock) ÷ current liabilities], [more liquid, less dependent on stock],
  [Gross profit margin], [gross profit ÷ sales × 100], [a wider mark-up or cheaper goods],
  [Mark-up], [gross profit ÷ cost of sales × 100], [more profit on each naira of cost],
  [Net profit ratio], [net profit ÷ sales × 100], [expenses taking less of each naira],
  [Return on capital employed], [net profit ÷ capital employed × 100], [the owner's money working harder],
  [Stock turnover], [cost of sales ÷ average stock], [stock selling faster],
  [Debtors collection period], [debtors ÷ credit sales × 365], [slower collection],
)

#v(5pt)

== E.7 The Three Kinds of Owner, Side by Side

#table(
  columns: (1.15fr, 1.3fr, 1.3fr, 1.3fr),
  inset: (x: 4.5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Sole trader],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Partnership],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Company],
  ),
  [Capital account], [one capital account], [one capital and one current account per partner], [share capital, reserves and retained profit],
  [Profit is divided by], [the owner takes it all], [the deed, or equally], [dividends declared by the directors],
  [Drawings], [deducted from capital], [debited to the current account], [not applicable; directors are paid salaries],
  [Accounts prepared], [trading, P&L, balance sheet], [trading, P&L, appropriation, balance sheet], [statement of profit or loss, appropriation, statement of financial position],
  [Liability], [unlimited], [unlimited, joint and several], [limited to the shares],
)

#v(4pt)

#v(5pt)

== E.8 The One-Minute Classification Drill

#text(size: 9pt)[Ten items, one minute. The point is not the answers — they are in the key below — but the speed: a classification question should cost you four seconds, because the paper has sixteen of them and they are the cheapest marks on the page.]

#v(3pt)

#table(
  columns: (0.35fr, 3.1fr, 0.75fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Your answer],
  ),
  [1], [Carriage inwards — trading account or profit and loss account?], [],
  [2], [Provision for doubtful debts — asset, liability or deduction from debtors?], [],
  [3], [Returns outwards — debit or credit in the trading account?], [],
  [4], [Bank overdraft — current asset or current liability?], [],
  [5], [Prepaid rent — asset, expense or liability?], [],
  [6], [Discount received — income or expense?], [],
  [7], [Drawings — expense, capital or current liability?], [],
  [8], [Accumulated depreciation — asset, expense or deduction from an asset?], [],
  [9], [Interest on a partner's loan — expense or appropriation?], [],
  [10], [Subscriptions received in advance — income or liability?], [],
)

#v(2pt)

#answer-key-grid(("Trading", "Deduction", "Credit", "Liability", "Asset", "Income", "Capital", "Deduction", "Expense", "Liability"))

#v(4pt)

#concept-box("How to use these tables in the last week")[
  + *Copy E.1 and E.4 by hand.* They are short, and the hand remembers what the eye skips.
  + *Say E.2 out loud in order.* Day books, journal, cash book — the sequence is itself a question.
  + *Check every rehearsal answer against E.5.* Half the marks lost in final-account questions are items put in the wrong statement.
]
