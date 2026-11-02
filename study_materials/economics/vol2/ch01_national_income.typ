#import "template.typ": *

#current-chapter.update("Chapter 1: National Income")

#pagebreak()

#chapter-opener(
  1,
  "National Income",
  subtitle: "GDP and GNP, the Three Methods of Measurement, the Circular Flow, Real versus Nominal Values, Per Capita Income and the Multiplier",
  syllabus-ref: "Sec. F • National Income",
  utme-weight: "4 Qs a year on the accounts",
  running: "National Income",
)

#focus-radar(
  objectives: (
    "Define GDP, GNP and national income, and say which one includes what.",
    "Compute GDP by the output, income and expenditure methods, and explain why they must agree.",
    "Draw the circular flow and place investment, government spending, exports, saving, taxes and imports on it.",
    "Convert nominal GDP to real GDP with a price index, and compute per capita income.",
    "Use the multiplier, k = 1 ÷ (1 − MPC), to find the effect of an injection on national income.",
  ),
  hotspots: (
    "“Gross domestic product differs from gross national product because …” — GDP counts output *inside* the country; GNP adds net factor income from abroad. The option that says *net exports* is the trap.",
    "“If nominal GDP rises by 15 per cent while prices rise by 15 per cent, real GDP …” — is *unchanged*. A candidate who answers *rises by 15 per cent* has forgotten to deflate.",
    "“Given MPC = 0.75, the multiplier is …” — 4, because k = 1 ÷ (1 − 0.75). The option *0.75* is the marginal propensity stated back at you.",
    "“Which item is a withdrawal from the circular flow?” — saving, tax or imports. Investment, government spending and exports are *injections*.",
    "“Per capita income is found by …” — dividing national income by population. Dividing by the labour force gives income per worker, which is a different figure.",
  ),
  trap-summary: "Three slips. (1) Mixing domestic with national, so that a foreign firm's profit made in Nigeria is counted as Nigerian income. (2) Treating a nominal rise as a real one, when inflation has eaten the whole of it. (3) Reversing injections and withdrawals, which turns an expansion into a contraction in every multiplier question.",
)

// ============================================================================
== 1.1 What National Income Measures

National income is the total money value of all the goods and services produced in an
economy in a year. The definition is short, and every word in it does work: *money
value*, because a tonne of cement and a haircut cannot be added as physical things;
*all the goods and services*, because a country that counts only manufacturing will
understate its output; *in a year*, because the figure is a flow, not a stock; and *an
economy*, which is where the argument about domestic and national begins.

#rule-box("The three totals, and the one difference between them")[
  + *Gross domestic product (GDP)* — the value of output produced *inside* the country, whoever owns the firm that produced it.
  + *Gross national product (GNP)* — GDP plus net factor income from abroad: what the country's residents earn, wherever they earn it.
  + *National income* — GNP at factor cost, that is, after indirect taxes have been removed and subsidies added, so that the figure measures payments to the factors of production.
]

#diagram-fig("diagrams/ch01_gdp_gnp.svg",
  "The bridge from GDP to GNP: add the income residents earn abroad, subtract the income non-residents send home, and divide by the population to get per capita income.", width: 92%)

Why the distinction matters in a Nigerian paper. Nigeria hosts foreign oil companies,
banks and manufacturers whose profits leave the country. Their output is inside the
border, so it belongs to GDP; the profit is not earned by Nigerians, so it does not
belong to national income. A country in that position reports GDP *above* GNP. A
country whose citizens work abroad and send money home — the Philippines, or a Nigerian
diaspora sending remittances — reports GNP *above* GDP.

#concept-box("Gross, net, market prices and factor cost")[
  *Gross* means before deducting depreciation, the wearing out of capital. Deduct it and
  the total becomes *net*. *Market prices* include indirect taxes and subsidies; *factor
  cost* removes them, leaving what the factors were actually paid.

  The four combinations the syllabus uses are therefore GDP at market prices — the
  headline number — and GNP at factor cost, which is national income proper. Questions
  that quote both are asking whether you know which is which.
]

== 1.2 The Three Methods of Measurement

The same output can be counted three ways, because every naira of output is also a
naira of somebody's income and a naira of somebody's spending. The three methods are not
three estimates to be averaged; they are three routes to one number, and the fact that
they agree is what makes the accounts credible.

