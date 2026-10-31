#import "template.typ": *

#current-chapter.update("Chapter 4: Elasticity")

#pagebreak()

#chapter-opener(
  4,
  "Elasticity",
  subtitle: "Price Elasticity of Demand and How to Compute It, the Revenue Test, the Four Determinants, Income and Cross Elasticity, and Elasticity of Supply with the Burden of a Tax",
  syllabus-ref: "Sec. A • Elasticity",
  utme-weight: "4 Qs a year on elasticity",
  running: "Elasticity",
)

#focus-radar(
  objectives: (
    "Compute price elasticity of demand from two prices and two quantities.",
    "Classify a good as elastic, unit elastic or inelastic, and use the revenue test to check the answer.",
    "Name the four determinants of elasticity and predict which of two goods is more elastic.",
    "Compute income and cross elasticity and use the sign to name the good.",
    "Compute elasticity of supply, and say where the burden of a tax falls.",
  ),
  hotspots: (
    "“A 10% fall in price raises quantity demanded by 25%. Demand is …” — 25 ÷ 10 = 2.5, so elastic. The trap is to answer *inelastic* because the price fell.",
    "“If demand is inelastic, a price rise will …” — raise total revenue. The revenue test is the commonest elasticity question in the paper.",
    "“Income elasticity of demand is negative. The good is …” — inferior. The sign, not the size, answers it.",
    "“Cross elasticity between two goods is positive. They are …” — substitutes.",
    "“The burden of a tax falls mainly on the side of the market that is …” — less elastic.",
  ),
  trap-summary: "Three slips. (1) Dividing the price change by the quantity change, which inverts the formula and turns every elastic good into an inelastic one. (2) Reading the sign of PED as meaningful: convention quotes it positive, and only income and cross elasticity carry a sign that names something. (3) Confusing a large price change with an elastic response — elasticity compares two percentages, and a good can have a large price rise and an almost unchanged quantity.",
)

// ============================================================================
== 4.1 Measuring Price Elasticity of Demand

Elasticity measures *how much* quantity responds to a change in price. It is a ratio of
two percentage changes, which is why it has no units and can be compared across goods as
different as salt and cars.

#rule-box("The formula, and the sign convention")[
  PED = percentage change in quantity demanded ÷ percentage change in price

  Percentage change in quantity = (change in Q ÷ original Q) × 100. Percentage change in
  price = (change in P ÷ original P) × 100. Because the two changes always have opposite
  signs, the answer is quoted *without its sign*: PED = 2 means elastic demand.
]

#diagram-fig("diagrams/ch04_ped.svg",
  "Three demand curves and their elasticities. A flat curve is elastic, a rectangular hyperbola is unit elastic at every point, and a steep curve is inelastic.", width: 100%)

#concept-box("Reading the three answers")[
  + *PED > 1* — elastic. Buyers are responsive; a small price change produces a large quantity change. Luxuries, goods with many substitutes, goods that take a large share of income.
  + *PED = 1* — unit elastic. The percentage changes are equal, so total spending stays constant however the price moves.
  + *PED < 1* — inelastic. Buyers are unresponsive. Necessities, goods with few substitutes, goods that take a small share of income.
]

#trap-box("Percentage of what?")[
  The denominator of each percentage is the *original* value, not the average and not the new
  value. A price that falls from ₦10 to ₦8 has fallen by 20%, not by 25% — the 25% figure
  divides by the new price and produces an elasticity that is wrong by exactly the amount the
  examiner has built into the options.
]

