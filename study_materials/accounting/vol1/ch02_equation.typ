#import "template.typ": *

#current-chapter.update("Chapter 2: The Accounting Equation and Double Entry")

#pagebreak()

#chapter-opener(
  2,
  "The Accounting Equation and Double Entry",
  subtitle: "Why Every Transaction Has Two Sides, and How to Tell the Debit From the Credit",
  syllabus-ref: "Sec. 2 • The Accounting Equation and the Double Entry System",
  utme-weight: "8 Qs a year",
  running: "The Accounting Equation and Double Entry",
)

#focus-radar(
  objectives: (
    "State the accounting equation and the expanded form of it.",
    "Show the effect of any transaction on the equation.",
    "Apply the double-entry rule, using DEAD CLIC, to a transaction.",
    "Balance off an account and bring the balance down.",
    "Compute profit from opening and closing capital.",
    "Recognise the option that names the wrong side.",
  ),
  hotspots: (
    "*Assets = liabilities + capital*, and it holds after every single transaction. If an answer leaves it unbalanced, the answer is wrong.",
    "*DEAD CLIC:* Debits increase Expenses, Assets and Drawings; Credits increase Liabilities, Income and Capital.",
    "*A transaction always touches two accounts*, and the total debits equal the total credits. That equality is what the trial balance tests.",
    "*Capital = assets − liabilities.* Profit increases capital; drawings reduce it; capital introduced increases it.",
    "*Balancing off:* add the larger side, insert the balance on the smaller side, then bring it down on the opposite side of the next period.",
  ),
  trap-summary: "Four slips. (1) Recording a cash purchase as a debit to purchases and a debit to cash. (2) Treating drawings as an expense of the business. (3) Adding profit to capital when the question gives closing capital but asks for opening capital. (4) Forgetting that a credit sale debits the *debtor*, not sales.",
)

// ============================================================================
== 2.1 The Equation

The whole of double-entry bookkeeping rests on one sentence:

#formula-box("The accounting equation")[
  #text(size: 11.5pt)[*ASSETS = LIABILITIES + CAPITAL*]
  #v(3pt)
  #text(size: 9.4pt)[what the business owns = what it owes to outsiders + what it owes to its owner]
]

Every transaction changes at least two of the three elements, and it changes them so that the two sides remain equal. That is the whole of the system, and it is worth testing on five transactions before reading further.

#table(
  columns: (1.7fr, 1.35fr, 1.35fr, 1.1fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Transaction],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Assets],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Liabilities],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Capital],
  ),
  [Owner introduces ₦500,000 cash], [up 500,000], [no change], [up 500,000],
  [Buys furniture for ₦120,000 cash], [up 120,000 and down 120,000], [no change], [no change],
  [Buys goods on credit ₦80,000], [up 80,000 (stock)], [up 80,000], [no change],
  [Sells goods costing ₦50,000 for ₦70,000 cash], [up 20,000 (cash and stock net)], [no change], [up 20,000 (profit)],
  [Owner takes ₦30,000 for private use], [down 30,000], [no change], [down 30,000 (drawings)],
)

#v(2pt)

Notice what the table does *not* say. A cash purchase does not change the total of the assets — one asset rises and another falls by the same amount. A credit purchase raises assets and liabilities together. Only a profit, a loss, a drawing or a fresh capital contribution changes the *capital* figure, and that is why the paper loves questions about those four.

#concept-box("The equation is a test, not a formula to memorise")[
  You do not need to recall the equation to use it — you need to apply it. After working
  any question, add the assets and compare with liabilities plus capital. If the two do
  not agree, the error is in your posting, not in the arithmetic, and you should look for
  a transaction that was entered on one side only.
]

// ============================================================================
== 2.2 The Expanded Equation

Capital is not a fixed figure. It grows with profit and with fresh capital, and it shrinks with losses and drawings. Spelled out:

#formula-box("The expanded equation")[
  #text(size: 10.6pt)[*ASSETS = LIABILITIES + CAPITAL + PROFIT − DRAWINGS*]
  #v(3pt)
  #text(size: 9.3pt)[and profit itself is *income − expenses*, so every expense reduces capital and every income increases it]
]

That single line explains the whole of the final accounts. The trading and profit and loss account is simply the calculation of the profit that appears in the equation, and the balance sheet is the equation written out in full, with the assets on one side and the liabilities and capital on the other.

