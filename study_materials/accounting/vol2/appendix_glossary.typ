#import "template.typ": *

#current-chapter.update("Appendix D: The Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Glossary, A to Z]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Glossary, A to Z]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every term in the volume that a multiple-choice option might use, defined in one
    sentence. The definition is written the way the paper tests it: short enough to be
    recognised, exact enough to eliminate the near-miss beside it.
  ]
]

#v(5pt)

== D.1 A to F

#[
  #set text(size: 8.2pt)
#table(
  columns: (1.15fr, 3.2fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Definition]),
  [Abnormal gain], [output that exceeds the expected output of a process, valued at the cost per good unit and credited to profit],
  [Abnormal loss], [output that falls short of the expected output, valued at the cost per good unit and written off],
  [Absorption costing], [a method that includes a share of fixed production overhead in the cost of each unit],
  [Absorption rate], [budgeted overhead of a cost centre divided by its budgeted activity],
  [Allocation], [charging a whole overhead to the department that caused it],
  [Apportionment], [sharing an overhead between departments on a fair basis],
  [Batch costing], [costing a group of identical units and dividing by the good units in the batch],
  [Bin card], [the storekeeper's record of quantities received, issued and in hand],
  [Budget], [a financial plan for a defined period, approved before the period begins],
  [Budget centre], [the smallest unit for which a budget is prepared and a manager held responsible],
  [Budget slack], [the padding a manager builds into a budget so that it can be beaten],
  [Budgetary control], [the comparison of actual results with the budget, and the action taken on the difference],
  [By-product], [a secondary product of a process, with a small sales value relative to the main product],
  [Carriage inwards], [the cost of bringing material into the factory; part of direct materials],
  [Carriage outwards], [the cost of delivering finished goods to customers; a selling expense],
  [Cash budget], [a plan of cash receipts and payments, and of the balance at the end of each period],
  [Contribution], [selling price less variable cost; what remains to cover fixed cost and then profit],
  [Contract costing], [costing a large, long-term job carried out on the customer's site],
  [Cost centre], [a location, function or item of equipment for which costs are collected],
  [Cost of goods sold], [opening finished goods + cost of production − closing finished goods],
  [Cost of production], [prime cost + factory overhead + opening work in progress − closing work in progress],
  [C/S ratio], [contribution divided by sales; the proportion of each naira of sales left after variable cost],
  [Direct expense], [a cost, other than material or labour, that is traceable to the product],
  [Direct labour], [the wages of workers who make the product and whose time can be booked to it],
  [Direct material], [material that becomes part of the finished product and can be traced to it],
  [Equivalent units], [the work content of partly finished units expressed as complete units],
  [Factory overhead], [an indirect cost of the factory: power, rent, supervision, depreciation of plant],
  [FIFO], [first in, first out: the oldest units are issued first, at their own prices],
  [Flexible budget], [a budget rebuilt at the actual level of activity before it is compared with actual],
  [Fund], [a self-balancing set of public accounts kept for a stated purpose],
)
]

#v(3pt)

== D.2 G to P

#[
  #set text(size: 8.2pt)
