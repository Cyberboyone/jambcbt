#import "template.typ": *

#current-chapter.update("Chapter 2: Money and Banking")

#pagebreak()

#chapter-opener(
  2,
  "Money and Banking",
  subtitle: "The Functions of Money, Credit Creation by Commercial Banks, the Central Bank, the Instruments of Monetary Policy, and Inflation and Deflation",
  syllabus-ref: "Sec. F • Money and the Financial System",
  utme-weight: "3 Qs a year on money",
  running: "Money and Banking",
)

#focus-radar(
  objectives: (
    "State the four functions of money and explain what fails without each one.",
    "Explain how commercial banks create credit, and compute the credit multiplier.",
    "List the functions of the central bank and the instruments of monetary policy.",
    "Distinguish demand-pull from cost-push inflation, and say what each does to output.",
    "Explain the effects of inflation and deflation on savers, debtors and wage earners.",
  ),
  hotspots: (
    "“The credit multiplier is …” — 1 ÷ the cash reserve ratio. With a ratio of 20 per cent the multiplier is 5, not 0.2 and not 20.",
    "“A rise in the cash reserve ratio will …” — *reduce* the ability of banks to create credit. The option that says *increase* is the most common wrong answer in the whole topic.",
    "“Cost-push inflation is caused by …” — a rise in the cost of production. An increase in aggregate demand gives demand-pull, and the option that names money supply without naming costs is the trap.",
    "“During inflation, the group that gains is …” — debtors, because they repay in money worth less than they borrowed. Creditors, savers and fixed-income earners lose.",
    "“The bank that acts as lender of last resort is …” — the central bank, never a commercial bank.",
  ),
  trap-summary: "Three slips. (1) Reading the reserve ratio upside down, which turns a credit contraction into an expansion. (2) Calling any rise in prices inflation: a one-off rise is a price change, inflation is sustained. (3) Forgetting who gains from inflation — the answer is almost always the debtor, and almost never the pensioner.",
)

// ============================================================================
== 2.1 What Money Is, and What It Does

Money is anything generally acceptable as a means of payment and a store of value. The
definition is deliberately loose, because the things that have served as money — cowries,
salt, cloth, gold, banknotes, and now a balance in a phone — have almost nothing in
common except general acceptability.

#diagram-fig("diagrams/ch02_functions.svg",
  "The four functions of money, each paired with the failure it removes. A question that asks what money does is asking you to match a function to a failure.", width: 100%)

#rule-box("The four functions, with the failure each one removes")[
  + *Medium of exchange* — it removes the double coincidence of wants that made barter so slow.
  + *Unit of account* — it removes the need to price every good in every other good, which is a table of n(n−1) ÷ 2 rates.
  + *Store of value* — it removes the need to convert wealth into goods that rot, although inflation degrades it.
  + *Standard of deferred payment* — it makes lending possible, because a debt can be written in a unit that survives to repayment.
]

#concept-box("The qualities, and the one that fights the others")[
  Money should be portable, divisible, durable, homogeneous, scarce and stable in value.
  The last two pull against each other in practice: a currency that is scarce enough to
  hold its value is often scarce enough to make borrowing expensive, and a currency
  issued generously to lubricate trade loses the value it was meant to store.

  *Liquidity* is the property that ties the functions together. Cash is the most liquid
  asset and the worst store of value; a house is the best store of value and the least
  liquid. Every financial asset is a different compromise between the two.
]

#table(
  columns: (1.35fr, 1.75fr, 1.9fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The exam sentence],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What is lost without it],
  ),
  [Medium of exchange], [“Money is used to settle transactions and so eliminates barter.”], [trade shrinks to direct swaps between two people who each want what the other has],
  [Unit of account], [“Prices, costs and profits are all expressed in the same unit.”], [every good needs a price in every other good, and accounts cannot be kept],
  [Store of value], [“Money allows purchasing power to be carried from one period to another.”], [income must be spent at once or held as goods that may spoil],
  [Standard of deferred payment], [“Loans, wages and taxes are contracted in money.”], [credit disappears, because no one will lend in a unit that may not exist at repayment],
)

== 2.2 Commercial Banks and the Creation of Credit

