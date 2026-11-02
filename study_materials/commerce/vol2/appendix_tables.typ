#import "template.typ": *

#current-chapter.update("Appendix E: The Classification Tables")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Classification Tables]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Classification Tables]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Six tables, one per kind of classification the paper asks for. Commerce is a
    subject of categories: this kind of money, this kind of bank, this class of
    insurance, this organisation, this channel. Almost every "which of the following"
    question is a classification question with a sentence wrapped around it.
  ]
]

#v(5pt)

== E.1 The Kinds of Money, on One Page

#table(
  columns: (1.15fr, 1.5fr, 1.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The example to quote],
  ),
  [Commodity money], [a thing whose value as a commodity equals its value as money], [gold, salt, cowries, cattle],
  [Fiat money], [a token whose value rests on law and confidence], [the naira note, the coin],
  [Bank money], [a deposit that is transferred rather than withdrawn], [a current account operated by cheque],
  [Near money], [an asset convertible into money quickly and at little loss], [a treasury bill, a fixed deposit],
  [Electronic money], [value stored and transferred by electronic means], [a card balance, a mobile wallet],
  [Narrow money (M1)], [currency plus demand deposits], [the measure of what can be spent at once],
  [Broad money (M2)], [M1 plus savings and time deposits], [the measure the central bank watches for inflation],
)

#v(4pt)

#rule-box("The one-word test for every kind of money")[
  Ask what gives the thing its value. If the answer is *the material*, it is commodity money. If the answer is *the law*, it is fiat. If the answer is *a bank's promise*, it is bank money. If the answer is *a stored balance in a machine*, it is electronic money. No other classification appears in the paper.
]

#v(5pt)

== E.2 The Banks and What Each One Does

#table(
  columns: (1.2fr, 1.5fr, 1.5fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Institution],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The function that defines it],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The question it answers],
  ),
  [Central bank], [issues currency, bankers' bank, lender of last resort, monetary policy], [who controls the money supply],
  [Commercial bank], [accepts deposits and lends for profit, chiefly short-term], [who lends a trader working capital],
  [Merchant bank], [wholesale banking: acceptance of bills, corporate finance, trade finance], [who finances a large import],
  [Development bank], [long-term lending for projects the market will not finance], [who funds a new factory],
  [Mortgage bank], [long-term lending against land and buildings], [who funds a house],
  [Microfinance bank], [small loans and savings for the unbanked], [who lends a market trader ₦50,000],
  [Cooperative or community bank], [banking for the members of a group], [who lends to a farmers' society],
)

#v(4pt)

#table(
  columns: (1.25fr, 1.75fr, 1.2fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Account],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The feature that decides the question],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Interest],
  ),
  [Current account], [payable on demand, cheque book, usually no interest], [none or minimal],
  [Savings account], [passbook or card, withdrawal limits, interest paid], [modest],
  [Fixed or time deposit], [money lodged for a fixed term, withdrawn early at a penalty], [highest],
  [Domiciliary account], [held in a foreign currency], [as the currency allows],
)

#v(5pt)

== E.3 The Aids to Trade and the Obstacle Each Removes

#table(
  columns: (1.1fr, 1.55fr, 1.55fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Aid],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The obstacle it removes],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The utility it creates],
  ),
  [Transport], [the distance between producer and consumer], [place utility],
  [Warehousing], [the gap in time between production and consumption], [time utility],
  [Insurance], [the risk of loss by fire, theft, accident or death], [security, which allows enterprise],
  [Banking], [the shortage of money at the moment of the trade, and the risk of carrying cash], [ease of payment and credit],
  [Advertising], [the buyer's ignorance of what is offered], [information],
  [Communication], [the inability of the parties to agree at a distance], [information, and a record of the bargain],
)

#v(4pt)

#trap-box("Insurance is not a way of avoiding risk")[
  Insurance *transfers* a risk; it does not remove it. The fire still happens, the ship still sinks. What the premium buys is the certainty that the loss will be paid for, which is why the examiner's distractor — "insurance prevents loss" — is always wrong. The aid that removes an obstacle is transport (distance), warehousing (time) and insurance (fear of loss), and the obstacle insurance removes is the *fear*, not the event.
]