#diagram-fig("diagrams/ch01_three_methods.svg",
  "Output, income and expenditure are three routes to the same total. The identity that makes them agree is the check the examiner expects you to state.", width: 100%)

#table(
  columns: (1.1fr, 2.4fr, 2.4fr),
  inset: (x: 4.5pt, y: 3.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What is added up],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Where it goes wrong],
  ),
  [Output / value added], [the value added by each firm or sector: sales minus purchases from other firms], [counting gross sales instead of value added, which double-counts the flour inside the bread],
  [Income], [rent + wages + interest + profit, the payments to the four factors], [including transfer payments such as pensions, which are paid but not produced],
  [Expenditure], [C + I + G + (X − M): consumption, investment, government spending and net exports], [counting second-hand goods, or counting imports as if they were home output],
)

#shortcut-box("Value added in one line")[
  Value added = output − intermediate consumption. A baker who buys ₦40 of flour and
  sells ₦100 of bread has added ₦60, and only the ₦60 enters GDP. The ₦40 already
  entered the accounts when the miller sold the flour.
]

#trap-box("Three things that are not in GDP")[
  + *Transfer payments.* A pension or a scholarship moves money; it does not produce anything. Including it double-counts income that was already counted when it was earned.
  + *Second-hand sales.* A used car sold twice is one car. Only the dealer's margin, which is a service, is new output.
  + *Unpaid work and the informal economy.* Cooking for your family and a roadside repair done for cash are output, but they are not reliably counted — which is one reason official GDP understates a developing economy.
]

== 1.3 The Circular Flow

The circular flow is the accounts drawn as a diagram. Households own the factors of
production and sell their services to firms; firms use them to produce goods, which
households buy with the income they have just been paid. Two loops, running in opposite
directions: factor services and factor incomes on one, goods and spending on the other.

#diagram-fig("diagrams/ch01_circular.svg",
  "The circular flow with its three injections and three withdrawals. The flow grows when injections exceed withdrawals and shrinks when they fall short.", width: 100%)

#rule-box("Injections and withdrawals, in the order the paper lists them")[
  + *Injections* add to the flow from outside it: investment (I), government spending (G) and exports (X).
  + *Withdrawals* leak out of it: saving (S), taxes (T) and imports (M).
  + *Equilibrium* in the circular flow is where injections equal withdrawals, S + T + M = I + G + X. When I + G + X exceeds S + T + M, national income rises.
]

#concept-box("Why the equality is a condition, not an accident")[
  The accounts of a whole economy must balance because every payment is somebody's
  receipt. If households save more than firms invest, the goods they did not buy pile up
  as unsold stock — which is investment of a kind, unwanted inventory — and the accounts
  still balance. What cannot happen is for a flow to disappear. That is why an economy
  cannot save its way into growth without someone, somewhere, borrowing those savings
  and spending them.
]

== 1.4 Real, Nominal and Per Capita

A nominal figure is measured in the prices of the year it describes. A real figure is
measured in the prices of a chosen base year, so that it changes only when the quantity
changes. Between them sits the price index, and the arithmetic is one division.

#diagram-fig("diagrams/ch01_real_nominal.svg",
  "Nominal GDP and real GDP over nine years. The gap between the two lines is price change, not extra output — which is exactly what a deflated series removes.", width: 96%)

#rule-box("Deflating, and the two per capita measures")[
  + *Real GDP* = nominal GDP ÷ (price index ÷ 100). With nominal GDP of ₦200 billion and an index of 125, real GDP is ₦160 billion.
  + *GDP deflator* = nominal GDP ÷ real GDP × 100 — the price index implied by the accounts themselves.
  + *Per capita income* = national income ÷ population. It is an average, and averages hide distributions.
  + *Real per capita income* is the only one of the four that measures the standard of living over time.
]

#trap-box("The two per capita traps")[
  + *Dividing by the labour force.* That gives income per worker, a productivity figure. The question usually says *population*, and the two answers differ by the dependency ratio.
  + *Using nominal income.* A per capita income that doubles while prices double has not improved anybody's life. The paper tests exactly this, and the option that says *the standard of living has doubled* is the key's opposite.
]

== 1.5 The Multiplier

An injection does not stop where it lands. Money spent on a road is received as wages,
and the wage earners spend part of it, and those sellers spend part of that. The total
change in national income is the initial injection multiplied by the multiplier.

