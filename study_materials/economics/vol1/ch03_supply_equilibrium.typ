#import "template.typ": *

#current-chapter.update("Chapter 3: Supply and Equilibrium")

#pagebreak()

#chapter-opener(
  3,
  "Supply and Equilibrium",
  subtitle: "The Law of Supply and Its Determinants, Market Equilibrium, Surplus and Shortage, the Four-Step Method for Every Shift Question, and What a Price Control Actually Does",
  syllabus-ref: "Sec. A • Supply and Price",
  utme-weight: "5 Qs a year on price",
  running: "Supply and Equilibrium",
)

#focus-radar(
  objectives: (
    "State the law of supply and draw the curve from a schedule.",
    "List the determinants of supply, and say which way each one shifts the curve.",
    "Find equilibrium price and quantity from two schedules or two equations.",
    "Explain how a surplus or a shortage pushes the price back to equilibrium.",
    "Work the four-step method on any shift question, and explain a ceiling, a floor, a tax and a subsidy.",
  ),
  hotspots: (
    "“A rise in the cost of raw materials will …” — shift the supply curve to the *left*, raising price and lowering quantity. The option that says *shift demand* is the trap.",
    "“A price above equilibrium creates …” — a *surplus*, and the price is forced down. A shortage belongs to a price *below* equilibrium.",
    "“An increase in demand with supply unchanged causes …” — a rise in both price and quantity. A rise in price with a fall in quantity belongs to a fall in supply.",
    "“A maximum price fixed below equilibrium will lead to …” — a shortage and a black market. A candidate who reads *maximum* as *floor* answers surplus.",
    "“The burden of a tax falls mainly on …” — the side of the market that is less elastic.",
  ),
  trap-summary: "Three slips. (1) Shifting demand when the change is on the supply side, such as a rise in input costs. (2) Turning a price control upside down: a ceiling is a maximum and sits below equilibrium, a floor is a minimum and sits above it. (3) Answering a shift question with one movement when there are two: price and quantity both change, and the option that names only one is incomplete.",
)

// ============================================================================
== 3.1 The Law of Supply

Supply is the quantity of a good that sellers are willing and able to offer at each
price, over a period, other things being equal. The law of supply says the relationship
is positive: higher prices bring forth more supply.

#rule-box("The law of supply")[
  Other things being equal, the higher the price of a good, the greater the quantity supplied;
  and the lower the price, the smaller the quantity supplied.
]

#diagram-fig("diagrams/ch03_supply_curve.svg",
  "The supply curve slopes upward, and the dashed curves show what a shift looks like: right for cheaper inputs or better technology, left for dearer inputs or a tax.", width: 96%)

Three reasons are enough for any question that asks why the curve slopes up: at a higher
price, existing firms expand output; new firms enter the industry; and production that was
uneconomic becomes worth undertaking.

#concept-box("Supply and quantity supplied, again")[
  The distinction that mattered in Chapter 2 matters here in the same way. *Supply* is the
  whole curve and changes only when a determinant changes. *Quantity supplied* is a point on
  the curve and changes when the good's own price changes.

  The one addition: the supply curve is drawn for a given set of input prices, technology and
  number of sellers. Change any of those and the whole curve moves.
]

