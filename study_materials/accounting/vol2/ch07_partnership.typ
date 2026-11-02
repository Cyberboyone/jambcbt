#import "template.typ": *

#current-chapter.update("Chapter 7: Partnership Changes")

#pagebreak()

#chapter-opener(
  7,
  "Partnership Changes",
  subtitle: "Admission, Retirement and Dissolution — What Is Revalued, What Is Bought, and Who Bears the Goodwill",
  syllabus-ref: "Sec. 17 • Partnership Accounts: Changes in the Firm",
  utme-weight: "5 Qs a year",
  running: "Partnership Changes",
)

#focus-radar(
  objectives: (
    "Explain why assets are revalued before any change in the partnership.",
    "Prepare a revaluation account and share its balance in the old ratio.",
    "Record the admission of a partner, including goodwill brought in cash or raised in the books.",
    "Record the retirement of a partner, and the settlement of his capital and current account.",
    "Prepare a realisation account on dissolution and distribute the cash.",
    "State the order in which the cash of a dissolved firm is applied.",
  ),
  hotspots: (
    "*Revalue first, share second.* The profit or loss on revaluation belongs to the partners who owned the assets *before* the change — the old partners — and it is shared in the old ratio, never the new one.",
    "*Goodwill is paid for, not printed.* A new partner pays for the share of reputation he is buying, either into the firm (cash) or to the old partners' capital accounts. Writing goodwill up in the books and then writing it off is the old-fashioned two-step, and the paper still asks for it.",
    "*A retiring partner is a creditor of the firm until he is paid.* His capital and current account balances are transferred to a loan account if the firm cannot pay at once.",
    "*On dissolution, outside creditors come before partners.* Then partners' loans, then partners' capital. A partner who has lent the firm money ranks as a creditor, not as an owner, for that loan.",
  ),
  trap-summary: "Four slips. (1) Sharing a revaluation profit in the *new* ratio, which gives the incoming partner a share of a gain he did not help to create. (2) Forgetting to adjust the capitals to the new profit-sharing ratio after admission, when the question asks for it. (3) Treating a partner's loan as capital on dissolution, so that it is repaid after the outside creditors but at the wrong rank. (4) Forgetting that a partner with a debit balance on capital (a deficit) must bring in cash to clear it before the firm can be closed.",
)

// ============================================================================
== 7.1 Why a Partnership Change Is Mostly about Valuation

Volume 1 taught the appropriation account: interest on capital, salaries, interest on drawings, and the sharing of the residual profit. This chapter is about the moment the partnership itself changes — a partner joins, a partner leaves, or the firm is wound up — and every one of those moments begins with the same instruction: *find out what the assets are really worth, and settle that with the people who owned them.*

#table(
  columns: (1.15fr, 1.55fr, 1.65fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Event],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What must be settled first],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Who bears it],
  ),
  [*Admission*], [revaluation of assets, and the goodwill the new partner is buying], [the old partners, in the old ratio],
  [*Retirement*], [revaluation, and the retiring partner's share of goodwill], [the retiring partner is credited; the continuing partners bear it in their new ratio],
  [*Dissolution*], [realisation of every asset, and payment of every liability], [the partners, in the profit-sharing ratio, after outside creditors are paid],
  [*Change of ratio*], [revaluation and goodwill, because a partner's share of the net assets is changing], [the partners whose shares change],
)

#v(2pt)

#concept-box("The revaluation account is a settlement, not a profit")[
  When a building is written up from ₦20,000 to ₦26,000, the firm has not earned ₦6,000.
  It has recognised a gain that belonged to the old partners all along, and the revaluation
  account exists to hand that gain to them before a new partner can claim a share of it.
  That is why the balance of the account is always divided in the *old* ratio.
]

// ============================================================================
== 7.2 The Revaluation Account

#table(
  columns: (1.9fr, 1.0fr, 1.35fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Revaluation account],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[₦],
  ),
  [Building written down], [4,000], [],
  [Stock written down], [6,000], [],
  [Provision for doubtful debts created], [2,000], [],
  [*Profit on revaluation transferred to capital*], [], [*14,000*],
  [Building written up], [], [20,000],
  [Provision no longer required], [], [4,000],
  [Plant written up], [], [2,000],
  [*Totals*], [*26,000*], [*26,000*],
)

