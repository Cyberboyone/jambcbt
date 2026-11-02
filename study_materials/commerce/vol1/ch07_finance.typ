#import "template.typ": *

#current-chapter.update("Chapter 7: Business Finance and Documents")

#pagebreak()

#chapter-opener(
  7,
  "Business Finance and Documents",
  subtitle: "Short, Medium and Long-Term Capital, Shares and Debentures, the Stock Exchange, and the Paper Trail of One Order",
  syllabus-ref: "Sec. 5 • Business Finance",
  utme-weight: "8 Qs a year",
  running: "Business Finance and Documents",
)

#focus-radar(
  objectives: (
    "Distinguish fixed capital from working capital, and say what each pays for.",
    "Sort the sources of finance by term, and name the cost of each.",
    "Explain shares and debentures, and the difference in the holder's rights.",
    "Describe the stock exchange and its two functions.",
    "Name the eight business documents and say who sends each to whom.",
    "Work a trade discount, a cash discount and a net price in the right order.",
  ),
  hotspots: (
    "*Fixed capital* buys what the business keeps — premises, machinery, vehicles. *Working capital* buys what the business turns over — stock, wages, fuel, rent.",
    "*Short-term* finance is trade credit, overdraft, factoring and bills of exchange; *long-term* is shares, debentures, mortgages and retained profit.",
    "*A credit note* is issued by the *seller* to reduce an invoice; *a debit note* is issued by the *buyer* to claim a reduction. Reversing them is the commonest error in the chapter.",
    "*A statement of account* is not a demand for payment; it is a summary of what is owed to date. The invoice is the demand.",
    "*The stock exchange* does not sell new goods, and only sometimes sells new shares: its main work is a market in *second-hand* shares, which makes them liquid.",
  ),
  trap-summary: "Four slips. (1) Financing stock with a debenture — a long-term instrument for a short-term need. (2) Confusing a credit note with a debit note. (3) Calling a statement of account an invoice. (4) Saying the stock exchange raises capital for companies — it does, but only when it issues *new* shares; the daily trade is in old ones.",
)

// ============================================================================
== 7.1 Fixed and Working Capital

#text(size: 9.4pt)[A business needs two kinds of money and they are not interchangeable. *Fixed capital* is spent once, on things the business will keep and use for years: land, buildings, plant, vehicles. *Working capital* is spent again every cycle, on things that are used up or sold: stock, wages, electricity, transport, rent. The distinction decides the source, because a short-lived need financed by a long-term loan costs interest for years after the need has gone.]

#formula-box("Working capital, in one line")[
  *Working capital = current assets − current liabilities.* It is the money locked in the
  day-to-day cycle, and a business can be profitable and still fail for want of it.
]

#table(
  columns: (1.05fr, 1.7fr, 2.2fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Source],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Cost, and when to use it],
  ),
  [*Trade credit*], [short], [free if paid on time; for stock bought from a supplier],
  [*Bank overdraft*], [short, repayable on demand], [interest on the daily balance; for a temporary gap],
  [*Factoring*], [short], [a fee and a discount; sells the debts to raise cash quickly],
  [*Bill of exchange*], [short, up to 90 days], [discounted at a bank; for a sale already made],
  [*Bank loan*], [medium], [fixed interest and a repayment schedule; for a vehicle or a machine],
  [*Hire purchase / lease*], [medium], [instalments; use without owning, or own at the end],
  [*Retained profit*], [long], [no issue cost, but limited to what the business earns],
  [*Share capital*], [long, permanent], [dividends, and a share of control; for expansion],
  [*Debenture*], [long], [fixed interest whether or not there is profit; secured on assets],
  [*Mortgage*], [long], [fixed interest; for land and buildings],
)

// ============================================================================
== 7.2 Shares, Debentures and the Exchange

#diagram-fig("diagrams/ch07_finance.svg",
  "Sources of finance by term, and the test the paper applies to each.", width: 100%)

