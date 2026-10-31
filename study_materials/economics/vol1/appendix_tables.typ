#import "template.typ": *

#current-chapter.update("Appendix D: Quick-Revision Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Quick-Revision Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Quick-Revision Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Seven tables that hold the whole microeconomics half of the paper in a form that
    can be revised in forty minutes. Read them the night before, and again in the
    twenty minutes before you enter the hall.
  ]
]

#v(5pt)

== D.1 The Six Chapters in Six Lines

#table(
  columns: (0.4fr, 1.35fr, 3.1fr),
  inset: (x: 5pt, y: 4pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch.],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Idea],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The one sentence that answers the chapter],
  ),
  [*1*], [Scarcity and choice], [Resources are limited, so every choice costs the next best alternative, and the PPC draws the limit of what can be chosen.],
  [*2*], [Demand], [Price and quantity demanded move in opposite directions, and utility explains why the curve slopes down.],
  [*3*], [Supply and equilibrium], [Supply answers demand at a price, and the market clears where the two curves cross.],
  [*4*], [Elasticity], [Elasticity is the size of the response in percentages, and the sign of income and cross elasticity names the good.],
  [*5*], [Production and cost], [Diminishing returns produce the cost curves, and profit is maximised where marginal revenue equals marginal cost.],
  [*6*], [Market structures], [The fewer the sellers, the more price power — and the smaller the output, the larger the deadweight loss.],
)

#v(6pt)

== D.2 Every Curve in the Volume

#table(
  columns: (1.25fr, 0.95fr, 2.65fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Curve],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What moves it, and what a movement means],
  ),
  [Production possibility curve], [bowed out], [Technology, resources and their quality shift it; a point inside is unemployment.],
  [Demand curve], [downward], [Own price moves along it; income, tastes, population, substitutes and complements shift it.],
  [Supply curve], [upward], [Own price moves along it; input costs, technology, taxes, subsidies and seller numbers shift it.],
  [Total utility], [rises, peaks, falls], [Peaks where marginal utility is zero; beyond that point extra units reduce satisfaction.],
  [Marginal utility], [downward], [Falls with every extra unit — the law of diminishing marginal utility.],
  [Indifference curve], [convex to origin], [A higher curve is preferred; the slope is the marginal rate of substitution.],
  [Budget line], [straight, downward], [Income shifts it parallel; a price change rotates it.],
  [Total product], [S-shaped, then falling], [Rises fastest where marginal product peaks, peaks where MP is zero.],
  [Average and marginal product], [inverted U], [MP cuts AP at AP's maximum; MP turns negative in stage three.],
  [Total cost], [upward], [Starts at fixed cost, then rises at an increasing rate.],
  [Average fixed cost], [falling hyperbola], [Falls continuously and never touches either axis.],
  [Average and marginal cost], [U-shaped], [MC cuts AC and AVC at their minimum points.],
  [Total revenue under competition], [straight line], [Slope equals the market price, because price is constant.],
  [Demand facing a competitor], [horizontal], [The firm can sell any quantity at the market price; it is a price taker.],
  [Demand facing a monopolist], [downward], [The market demand curve; to sell more, the monopolist must cut the price.],
  [Marginal revenue under monopoly], [downward, steeper], [Falls twice as fast as the price: MR = a − 2bQ when P = a − bQ.],
  [Kinked demand curve], [kinked], [Elastic above the ruling price, inelastic below it — so prices stick.],
  [Long-run average cost], [U-shaped envelope], [Falls with economies of scale, rises with diseconomies.],
)



== D.3 The Four Elasticities Side by Side

#table(
  columns: (0.95fr, 1.0fr, 1.15fr, 1.9fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Elasticity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What the number means],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How the examiner phrases it],
  ),
  [*PED*], [%ΔQd ÷ %ΔP], [Above 1 elastic, below 1 inelastic, 1 unit elastic, 0 vertical, ∞ horizontal],
  [“A 10 per cent rise in price reduces sales by 25 per cent. Find the elasticity.”],
  [*PES*], [%ΔQs ÷ %ΔP], [Above 1 elastic, below 1 inelastic; supply is more elastic in the long run],
  [“Supply rises by 4 per cent when price rises by 8 per cent. Comment on supply.”],
  [*YED*], [%ΔQd ÷ %ΔY], [Positive below 1 necessity, above 1 luxury, negative inferior, zero fixed consumption],
  [“Income rises and demand for the good falls. What kind of good is it?”],
  [*XED*], [%ΔQx ÷ %ΔPy], [Positive substitutes, negative complements, zero unrelated],
  [“A rise in the price of tea raises the demand for coffee. Find the cross elasticity.”],
)

