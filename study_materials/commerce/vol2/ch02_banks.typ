#import "template.typ": *

#current-chapter.update("Chapter 2: The Banking System")

#pagebreak()

#chapter-opener(
  2,
  "The Banking System",
  subtitle: "Commercial Banks, Credit Creation, the Central Bank and Monetary Policy",
  syllabus-ref: "Sec. 2 • Financial Institutions",
  utme-weight: "8 Qs a year",
  running: "The Banking System",
)

#focus-radar(
  objectives: (
    "Explain what a bank does between savers and borrowers.",
    "Name the accounts a commercial bank offers, and the services attached to each.",
    "Compute the credit multiplier and the total deposit a single injection creates.",
    "State the functions of the central bank, and separate them from those of a commercial bank.",
    "Name the instruments of monetary policy and say which way each works.",
    "Identify the document used for a given payment: cheque, draft, standing order, direct debit, letter of credit.",
  ),
  hotspots: (
    "*Credit creation is the examinable arithmetic.* A deposit of ₦100,000 with a cash ratio of 20 per cent supports ₦500,000 of deposits, because the multiplier is 1 ÷ 0.20 = 5. Credit created is the total minus the original deposit.",
    "*The central bank does not bank the public.* It banks the government and the commercial banks, and it is the lender of last resort.",
    "*Monetary policy is a set of levers, each with a direction.* Selling treasury bills withdraws cash; raising the cash ratio shrinks the multiplier; raising the bank rate makes credit dearer.",
    "*A standing order is yours; a direct debit is theirs.* The first is an instruction you give to your bank to pay a fixed sum; the second authorises a payee to collect a variable sum.",
    "*The clearing house* is where banks exchange cheques and settle the difference — a central-bank function, not a commercial one.",
  ),
  trap-summary: "Four slips. (1) Adding the original deposit to the credit created and calling the sum the multiplier's product. (2) Saying the central bank lends to traders. (3) Confusing the cash ratio with the liquidity ratio. (4) Treating a bank overdraft as a loan paid into the account, when it is a permission to go below zero.",
)

// ============================================================================
== 2.1 What a Bank Does

A bank is a *financial intermediary*: it collects the small, short, safe savings of many
people and turns them into the larger, longer, riskier loans that businesses need. It
earns the difference between the interest it pays depositors and the interest it charges
borrowers, and it accepts the risk that a borrower will not repay.

#concept-box("The three services behind every bank product")[
  + *Accepting deposits* — holding other people's money safely and returning it on demand or at notice.
  + *Lending* — turning those deposits into credit, at a price, against security or against a promise.
  + *Payments* — moving money between accounts, towns and countries without the physical notes travelling.
  Every product in the table below is one of these three in a different dress.
]

// ============================================================================
== 2.2 The Commercial Bank and Its Services

#diagram-fig("diagrams/ch02_banks.svg",
  "The banking pyramid: four tiers of institution, and the job each one does.", width: 96%)

#table(
  columns: (1.35fr, 2.1fr, 1.5fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Service],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it gives the customer],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[How the bank is paid],
  ),
  [Current account], [payment on demand by cheque or card, with no interest and usually a charge], [account maintenance and transaction fees],
  [Savings account], [interest on a small balance, withdrawn against a passbook or card], [the margin between deposit and lending rates],
  [Fixed (time) deposit], [a higher rate in return for leaving the money for an agreed term], [the lending margin, and a penalty for early withdrawal],
  [Loan and overdraft], [a lump sum for a term, or permission to overdraw to a limit], [interest, fees and security],
  [Money transfer], [payment to a third party by transfer, draft or electronic instruction], [commission],
  [Foreign exchange], [buying and selling foreign currency for trade and travel], [the spread between buying and selling rates],
  [Safe custody], [a strongroom for documents and valuables], [a rental charge],
  [Advisory and agency], [standing orders, direct debits, salary payments, tax collection], [commission or a service charge],
)

#v(2pt)

#trap-box("Current, savings and fixed — the three questions")[
  *Which pays the highest interest?* Fixed, because the bank has the use of the money for
  a term. *Which can be withdrawn without notice?* Current. *Which is used by a business
  for its day-to-day payments?* Current, because it carries a cheque book and can be
  drawn on demand. A question that says \"a trader needs to pay suppliers at short
  notice\" is asking for the current account whatever the interest rates are.
]

// ============================================================================
== 2.3 Credit Creation

When a bank lends, it does not hand over cash from a vault; it credits the borrower's
account with a deposit. That deposit is money. When the borrower pays it to someone who
banks with the same system, the money returns as a new deposit, of which a fraction is
kept as cash and the rest lent again.

