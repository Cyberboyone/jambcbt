#import "template.typ": *

#current-chapter.update("Chapter 5: Production and Cost")

#pagebreak()

#chapter-opener(
  5,
  "Production and Cost",
  subtitle: "The Short Run and the Long Run, Total, Average and Marginal Product, the Law of Diminishing Returns, the Seven Cost Curves, Profit Maximisation, Break-Even and the Shut-Down Point",
  syllabus-ref: "Sec. A • Production and Cost",
  utme-weight: "4 Qs a year on cost",
  running: "Production and Cost",
)

#focus-radar(
  objectives: (
    "Distinguish the short run from the long run by which factor is fixed.",
    "Compute TP, AP and MP from a table, and say where diminishing returns set in.",
    "Compute TFC, TVC, TC, AFC, AVC, AC and MC, and know which curve cuts which.",
    "Find the profit-maximising output where MR equals MC.",
    "Find the break-even output, and the shut-down point below which the firm stops producing.",
  ),
  hotspots: (
    "“In the short run, which factor is fixed?” — capital (plant and machinery) in most textbook questions. The trap option offers labour.",
    "“Marginal cost is the change in …” — *total cost*, from producing one more unit. An option that says *average cost* is the commonest error in the chapter.",
    "“MC cuts AC at …” — AC's *minimum* point. The distractor says MC's own minimum, which is a different point entirely.",
    "“A firm maximises profit where …” — MR = MC. An option that says *AR = AC* describes break-even, not maximum profit.",
    "“A firm should shut down in the short run if price falls below …” — the minimum *average variable cost*.",
  ),
  trap-summary: "Three slips. (1) Confusing fixed and variable costs when a cost stops being paid at zero output: nothing variable is paid at zero output, and fixed cost is. (2) Adding average costs instead of multiplying back to totals. (3) Treating the break-even point (where profit is zero) as the same as the shut-down point (where the firm stops producing) — they are two different prices, and AC is always above AVC.",
)

// ============================================================================
== 5.1 The Short Run, the Long Run and the Production Function

The difference between the short run and the long run is not a number of months. It is
whether at least one factor of production is fixed. In the short run, plant and machinery
are fixed and labour can vary; in the long run, everything can change.

#rule-box("The three product measures")[
  + *Total product (TP):* total output from a given quantity of the variable factor.
  + *Average product (AP):* TP ÷ quantity of the variable factor.
  + *Marginal product (MP):* the change in TP from employing one more unit of the variable factor.
]

#diagram-fig("diagrams/ch05_production.svg",
  "TP, AP and MP. MP rises, peaks and falls; it cuts AP at AP's maximum; and the three stages of production are marked by where MP becomes zero and negative.", width: 100%)

#concept-box("The relationship worth memorising")[
  + MP above AP → AP is *rising*.
  + MP below AP → AP is *falling*.
  + MP equals AP → AP is at its *maximum*.

  The same three-line logic as marginal and average utility in Chapter 2, because it is the
  same arithmetic: an average rises when the addition is above it, and falls when the
  addition is below it.
]

#worked-example(
  1,
  "The missing marginal product",
  [A firm employing 1, 2, 3 and 4 workers produces total output of 10, 24, 36 and 44 units respectively. The marginal product of the fourth worker is

    A. 44 units \
    B. 12 units \
    C. 8 units \
    D. 11 units],
  [
    *Step 1 — the formula.* MP = change in TP ÷ change in the number of workers, and the change in workers is one.

    *Step 2 — the arithmetic.* TP rises from 36 to 44, so MP = 8 units.

    *Step 3 — the meaning.* The fourth worker adds less than the third (who added 12), which is diminishing returns appearing in a table before it appears on a curve.

    *Check.* A is total product and D is average product (44 ÷ 4 = 11). Marginal is the *change*, never the level. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 5.2 The Law of Diminishing Returns

Add more of a variable factor to a fixed factor and output eventually rises by smaller and
smaller amounts. That is the law of diminishing returns — also called the law of variable
proportions — and it is the reason the cost curves in 5.3 bend the way they do.

#rule-box("The three stages of production")[
  + *Stage I:* MP rises, then falls but stays above AP. AP is rising. The fixed factor is under-used.
  + *Stage II:* MP is below AP but still positive. AP is falling, TP is still rising. This is the rational stage, and the firm produces here.
  + *Stage III:* MP is negative. TP is falling. The variable factor is so abundant that it gets in the way.
]

#trap-box("Diminishing returns is not a statement about bad workers")[
  The law describes a *ratio*, not a quality. With one sewing machine and ten tailors, the
  tenth tailor adds little because there is one machine — not because the tenth tailor is
  worse than the first. Add the second machine and the marginal product of the tenth tailor
  rises again.
]

