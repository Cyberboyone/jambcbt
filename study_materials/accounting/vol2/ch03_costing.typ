#import "template.typ": *

#current-chapter.update("Chapter 3: Job, Batch and Process Costing")

#pagebreak()

#chapter-opener(
  3,
  "Job, Batch and Process Costing",
  subtitle: "Collecting the Cost of One Order, One Batch, or a Stream of Identical Units",
  syllabus-ref: "Sec. 13 • Costing Methods, Losses and Gains",
  utme-weight: "5 Qs a year",
  running: "Job, Batch and Process Costing",
)

#focus-radar(
  objectives: (
    "Choose job, batch or process costing for a given method of production.",
    "Prepare a job cost card and a batch cost per unit.",
    "Prepare a process account and compute the cost per unit.",
    "Treat normal loss, scrap value, abnormal loss and abnormal gain.",
    "Value closing work in progress with equivalent units.",
    "Read a process account for the figure the question actually asks for.",
  ),
  hotspots: (
    "*The method follows the product, not the firm.* A printer making one wedding card order uses job costing; the same printer making 5,000 identical leaflets uses batch costing; a cement works uses process costing.",
    "*Normal loss is free.* It is expected, it is unavoidable, and its scrap value reduces the cost of the good units. It never produces an abnormal loss or gain.",
    "*Abnormal loss is written off.* It is valued at the *cost per good unit*, and it goes to the profit and loss account, not to the next process.",
    "*Abnormal gain is a credit.* It arises when actual output exceeds expected output, it is valued at the same cost per unit, and it is deducted in the process account and credited to profit.",
  ),
  trap-summary: "Four slips. (1) Dividing the total cost by input units instead of expected good units, which understates the unit cost. (2) Deducting the scrap of *abnormal* loss from cost. (3) Treating an abnormal gain as a loss because it is called abnormal. (4) Forgetting that the cost per unit in a process is computed *after* the normal loss has been removed, because the loss carries no cost into the good units.",
)

// ============================================================================
== 3.1 Three Methods, Chosen by How the Product Is Made

Costing methods are not interchangeable fashions. The product decides the method, because the method is simply the answer to "what is the unit whose cost we want?"

#table(
  columns: (1.0fr, 1.5fr, 1.85fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The product],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The cost unit, and the industries],
  ),
  [*Job costing*], [one identifiable order, made to the customer's specification], [the job; printing, building, ship repair, furniture to order, audit work],
  [*Batch costing*], [a group of identical units made together], [the batch, divided by its good units; bakery, paint, footwear, Pharmaceuticals],
  [*Process costing*], [a continuous stream of identical units, through one or more processes], [the process, then the unit; oil refining, cement, sugar, flour, brewing],
  [*Contract costing*], [one large, long job on the customer's site], [the contract, with work certified and retention; construction, roads],
)

#v(2pt)

#diagram-fig("diagrams/ch03_costing.svg",
  "The three methods and the process account: input, the normal loss with its scrap value, and the output priced at the cost per good unit.", width: 97%)

// ============================================================================
== 3.2 The Job Cost Card and the Batch

A job card collects every cost that can be traced to the job — material issued, labour booked to it, and overhead absorbed at a predetermined rate. When the job is finished, the card *is* the cost of the job.

#table(
  columns: (1.6fr, 1.2fr, 1.55fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Job 101 — cost card],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Basis],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[₦],
  ),
  [Direct materials issued], [stores requisitions 41–46], [12,000],
  [Direct labour], [job cards, 80 hours at ₦100], [8,000],
  [Direct expenses], [hire of a special machine], [1,000],
  [*Prime cost*], [], [*21,000*],
  [Production overhead], [25% of direct labour], [2,000],
  [*Total cost of the job*], [], [*23,000*],
  [Profit mark-up], [10% of total cost], [2,300],
  [*Price quoted to the customer*], [], [*25,300*],
)

#v(2pt)