#v(5pt)

== E.4 The Classes of Insurance

#table(
  columns: (1.3fr, 1.5fr, 1.4fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it covers],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The policy to name],
  ),
  [Life assurance], [death, or survival to the end of a term], [term, whole-life, endowment, annuity],
  [Fire insurance], [loss of property by fire, lightning and explosion], [a fire policy with an average clause],
  [Marine insurance], [loss of goods or ship at sea], [hull, cargo, freight],
  [Motor insurance], [third-party liability, and the vehicle itself if comprehensive], [third-party, third-party fire and theft, comprehensive],
  [Accident insurance], [personal injury or death by accident], [a personal accident policy],
  [Fidelity guarantee], [dishonesty of an employee], [a fidelity bond],
  [Burglary and theft], [loss of property by breaking and entering], [a burglary policy],
  [Employer's liability], [injury to a workman in the course of employment], [a workmen's compensation policy],
)

#v(4pt)

#table(
  columns: (1.45fr, 1.45fr, 1.35fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Principle],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[In one sentence],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The mark it protects],
  ),
  [Insurable interest], [the insured must lose money if the event happens], [a policy taken out by a stranger],
  [Utmost good faith], [every material fact must be disclosed], [a concealed illness or a previous fire],
  [Indemnity], [the claim restores, and does not enrich], [a claim above the value of the goods],
  [Subrogation], [the insurer steps into the insured's shoes after paying], [a double recovery from the party at fault],
  [Contribution], [insurers share one loss between them], [two policies on one warehouse],
  [Proximate cause], [the nearest cause in an unbroken chain decides], [a loss by fire after a riot],
)

#v(5pt)

== E.5 The International Organisations

#table(
  columns: (1.15fr, 1.55fr, 1.5fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The word that identifies it],
  ),
  [IMF], [short-term lending to correct a balance-of-payments deficit], [conditionality],
  [World Bank], [long-term lending for development projects], [project],
  [WTO], [administers trade rules and settles trade disputes], [rules],
  [UNCTAD], [research and advocacy on trade and development], [advocacy],
  [ILO], [labour standards and conventions on work], [labour],
  [ECOWAS], [economic integration of fifteen West African states, founded 1975], [West Africa],
  [African Union], [continental political and economic cooperation, replacing the OAU in 2002], [continent],
  [AfCFTA], [a free-trade area for African goods and services], [free trade],
  [EU], [a single market, and for many members a single currency], [single market],
  [OPEC], [production quotas among oil-exporting states, founded 1960], [quota],
)

#v(5pt)

== E.6 The Channels of Distribution and the Four Models

#table(
  columns: (1.35fr, 1.7fr, 1.05fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Channel],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[When it is chosen],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The product],
  ),
  [Producer → consumer], [few, large or technical buyers; perishables; direct selling], [a machine, bread],
  [Producer → retailer → consumer], [a large retailer can buy in bulk and sell direct], [a supermarket's own label],
  [Producer → wholesaler → retailer → consumer], [many small, scattered retailers], [soap, matches, soft drinks],
  [Producer → agent → wholesaler → retailer], [imports and exports, where a local agent is needed], [an imported car],
)

#v(3pt)

#table(
  columns: (1.15fr, 1.65fr, 1.3fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Model],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Seller and buyer],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The example],
  ),
  [B2B], [business sells to business], [a wholesaler ordering from a factory portal],
  [B2C], [business sells to the consumer], [an on-line bookshop],
  [C2C], [consumer sells to consumer], [a second-hand marketplace],
  [C2B], [consumer sells services to business], [a freelance designer on a platform],
)

#v(4pt)

#concept-box("The one question behind every classification table")[
  + *What is being classified?* Kind, function, class, body, channel or model. The examiner never mixes them in one item, and the first job is to name the category the stem is asking about.
  + *Which member of the class does the stem describe?* Every distractor in these tables is another member of the same class, correctly described but wrongly matched.
  + *What is the single defining feature?* For money it is what gives value; for banks it is the deposit or the term; for insurance it is the principle; for a body it is the word — Fund, Bank, rules, quota, region.
]
