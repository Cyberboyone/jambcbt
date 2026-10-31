#import "template.typ": *

#current-chapter.update("Chapter 2: Demand and Utility")

#pagebreak()

#chapter-opener(
  2,
  "Demand and Utility",
  subtitle: "The Law of Demand and the Demand Schedule, Movement Along and Shift Of, the Exceptions the Examiner Tests, Total and Marginal Utility, and Consumer Equilibrium",
  syllabus-ref: "Sec. A • Demand",
  utme-weight: "5 Qs a year on demand",
  running: "Demand and Utility",
)

#focus-radar(
  objectives: (
    "State the law of demand and draw the curve from a schedule.",
    "Tell a movement along a demand curve from a shift of it, every time.",
    "List the non-price determinants, and say which way each one shifts the curve.",
    "Name the three exceptions — Giffen, Veblen and expectation — and recognise one in a stem.",
    "Explain total, average and marginal utility, and compute consumer equilibrium from a table.",
  ),
  hotspots: (
    "“A fall in the price of a good causes …” — an *increase in quantity demanded*, a movement along the curve. The trap option says *an increase in demand*, which is a shift.",
    "“Which of the following will shift the demand curve for tea to the right?” — a rise in the price of coffee, a substitute. The price of tea itself is the trap.",
    "“The law of demand does not hold for …” — Giffen goods and goods of ostentation. An option that names a normal good is wrong however ordinary it sounds.",
    "“Total utility is maximum when marginal utility is …” — zero. The trap is *maximum*, because candidates assume the two peaks together.",
    "“A consumer is in equilibrium when …” — the marginal utility per naira is equal for every good bought.",
  ),
  trap-summary: "Three slips. (1) Using *demand* and *quantity demanded* as synonyms: the first is the whole curve, the second is a point on it. (2) Shifting the curve when only the good's own price has changed. (3) Reading the utility table down the total column and calling the first fall a maximum, when the maximum is where marginal utility crosses zero.",
)

// ============================================================================
== 2.1 The Law of Demand and the Demand Schedule

Demand is not a wish. It is the quantity of a good that buyers are *willing and able* to
buy at each price, over a period, other things being equal. The three italicised phrases
are the definition, and each one has been the subject of a question.

#rule-box("The law of demand")[
  Other things being equal, the higher the price of a good, the lower the quantity demanded;
  and the lower the price, the higher the quantity demanded.

  *Other things being equal* — the Latin *ceteris paribus* — is the condition that makes the
  law a law. Without it, a price rise accompanied by a rise in income could produce any
  result at all.
]

#diagram-fig("diagrams/ch02_schedule.svg",
  "A demand schedule read downwards and a demand curve drawn from it. Each ₦2 cut in price adds two units to the quantity demanded — the curve is the schedule drawn.", width: 92%)

The reason for the downward slope is worth three lines, because a question may ask for it
directly: at a lower price, existing buyers buy more; new buyers enter the market; and
each naira of income now buys more of this good relative to others.

#concept-box("Demand and quantity demanded are different words")[
  + *Demand* is the whole relationship — the curve, or the schedule taken as a whole. It changes only when a *determinant* changes.
  + *Quantity demanded* is one number — a point on the curve — and it changes when the *price* changes.

  A question that asks what happens to *demand* is asking about the curve. A question that
  asks what happens to *quantity demanded* is asking about a point. Read the noun.
]

#trap-box("“Willing and able” is not a decoration")[
  A family that wants a car but cannot afford one does not create demand, and a family that
  could afford one but does not want it does not either. Demand requires both, which is why
  a question about *effective demand* is asking about purchasing power as well as desire.
]

