#import "template.typ": *

#current-chapter.update("Chapter 4: International Trade and the Balance of Payments")

#pagebreak()

#chapter-opener(
  4,
  "International Trade and the Balance of Payments",
  subtitle: "Why Countries Trade, Comparative Advantage, the Case For and Against Protection, Devaluation, and the Two Accounts That Must Balance",
  syllabus-ref: "Sec. F • International Trade",
  utme-weight: "3 Qs a year on trade",
  running: "International Trade",
)

#focus-radar(
  objectives: (
    "State the gains from trade, and distinguish absolute from comparative advantage.",
    "Work out comparative advantage from an input-requirement or output table.",
    "Compare tariffs and quotas, and give the arguments for and against protection.",
    "Explain how devaluation affects the trade balance, and what the J-curve describes.",
    "Name the components of the current and capital accounts, and explain why a deficit must be financed.",
  ),
  hotspots: (
    "“A country has a comparative advantage in a good when …” — its opportunity cost of producing it is *lower* than its trading partner's. The option that says it produces *more* describes absolute advantage.",
    "“A tariff differs from a quota because …” — a tariff raises revenue for the government and a quota does not; a quota limits quantity directly.",
    "“Devaluation makes exports …” — *cheaper abroad and imports dearer at home*. Reversing the two is the commonest error in the topic.",
    "“A visible item in the balance of payments is …” — a physical good. Shipping, insurance and tourism are invisible.",
    "“The balance of payments always balances because …” — a current-account deficit is matched by a capital-account surplus. The accounts are an identity, not a target.",
  ),
  trap-summary: "Three slips. (1) Answering comparative-advantage questions with absolute-advantage data. (2) Reversing what devaluation does to export and import prices. (3) Calling the balance of payments unbalanced because one *component* is in deficit — the account as a whole always balances once financing is included.",
)

// ============================================================================
== 4.1 Why Countries Trade

Trade happens for the same reason exchange happens inside a country: both parties expect
to be better off. What makes it international is that factors of production move less
freely across borders than goods do, and that each country has its own money, its own
taxes and its own government.

#rule-box("The gains from trade, in four lines")[
  + *Specialisation* lets each country do what it is comparatively best at, so world output rises.
  + *Economies of scale* become available, because a producer can sell beyond a small home market.
  + *Variety* widens: consumers get goods the home country cannot make economically.
  + *Competition* from imports disciplines domestic producers, which is a gain that does not appear in any trade statistic.
]

#table(
  columns: (1.55fr, 1.9fr, 1.9fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Claim],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The argument for free trade],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The protectionist reply],
  ),
  [Infant industries], [they will grow up and compete, so protect them only while young], [many never grow up, and protection removes the pressure to become efficient],
  [Employment], [trade expands the sectors a country is good at, so total employment can rise], [the jobs lost in an import-competing sector are visible, the jobs gained are not],
  [Security], [no country needs to make everything], [a country that cannot feed or fuel itself is vulnerable in a crisis],
  [Dumping], [a genuine problem, and the case for a temporary countervailing duty], [the word is often used for any import that is cheaper than the domestic product],
)

== 4.2 Comparative Advantage

Absolute advantage compares productivity: who produces more with the same resources.
Comparative advantage compares *opportunity cost*: who gives up less of the other good to
produce this one. Trade is profitable on the second, not the first, and that is the
single most-examined idea in the chapter.

#diagram-fig("diagrams/ch04_comparative.svg",
  "Two countries, two goods, four numbers. Nigeria needs 2 hours for a bag of rice and Ghana needs 3, so Nigeria has the absolute advantage; the comparative advantage is decided by what each gives up.", width: 100%)

#rule-box("The method, in three steps")[
  + *Write the opportunity cost of one unit of each good, in units of the other good.* From an input table, divide one input requirement by the other.
  + *Compare the two countries on each good.* The one with the lower opportunity cost specialises in that good.
  + *Check that the two specialisations are different.* If both countries seem to have the advantage in the same good, the arithmetic is wrong — one country must have it in each.
]