#concept-box("Why the law matters for the exam")[
  Every cost question in this chapter is the law of diminishing returns read backwards.
  Diminishing returns make marginal cost *rise*; rising marginal cost is what eventually
  stops a firm expanding; and the point where rising marginal cost meets marginal revenue is
  the profit-maximising output.
]

// ============================================================================
== 5.3 The Seven Cost Curves

Costs divide first into fixed and variable, and then into totals and averages. Learn the
seven names and the two facts that link them, and the arithmetic becomes a table.

#rule-box("The seven costs")[
  + *TFC:* total fixed cost — the same at every output, including zero.
  + *TVC:* total variable cost — zero at zero output, rising as output rises.
  + *TC = TFC + TVC.*
  + *AFC = TFC ÷ Q.* Falls continuously, because a fixed sum is spread over more units.
  + *AVC = TVC ÷ Q.* Usually U-shaped.
  + *AC = TC ÷ Q = AFC + AVC.* U-shaped, and always above AVC by the amount of AFC.
  + *MC = change in TC ÷ change in Q.* Falls, then rises, and cuts both AC and AVC at their minimum points.
]

#diagram-fig("diagrams/ch05_costs.svg",
  "The short-run cost curves. AFC falls throughout; AVC and AC are U-shaped; MC cuts both at their minimum, from below.", width: 96%)

#worked-example(
  2,
  "One row of the cost table",
  [A firm's total fixed cost is ₦100. At an output of 2 units, total cost is ₦190; at 3 units it is ₦250. The marginal cost of the third unit is

    A. ₦60 \
    B. ₦50 \
    C. ₦40 \
    D. ₦30],
  [
    *Step 1 — the formula.* MC is the change in *total cost*, not in average cost: MC = ΔTC ÷ ΔQ.

    *Step 2 — the arithmetic.* TC rises from 190 to 250, and output rises by one unit, so MC = ₦60.

    *Step 3 — the traps.* B is AVC at three units (TVC = 150, and 150 ÷ 3 = 50); C is AVC at two units (90 ÷ 2 = 45, close enough to be tempting); D is the change in AVC. All three are plausible because they use the right numbers in the wrong formula.

    *Check.* Marginal always means *the change in the total*. The answer is *A*.
  ],
  tier: "UTME STANDARD",
)

#concept-box("Two facts that answer most diagram questions")[
  + *AFC always falls.* It is a fixed sum divided by a growing number, so it never turns upward.
  + *MC cuts AC at AC's minimum.* While MC is below AC, AC is falling; while MC is above AC, AC is rising; so the crossing is the turning point. The same is true of MC and AVC.
]

// ============================================================================
== 5.4 Revenue, Break-Even and Maximum Profit

Revenue has three names in the same way cost has three. Total revenue is price times
quantity; average revenue is revenue per unit, which *is* the price; and marginal revenue
is the change in total revenue from one more unit sold.

#rule-box("Revenue and the profit rule")[
  + *TR = P × Q.* *AR = TR ÷ Q = P.* *MR = ΔTR ÷ ΔQ.*
  + For a price taker, P = AR = MR, and the demand curve the firm faces is horizontal.
  + For a firm facing a downward-sloping demand curve, MR is below AR, because selling one more unit requires cutting the price on all the others.
  + *Profit is maximised where MR = MC,* and the profit itself is (P − AC) × Q.
]

#diagram-fig("diagrams/ch05_revenue.svg",
  "Total revenue against total cost. Where the lines cross the firm breaks even; between the crossings it makes a profit; where TR is below TC it makes a loss.", width: 96%)

#worked-example(
  3,
  "The break-even output",
  [A firm sells its product at ₦50 per unit. Its total cost is ₦200 + ₦30Q. The break-even output is

    A. 4 units \
    B. 10 units \
    C. 20 units \
    D. 40 units],
  [
    *Step 1 — the definition.* Break-even is where total revenue equals total cost, so profit is zero.

    *Step 2 — solve.* 50Q = 200 + 30Q, so 20Q = 200 and Q = 10.

    *Step 3 — check.* At 10 units, TR = ₦500 and TC = 200 + 300 = ₦500. At 20 units the firm would be making ₦200 of profit, which is why C is the attractive wrong answer: it is profitable, but it is not the break-even point.

    *Check.* Break-even is a crossing, not a maximum. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Profit per unit, and profit in total",
  [A firm produces 200 units at an average cost of ₦45 and sells them at ₦60 each. Its total profit is

    A. ₦15 \
    B. ₦3,000 \
    C. ₦9,000 \
    D. ₦12,000],
  [
    *Step 1 — profit per unit.* P − AC = 60 − 45 = ₦15 per unit.

    *Step 2 — total profit.* (P − AC) × Q = 15 × 200 = ₦3,000.

    *Step 3 — the traps.* A is the profit per unit, and D is total revenue (60 × 200 = ₦12,000), which a candidate reaches by forgetting to subtract cost. C is total cost (45 × 200 = ₦9,000).

    *Check.* Multiply the per-unit figure by the quantity, and check that revenue minus cost gives the same answer: 12,000 − 9,000 = 3,000. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 5.5 The Shut-Down Point, and Scale

A firm making a loss has three choices: continue, reduce output, or shut down. The rule
that separates them is about *variable* cost, because fixed cost is paid whether or not
the firm produces.

#rule-box("The shut-down rule")[
  + If price is above AC, the firm makes a profit and continues.
  + If price is between AC and AVC, the firm makes a loss but covers its variable cost and part of its fixed cost. It should *continue in the short run*.
  + If price falls below the minimum AVC, the firm cannot even cover its variable cost. It should *shut down*, and its loss becomes exactly its fixed cost.
]

#concept-box("Economies and diseconomies of scale")[
  In the long run every factor can change, so the firm can choose its *scale*. Long-run average
  cost falls while economies of scale operate — specialisation, bulk buying, better machinery,
  cheaper finance — and rises once diseconomies set in: management becomes unwieldy,
  coordination costs rise, and the firm is too large to respond quickly.

  The long-run average cost curve is the envelope of all the short-run curves, and its lowest
  point defines the *optimum scale*.
]

