#import "template.typ": *

#current-chapter.update("Chapter 1: Manufacturing Accounts")

#pagebreak()

#chapter-opener(
  1,
  "Manufacturing Accounts",
  subtitle: "What It Costs to Make the Goods, as Distinct from What It Costs to Buy Them",
  syllabus-ref: "Sec. 12 • Manufacturing Accounts",
  utme-weight: "5 Qs a year",
  running: "Manufacturing Accounts",
)

#focus-radar(
  objectives: (
    "Distinguish a manufacturing account from a trading account.",
    "Compute prime cost, production cost and cost of goods sold, in that order.",
    "Classify a cost as direct material, direct labour, direct expense or factory overhead.",
    "Adjust for opening and closing work in progress.",
    "Recognise a manufacturing profit when goods are transferred at market price.",
    "Read a manufacturer's final accounts as three linked accounts, not one.",
  ),
  hotspots: (
    "*Prime cost comes first.* It is the three direct costs and nothing else: material consumed, direct labour, direct expenses. A factory supervisor belongs to the next line, not this one.",
    "*Work in progress is adjusted, not ignored.* Add the opening figure to the cost of the period, deduct the closing figure, because the closing figure is not yet finished goods.",
    "*Cost of production is not cost of goods sold.* Add the opening stock of finished goods and deduct the closing stock, exactly as a trader adjusts purchases.",
    "*Only factory costs enter the manufacturing account.* Rent of the office, salaries of the salesmen and depreciation of the delivery van belong to the profit and loss account, however large they are.",
  ),
  trap-summary: "Four slips. (1) Putting carriage *outwards* into the manufacturing account — it is a selling cost. (2) Treating depreciation of the *office* equipment as factory overhead. (3) Forgetting to adjust work in progress, so production cost is overstated or understated by the movement. (4) Adding the closing stock of finished goods instead of deducting it. The format is the mark: draw the ladder first, and the figures have only one place to go.",
)

// ============================================================================
== 1.1 Why a Manufacturer Needs a Different Account

A trader buys goods and sells them. His trading account has one purchase line, and the difference between sales and the cost of those purchases is his gross profit. A manufacturer does not buy the thing he sells: he buys *material*, pays *labour*, and bears *overheads* in a factory, and only then does a finished product exist. If he used a trader's account, the whole of his wages bill and his factory rent would look like expenses of the selling period, and he would have no idea what a unit cost him.

So a manufacturer keeps one extra account in front of the trading account. The *manufacturing account* collects the cost of making the goods and transfers that cost — the *cost of production* — to the trading account as if it were a purchase. The trading account then behaves exactly like a trader's: cost of goods sold against sales.

#table(
  columns: (1.2fr, 1.55fr, 1.6fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The trader],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The manufacturer],
  ),
  [What is bought?], [finished goods, ready to resell], [raw material, to be converted],
  [Where does cost accumulate?], [in the purchases account], [in the manufacturing account],
  [What does the trading account receive?], [purchases], [cost of production, treated as a purchase],
  [What is a direct cost?], [the invoice price of the goods], [material consumed, direct labour, direct expenses],
  [What is a factory overhead?], [—], [rent, power, supervision and depreciation of the factory],
  [Where do selling costs go?], [profit and loss account], [profit and loss account — never the factory],
)

#v(2pt)

#concept-box("The one sentence that answers half the questions")[
  The manufacturing account stops at the factory gate. Anything that happens *after* the
  goods are finished — storing them in the warehouse, advertising them, delivering them,
  invoicing them — is a selling or administration cost, and it belongs to the profit and
  loss account. Anything that happens *inside* the factory is a factory cost, and it
  belongs to the manufacturing account.
]

// ============================================================================
== 1.2 The Format of the Manufacturing Account

The account is a ladder, and each rung is a total that the next rung uses. Learn the six rungs by name and order, and most of the arithmetic becomes bookkeeping.

#formula-box("The manufacturing account, from the top")[
  #text(size: 9.2pt)[
    *Direct materials consumed* = opening stock of raw material + purchases + carriage inwards − closing stock of raw material \
    *Prime cost* = direct materials consumed + direct labour + direct expenses \
    *Production cost* = prime cost + factory overhead + opening work in progress − closing work in progress \
    *Cost of goods sold* = production cost + opening stock of finished goods − closing stock of finished goods
  ]
]

#v(2pt)

#diagram-fig("diagrams/ch01_manufacturing.svg",
  "From material to finished goods: the three ingredients of prime cost, the two adjustments that turn prime cost into production cost, and the finished-goods adjustment that turns production cost into cost of goods sold.", width: 97%)

#v(2pt)

