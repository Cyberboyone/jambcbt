#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sixty one-line prompts with the answer beside each: twenty definitions, twenty
    formulas and figures, and twenty facts about the way the accounts are organised.
    Cover the right-hand column with a sheet of paper and work down the list — ten
    seconds a line. Anything you cannot answer in ten seconds is a chapter to reread
    tonight.
  ]
]

#v(5pt)

== A.1 Twenty Definitions

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Prime cost], [direct materials consumed + direct labour + direct expenses],
  [Production cost], [prime cost + factory overhead + opening WIP − closing WIP],
  [Cost of goods sold], [cost of production + opening finished goods − closing finished goods],
  [Work in progress], [goods begun but not finished at the end of the period],
  [Manufacturing profit], [the excess of the transfer price of completed goods over their cost of production],
  [Factory overhead], [an indirect factory cost that cannot be traced to a unit],
  [FIFO], [the oldest units are issued first, at their own prices],
  [LIFO], [the newest units are issued first, at their own prices],
  [Weighted average], [total stock value ÷ total units, recalculated at every receipt],
  [Reorder level], [maximum usage × maximum lead time],
  [Economic order quantity], [the order size at which ordering cost equals holding cost],
  [Idle time], [paid time in which no output is produced; a factory overhead],
  [Absorption rate], [budgeted overhead ÷ budgeted activity],
  [Over-absorption], [absorbed overhead greater than actual overhead; a credit to profit and loss],
  [Contribution], [selling price less variable cost],
  [Break-even point], [the sales volume at which contribution equals fixed cost],
  [Margin of safety], [(budgeted sales − break-even sales) ÷ budgeted sales × 100],
  [Flexible budget], [a budget rebuilt at the actual level of activity],
  [Statement of affairs], [a list of assets and liabilities from which capital is derived],
  [Realisation account], [the account that collects the proceeds and costs of dissolving a firm],
)
]

#v(4pt)

== A.2 Twenty Formulas and Figure Rules

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Direct materials consumed], [opening stock + purchases + carriage inwards − closing stock],
  [Factory overhead total], [all indirect factory costs: power, rent, supervision, depreciation of plant],
  [Cost per unit in a process], [(total cost − scrap value of normal loss) ÷ expected output],
  [Abnormal loss], [(expected output − actual output) × cost per good unit],
  [Abnormal gain], [(actual output − expected output) × cost per good unit],
  [Equivalent units], [units completed + closing WIP × % − opening WIP × %],
  [Cost per good unit in a batch], [total batch cost ÷ good units produced],
  [Contribution per unit], [selling price − variable cost per unit],
  [C/S ratio], [contribution ÷ sales],
  [Break-even units], [fixed cost ÷ contribution per unit],
  [Break-even sales value], [fixed cost ÷ C/S ratio],
  [Units for a target profit], [(fixed cost + target profit) ÷ contribution per unit],
  [Profit from the margin of safety], [margin of safety in units × contribution per unit],
  [Profit difference, marginal v absorption], [change in stock units × fixed overhead per unit],
  [Production budget], [sales units + closing stock − opening stock],
  [Materials purchases budget], [usage + closing stock − opening stock],
  [Closing cash balance], [opening balance + receipts − payments],
  [Profit from two capitals], [closing capital + drawings − capital introduced − opening capital],
  [Credit sales reconstruction], [cash received + discounts allowed + closing debtors − opening debtors],
  [Mark-up and margin], [mark-up = margin ÷ (1 − margin), and margin = mark-up ÷ (1 + mark-up)],
)
]

#v(4pt)

== A.3 Twenty Facts about the Organisation of the Accounts

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.0pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [The account that receives cost of production], [the trading account],
  [The treatment of carriage outwards], [a selling expense in the profit and loss account],
  [The treatment of opening work in progress], [added in the manufacturing account],
  [The treatment of closing finished goods], [deducted in the trading account],
  [A cost that is never in the manufacturing account], [administration or selling cost],
  [The ratio used to share a revaluation], [the old profit-sharing ratio],
  [The ratio used to write off goodwill on admission], [the new profit-sharing ratio],
  [A retiring partner's unpaid balance becomes], [a loan account],
  [The order of payment on dissolution], [realisation expenses, outside creditors, partners' loans, partners' capital],
  [The account that records the proceeds of dissolution], [the realisation account],
  [The first budget prepared], [the sales budget],
  [The budget that can stop a profitable firm], [the cash budget],
  [An item never found in a cash budget], [depreciation],
  [The basis used to compare actual with flexed budget], [the actual level of activity],
  [The document that authorises material to be issued], [the stores requisition],
  [The record that holds quantities only], [the bin card],
  [The basis for apportioning canteen cost], [number of employees],
  [The basis for apportioning machine maintenance], [machine hours],
  [The statement that compares approved and actual spending], [the vote account],
  [The fund that holds money for capital projects], [the development fund],
)
]

#v(4pt)

#v(6pt)

== A.4 Six Formats to Write From Memory

#text(size: 9pt)[The paper does not ask you to recite these; it asks you to *use* them, under a clock, on a page. Cover the right-hand column and write each format out in full on rough paper. A format you can write in ninety seconds is a format you can use in the hall.]

#v(3pt)

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.45fr, 2.75fr),
  inset: (x: 6pt, y: 5pt),
  align: (left + top, left + top),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Format],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The lines, in order]),
  [*The manufacturing account*], [opening raw materials; purchases; carriage inwards; less closing raw materials; direct labour; direct expenses; prime cost; factory overhead; opening WIP; less closing WIP; production cost],
  [*The process account*], [Dr: materials, labour, overhead, opening WIP. Cr: normal loss at scrap, abnormal loss at cost, output transferred, closing WIP],
  [*The break-even statement*], [sales; less variable cost; contribution; less fixed cost; net profit; then break-even units and the margin of safety],
  [*The cash budget*], [opening balance; add receipts (cash sales, debtors, loans, asset sales); less payments (creditors, wages, overheads, tax, capital spending); closing balance],
  [*The statement of affairs*], [assets at valuation; total; less liabilities; capital as the difference],
  [*The realisation account*], [Dr: assets at book value, expenses of realisation. Cr: proceeds, provisions released; balance to capital in the profit-sharing ratio],
)
]

#v(4pt)

#concept-box("Ten seconds a line, out loud")[
  + *Read the prompt, say the answer, then look.* Looking first turns the exercise into reading, and reading is not recall.
  + *Mark the misses in the margin, not in your head.* The three or four lines you miss are tonight's revision, and the margin is the only record of them.
  + *Run the list twice on the morning of the paper.* Not to learn anything new — to arrive with the vocabulary already loaded.
]