#table(
  columns: (1.0fr, 1.5fr, 1.5fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (center + horizon, right + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Round],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[New deposit ₦],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Cash kept (20%) ₦],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Lent on ₦],
  ),
  [1], [100,000], [20,000], [80,000],
  [2], [80,000], [16,000], [64,000],
  [3], [64,000], [12,800], [51,200],
  [4], [51,200], [10,240], [40,960],
  […], […], […], […],
  [*Total*], [*500,000*], [*100,000*], [*400,000*],
)

#v(2pt)

#formula-box("The credit multiplier")[
  #text(size: 10.2pt)[
    Multiplier = 1 ÷ cash ratio \
    Total deposits = original deposit × multiplier \
    Credit created = total deposits − original deposit
  ]
]

#text(size: 9.4pt)[With a cash ratio of 20 per cent the multiplier is 5, so ₦100,000 of new cash supports ₦500,000 of deposits and creates ₦400,000 of credit. Two limits are examinable: the *cash ratio* itself, and the *leakage* into cash in the hands of the public or into imports, which reduces the multiplier in practice. A question that raises the cash ratio to 25 per cent is asking you to recompute the multiplier as 4.]

// ============================================================================
== 2.4 The Central Bank

#table(
  columns: (1.35fr, 2.45fr, 1.15fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it does in practice],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who benefits],
  ),
  [Issue of currency], [has the sole right to issue notes and coins, and controls their supply], [the whole economy],
  [Banker to the government], [holds the government's accounts, receives revenue and pays its debts], [the state],
  [Banker to the banks], [holds the commercial banks' reserves and settles their differences in the clearing house], [the banks],
  [Lender of last resort], [lends to a solvent bank that cannot meet a sudden withdrawal], [the banking system's stability],
  [Monetary policy], [controls the supply and cost of credit through the instruments in 2.5], [prices, employment, the balance of payments],
  [Exchange reserves], [holds and manages the country's foreign currency and gold], [the currency's external value],
  [Supervision], [licenses banks, inspects them and enforces the rules], [depositors],
)

#v(2pt)

#rule-box("The sentence the paper rewards")[
  *The central bank is the bank of banks and the bank of government; it does not accept
  deposits from the public and it does not lend to traders.* A commercial bank competes
  for customers; a central bank exists to keep the system in which they compete from
  collapsing.
]

// ============================================================================
== 2.5 Monetary Policy and Its Instruments

#table(
  columns: (1.4fr, 2.15fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[How it is used to tighten credit],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Effect],
  ),
  [Open market operations], [the central bank sells treasury bills and bonds, taking cash out of the banks], [banks have less to lend],
  [Cash reserve ratio], [the proportion of deposits that must be held with the central bank is raised], [the multiplier falls],
  [Liquidity ratio], [the proportion of deposits held as liquid assets is raised], [less is available for loans],
  [Bank (discount) rate], [the rate at which the central bank lends to the banks is raised], [borrowing costs rise through the system],
  [Special deposits], [banks are required to place a sum with the central bank], [lending capacity is reduced directly],
  [Selective credit control], [credit is restricted or directed by sector: cars, imports, speculation], [borrowing is steered],
  [Moral suasion], [the central bank persuades the banks to follow a policy], [voluntary restraint, of uncertain strength],
)

#v(2pt)

#text(size: 9.4pt)[Every instrument in the table works in one direction when it is applied and the opposite when it is relaxed. The paper usually asks for the direction: a sale of treasury bills *reduces* the money supply, a purchase *increases* it, and an increase in the cash ratio *reduces* the multiplier. Read the verb before you read the noun.]

// ============================================================================
== 2.6 The Instruments of Payment