#worked-example(
  1,
  "From the table to the answer",
  [A demand schedule shows that at ₦10 the quantity demanded is 2 units, at ₦8 it is 4 units and at ₦6 it is 6 units. If the price falls from ₦8 to ₦6, the quantity demanded

    A. falls by 2 units \
    B. rises by 2 units \
    C. rises by 4 units \
    D. is unchanged],
  [
    *Step 1 — find the two rows.* ₦8 gives 4 units and ₦6 gives 6 units.

    *Step 2 — subtract.* 6 − 4 = 2 units, and the movement is upward because the price fell.

    *Step 3 — check the direction.* The law of demand says price down, quantity up, so any option with *falls* is gone before the arithmetic. C would be right only if the price had fallen from ₦10 to ₦6.

    *Check.* Read the row before the row you want, and the row after: 4 is between 2 and 6, which is what an increase of 2 looks like. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

// ============================================================================
== 2.2 Movement Along, and Shift Of

This is the single most examined distinction in the chapter, and it is a distinction
about *cause*. If the cause is the good's own price, the curve does not move. If the
cause is anything else on the list of determinants, the curve moves.

#diagram-fig("diagrams/ch02_demand_curve.svg",
  "Left: the price of the good changes, so the point slides along the same curve. Right: a determinant changes, so the whole curve moves right or left.", width: 100%)

#diagram-fig("diagrams/ch02_determinants.svg",
  "The six non-price determinants, and the test that separates them from the price of the good itself.", width: 100%)

#rule-box("The shift rule, and the two words that decide it")[
  + A change in the *price of the good itself* → movement along the curve (expansion or contraction of demand).
  + A change in *any other determinant* → shift of the curve (increase or decrease in demand).
  + Shift *right* = increase in demand at every price. Shift *left* = decrease in demand at every price.
]

#concept-box("The determinants, one line each")[
  + *Income.* For a normal good, more income shifts demand right. For an inferior good, more income shifts it left.
  + *Taste and fashion.* Advertising, a new study, a celebrity — anything that changes preference shifts the curve.
  + *Price of related goods.* A dearer *substitute* shifts demand right; a dearer *complement* shifts it left.
  + *Population.* More buyers, or a different age structure, shifts the curve.
  + *Expectation of future prices.* Expecting a rise, buyers buy now and the curve shifts right today.
  + *Distribution of income.* A transfer towards the poor shifts demand for basics to the right.
]

#trap-box("The substitute and the complement, in one sentence")[
  Two goods are *substitutes* if buying more of one means buying less of the other (tea and
  coffee); they are *complements* if they are used together (car and petrol). So the price of
  a substitute rising sends buyers *towards* your good, and the price of a complement rising
  sends them *away* from it — the two signs are opposite, and that is the whole question.
]

#worked-example(
  2,
  "The price of a substitute",
  [The demand curve for tea will shift to the right if

    A. the price of tea falls \
    B. the price of coffee, a substitute, rises \
    C. the price of sugar, a complement, rises \
    D. the income of tea drinkers falls and tea is a normal good],
  [
    *Step 1 — apply the rule.* A shift needs a determinant; the price of tea is not one, so A is a movement, not a shift, and can be eliminated immediately.

    *Step 2 — work the determinants.* Coffee dearer makes tea relatively cheaper, so buyers switch to tea: demand for tea shifts right. That is B.

    *Step 3 — check the others.* Sugar is a complement, so a rise in its price reduces tea drinking and shifts the curve *left* (C). A fall in income for a normal good shifts demand *left* (D).

    *Check.* Name the relationship before you decide the direction: substitute → same direction as the other good's price; complement → opposite. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.3 The Three Exceptions

The law of demand has exceptions, and they are examinable because they are the only
places where the curve slopes the other way. Learn the three, with one example each.

#rule-box("The exceptions, and why each one breaks the law")[
  + *Giffen goods.* An inferior good that takes so large a share of a poor household's budget that a price rise makes the household poorer, and it buys *more* of the good because it can no longer afford the better one. Named after Robert Giffen, who described it in the nineteenth century.
  + *Goods of ostentation (Veblen goods).* Goods bought *because* they are expensive, as a display of wealth. A price rise can raise the quantity demanded, because the price is the point.
  + *Expectation of further price rises.* If buyers expect the price to rise again next week, a rise today can increase demand today.
]

