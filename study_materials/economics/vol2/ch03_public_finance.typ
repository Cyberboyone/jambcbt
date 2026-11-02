#import "template.typ": *

#current-chapter.update("Chapter 3: Public Finance and Taxation")

#pagebreak()

#chapter-opener(
  3,
  "Public Finance and Taxation",
  subtitle: "The Budget and Its Three Positions, Fiscal Policy, Direct and Indirect Taxes, the Principles of a Good Tax, Incidence, and the Public Debt",
  syllabus-ref: "Sec. F • Public Finance",
  utme-weight: "3 Qs a year on tax and budget",
  running: "Public Finance and Taxation",
)

#focus-radar(
  objectives: (
    "Define a budget and distinguish a balanced budget, a surplus and a deficit.",
    "Explain fiscal policy, and state what expansionary and contractionary policy each do.",
    "Classify taxes as direct or indirect, and as progressive, proportional or regressive.",
    "State the principles of a good tax and explain the incidence of a tax.",
    "Explain the sources of government revenue and the effects of the public debt.",
  ),
  hotspots: (
    "“A budget deficit occurs when …” — government expenditure *exceeds* revenue. The reverse answer describes a surplus, and the reversal is the commonest error in the topic.",
    "“An example of a direct tax is …” — personal income tax, company income tax, capital gains tax. VAT, customs duty and excise duty are indirect, because they can be passed on.",
    "“A tax that takes a larger proportion of income from the poor than from the rich is …” — regressive. Progressive takes a larger proportion from the rich; proportional takes the same proportion from both.",
    "“The burden of an indirect tax falls mainly on …” — the side of the market with the more inelastic demand or supply. It never falls wholly on the side named in the statute.",
    "“To reduce a deficit a government may …” — raise taxes or cut spending. Printing money and borrowing widen the problem rather than solving it, and the option that offers them is the trap.",
  ),
  trap-summary: "Three slips. (1) Reversing deficit and surplus, which is a single word and two marks. (2) Classifying a tax by who physically hands over the money rather than by who bears the burden — VAT is collected by the seller and paid by the buyer, and it is still indirect. (3) Treating progressive and proportional as synonyms, when the difference is exactly what the paper is testing.",
)

// ============================================================================
== 3.1 The Budget and Its Three Positions

A public budget is the government's statement of expected revenue and planned
expenditure for a year. The two sides are compared, and the comparison gives the budget
its name: balanced when they are equal, a surplus when revenue exceeds expenditure, and
a deficit when expenditure exceeds revenue.

#diagram-fig("diagrams/ch03_budget.svg",
  "The three budget positions. The word names the gap: a surplus is revenue above spending, a deficit is spending above revenue.", width: 92%)

#rule-box("The definitions, and the two that are tested")[
  + *Balanced budget* — revenue equals expenditure. The government neither borrows nor saves in that year.
  + *Budget surplus* — revenue exceeds expenditure. The difference can repay debt or be saved.
  + *Budget deficit* — expenditure exceeds revenue. The difference must be financed by borrowing or by drawing down reserves.
  + *Deficit financing* is the act of covering the gap: borrowing from the public through treasury bills, borrowing from abroad, or — most inflationary — borrowing from the central bank.
]

#concept-box("Recurrent, capital and the balance")[
  Government expenditure divides into *recurrent* spending, which keeps the machine
  running — salaries, fuel, interest — and *capital* spending, which builds something:
  roads, power stations, schools. A budget can be in surplus on current account and in
  deficit overall, which is what most developing economies run, and a capital deficit is
  less alarming than a recurrent one because the borrowing buys an asset.

  That distinction is the difference between a government borrowing to build a bridge and
  a government borrowing to pay salaries. The paper does not often ask which is worse,
  but it always expects you to know the difference between them.
]

== 3.2 Fiscal Policy

Fiscal policy is the use of government spending and taxation to influence the level of
economic activity. It is the counterpart of monetary policy: where the central bank works
through the cost and availability of credit, the government works directly through what
it takes in and what it spends.

