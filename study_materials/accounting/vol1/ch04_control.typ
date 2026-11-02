#import "template.typ": *

#current-chapter.update("Chapter 4: Control Accounts and Bank Reconciliation")

#pagebreak()

#chapter-opener(
  4,
  "Control Accounts and Bank Reconciliation",
  subtitle: "Keeping Control of a Hundred Debtors, and Making the Cash Book Agree With the Bank",
  syllabus-ref: "Sec. 4 • Control Accounts and Bank Reconciliation Statements",
  utme-weight: "6 Qs a year",
  running: "Control Accounts and Bank Reconciliation",
)

#focus-radar(
  objectives: (
    "Explain the purpose of the sales and purchases ledger control accounts.",
    "Prepare a control account from a list of transactions and find a missing figure.",
    "State why the cash book and the bank statement disagree.",
    "Adjust the cash book for items that appear only on the statement.",
    "Prepare a bank reconciliation statement and explain the balance it produces.",
    "Recognise the treatment of unpresented cheques and uncredited lodgements.",
  ),
  hotspots: (
    "*A control account is a summary account.* Its balance must equal the total of the personal ledger it controls, and if it does not, the difference is a finding.",
    "*The cash book is the firm's record; the bank statement is the bank's.* They disagree because each has recorded something the other has not.",
    "*Unpresented cheques* are in the cash book but not the statement, so they are *deducted* from the statement balance to reach the cash book.",
    "*Lodgements not yet credited* are in the cash book but not the statement, so they are *added* to the statement balance.",
    "*Bank charges, standing orders and direct credits* are on the statement but not in the cash book: they must be posted to the cash book *before* the statement is prepared.",
  ),
  trap-summary: "Four slips. (1) Adding unpresented cheques instead of deducting them. (2) Preparing the reconciliation without first adjusting the cash book for bank charges. (3) Treating a direct credit from a customer as an increase in sales rather than as a receipt in the cash book. (4) Forgetting that a dishonoured cheque is a reduction of the cash book balance and a reinstatement of the debtor.",
)

// ============================================================================
== 4.1 The Sales and Purchases Ledger Control Accounts

A firm with four hundred credit customers keeps four hundred personal accounts. The *control account* is one account that summarises all four hundred, and its purpose is control: if the total of the personal ledger balances does not equal the control account balance, something has been posted wrongly, and the difference tells you how much and often where.

#formula-box("The sales ledger control account")[
  #text(size: 9.5pt)[*Opening debit balance + credit sales − receipts − returns inwards − bad debts − discounts allowed = closing debit balance*]
]

#table(
  columns: (1.5fr, 1.5fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Debit side (increases what debtors owe)],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Credit side (reduces what debtors owe)],
  ),
  [Opening balance b/d], [Cash and cheques received from debtors],
  [Credit sales for the period], [Returns inwards],
  [Interest charged on overdue accounts], [Bad debts written off],
  [Dishonoured cheques (the debtor owes again)], [Discounts allowed],
  [], [Closing balance c/d],
)

#v(3pt)

The *purchases ledger control account* is the mirror image: credit purchases and opening creditors on the credit side; payments, returns outwards, discounts received and the closing balance on the debit side. The paper asks you to complete one from a list of five or six figures, and the only difficulty is deciding which side each figure belongs to.

// ============================================================================
== 4.2 Why the Cash Book and the Bank Statement Disagree

The cash book is written by the firm. The bank statement is written by the bank. Each records the same money, but not at the same moment and not always with the same information. A difference is therefore normal, and the reconciliation explains it rather than hiding it.

#table(
  columns: (1.55fr, 1.4fr, 1.55fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Recorded in],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Effect on the reconciliation],
  ),
  [*Unpresented cheques*], [cash book only], [deduct from the statement balance],
  [*Lodgements not yet credited*], [cash book only], [add to the statement balance],
  [*Bank charges and commission*], [statement only], [deduct in the adjusted cash book],
  [*Standing orders and direct debits*], [statement only], [deduct in the adjusted cash book],
  [*Direct credits and dividends*], [statement only], [add in the adjusted cash book],
  [*Dishonoured cheque*], [statement only], [deduct in the adjusted cash book, and reinstate the debtor],
  [*An error by the bank*], [statement only], [ask the bank to correct it; do not adjust the cash book],
)

#v(2pt)

#trap-box("Adjust the book first, then reconcile")[
  A bank reconciliation has two parts, and the order is not optional. *First* bring the cash
  book up to date with everything the bank already knows — charges, standing orders, direct
  credits, dishonoured cheques. *Then* reconcile the adjusted cash book balance with the
  statement using the items the bank does not yet know — unpresented cheques and uncredited
  lodgements. A candidate who reconciles first and adjusts afterwards produces a statement
  that agrees with nothing.
]

// ============================================================================
== 4.3 The Reconciliation Statement

#formula-box("The reconciliation, from the statement to the cash book")[
  #text(size: 9.5pt)[*Balance per bank statement* + lodgements not yet credited − unpresented cheques = *balance per adjusted cash book*]
]

#v(2pt)

Worked in figures: a statement credit balance of ₦1,250,000, lodgements not credited of ₦95,000 and unpresented cheques of ₦180,000 give an adjusted cash book balance of 1,250,000 + 95,000 − 180,000 = *₦1,165,000*. If the cash book, before adjustment, showed ₦1,115,000 and the firm had been charged ₦50,000 in bank charges it had not recorded, the two agree: 1,115,000 − 50,000 = 1,165,000. That agreement is the proof that the reconciliation is right.

#diagram-fig("diagrams/ch04_control.svg",
  "The two controls: the control account that summarises a ledger, and the reconciliation that explains a difference.", width: 94%)

