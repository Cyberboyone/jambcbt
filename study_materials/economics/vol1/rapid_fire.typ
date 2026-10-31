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
    formulas and twenty diagram facts. Cover the right-hand column with a sheet of
    paper and work down the list — ten seconds a line. Anything you cannot answer in
    ten seconds is a chapter to reread tonight.
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
  [Scarcity], [resources limited relative to wants],
  [Opportunity cost], [the value of the next best alternative forgone],
  [Scale of preference], [wants arranged in order of importance],
  [Free good], [unlimited in supply at zero opportunity cost],
  [Economic good], [scarce, so it commands a price and a sacrifice],
  [Production], [the creation of utility],
  [Capital], [produced means of production — machines, tools, buildings],
  [Consumer good], [a good that satisfies a want directly],
  [Production possibility curve], [the locus of maximum output combinations from given resources],
  [Economic growth], [an outward shift of the production possibility curve],
  [Demand], [willingness and ability to buy a quantity at a price],
  [Effective demand], [desire backed by purchasing power],
  [Law of demand], [price and quantity demanded move in opposite directions],
  [Demand schedule], [a table of quantities demanded at different prices],
  [Extension of demand], [a movement down a demand curve after a price fall],
  [Shift of demand], [a move of the whole curve after a change in a determinant],
  [Giffen good], [an inferior staple whose demand rises when its price rises],
  [Veblen good], [a good whose demand rises with price because of display],
  [Utility], [the satisfaction derived from consuming a good],
  [Marginal utility], [the change in total utility from one more unit],
)
]

#pagebreak()

== A.2 Twenty Formulas and Numbers

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 8.4pt, weight: "bold", fill: jamb-green)[A NOTE ON THE COLUMN]
  #v(3pt)
  #text(size: 8.8pt)[Every answer in this table begins with an arrow, so the table can be read left to right as a formula sheet. Percentages are used throughout because elasticity is unit-free: *10 ÷ 20 = 0.5* is a wrong answer even when the two numbers are the right two numbers.]
]

#v(4pt)

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
  [Price elasticity of demand], [→ % change in quantity demanded ÷ % change in price],
  [Price elasticity of supply], [→ % change in quantity supplied ÷ % change in price],
  [Income elasticity of demand], [→ % change in quantity ÷ % change in income],
  [Cross elasticity of demand], [→ % change in quantity of X ÷ % change in price of Y],
  [Total revenue], [→ price × quantity sold],
  [Total cost], [→ total fixed cost + total variable cost],
  [Average cost], [→ total cost ÷ output],
  [Average fixed cost], [→ total fixed cost ÷ output],
  [Average variable cost], [→ total variable cost ÷ output],
  [Marginal cost], [→ change in total cost ÷ change in output],
  [Profit], [→ total revenue − total cost],
  [Break-even output], [→ fixed cost ÷ (price − average variable cost)],
  [Profit-maximising rule], [→ produce where marginal revenue equals marginal cost],
  [Shut-down rule], [→ close if price falls below minimum average variable cost],
  [Credit multiplier], [→ 1 ÷ cash reserve ratio],
  [National income multiplier], [→ 1 ÷ (1 − marginal propensity to consume)],
  [Revenue at unit elasticity], [→ maximum total revenue],
  [Monopoly marginal revenue], [→ a − 2bQ when demand is P = a − bQ],
  [Consumer surplus], [→ willingness to pay − price paid],
  [Producer surplus], [→ price received − minimum acceptable price],
)
]

#v(4pt)

#rule-box("Three substitutions that are always confused")[
  + *Marginal cost and average cost.* MC is the change in *total* cost, so fixed cost never enters it; AC is total cost divided by output, so fixed cost is spread through it.
  + *Average product and marginal product.* AP is total product divided by the number of workers; MP is the change in total product from one more worker.
  + *Consumer surplus and producer surplus.* Consumer surplus starts from what the buyer *would* pay; producer surplus starts from what the seller *would accept*. Both are measured against the price actually paid.
]

#pagebreak()

== A.3 Twenty Diagram Facts

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
  [Demand curve slopes], [downward, from left to right],
  [Supply curve slopes], [upward, from left to right],
  [Market equilibrium], [where the demand and supply curves intersect],
  [Price ceiling], [a maximum set below equilibrium; it creates a shortage],
  [Price floor], [a minimum set above equilibrium; it creates a surplus],
  [A tax on sellers], [shifts supply left, raising price and cutting quantity],
  [A subsidy to producers], [shifts supply right, lowering price and raising quantity],
  [An increase in demand], [shifts demand right; price and quantity both rise],
  [A decrease in supply], [shifts supply left; price rises and quantity falls],
  [Perfectly inelastic demand], [a vertical line],
  [Perfectly elastic demand], [a horizontal line],
  [Demand curve facing a perfect competitor], [horizontal at the market price],
  [Demand curve facing a monopolist], [the downward-sloping market demand curve],
  [Marginal cost crosses average cost], [at the minimum point of average cost],
  [Average fixed cost curve], [a rectangular hyperbola, falling towards both axes],
  [Long-run average cost curve], [the envelope of the short-run average cost curves],
  [Perfect competition in the long run], [price settles at minimum average cost; normal profit],
  [Monopoly equilibrium], [output where MR equals MC, price read off the demand curve],
  [Kinked demand curve], [explains price rigidity in oligopoly],
  [Deadweight loss], [the triangle between demand and marginal cost, lost by producing too little],
)
]

#v(5pt)

#shortcut-box("How to drill this appendix")[
  + *Cover the right column* with a folded sheet and work down each table without writing. Ten seconds a line is the target, and a miss is information, not a failure.
  + *Say the formula out loud* before you check it. A formula you can recite is a formula you can use under the clock; one you can only recognise is not yet yours.
  + *Return after three days.* Recall that survives a delay is worth more than recall that only works while the page is warm.
]

#v(6pt)

== A.4 The Seven-Day Rapid-Fire Plan

#text(size: 9.2pt)[Sixty pairs are too many for one sitting. Four short sessions do the work, with a timed pass on the seventh day.]

#v(3pt)

#table(
  columns: (0.85fr, 1.85fr, 2.1fr),
  inset: (x: 5pt, y: 4.0pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Day],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Cover the right column and work],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Then check],
  ),
  [*1*], [A.1 definitions, then A.2 formulas], [every pair you missed, written out in full],
  [*2–3*], [A.3 diagram facts, then A.1 again], [the definitions that were slow the first time],
  [*4–5*], [all sixty at speed, ten seconds a line], [the eight slowest pairs, twice],
  [*6–7*], [all sixty with the column uncovered], [sixty out of sixty, or the chapter named in the miss],
)