#table(
  columns: (1.15fr, 1.65fr, 2.15fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Security],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The holder is],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Return],
  ),
  [*Ordinary share*], [an owner, with a vote], [a dividend that varies with profit, and the last claim],
  [*Preference share*], [an owner, usually without a vote], [a fixed dividend, paid before the ordinary dividend],
  [*Cumulative preference*], [an owner whose dividend is not lost], [arrears of dividend are paid before ordinary shareholders get anything],
  [*Debenture*], [a creditor, with no vote], [fixed interest, paid whether or not there is profit],
)

#concept-box("The stock exchange, in two functions")[
  First, it is a *market*: it lets a holder of shares sell them to somebody else, which is
  what makes shares liquid and therefore acceptable in the first place. Second, it is a
  *source of new capital*: when a company issues new shares to the public — a new issue —
  the exchange is the channel through which the money reaches the company. Everything
  else the exchange does, including the daily price quotations, follows from those two.
]

// ============================================================================
== 7.3 The Documents of One Order

#text(size: 9.4pt)[Follow a single order from a school to a stationery supplier and the documents fall into sequence. Each one exists to prove something that a later dispute might need.]

#table(
  columns: (1.2fr, 1.25fr, 1.15fr, 1.35fr),
  inset: (x: 4.2pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[From → to],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[What it proves],
    text(font: "DejaVu Sans", size: 7.3pt, weight: "bold", fill: white)[The trap],
  ),
  [*Enquiry*], [buyer → seller], [what is wanted, and at what price], [it is not an order],
  [*Quotation*], [seller → buyer], [the price and terms offered], [it is not an invoice],
  [*Order*], [buyer → seller], [a firm request to supply], [it is not a contract until accepted],
  [*Invoice*], [seller → buyer], [the goods sent, and the sum now due], [it is the demand for payment],
  [*Delivery note*], [seller → buyer, with the goods], [what was actually delivered], [it carries no prices],
  [*Credit note*], [seller → buyer], [a reduction: returns, overcharge, allowance], [issued by the seller],
  [*Debit note*], [buyer → seller], [a claim for a reduction], [issued by the buyer],
  [*Statement of account*], [seller → buyer], [a summary of the account to date], [it is not a demand],
  [*Receipt*], [seller → buyer], [that the money has been paid], [proof of payment, not of supply],
)

#trap-box("Credit note or debit note?")[
  Ask *who is correcting the account*. If the seller owes the buyer a reduction — goods
  returned, an overcharge, an allowance — the seller issues a *credit note* and credits
  the buyer's account. If the buyer believes a reduction is due and the seller has not
  allowed it, the buyer issues a *debit note* and debits the seller. Any option that
  reverses the two is wrong by definition, however plausible it sounds.
]

#table(
  columns: (1.1fr, 1.55fr, 2.25fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where it appears],
  ),
  [*Trade discount*], [a reduction off the list price, for the trade], [on the invoice; never in the ledger],
  [*Cash discount*], [a reduction for paying within a stated period], [after the invoice; recorded as a discount allowed or received],
  [*Pro forma invoice*], [a quotation in invoice form, before supply], [sent to a buyer who must pay in advance],
  [*E. & O.E.*], [errors and omissions excepted], [at the foot of an invoice, to allow correction],
  [*Carriage paid / forward*], [who pays the transport], [in the terms on the invoice],
)

// ============================================================================
== 7.4 Four Worked Questions