#v(5pt)

#trap-box("The three arithmetic habits that save five marks")[
  + *Divide percentages, not quantities.* 10 ÷ 20 = 0.5 only if the 10 and the 20 are already percentages; if they are units, convert first.
  + *Use the same base for both changes.* Price from ₦20 to ₦25 is a 25 per cent rise on the old price, not 20 per cent on the new one — the paper almost always uses the original value.
  + *Keep the sign while working, then interpret it.* A negative XED that you drop halfway through becomes a wrong answer even though the arithmetic was right.
]

#v(5pt)

== D.4 The Seven Costs, and What Each One Answers

#table(
  columns: (0.95fr, 1.30fr, 1.05fr, 2.0fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Cost],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question it answers],
  ),
  [TFC], [fixed total], [horizontal], [What must be paid even at zero output?],
  [TVC], [variable total], [rises from zero], [What does output itself cost?],
  [TC], [TFC + TVC], [rises from TFC], [What does the whole operation cost?],
  [AFC], [TFC ÷ Q], [falling hyperbola], [How much fixed cost does each unit carry?],
  [AVC], [TVC ÷ Q], [U-shaped], [What does each unit cost in variable terms?],
  [AC], [TC ÷ Q], [U-shaped, above AVC], [What does each unit cost in total?],
  [MC], [ΔTC ÷ ΔQ], [U-shaped, cuts AC at minimum], [What does one more unit add to the bill?],
)

#v(5pt)

#rule-box("The three crossing rules")[
  + *MC cuts AC at the minimum of AC.* Below that point MC is dragging the average down; above it, MC is pulling the average up.
  + *MC cuts AVC at the minimum of AVC,* and the minimum of AVC is the shut-down price.
  + *AFC falls forever* and is the vertical distance between AC and AVC at every output.
]



== D.5 The Four Market Structures

#table(
  columns: (1.0fr, 0.85fr, 0.95fr, 0.8fr, 1.6fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Sellers],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Product],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Entry],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Price and output],
  ),
  [Perfect competition], [very many], [identical], [free], [price taker; P = MC; normal profit in the long run],
  [Monopolistic competition], [many], [differentiated], [free], [a little price power; excess capacity in the long run],
  [Oligopoly], [few], [identical or differentiated], [blocked], [interdependence; kinked demand; cartels possible],
  [Monopoly], [one], [unique], [blocked], [price maker; MR = MC; higher price, lower output, deadweight loss],
)

#v(5pt)

== D.6 Who Gains and Who Loses

#table(
  columns: (1.25fr, 1.45fr, 1.35fr, 1.25fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Intervention],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gainers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Losers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The exam sentence],
  ),
  [Price ceiling], [consumers who can buy], [producers; buyers who cannot], [“a shortage and a black market”],
  [Price floor], [producers who sell], [consumers; the taxpayer who buys the surplus], [“a surplus and unsold stock”],
  [Tax on sellers], [government], [buyers and sellers, in shares set by elasticity], [“the burden falls on the inelastic side”],
  [Subsidy], [buyers and producers], [the taxpayer], [“price falls and quantity rises”],
  [Monopoly], [the monopolist], [consumers; society through deadweight loss], [“higher price, lower output”],
  [Cartel], [member firms], [consumers; firms outside the cartel], [“restricted output, higher price”],
)

#v(6pt)

== D.7 The Numbers Worth Knowing

#table(
  columns: (1.6fr, 3.2fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Fact],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Number or rule],
  ),
  [Economics paper], [40 questions, 30 minutes, one mark each, no negative marking],
  [Seconds per question], [45 seconds, or 60 if you bank the easy ones first],
  [Micro share of the paper], [about 25 of 40 questions, or 60 per cent],
  [Cash reserve ratio and multiplier], [20 per cent gives a multiplier of 5],
  [Marginal propensity to consume], [0.8 gives a multiplier of 5],
  [Value added tax in Nigeria], [7.5 per cent],
  [Company income tax, large firms], [30 per cent],
  [Unit elasticity], [total revenue at its maximum],
  [Break-even], [TR = TC, or price = average cost],
  [Shut-down], [price below minimum average variable cost],
)