#concept-box("Why the examiner likes the Giffen case")[
  It is the only exception that is *also* an inferior good, and the only one that arises from
  poverty rather than vanity. The question usually pairs it with a Veblen good to see whether
  you know that there are two different reasons for an upward-sloping demand curve.
]

#trap-box("An exception is not a new law")[
  A question that says *the law of demand does not apply to a Veblen good* is correct; a
  question that says *the law of demand has been abolished* is not. The exceptions are
  exceptions — the ordinary curve still slopes down for almost everything you will be asked
  about.
]

// ============================================================================
== 2.4 Total, Average and Marginal Utility

Utility is the satisfaction a consumer derives from a good. It is not measurable in any
machine, but economics treats it as if it were, because the assumption produces testable
predictions — and the exam tests the arithmetic of those predictions.

#diagram-fig("diagrams/ch02_utility.svg",
  "Left: total utility rises, peaks and then falls. Right: marginal utility falls from the first unit, and crosses zero exactly where total utility peaks.", width: 100%)

#rule-box("The three utilities and the law that links them")[
  + *Total utility (TU):* the satisfaction from all the units consumed.
  + *Average utility (AU):* TU ÷ number of units.
  + *Marginal utility (MU):* the change in total utility from consuming one more unit; MU = ΔTU ÷ ΔQ.
  + *Law of diminishing marginal utility:* as more units of a good are consumed in a given period, the satisfaction from each additional unit falls.
]

#concept-box("The two facts that answer most utility questions")[
  + *TU is maximum exactly where MU is zero.* Add a unit with positive marginal utility and TU rises; add one with negative marginal utility and TU falls; the turning point is where MU is zero.
  + *MU is the slope of TU.* A steeply rising TU means a large MU; a flattening TU means a small one; a falling TU means a negative one.
]

#worked-example(
  3,
  "Reading the table",
  [A consumer's total utility from 1, 2, 3 and 4 units of a good is 10, 18, 24 and 24 utils. The marginal utility of the fourth unit is

    A. 24 utils \
    B. 6 utils \
    C. 4 utils \
    D. zero],
  [
    *Step 1 — the formula.* MU = change in total utility ÷ change in quantity. Here the change in quantity is one unit, so MU is simply the change in TU.

    *Step 2 — the arithmetic.* TU rises from 24 to 24, so the change is zero and MU is zero.

    *Step 3 — the meaning.* A marginal utility of zero is exactly the point at which total utility stops rising: the consumer has had enough of this good, and a fifth unit would make TU fall.

    *Check.* If TU does not change, MU is zero — not the total (A), and not the previous marginal (B, which is 24 − 18 = 6). The answer is *D*.
  ],
  tier: "UTME STANDARD",
)

// ============================================================================
== 2.5 Consumer Equilibrium

A consumer with a fixed income and given prices has done all she can when the last naira
spent on each good yields the same marginal utility per naira. That condition is the
equilibrium, and it is worth a mark in almost every paper that examines utility.

#rule-box("The equilibrium condition")[
  MUₓ ÷ Pₓ = MUᵧ ÷ Pᵧ

  and the whole income is spent. If the left side is larger, the consumer buys more x and
  less y; as she does, MUₓ falls (diminishing marginal utility) and MUᵧ rises, until the two
  sides are equal.
]

#concept-box("What the condition is really saying")[
  Each naira should buy the same satisfaction wherever it is spent. If a naira spent on
  bread yields more satisfaction than a naira spent on milk, the consumer should move a naira
  from milk to bread — and she should keep moving until the two are equal, which is the
  definition of having nothing left to gain.
]

