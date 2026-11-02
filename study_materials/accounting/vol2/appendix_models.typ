#import "template.typ": *

#current-chapter.update("Appendix F: Eight Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Eight Model Answers, Beside the Half-Answer]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Eight Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight full computations, each set beside the half-answer a candidate actually writes
    under a clock, and the one line that turns one into the other. The arithmetic is
    complete, so the appendix doubles as a worked revision of the eight chapters.
  ]
]

#v(5pt)

== F.1 The Manufacturing Ladder

#text(size: 9pt)[A manufacturer gives: opening raw materials ₦28,000; purchases ₦310,000; carriage inwards ₦12,000; closing raw materials ₦35,000; direct labour ₦180,000; royalty ₦15,000; factory rent ₦48,000; power ₦22,000; plant depreciation ₦30,000; supervisor's salary ₦45,000; opening work in progress ₦18,000; closing work in progress ₦24,000; opening finished goods ₦40,000; closing finished goods ₦52,000.]

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.45fr, 0.85fr, 0.85fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Line],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[₦ ],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[₦ ],
  ),
  [Opening raw materials], [28,000], [],
  [Purchases], [310,000], [],
  [Carriage inwards], [12,000], [],
  [Less closing raw materials], [(35,000)], [],
  [*Direct materials consumed*], [], [*315,000*],
  [Direct labour], [180,000], [],
  [Direct expenses: royalty], [15,000], [],
  [*Prime cost*], [], [*510,000*],
  [Factory overhead: rent 48,000 + power 22,000 + depreciation 30,000 + supervisor 45,000], [145,000], [],
  [Add opening work in progress], [18,000], [],
  [Less closing work in progress], [(24,000)], [],
  [*Production cost*], [], [*649,000*],
  [Add opening finished goods], [40,000], [],
  [Less closing finished goods], [(52,000)], [],
  [*Cost of goods sold*], [], [*637,000*],
)
]

#v(2pt)

#trap-box("The half-answer and the missing line")[
  The half-answer stops at *prime cost* and calls it the cost of production; it is
  ₦139,000 too low. The missing line is the factory overhead and the work-in-progress
  adjustment, and it is worth more than half the marks in a full question. Draw all four
  rungs before filling any of them.
]

== F.2 FIFO Against LIFO

#text(size: 9pt)[Stock opened with 200 units at ₦15. Receipts were 300 units at ₦18 and 200 units at ₦21. Issues were 350 units and 250 units. Compute the cost of issues and the closing stock under each method.]

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.0fr, 1.55fr, 1.05fr, 1.0fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The two issues],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Cost of issues ₦],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Closing stock ₦],
  ),
  [FIFO], [200 at 15 + 150 at 18; then 150 at 18 + 100 at 21], [5,700 + 4,800 = 10,500], [100 at 21 = 2,100],
  [LIFO], [200 at 21 + 150 at 18; then 150 at 18 + 100 at 15], [6,900 + 4,200 = 11,100], [100 at 15 = 1,500],
)
]

#v(2pt)

#text(size: 9pt)[The total cost of everything received is 3,000 + 5,400 + 4,200 = ₦12,600, and each pair adds to it: 10,500 + 2,100 and 11,100 + 1,500. That check is the whole point of the table — a method cannot create or destroy cost, it can only decide which units carry which naira.]

== F.3 A Process With an Abnormal Loss

#text(size: 9pt)[A process receives 2,000 units costing ₦17,600. Normal loss is 10 per cent, sold as scrap at ₦4 a unit. Actual output is 1,750 units.]

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.45fr, 0.82fr, 0.82fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Process account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Units],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[₦],
  ),
  [Input], [2,000], [17,600],
  [Normal loss, 200 units at ₦4 scrap], [(200)], [(800)],
  [*Net cost ÷ expected output 1,800*], [1,800], [*16,800*],
  [Cost per unit], [], [*₦9.333*],
  [Output, 1,750 units at ₦9.333], [(1,750)], [(16,333)],
  [*Abnormal loss, 50 units at ₦9.333*], [(50)], [*(467)*],
)
]

#v(2pt)

#text(size: 9pt)[The half-answer divides ₦17,600 by 2,000 units and reports a cost of ₦8.80. It has ignored the normal loss and the scrap. The full answer takes the scrap off the cost, divides by the *expected* good output, and then values the shortfall as an abnormal loss written off to the profit and loss account — ₦467, not ₦440.]

== F.4 Break-Even and a Target Profit

#text(size: 9pt)[A firm sells a product at ₦90 with a variable cost of ₦54 and fixed costs of ₦180,000. It budgets to sell 8,000 units. Compute the break-even point, the margin of safety and the sales needed to earn ₦90,000 before tax.]

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.55fr, 1.0fr, 1.0fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Units],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[₦],
  ),
  [Contribution per unit (90 − 54)], [36], [],
  [C/S ratio (36 ÷ 90)], [40%], [],
  [Break-even units (180,000 ÷ 36)], [5,000], [450,000],
  [Budgeted sales], [8,000], [720,000],
  [Margin of safety (8,000 − 5,000)], [3,000], [270,000],
  [Margin of safety as a percentage (3,000 ÷ 8,000)], [37.5%], [],
  [Profit at budget (3,000 × 36)], [], [108,000],
  [Units for ₦90,000 profit ((180,000 + 90,000) ÷ 36)], [7,500], [675,000],
)
]

#v(2pt)

