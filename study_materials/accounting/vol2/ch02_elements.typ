#import "template.typ": *

#current-chapter.update("Chapter 2: Materials, Labour and Overheads")

#pagebreak()

#chapter-opener(
  2,
  "Materials, Labour and Overheads",
  subtitle: "The Three Elements of Cost, and the Records That Keep Each One Honest",
  syllabus-ref: "Sec. 13 • Cost Accounting: Materials, Labour and Overheads",
  utme-weight: "6 Qs a year",
  running: "Materials, Labour and Overheads",
)

#focus-radar(
  objectives: (
    "Name the documents that control material from requisition to issue.",
    "Value an issue of stock under FIFO, LIFO and the weighted average.",
    "Compute the reorder level, the minimum level and the economic order quantity.",
    "Distinguish time rate, piece rate and a premium bonus scheme.",
    "Treat idle time, overtime and payroll deductions correctly.",
    "Apportion and absorb overheads, and explain over- and under-absorption.",
  ),
  hotspots: (
    "*FIFO takes the oldest first.* The closing stock is therefore valued at the *latest* prices, and in a period of rising prices FIFO gives the highest closing stock and the highest profit of the three methods.",
    "*Weighted average is a price, not a total.* Divide the total value of stock by the total units after each receipt, and issue everything at that price until the next receipt.",
    "*Reorder level is about lead time.* Maximum usage × maximum lead time, so that stock cannot run out even in the worst week.",
    "*Overhead absorption is a rate, and it is always applied to actual activity.* Budgeted overhead ÷ budgeted basis gives the rate; the rate × the actual hours gives the absorbed overhead; actual overhead less absorbed overhead is the under- or over-absorption.",
  ),
  trap-summary: "Four slips. (1) Pricing an issue at the *latest* price under FIFO. (2) Treating overtime *premium* as direct labour when it is caused by a general shortage of hands — it is usually overhead. (3) Dividing budgeted overhead by *actual* hours to get the rate. (4) Calling over-absorption a loss: if the absorbed figure exceeds the actual, the firm has charged its products too much, and the difference is a credit to the profit and loss account.",
)

// ============================================================================
== 2.1 The Three Elements and Their Records

Every cost in a factory is material, labour or overhead, and each element has its own paper trail. The paper asks you to name the document for a stage of the trail, so learn the sequence rather than the list.

#table(
  columns: (0.9fr, 1.5fr, 1.95fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Element],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Document or record],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it does],
  ),
  [Material], [purchase requisition], [the storekeeper tells the buying office that a stock is needed],
  [Material], [purchase order], [the buying office orders from a supplier at an agreed price],
  [Material], [goods received note], [the store records what actually arrived, and checks it against the order],
  [Material], [stores requisition], [a department asks the store for material, and the store issues it against the job],
  [Material], [bin card], [the store's own record of quantity received, issued and in hand — quantity only, no value],
  [Material], [stores ledger], [the costing office's record of quantity *and* value, priced on FIFO, LIFO or average],
  [Labour], [clock card], [the time an employee was on the premises, used to compute the basic wage],
  [Labour], [time book], [the time spent on each job, used to charge labour to the job],
  [Labour], [job card], [the record of the work done on one job, with the time and material charged to it],
  [Labour], [piece-work ticket], [the number of units completed by a worker paid by results],
  [Overhead], [overhead analysis sheet], [the schedule that apportions each overhead to a department or cost centre],
)

#v(2pt)

#diagram-fig("diagrams/ch02_elements.svg",
  "The three elements of cost and the documents that support each one, with the overhead absorption rate that turns a department's overhead into a cost per hour.", width: 97%)

// ============================================================================
== 2.2 Stock Valuation: FIFO, LIFO and the Weighted Average

A store receives material at different prices and issues it to production without marking which delivery it came from. The costing office must choose a price for the issue, and the choice changes the cost of the product and the value of the closing stock.

#table(
  columns: (0.85fr, 1.85fr, 1.65fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The rule],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Effect when prices are rising],
  ),
  [*FIFO*], [first in, first out: the oldest units are issued first, at their own prices], [issues are cheap, closing stock is dear, profit is highest],
  [*LIFO*], [last in, first out: the newest units are issued first], [issues are dear, closing stock is cheap, profit is lowest],
  [*Weighted average*], [a new average price after every receipt: total value ÷ total units], [lies between the two, and smooths a volatile price],
  [*Specific price*], [each unit is identified and issued at what it cost], [used for high-value, identifiable items — vehicles, jewellery],
)

#v(4pt)

*Worked schedule.* A store had 100 units at ₦20. It received 200 units at ₦24, then issued 250 units. Under each method:

#table(
  columns: (1.0fr, 1.3fr, 1.1fr, 1.3fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Issue priced as],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Cost of issue ₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Closing stock ₦],
  ),
  [FIFO], [100 at ₦20 + 150 at ₦24], [5,600], [50 at ₦24 = 1,200],
  [LIFO], [200 at ₦24 + 50 at ₦20], [5,800], [50 at ₦20 = 1,000],
  [Average], [300 units cost 6,800, so ₦22.67 each], [5,667], [50 at ₦22.67 = 1,133],
)

#v(2pt)

#text(size: 9.5pt)[Check the totals: the cost of the issue plus the closing stock must equal the cost of everything received, which is 2,000 + 4,800 = ₦6,800. Under FIFO, 5,600 + 1,200 = 6,800. Under LIFO, 5,800 + 1,000 = 6,800. Under the average, 5,667 + 1,133 = 6,800, and the ₦1 rounding difference is why the paper never asks for an exact average to the kobo.]

// ============================================================================
== 2.3 Stock Control: the Three Levels and the Order Quantity

A store that never runs out is a store that has tied up too much money. Stock control is the arithmetic of holding enough and no more.

#formula-box("The four stock-control figures")[
  #text(size: 9.2pt)[
    *Reorder level* = maximum usage × maximum lead time \
    *Minimum level* = reorder level − (average usage × average lead time) \
    *Maximum level* = reorder level + economic order quantity − (minimum usage × minimum lead time) \
    *EOQ* = √(2 × annual demand × cost per order ÷ cost of holding one unit for a year)
  ]
]

#v(2pt)

#text(size: 9.5pt)[The reorder level is a *trigger*, not a target: when the stock falls to it, an order is placed, and the stock continues to fall during the lead time. That is why the maximum level adds a whole order quantity and then subtracts the least that could be used before the order arrives. The EOQ is the order size at which the cost of ordering and the cost of holding are equal — the point where a bigger order saves paperwork but costs more in warehouse space and capital.]

#shortcut-box("Stock levels in one line each")[
  + Reorder level: the worst case — *highest* usage for the *longest* lead time.
  + Minimum level: the buffer that remains after an average lead time — reorder level less *average* usage over *average* lead time.
  + Maximum level: reorder level plus a full order, less the *least* that could be used while waiting.
  + EOQ: the square root of twice the annual demand times the order cost, divided by the holding cost per unit.
]

// ============================================================================
== 2.4 Labour: Paying for Time and Paying for Output

Labour is the element that can be measured two ways — by the clock and by the piece — and the paper expects you to know which incentive belongs to which measurement.

#table(
  columns: (1.2fr, 1.55fr, 1.6fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Scheme],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[How the wage is computed],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Where it is used, and its weakness],
  ),
  [*Time rate*], [hours worked × rate per hour], [accurate work; but it rewards the slow worker equally],
  [*Piece rate*], [units produced × rate per unit], [repetitive work; but it tempts the worker to sacrifice quality],
  [*Guaranteed day rate*], [a minimum daily wage, plus a piece rate above a stated output], [protects the worker in a bad week, which is why unions prefer it],
  [*Premium bonus*], [time saved × rate × a stated fraction, added to the basic wage], [rewards speed and shares the saving between worker and firm],
  [*Overtime*], [basic rate × 1.5 for normal overtime; the *premium* is the extra 0.5], [the premium is an overhead unless the customer asked for the overtime],
)

#v(3pt)

#text(size: 9.5pt)[Two treatments decide most labour questions. *Idle time* is paid for but not worked — the hands were there and the machine was broken — so it cannot be charged to a product and is treated as an overhead. *Overtime premium* is the part of the overtime rate above the basic rate. If the overtime was worked because a particular job was urgent, the premium is a direct cost of that job; if it was worked because the factory is generally short-handed, it is an overhead. The basic rate for the overtime hours is always direct labour.]

#table(
  columns: (1.35fr, 2.95fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Where it goes],
  ),
  [Basic wage of a machine operator], [direct labour of the job he worked on],
  [Idle time of the same operator], [factory overhead — it produced nothing],
  [Overtime basic rate for an urgent customer order], [direct labour of that order],
  [Overtime premium for the same order], [direct labour of that order, because the order caused it],
  [Overtime premium because the factory is short of hands], [factory overhead, spread over all output],
  [Employer's pension contribution], [usually an overhead, and never a deduction from the worker's pay],
  [PAYE and union dues deducted from gross pay], [a liability to be paid over, not a cost of the employer],
)

// ============================================================================
== 2.5 Overheads: Allocation, Apportionment and Absorption

An overhead is any cost that cannot be traced to a product. Three words carry the whole topic, and they happen in order.