#v(2pt)

#text(size: 9.5pt)[In this example the credit side exceeds the debit side by ₦14,000, so the account shows a profit, and that profit is transferred to the partners' capital accounts in the old ratio. If the debits had exceeded the credits, the account would show a loss and the transfer would run the other way. The account is then *closed* — it has no balance carried down — because its whole purpose was to settle the difference with the old partners before the change.]

#diagram-fig("diagrams/ch07_partnership.svg",
  "Admission, retirement and dissolution side by side, the revaluation account that comes before all three, and the goodwill rule that governs who pays whom.", width: 97%)

// ============================================================================
== 7.3 Admission of a Partner

A new partner buys a share of the firm. Two settlements happen at once: the assets are revalued and the gain goes to the old partners, and the new partner pays for the goodwill that his share represents.

#table(
  columns: (1.0fr, 1.65fr, 1.6fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Goodwill treatment],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The entries],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[When it is used],
  ),
  [*Cash brought in*], [Dr Bank; Cr the old partners' capital accounts in the old ratio], [the simplest and commonest examination version],
  [*Raised and written off*], [Dr Goodwill; Cr old partners' capitals; then Dr all partners including the new one; Cr Goodwill], [the old textbook method, still set],
  [*Bought by the partners privately*], [no entry in the firm's books; the cash passes between the partners], [when the question says "the new partner paid the old partners directly"],
)

#v(3pt)

#text(size: 9.5pt)[After the goodwill is settled, the capitals may need adjusting so that they agree with the new profit-sharing ratio. The adjustment is made through the *current accounts*, not by moving cash: a partner whose capital is above his share is debited and the one below is credited. A question that asks for "the capital accounts after admission" wants the balances in the new ratio, and the total is unchanged by the adjustment.]

#formula-box("The new partner's capital, when the total capital is given")[
  #text(size: 9.4pt)[
    *Total capital of the new firm* = capital of the old firm + cash brought in by the new partner + goodwill raised \
    *Each partner's capital* = his share of the new ratio × total capital
  ]
]

// ============================================================================
== 7.4 Retirement and Death

A retiring partner must be paid what he is owed: his capital, his share of the revaluation, his share of goodwill, and the balance on his current account. The firm may pay at once or leave the balance as a loan.

#table(
  columns: (1.15fr, 1.5fr, 1.6fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The account used],
  ),
  [1], [revalue the assets and share the result in the *old* ratio], [revaluation account],
  [2], [credit the retiring partner with his share of goodwill, and debit the continuing partners in their *new* ratio], [capital accounts],
  [3], [transfer his capital and current account into one balance], [his capital account],
  [4], [pay him, or transfer the balance to a loan account if he is not paid at once], [bank, or loan account],
  [5], [share any profit to the date of retirement], [profit and loss appropriation],
)

#v(2pt)

#text(size: 9.5pt)[The direction of the goodwill entry is the part that candidates lose. The retiring partner is *credited* — he is being paid for his share of a reputation he helped to build. The continuing partners are *debited*, in their new ratio, because they are the ones who will enjoy that reputation from now on. The account nets to nil, which is why goodwill does not stay in the balance sheet.]

#trap-box("Old ratio for the revaluation, new ratio for the goodwill")[
  Two ratios, two jobs, and they are easy to swap under pressure. The *revaluation* is
  shared in the ratio that existed while the assets were being used — the old ratio. The
  *goodwill* is shared in the ratio that will exist after the change, because the partners
  who remain are the ones who will benefit from it. Write both ratios at the top of your
  answer before you post anything.
]

// ============================================================================
== 7.5 Dissolution and the Realisation Account

On dissolution the firm stops trading. Every asset is sold, every liability is paid, and the *realisation account* collects the proceeds and the costs. It is a profit and loss account on the whole life of the firm's assets.

#table(
  columns: (1.85fr, 1.1fr, 1.15fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Realisation account],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[₦],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[₦],
  ),
  [Assets transferred at book value], [300,000], [],
  [Expenses of realisation], [8,000], [],
  [*Profit on realisation to capital*], [], [*52,000*],
  [Proceeds of assets sold], [], [340,000],
  [Provision no longer needed], [], [20,000],
  [*Totals*], [*360,000*], [*360,000*],
)