#trap-box("The half-answer divides by the selling price")[
  ₦180,000 ÷ ₦90 = 2,000 units, and it is wrong by a factor of two and a half, because the
  selling price has to pay the variable cost before it pays anything else. Break-even is
  fixed cost divided by *contribution*, never by price.
]

== F.5 A Three-Month Cash Budget

#text(size: 9pt)[Opening cash on 1 April is ₦24,000. Cash sales are 30 per cent of each month's sales, and debtors pay the remaining 70 per cent in the following month. Sales: March ₦90,000, April ₦100,000, May ₦120,000, June ₦110,000. Purchases are 60 per cent of the month's sales and are paid one month after purchase. Wages are ₦18,000 a month and rent of ₦15,000 is paid in April. A machine costing ₦40,000 is bought in May. Depreciation is ₦5,000 a month.]

#[
  #set text(size: 8.2pt)
#table(
  columns: (2.4fr, 0.9fr, 0.9fr, 0.9fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, right + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[April ₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[May ₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[June ₦],
  ),
  [Opening balance], [24,000], [30,000], [18,000],
  [Cash sales], [30,000], [36,000], [33,000],
  [Debtors from the previous month], [63,000], [70,000], [84,000],
  [Total receipts], [93,000], [106,000], [117,000],
  [Creditors, one month lag], [(54,000)], [(60,000)], [(72,000)],
  [Wages], [(18,000)], [(18,000)], [(18,000)],
  [Rent], [(15,000)], [—], [—],
  [Machine], [—], [(40,000)], [—],
  [Total payments], [(87,000)], [(118,000)], [(90,000)],
  [*Closing balance*], [*30,000*], [*18,000*], [*45,000*],
)
]

#v(2pt)

#text(size: 9pt)[Two checks make the table safe. The April debtors figure is 70 per cent of March sales, and the April creditors figure is 60 per cent of March purchases. And the closing balance of each month is the opening balance of the next, which is why one arithmetic slip shows up twice. Depreciation appears nowhere: it is a cost, not a payment.]

== F.6 Incomplete Records, Two Ways

#text(size: 9pt)[A trader's assets and liabilities were: 1 January — stock ₦60,000, debtors ₦80,000, bank ₦35,000, creditors ₦45,000. 31 December — stock ₦75,000, debtors ₦95,000, bank ₦52,000, creditors ₦58,000, and fixtures valued at ₦120,000 which he bought during the year for ₦130,000. Drawings were ₦70,000 and he introduced ₦50,000.]

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.35fr, 1.0fr, 1.0fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Statement of affairs],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[1 Jan ₦],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[31 Dec ₦],
  ),
  [Stock], [60,000], [75,000],
  [Debtors], [80,000], [95,000],
  [Bank], [35,000], [52,000],
  [Fixtures], [—], [120,000],
  [*Total assets*], [*175,000*], [*342,000*],
  [Less creditors], [(45,000)], [(58,000)],
  [*Capital*], [*130,000*], [*284,000*],
)
]

#v(2pt)

#text(size: 9pt)[Profit = 284,000 + 70,000 − 50,000 − 130,000 = *₦174,000*. The half-answer subtracts the two capitals and reports ₦154,000: it has treated the drawings as an expense and the new capital as profit, and the two errors happen to be in opposite directions, so neither cancels the other. Write the formula out before substituting, every time.]

== F.7 A Dissolution

#text(size: 9pt)[A and B share profits 3:2. Their capitals are ₦200,000 and ₦150,000 and B has lent the firm ₦40,000. Assets realised ₦430,000; realisation expenses ₦15,000; outside creditors ₦110,000.]

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.55fr, 0.95fr, 0.95fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Realisation account],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[₦],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[₦],
  ),
  [Assets transferred at book value], [350,000], [],
  [Expenses of realisation], [15,000], [],
  [Proceeds of assets], [], [430,000],
  [*Profit on realisation*], [], [*65,000*],
  [*Totals*], [*430,000*], [*430,000*],
)
]

#v(2pt)

#text(size: 9pt)[The ₦65,000 profit is shared 3:2 — A ₦39,000, B ₦26,000 — so A's capital becomes ₦239,000 and B's ₦176,000, a total of ₦415,000. Cash available is 430,000 − 15,000 − 110,000 − 40,000 = ₦265,000. The firm is short of its capitals by ₦150,000, and that shortage is the partners' loss on a business whose assets were worth less than the books said. The half-answer pays the capitals first and leaves the creditors unpaid; the order of payment is not a formality, it is the answer.]

== F.8 A Vote Account

#text(size: 9pt)[A ministry's approved estimates were: personal emoluments ₦40m, overheads ₦18m, capital projects ₦60m. Actual expenditure was ₦37m, ₦20m and ₦52m. Prepare the vote account and state what must be done.]

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.1fr, 1.0fr, 1.0fr, 1.05fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Vote 07],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Approved ₦m],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Actual ₦m],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Variance ₦m],
  ),
  [Personal emoluments], [40], [37], [3 unspent],
  [Overheads], [18], [20], [(2) overspent],
  [Capital projects], [60], [52], [8 unspent],
  [*Total*], [*118*], [*109*], [*9 unspent*],
)
]

#v(2pt)

#text(size: 9pt)[The vote as a whole is ₦9m under, but the overhead sub-head is ₦2m over, and that overspend is unauthorised until it is regularised by virement from a saving elsewhere on the vote or by a supplementary vote. A candidate who reports only the ₦9m has answered the arithmetic and missed the accounting.]