#worked-example(
  5,
  "The firm that should stop",
  [A firm's minimum average variable cost is ₦30 and its average total cost at that output is ₦45. If the market price is ₦25, the firm should

    A. continue producing at a profit \
    B. continue producing at a loss \
    C. shut down in the short run \
    D. raise its price to ₦45],
  [
    *Step 1 — compare price with the two averages.* Price ₦25 is below minimum AVC of ₦30, and therefore far below AC of ₦45.

    *Step 2 — the rule.* Below minimum AVC the firm cannot cover even its variable cost, so every unit sold adds to the loss. It should shut down, and its loss is then its fixed cost alone.

    *Step 3 — kill the rest.* B would be right if the price lay between AVC and AC: the firm would lose money but lose less by producing. A is impossible at ₦25, and D is not available to a price taker.

    *Check.* Compare with AVC first, AC second. Below AVC, shut down. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: production and cost.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    In the short run at least one factor is fixed, and the fixed factor is what produces the law of diminishing returns: each extra unit of the variable factor adds less than the one before. Total product rises, peaks where marginal product is zero, and falls once marginal product is negative; marginal product cuts average product at average product's maximum. The seven costs follow: fixed and variable totals, then their averages, with marginal cost as the change in total cost. Average fixed cost falls throughout, average cost is average fixed plus average variable, and marginal cost cuts both averages at their minimum points. Profit is maximised where marginal revenue equals marginal cost, the break-even output is where total revenue equals total cost, and a firm shuts down in the short run only when price falls below minimum average variable cost.
  ]
]

== 5.6 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [In the short run, a firm's fixed factor of production is usually], [labour], [raw materials], [plant and machinery], [electricity])

#mcq(2, [Marginal cost is the change in], [average cost from producing one more unit], [total cost from producing one more unit], [total revenue from selling one more unit], [fixed cost from producing one more unit])

#mcq(3, [A firm maximises profit where], [average revenue equals average cost], [marginal revenue equals marginal cost], [total revenue is at its maximum], [price equals average cost])

#mcq(4, [A firm should shut down in the short run when price falls below], [average total cost], [marginal cost], [average fixed cost], [minimum average variable cost])

#answer-key-grid(("C", "B", "B", "D"))

#answer-notes((
  ("C", [Plant and machinery. The short run is defined by having at least one fixed factor, and in the standard question that factor is capital; labour is the variable factor the table changes.]),
  ("B", [The change in total cost. A names average cost, which is the classic error — marginal is always a change in a total, and MC uses TC, not AC or FC. D is the change in revenue.]),
  ("B", [Marginal revenue equals marginal cost. A is the break-even condition, C maximises revenue rather than profit, and D is A stated in another way.]),
  ("D", [Minimum average variable cost. Below it the firm cannot cover its variable cost, so producing adds to the loss; between AVC and AC the firm loses money but loses less by producing.]),
))

#chapter-checklist("Before you leave Chapter 5", (
  [Define the short run and the long run by the factor that is fixed.],
  [Compute TP, AP and MP from a four-row table.],
  [Say where diminishing returns begin, and why the law is about a ratio rather than a worker.],
  [Write the seven cost formulas and say which curve always falls.],
  [State the profit-maximising rule, and compute a break-even output from a cost equation.],
  [State the shut-down rule and the difference between the shut-down price and the break-even price.],
))

#concept-box("Carry this into Chapter 6")[
  Chapter 5 gave the firm its cost curves. Chapter 6 asks how many firms share the market, and shows that the *same* cost curves produce very different prices depending on whether the firm is one of thousands, one of a few, or the only one. The cost curves do not change; the demand curve the firm faces does.
]

#include "drill_ch05.typ"