#worked-example(
  4,
  "The equilibrium test",
  [A consumer spends her income on two goods, X and Y. MUₓ = 30, Pₓ = ₦5; MUᵧ = 24, Pᵧ = ₦6. To maximise utility she should

    A. buy more of Y and less of X \
    B. buy more of X and less of Y \
    C. keep buying the same quantities \
    D. buy more of both goods],
  [
    *Step 1 — compute the marginal utility per naira.* For X, 30 ÷ 5 = 6 utils per naira. For Y, 24 ÷ 6 = 4 utils per naira.

    *Step 2 — compare.* X returns more satisfaction per naira, so the consumer should move spending towards X.

    *Step 3 — the adjustment.* Buying more X lowers MUₓ (diminishing marginal utility) and buying less Y raises MUᵧ, until the two ratios are equal — which is B.

    *Check.* Divide before you compare; the raw utilities (30 against 24) point at X, but the correct comparison is per naira, and here both roads lead to X. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  5,
  "The curve that is a demand curve in disguise",
  [The demand curve for a normal good slopes downward mainly because

    A. producers reduce output as price falls \
    B. consumers buy more units only at lower prices as marginal utility falls \
    C. the government fixes prices \
    D. the good becomes cheaper to produce at higher output],
  [
    *Step 1 — link utility to price.* A consumer buys up to the point where the price equals the marginal utility of the last unit, measured in money.

    *Step 2 — the mechanism.* Because marginal utility falls with each extra unit, the consumer will buy an extra unit only at a lower price. The downward slope is diminishing marginal utility seen from the market's side.

    *Step 3 — kill the rest.* A and D describe supply, not demand; C describes price control, which fixes a price rather than explaining a slope.

    *Check.* The question asks why *consumers* buy more at lower prices, and the answer has to be about consumers. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: demand and utility.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Demand is the quantity buyers are willing and able to buy at each price, other things being equal, and the law says price and quantity demanded move in opposite directions. The good's own price moves the consumer along the curve; income, taste, the price of related goods, population, expectation and the distribution of income move the whole curve. Substitutes respond in the same direction as the other good's price, complements in the opposite direction, and the two words *demand* and *quantity demanded* tell you which question is being asked. Three exceptions break the downward slope: Giffen goods, goods of ostentation and expectations of further rises. Underneath the curve is utility: total utility rises while marginal utility is positive, peaks where marginal utility is zero, and the consumer is in equilibrium when the marginal utility per naira is equal across every good bought.
  ]
]

== 2.6 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [A rise in the price of a good, other things being equal, causes], [a decrease in demand], [a decrease in quantity demanded], [an increase in demand], [no change in quantity demanded])

#mcq(2, [Which of the following will shift the demand curve for bread to the right?], [a fall in the price of bread], [a rise in the price of bread], [a rise in consumers' income, bread being a normal good], [a fall in the price of flour])

#mcq(3, [The law of demand does not apply to], [normal goods], [inferior goods], [Giffen goods], [substitute goods])

#mcq(4, [Total utility is at its maximum when marginal utility is], [maximum], [zero], [negative], [equal to total utility])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [A decrease in quantity demanded — a movement along the curve, because the good's own price changed. A is the trap: *demand* is the whole curve, and only a determinant shifts it.]),
  ("C", [Higher income for a normal good shifts demand right. A is a movement along the curve, not a shift; B shifts it left; D is a supply-side change, since cheaper flour affects producers, not buyers.]),
  ("C", [Giffen goods are the classic exception, where a price rise can raise quantity demanded. Normal and inferior goods both obey the law; substitutes are defined by a relationship, not by a slope.]),
  ("B", [Zero. Total utility is still rising while marginal utility is positive and falls once it is negative, so the turning point is exactly where MU = 0 — not where MU is at its own maximum, which is the first unit.]),
))

#chapter-checklist("Before you leave Chapter 2", (
  [Define demand with the three phrases that make it exact: willing and able, at each price, other things being equal.],
  [Draw a demand curve from a five-row schedule and read a quantity off it.],
  [Say which of the six determinants shifts the curve, and which way.],
  [Name the three exceptions to the law of demand, with one example of each.],
  [State the law of diminishing marginal utility and explain why total utility peaks where marginal utility is zero.],
  [Write the equilibrium condition for a consumer and apply it to two goods with different prices.],
))

#concept-box("Carry this into Chapter 3")[
  Chapter 2 gave you one side of the market. Chapter 3 supplies the other, and then puts the two curves in the same diagram: the equilibrium where they cross, the surplus and shortage that push the price towards it, and the price controls that stop it getting there.
]

#include "drill_ch02.typ"