#text(size: 9.5pt)[A *batch* is costed exactly like a job, and then divided. If a batch of 600 units costs ₦55,000 and 50 units are rejected in inspection, the cost per *good* unit is 55,000 ÷ 550 = ₦100, not 55,000 ÷ 600 = ₦91.67. The rejected units carry their share of the cost, and that is why the good units cost more than the arithmetic average. This is the same principle as normal loss in a process: the cost of the whole batch is borne by the units that can be sold.]

#concept-box("Absorption belongs to the cost card")[
  The overhead on a job card is an *absorbed* figure — a rate fixed in advance, applied to
  the actual labour or machine hours of the job. It is not the actual overhead, which
  nobody knows until the year ends. That is why a job can be priced on the day it is
  finished, and why the firm later has an under- or over-absorption to write off.
]

// ============================================================================
== 3.3 The Process Account

In process costing the product flows through one or more processes, and each process is a separate account. The debit side collects the cost put in; the credit side records the output transferred out and the losses.

#table(
  columns: (0.95fr, 1.7fr, 1.7fr),
  inset: (x: 4.6pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Side],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it holds],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The figure to watch],
  ),
  [*Debit*], [opening work in progress, material, labour, overhead, and any transfer from the previous process], [the total cost of the process],
  [*Credit*], [normal loss at scrap value, abnormal loss, the output transferred to the next process or to finished goods, closing work in progress], [the units must balance, and the values must balance],
)

#v(3pt)

#formula-box("The cost per unit in a process")[
  #text(size: 9.4pt)[
    *Expected output* = input units − normal loss units \
    *Cost per unit* = (total process cost − scrap value of normal loss) ÷ expected output \
    *Value of output* = good units produced × cost per unit \
    *Abnormal loss* = (expected output − actual output) × cost per unit \
    *Abnormal gain* = (actual output − expected output) × cost per unit
  ]
]

#v(2pt)

#text(size: 9.5pt)[The logic of the formula is worth one sentence, because it explains every variant: *the cost of the process is carried by the units that survive it*. Normal loss is expected, so its scrap value is taken off the cost before the division; the remaining cost is spread over the units that can be sold. The scrap value does not reduce the number of good units — the loss does — and that is why a higher scrap value lowers the unit cost while a higher normal-loss percentage raises it.]

// ============================================================================
== 3.4 Normal Loss, Abnormal Loss and Abnormal Gain

#table(
  columns: (1.0fr, 1.05fr, 1.55fr, 1.2fr),
  inset: (x: 4.4pt, y: 3.7pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Item],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Expected?],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Valued at],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Where it goes],
  ),
  [*Normal loss*], [yes, a stated % of input], [scrap value only, if any], [credit of the process account; it reduces the cost of the good units],
  [*Abnormal loss*], [no], [the cost per good unit], [credit of the process account, then debit of the profit and loss account],
  [*Abnormal gain*], [no], [the cost per good unit], [debit of the process account, then credit of the profit and loss account],
  [*Closing WIP*], [yes], [equivalent units × cost per unit], [credit of the process account, carried to next year],
)

#v(3pt)

#text(size: 9.5pt)[Notice how the two abnormal figures are mirror images. An abnormal loss is a credit in the process account because it removes units and cost from the process; the same amount is then written off. An abnormal gain is a debit in the process account because it adds units that were never paid for; the same amount is then credited to profit. In both cases the process account balances, and in both cases the profit and loss account takes the other side.]

#trap-box("Scrap reduces cost; the loss percentage reduces units")[
  Two different figures, two different jobs. The *scrap value* of normal loss is deducted
  from the cost before dividing, because the firm recovers that money. The *normal loss
  percentage* reduces the number of units you divide by, because those units are not there
  to sell. A candidate who deducts the scrap from the units, or divides by the input, gets
  a figure that is nearly right — and nearly right is wrong on a multiple-choice paper,
  where the near-miss is one of the options.
]

// ============================================================================
== 3.5 Work in Progress and Equivalent Units