#v(2pt)

#text(size: 9.5pt)[The liabilities are *not* put through the realisation account. They are paid directly: debit the liability, credit the bank. Only the assets, the proceeds, the expenses of realisation and any provision released pass through the account, and its balance is the profit or loss on the disposal of the firm's property, shared in the profit-sharing ratio.]

#formula-box("The order of payment on dissolution")[
  #text(size: 9.4pt)[
    1. Expenses of realisation \
    2. Outside creditors (trade creditors, accruals, bank overdraft) \
    3. Partners' loans from the firm \
    4. Partners' capital accounts, in the profit-sharing ratio
  ]
]

#v(2pt)

#text(size: 9.5pt)[*A partner's loan is not capital.* A partner who lent the firm money is a creditor for that loan, and he is paid before any capital is returned — including his own. If the firm is short of cash, the partners must bring in enough to clear the outside liabilities first, and only then do the capitals absorb the remaining loss. A partner whose capital account ends in a *debit* balance owes the firm that money, and he must pay it in before the liquidation can be completed.]

// ============================================================================
== 7.6 Worked Examples

#worked-example(
  1,
  "The revaluation balance",
  tier: "FOUNDATION",
  [
    On revaluation, a building is written up by ₦20,000, stock is written down by ₦6,000, and a provision of ₦2,000 is created for doubtful debts. The profit on revaluation is

    A. ₦12,000 \\
    B. ₦14,000 \\
    C. ₦20,000 \\
    D. ₦28,000
  ],
  [
    *Step 1 — the credits.* The building is written up by ₦20,000, which is a gain.

    *Step 2 — the debits.* Stock down ₦6,000 and a provision of ₦2,000, total ₦8,000.

    *Step 3 — the balance.* 20,000 − 8,000 = *₦14,000* profit, transferred to the old partners in the old ratio.

    *Step 4 — eliminate.* A ignores the provision; C ignores both the stock and the provision; D adds them.

    *Answer: B.*
  ],
)

#worked-example(
  2,
  "Building the new capital",
  tier: "UTME STANDARD",
  [
    A and B share profits 3:2 and have capitals of ₦300,000 and ₦200,000. C is admitted for a one-fifth share and brings ₦150,000 in cash. Goodwill is valued at ₦100,000, is raised in the books, and is written off immediately among the three partners. C's capital account, immediately after that adjustment, shows

    A. ₦130,000 \\
    B. ₦150,000 \\
    C. ₦170,000 \\
    D. ₦190,000
  ],
  [
    *Step 1 — the cash.* C brings ₦150,000, so his capital is credited with 150,000.

    *Step 2 — the goodwill raised.* Dr Goodwill ₦100,000; Cr A 60,000 and B 40,000, in the old ratio 3:2, because they built the reputation.

    *Step 3 — the goodwill written off.* The new ratio is A 12/25, B 8/25, C 5/25 — that is, the old 3:2 split of the four-fifths the old partners still hold. Writing off ₦100,000 gives A 48,000, B 32,000 and C 20,000.

    *Step 4 — C's balance.* 150,000 − 20,000 = *₦130,000*.

    *Step 5 — check the whole firm.* A: 300,000 + 60,000 − 48,000 = 312,000. B: 200,000 + 40,000 − 32,000 = 208,000. C: 130,000. Total 650,000, and one-fifth of it is indeed ₦130,000.

    *Step 6 — eliminate.* B is the cash alone, with no goodwill adjustment; C and D ignore the ratio the write-off uses.

    *Answer: A.*
  ],
)

#worked-example(
  3,
  "The retiring partner's balance",
  tier: "UTME STANDARD",
  [
    X, Y and Z share profits equally. Z retires. His capital is ₦120,000 and his current account is ₦15,000 credit. Goodwill is valued at ₦90,000 and is to be adjusted through the partners' accounts without being retained. The amount due to Z is

    A. ₦135,000 \\
    B. ₦150,000 \\
    C. ₦165,000 \\
    D. ₦120,000
  ],
  [
    *Step 1 — capital and current.* 120,000 + 15,000 = ₦135,000.

    *Step 2 — goodwill.* Z's share is one-third of 90,000 = ₦30,000, credited to him.

    *Step 3 — total.* 135,000 + 30,000 = *₦165,000*.

    *Step 4 — eliminate.* A omits the goodwill; B credits only the capital; D omits both the current account and the goodwill.

    *Answer: C.*
  ],
)

