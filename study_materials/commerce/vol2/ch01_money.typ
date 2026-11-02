#import "template.typ": *

#current-chapter.update("Chapter 1: Money and Its Work")

#pagebreak()

#chapter-opener(
  1,
  "Money and Its Work",
  subtitle: "Barter, the Functions of Money, Its Qualities, Its Kinds and the Money Supply",
  syllabus-ref: "Sec. 1 • Money and the Financial System",
  utme-weight: "6 Qs a year",
  running: "Money and Its Work",
)

#focus-radar(
  objectives: (
    "Explain the difficulties of barter and how money removes each one.",
    "State the four functions of money and apply them to an example.",
    "Name the qualities of good money, and say which quality a given commodity lacks.",
    "Distinguish commodity money, coin, paper money, bank money and near money.",
    "Say what legal tender is, and what it is not.",
    "Explain the difference between narrow money and broad money.",
  ),
  hotspots: (
    "*The four failures of barter are the four functions reversed.* No double coincidence of wants → medium of exchange. No common measure → measure of value. No store of value → store of value. No standard for debt → standard of deferred payment. If you can name the failure you can name the function.",
    "*Money is anything generally accepted* in payment and in settlement of debt. The paper never asks for a list of naira notes; it asks what makes a thing money.",
    "*Legal tender is narrower than money.* A cheque is money in the economist's sense and is not legal tender; a ₦20 note is both.",
    "*Near money* is what can be turned into money quickly and without loss: a savings deposit, a treasury bill, a bill of exchange. A house is not near money.",
    "*Quality questions are elimination questions.* \"Which quality does a cow lack?\" — divisibility. \"Which does gold coin lack?\" — usually none; the distractor is portability of a different commodity.",
  ),
  trap-summary: "Four slips. (1) Calling a cheque legal tender. (2) Treating a credit card as money, when it is a means of obtaining credit. (3) Saying money must have intrinsic value — fiat money does not. (4) Mixing up *measure of value* (pricing) with *standard of deferred payment* (debt).",
)

// ============================================================================
#pagebreak(weak: true)

== 1.1 Barter and Its Four Failures

Before money, goods were exchanged for goods. *Barter* is direct exchange, and it works
in a small community where everyone knows what everyone else has. It fails as soon as
the community grows, and it fails in four specific ways that the paper expects you to
name.

#table(
  columns: (1.25fr, 2.1fr, 1.55fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Failure],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it means in a market],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The function that answers it],
  ),
  [Double coincidence of wants], [the baker must want what the tailor has, at the moment the tailor wants bread], [medium of exchange],
  [No common measure of value], [there is no agreed rate at which a goat exchanges for cloth, and every bargain is a fresh argument], [measure of value],
  [No store of value], [yams rot, cattle stray and grain is eaten by rats, so nobody can save the fruit of today's work for tomorrow], [store of value],
  [No standard of deferred payment], [a debt cannot be written down for a future date, because no one can say what a bag of grain will be worth then], [standard of deferred payment],
)

#v(2pt)

#rule-box("The sentence the paper wants, and the one it punishes")[
  *Money is anything that is generally acceptable as a medium of exchange and in the
  settlement of debts.* The punished sentence is \"money is the naira\", which confuses
  one currency with the institution. A community that used cowries had money; a prison
  camp that uses cigarettes has money; neither has a mint.
]

#text(size: 9.4pt)[Two further difficulties are sometimes listed as a fifth and sixth: the *lack of portability* of bulky goods, and the *indivisibility* of valuable ones — you cannot pay half a cow for a loaf. Both are really statements about the qualities a money must have, and they are treated in 1.3.]

// ============================================================================
== 1.2 The Functions of Money

#diagram-fig("diagrams/ch01_money.svg",
  "Four failures of barter, and the four functions of money that answer them.", width: 100%)

#table(
  columns: (1.35fr, 2.15fr, 1.5fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What money does],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The example the paper uses],
  ),
  [Medium of exchange], [it stands between the sale and the purchase, so the two no longer have to happen at once or between the same two people], [a trader sells cloth for naira, and uses the naira to buy grain from someone who does not want cloth],
  [Measure of value], [it prices everything in one unit, so goods can be compared and accounts can be kept], [a bag of rice at ₦60,000 and a phone at ₦120,000 can be added, compared and budgeted],
  [Store of value], [it holds purchasing power from one period to the next], [a worker saves part of his salary in a bank and spends it in December],
  [Standard of deferred payment], [it allows a debt to be contracted now and settled later in a fixed unit], [a loan of ₦500,000 repayable in twelve months],
)