#worked-example(
  1,
  "The slope, and the reason for it",
  [The supply curve of a commodity slopes upward from left to right because

    A. consumers buy less as the price rises \
    B. producers are willing to supply more at higher prices \
    C. the government fixes a minimum price \
    D. costs of production fall as output rises],
  [
    *Step 1 — whose curve is it?* Supply is the seller's side, so the answer must be about producers. A is about consumers and belongs to the demand curve.

    *Step 2 — the law.* Higher price means a higher return per unit, which brings forth more output from existing firms and draws in new ones. That is B.

    *Step 3 — kill the rest.* C describes a price floor, which fixes one price rather than explaining a slope, and D is a statement about costs that the law does not assume — indeed the short-run law assumes costs eventually rise.

    *Check.* Match the curve to its side of the market before reading the options. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 3.2 The Determinants of Supply

Six things move the supply curve. Two of them — input prices and technology — account for
most questions ever set on the topic.

#rule-box("What shifts supply")[
  + *Cost of inputs.* Dearer raw materials, wages or fuel shift supply *left*; cheaper inputs shift it *right*.
  + *Technology.* Better technology lowers unit cost and shifts supply *right*.
  + *Taxes and subsidies.* A tax is a cost, so supply shifts *left*; a subsidy is a negative cost, so supply shifts *right*.
  + *Number of sellers.* More firms in the industry shift supply *right*.
  + *Weather and natural conditions.* A good harvest shifts agricultural supply right; drought shifts it left.
  + *Expectation of future prices.* Expecting a higher price next month, sellers hold back today, shifting supply *left*.
]

#trap-box("A change in price never shifts supply")[
  The one thing that cannot shift a supply curve is the price of the good itself. A question
  that says *the price of garri rises, so the supply of garri shifts right* is testing exactly
  that: the price rise is a *movement along* the supply curve, an expansion of supply, and the
  curve stays where it is.
]

#concept-box("The two words that decide a supply question")[
  + *Cost* — anything that raises the cost of making the good shifts supply left.
  + *Capacity* — anything that lets the industry make more at the same cost shifts supply right.

  Almost every supply determinant is one of those two in disguise: a tax is a cost, a subsidy
  is a cost removed, better technology is capacity, and an extra firm is capacity.
]

// ============================================================================
== 3.3 Equilibrium, Surplus and Shortage

Put the two curves in one diagram and they cross at exactly one price. That price is the
equilibrium: the price at which the quantity buyers want equals the quantity sellers
offer.

#diagram-fig("diagrams/ch03_equilibrium.svg",
  "Equilibrium at E, where the curves cross. Above it there is a surplus and the price is pushed down; below it there is a shortage and the price is pulled up.", width: 96%)

#rule-box("The mechanism, in three lines")[
  + *Price above equilibrium:* quantity supplied exceeds quantity demanded, a surplus appears, and sellers cut the price.
  + *Price below equilibrium:* quantity demanded exceeds quantity supplied, a shortage appears, and buyers bid the price up.
  + *At equilibrium:* neither pressure exists, and the price stays until a curve moves.
]

Finding the equilibrium from two schedules is arithmetic, and the paper sets it often.
Read down the two quantity columns until the numbers match; the price beside them is the
equilibrium price. With equations, set quantity demanded equal to quantity supplied and
solve for price.

#diagram-fig("diagrams/ch03_four_step.svg",
  "The four-step method. Steps 1 and 2 settle the direction; step 3 reads the new crossing; step 4 catches the trap the question is built around.", width: 100%)

#worked-example(
  2,
  "Equilibrium from two schedules",
  [At a price of ₦4, quantity demanded is 60 and quantity supplied is 20. At ₦6, demand is 50 and supply is 30. At ₦8, demand is 40 and supply is 40. At ₦10, demand is 30 and supply is 50. The equilibrium price is

    A. ₦4 \
    B. ₦6 \
    C. ₦8 \
    D. ₦10],
  [
    *Step 1 — the definition.* Equilibrium is where quantity demanded equals quantity supplied. Read the two columns rather than the price column.

    *Step 2 — find the match.* Only at ₦8 are the two quantities both 40. Every other row is a surplus (₦10) or a shortage (₦4, ₦6).

    *Step 3 — check with the mechanism.* At ₦10 supply exceeds demand by 10, which would push the price down towards ₦8; at ₦4 demand exceeds supply by 40, which would push it up. Both pressures point at ₦8.

    *Check.* Equilibrium is a *quantity* match, not the middle of the price column. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.4 The Four Cases Every Shift Question Uses

There are four things that can happen to a market, and the examiner chooses one of them.
Learn the four and the answer follows from the direction of the arrow.

#table(
  columns: (1.5fr, 1.3fr, 1.1fr, 1.1fr),
  inset: (x: 5pt, y: 4pt),
  align: (left + horizon, center + horizon, center + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Change],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Curve],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Price],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
  ),
  [Demand rises], [D shifts right], [up], [up],
  [Demand falls], [D shifts left], [down], [down],
  [Supply rises], [S shifts right], [down], [up],
  [Supply falls], [S shifts left], [up], [down],
)

