#import "template.typ": *

#current-chapter.update("Chapter 8: Public Sector and Computerised Accounting")

#pagebreak()

#chapter-opener(
  8,
  "Public Sector and Computerised Accounting",
  subtitle: "Voted Money, Fund Accounting, and What a Computer Changes about the Books",
  syllabus-ref: "Sec. 18 • Public Sector and Computerised Accounting",
  utme-weight: "4 Qs a year",
  running: "Public Sector and Computerised Accounting",
)

#focus-radar(
  objectives: (
    "Distinguish public-sector accounting from private-sector accounting.",
    "Explain the vote, the vote account and the estimate.",
    "Prepare a simple vote account and compute an unspent balance or an overspend.",
    "Explain fund accounting and the different funds a government keeps.",
    "Describe the accounting cycle in a computerised system.",
    "State the controls a computerised system needs, and the risks it creates.",
  ),
  hotspots: (
    "*A vote is an authority to spend, not a target to beat.* The legislature approves an estimate; the accounting officer may not spend beyond it without a supplementary vote, and a vote account compares the two figures line by line.",
    "*Public-sector accounting is on a cash basis in the traditional Nigerian system.* Receipts and payments are recorded when money moves, which is why the statement of assets and liabilities is not a balance sheet in the commercial sense.",
    "*Fund accounting keeps each fund separate.* Money given for a road cannot pay a teacher's salary, so each fund has its own books, and the surplus of one is not available to the other.",
    "*A computer does not remove the double entry.* It posts both sides from one entry, which makes the trial balance automatic — and makes a wrong entry twice as fast and twice as hard to see.",
  ),
  trap-summary: "Four slips. (1) Treating an unspent vote as a profit. (2) Comparing the actual expenditure with the *previous year's* estimate instead of the current approved estimate. (3) Mixing the funds, so that a surplus in one fund is used to meet a deficit in another. (4) Believing that a computerised system is self-checking: it is self-balancing, which is not the same thing, and the audit trail, the password and the back-up are the controls that make it trustworthy.",
)

// ============================================================================
== 8.1 Why Public Money Is Accounted for Differently

A company's accounts answer to its owners. A government's accounts answer to the legislature and, through it, to the taxpayer. The money is raised by law and spent within a *vote*, and the question is not "did we make a profit?" but "did we spend what we were authorised to spend, on what we were authorised to spend it on?"

#table(
  columns: (1.15fr, 1.55fr, 1.6fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Private sector],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Public sector],
  ),
  [Who authorises the spending?], [the owners or the board], [the legislature, by appropriation],
  [What is the main statement?], [profit and loss, and the balance sheet], [the vote account, and the statement of assets and liabilities],
  [What is the measure of success?], [profit, and the return on capital], [compliance with the vote, and value for money],
  [Basis of accounting], [accruals], [cash, in the traditional system; accruals where IPSAS is adopted],
  [Who audits?], [an appointed auditor, for the shareholders], [the Auditor-General, reporting to the legislature],
  [What is the accounting unit?], [the company], [the fund, and the vote],
)

#v(2pt)

#text(size: 9.5pt)[*Value for money* is the public-sector version of profit. It has three tests, and the paper asks for them by name: *economy* — buying at the lowest proper price; *efficiency* — getting the most output from the resources used; and *effectiveness* — achieving the objective the money was voted for. A road built on time, within the estimate, that actually carries traffic, passes all three.]

// ============================================================================
== 8.2 The Vote and the Vote Account

A *vote* is the sum approved by the legislature for a stated purpose. The *estimate* is the figure proposed; the *appropriation* is the figure approved; the *warrant* is the authority to release the money; and the *vote account* is the statement that compares what was approved with what was actually spent.

#table(
  columns: (2.1fr, 1.1fr, 1.0fr, 0.9fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, right + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Vote 03 — Ministry of Works],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Approved ₦],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Actual ₦],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Unspent ₦],
  ),
  [Personal emoluments], [12,000,000], [11,400,000], [600,000],
  [Overhead costs], [8,000,000], [8,600,000], [(600,000)],
  [Maintenance of roads], [30,000,000], [27,500,000], [2,500,000],
  [*Total*], [*50,000,000*], [*47,500,000*], [*2,500,000*],
)

#v(2pt)

#text(size: 9.5pt)[Two figures matter in that table. The *total* unspent balance is ₦2,500,000, but the overhead line is *overspent* by ₦600,000, and that is a breach of the vote even though the vote as a whole is underspent. Public-sector accounting does not permit a saving on one line to authorise an overspend on another unless the financial regulations allow virement — the transfer of funds between sub-heads with approval. That is why the vote account is set out line by line and not as a single total.]

#formula-box("The vote account, in one line")[
  #text(size: 9.4pt)[
    *Unspent balance* = approved estimate − actual expenditure (a positive figure) \
    *Overspend* = actual expenditure − approved estimate (a negative figure, and a query) \
    *Supplementary vote* = the additional approval needed before an overspend may be regularised
  ]
]