Commercial banks take deposits and make loans, and in the process they create deposits.
That second half is the part candidates miss. A bank does not lend out the deposit it
holds; it lends against it, and the loan is credited to a deposit account, which is money
in exactly the same sense as the original balance.

#diagram-fig("diagrams/ch02_credit.svg",
  "One ₦100,000 deposit with a 20 per cent reserve ratio. Each round leaves 80 per cent of the previous round available to lend, and the series converges on ₦500,000 of deposits.", width: 100%)

#rule-box("The credit multiplier, and the two conditions")[
  + *Credit multiplier* = 1 ÷ cash reserve ratio. With a ratio of 20 per cent, 1 ÷ 0.2 = 5, so a ₦100,000 deposit supports ₦500,000 of deposits in total.
  + *Total credit* = initial deposit × the multiplier. The *new* credit is the total less the original deposit.
  + The multiplier assumes that every borrower deposits the whole loan in the banking system and that banks hold exactly the required reserve. Every leak — cash held by the public, excess reserves, an import paid for abroad — reduces it.
]

#concept-box("What banks actually do, in two lines")[
  Banks intermediate: they borrow short and lend long, which is how they earn a spread
  between the deposit rate and the lending rate. They also create money, because a loan
  written as a credit to a deposit account is new purchasing power. The two facts are
  the same fact seen from different sides, and the exam tests them separately.
]

#trap-box("Three credit-creation traps")[
  + *Confusing the ratio with the multiplier.* A reserve ratio of 25 per cent gives a multiplier of 4, not 25, and a rise in the ratio *lowers* the multiplier.
  + *Forgetting the original deposit.* “Total deposits created” includes the deposit that started it; “new credit created” excludes it. Read which is asked.
  + *Assuming the multiplier is exact.* In a real economy some borrowers take cash, some banks hold excess reserves and some loans finance imports, so actual credit creation falls short of the formula.
]

== 2.3 The Central Bank

The central bank is the bank of banks and the bank of government. It does not compete
with commercial banks for customers; it stands behind them, issues the currency and runs
monetary policy.

#diagram-fig("diagrams/ch02_cbn.svg",
  "The central bank's four levers, with the direction each one is moved to fight inflation and to fight unemployment.", width: 100%)

#rule-box("The functions, in the order the paper lists them")[
  + *Issuer of currency* — the only body permitted to put notes and coins into circulation.
  + *Banker to the government* — holds the government's accounts, manages its debt and its reserves.
  + *Banker to the banks* — holds their reserves and clears their balances.
  + *Lender of last resort* — lends to a solvent bank that cannot raise cash elsewhere, which is what stops a run becoming a collapse.
  + *Conductor of monetary policy* — the four levers below.
  + *Manager of the external reserves* and, in Nigeria, of the exchange rate.
]

#table(
  columns: (1.5fr, 1.6fr, 1.9fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[To fight inflation],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[To fight unemployment],
  ),
  [Open market operations], [sell securities, draining cash from the banks], [buy securities, releasing cash into the banks],
  [Cash reserve ratio], [raise it, shrinking the credit multiplier], [lower it, enlarging the multiplier],
  [Policy rate (MPR)], [raise it, so credit costs more], [lower it, so credit costs less],
  [Moral suasion and selective credit], [persuade banks to restrain lending, cap credit to certain sectors], [persuade banks to lend, direct credit to priority sectors],
)

== 2.4 Inflation and Deflation

Inflation is a sustained rise in the general price level, so that money buys less.
Deflation is the reverse. The two words are about the *general* level: a rise in the
price of tomatoes is a price change, and only becomes inflation when it is general and
persists.

#diagram-fig("diagrams/ch02_inflation.svg",
  "The two kinds of inflation on the same pair of curves. Demand-pull shifts aggregate demand to the right; cost-push shifts aggregate supply to the left, which is why it also reduces output.", width: 100%)

#rule-box("The two causes, and the one that also cuts output")[
  + *Demand-pull* — aggregate demand grows faster than the economy's capacity to produce: too much money chasing too few goods. Output may rise a little, but mostly the price level rises.
  + *Cost-push* — the cost of production rises, so aggregate supply shifts left: dearer fuel, a devalued currency, a wage settlement above productivity. Price rises *and* output falls, which is stagflation.
  + *Imported inflation* is cost-push arriving through the exchange rate; *structural inflation* is cost-push arising from bottlenecks in supply.
]

