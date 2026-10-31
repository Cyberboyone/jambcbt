#import "template.typ": *

#current-chapter.update("Appendix G: Glossary")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix G: Glossary]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX G]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every technical term the volume uses, defined in the words the examiner expects and
    no more. Where a term has a textbook definition and a careless everyday meaning, the
    everyday meaning is named as the trap.
  ]
]

#v(5pt)

#[
  #set text(size: 8.3pt)
  #set par(leading: 0.6em)
#table(
  columns: (0.95fr, 2.95fr, 0.95fr, 2.95fr),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: (x, y) => (bottom: 0.3pt + jamb-border),
  fill: (x, y) => if calc.odd(y) { white } else { jamb-light },
  [*Abnormal profit*], [Revenue above every cost, including normal profit; also called supernormal or economic profit.], [*Absolute advantage*], [The ability to produce more of a good than another country with the same resources.],
  [*Allocation of resources*], [The distribution of factors of production among competing uses.], [*Average cost*], [Total cost divided by output; also called average total cost.],
  [*Average fixed cost*], [Total fixed cost divided by output; it falls continuously.], [*Average product*], [Total product divided by the number of units of the variable factor.],
  [*Average revenue*], [Total revenue divided by output, which equals the price.], [*Average variable cost*], [Total variable cost divided by output.],
  [*Balance of payments*], [The record of all transactions between residents of a country and the rest of the world.], [*Barrier to entry*], [Anything that makes it hard for a new firm to enter a market: patents, licences, capital cost.],
  [*Black market*], [Illegal trading at a price above a legal maximum, or below a legal minimum.], [*Break-even*], [The output at which total revenue equals total cost.],
  [*Budget line*], [The combinations of two goods a consumer can just afford with a given income.], [*Capital*], [Produced means of production: machines, tools, buildings.],
  [*Cartel*], [An agreement among firms to fix prices and restrict output.], [*Ceteris paribus*], [Other things being equal — the assumption behind every curve in the book.],
  [*Circular flow*], [The movement of income between households and firms, with leakages and injections.], [*Command economy*], [An economy in which the state plans the allocation of resources.],
  [*Complement*], [A good used together with another; a rise in one's price reduces demand for the other.], [*Consumer good*], [A good that satisfies a want directly.],
  [*Consumer surplus*], [The difference between what a buyer would pay and what the buyer actually pays.], [*Contestable market*], [A market in which the threat of entry disciplines the incumbent even without entry.],
  [*Cost-push inflation*], [Inflation caused by rising costs of production.], [*Cross elasticity*], [The responsiveness of the demand for one good to a change in the price of another.],
  [*Deadweight loss*], [The loss of total surplus when output is below the efficient level.], [*Demand*], [The willingness and ability to buy a quantity at each price.],
  [*Demand-pull inflation*], [Inflation caused by aggregate demand growing faster than output.], [*Diminishing returns*], [The short-run law that each extra unit of a variable factor adds less output than the one before.],
  [*Diseconomies of scale*], [Rising long-run average cost as the firm grows.], [*Economic good*], [A scarce good that commands a price.],
  [*Economic growth*], [A sustained rise in real national output.], [*Economies of scale*], [Falling long-run average cost as the firm grows.],
  [*Effective demand*], [Desire backed by the ability to pay.], [*Elasticity*], [The percentage responsiveness of one variable to another.],
  [*Entrepreneur*], [The factor that organises the other three and bears the risk.], [*Equilibrium price*], [The price at which quantity demanded equals quantity supplied.],
  [*Excess demand*], [Quantity demanded above quantity supplied at the ruling price — a shortage.], [*Excess supply*], [Quantity supplied above quantity demanded at the ruling price — a surplus.],
  [*Extension of demand*], [The rise in quantity demanded after a fall in the good's own price.], [*Factors of production*], [Land, labour, capital and entrepreneurship.],
  [*Fixed cost*], [A cost that does not vary with output in the short run.], [*Free good*], [A good that is not scarce and so has no opportunity cost.],
  [*Frictional unemployment*], [Unemployment of people moving between jobs.], [*Giffen good*], [An inferior staple whose demand rises when its price rises.],
  [*GDP*], [The market value of final goods and services produced within a country in a year.], [*GNP*], [GDP plus net factor income from abroad.],
  [*Indifference curve*], [A curve of combinations of two goods giving equal satisfaction.], [*Inferior good*], [A good whose demand falls when income rises.],
  [*Inflation*], [A persistent rise in the general price level.], [*Interest*], [The reward for capital.],
  [*Law of demand*], [Price and quantity demanded move in opposite directions.], [*Law of supply*], [Price and quantity supplied move in the same direction.],
  [*Long run*], [A period long enough for every factor to become variable.], [*Luxury good*], [A good with an income elasticity above one.],
  [*Marginal cost*], [The change in total cost from producing one more unit.], [*Marginal product*], [The change in total product from one more unit of the variable factor.],
  [*Marginal revenue*], [The change in total revenue from selling one more unit.], [*Marginal utility*], [The change in total utility from consuming one more unit.],
  [*Market structure*], [The number of firms, product type and entry conditions in a market.], [*Mixed economy*], [An economy in which private and public sectors both allocate resources.],
  [*Monopolistic competition*], [Many firms selling differentiated products with free entry.], [*Monopoly*], [A market with one seller and blocked entry.],
  [*Monopsony*], [A market with a single buyer.], [*Multiplier*], [The change in national income produced by a change in spending, equal to 1 ÷ (1 − MPC).],
  [*Natural monopoly*], [A monopoly that arises because average cost falls over the whole range of demand.], [*Necessity*], [A good with an income elasticity between zero and one.],
  [*Normal good*], [A good whose demand rises when income rises.], [*Normal profit*], [The minimum profit needed to keep the entrepreneur in the industry; it is part of cost.],
  [*Oligopoly*], [A market with a few interdependent firms.], [*Opportunity cost*], [The value of the next best alternative forgone.],
  [*Perfect competition*], [Many sellers of an identical product with free entry and perfect information.], [*Price ceiling*], [A legal maximum price, set below equilibrium to be effective.],
  [*Price discrimination*], [Charging different prices to different buyers for the same good.], [*Price floor*], [A legal minimum price, set above equilibrium to be effective.],
  [*Price mechanism*], [The use of prices to ration, signal and reward in a market economy.], [*Producer surplus*], [The difference between the price received and the lowest acceptable price.],
  [*Production possibility curve*], [The frontier of maximum output combinations from given resources.], [*Productivity*], [Output per unit of input.],
  [*Profit*], [Total revenue minus total cost; the reward for entrepreneurship.], [*Progressive tax*], [A tax that takes a rising share of income as income rises.],
  [*Proportional tax*], [A tax that takes the same share of income at every level.], [*Public good*], [A good that is non-rival and non-excludable, such as street lighting.],
  [*Real income*], [Income measured in purchasing power rather than naira.], [*Regressive tax*], [A tax that takes a larger share of the income of the poor than of the rich.],
  [*Rent*], [The reward for land.], [*Scale of preference*], [Wants arranged in order of importance.],
  [*Scarcity*], [Resources limited relative to wants.], [*Shift of demand*], [A movement of the whole demand curve after a change in a determinant.],
  [*Shortage*], [Excess demand at a price below equilibrium.], [*Shut-down point*], [The output at which price equals minimum average variable cost.],
  [*Subsidy*], [A payment to producers or consumers that lowers the effective price.], [*Substitute*], [A good that can replace another; a rise in one's price raises demand for the other.],
  [*Sunk cost*], [A cost already incurred that cannot be recovered.], [*Supply*], [The quantity producers offer at each price.],
  [*Surplus*], [Excess supply at a price above equilibrium; also the gain from trade, as in consumer surplus.], [*Tariff*], [A tax on imported goods.],
  [*Total cost*], [Fixed cost plus variable cost.], [*Total revenue*], [Price multiplied by quantity sold.],
  [*Total utility*], [The whole satisfaction from the units consumed.], [*Underemployment*], [Working fewer hours, or below skill, than one would like.],
  [*Unemployment*], [The state of being able and willing to work but without a job.], [*Utility*], [The satisfaction derived from consuming a good.],
  [*Variable cost*], [A cost that varies with output.], [*Veblen good*], [A good whose demand rises with price because of display.],
  [*Wants*], [Unlimited desires for goods and services.], [*Welfare economics*], [The study of how resource allocation affects well-being.],
)
]

#v(6pt)

== G.2 Twelve Pairs That Are Always Confused

#table(
  columns: (1.25fr, 1.75fr, 1.75fr),
  inset: (x: 5pt, y: 4.5pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The pair],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The first means],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The second means],
  ),
  [Demand ÷ quantity demanded], [the whole curve or schedule], [one point on that curve],
  [Movement ÷ shift], [a change caused by the good's own price], [a change caused by a determinant],
  [Surplus ÷ surplus], [excess supply above equilibrium], [the gain from trade, in welfare terms],
  [Normal ÷ supernormal profit], [the minimum return, included in cost], [anything above that minimum],
  [Giffen ÷ Veblen], [an inferior staple breaking the law], [a display good breaking the law],
  [Economies of scale ÷ diminishing returns], [a long-run statement about average cost], [a short-run law about marginal product],
  [Break-even ÷ shut-down], [price equals average cost], [price equals minimum average variable cost],
  [Ceiling ÷ floor], [a maximum price, below equilibrium], [a minimum price, above equilibrium],
  [Elasticity ÷ slope], [a ratio of percentages], [a ratio of absolute changes],
  [Capital ÷ money], [produced means of production], [a claim on goods, and a medium of exchange],
  [Monopoly ÷ monopsony], [one seller], [one buyer],
  [Tax ÷ subsidy], [a payment to government that shifts supply left], [a payment from government that shifts supply right],
)

#v(5pt)

#shortcut-box("How to use this glossary in the last week")[
  + *Read the definitions aloud, not silently.* A definition you can say is a definition you can write under pressure.
  + *Cover the right-hand column* and work down one letter of the alphabet at a time; five minutes a letter is the whole glossary in a week.
  + *Mark the three terms you got wrong each day* and put them at the top of the next day's list. The list should shrink, not grow.
]

#v(4pt)

#text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[Where a definition in the chapter is longer than the one here, the chapter's version is the one to write in an essay question; the glossary's version is the one to recognise in an objective question. The two are the same idea at different lengths.]