// ============================================================================
== 8.3 Fund Accounting

Governments do not keep one bank account with one purpose. A *fund* is a self-balancing set of accounts, kept for a stated purpose and governed by its own rules, and the accounts of the government are the sum of the funds.

#table(
  columns: (1.15fr, 1.6fr, 1.55fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Fund],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it may be spent on],
  ),
  [*Consolidated Revenue Fund*], [all revenue received, not earmarked by law], [any purpose approved in the appropriation],
  [*Development Fund*], [money for capital projects], [capital expenditure only],
  [*Contingency Fund*], [a reserve for emergencies], [unforeseen expenditure, with approval],
  [*Trust funds*], [money held for a stated beneficiary], [only the purpose of the trust],
  [*Special funds*], [earmarked levies, such as a road fund], [the purpose for which the levy was imposed],
)

#v(2pt)

#text(size: 9.5pt)[The rule that unifies them is simple and is worth a mark in any question that mentions funds: *money in a fund may be spent only on the purpose of that fund.* A surplus on the development fund does not pay salaries, and a deficit in the consolidated revenue fund is not met from a trust fund. That separation is the whole point of fund accounting, and it is why a government's accounts are a set of statements rather than one.]

#trap-box("An unspent vote is not a profit, and a fund is not a company")[
  Two confusions the paper likes. First, an unspent balance is money the accounting
  officer did not spend; it is returned or carried forward under the regulations, and it
  is not a surplus available for distribution. Second, a fund is not a company: it has no
  shareholders, it pays no dividend, and its "surplus" is simply the unspent balance of a
  purpose.
]

// ============================================================================
== 8.4 The Computerised Accounting System

A computerised system performs the same double entry as a manual one. What changes is *where the work happens*: the ledger is a database, the trial balance is a report, and the controls are passwords, validation rules and back-ups rather than a clerk's initials in the margin.

#table(
  columns: (1.2fr, 1.55fr, 1.55fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The control it needs],
  ),
  [Single entry of data], [one posting creates both sides of the transaction], [a chart of accounts that cannot be bypassed],
  [Validation], [rejects an entry with no account, a wrong date or an impossible amount], [a rule for every field, tested before it is saved],
  [Audit trail], [records who entered what, and when, and what was changed], [a log that cannot be edited by the user who is being logged],
  [Password and access levels], [a clerk may enter invoices but not post to the bank], [a named user for every login, never a shared password],
  [Back-up], [a copy of the data held away from the machine], [a schedule, and a test that the copy restores],
  [Report generation], [the trial balance and the statements at the press of a key], [a check that the reports are read, not merely printed],
)

#v(2pt)

#diagram-fig("diagrams/ch08_public.svg",
  "Public-sector accounting and computerised accounting side by side, and the accounting cycle that both systems still follow.", width: 97%)

#v(2pt)

#text(size: 9.5pt)[Three advantages are worth naming in a written answer: *speed* — a month's posting in an afternoon; *accuracy* — arithmetic and posting errors disappear; and *information* — a report can be produced for any period, any department, any product. Three disadvantages are worth naming with them: *the cost* of the software, the hardware and the training; *the dependence* on the machine and on the person who understands it; and *the risk* that a single wrong entry is replicated across every report before anybody notices it.]

#concept-box("Self-balancing is not self-checking")[
  A computerised ledger balances because one entry posts twice — not because the figures
  are right. If a purchase is coded to the wrong expense account, the trial balance still
  balances and the profit is still wrong. That is why the controls in the table above are
  not optional extras: they are the only thing standing between a fast system and a fast
  mistake.
]

// ============================================================================
== 8.5 Worked Examples

#worked-example(
  1,
  "The unspent vote",
  tier: "FOUNDATION",
  [
    A ministry was voted ₦50,000,000 and spent ₦47,500,000. The unspent balance is

    A. ₦2,500,000 \\
    B. ₦47,500,000 \\
    C. ₦97,500,000 \\
    D. nil, because a vote must be spent in full
  ],
  [
    *Step 1 — the formula.* Approved estimate − actual expenditure.

    *Step 2 — substitute.* 50,000,000 − 47,500,000 = *₦2,500,000*.

    *Step 3 — eliminate.* B is the expenditure; C adds the two; D confuses a vote with a target, which it is not — an unspent balance is returned or carried forward under the regulations.

    *Answer: A.*
  ],
)

#worked-example(
  2,
  "An overspent sub-head",
  tier: "UTME STANDARD",
  [
    In the same vote, overhead costs were approved at ₦8,000,000 and actually spent at ₦8,600,000. The vote account shows

    A. an unspent balance of ₦600,000 on overhead, and the total vote is under control \\
    B. an overspend of ₦600,000 on overhead, which is a breach of the vote even though the total is underspent \\
    C. nothing, because the total vote was not exceeded \\
    D. an overspend of ₦2,500,000 on the vote as a whole
  ],
  [
    *Step 1 — compare the line.* 8,600,000 − 8,000,000 = ₦600,000 more than was approved.

    *Step 2 — decide what that means.* The vote is approved sub-head by sub-head, so an overspend on one line is a breach unless it is covered by virement or a supplementary vote.

    *Step 3 — eliminate.* A reads the sign wrongly; C is the mistake the question exists to catch; D confuses the overhead line with the vote total.

    *Answer: B.*
  ],
)