#rule-box("The two directions, and what each one is for")[
  + *Expansionary fiscal policy* — raise spending or cut taxes, or both. It increases aggregate demand, and it is used when unemployment is the problem and inflation is not.
  + *Contractionary fiscal policy* — cut spending or raise taxes. It reduces aggregate demand, and it is used when inflation is the problem.
  + *Automatic stabilisers* — unemployment benefits and progressive income tax stabilise demand without any decision being taken: in a slump, benefits rise and tax receipts fall, which cushions the fall.
  + *Discretionary policy* — a deliberate change in rates or spending, which takes time to legislate, implement and take effect. That lag is why fiscal policy is often criticised as a blunt instrument.
]

#table(
  columns: (1.35fr, 1.55fr, 1.55fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Expansionary],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Contractionary],
  ),
  [Government spending], [increase], [reduce],
  [Taxation], [reduce], [increase],
  [Budget position], [moves towards deficit], [moves towards surplus],
  [Aggregate demand], [rises], [falls],
  [Used against], [unemployment and recession], [inflation and overheating],
  [Risk], [inflation, if the economy is already at capacity], [unemployment, if demand is already weak],
)

== 3.3 Direct and Indirect Taxes

A tax is direct when the person who pays it is the person who bears it, and indirect when
it can be passed on to somebody else. That single test sorts almost every example the
paper offers.

#diagram-fig("diagrams/ch03_tax_types.svg",
  "Direct and indirect taxes side by side. The test is not who hands over the money but whether the burden can be passed on.", width: 100%)

#table(
  columns: (0.95fr, 1.9fr, 1.65fr, 1.65fr),
  inset: (x: 4.2pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Defined by],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Nigerian examples],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Effect on the poor],
  ),
  [Progressive], [the rate rises as income rises], [personal income tax with graduated bands], [takes a smaller share of a small income — it reduces inequality],
  [Proportional], [the rate is the same at every income], [a flat company income tax on profits], [takes the same share from everyone],
  [Regressive], [the rate falls, or the burden falls hardest on the poor], [VAT on food and basic goods, flat fees on services], [takes a larger share of a small income — it widens inequality],
)

#shortcut-box("Classifying a tax in four seconds")[
  + *Who pays it?* If the earner pays and cannot pass it on → *direct*.
  + *What is it levied on?* Income and profit are direct; goods, services and imports are indirect.
  + *Does the rate rise with income?* Up → progressive; flat → proportional; down → regressive.
  + *Is it a flat amount per person or per item?* A flat amount is regressive however it is labelled, because it is a larger share of a smaller income.
]

#concept-box("The principles of a good tax — Adam Smith's four, still quoted")[
  + *Equity* — the tax should be proportional to ability to pay, so that like cases are treated alike and the better-off pay more.
  + *Certainty* — the taxpayer should know when, how much and how to pay, without discretion.
  + *Convenience* — it should be collected at a time and place that suits the payer, which is why PAYE is deducted at source.
  + *Economy* — collection should cost little relative to the yield, and the tax should not distort the economy more than it must.
]

#trap-box("Three tax traps")[
  + *“VAT is a direct tax because the shopkeeper pays it over.”* No: the shopkeeper collects it and the buyer bears it, so it is indirect. Who hands over the money is not the test.
  + *“Progressive means the rich pay more.”* Strictly, it means they pay a *larger proportion*. A flat tax also makes the rich pay more in naira, but it is proportional.
  + *“A tax on producers is borne by producers.”* It is borne by whoever cannot escape — usually the consumers, if demand is inelastic.
]

== 3.4 Incidence, and the Laffer Curve

Tax incidence is the study of who finally bears the burden of a tax. The statute names a
payer; the market decides a bearer, and the two are rarely the same.

#diagram-fig("diagrams/ch03_incidence.svg",
  "The same ₦3 tax on two markets. Where demand is inelastic the buyer bears 78 per cent of it; where demand is elastic the seller bears 77 per cent.", width: 100%)

#rule-box("Incidence, in one rule")[
  The burden of a tax falls more heavily on the side of the market that is *less elastic*,
  because that is the side that cannot escape by changing quantity. With perfectly
  inelastic demand the whole tax is borne by buyers; with perfectly elastic demand the
  whole tax is borne by sellers.
]