#table(
  columns: (1.15fr, 3.2fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Definition]),
  [Goodwill], [the value of a firm's reputation and customer connection, paid for when a partner is admitted],
  [Holding cost], [the cost of keeping stock: storage, insurance and the capital tied up in it],
  [Idle time], [paid time in which no output is produced; treated as a factory overhead],
  [Incomplete records], [books in which only one aspect of each transaction has been recorded],
  [Incremental budgeting], [a budget built from last year's figures with an adjustment],
  [Job costing], [costing each separately identifiable order on its own cost card],
  [Job card], [the record of the material, labour and overhead charged to one job],
  [LIFO], [last in, first out: the newest units are issued first],
  [Manufacturing account], [the account that collects factory cost and produces the cost of production],
  [Manufacturing profit], [the excess of the transfer price of completed goods over their cost of production],
  [Margin], [gross profit as a percentage of sales],
  [Margin of safety], [the excess of budgeted sales over break-even sales, in units or as a percentage],
  [Marginal costing], [a method that charges units with variable cost only and writes fixed cost off against contribution],
  [Mark-up], [gross profit as a percentage of cost],
  [Master budget], [the consolidated set of functional budgets, summarised in the budgeted statements],
  [Normal loss], [the loss expected in a process, allowed for in the cost per good unit],
  [Opportunity cost], [the benefit of the next best alternative given up when a choice is made],
  [Over-absorption], [absorbed overhead greater than actual overhead; credited to profit and loss],
  [Overhead], [any cost that cannot be traced directly to a unit of product],
  [Overtime premium], [the part of an overtime payment above the basic rate],
  [Piece rate], [a wage computed as units produced multiplied by a rate per unit],
  [Prime cost], [direct materials consumed + direct labour + direct expenses],
  [Process costing], [costing a continuous stream of identical units through one or more processes],
  [Production budget], [sales units + closing stock − opening stock, in units],
  [Purchase requisition], [the document by which a department asks the buying office to obtain material],
)
]

#v(3pt)

== D.3 Q to Z

#[
  #set text(size: 8.2pt)
#table(
  columns: (1.15fr, 3.2fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Definition]),
  [Realisation account], [the account that records the assets, proceeds and expenses of dissolving a firm],
  [Reorder level], [maximum usage multiplied by maximum lead time],
  [Revaluation account], [the account that records the gains and losses when assets are revalued before a partnership change],
  [Revised budget], [a budget amended during the year for a change in circumstances],
  [Scrap value], [the amount recoverable from the sale of lost or waste material],
  [Service department], [a department that supports production without working on the product, such as stores or maintenance],
  [Standard cost], [a predetermined cost per unit, used as the benchmark for a variance],
  [Statement of affairs], [a list of assets and liabilities at a date, from which capital is derived],
  [Stock turnover], [cost of sales divided by average stock; the number of times stock is replaced in a period],
  [Stores ledger], [the costing office's record of quantities and values of stock],
  [Stores requisition], [the document that authorises the issue of material to a department or job],
  [Sunk cost], [a cost already incurred that no decision can change],
  [Supplementary vote], [the additional approval needed before an overspend may be regularised],
  [Time rate], [a wage computed as hours worked multiplied by a rate per hour],
  [Transfer price], [the price at which goods completed in one process or division are passed to the next],
  [Under-absorption], [absorbed overhead less than actual overhead; debited to profit and loss],
  [Value for money], [economy, efficiency and effectiveness in the spending of public funds],
  [Variance], [the difference between a budgeted or standard figure and the actual figure],
  [Virement], [the approved transfer of funds between sub-heads of a vote],
  [Vote], [the sum approved by the legislature for a stated purpose],
  [Vote account], [the statement comparing the approved estimate with the actual expenditure],
  [Weighted average], [total stock value divided by total units, recalculated at each receipt],
  [Work in progress], [goods begun but not finished at the end of a period],
  [Working capital], [current assets less current liabilities; the money tied up in day-to-day operations],
  [Zero-based budgeting], [a budget in which every cost is justified afresh from zero],
)
]

#v(4pt)

#shortcut-box("The one-word test for a definition option")[
  Read the option and ask which *single word* carries the meaning. In "contribution is sales
  less total cost" the fatal word is *total*; in "normal loss is valued at scrap value" the
  fatal word is *valued*. Most wrong options are a right definition with one word changed,
  and the changed word is the mark.
]

#concept-box("Six definitions the examiner returns to")[
  + *Prime cost*: direct materials consumed, direct labour and direct expenses.
  + *Production cost*: prime cost plus factory overhead, adjusted for work in progress.
  + *Contribution*: selling price less variable cost.
  + *Absorption*: budgeted overhead divided by budgeted activity.
  + *Normal loss*: the expected loss, whose scrap value reduces the cost of the good units.
  + *Statement of affairs*: assets less liabilities at a date, made outside the double entry.
]