#table(
  columns: (1.55fr, 1.85fr, 1.55fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Event],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Effect on capital],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why],
  ),
  [Profit for the year], [increases], [income exceeds expenses, and the excess belongs to the owner],
  [Loss for the year], [decreases], [expenses exceed income],
  [Drawings], [decreases], [the owner has taken value out of the business],
  [Fresh capital introduced], [increases], [the owner has put value in],
  [A loan from the bank], [no effect], [it raises an asset (cash) and a liability by the same amount],
  [A credit sale at cost price], [no effect on capital yet], [stock falls and a debtor rises by the same amount; profit comes when the sale is at a margin],
)

// ============================================================================
== 2.3 The Rules of Double Entry

Every transaction is entered twice: once as a *debit* and once as a *credit*, for the same amount. Whether an increase in an account is a debit or a credit depends on what kind of account it is.

#formula-box("DEAD CLIC — the only mnemonic you need")[
  #text(size: 10.4pt)[*D*ebits increase *E*xpenses, *A*ssets and *D*rawings] \
  #text(size: 10.4pt)[*C*redits increase *L*iabilities, *I*ncome and *C*apital]
]

#table(
  columns: (1.25fr, 1.65fr, 1.65fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Debit side records],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Credit side records],
  ),
  [*Asset*], [an increase], [a decrease],
  [*Expense*], [an increase], [a decrease or a refund],
  [*Drawings*], [an increase], [a reduction],
  [*Liability*], [a decrease], [an increase],
  [*Income*], [a decrease], [an increase],
  [*Capital*], [a decrease], [an increase],
)

#v(3pt)

Work the rule on the two transactions the paper uses most. A *credit sale* of ₦40,000: the business has earned income, so sales is credited; the customer now owes the money, so the debtor's account is debited. A *payment of rent* of ₦25,000 by cash: rent is an expense, so it is debited; cash is an asset and it has fallen, so cash is credited. In both cases the debit is on the left and the credit on the right, and both are for the same amount.

#diagram-fig("diagrams/ch02_equation.svg",
  "The equation, its expanded form, and the debit and credit rule for each class of account.", width: 94%)

// ============================================================================
== 2.4 Balancing Off an Account

An account is a page ruled down the middle: debits on the left, credits on the right. At the end of a period you *balance it off* in four steps.

#rule-box("Balancing off, in four steps")[
  + Add the debit column and add the credit column separately.
  + Put the *difference* on the side with the *smaller* total, and call it "balance c/d" (carried down).
  + Add each column again; the two totals must now be equal, and the total is written on both sides.
  + Bring the balance *down* on the *opposite* side at the start of the next period, as "balance b/d".
]

#table(
  columns: (1.35fr, 1.5fr, 1.5fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Cash account — worked example],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Debit ₦],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Credit ₦],
  ),
  [Capital introduced], [500,000], [],
  [Sales (cash)], [70,000], [],
  [Furniture], [], [120,000],
  [Purchases (cash)], [], [80,000],
  [Drawings], [], [30,000],
  [Balance c/d], [], [340,000],
  [*Totals*], [*570,000*], [*570,000*],
)

#v(2pt)

The account now has a debit balance of ₦340,000: the business holds that much cash. On the first day of the next period the line is written on the *credit* side as "balance b/d 340,000", because a debit balance brought down is entered opposite the side on which it stood. Confusing c/d with b/d is the single most common place where a candidate loses an easy mark.

// ============================================================================
== 2.5 Four Worked Questions