#shortcut-box("Input table or output table?")[
  *Input table* — hours or resources needed per unit. *Lower is better*, and the opportunity cost of one unit is the ratio of the two input figures.
  *Output table* — units produced per unit of resource. *Higher is better*, and the opportunity cost of one unit is the *inverse* of the ratio of the two output figures.
  Read which table you have been given before touching the numbers, because the two tables point in opposite directions.
]

== 4.3 Protection: Tariffs, Quotas and the Rest

Protection is any policy that restricts imports in order to favour domestic producers. It
is a tax or a limit with a national purpose, and the paper wants you to see both the
purpose and the cost.

#diagram-fig("diagrams/ch04_tariff.svg",
  "A tariff raises the domestic price from the world price to the world price plus the tariff, so the quantity imported shrinks and consumers pay more.", width: 96%)

#table(
  columns: (1.2fr, 1.65fr, 1.6fr, 1.4fr),
  inset: (x: 4.2pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who gains],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who loses],
  ),
  [Tariff], [a tax on imports, raising their landed price], [the government, in revenue; domestic producers, in price], [consumers, who pay more for everything the tariff touches],
  [Quota], [a physical limit on the quantity imported], [holders of the import licence; domestic producers], [consumers, and the government, which collects nothing],
  [Embargo], [a complete ban on trade with a country or in a good], [the protected industry], [everyone else, and the political relationship],
  [Subsidy to domestic producers], [lowers their costs so they can undercut imports], [domestic producers], [taxpayers, who fund the subsidy],
  [Exchange control], [rationing of foreign exchange], [the government, which allocates it], [importers, who queue or pay a premium],
)

#concept-box("The tariff diagram, in words")[
  A tariff raises the price consumers face from the world price to the world price plus
  the tax, and it lowers the price producers receive abroad. The government collects a
  rectangle of revenue; domestic producers gain a rectangle of extra revenue; consumers
  lose a much larger area, and the two triangles that nobody collects are the deadweight
  loss — trade that would have made both countries better off and no longer happens.
]

== 4.4 Devaluation and the J-Curve

Devaluation lowers the official value of a currency against others. Revaluation raises
it. Depreciation and appreciation are the same movements when the market, rather than
the government, does the adjusting.

#diagram-fig("diagrams/ch04_devaluation.svg",
  "The J-curve: after a devaluation the trade balance usually worsens for a few months before it improves, because contracts and habits do not change at once.", width: 92%)

#rule-box("What devaluation does, and the condition it needs")[
  + *Exports become cheaper* in foreign currency, so foreign buyers buy more of them.
  + *Imports become dearer* in domestic currency, so domestic buyers buy fewer of them.
  + The trade balance improves only if the *sum of the export and import demand elasticities exceeds one* — the Marshall–Lerner condition. If demand is inelastic both ways, the value of imports rises even as the volume falls, and the balance worsens.
]

#trap-box("Three devaluation traps")[
  + *“Devaluation makes imports cheaper.”* It makes them dearer at home and exports cheaper abroad. Reversing the two is the commonest error in the chapter.
  + *“The balance improves immediately.”* The J-curve says otherwise: contracts are already signed and habits take time to change, so the first months usually show a deterioration.
  + *“Devaluation is costless.”* It raises the naira price of imported inputs, which feeds cost-push inflation, and it raises the domestic currency value of foreign debt.
]

== 4.5 The Balance of Payments

The balance of payments is the record of all a country's transactions with the rest of the
world in a year. It has two accounts, and the two must balance — not because governments
try to make them, but because every transaction appears twice.

#diagram-fig("diagrams/ch04_bop.svg",
  "The two accounts: the current account records goods, services, income and transfers; the capital account records investment, loans and changes in reserves.", width: 100%)

#rule-box("The two accounts, and the identity")[
  + *Current account* — visible trade (goods), invisible trade (services), income from investments abroad and transfers such as remittances. Its sum is the current-account balance.
  + *Capital (financial) account* — direct investment, portfolio investment, loans and changes in reserves.
  + *Balance of payments* = current account + capital account = 0, always. A current-account deficit is financed by a capital-account surplus: borrowing, selling assets or running down reserves.
  + *Balance of trade* = visible exports − visible imports. It is only one part of the current account, and a trade deficit is not the same as a payments deficit.
]