#v(2pt)

#concept-box("The fifth function, and why examiners like it")[
  Some syllabuses add *unit of account* as a separate function: money is the unit in
  which businesses keep their books and in which national income is measured. It is
  the same idea as measure of value, applied to records rather than to a single
  bargain. If an option offers \"unit of account\" and no better answer exists, it is
  usually the intended one.
]

#shortcut-box("The one-line test")[
  Ask what the money is doing in the sentence. *Handed over* → medium of exchange.
  *Written on a price tag* → measure of value. *Kept* → store of value. *Promised* →
  standard of deferred payment.
]

// ============================================================================
== 1.3 The Qualities of Good Money

A thing becomes money because it has the qualities a market needs. The paper tests them
by asking which quality a named commodity lacks.

#table(
  columns: (1.15fr, 2.3fr, 1.5fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Quality],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The commodity that lacks it],
  ),
  [General acceptability], [everyone will take it, because everyone expects everyone else to], [a personal cheque outside the bank's own town],
  [Portability], [it can be carried in quantity without effort or risk], [cattle, granite, a piano],
  [Divisibility], [it can be split into the exact amount a purchase needs], [a cow, a diamond, a plot of land],
  [Durability], [it does not rot, rust or stray while it is being kept], [yams, fresh fish, tomatoes],
  [Homogeneity], [one unit is exactly like another, so no one argues about which is which], [cattle, where every beast is different],
  [Scarcity, but not rarity], [it is scarce enough to hold value, and common enough to be used], [sea water, which is plentiful and therefore worthless],
  [Stability of value], [its purchasing power does not swing, so debts and savings are safe], [a currency in hyperinflation],
)

#v(2pt)

#trap-box("The commodity questions, answered by elimination")[
  *A cow* fails divisibility first, and portability second. *Gold* passes everything,
  which is why it was money for three thousand years. *Paper notes* fail durability and,
  in an inflation, stability of value. *A bank deposit* is divisible, portable by
  transfer, homogeneous and stable — but it is not legal tender. If a question asks
  which quality is *most* important, the answer is generally acceptability, because a
  money that is not accepted is not money whatever else it is.
]

// ============================================================================
== 1.4 The Kinds of Money

#table(
  columns: (1.3fr, 2.35fr, 1.3fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Example],
  ),
  [Commodity money], [a good that is valued for itself as well as for exchange], [cowries, salt, cattle, gold dust],
  [Coin], [metal stamped by an authority, with a face value that may exceed its metal], [the kobo, the old shilling],
  [Convertible paper money], [a note that the issuer promises to exchange for a fixed weight of gold], [the pre-1914 gold-standard note],
  [Fiat (inconvertible) paper money], [a note that is money because the law and the central bank say so, with no metal behind it], [the naira note in your pocket],
  [Bank (deposit) money], [a balance in a current account, transferred by cheque or card], [your salary, sitting in a bank],
  [Near money], [an asset that can be turned into money quickly and at little loss], [a treasury bill, a fixed deposit, a bill of exchange],
  [Electronic money], [a stored value held on a device or a server and spent by transfer], [a mobile-wallet balance, a prepaid card],
)

#v(2pt)

#rule-box("Legal tender, defined exactly")[
  *Legal tender* is the coin and paper money that a creditor is obliged by law to accept
  in settlement of a debt. A shop may refuse a ₦1,000 note for a ₦50 purchase only if it
  states its policy in advance; a creditor may not refuse legal tender offered in
  settlement. *Bank deposits are money but not legal tender*; a cheque is an instruction
  to transfer, and a trader may refuse it.
]

#text(size: 9.4pt)[Modern money is mostly bank money: the notes and coins in circulation are a small fraction of the total, and the rest is deposits, which move by transfer. That is why the next chapter is about banks — the supply of money is now created by their lending, not by the mint.]

// ============================================================================
#pagebreak(weak: true)

== 1.5 The Money Supply, Narrow and Broad

#table(
  columns: (1.1fr, 2.6fr, 1.25fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Measure],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it counts],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Character],
  ),
  [Currency in circulation], [notes and coins held outside the banks], [the smallest part],
  [Narrow money (M1)], [currency in circulation plus demand deposits], [money you can spend today],
  [Broad money (M2)], [M1 plus savings and time deposits and other near money], [money you could spend soon],
)

#v(2pt)