#worked-example(
  4,
  "Cash, and who is paid first",
  tier: "JAMB CHALLENGE",
  [
    A firm is dissolved. It sells its assets for ₦260,000. It owes trade creditors ₦80,000, has a bank overdraft of ₦20,000, owes a partner's loan of ₦50,000, and the partners' capitals are ₦140,000 and ₦90,000. Realisation expenses are ₦10,000. The cash available for the partners' capitals is

    A. ₦100,000 \\
    B. ₦110,000 \\
    C. ₦150,000 \\
    D. ₦240,000
  ],
  [
    *Step 1 — cash in.* Proceeds ₦260,000.

    *Step 2 — pay in order.* Expenses 10,000; outside creditors 80,000; overdraft 20,000; partner's loan 50,000. That is 160,000 in total.

    *Step 3 — what is left.* 260,000 − 160,000 = *₦100,000* for the capitals.

    *Step 4 — check against the loss.* The capitals total ₦230,000 and only ₦100,000 remains, so the firm has lost ₦130,000 on the assets and expenses; the partners share it in the profit ratio.

    *Step 5 — eliminate.* B pays the expenses but forgets the loan; C treats the loan as capital and pays it last; D ignores every liability.

    *Answer: A.*
  ],
)

#v(2pt)

#trap-box("The partner's loan goes before the partner's capital")[
  A partner may be an owner and a creditor at the same time. His *loan* is a debt of the
  firm and ranks with the outside creditors — after them, but before any capital. His
  *capital* is the last money out of a dissolution, because it is the owners' residual
  claim. A question with both figures in it is checking precisely this order.
]

// ============================================================================
== 7.7 Two-Minute Set

#mcq(1, [A revaluation profit on the admission of a partner is shared], [equally among all partners including the new one], [in the old profit-sharing ratio], [in the new profit-sharing ratio], [according to capital balances])

#mcq(2, [Goodwill brought in cash by a new partner is credited to], [the new partner's capital account], [the old partners' capital accounts in the old ratio], [the revaluation account], [the realisation account])

#mcq(3, [On dissolution, which is paid first?], [partners' capital], [partners' loans], [expenses of realisation], [trade creditors])

#mcq(4, [A partner's current account has a debit balance on retirement. It means he], [is owed that amount], [owes the firm that amount], [has drawn less than his share], [has lent the firm the amount])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [The gain arose while the old partners owned the assets, so it is theirs; the new partner has not yet contributed to it.]),
  ("B", [The new partner is buying a share of a reputation the old partners built, so the cash is credited to them in the old ratio.]),
  ("C", [The costs of winding up are met first, then outside creditors, then partners' loans, then partners' capital.]),
  ("B", [A debit balance on a current account is an amount the partner has drawn in excess of his share, so it is recoverable from him.]),
))

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: admission, retirement, dissolution and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Every change in a partnership begins with a revaluation, because the partners are about to settle with each other and the assets must be at their true value first. The revaluation balance goes to the old partners in the old ratio. On admission, the new partner buys a share and pays for the goodwill that share represents, either in cash or through the goodwill account raised and written off. On retirement, the retiring partner is credited with his capital, his current account and his share of goodwill, and the continuing partners bear that share in their new ratio; if he is not paid at once his balance becomes a loan. On dissolution, the realisation account collects the proceeds and the expenses, the outside creditors are paid before the partners' loans, and the capitals absorb whatever is left — or whatever is missing.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [State why a revaluation is done before an admission or a retirement.],
  [Prepare a revaluation account and share its balance in the old ratio.],
  [Record goodwill brought in cash, and goodwill raised and written off.],
  [Compute the amount due to a retiring partner.],
  [Prepare a realisation account and state the order of payment.],
  [Explain why a partner's loan ranks before a partner's capital.],
))

#concept-box("Carry this into Chapter 8")[
  Chapter 7 closed a private firm. Chapter 8 opens a government department and a computer:
  how public money is voted and accounted for, and what changes — and what does not — when
  the books move from a ledger to a screen.
]

#include "drill_ch07.typ"
