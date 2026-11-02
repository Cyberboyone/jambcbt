#import "template.typ": *

#current-chapter.update("Chapter 4: Marginal Costing and Break-Even")

#pagebreak()

#chapter-opener(
  4,
  "Marginal Costing and Break-Even",
  subtitle: "What One More Unit Contributes, and How Many Units Pay the Rent",
  syllabus-ref: "Sec. 14 • Marginal Costing and Decision Making",
  utme-weight: "6 Qs a year",
  running: "Marginal Costing and Break-Even",
)

#focus-radar(
  objectives: (
    "Separate a cost into its fixed and variable parts.",
    "Compute contribution per unit and the contribution-to-sales ratio.",
    "Compute the break-even point in units and in value.",
    "Compute the margin of safety and the sales needed for a target profit.",
    "Explain why marginal and absorption costing report different profits.",
    "Use contribution to decide on a special order, a make-or-buy choice and a scarce resource.",
  ),
  hotspots: (
    "*Contribution is the whole subject.* Selling price less variable cost. It pays the fixed cost first, and every naira after that is profit.",
    "*Break-even units = fixed cost ÷ contribution per unit.* In value it is fixed cost ÷ the C/S ratio, and the two answers must agree at the break-even point.",
    "*The margin of safety is a percentage of what you actually sell.* (Budgeted sales − break-even sales) ÷ budgeted sales × 100.",
    "*The profit difference between the two methods is stock movement × fixed overhead per unit.* If stock rises, absorption profit is the higher; if stock falls, marginal profit is the higher.",
  ),
  trap-summary: "Four slips. (1) Dividing fixed cost by the *profit* per unit instead of the *contribution* per unit. (2) Treating a fixed cost per unit as if it were variable — it falls as output rises, which is not the same thing as being variable. (3) Computing the margin of safety on break-even sales instead of actual sales. (4) Accepting a special order at any price above variable cost without checking that spare capacity exists and that the existing market will not be disturbed.",
)

// ============================================================================
== 4.1 Two Ways to Present the Same Cost

Under *absorption costing*, every unit carries a share of the fixed overhead: the factory rent is absorbed into the product at a rate per hour. Under *marginal costing*, the product carries only its variable cost, and the fixed cost is written off against the contribution of the period as a whole.

#table(
  columns: (1.25fr, 1.5fr, 1.5fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Absorption costing],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Marginal costing],
  ),
  [What does a unit carry?], [variable cost + absorbed fixed overhead], [variable cost only],
  [How is fixed cost treated?], [in the product, then released through cost of sales], [written off in full against the period's contribution],
  [What is the profit measure?], [gross profit, then net profit], [contribution, then net profit],
  [What is it used for?], [the published accounts, and stock valuation], [decisions: pricing, orders, make or buy, break-even],
)

#v(2pt)

#text(size: 9.5pt)[The two methods report different profits whenever stock moves, and the difference is exactly the fixed overhead carried by the units that moved.] If stock rises, absorption costing carries some fixed overhead forward into next year instead of writing it off this year, so absorption profit is higher. If stock falls, the fixed overhead of earlier units is released this year, so absorption profit is lower.

#formula-box("The profit difference")[
  #text(size: 9.4pt)[
    *Difference in profit* = change in stock units × fixed overhead absorbed per unit \
    stock increased → absorption profit is *higher* than marginal profit \
    stock decreased → absorption profit is *lower* than marginal profit
  ]
]

#v(2pt)

#trap-box("Fixed cost per unit is a result, not a rate")[
  A fixed cost of ₦60,000 over 1,000 units is ₦60 a unit, and over 2,000 units it is ₦30 a
  unit. The cost did not fall; the denominator rose. An option that says "fixed cost per
  unit falls as output rises, therefore the firm should produce more to reduce its fixed
  cost" is describing an arithmetic fact and recommending nothing: the total fixed cost is
  unchanged, and only the *contribution* of the extra units makes the firm better off.
]

// ============================================================================
== 4.2 Contribution and the C/S Ratio

