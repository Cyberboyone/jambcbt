#import "template.typ": *

#current-chapter.update("Appendix I: The Institutions File")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: The Institutions File]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Institutions File]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Who does what, who publishes what, and which pairing the examiner offers as the wrong
    option. Every question in this appendix has appeared in some form on a Nigerian
    Economics paper: the institutions are fixed, and the matching is the mark.
  ]
]

#v(5pt)

== I.1 The Six Bodies the Paper Names

#[
  #set text(size: 8.3pt)
#table(
  columns: (1.25fr, 1.85fr, 1.55fr, 1.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it publishes],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Do not confuse with],
  ),
  [Central Bank of Nigeria], [monetary policy, currency, the exchange rate, reserves], [the policy rate, external reserves, the balance of payments], [the Ministry of Finance],
  [National Bureau of Statistics], [official statistics], [GDP, the consumer price index, unemployment], [the CBN],
  [Federal Inland Revenue Service], [federal tax assessment and collection], [company income tax, VAT, withholding tax], [the customs service or a state board],
  [Nigeria Deposit Insurance Corporation], [insuring depositors against bank failure], [the insured deposit limit], [the CBN's lender-of-last-resort role],
  [Securities and Exchange Commission], [regulating the capital market], [registration of market operators], [the stock exchange itself],
  [Fiscal Responsibility Commission], [monitoring the budget and the fiscal rule], [fiscal reports on the budget], [the Budget Office],
)

  #v(4pt)

  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[Three more appear from time to time: the *Debt Management Office*, which issues and services federal debt; the *Budget Office of the Federation*, which prepares the budget; and the *Nigerian Customs Service*, which collects import duty. None of them makes monetary policy, and that single fact answers most of the pairing questions.]
]

#v(5pt)

#concept-box("The three-way split that settles the matching questions")[
  + *Money belongs to the CBN.* The policy rate, the reserve ratio, open market operations, the reserves and the exchange rate are all central-bank business.
  + *Numbers belong to the NBS.* GDP, the CPI, the unemployment rate and the population are statistics, and statistics come from the bureau.
  + *Taxes belong to the FIRS.* Company income tax and VAT are federal; personal income tax is a state matter; market tolls and rates are local.
]

#v(5pt)

== I.2 The Monetary Policy Instruments, in the Order to Recall Them

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.35fr, 2.05fr, 1.35fr, 1.2fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Used by the CBN as],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[To fight inflation],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[To fight recession],
  ),
  [Policy rate], [the rate at which it lends to banks], [raise], [lower],
  [Cash reserve ratio], [the share of deposits held with it], [raise], [lower],
  [Liquidity ratio], [the share of deposits held in liquid form], [raise], [lower],
  [Open market operations], [buying and selling treasury bills], [sell], [buy],
  [Special deposits], [funds called in from banks], [call in], [release],
  [Moral suasion], [private persuasion of bank chiefs], [tighten], [loosen],
  [Selective controls], [ceilings on particular kinds of credit], [impose], [relax],
)

  #v(4pt)

  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[The table has one column of policy and two of direction, and that is the whole of Chapter 2's third section. Learn it as a sentence rather than a grid: *to restrain, take money out; to expand, put money in.*]
]

#v(5pt)

== I.3 The Revenue-Sharing Formula and the Three Tiers

#table(
  columns: (1.5fr, 1.4fr, 2.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Principle],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Favours],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The exam note],
  ),
  [Equality], [small states], [every state receives a basic share regardless of size],
  [Population], [large states], [the largest single weight in most formulas],
  [Land mass and terrain], [large or difficult territory], [cost of providing services across distance],
  [Derivation], [oil-producing states], [a share of the revenue generated in the area],
  [Social development], [poorer states], [a factor for relative need],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt)[Fiscal federalism is the constitutional division of *taxing powers* and *spending responsibilities* among the federal, state and local tiers. Most revenue is collected federally and shared through the Federation Account; most spending on schools, clinics and roads is done by the states and local governments. The mismatch between where revenue is collected and where it is spent is the permanent tension of the arrangement — and the reason a formula is needed at all.]

#v(5pt)

== I.4 What the Paper Quotes as Data

#[
  #set text(size: 8.4pt)
#table(
  columns: (1.55fr, 1.55fr, 2.3fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Figure],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Published by],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[How a question uses it],
  ),
  [GDP and growth rate], [NBS], [compare two years, or compute growth per head],
  [Inflation rate], [NBS], [compute the change from two index numbers],
  [Unemployment rate], [NBS], [distinguish it from the population share],
  [External reserves], [CBN], [months of import cover; the size of the buffer],
  [Exchange rate], [CBN], [convert, or judge a devaluation],
  [Budget and deficit], [Budget Office and the Ministry of Finance], [compute the balance or its share of GDP],
  [Public debt], [Debt Management Office], [the debt service ratio],
  [Tax revenue], [FIRS], [the tax base and the yield],
)

  #v(4pt)

  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[A question almost never asks for a memorised figure — it gives the figures and asks for the arithmetic. What it tests is whether you know *which* figure answers the question and which body publishes it.]
]

#v(5pt)

#trap-box("The five pairings the examiner offers as wrong options")[
  + *CBN and the Ministry of Finance.* Monetary policy is the bank's; fiscal policy is the ministry's. A question that names the ministry as the setter of the policy rate is offering a trap.
  + *CBN and the NBS on statistics.* The CBN publishes its own research and the external accounts, but GDP and the CPI are NBS figures.
  + *FIRS and the customs service.* Company income tax and VAT are federal inland revenue; import duty is customs.
  + *NDIC and the CBN.* The CBN is the lender of last resort; the NDIC insures the depositor.
  + *SEC and the exchange.* The commission regulates; the exchange trades.
]

#v(4pt)

#shortcut-box("One sentence to memorise")[
  *Money to the CBN, numbers to the NBS, taxes to the FIRS, deposits to the NDIC, markets to the SEC, and the budget to the ministry and the Fiscal Responsibility Commission.* Six clauses, and between them they answer every institutional question in the paper.
]

#v(5pt)

== I.5 The Questions the Paper Asks About Each Body

#table(
  columns: (1.3fr, 1.95fr, 2.05fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The answer in one line],
  ),
  [Central Bank of Nigeria], [“Which body sets the monetary policy rate?”], [the CBN — money, credit and the exchange rate],
  [National Bureau of Statistics], [“Which body publishes the consumer price index?”], [the NBS — GDP, prices, unemployment],
  [Federal Inland Revenue Service], [“Which body collects company income tax?”], [the FIRS — federal taxes, including VAT],
  [Nigeria Deposit Insurance Corporation], [“Which body protects depositors when a bank fails?”], [the NDIC — deposit insurance, not lending],
  [Securities and Exchange Commission], [“Which body regulates the capital market?”], [the SEC — registration and supervision of operators],
  [Fiscal Responsibility Commission], [“Which body monitors the federal budget?”], [the commission — the fiscal rule and the budget],
)

#v(4pt)

#text(font: "DejaVu Sans", size: 8.6pt, fill: jamb-muted)[Notice the shape of every question: a function and a body, and one of the two is wrong. Read the function first and name the body from the function — never the reverse, because the wrong option is always a real body with a real function attached to the wrong name.]