When a process is incomplete at the year end, the closing work in progress has had some material and some labour but not all of it. It is expressed in *equivalent units*: 300 units that are 40 per cent complete are 120 equivalent units of this period's work.

#formula-box("Equivalent units, first in first out")[
  #text(size: 9.4pt)[
    *Units completed* = opening WIP + units introduced − closing WIP \
    *Equivalent units* = units completed + (closing WIP × % complete) − (opening WIP × % complete) \
    *Cost per equivalent unit* = cost of the period ÷ equivalent units of the period
  ]
]

#v(2pt)

#text(size: 9.5pt)[The subtraction of the opening work in progress is what makes the method *first in, first out*: the opening units were partly paid for last year, so only the remaining work on them is charged to this year. A question that gives an opening WIP figure and then asks for the cost per unit is testing exactly this subtraction. If the opening WIP is nil, the formula collapses into units completed plus closing equivalent units, which is the version most school textbooks teach.]

// ============================================================================
== 3.6 Worked Examples

#worked-example(
  1,
  "The batch cost per good unit",
  tier: "FOUNDATION",
  [
    A batch of 600 units costs ₦55,000 to produce. Inspection rejects 50 units. The cost per good unit is

    A. ₦91.67 \\
    B. ₦95.65 \\
    C. ₦100.00 \\
    D. ₦110.00
  ],
  [
    *Step 1 — how many good units.* 600 − 50 = 550.

    *Step 2 — divide the whole cost by the good units.* 55,000 ÷ 550 = *₦100*.

    *Step 3 — eliminate.* A divides by all 600, which charges the rejected units to nobody; B divides by 550 but uses 52,000 (55,000 − 3,000 of scrap that the question never mentioned); D adds the rejects to the units.

    *Answer: C.*
  ],
)

#worked-example(
  2,
  "The process account with a normal loss",
  tier: "UTME STANDARD",
  [
    A process receives 1,000 units costing ₦6,600. Normal loss is 10 per cent of input and the lost units are sold as scrap at ₦3 each. Actual output is 850 units. The cost per unit and the value of the abnormal loss are

    A. ₦7.00 and ₦350 \\
    B. ₦7.33 and ₦367 \\
    C. ₦6.60 and ₦330 \\
    D. ₦7.00 and ₦300
  ],
  [
    *Step 1 — expected output.* 1,000 − 100 = 900 units.

    *Step 2 — scrap value of normal loss.* 100 × 3 = ₦300.

    *Step 3 — cost per unit.* (6,600 − 300) ÷ 900 = 6,300 ÷ 900 = *₦7*.

    *Step 4 — abnormal loss.* Expected output 900 less actual output 850 = 50 units, carried at ₦7 = *₦350*.

    *Step 5 — eliminate.* B divides by the input and ignores the scrap; C uses the input cost over the input units; D values the abnormal loss at its scrap value instead of its cost.

    *Answer: A.*
  ],
)

#worked-example(
  3,
  "An abnormal gain",
  tier: "UTME STANDARD",
  [
    Using the figures above, suppose the actual output had been 920 units instead of 850. The abnormal gain and its treatment are

    A. ₦140, credited to the profit and loss account \\
    B. ₦140, debited to the profit and loss account \\
    C. ₦160, credited to the profit and loss account \\
    D. nil, because output cannot exceed the expected figure
  ],
  [
    *Step 1 — the excess.* 920 − 900 = 20 units more than expected.

    *Step 2 — the value.* 20 × ₦7 = *₦140*, valued at the same cost per good unit as an abnormal loss would be.

    *Step 3 — the direction.* The process account is *debited* with the gain — it has 20 units it did not pay for — and the profit and loss account is *credited*, because the firm has made a saving.

    *Step 4 — eliminate.* B reverses the treatment; C values the gain at the input cost per unit (6,600 ÷ 1,000 = 6.60, and 20 × 6.60 = 132, so 160 is not even that); D is false, because abnormal gain is precisely the case where output beats the expectation.

    *Answer: A.*
  ],
)