#table(
  columns: (1.75fr, 1.15fr, 1.05fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Line of the account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[₦],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rung],
  ),
  [Opening stock of raw materials], [40,000], [],
  [Add purchases], [260,000], [],
  [Add carriage inwards], [10,000], [],
  [Less closing stock of raw materials], [(30,000)], [],
  [*Direct materials consumed*], [*280,000*], [*1*],
  [Direct labour], [150,000], [],
  [Direct expenses (royalty)], [20,000], [],
  [*Prime cost*], [*450,000*], [*2*],
  [Factory rent and rates], [60,000], [],
  [Factory power], [20,000], [],
  [Depreciation of plant], [30,000], [],
  [Factory supervisor's salary], [40,000], [],
  [Add opening work in progress], [25,000], [],
  [Less closing work in progress], [(35,000)], [],
  [*Production cost*], [*590,000*], [*3*],
  [Add opening stock of finished goods], [45,000], [],
  [Less closing stock of finished goods], [(55,000)], [],
  [*Cost of goods sold*], [*580,000*], [*4*],
)

#v(2pt)

#text(size: 9.5pt)[Read the table as a set of instructions, not as a list of numbers. Rung 1 is a stock adjustment in the same shape as a trader's purchases. Rung 2 adds the two other direct costs. Rung 3 adds the factory's overheads and adjusts work in progress. Rung 4 adds the finished-goods adjustment. A question that asks for any one rung is asking you to stop at that line and not to carry the later lines into it.]

// ============================================================================
== 1.3 The Three Kinds of Direct Cost

A cost is direct if it can be traced to the product without any allocation. Everything else is indirect, and indirect factory cost is what "factory overhead" means.

#table(
  columns: (1.15fr, 1.5fr, 1.6fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Inside prime cost],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Outside it, and why],
  ),
  [*Direct material*], [the timber that becomes the table; the flour that becomes the bread], [oil for the machine, cleaning cloth, nails — indirect material, a factory overhead],
  [*Direct labour*], [the carpenter's wage, the baker's wage, the machine operator's wage], [the foreman, the storekeeper, the security guard — indirect labour, a factory overhead],
  [*Direct expenses*], [a royalty paid per unit made, hire of a machine used only on this order, subcontracted work on the product], [insurance of the factory, business rates, depreciation — indirect expenses, factory overheads],
)

#v(3pt)

#text(size: 9.5pt)[Three words decide most classification questions: *traceable*, *product* and *period*. A traceable cost is direct. A product cost goes into the manufacturing account. A period cost — the office, the showroom, the delivery van — is written off in the profit and loss account of the year. When an option says "factory" it is trying to move a cost into the manufacturing account; ask whether the cost would disappear if the factory stopped making anything, and if it would, it is a factory cost.]

#shortcut-box("The stop-making test")[
  Ask: *if the factory made nothing at all this month, would this cost still be incurred?* \
  + The rent of the factory: yes — but it is still a factory overhead, because it is incurred *for* the factory. \
  + The wages of the machine operators: no — direct labour. \
  + The salary of the sales manager: yes — and it is not a factory cost, because it is incurred for selling. \
  The test separates the *factory* from the *business*, not the fixed from the variable.
]

// ============================================================================
== 1.4 Work in Progress, and Why It Is Adjusted

At the year end some goods are half-made: the material has been issued, some labour has been spent, and the product is standing on the factory floor. Its cost is real, but it is not the cost of anything the firm can sell yet. So it is carried forward as *closing work in progress* and deducted from the cost of the period; the opening work in progress is added back, because it was finished and sold during this year.

#table(
  columns: (1.05fr, 1.25fr, 1.95fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Treatment],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Because],
  ),
  [Opening work in progress], [*add*], [it was begun last year, finished this year, and its cost belongs to this year's output],
  [Closing work in progress], [*deduct*], [it was begun this year but is not finished, so it is not part of this year's cost of production],
  [Opening finished goods], [*add*], [goods made last year and sold this year are part of this year's cost of goods sold],
  [Closing finished goods], [*deduct*], [goods made but not sold are stock, not cost of sales],
)

#v(2pt)

#trap-box("Add the opening, deduct the closing — every time")[
  Every adjustment in this chapter runs the same way: *opening is added, closing is
  deducted*. Material, work in progress and finished goods all obey it. The slip is
  always the same slip: the candidate reverses one pair, and the whole ladder shifts by
  twice the figure. Write \(+O - C\) in the margin before you start and check each pair
  against it.
]

// ============================================================================
== 1.5 The Manufacturer's Final Accounts, End to End

A manufacturer prepares three linked accounts. The manufacturing account ends with cost of production; the trading account turns that into gross profit; the profit and loss account takes the gross profit and deducts the period costs.

#table(
  columns: (1.2fr, 1.45fr, 1.65fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Starts with],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Ends with],
  ),
  [*Manufacturing*], [material, labour, direct expenses, factory overheads], [cost of production, transferred to the trading account],
  [*Trading*], [cost of production, adjusted for finished goods], [gross profit, transferred to the profit and loss account],
  [*Profit and loss*], [gross profit], [net profit: after administration, selling and finance costs],
)

