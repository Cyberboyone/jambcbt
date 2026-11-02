#import "template.typ": *

#current-chapter.update("Chapter 8: Company Accounts and Not-for-Profits")

#pagebreak()

#chapter-opener(
  8,
  "Company Accounts and Not-for-Profits",
  subtitle: "Shares, Debentures and Dividends — and the Accounts of an Organisation With No Owners",
  syllabus-ref: "Sec. 8 • Company Accounts and Not-for-Profit Organisations",
  utme-weight: "8 Qs a year",
  running: "Company Accounts and Not-for-Profits",
)

#focus-radar(
  objectives: (
    "Distinguish share capital from loan capital.",
    "Distinguish ordinary from preference shares.",
    "Prepare an appropriation account for a company.",
    "State how a dividend may and may not be paid.",
    "Distinguish a receipts and payments account from an income and expenditure account.",
    "Treat a surplus, a deficit, subscriptions in arrears and a life subscription.",
  ),
  hotspots: (
    "*A share is ownership; a debenture is a loan.* The shareholder receives a dividend and votes; the debenture holder receives interest and does not vote.",
    "*Preference shares* carry a fixed dividend paid before the ordinary dividend, and usually no vote.",
    "*Interest on debentures is an expense* charged before profit; a dividend is an appropriation of profit after it.",
    "*Dividends may be paid only out of distributable profit*, never out of capital.",
    "*Not-for-profit:* the receipts and payments account is a cash summary; the income and expenditure account is the accruals account, and its balance is the *surplus or deficit* for the year.",
  ),
  trap-summary: "Four slips. (1) Treating debenture interest as an appropriation. (2) Paying a preference dividend after the ordinary dividend. (3) Treating a receipt in the receipts and payments account as income when it relates to next year. (4) Forgetting that accumulated subscriptions in arrears may be shown as a current asset only if they are expected to be received.",
)

// ============================================================================
== 8.1 Share Capital and Loan Capital

A company raises long-term money in two ways, and the paper is built on the difference between them.

#table(
  columns: (1.1fr, 1.5fr, 1.5fr),
  inset: (x: 4.4pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Share capital (owners)],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Debentures (creditors)],
  ),
  [Holder is], [a shareholder, part-owner], [a debenture holder, lender],
  [Return], [dividend, variable for ordinary shares], [interest, fixed and contractual],
  [Charged before profit?], [no — paid out of profit after tax], [yes — an expense before profit],
  [Vote at meetings?], [yes, for ordinary shareholders], [no],
  [Priority on winding up], [after the creditors], [with the creditors, before shareholders],
  [Security], [none — the last claim], [often secured on the company's assets],
  [Effect on gearing], [equity, not gearing], [debt, which raises gearing],
)

#v(3pt)

#concept-box("Two words that carry the marks")[
  *Appropriation* means a division of profit among the owners. *Charge* means a cost deducted
  before profit is calculated. Debenture interest is a charge; a dividend is an
  appropriation. Partners' salaries are appropriations, employees' wages are charges. If you
  can place a payment in the right one of those two boxes, you can answer most of the
  company questions in the paper.
]

// ============================================================================
== 8.2 The Appropriation Account of a Company

#formula-box("Appropriation account, for the year ended 31 December")[
  #text(size: 9.3pt)[*Profit before tax − tax = profit after tax*] \
  #text(size: 9.3pt)[*less: transfer to reserves, preference dividend, ordinary dividend = retained profit for the year*]
]

#table(
  columns: (2.3fr, 0.9fr, 0.9fr),
  inset: (x: 6pt, y: 4.4pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Appropriation account],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[₦],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[₦],
  ),
  [Profit before tax], [], [2,000,000],
  [Less company income tax at 30%], [600,000], [],
  [*Profit after tax*], [], [*1,400,000*],
  [Less transfer to general reserve], [200,000], [],
  [Less preference dividend at 8% on ₦1,000,000], [80,000], [],
  [Less ordinary dividend at 12% on ₦2,000,000], [240,000], [],
  [*Retained profit for the year*], [], [*880,000*],
  [Add retained profit brought forward], [], [620,000],
  [*Retained profit carried forward*], [], [*1,500,000*],
)