#diagram-fig("diagrams/ch03_laffer.svg",
  "The Laffer curve: revenue rises with the rate up to a point, then falls, because beyond that point the tax base itself shrinks.", width: 90%)

#concept-box("Why the Laffer curve matters, and what it does not say")[
  Beyond some rate, raising the tax rate reduces the revenue, because work, trade and
  investment move into the informal economy or abroad. The curve is a warning, not a
  licence: it does not say where the peak is, and it does not say that every tax cut pays
  for itself. What it does say is that there are always two rates producing the same
  revenue, and a country should prefer the lower one, because it leaves more of the
  economy intact.
]

== 3.5 The Public Debt

The public debt is the accumulated total of past deficits. Debt service is the interest
and principal paid on it in a year, and it is the part of the debt that competes with
schools and roads in the budget.

#table(
  columns: (1.5fr, 2.0fr, 1.9fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Domestic debt],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[External debt],
  ),
  [Who is owed], [residents: banks, pension funds, the central bank], [foreign governments, institutions and bondholders],
  [Currency], [denominated in naira], [denominated in foreign currency],
  [Repayment burden], [a transfer within the country], [a claim on foreign exchange, so it competes with imports],
  [Main risk], [crowding out private borrowers from domestic credit], [exchange-rate depreciation raising the naira value of the debt],
)