#v(2pt)

#text(size: 9.5pt)[Some examination questions use a *transfer price*: the manufacturing account is credited with the goods transferred at market price rather than at cost, and the difference between the transfer price and the cost of production is a *manufacturing profit*. It is not a real profit — the goods have not been sold outside the firm — so it is eliminated on consolidation into the trading account. For the paper, the rule is short: if the question gives a transfer price above cost, the manufacturing account shows a profit, and the trading account's opening figure is the transfer price, not the cost.]

#formula-box("Manufacturing profit")[
  #text(size: 9.2pt)[
    *Manufacturing profit* = transfer price of goods completed − cost of production of those goods \
    and it is credited to the manufacturing account, then debited in the trading account, so that
    the firm's total profit is unchanged by the transfer price chosen.
  ]
]

// ============================================================================
== 1.6 Worked Examples

#worked-example(
  1,
  "The first rung",
  tier: "FOUNDATION",
  [
    A manufacturer's records show: opening stock of raw materials ₦40,000, purchases ₦260,000, carriage inwards ₦10,000, closing stock of raw materials ₦30,000. Direct materials consumed is

    A. ₦240,000 \\
    B. ₦270,000 \\
    C. ₦280,000 \\
    D. ₦300,000
  ],
  [
    *Step 1 — write the shape.* Opening + purchases + carriage inwards − closing.

    *Step 2 — substitute.* 40,000 + 260,000 + 10,000 − 30,000.

    *Step 3 — add, then subtract.* 40,000 + 260,000 = 300,000; + 10,000 = 310,000; − 30,000 = *₦280,000*.

    *Step 4 — eliminate.* A omits the carriage and the opening stock (300,000 − 30,000 − 30,000 is not a method); B omits the carriage inwards and the opening stock; D omits only the closing stock.

    *Answer: C.*
  ],
)

#worked-example(
  2,
  "Prime cost to production cost",
  tier: "UTME STANDARD",
  [
    Direct materials consumed ₦280,000; direct labour ₦150,000; royalty paid per unit ₦20,000; factory rent ₦60,000; factory power ₦20,000; depreciation of plant ₦30,000; supervisor's salary ₦40,000; opening work in progress ₦25,000; closing work in progress ₦35,000. Production cost is

    A. ₦555,000 \\
    B. ₦590,000 \\
    C. ₦600,000 \\
    D. ₦660,000
  ],
  [
    *Step 1 — prime cost.* 280,000 + 150,000 + 20,000 = *₦450,000*. The royalty is a direct expense because it is paid per unit made.

    *Step 2 — factory overhead.* 60,000 + 20,000 + 30,000 + 40,000 = *₦150,000*.

    *Step 3 — work in progress.* 450,000 + 150,000 + 25,000 − 35,000 = *₦590,000*.

    *Step 4 — eliminate.* A omits the supervisor's salary, which is a factory overhead even though it is paid monthly like a wage. C ignores work in progress altogether — 450,000 + 150,000 = 600,000 — which is the commonest slip in the chapter. D adds the closing work in progress instead of deducting it, so the figure moves by twice the ₦10,000 movement.

    *Answer: B.*
  ],
)

#worked-example(
  3,
  "Cost of goods sold for a manufacturer",
  tier: "UTME STANDARD",
  [
    Cost of production was ₦590,000. Finished goods were ₦45,000 at the start of the year and ₦55,000 at the end. Sales were ₦800,000. Gross profit for the year is

    A. ₦210,000 \\
    B. ₦220,000 \\
    C. ₦230,000 \\
    D. ₦260,000
  ],
  [
    *Step 1 — cost of goods sold.* 590,000 + 45,000 − 55,000 = *₦580,000*.

    *Step 2 — gross profit.* 800,000 − 580,000 = *₦220,000*.

    *Step 3 — check the direction.* If you had added the closing stock instead of deducting it, cost of sales would be 590,000 + 45,000 + 55,000 = 690,000 and the gross profit 110,000, which is not offered. If you had ignored finished goods altogether, the answer would be 210,000 — option A, the most attractive wrong answer in this question.

    *Answer: B.*
  ],
)

