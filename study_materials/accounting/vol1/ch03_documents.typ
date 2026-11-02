#import "template.typ": *

#current-chapter.update("Chapter 3: Documents, Journals and the Trial Balance")

#pagebreak()

#chapter-opener(
  3,
  "Documents, Journals and the Trial Balance",
  subtitle: "From the Paper in the Drawer to the Balance in the Book",
  syllabus-ref: "Sec. 3 • Source Documents, Books of Original Entry, Ledger and Trial Balance",
  utme-weight: "7 Qs a year",
  running: "Documents, Journals and the Trial Balance",
)

#focus-radar(
  objectives: (
    "Name the source document behind each kind of transaction.",
    "Place a transaction in the right book of original entry.",
    "Post from a book of original entry to the ledger.",
    "Prepare a trial balance from a list of balances, and find a missing figure.",
    "State what the trial balance does and does not prove.",
    "Recognise the errors a trial balance can never disclose.",
  ),
  hotspots: (
    "*A document is evidence, not a record.* It is filed; it is not posted. The posting is made in a book of original entry.",
    "*Five books:* sales day book, purchases day book, returns inwards book, returns outwards book, and the general journal.",
    "*Credit only.* The day books record credit transactions; cash and bank transactions go to the cash book, which is both a book of original entry and a ledger account.",
    "*The trial balance proves one thing* — that the total debits equal the total credits — and nothing else.",
    "*Errors that never disturb it:* omission, commission, principle, original entry and compensating errors.",
  ),
  trap-summary: "Four slips. (1) Sending a credit note when the buyer is claiming a reduction — that is a debit note. (2) Putting a credit sale in the general journal instead of the sales day book. (3) Believing a trial balance that agrees proves the books are correct. (4) Using the delivery note as a basis for posting a sale, when the delivery note carries no prices.",
)

// ============================================================================
== 3.1 The Source Documents

A *source document* is the paper that proves a transaction took place: who, what, how much, and when. It is the first link in the chain, and it is what an auditor asks to see. The paper tests which document belongs to which transaction, so learn them as pairs.

#table(
  columns: (1.05fr, 1.35fr, 2.0fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Who issues it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it proves],
  ),
  [*Invoice*], [the seller], [goods were supplied and this sum is now due; it is the basis of the credit sale],
  [*Receipt*], [the seller, on payment], [money has been received; it is the basis of the cash entry],
  [*Credit note*], [the seller], [the buyer's account is to be reduced — for returns, an overcharge or an allowance],
  [*Debit note*], [the buyer], [the buyer claims a reduction from the seller],
  [*Delivery note*], [the seller, with the goods], [what was delivered, signed by the recipient; it carries no prices],
  [*Cheque stub / counterfoil*], [the payer], [a payment has been made from the bank account],
  [*Petty cash voucher*], [the person receiving the cash], [a small payment from the imprest has been made],
  [*Statement of account*], [the seller, monthly], [the transactions of the period and the balance due; it is not a demand],
)

#v(3pt)

#trap-box("Which note, and by whom?")[
  The seller issues a *credit note*; the buyer issues a *debit note*. Ask who owes whom
  the reduction. If the seller owes it — goods returned, an overcharge — the seller issues
  the credit note. If the buyer believes a reduction is due and has not had it, the buyer
  issues the debit note. Any option that reverses the two is wrong however plausible the
  sentence sounds.
]

// ============================================================================
== 3.2 The Books of Original Entry

Transactions are first written in a *book of original entry* (also called a subsidiary book or a journal), and only then posted to the ledger. There are five for credit transactions, plus the cash book.

#table(
  columns: (1.25fr, 1.35fr, 1.85fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Book],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Records],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Posted to],
  ),
  [*Sales day book*], [credit sales, from invoices issued], [debit debtors, credit sales],
  [*Purchases day book*], [credit purchases, from invoices received], [debit purchases, credit creditors],
  [*Returns inwards book*], [goods returned by customers, from credit notes issued], [debit returns inwards, credit debtors],
  [*Returns outwards book*], [goods returned to suppliers, from debit notes issued], [debit creditors, credit returns outwards],
  [*General journal*], [everything else: opening entries, corrections, asset purchases on credit, provisions], [whatever the narration says],
  [*Cash book*], [receipts and payments, cash and bank], [it is itself a ledger account as well as a book],
)

#v(2pt)

#concept-box("Why the day books exist at all")[
  A firm with two hundred credit sales a week cannot post each one straight to the ledger
  without losing count. The day book *lists* them in date order and *totals* them at the
  end of the period; the total is posted once. That is the whole economy of the
  subsidiary book: many entries, one posting, and a list that can be checked against the
  invoices.
]

// ============================================================================
== 3.3 The Ledger and the Trial Balance

The *ledger* is the set of accounts. Each account has a page, debits on the left and credits on the right, and each carries a balance after balancing off. The ledger is divided into the *personal ledger* (debtors and creditors, one account per person) and the *impersonal ledger* (real accounts for assets, and nominal accounts for income and expenses).

#formula-box("The trial balance, as at 31 December")[
  #text(size: 9.6pt)[List every account with a balance. Put the *debit* balances in the left column and the *credit* balances in the right, and total both. If the totals agree, the arithmetic of the double entry is intact.]
]

#table(
  columns: (1.1fr, 1.6fr, 1.6fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Balance],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Accounts with this balance],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why],
  ),
  [*Debit*], [assets, expenses, purchases, returns inwards, drawings], [they were debited to increase],
  [*Credit*], [liabilities, capital, income, sales, returns outwards, provisions], [they were credited to increase],
)

