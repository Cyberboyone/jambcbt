#import "template.typ": *

#current-chapter.update("Appendix H: Twenty-Five Traps")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Twenty-Five Traps, in the Paper's Own Words]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty-Five Traps, in the Paper's Own Words]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Each trap is written as the wrong option appears on a real paper, with the one line that
    kills it. Read the list the night before the examination: it is the highest return per
    minute in the book.
  ]
]

#v(5pt)

== H.1 Manufacturing: Six Traps

#table(
  columns: (0.4fr, 1.55fr, 2.35fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Kill it with],
  ),
  [1], [Carriage outwards added to the cost of materials], [inwards brings material into the factory; outwards takes goods to the customer, and is a selling cost],
  [2], [The supervisor's salary counted as direct labour], [he supervises; he makes no unit that can be traced, so his salary is a factory overhead],
  [3], [Closing work in progress added instead of deducted], [it is unfinished, so it is not part of this year's cost of production],
  [4], [Production cost called the cost of goods sold], [finished goods still have to be adjusted — add opening, deduct closing],
  [5], [Office depreciation included in factory overhead], [if the cost is incurred after the goods are finished, it is a period cost],
  [6], [Manufacturing profit treated as the firm's profit], [the goods have not been sold outside the firm; the transfer price is eliminated in the trading account],
)

#v(3pt)

== H.2 Materials and Labour: Five Traps

#table(
  columns: (0.4fr, 1.55fr, 2.35fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Kill it with],
  ),
  [7], [FIFO described as issuing the newest first], [first in, first out: the oldest units leave first, and the newest are left in stock],
  [8], [The weighted average computed once for the year], [a new average is struck at every receipt, and it governs every issue until the next one],
  [9], [Idle time charged to direct labour], [nothing was produced, so it cannot be traced to a product; it is a factory overhead],
  [10], [Overtime premium always treated as direct labour], [it is direct only when a particular job caused it; general pressure makes it an overhead],
  [11], [PAYE deducted from the employer's cost], [it is the employee's tax, collected by the employer and paid over; it is a liability, not a cost],
)

#v(3pt)

== H.3 Costing Methods: Four Traps

#table(
  columns: (0.4fr, 1.55fr, 2.35fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Kill it with],
  ),
  [12], [The cost per unit computed on input units], [divide by the units that survive: input less normal loss],
  [13], [Scrap value deducted from the units instead of the cost], [scrap reduces the money; the loss percentage reduces the units],
  [14], [Abnormal gain treated as a loss], [it is a saving: debit the process account, credit profit and loss],
  [15], [The opening work in progress added when computing equivalent units], [it was paid for last year, so only the work done on it this year is charged to this year],
)

#v(3pt)

== H.4 Marginal Costing: Four Traps

#table(
  columns: (0.4fr, 1.55fr, 2.35fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Kill it with],
  ),
  [16], [Break-even computed as fixed cost ÷ selling price], [the price must pay the variable cost first; divide by contribution],
  [17], [The margin of safety divided by break-even sales], [it is a percentage of *budgeted* sales — the sales you expect, not the sales you need],
  [18], [Target profit used without the fixed cost], [both must be covered, so add the target to the fixed cost before dividing],
  [19], [Products ranked by contribution per unit when a machine is scarce], [rank by contribution per unit of the limiting factor — per hour, not per unit],
)

#v(3pt)

== H.5 Budgeting, Records and Partnerships: Four Traps

#table(
  columns: (0.4fr, 1.55fr, 2.35fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Kill it with],
  ),
  [20], [A credit sale entered in the cash budget in the month of sale], [cash moves when the debtor pays; the month of sale belongs to the sales budget],
  [21], [Depreciation deducted in a cash budget], [no cash moved; it never belongs there],
  [22], [Drawings deducted in the profit formula], [drawings are added back: they reduced capital without being a trading loss],
  [23], [A revaluation profit shared in the new ratio], [the gain arose before the new partner arrived; the old ratio governs],
)