#worked-example(
  1,
  "The arithmetic, done in two lines",
  [When the price of a commodity falls from ₦10 to ₦8, quantity demanded rises from 4 units to 6 units. The price elasticity of demand is

    A. 0.4 \
    B. 0.5 \
    C. 2.0 \
    D. 2.5],
  [
    *Step 1 — the quantity percentage.* The change is 2 units on an original 4: 2 ÷ 4 = 0.5, which is 50%.

    *Step 2 — the price percentage.* The change is ₦2 on an original ₦10: 2 ÷ 10 = 0.2, which is 20%.

    *Step 3 — divide.* 50 ÷ 20 = 2.5. Demand is elastic, because the quantity response is two and a half times the price change.

    *Check.* A and B are the two percentages divided the wrong way round, and C is what you get by using the new price (₦8) as the base: 2 ÷ 8 = 25%, and 50 ÷ 25 = 2. The answer is *D*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.2 The Revenue Test

Total revenue is price times quantity. If demand is elastic, a small price cut produces a
proportionately larger rise in quantity, and revenue rises. If demand is inelastic, the
quantity barely moves, and the price cut costs revenue.

#diagram-fig("diagrams/ch04_revenue.svg",
  "Total revenue rises while demand is elastic, peaks where elasticity is one, and falls once demand becomes inelastic.", width: 96%)

#rule-box("The revenue test, in four lines")[
  + Elastic demand: price cut → revenue *rises*. Price rise → revenue *falls*.
  + Inelastic demand: price cut → revenue *falls*. Price rise → revenue *rises*.
  + Unit elastic demand: total revenue is at its maximum and does not change.
  + Total revenue is maximised exactly where elasticity equals one.
]

#concept-box("Why a farmer's bumper harvest can ruin a farmer")[
  If the demand for maize is inelastic, a good harvest shifts supply right, the price falls
  sharply, and the quantity sold rises only a little — so total revenue *falls*. The paradox
  is not a paradox at all: it is the revenue test read from the supply side, and it is why
  farmers' incomes can fall in their best year.
]

#worked-example(
  2,
  "The revenue test in a sentence",
  [The demand for a product is price-inelastic. If the producer raises the price, total revenue will

    A. fall, because fewer units are sold \
    B. rise, because the price effect outweighs the quantity effect \
    C. remain unchanged \
    D. fall, because demand falls],
  [
    *Step 1 — the meaning of inelastic.* Quantity falls by a smaller percentage than the price rises, so the price rise outweighs the fall in sales.

    *Step 2 — revenue.* Total revenue = P × Q; if P rises proportionately more than Q falls, the product rises. That is B.

    *Step 3 — the traps.* A states the elastic case, and D confuses fewer units sold with a fall in demand — the curve has not moved; the consumer has slid along it.

    *Check.* Inelastic plus price rise equals revenue rise. Say the pair the other way for elastic: elastic plus price rise equals revenue fall. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.3 The Determinants of Elasticity

Four factors decide whether a good's demand is elastic, and a question that compares two
goods is really asking which of the four differs between them.

#rule-box("The four determinants")[
  + *Availability of substitutes.* The more substitutes, the more elastic. This is the strongest of the four.
  + *Proportion of income spent.* The larger the share of a household's budget, the more elastic — a 10% rise in the price of salt is invisible; a 10% rise in rent is not.
  + *Necessity or luxury.* Necessities are inelastic, luxuries elastic.
  + *Time.* Demand is more elastic in the long run, because buyers can find substitutes, change habits or move house.
]

#trap-box("“Addictive goods are elastic because people cannot stop”")[
  The reasoning is upside down. An addictive good has *few substitutes*, and few substitutes
  mean *inelastic* demand: the price can rise and the quantity barely moves. The same logic
  makes the demand for salt, petrol and insulin inelastic, which is why taxes on them raise
  revenue rather than reduce consumption.
]

#worked-example(
  3,
  "Which of the two is more elastic",
  [The demand for a particular brand of soap is likely to be more elastic than the demand for soap in general because

    A. soap is a necessity \
    B. the brand has many close substitutes \
    C. soap takes a small share of income \
    D. the price of soap is controlled],
  [
    *Step 1 — the principle.* The availability of substitutes is the strongest determinant, and a single brand has many while the product class has few.

    *Step 2 — apply it.* A buyer who finds one brand dearer can switch to another brand of the same product, so the brand's demand is elastic; a buyer facing dearer soap in general has nowhere to go, so the class demand is inelastic.

    *Step 3 — the other options.* A and C would make both demands inelastic, and they do not distinguish the brand from the class. D is irrelevant to the comparison.

    *Check.* Ask *what can the buyer switch to?* For the brand, plenty; for soap, almost nothing. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 4.4 Income and Cross Elasticity

Two more elasticities ask different questions, and their *signs* are the answer.

#diagram-fig("diagrams/ch04_income_cross.svg",
  "Income elasticity classifies the good; cross elasticity classifies the relationship. The size is secondary — the sign is the mark.", width: 100%)

