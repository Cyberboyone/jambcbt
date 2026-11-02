#import "template.typ": *

#current-chapter.update("Chapter 6: Correction of Errors and Suspense")

#pagebreak()

#chapter-opener(
  6,
  "Correction of Errors and Suspense",
  subtitle: "The Trial Balance Agrees — So Why Is the Profit Still Wrong?",
  syllabus-ref: "Sec. 6 • Correction of Errors and Suspense Accounts",
  utme-weight: "7 Qs a year",
  running: "Correction of Errors and Suspense",
)

#focus-radar(
  objectives: (
    "Name and illustrate the six types of error.",
    "Say which errors disturb the trial balance and which do not.",
    "Journalise a correction, with the narration the examiner expects.",
    "Open a suspense account and clear it.",
    "Compute the effect of an error on the reported profit.",
    "Recognise the difference that is divisible by nine as a transposition.",
  ),
  hotspots: (
    "*Five errors never disturb the trial balance:* omission, commission, principle, original entry and compensating errors. Only a *one-sided* error leaves it unequal.",
    "*Error of principle* is a classification error between capital and revenue — a motor vehicle in the repairs account.",
    "*Error of commission* is a posting to the wrong account of the *same class* — Yusuf's account instead of Yinka's.",
    "*Suspense account:* if the debits exceed the credits, the suspense account has a credit balance, and vice versa.",
    "*Effect on profit:* an error in an expense or an income changes profit; an error between two balance-sheet accounts does not.",
  ),
  trap-summary: "Four slips. (1) Calling a transposition an error of principle. (2) Believing that a trial balance which agrees means the books are free of error. (3) Reversing the suspense entry — the suspense account takes the side that is missing. (4) Forgetting that sales overcast by ₦40,000 overstates profit by ₦40,000, not understates it.",
)

// ============================================================================
== 6.1 The Six Errors

#table(
  columns: (1.2fr, 1.9fr, 1.3fr),
  inset: (x: 4.4pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Error],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What happened],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Effect on the trial balance],
  ),
  [*Omission*], [a transaction was left out of the books altogether], [none — both sides are missing],
  [*Commission*], [posted to the wrong account of the same class: a debtor credited instead of another debtor], [none — both sides still balance],
  [*Principle*], [a capital item treated as revenue, or the reverse: a vehicle in the repairs account], [none],
  [*Original entry*], [the wrong amount entered first, in both accounts], [none],
  [*Compensating*], [two errors of equal amount that cancel each other], [none],
  [*Transposition*], [figures reversed: ₦4,500 entered as ₦5,400], [the difference is divisible by 9],
)

#v(3pt)

The test is always the same question: *did the error touch one side of the double entry or both?* An error that touches both leaves the totals equal, and the trial balance cannot see it. An error that touches one leaves the totals unequal by the amount of that entry, and the difference sits in the suspense account until it is found.

#concept-box("Why the difference is divisible by nine")[
  Reverse the digits of a number and the difference between the two numbers is always a
  multiple of nine: 5,400 − 4,500 = 900. So when a trial balance difference is divisible by
  nine, look first for a transposition; when it is divisible by two, look for an entry
  posted to the wrong side of an account, because that doubles the error.
]

// ============================================================================
== 6.2 The Suspense Account

When the trial balance does not agree, the difference is entered in a *suspense account* so that a trial balance can be produced at all. The suspense account is therefore a holding place, and its balance is a promise that the error will be found.

#formula-box("Which side does the suspense account take?")[
  #text(size: 9.4pt)[If the *debits* exceed the *credits* by ₦X, the suspense account is *credited* with ₦X.] \
  #text(size: 9.4pt)[If the *credits* exceed the *debits*, the suspense account is *debited* with ₦X.]
]

#table(
  columns: (1.75fr, 1.35fr, 1.35fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The error],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The correction],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Suspense],
  ),
  [A credit sale of ₦30,000 was not posted to the debtor's account], [Dr debtor 30,000, Cr suspense 30,000], [credited],
  [A purchase of ₦18,000 was not posted to the creditor's account], [Dr suspense 18,000, Cr creditor 18,000], [debited],
  [The debit side of an account was overcast by ₦12,000], [Dr suspense 12,000, Cr the account 12,000], [debited],
  [Sales were undercast by ₦25,000], [Dr suspense 25,000, Cr sales 25,000], [debited],
)

#v(2pt)

Once every error has been corrected, the suspense account must close to *nil*. If it does not, an error remains, and the balance of the suspense account is the amount still missing — which is exactly what an examiner means by "the suspense account had a debit balance of ₦…".

#diagram-fig("diagrams/ch06_errors.svg",
  "Six errors, the trial balance's verdict on each, and the suspense account that holds the difference.", width: 94%)

// ============================================================================
== 6.3 Effect of an Error on Profit

An error changes reported profit only when it touches an *income* or an *expense* account. An error between two asset accounts changes the balance sheet and leaves profit alone.

#table(
  columns: (1.9fr, 1.1fr, 1.5fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Error],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Profit],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why],
  ),
  [Sales overcast by ₦40,000], [overstated by ₦40,000], [income too high],
  [Sales undercast by ₦40,000], [understated by ₦40,000], [income too low],
  [Purchases overcast by ₦25,000], [understated by ₦25,000], [expense too high],
  [Rent paid, entered in the machinery account], [overstated], [an expense was omitted and an asset inflated],
  [Motor van bought, entered in the repairs account], [understated], [a capital item was charged as an expense],
  [Cash received from a debtor omitted entirely], [no effect], [both sides are balance-sheet items],
)