#worked-example(
  4,
  "The cost that does not belong",
  tier: "JAMB CHALLENGE",
  [
    A furniture maker paid the following in the year: timber ₦400,000; glue and nails ₦15,000; wages of carpenters ₦250,000; factory rent ₦80,000; depreciation of factory machines ₦40,000; salaries of office staff ₦90,000; advertising ₦25,000; carriage outwards ₦35,000; depreciation of the delivery van ₦20,000. Prime cost and the total of the factory overheads are

    A. ₦650,000 and ₦135,000 \\
    B. ₦650,000 and ₦175,000 \\
    C. ₦665,000 and ₦135,000 \\
    D. ₦665,000 and ₦190,000
  ],
  [
    *Step 1 — sort every figure into three boxes.* The factory box takes timber, carpenters' wages, factory rent and machine depreciation. The indirect-factory box takes glue and nails (indirect material), because they cannot be traced to a single chair. The period box takes office salaries, advertising, carriage outwards and van depreciation.

    *Step 2 — prime cost.* 400,000 + 250,000 = *₦650,000*. Glue and nails are not direct material, and carriage outwards is a selling cost.

    *Step 3 — factory overhead.* 15,000 + 80,000 + 40,000 = *₦135,000*.

    *Step 4 — eliminate.* C adds the glue to prime cost, which would make prime cost 665,000. B keeps the glue out of prime cost but counts the machine depreciation twice, giving 175,000. D adds the office salaries to the factory overheads, which is the mistake the whole chapter is about.

    *Answer: A.*
  ],
)

#v(2pt)

#trap-box("Carriage inwards and carriage outwards are not the same word")[
  *Carriage inwards* is the cost of bringing material *into* the factory: it is part of the
  cost of the material, so it goes in the manufacturing account. *Carriage outwards* is the
  cost of taking finished goods *to the customer*: it is a selling expense, so it goes in
  the profit and loss account. The paper changes one word and expects the answer to change
  with it.
]

// ============================================================================
== 1.7 Two-Minute Set

#mcq(1, [The cost of goods produced is transferred from the manufacturing account to the], [trading account], [profit and loss account], [balance sheet], [appropriation account])

#mcq(2, [Which of the following is a factory overhead?], [carriage inwards on raw materials], [wages of machine operators], [salary of the factory supervisor], [royalty paid per unit produced])

#mcq(3, [Prime cost is made up of direct materials, direct labour and], [factory overhead], [direct expenses], [work in progress], [administration expenses])

#mcq(4, [Opening work in progress is ₦25,000 and closing work in progress is ₦35,000. In the manufacturing account the], [closing figure is added], [opening figure is deducted], [opening figure is added and the closing deducted], [movement of ₦10,000 is credited])

#answer-key-grid(("A", "C", "B", "C"))

#answer-notes((
  ("A", [The manufacturing account's output is the cost of production, and the trading account treats it as its purchases.]),
  ("C", [The supervisor supervises the factory but does not make a unit that can be traced to one product; his salary is indirect factory labour.]),
  ("B", [Prime cost is the three direct costs: material, labour and direct expenses such as a royalty or hire of a special machine.]),
  ("C", [The opening figure was finished this year, so it is added; the closing figure is unfinished, so it is deducted.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: prime cost, production cost, cost of goods sold and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A manufacturer cannot use a trader's account, because he does not buy what he sells. The manufacturing account collects material consumed, direct labour and direct expenses into prime cost; adds factory overhead and adjusts work in progress into production cost; and hands that figure to the trading account, where the finished-goods adjustment turns it into cost of goods sold. Every line obeys the same rule — add the opening, deduct the closing — and every classification obeys one test: does the cost belong to the factory, or to the business after the factory has finished? Carriage inwards is factory; carriage outwards is selling. The supervisor is factory; the salesman is not. Get the ladder right and the arithmetic is only six additions.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Write the four rungs of the ladder, in order, from memory.],
  [Name the three direct costs and give one example of each.],
  [Explain why closing work in progress is deducted.],
  [Classify carriage inwards, carriage outwards, glue, and the factory supervisor's salary.],
  [State the formula for cost of goods sold in a manufacturing firm.],
  [Explain what a manufacturing profit is and why it disappears on transfer.],
))

#concept-box("Carry this into Chapter 2")[
  Chapter 1 priced the *whole factory* for a year. Chapter 2 goes inside the factory and asks
  a harder question: which product, which job, which batch should carry each of those costs?
  That is cost accounting, and it begins with the three elements — materials, labour and
  overheads — one at a time.
]

#include "drill_ch01.typ"
