#import "template.typ": *

#current-chapter.update("Chapter 1: The Nature and Scope of Accounting")

#pagebreak()

#chapter-opener(
  1,
  "The Nature and Scope of Accounting",
  subtitle: "What Accounting Is For, Who Reads It, and the Rules That Govern How It Is Done",
  syllabus-ref: "Sec. 1 • Nature, Scope and Concepts of Accounting",
  utme-weight: "6 Qs a year",
  running: "The Nature and Scope of Accounting",
)

#focus-radar(
  objectives: (
    "Define accounting, and separate it from bookkeeping.",
    "Name the users of accounting information and the decision each one makes.",
    "State and apply the accounting concepts and conventions.",
    "Distinguish financial from cost and management accounting.",
    "Place a given item in the right branch, concept or statement.",
    "Answer the definition and classification questions the paper actually sets.",
  ),
  hotspots: (
    "*Accounting is not bookkeeping.* Bookkeeping is the recording step; accounting includes the design of the system, the summarising, the reporting and the interpretation.",
    "*The business entity concept* keeps the owner's private money out of the business's books, and it is the concept behind drawings and capital.",
    "*Going concern* justifies valuing assets at cost less depreciation rather than at what they would fetch if the firm closed tomorrow.",
    "*The accruals (matching) concept* puts a cost in the period that earned it, which is why accruals and prepayments appear in the final accounts.",
    "*Prudence* says: anticipate no profit, but provide for every known loss — the concept behind provisions for doubtful debts.",
  ),
  trap-summary: "Four slips. (1) Treating bookkeeping and accounting as synonyms. (2) Applying the money measurement concept to a loyal workforce — it cannot be measured in naira, so it is not recorded. (3) Confusing consistency (same method between periods) with the accruals concept (cost matched to the period). (4) Forgetting that management accounting looks forward, while financial accounting reports what has already happened.",
)

// ============================================================================
== 1.1 What Accounting Is

Accounting is the process of *identifying, recording, classifying, summarising and communicating* the financial effects of transactions, so that the people who use the information can make decisions. Each verb in that definition is a stage of the work, and each stage has a different skill.

#table(
  columns: (1.0fr, 3.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What happens, and what it produces],
  ),
  [*Identifying*], [deciding which events are transactions with a financial effect — a sale, a purchase, a payment; not a change of manager],
  [*Recording*], [writing each transaction down in date order, from a source document — the journals],
  [*Classifying*], [grouping like items together under one account — the ledger],
  [*Summarising*], [collecting the balances into a trial balance, then into the statements],
  [*Communicating*], [presenting the statements to the users, with the notes that make them intelligible],
  [*Interpreting*], [reading the statements for what they say about the business — ratios, trends, causes],
)

#v(3pt)

#concept-box("Bookkeeping, and why it is not accounting")[
  Bookkeeping ends where summarising begins: it is the recording and classifying of
  transactions, and it can be done by a clerk with a ruled book. Accounting *designs*
  the system, *checks* the record, *reports* the result and *interprets* it. A question
  that asks what bookkeeping excludes is usually answered by "the interpretation of the
  accounts" or "the preparation of the final reports".
]

#v(2pt)

*Accounting information* has four qualities the paper tests by name. It must be *relevant* — it should make a difference to the decision. It must be *reliable* — free from bias and material error. It must be *comparable* — the same treatment from year to year, and with other firms. And it must be *understandable* — presented in the form the user expects. These are the qualitative characteristics, and they explain most of the conventions in section 1.3.

// ============================================================================
== 1.2 The Users and Their Questions

Nobody reads a set of accounts for pleasure. Each user comes with a question, and the accounting is shaped by the question. The paper tests the *pairing*: owner with profit, lender with repayment, government with tax.

#table(
  columns: (1.15fr, 1.6fr, 1.6fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[User],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The figure that answers it],
  ),
  [*Owner / shareholder*], [Is the business making a profit, and what is my stake worth?], [net profit; capital; net assets],
  [*Lender / bank*], [Will the loan be repaid, with interest?], [cash flow; liquidity; the current ratio],
  [*Supplier (creditor)*], [Will I be paid, and when?], [the ability to pay within the credit period],
  [*Customer*], [Will the firm still exist to honour its warranty?], [going concern; size and continuity],
  [*Government*], [What tax is due, and is the law being obeyed?], [assessable profit; turnover; VAT],
  [*Employee / union*], [Is my job secure, and can pay rise?], [profit; the wage bill as a share of costs],
  [*Investor / analyst*], [Should I buy, hold or sell?], [earnings; return on capital; trends],
  [*Public*], [What does the firm do to its community and environment?], [the notes on social and environmental cost],
)

#v(3pt)