#worked-example(
  3,
  "Which fund pays?",
  tier: "UTME STANDARD",
  [
    A state government has a surplus of ₦40 million on its development fund and a deficit of ₦25 million on its consolidated revenue fund. The deficit may be met

    A. from the development fund surplus, because both funds belong to the state \\
    B. from a trust fund, with the trustee's consent \\
    C. only from additional revenue, an approved overdraft or a supplementary appropriation \\
    D. by transferring the surplus, because fund accounting applies to companies only
  ],
  [
    *Step 1 — the rule.* Each fund is self-balancing and may be spent only on its own purpose.

    *Step 2 — apply it.* The development fund's surplus is committed to capital projects, so it cannot pay recurrent expenditure.

    *Step 3 — eliminate.* A and D abolish the separation that fund accounting exists to create; B would breach the trust.

    *Answer: C.*
  ],
)

#worked-example(
  4,
  "The control that catches the error",
  tier: "JAMB CHALLENGE",
  [
    A clerk posts a ₦250,000 purchase of stationery to the motor vehicle account. The trial balance still agrees. The control most likely to reveal the error is

    A. the trial balance itself \\
    B. a validation check on the amount field \\
    C. the audit trail, read against the source document \\
    D. the bank reconciliation
  ],
  [
    *Step 1 — why the trial balance cannot help.* The entry was double, so both sides moved and the trial balance agrees. It catches one-sided errors only.

    *Step 2 — why validation cannot help.* ₦250,000 is a valid amount; validation tests the *form* of the entry, not its meaning.

    *Step 3 — why the audit trail can.* The log names the user, the time and the account, and a review against the invoice shows that stationery was coded to motor vehicles.

    *Step 4 — why the bank reconciliation cannot.* It checks the bank against the cash book; the error is in the nominal ledger and the payment itself was correct.

    *Answer: C.*
  ],
)

#v(2pt)

#trap-box("The trial balance is not an error detector")[
  Volumes 1 and 2 repeat this for a reason. A trial balance catches *arithmetic and one-sided*
  errors. It cannot catch a transaction posted twice, a transaction omitted altogether, or a
  transaction posted to the wrong account of the same class. In a computerised system the
  trial balance balances by construction, so those three errors are more likely, not less,
  and the controls that catch them are the audit trail and the reconciliation to the source
  documents.
]

// ============================================================================
== 8.6 Two-Minute Set

#mcq(1, [The statement that compares approved expenditure with actual expenditure is the], [appropriation account], [vote account], [statement of affairs], [trial balance])

#mcq(2, [Public-sector accounting in the traditional Nigerian system is kept on the], [accruals basis], [cash basis], [break-up basis], [marginal basis])

#mcq(3, [Money approved for a capital project is kept in the], [consolidated revenue fund], [development fund], [contingency fund], [trust fund])

#mcq(4, [Which control would prevent a clerk from posting to the bank account?], [a validation check], [a password with restricted access rights], [a bank reconciliation], [a back-up])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The vote account sets the approved estimate against the actual expenditure, sub-head by sub-head.]),
  ("B", [Receipts and payments are recorded when the money moves, which is the cash basis; IPSAS adoption moves some entities to accruals.]),
  ("B", [The development fund exists for capital projects; the consolidated revenue fund carries recurrent spending.]),
  ("B", [Access rights decide which accounts a user may touch; validation tests the entry, and reconciliation detects an error after the event.]),
))

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: the vote, the funds, the computerised cycle and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Public money is voted, spent within the vote, and accounted for line by line in a vote account that compares the approved estimate with the actual. Success is compliance and value for money — economy, efficiency and effectiveness — not profit. Each fund keeps its own books and may be spent only on its own purpose, so a surplus in one fund cannot rescue a deficit in another. A computerised system performs the same double entry faster: one posting creates both sides, validation rejects a malformed entry, the audit trail records who did what, passwords limit who may post where, and back-ups survive the machine. It balances by construction, which is not the same as being right, and the audit trail and the reconciliation are the controls that catch what the trial balance never could.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [State four differences between public-sector and private-sector accounting.],
  [Explain a vote, an estimate and a supplementary vote.],
  [Prepare a vote account and identify an overspend on a sub-head.],
  [Name four funds and the purpose of each.],
  [List four controls a computerised accounting system needs.],
  [Explain why a computerised trial balance is not proof of accuracy.],
))

#concept-box("Carry this into the papers")[
  The eight chapters are now behind you. The two full papers that follow mix them in the
  order the real examination does, and the 120-question bank after them re-tests every
  chapter without repeating a single drill item.
]

#include "drill_ch08.typ"