#rule-box("The two formulas and what the sign means")[
  + *Income elasticity (Ey)* = % change in quantity demanded ÷ % change in income. Positive and greater than one: a normal luxury. Positive and less than one: a normal necessity. *Negative: an inferior good.*
  + *Cross elasticity (Exy)* = % change in quantity demanded of X ÷ % change in price of Y. *Positive: substitutes.* *Negative: complements.* Zero: unrelated.
]

#concept-box("Why inferior is not an insult")[
  An inferior good is simply one whose demand falls when income rises — garri, second-hand
  clothing, bus travel where a car is the alternative. The word describes the *relationship*,
  not the quality of the good: a wealthy household still buys salt, which is normal, and a
  student who earns more stops buying the cheapest brand, which was inferior for that
  household.
]

#worked-example(
  4,
  "The sign that names the good",
  [When consumers' income rises by 10%, the quantity demanded of a commodity falls by 4%. The income elasticity of demand for the commodity is

    A. 0.4, and the commodity is a normal good \
    B. 0.4, and the commodity is an inferior good \
    C. −0.4, and the commodity is an inferior good \
    D. −0.4, and the commodity is a luxury],
  [
    *Step 1 — the formula.* Ey = %ΔQ ÷ %ΔY = −4 ÷ 10 = −0.4.

    *Step 2 — the sign carries the meaning.* A negative income elasticity means that demand falls as income rises, which is the definition of an inferior good.

    *Step 3 — the traps.* A and B keep the size but discard the sign; D keeps the sign but names the wrong category, because a luxury has a *positive* elasticity greater than one.

    *Check.* Compute, then read the sign aloud: *negative, so inferior*. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#shortcut-box("The same computation, done in one line")[
  *Question:* the price of brand A rises 20% and the quantity of brand B rises 10%. *Answer:*
  Exy = 10 ÷ 20 = +0.5, and the positive sign makes the brands substitutes. Two brands of one
  product are substitutes by definition, so the arithmetic and the definition should always
  agree — when they do not, the division is wrong.
]

== 4.5 Price Elasticity of Supply

Demand elasticity asks how buyers respond. Supply elasticity asks the same question of
sellers, and it is the one that decides how much of a tax a producer can pass on.

#diagram-fig("diagrams/ch04_pes.svg",
  "Supply elasticity is a question of time and spare capacity: the steeper the curve through a point, the less the quantity supplied can respond.", width: 100%)

#rule-box("The formula, and the four responses")[
  + *Price elasticity of supply (Pes)* = % change in quantity supplied ÷ % change in price.
  + *Pes > 1* — elastic: producers can raise output proportionately more than the price. A horizontal curve is perfectly elastic.
  + *Pes < 1* — inelastic: output responds less than proportionately. A vertical curve is perfectly inelastic, and Pes is then zero.
  + *Pes = 1* — unit elastic: a straight line from the origin, where both change by the same percentage.
]

#concept-box("Why supply is inelastic in the short run")[
  In the short run, at least one factor is fixed — a factory, a farm, a fleet of buses. A
  price rise cannot conjure a second factory, so output can only be raised by using the
  fixed capacity harder, and the quantity supplied barely moves. In the long run every
  factor can change: new capacity is built, workers are trained, land is brought into use.
  The same price rise then produces a much larger response, and the supply curve through
  the same point is flatter.
]

#shortcut-box("The four determinants, in the order the examiner uses them")[
  + *Time.* The longer the period, the more elastic the supply. This is the first answer to give, and it is almost always the right one.
  + *Spare capacity.* A firm working at half capacity can respond at once; one working at full capacity cannot respond at all.
  + *Storage and stocks.* A good that can be stored — grain, tinned food — has more elastic supply than a service that cannot be stored, such as a hotel room for last night.
  + *Mobility of factors.* If workers and machines can move easily into the industry, supply responds faster; a specialised input makes it slower.
]