#v(3pt)

== H.6 Public Sector and Computers: Two Traps

#table(
  columns: (0.4fr, 1.55fr, 2.35fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The trap],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Kill it with],
  ),
  [24], [An unspent vote described as a profit], [it is unspent authority, returned or carried forward under the regulations],
  [25], [A computerised trial balance trusted as proof of accuracy], [it balances by construction; the audit trail and the reconciliation are what find a wrong entry],
)

#v(4pt)

== H.7 Your Own Traps

#text(size: 9pt)[Every candidate has four or five mistakes he makes twice. The list below is where they are recorded. Fill it from your marked drills — not from this book — and read it before every paper.]

#v(3pt)

#table(
  columns: (0.55fr, 2.15fr, 1.6fr),
  inset: (x: 5pt, y: 5pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The mistake I made],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The rule that prevents it],
  ),
  [1], [#v(9pt)], [],
  [2], [#v(9pt)], [],
  [3], [#v(9pt)], [],
  [4], [#v(9pt)], [],
  [5], [#v(9pt)], [],
  [6], [#v(9pt)], [],
  [7], [#v(9pt)], [],
  [8], [#v(9pt)], [],
  [9], [#v(9pt)], [],
)

#v(4pt)

== H.8 Ten Questions on the Traps

#text(size: 9pt)[Ten items, each of which is one of the traps above in a different suit. If you score nine or ten, the traps are yours; if you score six or seven, reread this appendix before the paper.]

#v(2pt)

#mcq(1, [A manufacturer's factory rent, plant depreciation and supervisor's salary are all], [direct expenses], [factory overheads], [administration costs], [part of prime cost])

#mcq(2, [Carriage outwards is charged to the], [manufacturing account], [trading account], [profit and loss account], [cost of production])

#mcq(3, [Under LIFO when prices are rising, the closing stock is valued at], [the highest prices], [the lowest prices], [the average price], [the market price])

#mcq(4, [Idle time is treated as], [direct labour], [a factory overhead], [a deduction from gross pay], [administration cost])

#mcq(5, [In a process, the cost per good unit is computed by dividing the net cost by], [input units], [expected output], [actual output], [normal loss units])

#mcq(6, [An abnormal gain is], [credited in the process account], [debited to profit and loss], [ignored], [added to closing stock])

#mcq(7, [Break-even units are fixed cost divided by], [selling price], [contribution per unit], [variable cost per unit], [profit per unit])

#mcq(8, [When production exceeds sales, absorption profit is], [lower than marginal profit], [higher than marginal profit], [equal to marginal profit], [always a loss])

#mcq(9, [In the profit formula for incomplete records, drawings are], [deducted], [added back], [ignored], [treated as capital])

#mcq(10, [On dissolution, a partner's loan is paid], [after capital], [before outside creditors], [after outside creditors but before capital], [only if cash remains])

#answer-key-grid(("B", "C", "B", "B", "B", "A", "B", "B", "B", "C"))

#answer-notes((
  ("B", [All three are indirect factory costs, incurred for the factory but not traceable to a unit.]),
  ("C", [Carriage outwards is a selling and distribution cost of the period.]),
  ("B", [LIFO leaves the oldest, cheapest units in stock when prices are rising.]),
  ("B", [Idle time is paid for and produces nothing, so it is carried as an indirect factory cost.]),
  ("B", [The cost is borne by the units that survive the process, which is the expected output.]),
  ("A", [The process gains units it did not pay for, so the process account is debited and profit credited.]),
  ("B", [Contribution must cover the fixed cost before any profit exists.]),
  ("B", [Fixed overhead is carried forward in closing stock instead of being written off.]),
  ("B", [They are the owner's withdrawals, not a trading loss, so they are added back.]),
  ("C", [The loan is a debt of the firm, ranking after trade creditors and before capital.]),
))