#table(
  columns: (1.9fr, 1.3fr, 1.2fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Line],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Per unit ₦],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[2,000 units ₦],
  ),
  [Sales], [60], [120,000],
  [Less variable cost], [(25)], [(50,000)],
  [*Contribution*], [*35*], [*70,000*],
  [Less fixed cost], [], [(42,000)],
  [*Net profit*], [], [*28,000*],
)

#v(2pt)

#text(size: 9.5pt)[The *contribution-to-sales ratio* (C/S ratio, or the marginal ratio) expresses the contribution as a fraction of sales: 35 ÷ 60 = 0.5833, or 58.33 per cent. It answers the question "of every ₦100 a customer pays, how much is left after the variable cost of the goods?" — and it is the figure to use when a question gives sales in naira rather than in units.]

#shortcut-box("Three formulas, one idea")[
  + Contribution per unit = selling price − variable cost per unit.
  + C/S ratio = contribution ÷ sales (per unit, or in total — the ratio is the same).
  + Profit = (contribution per unit × units sold) − fixed cost.
  The third formula is the first formula with the fixed cost taken out, and every break-even question is a rearrangement of it.
]

// ============================================================================
== 4.3 Break-Even, in Units and in Value

Break-even is the sales volume at which contribution exactly equals fixed cost, so profit is nil. Below it the firm loses fixed cost; above it every unit adds its contribution to profit.

#formula-box("Break-even")[
  #text(size: 9.4pt)[
    *Break-even units* = fixed cost ÷ contribution per unit \
    *Break-even sales value* = fixed cost ÷ C/S ratio \
    *Units for a target profit* = (fixed cost + target profit) ÷ contribution per unit
  ]
]

#v(2pt)

#diagram-fig("diagrams/ch04_marginal.svg",
  "The break-even chart: the sales line rises from the origin, the total-cost line starts at the fixed cost, and the point where they cross is break-even. The shaded wedge to the right of it is the margin of safety.", width: 86%)

#v(2pt)

#text(size: 9.5pt)[With the figures in section 4.2: break-even units = 42,000 ÷ 35 = *1,200 units*, which is also 1,200 × ₦60 = *₦72,000* of sales. Check the two routes: 72,000 ÷ 0.5833 = 72,000, and at 1,200 units contribution is 1,200 × 35 = 42,000, exactly the fixed cost, so profit is nil. That check — contribution at break-even equals fixed cost — is worth ten seconds in an examination and catches every arithmetic slip in the chapter.]

#concept-box("What break-even does not tell you")[
  A break-even figure is only as good as the cost split behind it. It assumes the selling
  price is constant, that variable cost per unit is constant, that fixed cost does not
  change, and that the firm sells one product or a fixed mix. A question that changes the
  selling price, or gives two products with a sales mix, is testing whether you noticed
  that the assumptions had moved.
]

// ============================================================================
== 4.4 The Margin of Safety and the Target Profit

The *margin of safety* is the amount by which sales could fall before the firm makes a loss. It is the cushion, and it is expressed as a percentage of the sales actually budgeted.

#table(
  columns: (1.9fr, 1.15fr, 1.35fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, right + horizon, right + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[₦ or units],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Formula],
  ),
  [Budgeted sales], [2,000 units], [given],
  [Break-even sales], [1,200 units], [fixed cost ÷ contribution per unit],
  [Margin of safety, units], [800 units], [budgeted − break-even],
  [Margin of safety, %], [40%], [800 ÷ 2,000 × 100],
  [Profit at budget], [₦28,000], [margin of safety units × contribution per unit],
)

#v(2pt)

#text(size: 9.5pt)[The last line is the reason the margin of safety is more than a percentage. *Profit equals the margin of safety in units multiplied by the contribution per unit*, because every unit above break-even contributes straight to profit. A candidate who remembers that identity can answer a profit question without building the whole statement, and can check a profit figure in five seconds: 800 × 35 = ₦28,000, which is the figure in section 4.2.]

#text(size: 9.5pt)[For a *target profit*, add it to the fixed cost before dividing: (42,000 + 14,000) ÷ 35 = 1,600 units. For a target profit expressed *after tax*, gross the figure up first — a target of ₦10,500 after tax at 30 per cent is 10,500 ÷ 0.7 = ₦15,000 before tax, and only then is it added to the fixed cost.]

// ============================================================================
== 4.5 Decisions That Contribution Makes Easy

