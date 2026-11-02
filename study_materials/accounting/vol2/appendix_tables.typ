#import "template.typ": *

#current-chapter.update("Appendix E: The Classification and Formula Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Classification and Formula Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Classification and Formula Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight tables that answer the questions the paper asks by classification rather than by
    calculation: which element, which account, which method, which budget, which fund.
    Learn the columns, and half the paper becomes a lookup.
  ]
]

#v(5pt)

== E.1 Which Element of Cost?

#table(
  columns: (1.45fr, 0.85fr, 2.0fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Cost],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Why],
  ),
  [Timber for a table], [Direct material], [it becomes the product and can be traced to it],
  [Machine oil], [Factory overhead], [indirect material, consumed by the factory in general],
  [Machine operator's wage], [Direct labour], [booked to the job on a job card],
  [Factory supervisor's salary], [Factory overhead], [indirect labour: supports production but makes no unit],
  [Royalty per unit made], [Direct expense], [traceable to the product and not material or labour],
  [Hire of a machine for one order], [Direct expense], [caused by, and traceable to, that order],
  [Factory rent], [Factory overhead], [incurred for the factory, shared across its output],
  [Office salaries], [Period cost], [administration, outside the factory],
  [Advertising], [Period cost], [selling cost],
  [Carriage outwards], [Period cost], [distribution to the customer],
  [Depreciation of plant], [Factory overhead], [the plant serves the factory],
  [Depreciation of the delivery van], [Period cost], [a selling and distribution cost],
  [Idle time], [Factory overhead], [paid time that produced nothing],
  [Overtime premium on a rush order], [Direct labour], [the order caused it],
)

#v(3pt)

== E.2 Which Account Does It Go In?

#table(
  columns: (1.75fr, 1.35fr, 1.2fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Manufacturer's account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Sole trader's account],
  ),
  [Opening raw materials], [Manufacturing], [—],
  [Purchases of material], [Manufacturing], [Trading],
  [Carriage inwards], [Manufacturing], [Trading],
  [Opening finished goods], [Trading], [Trading],
  [Factory rent], [Manufacturing], [—],
  [Office rent], [Profit and loss], [Profit and loss],
  [Salesmen's salaries], [Profit and loss], [Profit and loss],
  [Discount allowed], [Profit and loss], [Profit and loss],
  [Sale of scrap], [Manufacturing, credited], [—],
  [Goods taken by the owner], [Drawings], [Drawings],
)

#v(3pt)

== E.3 The Three Stock Methods

#table(
  columns: (0.9fr, 1.55fr, 1.05fr, 0.9fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Closing stock, prices rising],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Profit],
  ),
  [FIFO], [oldest issued first], [highest], [highest],
  [LIFO], [newest issued first], [lowest], [lowest],
  [Weighted average], [total value ÷ total units at each receipt], [between the two], [between the two],
)

#v(3pt)

== E.4 What a Variance Usually Means

#table(
  columns: (1.5fr, 1.35fr, 1.45fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Variance],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Favourable means],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Usual cause of the adverse],
  ),
  [Sales], [sold more, or at a better price], [weak demand, or a price cut to win volume],
  [Materials price], [bought below standard], [a dearer supplier, or buying in small quantities],
  [Materials usage], [used less than standard], [waste, poor quality material, untrained hands],
  [Labour rate], [paid below standard], [overtime, a higher grade of labour, a pay award],
  [Labour efficiency], [fewer hours than standard], [idle time, machine breakdown, poor supervision],
  [Overhead expenditure], [spent less than budgeted], [price rises, or extra activity within the cost centre],
)

#v(3pt)

== E.5 The Six Ratios You May Be Asked to Compute

#table(
  columns: (1.35fr, 1.5fr, 1.45fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Ratio],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it tests],
  ),
  [Gross profit margin], [gross profit ÷ sales × 100], [the mark-up actually earned on sales],
  [Net profit margin], [net profit ÷ sales × 100], [how much of each naira of sales is profit],
  [Return on capital employed], [net profit ÷ capital employed × 100], [the return the owners are getting],
  [Current ratio], [current assets ÷ current liabilities], [the ability to pay short-term debts],
  [Stock turnover], [cost of sales ÷ average stock], [how quickly stock is sold and replaced],
  [Debtors' collection period], [debtors ÷ credit sales × 365], [how long customers take to pay],
)

#v(3pt)

== E.6 Which Fund Pays for What

#table(
  columns: (1.35fr, 1.65fr, 1.3fr),
  inset: (x: 4.8pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Fund],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Holds],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[May be spent on],
  ),
  [Consolidated revenue], [general revenue], [recurrent expenditure approved in the vote],
  [Development], [money for capital works], [capital projects only],
  [Contingency], [a reserve for emergencies], [unforeseen expenditure, with approval],
  [Trust], [money held for a beneficiary], [the purpose of the trust, and nothing else],
  [Special], [earmarked levies], [the purpose for which the levy was imposed],
)

#v(3pt)

== E.7 The Six Controls a Computerised System Needs

#table(
  columns: (1.25fr, 3.1fr),
  inset: (x: 4.8pt, y: 3.7pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Control],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it prevents],
  ),
  [Access rights], [a clerk posting to an account outside his duties],
  [Validation rules], [an entry with no account, an impossible date or a non-numeric amount],
  [Audit trail], [an entry that cannot be traced to the person and time that made it],
  [Reconciliation], [a duplicate payment, a missing lodgement, a wrong bank balance],
  [Back-up and restore test], [the loss of the records when the machine fails],
  [Report review], [a trial balance printed but never read],
)

#v(4pt)

== E.8 One-Minute Classification Drill

#text(size: 9pt)[Cover the right-hand column, read each item, and say where it goes — a classification, an account, a side or a rule — aloud. Ten items, one minute. The table is the key.]

#v(3pt)

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.4fr, 1.9fr),
  inset: (x: 6pt, y: 4.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Where it goes]),
  [1. Glue used in a furniture factory], [Factory overhead],
  [2. Royalty paid per unit produced], [Direct expense],
  [3. Carriage outwards], [Selling expense],
  [4. Normal loss with scrap value, in the process account], [Credit],
  [5. A bank overdraft], [Current liability],
  [6. Closing work in progress], [Deducted in the manufacturing account],
  [7. Contribution], [Sales less variable cost],
  [8. An unspent vote], [Not a profit],
  [9. Depreciation in a cash budget], [Excluded],
  [10. Drawings in the capital formula], [Added back],
)
]

#v(3pt)

#text(size: 8.8pt)[The table is the key. If any line surprised you, that line names the section to reread tonight — every one of the ten has been asked in this form before.]
