#import "template.typ": *

#current-chapter.update("Chapter 7: Partnership Accounts")

#pagebreak()

#chapter-opener(
  7,
  "Partnership Accounts",
  subtitle: "The Deed, the Appropriation Account, and the Two Accounts Every Partner Keeps",
  syllabus-ref: "Sec. 7 • Partnership Accounts",
  utme-weight: "8 Qs a year",
  running: "Partnership Accounts",
)

#focus-radar(
  objectives: (
    "State the terms a partnership deed normally settles.",
    "State the default rules where there is no deed.",
    "Prepare an appropriation account.",
    "Prepare partners' capital and current accounts.",
    "Compute a partner's total share of profit.",
    "Recognise the treatment of goodwill and revaluation on admission.",
  ),
  hotspots: (
    "*No deed means equal shares* of profit and loss, no interest on capital, no salaries and no interest on drawings.",
    "*Interest on capital* is an appropriation of profit, not an expense, so it does not reduce the net profit — it divides it.",
    "*Salaries to partners* are also appropriations, and they are charged before the residual profit is shared.",
    "*Capital account* holds the long-term stake and is normally fixed; *current account* holds salary, interest, profit share and drawings.",
    "*Interest on drawings* is income to the firm and is credited to the appropriation account, reducing the profit available to the partners.",
  ),
  trap-summary: "Four slips. (1) Treating partners' salaries as an expense in the profit and loss account. (2) Sharing the whole profit in the ratio when salaries and interest must be deducted first. (3) Putting drawings through the capital account when a current account is kept. (4) Forgetting that interest on drawings *increases* the divisible profit.",
)

// ============================================================================
== 7.1 The Deed, and the Default

A partnership is governed first by its *deed* — the agreement among the partners — and only where the deed is silent by the default rules of the Partnership Act. The paper tests both, and it tests which one applies.

#table(
  columns: (1.3fr, 1.5fr, 1.6fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What the deed usually says],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What applies with no deed],
  ),
  [Profit and loss], [an agreed ratio, often the capital ratio], [*equally*],
  [Interest on capital], [a fixed rate, often 5%], [*none*],
  [Partners' salaries], [a fixed sum for the active partner], [*none*],
  [Interest on drawings], [a rate charged on drawings], [*none*],
  [Admission of a partner], [the consent required], [unanimity],
  [Disputes], [usually a majority], [a majority],
)

#v(3pt)

#trap-box("No deed is not no agreement")[
  When the paper says "no deed was prepared", it is telling you to apply the statutory
  default: equal shares, no interest, no salaries. When it says "the deed provides that
  profits are shared in the ratio of capital", it is telling you to displace the default.
  Read which sentence the stem uses; the arithmetic of the two answers is completely
  different.
]

// ============================================================================
== 7.2 The Appropriation Account

The appropriation account begins with the *net profit* from the profit and loss account and divides it among the partners. Nothing in it is an expense: salaries, interest on capital, interest on drawings and the share of residual profit are all *appropriations*.

#formula-box("Appropriation account, for the year")[
  #text(size: 9.3pt)[*Net profit + interest on drawings*] \
  #text(size: 9.3pt)[*less: interest on capital, partners' salaries, share of residual profit*]
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
  [Net profit for the year], [], [800,000],
  [Add interest on drawings], [], [10,000],
  [*Profit available for appropriation*], [], [*810,000*],
  [Less partners' salaries — A 120,000, B 80,000], [200,000], [],
  [Less interest on capital — A 30,000, B 20,000], [50,000], [],
  [*Residual profit to be shared*], [], [*560,000*],
  [Share of residual — A 3/5, B 2/5], [336,000 and 224,000], [],
)

#v(2pt)

Each partner's *total* share is the sum of three lines: his salary, his interest on capital, and his share of the residual. In the table above, A receives 120,000 + 30,000 + 336,000 = *₦486,000* and B receives 80,000 + 20,000 + 224,000 = *₦324,000*, and the two together equal the ₦810,000 appropriated.

// ============================================================================
== 7.3 Capital and Current Accounts

Each partner has *two* accounts, and the difference between them is the whole of this section.

#table(
  columns: (1.2fr, 1.7fr, 1.5fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What passes through it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What the balance means],
  ),
  [*Capital account*], [opening capital, capital introduced, share of profit where no current account is kept, drawings, share of loss], [the partner's permanent stake in the firm],
  [*Current account*], [salary, interest on capital, share of profit on the credit side; drawings and interest on drawings on the debit side], [what the partner is owed by the firm, or owes to it if the balance is a debit],
)

#v(3pt)

A *debit balance on a current account* is not an error: it means the partner has drawn more than his share of profit and salary, and he owes the firm the difference. That sentence is worth a mark on its own, and the paper asks it in exactly those words.

#diagram-fig("diagrams/ch07_partnership.svg",
  "The appropriation account, the default rules, and the two accounts every partner keeps.", width: 94%)

// ============================================================================
== 7.4 Admission, Retirement and Dissolution

Three events change the shape of a partnership, and each has one examinable rule.