#table(
  columns: (1.15fr, 1.55fr, 1.65fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Decision],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The test],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The condition that must hold],
  ),
  [Special order below normal price], [does the order add contribution?], [spare capacity exists, and the existing market will not demand the same price],
  [Make or buy], [is the bought-in price below the *avoidable* cost of making?], [the fixed cost saved, not the total fixed cost, is the relevant figure],
  [Accept or reject a product line], [does it cover its own variable cost and add something?], [fixed cost is unavoidable and will be there either way],
  [Use of a scarce resource], [contribution *per unit of the scarce resource*], [the resource, not the product, is what is scarce — rank by contribution per hour, per kg or per machine hour],
  [Close a department], [contribution lost against fixed cost saved], [a department with positive contribution may still be worth keeping],
)

#v(3pt)

#trap-box("Contribution per unit is not contribution per scarce hour")[
  This is the most expensive mistake in the chapter, because it looks like the right
  calculation. Product A contributes ₦30 and takes 3 machine hours; product B contributes
  ₦20 and takes 1 hour. Per unit, A is better. Per machine hour, A gives ₦10 and B gives
  ₦20 — so when machine hours are the limit, every hour spent on A instead of B loses ₦10.
  Rank by contribution per unit *of the limiting factor*.
]

// ============================================================================
== 4.6 Worked Examples

#worked-example(
  1,
  "Contribution per unit",
  tier: "FOUNDATION",
  [
    A product sells for ₦60. Its variable cost is ₦25 a unit and fixed cost is ₦42,000 a year. The contribution per unit is

    A. ₦25 \\
    B. ₦35 \\
    C. ₦60 \\
    D. ₦95
  ],
  [
    *Step 1 — definition.* Contribution = selling price − variable cost.

    *Step 2 — substitute.* 60 − 25 = *₦35*.

    *Step 3 — eliminate.* A is the variable cost; C is the selling price; D adds the two. The fixed cost is not used at all in this figure, which is the point of contribution.

    *Answer: B.*
  ],
)

#worked-example(
  2,
  "Break-even in units and in value",
  tier: "UTME STANDARD",
  [
    Using the product above, the break-even point is

    A. 700 units, ₦42,000 \\
    B. 1,200 units, ₦72,000 \\
    C. 1,680 units, ₦100,800 \\
    D. 1,200 units, ₦42,000
  ],
  [
    *Step 1 — units.* 42,000 ÷ 35 = *1,200 units*.

    *Step 2 — value.* 1,200 × 60 = *₦72,000*, or 42,000 ÷ (35 ÷ 60) = 42,000 ÷ 0.5833 = 72,000.

    *Step 3 — check.* At 1,200 units, contribution = 1,200 × 35 = 42,000 = fixed cost, so profit is nil.

    *Step 4 — eliminate.* A divides the fixed cost by the selling price; C divides by the variable cost; D pairs the right units with the fixed cost itself, which is a common transcription slip.

    *Answer: B.*
  ],
)

#worked-example(
  3,
  "The margin of safety",
  tier: "UTME STANDARD",
  [
    Budgeted sales are 2,000 units and break-even sales are 1,200 units. The margin of safety is

    A. 40 per cent, and profit is ₦28,000 \\
    B. 60 per cent, and profit is ₦28,000 \\
    C. 40 per cent, and profit is ₦42,000 \\
    D. 800 per cent, and profit is ₦28,000
  ],
  [
    *Step 1 — the cushion in units.* 2,000 − 1,200 = 800 units.

    *Step 2 — as a percentage of budgeted sales.* 800 ÷ 2,000 × 100 = *40 per cent*.

    *Step 3 — the profit.* 800 × ₦35 = *₦28,000*, which is the same figure the full statement produced.

    *Step 4 — eliminate.* B divides by break-even sales instead of budgeted sales; C uses the break-even contribution as profit; D forgets to divide.

    *Answer: A.*
  ],
)