#table(
  columns: (1.5fr, 1.7fr, 1.8fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Under inflation],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why],
  ),
  [Debtors], [gain], [they repay in money that is worth less than the money they borrowed],
  [Creditors and savers], [lose], [the same logic in reverse: what is repaid buys less],
  [Fixed-income earners], [lose], [pensions and rents are fixed in nominal terms, so their real value falls],
  [Exporters], [may gain or lose], [domestic costs rise, but a weaker currency may offset it],
  [Government], [gains from inflation tax], [the real burden of its debt falls, and it collects more nominal tax],
)

#diagram-fig("diagrams/ch02_phillips.svg",
  "The Phillips curve: a short-run trade-off between inflation and unemployment that shifts when expectations change. It describes a menu, not a law.", width: 92%)

#worked-example(
  1,
  "The credit multiplier",
  [A commercial bank receives a deposit of ₦50,000 and the cash reserve ratio is 25 per cent. The total deposits the banking system can create are

    A. ₦12,500 \\
    B. ₦50,000 \\
    C. ₦200,000 \\
    D. ₦250,000],
  [
    *Step 1 — the multiplier.* Credit multiplier = 1 ÷ reserve ratio = 1 ÷ 0.25 = 4.

    *Step 2 — apply it.* Total deposits = ₦50,000 × 4 = ₦200,000.

    *Step 3 — kill the rest.* A is the reserve itself (25 per cent of 50,000), B is the original deposit with no multiplier applied, and D is the answer to dividing by 0.20 instead of 0.25.

    *Check.* The new credit created is ₦150,000, and adding the original ₦50,000 gives ₦200,000. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Which instrument, and which direction",
  [A government wishing to reduce the money supply should

    A. buy treasury bills in the open market \\
    B. lower the cash reserve ratio \\
    C. raise the cash reserve ratio \\
    D. reduce the rate at which it lends to banks],
  [
    *Step 1 — decide the direction.* Reducing the money supply means draining liquidity, so every instrument must be moved in its contractionary direction.

    *Step 2 — check each option.* Buying bills puts cash *into* the banks, so A expands. Lowering the reserve ratio enlarges the multiplier, so B expands. Lowering the lending rate makes borrowing cheaper, so D expands.

    *Step 3 — the one that contracts.* Raising the reserve ratio leaves banks holding a larger fraction of every deposit idle, so the multiplier falls and credit shrinks.

    *Check.* Under contractionary policy all four levers move the same way — up for the ratio and the rate, sales for open market operations. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The inflation arithmetic",
  [A worker's nominal wage rises from ₦60,000 to ₦66,000 in a year in which the price level rises by 12 per cent. The worker's real wage

    A. rose by 10 per cent \\
    B. rose by 12 per cent \\
    C. fell by about 2 per cent \\
    D. was unchanged],
  [
    *Step 1 — the nominal change.* 6,000 ÷ 60,000 = 10 per cent.

    *Step 2 — subtract the inflation.* Real change ≈ 10 − 12 = −2 per cent, so the real wage fell.

    *Step 3 — check by deflating.* The new wage at old prices is 66,000 ÷ 1.12 = ₦58,929, which is below ₦60,000. The worker is worse off by about 1.8 per cent.

    *Check.* A nominal rise smaller than the inflation rate is a real cut. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Cost-push, and what it does to output",
  [A sharp rise in the world price of crude oil raises costs across an economy. The most likely short-run effect is

    A. a rise in both the price level and output \\
    B. a fall in both the price level and output \\
    C. a rise in the price level and a fall in output \\
    D. a fall in the price level and a rise in output],
  [
    *Step 1 — which curve moves?* A cost increase is a supply-side event, so aggregate supply shifts left.

    *Step 2 — read the effect.* A leftward shift of supply along a downward-sloping demand curve means a higher price level and a lower quantity of output.

    *Step 3 — the name.* Inflation with falling output is stagflation, and it is what makes cost-push harder to treat than demand-pull: the usual cure for inflation, which is to cut demand, makes the output fall worse.

    *Check.* Costs rise → supply shifts left → price up, output down. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  5,
  "Who gains from inflation",
  [During a period of rapid inflation, the group most likely to gain is

    A. pensioners on fixed incomes \\
    B. holders of long-term fixed-interest bonds \\
    C. borrowers on fixed-interest loans \\
    D. commercial banks holding cash reserves],
  [
    *Step 1 — the principle.* Inflation transfers wealth from those who hold money to those who owe it, because a debt fixed in nominal terms shrinks in real terms as prices rise.

    *Step 2 — apply it.* A borrower repays with money worth less than the money borrowed, so C gains. Pensioners and bondholders receive fixed nominal amounts, so A and B lose.

    *Step 3 — kill D.* A bank's cash reserves also lose purchasing power, so banks holding cash are not beneficiaries; banks may gain from the *interest* they charge, which is a different question.

    *Check.* Inflation is a tax on holding money and a subsidy to owing it. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: money and banking.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Money is whatever is generally accepted as payment, and it performs four jobs: medium of exchange, unit of account, store of value and standard of deferred payment — each of which removes a specific failure of barter. Commercial banks create credit, because a loan is written as a deposit; the total deposits a system can support is the initial deposit multiplied by 1 ÷ the cash reserve ratio, and every leak from the system reduces that figure. The central bank issues the currency, serves as banker to government and to the banks, lends as a last resort and runs monetary policy through open market operations, the reserve ratio, the policy rate and moral suasion. Inflation is a sustained rise in the general price level. Demand-pull inflation comes from excess demand and shifts aggregate demand; cost-push inflation comes from rising costs, shifts aggregate supply and therefore raises prices while cutting output. Under inflation, debtors gain and creditors, savers and fixed-income earners lose.
  ]
]

== 2.5 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The function of money that makes lending possible is], [medium of exchange], [unit of account], [standard of deferred payment], [store of value])

#mcq(2, [A bank receives a deposit of ₦10,000 and the reserve ratio is 20 per cent. The credit multiplier is], [0.2], [2], [5], [20])

#mcq(3, [An increase in the cash reserve ratio will], [increase the ability of banks to create credit], [reduce the ability of banks to create credit], [lower the rate of interest charged by banks], [increase the money supply])

#mcq(4, [Cost-push inflation is characterised by], [rising prices and rising output], [rising prices and falling output], [falling prices and rising output], [falling prices and falling output])

#answer-key-grid(("C", "C", "B", "B"))

#answer-notes((
  ("C", [Debt is written in money and repaid later, so it needs a unit that survives to repayment. A makes exchange possible but not credit, B only supplies the scale, and D is about holding value, not about settling a debt later.]),
  ("C", [1 ÷ 0.20 = 5. A is the reserve ratio itself, B is 1 ÷ 0.5, and D multiplies by 100 instead of dividing by the ratio.]),
  ("B", [A higher ratio leaves more of every deposit idle, so the multiplier falls and credit contracts. A is the reverse, C would follow a lower policy rate rather than a higher ratio, and D describes expansion, not contraction.]),
  ("B", [Cost-push shifts aggregate supply left, which raises the price level and cuts output — stagflation. A is demand-pull, and C and D describe a fall in prices, which is deflation.]),
))

#chapter-checklist("Before you leave Chapter 2", (
  [Name the four functions of money and one failure each one removes.],
  [Compute a credit multiplier and say what a rise in the reserve ratio does to it.],
  [List the five functions of the central bank and the four instruments of monetary policy.],
  [Distinguish demand-pull from cost-push inflation, and say which one reduces output.],
  [Say which groups gain and which lose under inflation, and why.],
  [Explain why deflation is not simply the opposite of a problem.],
))

#concept-box("Carry this into Chapter 3")[
  Monetary policy controls how much money circulates; fiscal policy decides what the
  government does with what it collects. Chapter 3 takes the other set of levers: the
  budget, the taxes that fund it, and the debt that fills the gap when it does not.
  Notice how the two chapters meet — a deficit financed by borrowing from the central
  bank is monetary policy by another name, and that connection is a favourite question.
]

#include "drill_ch02.typ"
