#import "template.typ": *

#current-chapter.update("Chapter 6: The Nigerian Economy in Figures")

#pagebreak()

#chapter-opener(
  6,
  "The Nigerian Economy in Figures",
  subtitle: "The Institutions the Paper Names, the Structure of the Economy, Oil and Fiscal Federalism, and the Five Statistics Every Candidate Should Be Able to Discuss",
  syllabus-ref: "Sec. F • The Nigerian Economy",
  utme-weight: "2 Qs a year on institutions and data",
  running: "The Nigerian Economy",
)

#focus-radar(
  objectives: (
    "Name the six institutions the paper uses, and say what each one does.",
    "Describe the structure of the Nigerian economy: oil, agriculture, services and the informal sector.",
    "Explain fiscal federalism and the derivation principle.",
    "State the five statistics the paper discusses, and what each one measures.",
    "Answer a data question without quoting a figure you are unsure of.",
  ),
  hotspots: (
    "“The institution responsible for monetary policy in Nigeria is …” — the Central Bank of Nigeria. The Federal Ministry of Finance sets fiscal policy; confusing the two is the standard error.",
    "“The body that publishes Nigeria's GDP and inflation figures is …” — the National Bureau of Statistics, not the CBN and not the FIRS.",
    "“Revenue allocation in Nigeria is based on …” — the constitutionally defined sharing formula, with derivation as one of its principles.",
    "“The largest single source of Nigeria's foreign exchange earnings is …” — crude oil, even though agriculture employs more people.",
    "“A country that exports mainly one commodity is vulnerable because …” — its earnings move with a price it does not control.",
  ),
  trap-summary: "Three slips. (1) Assigning monetary policy to the finance ministry, or fiscal policy to the central bank. (2) Confusing the sector that earns the most foreign exchange with the sector that employs the most people. (3) Quoting a precise statistic the paper does not require, when describing what the statistic measures would have earned the mark.",
)

// ============================================================================
== 6.1 The Institutions

Six abbreviations appear in the paper, and each one belongs to exactly one job. The
questions are always the same shape: name the institution that does this, or name the
job that this institution does.

#diagram-fig("diagrams/ch06_institutions.svg",
  "The six institutions and the one job each is known for. Learn the pair, not the acronym in isolation.", width: 100%)

#table(
  columns: (0.8fr, 1.75fr, 2.3fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Full name],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The one job],
  ),
  [CBN], [Central Bank of Nigeria], [monetary policy; issues the naira; holds the external reserves; lender of last resort],
  [NBS], [National Bureau of Statistics], [publishes GDP, inflation, unemployment and trade statistics],
  [FIRS], [Federal Inland Revenue Service], [assesses and collects federal taxes: company income tax, VAT, capital gains],
  [SEC], [Securities and Exchange Commission], [regulates the capital market, the exchange and the issuing of securities],
  [NDIC], [Nigeria Deposit Insurance Corporation], [insures depositors' funds so that a bank failure does not become a savings collapse],
  [FRC], [Fiscal Responsibility Commission], [monitors the federal budget and enforces fiscal rules],
)

#concept-box("Monetary against fiscal, once and for all")[
  *Monetary policy* is about the quantity and cost of money. The CBN runs it, and its
  instruments are open market operations, the reserve ratio and the policy rate.
  *Fiscal policy* is about taxing and spending. The Federal Ministry of Finance and the
  legislature run it, and its instruments are the budget, the tax rates and public
  borrowing. A question that names the wrong body has failed a fact you can learn in one
  line.
]

== 6.2 The Structure of the Economy

Nigeria's economy has four features that the paper returns to: it is oil-dependent for
government revenue and foreign exchange, agricultural in employment, service-dominated in
output, and heavily informal in the way most people actually work.

#table(
  columns: (1.25fr, 1.5fr, 1.5fr, 1.6fr),
  inset: (x: 4.2pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Sector],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Share of output],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Share of employment],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The exam point],
  ),
  [Agriculture], [roughly a fifth to a quarter], [the largest single employer], [low productivity per worker, which is why the employment share exceeds the output share],
  [Industry, including oil], [a quarter to a third], [small], [oil dominates exports but employs very few people directly],
  [Services], [about half], [growing fastest in the cities], [trade, telecoms and finance carry the largest share of output],
  [Informal sector], [not separately counted], [a large majority of workers], [self-employment and micro-businesses outside the tax net],
)

