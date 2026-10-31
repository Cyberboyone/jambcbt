#import "template.typ": *

#current-chapter.update("Appendix I: Twelve Model Calculations")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Twelve Model Calculations]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twelve Model Calculations]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    The twelve calculations that between them cover almost every mark the microeconomics
    half of the paper grants. Each is written out step by step, in the order a candidate
    should write it, and each ends with the arithmetic checked a second way.
  ]
]

#v(5pt)

== I.1 Opportunity Cost of a Decision

*A student can spend Saturday earning ₦4,000, or studying, or resting. He studies.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + The chosen option is studying.
  + The alternatives are earning ₦4,000 and resting.
  + The *next best* is the one he values more — say the ₦4,000.
  + *Opportunity cost = ₦4,000*, and it is not the money spent on books, which is a separate money cost.
]

*Check:* if resting were valued at ₦5,000, the opportunity cost would be ₦5,000, not ₦9,000. The alternatives are ranked, never added.

#v(4pt)

== I.2 Opportunity Cost Along a PPC

*A country can produce either rice or cloth. Moving from 0 to 20 tonnes of rice costs 60 metres of cloth; moving from 20 to 40 tonnes costs 100 metres.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + The first 20 tonnes cost 60 metres, so *3 metres per tonne*.
  + The second 20 tonnes cost 100 metres, so *5 metres per tonne*.
  + The rising figure is increasing opportunity cost, which is why the curve is bowed out.
]

*Check:* the total cloth given up for 40 tonnes is 160 metres, and 160 ÷ 40 = 4 metres per tonne on average — between the two marginal figures, as it must be.

#v(4pt)

== I.3 Equilibrium After a Demand Shift

*Qd = 100 − 2P, Qs = 20 + 3P. Find the equilibrium. Then demand rises by 20 units at every price.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Set 100 − 2P = 20 + 3P, so 80 = 5P and *P = ₦16*.
  + Substitute: Q = 100 − 32 = *68 units*; check with supply, 20 + 48 = 68.
  + New demand: Qd = 120 − 2P. Set 120 − 2P = 20 + 3P, so 100 = 5P and *P = ₦20*.
  + New quantity: 120 − 40 = *80 units* — price and quantity both rise, as a demand increase must.
]

#v(4pt)

== I.4 Splitting an Indirect Tax

*A ₦6 per-unit tax is imposed. Before the tax the price is ₦30; afterwards the price paid by buyers is ₦34 and the price received by sellers is ₦28.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + The buyer's share is 34 − 30 = *₦4* per unit.
  + The seller's share is 30 − 28 = *₦2* per unit.
  + The two shares add to the tax: 4 + 2 = *₦6*.
  + The buyers bear two-thirds, so demand is *less elastic* than supply in this market.
]

*Check:* the government collects ₦6 on every unit sold, which is exactly the vertical gap between the two curves at the new quantity.

#v(4pt)

== I.5 Elasticity and the Revenue Test

*A trader cuts the price of a good from ₦50 to ₦40 and sells 120 units instead of 100.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Percentage change in quantity: (120 − 100) ÷ 100 × 100 = *20 per cent*.
  + Percentage change in price: (40 − 50) ÷ 50 × 100 = *−20 per cent*.
  + PED = 20 ÷ 20 = *1.0*, unit elastic.
  + Revenue before: 50 × 100 = ₦5,000. Revenue after: 40 × 120 = ₦4,800.
]

The revenue figure has fallen, which is the signal that the demand was *slightly inelastic* over this stretch. When the arithmetic gives exactly 1.0 and the revenue changes, the elasticity has been measured on the wrong base: recalculate using the average price and the average quantity, and the answer moves just below one.



== I.6 Income and Cross Elasticity

*Income rises from ₦50,000 to ₦60,000 a month. Demand for good X rises from 40 to 44 units; demand for good Y falls from 30 to 27 units.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Income rises by 10 ÷ 50 × 100 = *20 per cent*.
  + Good X: 4 ÷ 40 × 100 = 10 per cent, so YED = 10 ÷ 20 = *+0.5* — a necessity.
  + Good Y: −3 ÷ 30 × 100 = −10 per cent, so YED = −10 ÷ 20 = *−0.5* — an inferior good.
  + If the price of X then rises by 10 per cent and the demand for Z rises by 15 per cent, XED = 15 ÷ 10 = *+1.5*, so X and Z are substitutes.
]

#v(4pt)

== I.7 Completing a Cost Table

