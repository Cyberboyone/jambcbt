#import "template.typ": *

#current-chapter.update("Appendix E: The Graph File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Graph File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Graph File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every diagram in the volume, reduced to what must be on the page: the axes, the
    curves, the point that answers the question, and the one sentence to write
    underneath. Use it when a diagram will not stay in your head.
  ]
]

#v(5pt)

== E.1 How to Draw Any Economics Diagram in Forty Seconds

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Draw the axes and label them.* Price on the vertical, quantity on the horizontal, unless the question is about cost — then cost and output.
  + *Draw the curves the question names*, and nothing else. A diagram with spare curves invites a spare mistake.
  + *Mark the original equilibrium* with a dotted line to both axes and label the price and quantity.
  + *Apply the change* — a shift if a determinant moved, a movement if the good's own price moved.
  + *Mark the new equilibrium,* and write the direction of the change in words beneath the diagram: *price rises, quantity falls*.
]

#v(5pt)

#trap-box("Four marks that diagrams lose every year")[
  + *An unlabelled axis.* Two unlabelled axes turn a correct diagram into a sketch.
  + *A shift drawn as a movement.* If the curve slides along itself when income changes, the diagram is wrong however good the sentence is.
  + *Two arrows, one curve.* Show the change with a single arrow from the old curve to the new one, and label the new curve D₁ or D₂.
  + *No conclusion.* The examiner marks the sentence under the diagram; a diagram without one is only half an answer.
]

#v(5pt)

== E.2 Chapters 1 and 2 — Scarcity, Choice and Demand

#table(
  columns: (1.35fr, 1.6fr, 1.85fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Diagram],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What must be on the page],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The sentence to write],
  ),
  [Production possibility curve], [Two goods on the axes, a bowed-out curve, points A (on), B (inside), C (outside)],
  [“B is attainable but inefficient; C is unattainable with present resources and technology.”],
  [Growth of the PPC], [Two curves, the second outside the first, with an arrow],
  [“New resources or better technology shift the frontier outward — the economy can now have more of both goods.”],
  [Demand curve], [Price against quantity, a downward line, dotted lines from a point to both axes],
  [“At ₦40, 60 units are demanded; the curve is the whole relationship, not one point on it.”],
  [Shift of demand], [Two downward curves, arrows left and right, labelled D₁ and D₂],
  [“A rise in income shifts demand right at every price; the price itself has not changed.”],
  [Utility curves], [TU rising then falling; MU falling and crossing zero where TU peaks],
  [“Total utility is maximised where marginal utility is zero; beyond that point MU is negative.”],
  [Consumer equilibrium], [An indifference map and a budget line touching the highest curve],
  [“The consumer chooses the point where the budget line is tangent to an indifference curve.”],
)

#v(5pt)

== E.3 Chapters 3 and 4 — Equilibrium and Elasticity

#table(
  columns: (1.35fr, 1.6fr, 1.85fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Diagram],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What must be on the page],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The sentence to write],
  ),
  [Market equilibrium], [Demand and supply crossing, dotted lines to P₀ and Q₀],
  [“At P₀ the quantity demanded equals the quantity supplied and the market clears.”],
  [Surplus and shortage], [The equilibrium with a price above it and a price below it, and the horizontal gaps],
  [“Above equilibrium the gap is a surplus and price falls; below it the gap is a shortage and price rises.”],
  [Shift of supply], [Two upward curves, the second to the right, with the new equilibrium marked],
  [“Cheaper inputs shift supply right: price falls and quantity rises.”],
  [Price ceiling], [A horizontal line below equilibrium, the shortage marked on the quantity axis],
  [“A maximum price below equilibrium creates excess demand, queues and a black market.”],
  [Price floor], [A horizontal line above equilibrium, the surplus marked],
  [“A minimum price above equilibrium creates excess supply, which the state may have to buy.”],
  [Tax on sellers], [Supply shifting left, the tax wedge between the two curves, the burden split],
  [“The tax raises the price paid by buyers and lowers the price received by sellers; the inelastic side bears more.”],
  [Elastic and inelastic demand], [Two demand curves through one point, one flat and one steep],
  [“The flatter curve is elastic: a small price change produces a large quantity change.”],
  [Revenue test], [A demand curve with the elastic, unit and inelastic stretches marked],
  [“Revenue rises as price falls while demand is elastic, and falls once demand becomes inelastic.”],
)



== E.4 Chapters 5 and 6 — Cost, Revenue and Market Structure

#table(
  columns: (1.35fr, 1.6fr, 1.85fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Diagram],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What must be on the page],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The sentence to write],
  ),
  [Total, average and marginal product], [TP rising then falling; AP and MP inverted U, MP cutting AP at AP's peak],
  [“Marginal product cuts average product at the maximum of average product, and total product peaks where marginal product is zero.”],
  [The seven cost curves], [AFC falling; AVC, AC and MC U-shaped; MC cutting AC and AVC at their minima],
  [“Marginal cost cuts average cost at its minimum, and average fixed cost falls continuously.”],
  [Long-run average cost], [A U-shaped envelope around three short-run curves],
  [“The firm chooses the plant size whose short-run curve touches the envelope at the planned output.”],
  [Break-even and shut-down], [Price lines across the cost curves at minimum AC and minimum AVC],
  [“At minimum AC the firm breaks even; below minimum AVC it shuts down; between the two it produces at a loss.”],
  [Perfect competition], [A horizontal price line equal to MR, with MC crossing it at the chosen output],
  [“The firm is a price taker, so P = AR = MR, and it produces where P = MC.”],
  [Monopoly], [A downward demand curve with MR below it, MC crossing MR, price read off demand],
  [“The monopolist produces where MR = MC and charges the price the demand curve allows at that output.”],
  [Monopoly versus competition], [The competitive output where P = MC and the smaller monopoly output beside it],
  [“The monopolist restricts output, so the triangle between demand and MC is the deadweight loss.”],
  [Kinked demand], [A demand curve kinked at the ruling price, with a vertical gap in MR],
  [“Rivals match a price cut but not a price rise, so the firm has no incentive to move and prices are rigid.”],
)

#v(5pt)

== E.5 The Diagram Checklist

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 11pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[BEFORE YOU PUT THE PEN DOWN]
  #v(4pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 14pt,
    row-gutter: 3pt,
    text(size: 9pt)[☐ both axes labelled], text(size: 9pt)[☐ every curve labelled],
    text(size: 9pt)[☐ original equilibrium marked], text(size: 9pt)[☐ change shown with one arrow],
    text(size: 9pt)[☐ new equilibrium marked], text(size: 9pt)[☐ direction of change written below],
  )
]