#trap-box("The two supply traps")[
  + *Confusing supply elasticity with demand elasticity.* The formula is the same shape, but the quantity is *supplied* and the curve slopes *upward*. A negative answer to a supply question means the division was inverted.
  + *Assuming the tax is passed on in full.* It is passed on only as far as supply is more elastic than demand. With perfectly inelastic supply the producer bears the whole tax; with perfectly elastic supply the consumer bears it all.
]

#worked-example(
  5,
  "The supply that cannot respond",
  [The supply of land in a city is best described as

    A. perfectly elastic \
    B. perfectly inelastic \
    C. unit elastic \
    D. elastic in the short run],
  [
    *Step 1 — the quantity.* The area of land in a city is fixed; more cannot be created because the price rises.

    *Step 2 — the curve.* A quantity that does not change whatever the price is a vertical supply curve, which is perfectly inelastic supply.

    *Step 3 — the alternatives.* Perfectly elastic would be a horizontal curve at one price (an infinite response), C would be a curve through the origin with equal percentage changes, and D reverses the time rule — supply is *less* elastic in the short run.

    *Check.* Ask whether the quantity can change at all. For city land it cannot, so the elasticity is zero. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: elasticity.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Elasticity is a ratio of two percentage changes, and the percentages are taken from the original values. Price elasticity of demand is quoted without its sign: above one is elastic, one is unit elastic, below one is inelastic. The revenue test confirms it — an elastic good gains revenue when its price falls, an inelastic good gains revenue when its price rises, and revenue peaks at unit elasticity. Four determinants decide it, and substitutes are the strongest. Income elasticity classifies the good: positive means normal, more than one means luxury, negative means inferior. Cross elasticity classifies the relationship: positive means substitutes, negative means complements. Elasticity of supply depends on time and spare capacity, and the burden of a tax falls on whichever side of the market is less elastic.
  ]
]

== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [A 10% fall in the price of a good causes quantity demanded to rise by 25%. The price elasticity of demand is], [0.4], [2.5], [0.25], [25])

#mcq(2, [If the demand for a good is inelastic, a rise in its price will], [reduce total revenue], [increase total revenue], [leave total revenue unchanged], [reduce quantity by more than the price rises])

#mcq(3, [A negative income elasticity of demand indicates that the good is], [a luxury], [a necessity], [an inferior good], [a complement])

#mcq(4, [A positive cross elasticity of demand between two goods indicates that they are], [complements], [substitutes], [unrelated], [both inferior])

#answer-key-grid(("B", "B", "C", "B"))

#answer-notes((
  ("B", [25 ÷ 10 = 2.5, and demand is elastic. A inverts the ratio, C divides by a hundred instead of comparing the two percentages, and D is the quantity percentage rather than the elasticity.]),
  ("B", [Increase total revenue. Inelastic demand means quantity falls proportionately less than price rises, so the price effect dominates — this is the revenue test, and it is the most examined sentence in the chapter.]),
  ("C", [An inferior good. Demand falls as income rises, and the negative sign is the definition. A luxury has an elasticity above one and a necessity between zero and one; both are positive.]),
  ("B", [Substitutes. A price rise for one raises demand for the other, so the two changes move in the same direction and the elasticity is positive; complements would give a negative figure.]),
))

#chapter-checklist("Before you leave Chapter 4", (
  [Write the PED formula and compute it from two prices and two quantities.],
  [State the revenue test in one sentence, for each of the three elasticities.],
  [Name the four determinants of PED and predict which of two goods is more elastic.],
  [Compute income elasticity and use its sign to name the good; do the same for cross elasticity and the relationship.],
  [Say what makes supply elastic, and what makes it perfectly inelastic.],
  [State where the burden of a tax falls, and why.],
))

#concept-box("Carry this into Chapter 5")[
  Elasticity described how buyers and sellers respond. Chapter 5 goes behind the supply curve and asks what it costs a firm to produce at all: fixed and variable costs, the law of diminishing returns, and the point at which the firm should keep producing and the point at which it should shut down.
]

#include "drill_ch04.typ"