#worked-example(
  1,
  "Reading a budget",
  [A government plans to spend ₦8.5 trillion and expects to collect ₦7.2 trillion in revenue. Its budget position is a

    A. surplus of ₦1.3 trillion \\
    B. deficit of ₦1.3 trillion \\
    C. balanced budget \\
    D. deficit of ₦15.7 trillion],
  [
    *Step 1 — which is larger?* Expenditure of ₦8.5 trillion exceeds revenue of ₦7.2 trillion.

    *Step 2 — subtract.* 8.5 − 7.2 = ₦1.3 trillion, and because spending is the larger, the gap is a deficit.

    *Step 3 — kill the rest.* A has the direction right and the word wrong, C would need the two figures to be equal, and D adds them instead of subtracting.

    *Check.* Spending above revenue is a deficit; revenue above spending is a surplus. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Classifying four taxes",
  [Which of the following is an indirect tax?

    A. Personal income tax \\
    B. Company income tax \\
    C. Value added tax \\
    D. Capital gains tax],
  [
    *Step 1 — apply the test.* An indirect tax is levied on a good or service and can be passed on to the buyer.

    *Step 2 — check each.* Personal income tax, company income tax and capital gains tax are all levied on income or gains and cannot be shifted; they are direct.

    *Step 3 — the one that passes on.* VAT is levied on the sale of a good, collected by the seller and borne by the consumer, so it is indirect.

    *Check.* Income and gains are direct; spending is indirect. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  3,
  "Progressive, proportional or regressive",
  [A tax takes ₦5,000 from a person earning ₦50,000 a year and ₦5,000 from a person earning ₦500,000 a year. The tax is

    A. progressive \\
    B. proportional \\
    C. regressive \\
    D. neutral],
  [
    *Step 1 — compute the rates.* For the first earner, 5,000 ÷ 50,000 = 10 per cent. For the second, 5,000 ÷ 500,000 = 1 per cent.

    *Step 2 — compare.* The rate falls as income rises, which is the definition of a regressive tax.

    *Step 3 — kill the rest.* A would need the rate to rise, B would need both rates to be equal, and D is not a classification the syllabus uses.

    *Check.* A flat amount in naira is always regressive, because it is a bigger share of a smaller income. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Who bears the tax",
  [The government imposes a tax on a commodity whose demand is perfectly inelastic and whose supply is normally elastic. The burden of the tax falls

    A. entirely on the producer \\
    B. entirely on the consumer \\
    C. equally on producer and consumer \\
    D. on the government],
  [
    *Step 1 — the rule.* The burden falls on the side that cannot change quantity in response to the price.

    *Step 2 — apply it.* Perfectly inelastic demand means buyers will pay any price for the same quantity, so they cannot escape. The producer faces an elastic supply curve and can reduce quantity, so the producer escapes.

    *Step 3 — the result.* The whole tax is passed forward to the consumer as a higher price.

    *Check.* No escape for the buyer means the whole burden for the buyer. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  5,
  "The fiscal response to a slump",
  [An economy is in a recession with rising unemployment and low inflation. The most appropriate fiscal policy is to

    A. increase taxes and reduce government spending \\
    B. reduce taxes and increase government spending \\
    C. increase the cash reserve ratio \\
    D. sell treasury bills in the open market],
  [
    *Step 1 — diagnose.* Unemployment and low inflation mean aggregate demand is too low, so the policy must raise it.

    *Step 2 — choose the direction.* Cutting taxes leaves households with more to spend and raising spending puts money in directly. Both are expansionary, so B is right.

    *Step 3 — kill the rest.* A is contractionary and would deepen the slump. C and D are monetary instruments, not fiscal ones, and both are contractionary, so they make the problem worse twice over.

    *Check.* Recession → raise demand → spend more, tax less. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: public finance and taxation.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A budget compares expected revenue with planned expenditure, and its name comes from the gap: balanced when the two are equal, a surplus when revenue is larger, a deficit when spending is. Fiscal policy uses spending and taxation to steer aggregate demand — expansionary to fight unemployment, contractionary to fight inflation — and automatic stabilisers do part of that work without a decision being taken. Taxes are direct when the payer bears them and indirect when the burden can be passed on; they are progressive, proportional or regressive according to whether the rate rises, stays flat or falls as income rises. A good tax is equitable, certain, convenient and economical to collect. Incidence follows elasticity, not the statute: the side that cannot escape bears the burden. The Laffer curve says two rates can yield the same revenue, and the public debt is the accumulated deficit, with external debt carrying an exchange-rate risk that domestic debt does not.
  ]
]

== 3.6 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [A budget deficit exists when], [revenue exceeds expenditure], [expenditure exceeds revenue], [revenue equals expenditure], [the government borrows from abroad])

#mcq(2, [Which of the following is a direct tax?], [value added tax], [customs duty], [company income tax], [excise duty])

#mcq(3, [A tax whose rate falls as income rises is], [progressive], [proportional], [regressive], [neutral])

#mcq(4, [The burden of an indirect tax falls mainly on the side of the market that], [is more elastic], [is less elastic], [has more buyers], [supplies more goods])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [Spending above revenue is the definition of a deficit. A is a surplus, C is a balanced budget, and D names one way of financing a deficit rather than the deficit itself.]),
  ("C", [Company income tax is levied on profit and cannot be passed on, so it is direct. VAT, customs duty and excise duty are all levied on goods and can be shifted to the buyer.]),
  ("C", [Regressive: the rate falls as income rises, so the tax takes a larger share of a small income. A is the reverse, B means the rate is constant, and D is not a classification.]),
  ("B", [The less elastic side cannot change quantity to escape, so it absorbs the tax. A describes the side that can escape, C is irrelevant to incidence, and D confuses the number of sellers with the elasticity of the market.]),
))

#chapter-checklist("Before you leave Chapter 3", (
  [Define a budget and name its three positions without hesitating over which is which.],
  [Explain expansionary and contractionary fiscal policy, with two instruments each.],
  [Classify ten taxes as direct or indirect, and justify each in one clause.],
  [Distinguish progressive, proportional and regressive with a worked rate.],
  [State the four principles of a good tax.],
  [Explain incidence, and say who bears a tax when demand is perfectly inelastic.],
))

#concept-box("Carry this into Chapter 4")[
  Taxation raises money inside the country; trade raises it at the border. Chapter 4 moves
  to the border, where a tariff is a tax with a second purpose — protecting a domestic
  industry — and where the balance of payments is the account that tells a government
  whether it can afford to keep buying from abroad. The incidence rule you have just
  learned is the same rule that decides who pays for a tariff.
]

#include "drill_ch03.typ"