#worked-example(
  4,
  "Equivalent units with opening work in progress",
  tier: "JAMB CHALLENGE",
  [
    A process had 200 units in opening work in progress, 60 per cent complete, and introduced 1,000 units. Closing work in progress was 300 units, 40 per cent complete. The cost of the period was ₦4,500. The cost per equivalent unit is

    A. ₦4.50 \\
    B. ₦5.00 \\
    C. ₦5.36 \\
    D. ₦6.00
  ],
  [
    *Step 1 — units completed.* 200 + 1,000 − 300 = 900 units.

    *Step 2 — equivalent units.* 900 completed + (300 × 40%) − (200 × 60%) = 900 + 120 − 120 = *900*.

    *Step 3 — cost per equivalent unit.* 4,500 ÷ 900 = *₦5.00*.

    *Step 4 — eliminate.* A divides by the 1,000 introduced; C divides by 840, which is what happens when the opening WIP is added instead of subtracted; D divides by 750, which ignores the closing WIP entirely.

    *Answer: B.*
  ],
)

#v(2pt)

#trap-box("Read the question for the word 'good'")[
  When a question asks for the cost per *unit*, it means the cost per saleable unit unless it
  says "per unit introduced". When it asks for the value of *output*, it means good units ×
  cost per unit. When it asks for the value of *work in progress*, it means equivalent units
  × cost per unit. The figures are the same three numbers rearranged, and the examiner's
  option list contains all three arrangements.
]

// ============================================================================
== 3.7 Two-Minute Set

#mcq(1, [A firm makes furniture to individual customers' orders. The most suitable costing method is], [process costing], [batch costing], [job costing], [standard costing])

#mcq(2, [Normal loss in a process is valued at], [the cost per good unit], [its scrap value], [the input cost per unit], [nil in every case])

#mcq(3, [An abnormal gain is], [debited in the process account and credited to profit and loss], [credited in the process account and debited to profit and loss], [ignored in the process account], [added to the cost of good output])

#mcq(4, [Input 2,000 units costing ₦9,000; normal loss 10 per cent with no scrap value. The cost per good unit is], [₦4.50], [₦5.00], [₦5.50], [₦4.00])

#answer-key-grid(("C", "B", "B", "B"))

#answer-notes((
  ("C", [Each order is separately identified and costed, which is the definition of job costing.]),
  ("B", [Normal loss is expected and carries no cost into the good units; only its scrap value is recovered, and that is how it is valued.]),
  ("B", [The gain puts units into the process that were never paid for, so the process account is debited and the profit and loss account credited.]),
  ("B", [Expected output = 2,000 − 200 = 1,800; 9,000 ÷ 1,800 = ₦5.00.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the three methods, the process formula, and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The method follows the product: one order is a job, a group of identical units is a batch, a continuous stream is a process. A job card collects material, labour and absorbed overhead, and the batch divides that total by its *good* units. In a process, the cost of the process is carried by the units that survive it, so the scrap value of the normal loss comes off the cost and the normal-loss units come off the divisor. Abnormal loss and abnormal gain are the two sides of one coin: both are valued at the cost per good unit, the loss is written off and the gain is credited to profit. Where the process is unfinished, equivalent units put the closing work in progress on the same footing as completed units, and the opening work in progress is subtracted because it was partly paid for last year.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Choose the costing method for a printer, a bakery and a cement works.],
  [Prepare a job cost card from material, labour, direct expenses and an absorption rate.],
  [Compute the cost per good unit for a batch with rejects.],
  [Write the process account from input to output, including the normal loss.],
  [Value an abnormal loss and an abnormal gain, and say where each is posted.],
  [Compute equivalent units when there is an opening work in progress.],
))

#concept-box("Carry this into Chapter 4")[
  Chapters 2 and 3 asked what a unit *cost*. Chapter 4 asks what a unit *contributes* — and
  the answer changes every decision the firm makes: whether to accept an order below the
  normal price, whether to make or buy, and how many units must be sold before the firm
  earns a naira of profit.
]

#include "drill_ch03.typ"