#worked-example(
  1,
  "The two entries",
  [Goods worth ₦25,000 are bought on credit from Musa. The entries are

    A. debit purchases, credit cash \\
    B. debit purchases, credit Musa \\
    C. debit Musa, credit purchases \\
    D. debit cash, credit Musa],
  [
    *Step 1 — what happened?* Stock came in, and no money went out; a creditor was created.

    *Step 2 — apply the rule.* Purchases is an expense, so it is debited. Musa is a liability, so it is credited.

    *Step 3 — eliminate.* A credits cash that was never paid; C reverses the two; D debits an asset that did not rise.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Effect on the equation",
  [A firm buys furniture for ₦200,000 cash. The effect on the accounting equation is

    A. assets increase by ₦200,000, capital increases by ₦200,000 \\
    B. assets increase and decrease by ₦200,000; total assets unchanged \\
    C. assets fall by ₦200,000 and liabilities rise by ₦200,000 \\
    D. capital falls by ₦200,000],
  [
    *Step 1 — name the accounts.* Furniture (an asset) rises; cash (an asset) falls.

    *Step 2 — apply to the equation.* One asset up and one asset down by the same amount leaves total assets unchanged, and neither liabilities nor capital moves.

    *Step 3 — eliminate.* A would double-count; C and D invent movements that did not happen.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "Profit from capital",
  [A trader's assets are ₦850,000 and his liabilities ₦320,000. His opening capital was ₦400,000, he introduced a further ₦150,000 during the year, and he drew ₦90,000. His profit for the year was

    A. ₦70,000 \\
    B. ₦120,000 \\
    C. ₦160,000 \\
    D. ₦530,000],
  [
    *Step 1 — closing capital.* Assets − liabilities = 850,000 − 320,000 = *₦530,000*.

    *Step 2 — the capital account in one line.* Closing = opening + additional + profit − drawings.

    *Step 3 — substitute.* 530,000 = 400,000 + 150,000 + profit − 90,000, so profit = 530,000 − 460,000 = *₦70,000*.

    *Step 4 — check.* 400,000 + 150,000 + 70,000 − 90,000 = 530,000, which agrees with step 1.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Balance carried down",
  [A cash account shows receipts of ₦640,000 and payments of ₦275,000. The balance carried down is

    A. ₦365,000 on the credit side \\
    B. ₦365,000 on the debit side \\
    C. ₦915,000 on the credit side \\
    D. ₦275,000 on the debit side],
  [
    *Step 1 — which side is larger?* Debits (receipts) 640,000 exceed credits (payments) 275,000 by ₦365,000.

    *Step 2 — where does the balance go?* The difference is written on the *smaller* side, which is the credit side, as balance c/d. The cash account therefore has a debit balance of ₦365,000.

    *Step 3 — eliminate.* B puts the balance on the debit side, which would make the columns unequal; C adds instead of subtracting; D is the payments figure, not the balance.

    *Answer: A* — the balance is carried down on the credit side, which means the account is in debit.
  ],
  tier: "JAMB CHALLENGE",
)

#trap-box("The balance sits on the small side")[
  A balance is always written on the side with the *smaller* total, so that the two
  columns can be made equal. Candidates who write it on the larger side produce columns
  that differ by twice the balance — and in a multiple-choice paper, the doubled figure is
  usually one of the options, waiting.
]

// ============================================================================
== 2.6 Two-Minute Set

#mcq(1, [A debit entry increases], [liabilities, income and capital], [expenses, assets and drawings], [capital and income], [liabilities only])

#mcq(2, [Goods sold on credit to Ada for ₦15,000 are recorded as], [debit sales, credit Ada], [debit Ada, credit sales], [debit cash, credit sales], [debit Ada, credit cash])

#mcq(3, [The capital of a business equals], [assets plus liabilities], [assets minus liabilities], [liabilities minus assets], [current assets minus stock])

#mcq(4, [Drawings by the owner], [increase capital], [reduce capital], [are an expense in the profit and loss account], [increase liabilities])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [DEAD CLIC: debits increase expenses, assets and drawings; the other three classes are increased by credits.]),
  ("B", [The debtor now owes the business, so the asset rises (debit); the sale is income, so sales is credited.]),
  ("B", [Assets − liabilities = capital, which is the equation rearranged; adding them would double the outsiders' claims.]),
  ("B", [Drawings take value out of the business, so capital falls; they are not an expense and never enter the profit calculation.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the equation, double entry, the account and the balance.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Assets equal liabilities plus capital, and the equality survives every transaction because every transaction has two effects of the same amount. Spelled out, assets equal liabilities plus capital plus profit minus drawings, which is why the final accounts are nothing more than the calculation of the profit and the presentation of the equation. The double-entry rule follows from the classes of account: debits increase expenses, assets and drawings; credits increase liabilities, income and capital. Each account is balanced by writing the difference on the smaller side as balance c/d, adding both columns, and bringing the balance down on the opposite side as balance b/d. A trial balance is the list of those balances, and it proves only one thing: that the debits and the credits were equal.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Write the accounting equation and its expanded form from memory.],
  [Show the effect of a credit purchase on all three elements.],
  [State DEAD CLIC and use it on a credit sale and a cash payment of rent.],
  [Balance off a two-column account and bring the balance down.],
  [Compute profit from opening capital, closing capital and drawings.],
  [Say why a cash purchase does not change total assets.],
))

#concept-box("Carry this into Chapter 3")[
  Chapter 2 gave you the rule. Chapter 3 gives you the *paper*: the document that proves
  a transaction happened, the journal in which it is first written, the ledger in which it
  is classified, and the trial balance that checks the arithmetic of the whole book.
]

#include "drill_ch02.typ"