#table(
  columns: (1.0fr, 3.3fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Word],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it means, with the usual basis],
  ),
  [*Allocation*], [a whole cost belongs to one department and is charged to it in full — the rent of a building used only by the machine shop],
  [*Apportionment*], [a cost is shared between departments on a fair basis — rent by floor area, power by machine hours, canteen by number of employees, supervision by wages],
  [*Reapportionment*], [the cost of a *service* department (stores, maintenance, canteen) is spread over the *production* departments that it serves],
  [*Absorption*], [each production department's total overhead is divided by a basis — labour hours, machine hours or direct wages — to give a rate per hour, which is charged to every job],
)

#v(3pt)

#formula-box("Absorption, and the balance it leaves")[
  #text(size: 9.2pt)[
    *Overhead absorption rate* = budgeted overhead of the department ÷ budgeted activity (hours or wages) \
    *Absorbed overhead* = the rate × the *actual* activity \
    *Over-absorption* (a credit to profit and loss) arises when absorbed > actual \
    *Under-absorption* (a debit to profit and loss) arises when absorbed < actual
  ]
]

#v(2pt)

#trap-box("The rate is budgeted; the activity is actual")[
  The commonest error in the whole topic is to divide the budgeted overhead by the *actual*
  hours. The rate is fixed at the start of the year, from the budget, so that a job can be
  priced before it is made. At the year end the actual overhead is compared with what the
  rate absorbed, and the difference is written off. If a question gives both budgeted and
  actual hours, the budgeted figure is used for the *rate* and the actual figure for the
  *absorption*.
]

// ============================================================================
== 2.6 Worked Examples

#worked-example(
  1,
  "FIFO against the average",
  tier: "FOUNDATION",
  [
    A store had 100 units valued at ₦20 each. It then received 200 units at ₦24 each and issued 250 units. Under FIFO, the cost of the issue is

    A. ₦5,000 \\
    B. ₦5,600 \\
    C. ₦5,800 \\
    D. ₦6,000
  ],
  [
    *Step 1 — how many units at each price.* FIFO takes the 100 old units first, then 150 of the new.

    *Step 2 — value.* (100 × 20) + (150 × 24) = 2,000 + 3,600 = *₦5,600*.

    *Step 3 — eliminate.* A values all 250 at ₦20; C is the LIFO answer (200 × 24 + 50 × 20); D values all 250 at ₦24.

    *Answer: B.*
  ],
)

#worked-example(
  2,
  "Stock levels",
  tier: "UTME STANDARD",
  [
    Maximum usage of a material is 400 units a week and the maximum lead time is 3 weeks. Average usage is 300 units a week over an average lead time of 2 weeks. The reorder level and the minimum stock level are

    A. ₦1,200 units and 600 units \\
    B. 1,200 units and 800 units \\
    C. 900 units and 300 units \\
    D. 1,200 units and 700 units
  ],
  [
    *Step 1 — reorder level.* Maximum usage × maximum lead time = 400 × 3 = *1,200 units*.

    *Step 2 — minimum level.* Reorder level − (average usage × average lead time) = 1,200 − (300 × 2) = 1,200 − 600 = *600 units*.

    *Step 3 — eliminate.* B keeps the 800 by using maximum usage with the average lead time; C uses average usage with the maximum lead time for the reorder level; D mixes 400 × 2 for the average usage figure.

    *Answer: A.*
  ],
)

#worked-example(
  3,
  "Overtime and idle time",
  tier: "UTME STANDARD",
  [
    A worker is paid ₦500 an hour for a 40-hour week. In one week he worked 46 hours, of which 4 hours were idle because of a machine breakdown; the 6 hours of overtime were worked because the factory was generally busy. His gross wage and the amount charged as direct labour are

    A. ₦24,500 and ₦24,500 \\
    B. ₦24,500 and ₦22,500 \\
    C. ₦24,500 and ₦21,000 \\
    D. ₦23,000 and ₦21,000
  ],
  [
    *Step 1 — gross wage.* The basic week is 40 hours at ₦500 = ₦20,000. The six overtime hours are paid at time and a half: 6 × 750 = ₦4,500. Gross pay = 20,000 + 4,500 = *₦24,500*, and the four idle hours are paid because they are part of the paid week.

    *Step 2 — how many hours produced anything.* 46 paid hours less 4 idle hours = 42 productive hours.

    *Step 3 — direct labour.* 42 × 500 = *₦21,000*. The overtime premium of 6 × 250 = ₦1,500 is an overhead, because the overtime was caused by general pressure rather than by one customer's order; the idle time of 4 × 500 = ₦2,000 is also an overhead.

    *Step 4 — check with the total.* Direct labour 21,000 + overtime premium 1,500 + idle time 2,000 = ₦24,500, which is the gross wage. That reconciliation is the proof that every naira of the wage has been classified once.

    *Step 5 — eliminate.* A charges every hour as direct and ignores both idle time and the premium; B treats the premium as direct labour; D pays the overtime at the basic rate instead of time and a half.

    *Answer: C.*
  ],
)