#text(size: 9.4pt)[The distinction matters for policy: the central bank can control the currency it issues directly, but most of the money supply is created by commercial banks when they lend. A question that asks which measure is largest is asking for broad money; a question that asks which is most liquid is asking for narrow money.]

// ============================================================================
== 1.6 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [The primary function of money is

    A. to serve as a store of value \\
    B. to serve as a medium of exchange \\
    C. to act as a standard of deferred payment \\
    D. to measure national income],
  [
    *Step 1 — read the word \"primary\".* Three of the four options are genuine functions; the stem asks which comes first.

    *Step 2 — rank.* Money exists to end barter, and what ends barter is its acceptance in exchange. The other functions are consequences of that acceptance.

    *Step 3 — eliminate.* C is a function but not the primary one; D is a use of money, not its defining function; A depends on B, since a thing that is not accepted has no value to store.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classification",
  [A trader who keeps his savings in a fixed deposit because he may need the money within a month is using the deposit as

    A. a medium of exchange \\
    B. a measure of value \\
    C. a store of value \\
    D. legal tender],
  [
    *Step 1 — what is happening?* Nothing is being bought or priced; money is being kept.

    *Step 2 — match.* Keeping purchasing power between one date and another is the store-of-value function.

    *Step 3 — eliminate.* A deposit is not spent directly (so not A), prices nothing (not B) and is not legal tender (not D).

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Quality",
  [Cattle are a poor form of money mainly because they lack

    A. acceptability \\
    B. durability and divisibility \\
    C. scarcity \\
    D. homogeneity only],
  [
    *Step 1 — test the wording.* Two qualities are named in B, and one of them is enough to disqualify cattle.

    *Step 2 — check each.* Cattle are acceptable in a cattle economy, so A is wrong; they are scarce, so C is wrong; they are not homogeneous either, but that is not the *main* disqualification.

    *Step 3 — decide.* They cannot be split to pay a small debt, and they die — divisibility and durability.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Application",
  [In an economy suffering rapid inflation, money performs its store-of-value function badly because

    A. it ceases to be legal tender \\
    B. its purchasing power falls faster than it can be spent \\
    C. the central bank withdraws the notes \\
    D. people begin to barter instead of buying],
  [
    *Step 1 — define the function.* To store value, money must hold purchasing power between receipt and use.

    *Step 2 — apply inflation.* Prices rise, so the same note buys less next month; the loss is the inflation rate.

    *Step 3 — eliminate.* Legal tender status is unaffected by inflation (A); withdrawal is not the mechanism (C); barter is the *consequence*, not the cause (D).

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 1.7 Two-Minute Set

#mcq(1, [Barter requires], [a central bank], [a double coincidence of wants], [legal tender], [a stock exchange])

#mcq(2, [The function of money that makes accounting possible is], [medium of exchange], [store of value], [measure of value], [standard of deferred payment])

#mcq(3, [A cheque is], [legal tender], [a near-money instruction to a bank], [commodity money], [fiat money])

#mcq(4, [The quality a bag of rice lacks as money is], [acceptability], [durability], [scarcity], [homogeneity])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [Both parties must want what the other has, at the same moment, before any exchange can happen.]),
  ("C", [Pricing everything in one unit is what allows a firm to keep books at all.]),
  ("B", [A cheque orders a bank to move a deposit; it is money-like, and it is not legal tender.]),
  ("B", [Rice rots and is eaten by weevils, so it cannot hold value for long.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: barter, the functions, the qualities and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Barter fails in four ways, and money exists because it answers each of them: it is a
    medium of exchange, a measure of value, a store of value and a standard of deferred
    payment. A thing becomes money by being generally acceptable, and it stays money by
    being portable, divisible, durable, homogeneous, scarce and stable in value. The
    kinds run from commodity money through coin and paper to bank money and near money,
    and the modern supply is mostly bank deposits rather than notes. Keep the two
    definitions separate: money is anything generally acceptable in payment; legal
    tender is the narrower set of coins and notes a creditor must accept.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Name the four failures of barter and the function that answers each.],
  [Define money and define legal tender, and say how they differ.],
  [List six qualities of good money and one commodity that lacks each.],
  [Place five examples in the table of money kinds.],
  [Distinguish narrow money from broad money.],
  [Explain why inflation damages the store-of-value function.],
))

#concept-box("Carry this into Chapter 2")[
  If most money is bank deposits, then most money is created when banks lend. Chapter 2
  follows that sentence into the banking system: what a commercial bank does, how a
  deposit becomes a loan and a loan another deposit, and why a central bank exists to
  put a limit on the process.
]

#include "drill_ch01.typ"