#v(2pt)

The *dividend* is calculated on the *nominal* value of the shares, never on their market price and never on the amount paid up unless the shares are partly paid. An 8% preference share of ₦1 carries ₦0.08 a year; a 12% ordinary dividend on two million naira of ordinary shares is ₦240,000, whatever the shares are trading at on the exchange.

// ============================================================================
== 8.3 The Two Statements of a Company

#table(
  columns: (1.3fr, 1.6fr, 1.5fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Statement],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it shows],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What the paper asks],
  ),
  [*Statement of profit or loss*], [income less expenses, the tax charge, and the appropriation that follows], [profit after tax; the dividend; the retained figure],
  [*Statement of financial position*], [non-current assets, current assets, equity (share capital and reserves), non-current liabilities and current liabilities], [the reserves figure; the total equity; the gearing],
  [*Statement of changes in equity*], [opening equity, profit for the year, dividends paid, closing equity], [why retained profit moved],
  [*Statement of cash flows*], [operating, investing and financing cash], [rarely more than one question, and it is classification],
)

#v(2pt)

Two ratios appear in this chapter and in Appendix E. *Earnings per share* is profit after tax divided by the number of ordinary shares. *Dividend cover* is profit after tax divided by the ordinary dividend, and it answers the question a shareholder actually asks: how many times over could the company have paid this dividend?

#diagram-fig("diagrams/ch08_company.svg",
  "Share capital against debentures, and the appropriation account that follows the tax charge.", width: 94%)

// ============================================================================
== 8.4 Not-for-Profit Organisations

A club, a church, a mosque or a charity has *members*, not owners. It has no share capital and pays no dividend. Its accounts are therefore built to answer a different question: did the year's income cover the year's expenditure, and what is the fund worth now?

#table(
  columns: (1.3fr, 1.55fr, 1.55fr),
  inset: (x: 4.4pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Receipts and payments],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Income and expenditure],
  ),
  [Basis], [cash actually received and paid], [accruals — income earned and expenditure incurred],
  [Period], [the year], [the year],
  [Balance], [cash at bank and in hand], [surplus or deficit, carried to the accumulated fund],
  [Capital items], [shown, because cash moved], [excluded; they go to the balance sheet],
  [Prepaid and accrued], [ignored], [adjusted, exactly as in a business],
  [Purpose], [to explain the movement in cash], [to show whether the year's activities were covered],
)

#v(3pt)

#trap-box("Subscriptions: cash is not income")[
  A subscription received in December for next year is *cash* and appears in the receipts and
  payments account, but it is not *income* of this year: it is income received in advance, a
  liability. A subscription owing at the year end is income of this year, and it appears in
  the income and expenditure account even though no cash has arrived. The reconciliation is
  always the same three lines: arrears at the start + subscriptions received this year −
  arrears at the end − advance received = subscriptions belonging to the year.
]

// ============================================================================
== 8.5 Four Worked Questions