*Financial accounting* reports to the users *outside* the firm, and it reports what has already happened. *Management accounting* reports to the managers *inside* the firm, and it looks forward: a budget, a cost estimate, a make-or-buy decision. The distinction is not about difficulty. It is about audience and time.

// ============================================================================
== 1.3 The Concepts and Conventions

A concept is an assumption so fundamental that the accounts would be meaningless without it. The paper asks for the name of the concept behind a treatment, and the treatment behind a name. Learn the pairs.

#table(
  columns: (1.15fr, 3.25fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Concept],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it requires, and the treatment it explains],
  ),
  [*Business entity*], [the business is separate from its owner: the owner's private spending is *drawings*, not an expense of the business],
  [*Going concern*], [the business will continue for the foreseeable future, so assets are valued at cost less depreciation, not at break-up value],
  [*Accruals (matching)*], [income and expenses are recognised in the period they relate to, not when cash moves — hence accruals and prepayments],
  [*Consistency*], [the same method is used from period to period — the same depreciation method, the same stock valuation],
  [*Prudence*], [anticipate no profit but provide for all known losses — provisions for doubtful debts, stock written down],
  [*Realisation*], [revenue is recognised when the sale is made and the goods pass, not when the order is received or the cash collected],
  [*Materiality*], [items too small to affect a decision may be treated in the simplest way — a ₦500 stapler is an expense, not a fixed asset],
  [*Money measurement*], [only what can be measured in money is recorded: a skilled workforce is not an asset of the balance sheet],
  [*Historical cost*], [assets are recorded at what they cost, which is objective, even when market value has risen],
  [*Objectivity*], [every entry must rest on evidence that an independent person could check — a document, not an opinion],
)

#v(3pt)

#trap-box("Accruals and consistency are not the same thing")[
  The accruals concept decides *which period* a cost belongs to. Consistency decides
  *which method* is used to compute it. A firm that depreciates a van at 20% reducing
  balance every year is being consistent; a firm that charges December's electricity in
  December although it pays in January is applying accruals. An option that swaps the
  two is the commonest distractor in the chapter.
]

#v(2pt)

Two of the concepts are conventions rather than assumptions. *Consistency* and
*prudence* exist because accounts are compared: with last year, with another firm, and
with what the reader expected. A firm that changed its depreciation method whenever
profit fell would be neither comparable nor prudent, and the paper tests exactly that
sentence.

// ============================================================================
== 1.4 The Branches of Accounting

#table(
  columns: (1.15fr, 1.65fr, 1.6fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Branch],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[For whom],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it produces],
  ),
  [*Financial accounting*], [owners, lenders, government — outsiders], [the trading account, profit and loss account and balance sheet, once a year],
  [*Cost accounting*], [the factory manager], [the cost of a product, a job, a process or a department],
  [*Management accounting*], [the board and the managers], [budgets, variance reports, and the figures behind a decision],
  [*Auditing*], [the shareholders], [an independent opinion on whether the accounts show a true and fair view],
  [*Tax accounting*], [the revenue authority and the firm], [the computation of assessable profit and the liabilities that follow],
  [*Public-sector accounting*], [government and its agencies], [the receipts and payments of a ministry, and the vote accounts],
)

#v(3pt)

The *regulatory framework* is the set of rules that makes one firm's accounts comparable with another's. In Nigeria the Companies and Allied Matters Act governs company accounts; the Financial Reporting Council sets the reporting standards, which follow the International Financial Reporting Standards; the Institute of Chartered Accountants of Nigeria is the professional body; and the Federal Inland Revenue Service reads the accounts for tax. The paper asks which body does what, so learn the list as a list of jobs, not as a list of names.

#diagram-fig("diagrams/ch01_accounting.svg",
  "The record, the users who read it, and the branches that read it differently.", width: 92%)