#rule-box("The multiplier, in the form the paper uses")[
  + *k* = 1 ÷ (1 − MPC), where MPC is the marginal propensity to consume.
  + *Change in income* = k × change in the injection.
  + Since 1 − MPC = MPS (the marginal propensity to save), *k* = 1 ÷ MPS as well.
  + With taxes and imports in the model the multiplier is smaller: k = 1 ÷ (MPS + MPT + MPM).
]

#diagram-fig("diagrams/ch01_multiplier.svg",
  "A ₦100 million injection with a marginal propensity to consume of 0.8. Each round is four-fifths of the one before, and the series converges on ₦500 million — five times the initial spending.", width: 96%)

#worked-example(
  1,
  "The multiplier from the marginal propensity to consume",
  [If the marginal propensity to consume is 0.8, a ₦2 billion increase in investment will raise national income by

    A. ₦1.6 billion \\
    B. ₦2 billion \\
    C. ₦10 billion \\
    D. ₦0.4 billion],
  [
    *Step 1 — the formula.* k = 1 ÷ (1 − MPC) = 1 ÷ 0.2 = 5.

    *Step 2 — apply it.* The change in income is k times the injection: 5 × ₦2 billion = ₦10 billion.

    *Step 3 — kill the rest.* A is the first round of consumption alone (0.8 × 2), B forgets the multiplier entirely, and D is the saving that leaks out of the first round. All three are the arithmetic of one round, not of the series.

    *Check.* The injection is ₦2 billion and income rises by five times as much, which is possible because the same naira is respent. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Real versus nominal, with the index given",
  [A country's nominal GDP rose from ₦40 billion to ₦48 billion while the price index rose from 100 to 120. Real GDP

    A. rose by 20 per cent \\
    B. was unchanged \\
    C. fell by 20 per cent \\
    D. cannot be calculated without the population],
  [
    *Step 1 — deflate the second year.* Real GDP = 48 ÷ (120 ÷ 100) = 48 ÷ 1.2 = ₦40 billion.

    *Step 2 — compare.* The first year's real GDP is 40 ÷ 1.0 = ₦40 billion. The two are equal, so real GDP did not change.

    *Step 3 — the trap.* A takes the nominal increase and stops. The whole of the 20 per cent rise was price; the quantity produced was identical. D confuses per capita income with real income.

    *Check.* Nominal rose 20 per cent and prices rose 20 per cent, so the quantity must be unchanged. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "GDP by the expenditure method",
  [Using the expenditure approach, gross domestic product is ₦500 billion, consumption is ₦300 billion, government spending is ₦90 billion, investment is ₦70 billion, exports are ₦60 billion and imports are ₦40 billion. The figures are consistent because

    A. 300 + 90 + 70 + 60 − 40 = 480, so GDP should be ₦480 billion \\
    B. 300 + 90 + 70 + 60 − 40 = 480, and the ₦20 billion difference is depreciation \\
    C. GDP is defined as the sum without imports, so the totals cannot be compared \\
    D. one of the figures given must include an item that belongs elsewhere],
  [
    *Step 1 — the identity.* GDP = C + I + G + (X − M) = 300 + 70 + 90 + (60 − 40) = ₦480 billion.

    *Step 2 — read the question.* It says the figures should be consistent with ₦500 billion, and they are not: they total ₦480 billion. When an expenditure sum misses the stated GDP, the missing item is either an error in the table or a component left out.

    *Step 3 — choose the honest option.* D says an item has been placed in the wrong category, which is the only reading that can reconcile the two totals; A and B both assert a contradiction and then live with it, and C denies the identity the syllabus requires.

    *Check.* Always add the components before accepting a stated total. The answer is *D*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Per capita income and what it hides",
  [A country has a national income of ₦120 trillion and a population of 200 million. Its per capita income is

    A. ₦600,000 \\
    B. ₦60,000 \\
    C. ₦6,000 \\
    D. ₦24,000],
  [
    *Step 1 — the division.* ₦120 trillion ÷ 200 million = ₦120,000,000,000,000 ÷ 200,000,000.

    *Step 2 — cancel the zeros.* 120 trillion is 1.2 × 10^14; 200 million is 2 × 10^8; the quotient is 0.6 × 10^6 = ₦600,000.

    *Step 3 — sanity-check the size.* A per capita income in the hundreds of thousands of naira, at an exchange rate of roughly ₦1,500 to the dollar, is a few hundred dollars a year — which is the right order of magnitude for Nigeria. B and C are a decimal slip in the same direction; D is an arbitrary distractor.

    *Check.* Trillions divided by hundreds of millions gives hundreds of thousands. The answer is *A*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  5,
  "The withdrawal that is not a withdrawal",
  [Which of the following is an injection into the circular flow of income?

    A. Household saving \\
    B. Company income tax \\
    C. Government spending on roads \\
    D. Imports of machinery],
  [
    *Step 1 — define the test.* An injection is money entering the flow from outside it; a withdrawal is money leaving it. Households and firms are inside the flow, government and foreign trade are the outside.

    *Step 2 — classify.* Saving leaves the flow to the banks, tax leaves it to government, and imports leave it to foreign producers. All three are withdrawals.

    *Step 3 — the one that enters.* Government spending on roads is money entering the flow from the government sector, which is an injection even though the government raised it by taxing.

    *Check.* Ask which way the money is moving relative to households and firms. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: national income.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    National income is the money value of everything produced in a year, and it can be counted three ways — output, income and expenditure — which must agree because every naira of output is a naira of income and a naira of spending. GDP counts output inside the border; GNP adds net factor income from abroad and is the figure that belongs to residents. Real GDP deflates the nominal figure by a price index, and per capita income divides by population, not by the labour force. The circular flow puts the accounts in motion: households and firms trade factor services for incomes and goods for spending, while investment, government spending and exports inject and saving, taxes and imports withdraw. When injections exceed withdrawals, income rises; and the total rise is the injection multiplied by k = 1 ÷ (1 − MPC), because each round of spending becomes somebody's income and part of it is spent again.
  ]
]

== 1.6 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [Gross national product exceeds gross domestic product when], [net factor income from abroad is positive], [the country has a large population], [indirect taxes exceed subsidies], [depreciation is greater than investment])

#mcq(2, [The three methods of measuring national income are], [output, income and expenditure], [saving, investment and consumption], [taxation, expenditure and borrowing], [production, distribution and consumption])

#mcq(3, [If nominal GDP rises by 10 per cent and the price level rises by 10 per cent, real GDP], [rises by 10 per cent], [falls by 10 per cent], [is unchanged], [rises by 20 per cent])

#mcq(4, [Given a marginal propensity to consume of 0.6, the value of the multiplier is], [0.6], [1.67], [2.5], [6.0])

#answer-key-grid(("A", "A", "C", "C"))

#answer-notes((
  ("A", [GNP = GDP + net factor income from abroad, so GNP is the larger only when that item is positive. B has nothing to do with the accounts, C is the adjustment that takes market prices to factor cost, and D is about capital being used up rather than about the domestic-national gap.]),
  ("A", [Output, income and expenditure — the three routes to one total. B names the components of expenditure, C names fiscal instruments, and D is a sequence in production, not a measurement method.]),
  ("C", [A ten per cent rise in prices cancels a ten per cent rise in nominal value, so the quantity is unchanged. A forgets to deflate, B deflates in the wrong direction, and D adds the two percentages instead of comparing them.]),
  ("C", [k = 1 ÷ (1 − 0.6) = 1 ÷ 0.4 = 2.5. A quotes the MPC itself, B is 1 ÷ 0.6 — the reciprocal of the MPC rather than of the MPS — and D is 10 × 0.6, which is the MPC scaled up rather than a multiplier.]),
))

#chapter-checklist("Before you leave Chapter 1", (
  [Define GDP, GNP and national income, and say exactly what separates them.],
  [Write the expenditure identity and name one item that must not be counted in it.],
  [Deflate a nominal total by a price index, and explain what the result measures.],
  [Draw the circular flow from memory with all six injections and withdrawals.],
  [Compute the multiplier from an MPC, and say what a larger MPC does to it.],
  [Explain why per capita income is an average that can mislead.],
))

#concept-box("Carry this into Chapter 2")[
  The accounts describe an economy in motion, and the thing that moves them is money.
  Chapter 2 takes the flow apart at its most important joint: what money is, how banks
  create it, and what happens when there is too much of it. The multiplier you have just
  used is the same arithmetic the credit multiplier uses — one over the fraction that
  leaks out — so learn the shape once and it will serve twice.
]

#include "drill_ch01.typ"