*Output 0 to 4. Total fixed cost ₦100. Total variable cost: 0, 60, 100, 150, 220.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #set text(size: 9pt)
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 4pt,
    align: center,
    stroke: 0.5pt + jamb-border,
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Q],
      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[TFC],
      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[TVC],
      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[TC],
      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[AC],
      text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[MC],
    ),
    [0], [100], [0], [100], [—], [—],
    [1], [100], [60], [160], [160], [60],
    [2], [100], [100], [200], [100], [40],
    [3], [100], [150], [250], [83.3], [50],
    [4], [100], [220], [320], [80], [70],
  )
]

*Reading it:* marginal cost falls to ₦40 at the second unit and then rises, while average cost keeps falling until the third unit and turns up afterwards. Marginal cost crosses average cost between the third and fourth units, at the minimum of average cost — the pattern behind every U-shaped cost curve in the chapter.

#v(4pt)

== I.8 Break-Even and Shut-Down

*A firm faces a price of ₦40. Its total cost is TC = 300 + 25Q.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Break-even: 40Q = 300 + 25Q, so 15Q = 300 and *Q = 20*.
  + At Q = 20: revenue ₦800, cost ₦800, profit *zero*.
  + At Q = 30: revenue ₦1,200, cost ₦1,050, profit *₦150*.
  + The contribution per unit is 40 − 25 = ₦15, and 300 ÷ 15 = 20 — the same answer by the shortcut.
]

*Check:* below 20 units the firm makes a loss; above 20 units every extra unit adds ₦15 to profit, because price exceeds average variable cost.



== I.9 Profit Maximisation Under Competition

*A perfectly competitive firm sells at ₦60. Its total cost is TC = 400 + 20Q + 2Q². Find the profit-maximising output and the profit.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Under competition P = MR = ₦60, so set MC = 60.
  + MC = 20 + 4Q, so 20 + 4Q = 60 and *Q = 10*.
  + Total revenue = 60 × 10 = ₦600.
  + Total cost = 400 + 200 + 200 = ₦800.
  + Profit = 600 − 800 = *−₦200*, a loss, so the firm produces only if price covers average variable cost. AVC at Q = 10 is (200 + 200) ÷ 10 = ₦40, which is below ₦60, so the firm keeps producing in the short run despite the loss.
]

*The lesson:* profit maximisation is not the same as profit. A firm can maximise a loss, and the shut-down rule is what decides whether it should still produce.

#v(4pt)

== I.10 Monopoly Price and Output

*A monopolist faces P = 100 − 2Q and has a constant marginal cost of ₦20.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + MR = 100 − 4Q, because the slope doubles.
  + Set 100 − 4Q = 20, so 4Q = 80 and *Q = 20*.
  + Price from the demand curve: P = 100 − 40 = *₦60*.
  + Profit per unit = 60 − 20 = ₦40, so total profit = 40 × 20 = *₦800* (with no fixed cost).
  + The competitive output would be where P = MC: 100 − 2Q = 20, so Q = 40 — twice the monopoly output.
]

*Check:* the monopolist produces half the competitive output and charges three times the marginal cost. The triangle between the demand curve and the marginal cost curve, between 20 and 40 units, is the deadweight loss.

#v(4pt)

== I.11 The Two Multipliers

*The cash reserve ratio is 20 per cent and the marginal propensity to consume is 0.75.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Credit multiplier = 1 ÷ 0.2 = *5*, so a new deposit of ₦10,000 supports ₦50,000 of deposits in the system.
  + Income multiplier = 1 ÷ (1 − 0.75) = 1 ÷ 0.25 = *4*, so an injection of ₦10,000 raises national income by ₦40,000.
  + The two multipliers answer different questions: one is about bank deposits, the other about national income.
]

#v(4pt)

== I.12 Real Income

*A worker's nominal income rises from ₦60,000 to ₦66,000 while the consumer price index rises from 100 to 110.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + Nominal income rises by 10 per cent; prices rise by 10 per cent.
  + Real income = 66,000 ÷ 110 × 100 = *₦60,000*.
  + The worker's purchasing power is exactly where it started: the raise bought nothing.
]

#concept-box("What the twelve models have in common")[
  + *Every one begins by writing the formula*, not by looking at the options. The formula turns a word problem into a substitution.
  + *Every one ends with a check* — substitution back, a second route, or the direction of the change. The check is where the marks are rescued.
  + *Every one states the unit.* Naira, units, per cent: a number without a unit is an unfinished answer.
]