#worked-example(
  4,
  "Marginal against absorption",
  tier: "JAMB CHALLENGE",
  [
    A firm makes 10,000 units in a year and sells 9,000 of them. The selling price is ₦50, the variable cost is ₦30 a unit, and the fixed overhead is ₦200,000, absorbed at ₦20 a unit. The profits under absorption costing and marginal costing are

    A. absorption ₦0, marginal −₦20,000 \\
    B. absorption −₦20,000, marginal ₦0 \\
    C. absorption ₦20,000, marginal −₦20,000 \\
    D. absorption −₦20,000, marginal −₦20,000
  ],
  [
    *Step 1 — marginal profit.* Contribution 9,000 × (50 − 30) = ₦180,000, less the whole fixed cost of ₦200,000 = *−₦20,000*, a loss.

    *Step 2 — absorption profit.* Fixed overhead per unit = 200,000 ÷ 10,000 = ₦20, so the cost of one unit is 30 + 20 = ₦50, exactly the selling price. Gross profit is therefore nil on the 9,000 units sold; the remaining 1,000 units carry ₦20,000 of fixed overhead into closing stock, and *profit is ₦0*.

    *Step 3 — check with the rule.* Stock rose by 1,000 units; 1,000 × ₦20 = ₦20,000, and absorption profit is higher by exactly that: 0 against −20,000.

    *Step 4 — eliminate.* B reverses the two figures. C invents a profit for absorption by carrying the whole overhead into stock. D is the answer of a candidate who believes the method cannot change the profit — which is true only in the year in which production equals sales.

    *Answer: A.*
  ],
)

#v(2pt)

#trap-box("A loss is still a loss under both methods")[
  The profit difference can make an ugly set of figures look better than it is. Absorption
  costing does not create profit by capitalising overhead; it only *defers* it into the
  stock account. If the firm is making a loss at the marginal level, the absorption figure
  is better only because some of the cost has been moved into stock — and next year, when
  that stock is sold, the cost arrives.
]

// ============================================================================
== 4.7 Two-Minute Set

#mcq(1, [Contribution is], [sales less fixed cost], [sales less variable cost], [profit plus variable cost], [sales less total cost])

#mcq(2, [Fixed cost ₦80,000; selling price ₦50; variable cost ₦30. The break-even point in units is], [1,600], [2,667], [4,000], [1,000])

#mcq(3, [When production exceeds sales, the profit reported under absorption costing is], [lower than under marginal costing], [higher than under marginal costing], [the same as under marginal costing], [always a loss])

#mcq(4, [Two products use the same scarce machine. The firm should rank them by], [contribution per unit], [selling price per unit], [contribution per machine hour], [profit per unit])

#answer-key-grid(("B", "C", "B", "C"))

#answer-notes((
  ("B", [Contribution is what is left of the selling price after the variable cost, and it is what pays the fixed cost.]),
  ("C", [Contribution = 50 − 30 = ₦20; 80,000 ÷ 20 = 4,000 units.]),
  ("B", [Closing stock carries fixed overhead forward, so absorption costing charges less of it this year and reports the higher profit.]),
  ("C", [The limiting factor is machine hours, so the ranking must be per machine hour, not per unit.]),
))

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: contribution, break-even, the margin of safety and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Marginal costing charges a product with its variable cost only and writes the fixed cost off against the contribution of the period; absorption costing puts a share of the fixed cost into every unit. Contribution — price less variable cost — is the engine of every calculation: divide it into the fixed cost for break-even units, divide the C/S ratio into the fixed cost for break-even value, multiply it by the margin of safety for the profit. Add a target profit to the fixed cost before dividing, and gross up an after-tax target before that. For decisions, contribution per unit of the *scarce resource* ranks the options, and the difference between the two methods' profits is always the stock movement multiplied by the fixed overhead per unit.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Classify six costs as fixed or variable in a named business.],
  [Compute contribution per unit and the C/S ratio from a price and a variable cost.],
  [Compute break-even in units and in value, and check that they agree.],
  [Compute the margin of safety and use it to state the profit.],
  [State the rule for the profit difference between the two costing methods.],
  [Rank two products by contribution per unit of a limiting factor.],
))

#concept-box("Carry this into Chapter 5")[
  Chapter 4 answered "how many units must we sell?" with the figures we have. Chapter 5 asks
  the same question *before* the year starts, in a budget — and shows why a plan that is
  profitable on paper can still leave the firm unable to pay its wages in March.
]

#include "drill_ch04.typ"