#worked-example(
  1,
  "Ordinary or preference?",
  [A shareholder is entitled to a fixed dividend and has no vote at general meetings. He holds

    A. ordinary shares \\
    B. preference shares \\
    C. debentures \\
    D. a loan stock],
  [
    *Step 1 — fixed dividend and no vote.* That is the classic description of a preference share.

    *Step 2 — eliminate.* Ordinary shares carry a variable dividend and a vote; debentures and loan stock are debts, not shares, and their return is interest.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The dividend",
  [A company has 200,000 ordinary shares of ₦1 each and declares a dividend of 15 kobo per share. The total dividend is

    A. ₦15,000 \\
    B. ₦30,000 \\
    C. ₦200,000 \\
    D. ₦3,000,000],
  [
    *Step 1 — dividend per share.* 15 kobo = ₦0.15.

    *Step 2 — multiply by the shares in issue.* 200,000 × 0.15 = *₦30,000*.

    *Step 3 — check the size.* A 15% dividend on ₦200,000 of nominal capital is ₦30,000, which agrees.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "The appropriation",
  [Profit before tax is ₦2,000,000 and tax is 30%. The company transfers ₦200,000 to reserves, pays an 8% preference dividend on ₦1,000,000 of preference shares and a 12% ordinary dividend on ₦2,000,000 of ordinary shares. The retained profit for the year is

    A. ₦880,000 \\
    B. ₦1,080,000 \\
    C. ₦1,400,000 \\
    D. ₦1,480,000],
  [
    *Step 1 — profit after tax.* 2,000,000 − 30% = *₦1,400,000*.

    *Step 2 — the appropriations.* Reserve 200,000; preference 8% × 1,000,000 = 80,000; ordinary 12% × 2,000,000 = 240,000; total *₦520,000*.

    *Step 3 — retained.* 1,400,000 − 520,000 = *₦880,000*.

    *Step 4 — eliminate.* B forgets the reserve; C stops at profit after tax; D adds instead of deducting the preference dividend.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The club's subscriptions",
  [A club had subscriptions in arrears of ₦40,000 at the start of the year and ₦55,000 at the end. It received ₦600,000 in subscriptions during the year, including ₦30,000 for next year. The subscriptions to be credited to the income and expenditure account are

    A. ₦555,000 \\
    B. ₦585,000 \\
    C. ₦600,000 \\
    D. ₦625,000],
  [
    *Step 1 — start from the cash.* Subscriptions received ₦600,000.

    *Step 2 — remove what is not this year's income.* The ₦30,000 for next year is income in advance: 600,000 − 30,000 = ₦570,000.

    *Step 3 — adjust for arrears.* Add the arrears at the end (income earned, not yet received) and deduct the arrears at the start (income of last year, received this year): 570,000 + 55,000 − 40,000 = *₦585,000*.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 8.6 Two-Minute Set

#mcq(1, [Debenture interest is], [an appropriation of profit], [a charge against profit], [a dividend], [paid only when profit is made])

#mcq(2, [A dividend may be paid out of], [share capital], [distributable profit], [debenture stock], [revaluation surplus only])

#mcq(3, [A receipts and payments account is prepared on], [the accruals basis], [the cash basis], [the profit basis], [the equity basis])

#mcq(4, [The balance of an income and expenditure account represents], [the cash at bank], [the surplus or deficit for the year], [the accumulated fund], [the subscriptions in arrears])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Interest is the price of borrowed money, so it is charged before profit is computed, whether or not a profit is made.]),
  ("B", [A dividend is a distribution of profit; paying one out of capital would reduce the creditors' protection.]),
  ("B", [It records money actually received and paid, which is why capital receipts and prepayments appear in it.]),
  ("B", [Income less expenditure for the year gives a surplus or a deficit, which is then added to or deducted from the accumulated fund.]),
))

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: shares, debentures, appropriation and the not-for-profit accounts.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A company raises long-term money by issuing shares, which make the holder an owner, and debentures, which make him a creditor. Ordinary shares carry a variable dividend and a vote; preference shares carry a fixed dividend paid first and usually no vote. Interest on debentures is a charge before profit; dividends are appropriations after tax, and they may only be paid out of distributable profit. The appropriation account takes profit after tax, deducts transfers to reserves and the two dividends, and carries the remainder to retained profit. A not-for-profit organisation has members instead of owners: its receipts and payments account is a cash summary, its income and expenditure account is the accruals account, and its balance is a surplus or deficit carried to the accumulated fund.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [Give four differences between a share and a debenture.],
  [Distinguish ordinary from preference shares on dividend and vote.],
  [Prepare an appropriation account from a profit before tax and a tax rate.],
  [Compute a dividend from a nominal value and a rate.],
  [Distinguish a receipts and payments account from an income and expenditure account.],
  [Reconcile subscriptions received to subscriptions belonging to the year.],
))

#concept-box("Where the volume ends, and Volume 2 begins")[
  This volume taught the record and the report. Volume 2 takes the same double entry into
  cost: manufacturing accounts, job and process costing, marginal costing and break-even,
  budgetary control, incomplete records and public-sector accounting — with a bank of
  full-length timed papers at the end. Nothing in it will ask you to unlearn anything here.
]

#include "drill_ch08.typ"