#worked-example(
  4,
  "Absorption and the year-end balance",
  tier: "JAMB CHALLENGE",
  [
    A department's budgeted overhead is ₦900,000 for 30,000 budgeted machine hours. During the year the actual overhead was ₦940,000 and 32,000 machine hours were worked. The overhead absorbed and the under- or over-absorption are

    A. ₦960,000 absorbed and ₦20,000 over-absorbed \\
    B. ₦960,000 absorbed and ₦20,000 under-absorbed \\
    C. ₦1,003,000 absorbed and ₦63,000 over-absorbed \\
    D. ₦900,000 absorbed and ₦40,000 under-absorbed
  ],
  [
    *Step 1 — the rate.* Budgeted overhead ÷ budgeted hours = 900,000 ÷ 30,000 = *₦30 per machine hour*. The rate is fixed from the budget.

    *Step 2 — absorbed.* Rate × actual hours = 30 × 32,000 = *₦960,000*.

    *Step 3 — compare.* Actual 940,000 against absorbed 960,000: the department charged its products ₦20,000 more than it spent, so the difference is *over-absorbed* by ₦20,000 and is credited to the profit and loss account.

    *Step 4 — eliminate.* B has the right figures and the wrong direction; C divides actual overhead by budgeted hours; D uses the budget as the absorbed figure.

    *Answer: A.*
  ],
)

#v(2pt)

#trap-box("Over-absorbed is good news, and it is a credit")[
  Over-absorption means the firm charged its customers more overhead than it actually
  incurred, so profit is *understated* by that amount and the correction is a credit. Under-
  absorption means it charged less than it spent, so profit is *overstated* and the
  correction is a debit. Say the direction out loud in the examination: "absorbed greater
  than actual — over — credit".
]

// ============================================================================
== 2.7 Two-Minute Set

#mcq(1, [The document that records the quantity of material issued to a department is the], [bin card], [stores requisition], [goods received note], [purchase order])

#mcq(2, [When prices are rising, the method that gives the highest closing stock valuation is], [LIFO], [FIFO], [weighted average], [specific price])

#mcq(3, [Idle time is normally treated as], [direct labour], [factory overhead], [administration expense], [a deduction from gross pay])

#mcq(4, [Budgeted overhead ₦600,000 over 20,000 labour hours; actual overhead ₦610,000 and 19,000 hours worked. Overhead is], [₦570,000 absorbed, ₦40,000 under-absorbed], [₦600,000 absorbed, ₦10,000 under-absorbed], [₦570,000 absorbed, ₦40,000 over-absorbed], [₦610,000 absorbed, ₦10,000 over-absorbed])

#answer-key-grid(("B", "B", "B", "A"))

#answer-notes((
  ("B", [The requisition authorises and records the issue; the bin card is the store's own running record, kept in quantities only.]),
  ("B", [FIFO leaves the most recent, dearest units in stock, so the closing stock is the highest of the three methods.]),
  ("B", [Idle time is paid for but produces nothing, so it cannot be traced to a product and is carried as a factory overhead.]),
  ("A", [Rate = 600,000 ÷ 20,000 = ₦30. Absorbed = 30 × 19,000 = ₦570,000. Actual 610,000 exceeds absorbed by ₦40,000, so it is under-absorbed.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: stock methods, labour treatment, absorption and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Material is controlled by a paper trail that ends in two records: the bin card, which counts, and the stores ledger, which values. The value depends on the method — FIFO issues the oldest and leaves the dearest in stock, LIFO does the opposite, and the weighted average smooths both. Labour is paid by time or by output, and the two awkward figures are idle time, which is an overhead because it produces nothing, and the overtime premium, which is direct only when a particular job caused it. Overheads are allocated where they belong, apportioned where they are shared, reapportioned from service departments to production, and then absorbed at a rate fixed from the budget and applied to actual hours; the difference between what was absorbed and what was spent is the over- or under-absorption, written off at the year end.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Name the five material documents in the order they are used.],
  [Value an issue under FIFO and LIFO, and say which gives the higher profit when prices rise.],
  [Compute the reorder level, the minimum level and the EOQ from a set of figures.],
  [Explain why idle time is an overhead and when an overtime premium is not.],
  [Distinguish allocation, apportionment, reapportionment and absorption.],
  [Compute the absorption rate, the absorbed overhead and the under- or over-absorption.],
))

#concept-box("Carry this into Chapter 3")[
  Chapter 2 priced the *inputs*. Chapter 3 collects those inputs into the cost of a job, a
  batch or a process, and asks the question a factory manager actually asks: what did this
  order cost, and what did each unit of this continuous stream cost?
]

#include "drill_ch02.typ"