#table(
  columns: (1.1fr, 2.9fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Event],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The rule the paper tests],
  ),
  [*Admission*], [revalue the assets and bring in goodwill *before* the new partner is admitted, so that he does not share in profits earned before he arrived],
  [*Retirement*], [revalue, settle the retiring partner's capital and current account, and transfer the balance to a loan account if it is not paid at once],
  [*Dissolution*], [realise the assets, pay the creditors first, then the partners' loans, then the capitals; any shortfall is borne in the profit-sharing ratio],
  [*Goodwill*], [raised on admission and credited to the old partners in their old ratio; it is not a tangible asset and is written off afterwards],
  [*Revaluation*], [any gain or loss on revaluation goes to the old partners in the old ratio, never to the new one],
)

// ============================================================================
== 7.5 Four Worked Questions

#worked-example(
  1,
  "No deed",
  [Ajayi and Bello contribute ₦600,000 and ₦400,000 and make no deed. Profit for the year is ₦400,000. Bello's share is

    A. ₦160,000 \\
    B. ₦200,000 \\
    C. ₦240,000 \\
    D. ₦400,000],
  [
    *Step 1 — which rule applies?* No deed, so the statutory default governs.

    *Step 2 — what is the default?* Profits and losses are shared *equally*, whatever the capital.

    *Step 3 — compute.* 400,000 ÷ 2 = ₦200,000 each.

    *Step 4 — eliminate.* A is the capital ratio (400/1,000), which the deed would have had to state; C is the mirror ratio; D gives Bello everything.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Interest on capital",
  [A and B have capitals of ₦800,000 and ₦500,000. The deed allows interest on capital at 6% a year. The total interest charged to the appropriation account is

    A. ₦48,000 \\
    B. ₦58,000 \\
    C. ₦78,000 \\
    D. ₦130,000],
  [
    *Step 1 — interest for A.* 6% of 800,000 = ₦48,000.

    *Step 2 — interest for B.* 6% of 500,000 = ₦30,000.

    *Step 3 — total.* 48,000 + 30,000 = *₦78,000*, which is an appropriation and not an expense.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "The appropriation",
  [Net profit is ₦800,000. The deed provides salaries of ₦120,000 to A and ₦80,000 to B, interest on capital of 5% on capitals of ₦600,000 and ₦400,000, and residual profits shared 3:2. A's total share is

    A. ₦330,000 \\
    B. ₦450,000 \\
    C. ₦480,000 \\
    D. ₦510,000],
  [
    *Step 1 — deduct the salaries.* 800,000 − 200,000 = ₦600,000.

    *Step 2 — deduct interest on capital.* 5% of 600,000 = 30,000; 5% of 400,000 = 20,000; total 50,000. Residual = 600,000 − 50,000 = ₦550,000.

    *Step 3 — share the residual.* A takes 3/5 of 550,000 = ₦330,000.

    *Step 4 — add A's other entitlements.* 120,000 + 30,000 + 330,000 = *₦480,000*.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The current account",
  [A partner's current account opens with a credit balance of ₦60,000. During the year he is entitled to a salary of ₦120,000, interest on capital of ₦30,000 and a share of profit of ₦330,000, and he draws ₦150,000. His closing current account balance is

    A. ₦270,000 credit \\
    B. ₦330,000 credit \\
    C. ₦390,000 credit \\
    D. ₦390,000 debit],
  [
    *Step 1 — credit side.* Opening balance 60,000 + salary 120,000 + interest 30,000 + profit share 330,000 = *₦540,000*.

    *Step 2 — debit side.* Drawings ₦150,000.

    *Step 3 — closing balance.* 540,000 − 150,000 = *₦390,000*, and it is a *credit* balance because the credits exceed the debits.

    *Step 4 — eliminate.* D has the right figure on the wrong side; A and B omit one of the credit items.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 7.6 Two-Minute Set

#mcq(1, [Where a partnership deed is silent, profits are shared], [in the capital ratio], [equally], [in the ratio of time devoted], [by the senior partner])

#mcq(2, [Partners' salaries are], [an expense in the profit and loss account], [an appropriation of profit], [a current liability], [a deduction from capital])

#mcq(3, [Interest on drawings is], [an expense of the firm], [credited to the appropriation account], [debited to the appropriation account], [ignored])

#mcq(4, [A debit balance on a partner's current account means], [the firm owes the partner], [the partner owes the firm], [the partner has no capital], [an error has been made])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The Partnership Act default is equal shares of profit and loss, regardless of the capital contributed.]),
  ("B", [A salary to a partner divides profit among the owners; it is not a cost of employing an outsider, so it follows the net profit line.]),
  ("B", [The partner is charged for taking money out early, and the charge increases the profit available for appropriation.]),
  ("B", [Drawings have exceeded salary, interest and profit share, so the partner has taken more than his entitlement.]),
))

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: the deed, the appropriation and the two partner accounts.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A partnership begins with a deed that settles capital, the profit ratio, salaries, interest on capital and drawings, and the procedure for admission; where there is no deed, profits are shared equally with no interest and no salaries. The appropriation account starts with net profit, adds interest on drawings, and deducts partners' salaries and interest on capital before sharing the residual in the agreed ratio. Each partner then keeps two accounts: the capital account for his permanent stake, and the current account for salary, interest, profit share and drawings, which may end in debit if he has drawn more than he earned. Admission and retirement are governed by one principle: revalue and settle goodwill before the change, so that no partner shares in profit he did not help to earn.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [List five terms a partnership deed normally settles.],
  [State the four default rules where there is no deed.],
  [Prepare an appropriation account from a net profit and three entitlements.],
  [Compute one partner's total share, adding salary, interest and residual.],
  [Prepare a current account and explain a debit balance.],
  [State the order of payment on dissolution.],
))

#concept-box("Carry this into Chapter 8")[
  A partnership has owners you can name. Chapter 8 turns to the company, where the owners
  are shareholders you will never meet, and to the charity, where there are no owners at
  all — and shows how the same double entry reports both.
]

#include "drill_ch07.typ"