#rule-box("Fiscal federalism, and the derivation principle")[
  + *Fiscal federalism* is the division of taxing powers and spending responsibilities between the federal, state and local governments.
  + Revenue is collected centrally — most of it by the federal government — and shared through the Federation Account under a formula fixed by law.
  + *Derivation* is the principle that the area from which a revenue is derived receives a share of it; it is why oil-producing states receive an additional allocation.
  + The other principles are *population*, *equality of states*, *internal revenue effort* and *land mass and terrain*.
]

#shortcut-box("Three facts that answer a surprising number of data questions")[
  + *Oil is the foreign-exchange earner; agriculture is the employer.* Any question that confuses the two is designed to catch you.
  + *Most government revenue is federal.* The states depend on the Federation Account, which is why the sharing formula is politically charged.
  + *The economy is a price taker in oil.* Nigeria produces a small share of world crude, so it cannot set the price it depends on.
]

== 6.3 The Statistics, and How to Discuss Them

A data question in this paper is rarely a request for a precise figure. It is a request to
say what a figure means, which direction it has moved, and what follows from it.

#diagram-fig("diagrams/ch06_data.svg",
  "Five statistics and what each one measures. The paper tests the meaning far more often than the current value.", width: 100%)

#diagram-fig("diagrams/ch06_weights.svg",
  "Where the forty marks in a paper typically sit. The national economy is the largest single block, which is why this chapter exists.", width: 88%)

#table(
  columns: (1.2fr, 1.9fr, 1.7fr),
  inset: (x: 4.5pt, y: 3.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Statistic],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[If it rises, what has happened],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The follow-on the paper wants],
  ),
  [GDP growth rate], [output is expanding faster than last year], [employment should follow, but only if the growth is labour-intensive],
  [Inflation rate], [the general price level is rising faster], [the poor are hit hardest, because food is a larger share of their spending],
  [MPR], [the CBN has made credit dearer], [investment falls, and the currency may strengthen as capital is attracted],
  [Unemployment rate], [a larger share of the labour force cannot find work], [the youth rate is usually several times the headline rate],
  [External reserves], [the CBN can pay for more months of imports], [a fall below three months of imports is a warning sign],
)

#trap-box("Three data traps")[
  + *Quoting a number you half-remember.* A wrong figure costs the mark that a correct description would have won. Describe the direction and the meaning instead.
  + *Reading a nominal change as a real one.* A minimum wage rise announced in naira is a nominal figure; whether it is a real rise depends on inflation.
  + *Assuming the official figures are complete.* The informal sector is large and hard to measure, so official GDP and official employment both understate activity.
]