#v(3pt)

#concept-box("The question the four cases cannot answer")[
  If demand and supply move *together* — demand rises and supply falls at the same time — the
  price change is certain (up) but the quantity change is not, because the two effects push it
  in opposite directions. A well-set question will not ask for the quantity in that case, and a
  badly set one expects the answer *indeterminate*.

  That word is worth remembering: it is the correct option more often than candidates believe.
]

#worked-example(
  3,
  "The input cost, and the two answers",
  [The cost of the raw material used in making a product rises sharply, other things being equal. In the market for the product, the equilibrium price will

    A. rise and the equilibrium quantity will rise \
    B. rise and the equilibrium quantity will fall \
    C. fall and the equilibrium quantity will rise \
    D. fall and the equilibrium quantity will fall],
  [
    *Step 1 — which curve?* A raw material is a cost of production, so the change is on the supply side: supply shifts left.

    *Step 2 — read the four cases.* A fall in supply raises price and lowers quantity — case four in the table above.

    *Step 3 — check with the diagram.* The supply curve moves left along an unchanged demand curve, so the crossing moves up and to the left: dearer and scarcer.

    *Check.* A cost change is never a demand change. Say *supply left* before you look at the options, and only one of them survives. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 3.5 Price Controls, Taxes and Subsidies

A government that thinks the equilibrium price is wrong can legislate against it. What
it cannot do is repeal the curves, and the gap between the two is the whole topic.

#diagram-fig("diagrams/ch03_controls.svg",
  "A ceiling is a maximum price set below equilibrium, and it creates a shortage. A floor is a minimum price set above equilibrium, and it creates a surplus.", width: 100%)

#rule-box("Controls, taxes and subsidies, each in one line")[
  + *Maximum price (ceiling), set below equilibrium:* quantity demanded exceeds quantity supplied, so a shortage appears, with queues, rationing and a black market.
  + *Minimum price (floor), set above equilibrium:* quantity supplied exceeds quantity demanded, so a surplus appears, and the state may have to buy the excess or impose quotas.
  + *Tax on a good:* shifts supply left, raises the price buyers pay, lowers the price sellers receive, and reduces quantity.
  + *Subsidy:* shifts supply right, lowers the price buyers pay, and raises quantity.
]

#trap-box("Who really pays the tax")[
  The burden does not fall on whoever hands the money over. It falls mostly on the side of
  the market that is *less elastic* — the side that cannot walk away. If demand is inelastic,
  buyers pay most of the tax; if supply is inelastic, sellers absorb most of it. That question
  is set in Chapter 4 and answered there, but the direction is worth knowing now.
]