#v(3pt)

What the trial balance proves is exactly one thing: the debits equal the credits. It *does not* prove that the transactions were recorded in the right accounts, in the right period, or at all. Five errors leave it perfectly in balance, and they are the subject of Chapter 6.

#diagram-fig("diagrams/ch03_documents.svg",
  "The chain from the source document to the trial balance, and the five journals that feed it.", width: 94%)

// ============================================================================
== 3.4 Four Worked Questions

#worked-example(
  1,
  "Which document?",
  [A customer returns goods worth ₦12,000 to a trader. The trader issues

    A. a debit note \\
    B. a credit note \\
    C. an invoice \\
    D. a receipt],
  [
    *Step 1 — who owes the reduction?* The seller now owes the customer ₦12,000, because the goods have come back.

    *Step 2 — which document reduces the buyer's account?* The credit note.

    *Step 3 — eliminate.* A debit note is issued by the buyer; an invoice increases what is owed; a receipt proves a payment.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Which book?",
  [Goods bought on credit from Bello are first recorded in the

    A. sales day book \\
    B. purchases day book \\
    C. general journal \\
    D. returns outwards book],
  [
    *Step 1 — is it a sale or a purchase?* The firm is buying, so it is a purchase.

    *Step 2 — is it on credit?* Yes, from a named supplier. Credit purchases belong in the purchases day book.

    *Step 3 — eliminate.* The sales day book is for credit sales; the general journal is for items outside the four day books; returns outwards is for goods sent back.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "What the trial balance cannot do",
  [Which error would still leave a trial balance in agreement?

    A. Entering the debit of a sale without the credit \\
    B. Recording a credit sale of ₦9,000 as ₦900 in both accounts \\
    C. Adding the debit column incorrectly \\
    D. Posting only the credit side of a purchase],
  [
    *Step 1 — what disturbs a trial balance?* Any error that affects one side and not the other, or the arithmetic of the columns themselves.

    *Step 2 — test each.* A and D are one-sided, so the totals differ. C is an addition error in the trial balance itself.

    *Step 3 — B is the answer.* The same wrong amount was entered in both accounts, so the debits and the credits are still equal; the balances are simply both too small.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The missing figure",
  [A trial balance shows: purchases ₦420,000; rent ₦60,000; wages ₦90,000; debtors ₦150,000; cash ₦180,000; drawings ₦50,000; sales ₦700,000; creditors ₦100,000. Capital has been omitted. The figure for capital is

    A. ₦150,000 \\
    B. ₦250,000 \\
    C. ₦800,000 \\
    D. ₦950,000],
  [
    *Step 1 — total the debits.* 420,000 + 60,000 + 90,000 + 150,000 + 180,000 + 50,000 = *₦950,000*.

    *Step 2 — total the known credits.* 700,000 + 100,000 = *₦800,000*.

    *Step 3 — the missing credit.* 950,000 − 800,000 = *₦150,000*, because the trial balance must have equal totals.

    *Step 4 — check.* Debits 950,000 against credits 800,000 + 150,000 = 950,000. Agreed.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.5 Two-Minute Set

#mcq(1, [The document issued by a seller when goods are returned by a customer is], [an invoice], [a credit note], [a debit note], [a statement of account])

#mcq(2, [Credit purchases are first recorded in the], [sales day book], [purchases day book], [general journal], [cash book])

#mcq(3, [A trial balance that agrees proves that], [no errors were made], [the debits equal the credits], [all transactions were recorded], [the profit is correct])

#mcq(4, [Which account normally carries a credit balance?], [drawings], [returns inwards], [capital], [purchases])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [A return inwards reduces what the customer owes, and it is the seller who issues the credit note that records the reduction.]),
  ("B", [Credit purchases are listed in the purchases day book and posted from its total; cash purchases go through the cash book.]),
  ("B", [The trial balance is an arithmetic check on the double entry. It cannot detect an error that leaves both sides equally wrong.]),
  ("C", [Capital is a credit balance because it is what the business owes its owner; drawings, returns inwards and purchases are debits.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the documents, the five journals, the ledger and the trial balance.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Every transaction begins with a source document: an invoice, a receipt, a credit note, a debit note, a cheque stub, a petty cash voucher. The document is evidence; it is not a posting. Credit transactions are listed in the five books of original entry — sales, purchases, returns inwards, returns outwards and the general journal — and cash and bank transactions go to the cash book, which is both a book of original entry and a ledger account. Each book is totalled and posted, and each account in the ledger is balanced off. The trial balance then lists every balance, debits on one side and credits on the other. When the totals agree, the arithmetic of the double entry is intact, but the books may still contain five kinds of error that no trial balance can see.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Match six documents to the six transactions they prove.],
  [Name the five books of original entry and the posting from each.],
  [Say which transactions never enter a day book.],
  [Prepare a trial balance from a list of eight balances.],
  [Find a missing figure in a trial balance whose totals differ.],
  [Name three errors that a trial balance cannot disclose.],
))

#concept-box("Carry this into Chapter 4")[
  Chapter 3 kept the books for a firm with a handful of customers. Chapter 4 asks how a
  firm with *hundreds* of debtors and creditors keeps control of them, and why its cash
  book and its bank statement tell two different stories about the same money.
]

#include "drill_ch03.typ"