#worked-example(
  1,
  "Naming the institution",
  [The institution responsible for formulating and implementing monetary policy in Nigeria is the

    A. Federal Ministry of Finance \\
    B. Central Bank of Nigeria \\
    C. Nigeria Deposit Insurance Corporation \\
    D. Securities and Exchange Commission],
  [
    *Step 1 — separate the two policies.* Monetary policy is about money and credit; fiscal policy is about tax and spending.

    *Step 2 — match the body.* The CBN runs monetary policy. The Ministry of Finance runs fiscal policy, and the NDIC and SEC regulate deposit insurance and the capital market respectively.

    *Step 3 — the tell.* Any option containing the word *finance* in a monetary-policy question is there to catch a candidate who has learned the two words but not the split.

    *Check.* Money is the central bank's business; tax is the ministry's. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Earner against employer",
  [In Nigeria, the sector that contributes most to foreign exchange earnings is

    A. agriculture \\
    B. manufacturing \\
    C. crude petroleum \\
    D. wholesale and retail trade],
  [
    *Step 1 — the question's word.* It asks for *foreign exchange earnings*, not employment and not output.

    *Step 2 — the answer.* Crude oil and gas supply the overwhelming majority of Nigeria's export earnings, even though they employ comparatively few people.

    *Step 3 — kill the rest.* Agriculture is the largest employer, which is why it is the most attractive wrong answer; manufacturing and trade are largely domestic and earn little foreign exchange.

    *Check.* Distinguish the earner from the employer every time this question appears. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Why one commodity is a problem",
  [An economy that depends on a single export commodity is vulnerable because

    A. it cannot produce anything else \\
    B. its export earnings move with a price it does not control \\
    C. it has no need to import \\
    D. its currency can never be devalued],
  [
    *Step 1 — where the risk comes from.* A single product means a single price, and a small producer is a price taker in a world market.

    *Step 2 — the consequence.* A fall in that price cuts government revenue, foreign exchange and the ability to import, all at once — which is exactly the shock oil-dependent economies have repeatedly suffered.

    *Step 3 — kill the rest.* A overstates the case; C is the opposite of the truth, since such economies import manufactures heavily; D is false and irrelevant.

    *Check.* One product, one price, no control over it. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Revenue allocation",
  [The principle that a state should receive a share of the revenue generated within its borders is called

    A. the equality principle \\
    B. the derivation principle \\
    C. the population principle \\
    D. the internal revenue effort principle],
  [
    *Step 1 — read the definition.* The question describes a link between where revenue is generated and who receives it.

    *Step 2 — match the name.* That is derivation: revenue is derived from a place and partly returned to it. It is why the oil-producing states receive an additional allocation.

    *Step 3 — kill the rest.* Equality shares by state, population shares by people, and internal revenue effort rewards states that raise more of their own revenue — three different principles, none of them about origin.

    *Check.* The key word in the question is *generated within its borders*. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  5,
  "Reading a statistic",
  [Nigeria's consumer price index rises from 120 to 132 in a year. This means that

    A. output has risen by 10 per cent \\
    B. the general price level has risen by 10 per cent \\
    C. the naira has appreciated by 10 per cent \\
    D. unemployment has fallen by 10 per cent],
  [
    *Step 1 — what the index measures.* The CPI tracks the cost of a basket of goods, so a change in it measures inflation, not output.

    *Step 2 — the arithmetic.* (132 − 120) ÷ 120 × 100 = 10 per cent, so prices rose by about 10 per cent.

    *Step 3 — kill the rest.* A confuses the price index with a volume index, C confuses domestic inflation with the exchange rate — if anything a 10 per cent inflation rate would put downward pressure on the currency — and D is a labour-market figure that the CPI says nothing about.

    *Check.* The CPI is about prices, and only about prices. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the Nigerian economy in figures.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Six institutions do six jobs: the CBN runs monetary policy and issues the naira, the NBS publishes the statistics, the FIRS collects federal taxes, the SEC regulates the capital market, the NDIC insures deposits and the FRC watches the budget. Nigeria is oil-dependent for foreign exchange and government revenue, agricultural in employment, service-dominated in output and largely informal in the way people work — four facts that answer a surprising number of questions. Fiscal federalism divides taxing and spending between the three tiers of government, and revenue is shared through the Federation Account under principles that include derivation, population, equality, internal revenue effort and land mass. The statistics the paper discusses are growth, inflation, the policy rate, unemployment and the reserves; what it tests is what each one measures, not its current value.
  ]
]

== 6.4 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [Nigeria's GDP and inflation statistics are published by the], [Central Bank of Nigeria], [National Bureau of Statistics], [Federal Inland Revenue Service], [Securities and Exchange Commission])

#mcq(2, [The sector that employs the largest proportion of Nigeria's labour force is], [crude petroleum], [manufacturing], [agriculture], [telecommunications])

#mcq(3, [Fiscal policy in Nigeria is principally the responsibility of the], [Central Bank of Nigeria], [Federal Ministry of Finance], [Nigeria Deposit Insurance Corporation], [National Bureau of Statistics])

#mcq(4, [The principle of revenue allocation that returns a share to the area of origin is], [equality], [population], [derivation], [land mass])

#answer-key-grid(("B", "C", "B", "C"))

#answer-notes((
  ("B", [The National Bureau of Statistics compiles and publishes the national accounts and price data. The CBN publishes monetary and external-sector data, the FIRS collects tax, and the SEC regulates securities.]),
  ("C", [Agriculture remains the largest employer, even though oil earns the foreign exchange. A is the foreign-exchange earner, B and D are smaller employers than agriculture.]),
  ("B", [The Ministry of Finance and the legislature make fiscal policy — tax and spending. A runs monetary policy, C insures deposits, and D publishes statistics.]),
  ("C", [Derivation returns revenue to the area it came from, which is why oil-producing states receive extra. Equality shares by state, population by people, and land mass by terrain.]),
))

#chapter-checklist("Before you leave Chapter 6", (
  [Name six institutions and the one job each performs.],
  [Separate monetary from fiscal policy, and name the body responsible for each.],
  [Describe Nigeria's economy in four sentences: oil, agriculture, services, informality.],
  [Explain the derivation principle and name two other allocation principles.],
  [State what each of the five statistics measures, without quoting a figure.],
  [Say why an oil-dependent economy is vulnerable, in one sentence.],
))

#concept-box("Carry this into the papers")[
  Volume 2 is now complete: the accounts, the money, the budget, the border, the long run
  and the institutions. What remains is the part that turns knowledge into marks — the
  drills at the end of each chapter, the two timed papers, the rapid-fire pairs and the
  master bank. Sit them against the clock. The real examination does not ask whether you
  have read the chapter; it asks whether you can find the right option in forty-five
  seconds, and that is a different skill, learned by practice and not by reading.
]

#include "drill_ch06.typ"