// ============================================================================
== 1.5 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [Accounting is best described as

    A. the recording of cash receipts and payments \\
    B. the process of identifying, recording and communicating financial information \\
    C. the preparation of a trial balance \\
    D. the auditing of company accounts],
  [
    *Step 1 — look for the whole process.* The definition must cover recording *and* reporting.

    *Step 2 — eliminate.* A stops at cash; C is one step inside the process; D is a different profession's work.

    *Step 3 — check B.* Identifying, recording, summarising and communicating is the definition, in the syllabus's own words.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The entity concept",
  [A trader pays his son's school fees from the business bank account. In the books this is

    A. an expense of the business \\
    B. drawings \\
    C. a loan to the son \\
    D. a liability],
  [
    *Step 1 — who is the transaction for?* The son's schooling is a private matter of the owner, not a cost of trading.

    *Step 2 — apply the concept.* The business entity concept separates the owner from the business, so anything the owner takes out for himself is drawings.

    *Step 3 — eliminate.* A would understate profit and overstate expenses; C would create a debtor who never agreed to repay; D would invent a liability.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "Which concept justifies the treatment?",
  [A machine bought for ₦2,000,000 is shown in the balance sheet at ₦1,600,000 after one year's depreciation, although its market value is ₦2,200,000. The treatment is justified by

    A. the realisation concept \\
    B. the going concern and historical cost concepts \\
    C. the money measurement concept \\
    D. the materiality concept],
  [
    *Step 1 — what was done?* The asset is held at cost less depreciation, not at market value.

    *Step 2 — why?* Because the firm intends to keep using it (going concern), and because it was recorded at what it cost (historical cost).

    *Step 3 — eliminate.* Realisation governs when revenue is recognised; money measurement excludes items that cannot be valued in money; materiality concerns small items.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Accrual profit",
  [A firm received ₦900,000 from customers during the year. Of that sum, ₦150,000 was owed from last year, and ₦120,000 is still owed at the end of this year. It paid expenses of ₦500,000, which included ₦50,000 relating to last year and ₦80,000 paid in advance for next year; a further ₦60,000 of this year's expenses is unpaid. Under the accruals concept, the profit for the year is

    A. ₦400,000 \\
    B. ₦440,000 \\
    C. ₦470,000 \\
    D. ₦510,000],
  [
    *Step 1 — income earned this year.* Cash received 900,000, less last year's debt 150,000 (which was income last year), plus this year's unpaid 120,000 = *₦870,000*.

    *Step 2 — expenses incurred this year.* Cash paid 500,000, less the prior-year item 50,000, less the prepayment 80,000, plus the unpaid 60,000 = *₦430,000*.

    *Step 3 — profit.* 870,000 − 430,000 = *₦440,000*.

    *Step 4 — check against the cash figure.* Cash in less cash out is 900,000 − 500,000 = ₦400,000, which is option A: the cash profit, not the accrual profit. The ₦40,000 difference is exactly the net effect of the four adjustments, which is the check that the adjustments are right.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#v(2pt)

#trap-box("Cash or accrual? Count the words")[
  Four words decide every accrual question: *paid*, *received*, *owing* and *in advance*.
  A sum *received* that was owed from last year is not income of this year; a sum *owing*
  at the year end is. A sum *paid in advance* is a prepayment, not an expense; a sum
  *owing* to a supplier is an expense of this year although no cash has left. Adjust for
  each phrase you see, and do not adjust for any phrase you do not see.
]

// ============================================================================
== 1.6 Two-Minute Set

#mcq(1, [The process of recording transactions in the books of account is called], [auditing], [bookkeeping], [interpretation], [budgeting])

#mcq(2, [Which concept requires a business to be treated separately from its owner?], [going concern], [business entity], [realisation], [materiality])

#mcq(3, [Valuing a delivery van at cost less depreciation rather than at its resale value relies on], [prudence and consistency], [going concern and historical cost], [realisation and accruals], [materiality and money measurement])

#mcq(4, [Management accounting differs from financial accounting because it], [is prepared once a year], [reports to users outside the firm], [is prepared for internal decision-making and looks forward], [must follow the Companies Act])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [Bookkeeping is the recording stage; accounting adds the design of the system, the summary, the report and the interpretation.]),
  ("B", [The entity concept draws the line between the owner's private affairs and the business, which is why drawings are not an expense.]),
  ("B", [The firm intends to keep using the van (going concern) and records it at what it cost (historical cost), depreciated over its life.]),
  ("C", [Management accounting serves managers inside the firm and looks forward; financial accounting reports the past to outsiders.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the process, the users, the concepts and the branches.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Accounting identifies, records, classifies, summarises and communicates the financial effects of transactions so that users can decide. Its users come with questions: the owner wants profit, the lender wants repayment, the government wants tax, the employee wants security. The concepts explain the treatments: the business entity keeps the owner out of the books, going concern justifies cost-based valuation, accruals puts each cost in the period that earned it, consistency keeps methods stable, prudence provides for losses but never anticipates profit, and money measurement admits only what can be counted in naira. The branches divide by audience: financial accounting for outsiders and the past, management and cost accounting for insiders and the future, auditing for the shareholders' assurance, and tax accounting for the revenue authority.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Define accounting in one sentence, naming all five stages.],
  [Name six users and the question each one asks.],
  [State the business entity concept and give two treatments it explains.],
  [Distinguish accruals from consistency in one sentence each.],
  [Say which concept justifies a provision for doubtful debts.],
  [Name the four branches and say who reads each one's output.],
))

#concept-box("Carry this into Chapter 2")[
  Chapter 1 answered *what accounting is for*. Chapter 2 asks *how it is done*: the
  accounting equation, and the rule that every transaction has two entries. Everything
  in the remaining seven chapters is a consequence of that one rule.
]

#include "drill_ch01.typ"