#worked-example(
  1,
  "Capital",
  [Money used to buy stock, pay wages and settle bills in the day-to-day running of a business is

    A. fixed capital \\
    B. working capital \\
    C. share capital \\
    D. reserve capital],
  [
    *Step 1 — read the uses.* Stock, wages and bills are consumed in the cycle.

    *Step 2 — match.* That is working (circulating) capital.

    *Step 3 — eliminate.* Fixed capital buys what is kept; share capital is a source, not a use; reserve capital is not a standard term here.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Sources",
  [Which source of finance is most appropriate for building a new factory?

    A. Bank overdraft \\
    B. Trade credit \\
    C. Debenture \\
    D. Factoring],
  [
    *Step 1 — classify the need.* A factory is fixed capital, needed for decades.

    *Step 2 — match the term.* A debenture is long-term, secured and repayable at a distant date.

    *Step 3 — eliminate.* An overdraft is repayable on demand; trade credit is for stock; factoring sells debts.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Documents",
  [A buyer returns damaged goods to a supplier. The document the supplier issues is a

    A. debit note \\
    B. credit note \\
    C. receipt \\
    D. statement of account],
  [
    *Step 1 — decide who corrects the account.* The supplier owes the reduction, so the supplier issues the document.

    *Step 2 — match.* A seller's reduction is a credit note.

    *Step 3 — eliminate.* A debit note comes from the buyer; a receipt proves payment; a statement summarises.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Discounts",
  [A trader buys goods listed at ₦50,000 less 20% trade discount, and pays within the period to earn 5% cash discount. He pays

    A. ₦37,500 \\
    B. ₦38,000 \\
    C. ₦40,000 \\
    D. ₦47,500],
  [
    *Step 1 — trade discount.* 20% of ₦50,000 = ₦10,000, so the invoice is ₦40,000.

    *Step 2 — cash discount on the invoice.* 5% of ₦40,000 = ₦2,000.

    *Step 3 — subtract.* ₦40,000 − ₦2,000 = ₦38,000.

    *Step 4 — check the trap.* ₦37,500 is 25% off the list price, which wrongly adds the two rates.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 7.5 Two-Minute Set

#mcq(1, [Working capital is], [fixed assets minus liabilities], [current assets minus current liabilities], [share capital plus reserves], [total assets])

#mcq(2, [A debenture holder is], [an owner], [a creditor], [a director], [a customer])

#mcq(3, [A credit note is issued by], [the buyer], [the seller], [the bank], [the carrier])

#mcq(4, [Trade discount is recorded], [in the sales ledger], [nowhere: it is deducted before entry], [as an expense], [as income])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The excess of current assets over current liabilities is the money free to run the cycle.]),
  ("B", [A debenture is a loan, so the holder is a creditor with a right to interest, not a dividend.]),
  ("B", [The seller credits the buyer's account to reduce what is owed; the buyer's own claim is a debit note.]),
  ("B", [Trade discount fixes the invoice price; only the net figure ever reaches the books.]),
))

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: the two capitals, the sources, the securities and the documents.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Business needs fixed capital for what it keeps and working capital for what it turns over, and working capital is current assets minus current liabilities. Sources are sorted by term: trade credit, overdraft, factoring and bills for the short term; loans, hire purchase and leasing for the medium; shares, debentures, mortgages and retained profit for the long. Ordinary shares carry the vote and the last claim; preference shares carry a fixed dividend paid first; debentures are loans, secured, with interest paid whether or not there is profit. The stock exchange gives shares liquidity and channels new issues. The documents follow one order: enquiry, quotation, order, invoice, delivery note, credit note or debit note, statement of account and receipt — with trade discount outside the books and cash discount inside them.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [Distinguish fixed from working capital with two examples each.],
  [Sort six sources of finance by term.],
  [Explain the difference between an ordinary share and a debenture, in two sentences.],
  [Say who issues a credit note and who issues a debit note.],
  [List the documents of an order in sequence.],
  [Compute a net price after a trade discount and a cash discount.])
)

#concept-box("Carry this into Chapter 8")[
  A business now has an owner, a trade, a set of services, a source of money and a paper
  trail. Chapter 8 adds the last party: the state, which taxes it, regulates it, competes
  with it, and — in the name of the consumer — protects the people it sells to.
]

#include "drill_ch07.typ"