#table(
  columns: (1.3fr, 2.4fr, 1.25fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who starts it],
  ),
  [Cheque], [a written order to a bank to pay a named sum from the drawer's account], [the payer],
  [Bank draft], [a cheque drawn by a bank on itself, so the money is certain], [the payer's bank],
  [Credit transfer], [a bank moves funds directly from one account to another], [the payer],
  [Standing order], [a fixed sum paid at fixed intervals until cancelled], [the payer],
  [Direct debit], [a payee collects a variable sum with the payer's prior authority], [the payee],
  [Letter of credit], [a bank's promise to pay an exporter once the shipping documents are presented], [the importer's bank],
  [Bill of exchange], [an unconditional written order to pay a sum on a date, used in trade finance], [the exporter or seller],
)

#v(2pt)

#shortcut-box("Three pairs that the paper swaps")[
  *Standing order or direct debit?* Fixed and initiated by the payer → standing order.
  Variable and initiated by the payee → direct debit. *Cheque or draft?* The payer's
  promise → cheque; the bank's promise → draft. *Bill of exchange or letter of credit?*
  A trade debt that can be discounted → bill; a bank's undertaking in international
  trade → letter of credit.
]

// ============================================================================
== 2.7 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [The lender of last resort in a banking system is

    A. the largest commercial bank \\
    B. the central bank \\
    C. the deposit insurance fund \\
    D. the ministry of finance],
  [
    *Step 1 — define the phrase.* The lender of last resort lends when no one else will, to a bank that is solvent but short of cash.

    *Step 2 — match.* Only the central bank can create the cash to do it.

    *Step 3 — eliminate.* A commercial bank is a competitor, not a rescuer; a deposit insurer repays depositors after a failure; the ministry of finance has no power to lend to a bank.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Arithmetic",
  [A bank receives a new deposit of ₦200,000 and the cash ratio is 25 per cent. The total deposits the system can support are

    A. ₦200,000 \\
    B. ₦500,000 \\
    C. ₦800,000 \\
    D. ₦1,000,000],
  [
    *Step 1 — find the multiplier.* 1 ÷ 0.25 = 4.

    *Step 2 — apply it.* 200,000 × 4 = ₦800,000 of total deposits.

    *Step 3 — eliminate.* A is the original deposit only; B uses a multiplier of 2.5, which no ratio in the stem produces; D uses 5, the multiplier for a 20 per cent ratio.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Application",
  [To reduce the money supply, the central bank should

    A. buy treasury bills in the open market \\
    B. lower the cash reserve ratio \\
    C. sell treasury bills in the open market \\
    D. reduce the bank rate],
  [
    *Step 1 — ask which direction each lever moves.* Buying bills puts cash into the banks; selling takes it out.

    *Step 2 — match the aim.* A smaller money supply needs cash withdrawn, so selling is correct.

    *Step 3 — eliminate.* Lowering the reserve ratio and the bank rate both expand credit.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Classification",
  [A firm instructs its bank to pay ₦45,000 on the fifth of every month to its landlord. The instrument is a

    A. direct debit \\
    B. standing order \\
    C. bank draft \\
    D. bill of exchange],
  [
    *Step 1 — who starts it, and is the sum fixed?* The payer starts it, and the sum is fixed.

    *Step 2 — match.* A fixed sum paid at fixed intervals on the payer's instruction is a standing order.

    *Step 3 — eliminate.* A direct debit is started by the payee and varies; a draft is a one-off guaranteed payment; a bill of exchange is a trade debt.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 2.8 Two-Minute Set

#mcq(1, [The cash reserve ratio is the proportion of deposits that a bank must hold], [as loans], [as cash or with the central bank], [as fixed assets], [as shareholders' funds])

#mcq(2, [With a cash ratio of 10 per cent, the credit multiplier is], [1], [5], [10], [100])

#mcq(3, [The central bank's function of clearing inter-bank debts is part of its role as], [lender of last resort], [banker to the banks], [issuer of currency], [banker to the government])

#mcq(4, [A customer authorises a telephone company to collect a varying monthly bill from his account. This is], [a standing order], [a direct debit], [a cheque], [a bank draft])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [The reserve is held either as till cash or as a balance with the central bank.]),
  ("C", [1 ÷ 0.10 = 10, so the system supports ten times the new deposit.]),
  ("B", [Settling differences between banks is the central bank acting as the banks' own banker.]),
  ("B", [The payee collects a variable amount under the payer's standing authority — a direct debit.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the tiers, the accounts, the multiplier and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A commercial bank intermediates: it takes deposits, lends them at a margin, and moves
    money on instruction. Because a loan is credited to an account rather than paid in
    cash, the system creates deposits — total deposits are the original injection
    multiplied by 1 ÷ the cash ratio, and credit created is that total less the injection.
    The central bank sits above the system: it issues the currency, banks the government
    and the banks, lends last, holds the reserves and pulls the monetary levers. Every
    lever has a direction, and every payment instrument has an owner: the payer starts a
    standing order, the payee starts a direct debit.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Name six services of a commercial bank and the fee attached to each.],
  [Compute the multiplier and the credit created for any cash ratio.],
  [List six functions of the central bank.],
  [Say which way each monetary policy instrument moves when it is tightened.],
  [Choose the right instrument for a given payment.],
  [Explain why the central bank does not lend to the public.],
))

#concept-box("Carry this into Chapter 3")[
  A bank carries the risk that a borrower defaults; an insurer carries the risk that a
  shop burns down. Chapter 3 takes the second of those: how a small certain premium is
  made to stand behind a large uncertain loss, and which six principles a claim must
  satisfy before any money is paid.
]

#include "drill_ch02.typ"