#table(
  columns: (1.45fr, 1.85fr, 1.45fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Country grouping],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Nigeria's membership],
  ),
  [ECOWAS], [the Economic Community of West African States, a customs union], [a founding member, 1975],
  [AfCFTA], [the African Continental Free Trade Area, a continental free-trade area], [a signatory, and one of the largest markets in it],
  [OPEC], [the Organisation of the Petroleum Exporting Countries], [a member since 1971],
  [WTO], [the World Trade Organisation, which sets the rules of trade], [a member through the multilateral system],
)

#worked-example(
  1,
  "Absolute against comparative advantage",
  [Using the figures in the figure above, Nigeria has the absolute advantage in rice because it needs

    A. fewer hours per bag, but Ghana has the comparative advantage in rice \\
    B. fewer hours per bag, and it also has the comparative advantage in rice \\
    C. more hours per bag, but the comparative advantage nonetheless \\
    D. fewer hours per bag, and trade therefore cannot benefit Ghana],
  [
    *Step 1 — absolute advantage.* Nigeria needs 2 hours for a bag of rice against Ghana's 3, so Nigeria is absolutely more productive.

    *Step 2 — comparative advantage.* Nigeria gives up 2 h of cloth time per bag of rice; Ghana gives up 3 h of cloth time per bag of rice — and since 1 bag of rice costs Ghana 1 whole bale of cloth while it costs Nigeria half a bale, Nigeria has the lower opportunity cost. So Nigeria has the comparative advantage in rice as well.

    *Step 3 — check the other good.* Ghana's comparative advantage is in cloth, where it gives up 1 bag of rice per bale against Nigeria's 2. Different goods, as the arithmetic requires.

    *Check.* Read the table before reading the options. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The effect of a tariff",
  [A tariff imposed on imported rice will most likely

    A. lower the domestic price of rice and raise the quantity imported \\
    B. raise the domestic price of rice and reduce the quantity imported \\
    C. raise the domestic price of rice and raise the quantity imported \\
    D. lower the domestic price of rice and reduce the quantity imported],
  [
    *Step 1 — what a tariff is.* A tax on imports, which raises the price at which they can be sold domestically.

    *Step 2 — trace it through.* A higher domestic price reduces the quantity demanded, and it makes domestic production more profitable, so imports fall.

    *Step 3 — kill the rest.* A and D have the price direction wrong, which is the whole point of a tariff. C has the quantity direction wrong: a higher price never increases the quantity demanded.

    *Check.* Tax an import and both the price and the domestic output rise, while the import falls. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Devaluation, and who it helps",
  [A country devalues its currency. In the short run this will

    A. make its exports dearer abroad and its imports cheaper at home \\
    B. make its exports cheaper abroad and its imports dearer at home \\
    C. make both its exports and its imports cheaper \\
    D. have no effect on the prices of exports or imports],
  [
    *Step 1 — what changes.* Devaluation lowers the value of the domestic currency against foreign currencies.

    *Step 2 — translate into the other currency.* A good priced at 1,000 units of domestic currency, sold abroad, now costs fewer units of foreign currency — so exports are cheaper abroad. An imported good priced in foreign currency now costs more domestic currency — so imports are dearer at home.

    *Step 3 — the purpose.* Exporters sell more, importers buy less, and the trade balance should improve — after the J-curve.

    *Check.* A cheaper currency makes your goods cheap to others and their goods dear to you. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Reading the accounts",
  [A country's visible exports are ₦40 billion, visible imports ₦55 billion, invisible earnings ₦6 billion, and capital inflows ₦12 billion. Which statement is correct?

    A. The balance of trade is a deficit of ₦15 billion and the balance of payments is in deficit \\
    B. The balance of trade is a surplus of ₦15 billion \\
    C. The balance of trade is a deficit of ₦15 billion and the current account is a deficit of ₦9 billion \\
    D. The balance of payments cannot be computed from these figures],
  [
    *Step 1 — the balance of trade.* Visible exports minus visible imports: 40 − 55 = −₦15 billion, a deficit.

    *Step 2 — the current account.* Add the invisible earnings: −15 + 6 = −₦9 billion, still a deficit.

    *Step 3 — the capital account.* Inflows of ₦12 billion exceed the current-account deficit of ₦9 billion, so the overall balance is in surplus and reserves rise. A is wrong on the second half, B has the sign reversed, and D is wrong because every component is given.

    *Check.* Trade balance first, then add invisibles, then compare with the capital flow. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  5,
  "The argument that fails",
  [Which of the following is the weakest argument for protecting a domestic industry with a tariff?

    A. The industry is an infant that needs time to reach efficient scale \\
    B. The industry is essential to national defence \\
    C. The tariff raises revenue for the government \\
    D. The industry is being dumped on by foreign producers],
  [
    *Step 1 — what makes an argument weak.* A protection argument is weak when it confuses a benefit to the government with a benefit to the economy.

    *Step 2 — test each.* Infancy (A), defence (B) and dumping (D) are all arguments about the industry itself, and each can be right or wrong on its facts but is at least relevant to protection.

    *Step 3 — the odd one out.* C is true — a tariff does raise revenue — but revenue is not a reason to protect an industry: the same revenue could be raised by a tax that does not distort trade, so the argument defends the tariff by its by-product.

    *Check.* Ask whether the reason is about the industry or about the treasury. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch04.svg",
  "Chapter 4 recap card: international trade.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Countries trade to specialise, to reach scale, to widen choice and to import competition. The rule that decides who makes what is comparative advantage — who gives up less of the other good — not absolute advantage, which only compares productivity. Protection takes five main forms: the tariff, which raises price and yields revenue; the quota, which limits quantity and yields none; the embargo; the subsidy; and exchange control. All of them help domestic producers and cost consumers more than they help. Devaluation makes exports cheaper abroad and imports dearer at home, improves the trade balance only if the elasticities sum to more than one, and worsens it first — the J-curve. The balance of payments records the current account and the capital account, and the two always balance because a current-account deficit is financed by a capital-account surplus. The balance of trade is only the visible part of the current account.
  ]
]

== 4.6 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [A country has a comparative advantage in a good when it], [produces more of it than its trading partner], [gives up less of another good to produce it], [has more workers in that industry], [can produce it without any imports])

#mcq(2, [A tariff differs from a quota in that a tariff], [limits the quantity imported directly], [raises revenue for the government], [is imposed only on exports], [never raises the domestic price])

#mcq(3, [Devaluation of a currency is intended to], [make exports cheaper and imports dearer], [make exports dearer and imports cheaper], [reduce the volume of exports], [raise the value of the currency])

#mcq(4, [The balance of payments always balances because], [exports always equal imports], [a current-account deficit is financed by a capital-account surplus], [governments balance their budgets], [the central bank fixes the exchange rate])

#answer-key-grid(("B", "B", "A", "B"))

#answer-notes((
  ("B", [Comparative advantage is about opportunity cost — who gives up less of the other good. A describes absolute advantage, C confuses the size of the industry with its efficiency, and D confuses self-sufficiency with advantage.]),
  ("B", [A tariff is a tax on imports and yields revenue; a quota limits quantity and yields none. A describes the quota, C confuses imports with exports, and D is wrong because a tariff does raise the domestic price.]),
  ("A", [A cheaper currency lowers the foreign-currency price of exports and raises the domestic-currency price of imports. B is revaluation, C is the opposite of the intention, and D describes appreciation.]),
  ("B", [Every transaction is recorded twice, so a deficit on one account is matched by a surplus on the other. A is not required, C refers to the government's budget rather than the external accounts, and D describes an exchange-rate regime, not an accounting identity.]),
))

#chapter-checklist("Before you leave Chapter 4", (
  [State four gains from trade, and one argument on each side of protection.],
  [Work a comparative-advantage table from both an input form and an output form.],
  [Explain how a tariff differs from a quota in three respects.],
  [Say what devaluation does to export and import prices, and what the J-curve is.],
  [Name the components of the current account and of the capital account.],
  [Explain why the balance of payments always balances while a current-account deficit is still a problem.],
))

#concept-box("Carry this into Chapter 5")[
  Trade decides how a country earns its foreign exchange; development decides what it
  does with the income. Chapter 5 turns to the long run: the difference between growth and
  development, the population structure that determines how many workers an economy must
  absorb, and the four kinds of unemployment those workers can fall into. Everything in
  the first four chapters has been about making the economy larger; the next is about
  making it better.
]

#include "drill_ch04.typ"