#worked-example(
  4,
  "The ceiling, read correctly",
  [A government fixes a maximum price for a commodity below its equilibrium price. The most likely immediate result is

    A. a surplus of the commodity \
    B. a shortage of the commodity \
    C. an increase in supply \
    D. a fall in demand],
  [
    *Step 1 — decode the control.* *Maximum price below equilibrium* is a binding ceiling: sellers may not charge the market price, so they offer less.

    *Step 2 — compare the quantities.* At a price below equilibrium, quantity demanded exceeds quantity supplied, and the difference is a shortage.

    *Step 3 — kill the rest.* A is the result of a *floor* above equilibrium, and the two are mirror images. C is the wrong direction for supply at a lower price, and D confuses a movement along demand with a shift of it.

    *Check.* Ceiling below → shortage. Floor above → surplus. Say it as a pair. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "Two curves at once",
  [In the market for a staple food, a poor harvest coincides with a sharp rise in population. What can be said with certainty about the new equilibrium?

    A. Both price and quantity will rise \
    B. Both price and quantity will fall \
    C. Price will rise, but the effect on quantity is indeterminate \
    D. Quantity will rise, but the effect on price is indeterminate],
  [
    *Step 1 — name both changes.* A poor harvest is a fall in supply (S shifts left); a larger population is a rise in demand (D shifts right).

    *Step 2 — work each separately.* The fall in supply raises price and lowers quantity. The rise in demand raises price and raises quantity.

    *Step 3 — combine.* Both changes push the price up, so the price certainly rises. They push quantity in opposite directions, so the quantity change cannot be predicted without knowing their relative sizes — *indeterminate*.

    *Check.* When the two curves move in opposite directions, one variable is certain and the other is not. Find the certain one. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: supply and equilibrium.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Supply is the quantity sellers will offer at each price, and it slopes upward because higher prices bring forth more output and more firms. Input costs, technology, taxes and subsidies, the number of sellers, weather and expectations shift the curve; the good's own price never does. Equilibrium is the price at which the two quantities are equal, and the market reaches it by itself: a surplus pushes the price down and a shortage pulls it up. Four shifts produce four certain answers — demand up, demand down, supply up, supply down — and when both curves move at once, one variable is certain and the other is indeterminate. A ceiling below equilibrium creates a shortage, a floor above it creates a surplus, a tax shifts supply left and a subsidy shifts it right, and the burden of a tax settles on the side of the market that cannot walk away.
  ]
]

== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [An increase in the cost of production will shift the supply curve], [to the right], [to the left], [along itself], [not at all])

#mcq(2, [At a price above the equilibrium price there will be], [a shortage, and the price will rise], [a surplus, and the price will fall], [a surplus, and the price will rise], [equilibrium in the market])

#mcq(3, [A government fixes a minimum price above the equilibrium price. The result is], [a shortage], [a surplus], [a fall in supply], [a rise in demand])

#mcq(4, [Demand and supply both increase. Which of the following is certain?], [price rises], [price falls], [quantity rises], [quantity falls])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [To the left: dearer inputs make production less profitable at every price. A would be right for cheaper inputs or better technology; C is what happens when the good's own price changes, which is not what the stem says.]),
  ("B", [A surplus, and the price falls. Above equilibrium sellers offer more than buyers want, so unsold stock forces the price down — the mirror image of a shortage at a price below equilibrium.]),
  ("B", [A surplus. A minimum above equilibrium is a binding floor: sellers must be paid at least that price, buyers want less, and the unsold excess is the surplus the state may have to buy.]),
  ("C", [Quantity rises. Both shifts push quantity up; they push price in opposite directions, so the price change depends on their relative size and cannot be stated with certainty.]),
))

#chapter-checklist("Before you leave Chapter 3", (
  [State the law of supply and give three reasons for the upward slope.],
  [Name six determinants of supply and the direction each one shifts the curve.],
  [Find an equilibrium from a two-column schedule, and from two equations.],
  [Explain, in the language of surplus and shortage, how a market returns to equilibrium.],
  [Recite the four cases: demand up, demand down, supply up, supply down — with price and quantity for each.],
  [Say what a ceiling below equilibrium and a floor above it each produce, and where a tax's burden falls.],
))

#concept-box("Carry this into Chapter 4")[
  Chapters 2 and 3 gave you the *direction* of every change. Chapter 4 gives you the *size*. A price rise of ₦1 may leave buyers almost untouched or empty the market, and the difference is elasticity — the number that turns a qualitative answer into a calculation.
]

#include "drill_ch03.typ"