// ============================================================================
== 4.4 Four Worked Questions

#worked-example(
  1,
  "Control account",
  [A firm's debtors at the start of the year were ₦320,000. Credit sales were ₦1,450,000, receipts from debtors ₦1,300,000, returns inwards ₦40,000 and bad debts written off ₦15,000. The closing debtors are

    A. ₦405,000 \\
    B. ₦415,000 \\
    C. ₦455,000 \\
    D. ₦735,000],
  [
    *Step 1 — start with the opening balance.* ₦320,000 owed at the beginning.

    *Step 2 — add what increases the debt.* Credit sales 1,450,000 → ₦1,770,000.

    *Step 3 — subtract what reduces it.* Receipts 1,300,000, returns 40,000 and bad debts 15,000 → 1,355,000.

    *Step 4 — closing balance.* 1,770,000 − 1,355,000 = *₦415,000*.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  2,
  "Which way does it move?",
  [A bank statement shows a credit balance of ₦800,000. Cheques totalling ₦120,000 have been issued but not presented, and a lodgement of ₦60,000 has not yet been credited. The cash book balance is

    A. ₦620,000 \\
    B. ₦740,000 \\
    C. ₦860,000 \\
    D. ₦980,000],
  [
    *Step 1 — the direction of each item.* Unpresented cheques were paid out of the cash book but have not reached the statement, so the statement is *higher* than the book by ₦120,000. The uncredited lodgement was received into the cash book but not the statement, so the statement is *lower* by ₦60,000.

    *Step 2 — reconcile.* 800,000 + 60,000 − 120,000 = *₦740,000*.

    *Step 3 — check.* Book 740,000; add unpresented cheques 120,000 to get 860,000; deduct uncredited lodgement 60,000 to get the statement 800,000.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The adjusted cash book",
  [A cash book shows a debit balance of ₦610,000. The bank statement reveals bank charges of ₦12,000, a standing order of ₦45,000 and a direct credit from a customer of ₦80,000, none of which is in the cash book. The adjusted cash book balance is

    A. ₦618,000 \\
    B. ₦633,000 \\
      C. ₦648,000 \\
    D. ₦667,000],
  [
    *Step 1 — start from the cash book.* ₦610,000.

    *Step 2 — deduct what the bank has taken.* Charges 12,000 and standing order 45,000 → 610,000 − 57,000 = ₦553,000.

    *Step 3 — add what the bank has received for the firm.* Direct credit 80,000 → ₦633,000.

    *Step 4 — check.* 610,000 − 12,000 − 45,000 + 80,000 = 633,000.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "A dishonoured cheque",
  [A customer's cheque for ₦75,000 is returned dishonoured. The entries required are

    A. debit cash book, credit the customer \\
    B. credit cash book, debit the customer \\
    C. debit bank charges, credit cash book \\
    D. no entry until the customer pays],
  [
    *Step 1 — what happened?* The bank refused to pay, so the money never reached the firm's account.

    *Step 2 — the two effects.* The cash book must come *down* (credit it), and the customer owes the money again (debit the customer).

    *Step 3 — eliminate.* A reverses the entries; C invents a charge; D leaves the cash book overstated.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 4.5 Two-Minute Set

#mcq(1, [The balance of the sales ledger control account should equal], [the total of the sales day book], [the total of the balances in the debtors ledger], [the cash received from debtors], [the total of the purchases ledger])

#mcq(2, [Unpresented cheques are], [added to the bank statement balance], [deducted from the bank statement balance], [added to the cash book balance], [ignored in the reconciliation])

#mcq(3, [Bank charges appearing only on the statement are recorded by], [debiting the cash book], [crediting the cash book], [debiting the bank statement], [ignoring them])

#mcq(4, [A credit balance on a bank statement means], [the firm is overdrawn], [the firm has money at the bank], [the bank owes the firm nothing], [the cash book must be wrong])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The control account summarises the personal ledger, so its balance must agree with the sum of the individual debtor balances.]),
  ("B", [The firm has already paid them out of its cash book, so the statement is higher than the truth; they are deducted to reach the cash book figure.]),
  ("B", [A charge reduces the firm's money at the bank, so the cash book is credited — the bank statement is the bank's record, not ours.]),
  ("B", [A credit balance on the statement is money in the firm's favour — from the bank's point of view it is a liability, which is why it is a credit.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: control accounts, the causes of disagreement and the reconciliation.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A control account summarises a personal ledger so that hundreds of accounts can be checked with one balance: opening debtors plus credit sales, less receipts, returns, bad debts and discounts, gives closing debtors, and the same account run backwards gives any missing figure. The cash book and the bank statement disagree because each has recorded something the other has not: unpresented cheques and uncredited lodgements are in the cash book only; bank charges, standing orders, direct credits and dishonoured cheques are on the statement only. The discipline is to adjust the cash book first for everything the bank already knows, then reconcile the adjusted balance by adding uncredited lodgements and deducting unpresented cheques. The reconciliation explains the difference; it never hides it.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [State the purpose of a control account in one sentence.],
  [Prepare a sales ledger control account from five figures.],
  [List four items that appear only on the bank statement.],
  [Say which way unpresented cheques move the reconciliation.],
  [Adjust a cash book for charges, a standing order and a direct credit.],
  [Record a dishonoured cheque, naming both accounts.],
))

#concept-box("Carry this into Chapter 5")[
  With the books balanced and the controls in place, the firm can do what the owners
  actually want: close the year. Chapter 5 turns the trial balance into a trading account,
  a profit and loss account and a balance sheet — and shows where each of the six
  year-end adjustments lands.
]

#include "drill_ch04.typ"