// ============================================================================
== 6.4 Four Worked Questions

#worked-example(
  1,
  "Name the error",
  [Goods bought for the owner's private use were recorded in the purchases account. This is an error of

    A. omission \\
    B. principle \\
    C. commission \\
    D. original entry],
  [
    *Step 1 — what was classified wrongly?* A private expense was treated as a business purchase, so a capital item (drawings) went into a revenue account.

    *Step 2 — name it.* The confusion of capital and revenue is an error of principle.

    *Step 3 — eliminate.* Nothing was omitted; no wrong debtor was used; the amount was not mis-entered.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "What the trial balance sees",
  [Which of these errors would leave the trial balance in agreement?

    A. A credit sale of ₦5,000 posted to the debit of sales only \\
    B. A payment of ₦8,000 entered in the cash book only \\
    C. A credit purchase of ₦9,000 entered as ₦900 in both the purchases and the creditor's account \\
    D. A debit balance of ₦6,000 omitted from the trial balance],
  [
    *Step 1 — test each for one-sidedness.* A leaves one side of the double entry missing; B has no ledger posting at all; D omits one balance from the list.

    *Step 2 — C is different.* The same wrong amount was entered in *both* accounts, so both columns are equally wrong.

    *Step 3 — name it.* That is an error of original entry, and it leaves the trial balance agreeing while understating both purchases and creditors.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The suspense entry",
  [A trial balance showed debits exceeding credits by ₦57,000. Investigation found that a credit purchase of ₦57,000 had been entered in the purchases day book but not posted to the creditor's account. The correction is

    A. debit suspense, credit creditor \\
    B. debit creditor, credit suspense \\
    C. debit purchases, credit suspense \\
    D. debit suspense, credit purchases],
  [
    *Step 1 — which side is missing?* The purchases were debited but the creditor was never credited, so the *credit* side is short by ₦57,000.

    *Step 2 — correct it.* Credit the creditor ₦57,000 for the first time, and debit the suspense account to clear the difference.

    *Step 3 — eliminate.* B reverses the pair; C and D touch purchases, which was already correctly debited.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Corrected profit",
  [A firm reported a net profit of ₦300,000. It was then found that sales had been overcast by ₦45,000 and rent undercast by ₦20,000. The corrected net profit is

    A. ₦235,000 \\
    B. ₦245,000 \\
    C. ₦265,000 \\
    D. ₦365,000],
  [
    *Step 1 — the sales error.* Overcast sales means income was too high by ₦45,000, so profit falls by ₦45,000.

    *Step 2 — the rent error.* Undercast rent means the expense was too low by ₦20,000, so profit falls again by ₦20,000.

    *Step 3 — corrected profit.* 300,000 − 45,000 − 20,000 = *₦235,000*.

    *Step 4 — check the direction.* Both errors flattered the profit, so the correction can only reduce it. Option D adds them, which would be right only if both had understated profit.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 6.5 Two-Minute Set

#mcq(1, [A trial balance difference of ₦900 is most likely caused by], [an error of principle], [a transposition], [an error of omission], [a compensating error])

#mcq(2, [A motor vehicle bought for the managing director's use was debited to the motor expenses account. This is an error of], [omission], [commission], [principle], [original entry])

#mcq(3, [If the debits in a trial balance exceed the credits, the suspense account is], [debited with the difference], [credited with the difference], [not affected], [closed to capital])

#mcq(4, [Sales undercast by ₦10,000 will cause profit to be], [overstated by ₦10,000], [understated by ₦10,000], [unaffected], [understated by ₦20,000])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [A difference divisible by nine points to reversed digits; a difference divisible by two points to an entry on the wrong side.]),
  ("C", [The vehicle is a capital asset but was charged as a revenue expense, which is the definition of an error of principle.]),
  ("B", [The missing amount must be added to the credit column, so the suspense account is credited; it will be debited when the error is corrected.]),
  ("B", [Income was recorded too low, so profit is understated by the same amount; correcting the sales figure raises profit by ₦10,000.]),
))

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the six errors, the suspense account and the effect on profit.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Six errors are examinable: omission, commission, principle, original entry, compensating errors and transposition. The first five leave the trial balance in agreement because they touch both sides of the double entry equally; only a one-sided error, or an addition error in the trial balance itself, makes the columns differ. The difference is carried in a suspense account — credited when the debits are the larger, debited when the credits are — and every correction is journalised with a narration until the suspense account closes to nil. An error changes profit only when it touches an income or an expense: overcast sales overstate profit, undercast expenses overstate it, and an error between two assets changes nothing but the balance sheet.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Name the six errors and give an example of each.],
  [Say which of them disturb the trial balance, and why the others do not.],
  [Write the correction for a credit sale omitted from the debtor's account, with the suspense entry.],
  [Say which side the suspense account takes when debits exceed credits.],
  [Compute corrected profit from two errors and a reported figure.],
  [Explain why a difference divisible by nine suggests a transposition.],
))

#concept-box("Carry this into Chapter 7")[
  Chapters 2 to 6 were about one owner. Chapter 7 adds a second: how the profit is shared
  when there are two or more partners, why each partner keeps a capital account and a
  current account, and what happens when one of them joins or leaves.
]

#include "drill_ch06.typ"
