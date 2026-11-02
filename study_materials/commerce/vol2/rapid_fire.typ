#import "template.typ": *

#current-chapter.update("Appendix A: 75 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 75 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[75 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Seventy-five one-line prompts with the answer beside each: twenty-five definitions,
    twenty-five figures and formulas, and twenty-five facts about money, the market and
    the wider world.
    Cover the right-hand column with a sheet of paper and work down the list — ten
    seconds a line. Anything you cannot answer in ten seconds is a chapter to reread
    tonight.
  ]
]

#v(5pt)

== A.1 Twenty-Five Definitions

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Barter], [the direct exchange of goods for goods, with no money],
  [Money], [anything generally acceptable in payment and in settlement of debt],
  [Legal tender], [money that a creditor is bound by law to accept],
  [Near money], [an asset that converts to cash quickly and at little loss],
  [Narrow money (M1)], [currency in circulation plus demand deposits],
  [Broad money (M2)], [M1 plus savings and time deposits],
  [Fiat money], [money whose value rests on law and confidence, not on metal],
  [Inflation], [a sustained rise in the general price level],
  [Credit multiplier], [one divided by the cash reserve ratio],
  [Bank rate], [the rate at which the central bank lends to the banks],
  [Insurance], [the pooling of similar risks so that the few losses are met by the many premiums],
  [Insurable interest], [a financial interest that would be lost if the risk occurred],
  [Indemnity], [restoring the insured to his position before the loss, no more],
  [Subrogation], [the insurer's right, after paying, to pursue the party at fault],
  [Reinsurance], [insurance taken out by an insurer on part of its own risk],
  [Average clause], [the rule that pays the same proportion of the loss as the sum insured bears to the value],
  [Bonded warehouse], [a store in which duty on imports is suspended until removal],
  [Bill of lading], [receipt, contract of carriage and document of title in one],
  [Advertising], [paid, non-personal communication by an identified sponsor],
  [Sales promotion], [a short-term inducement to buy now],
  [Marketing mix], [the four controllable elements: product, price, place, promotion],
  [Market segmentation], [dividing a market into groups with different wants],
  [Primary data], [data collected first-hand for the problem in hand],
  [E-commerce], [the buying and selling of goods and services by electronic means],
  [Balance of payments], [the record of all a country's transactions with the rest of the world],
)
]

#v(6pt)

== A.2 Twenty-Five Figures and Formulas

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Credit multiplier], [1 ÷ cash reserve ratio],
  [Cash ratio 20 per cent], [multiplier 5],
  [Cash ratio 25 per cent], [multiplier 4],
  [Cash ratio 12.5 per cent], [multiplier 8],
  [₦100,000 at a 20 per cent ratio], [total deposits ₦500,000, credit created ₦400,000],
  [₦50,000 at a 10 per cent ratio], [total deposits ₦500,000, credit created ₦450,000],
  [₦200,000 at a 25 per cent ratio], [total deposits ₦800,000, credit created ₦600,000],
  [Credit created], [total deposits less the original deposit],
  [Average clause payment], [loss × (sum insured ÷ value of the property)],
  [Stock ₦10m insured ₦8m, loss ₦4m], [₦3.2m],
  [Stock ₦12m insured ₦9m, loss ₦4m], [₦3.0m],
  [Stock ₦15m insured ₦12m, loss ₦5m], [₦4.0m],
  [Market share], [the firm's sales ÷ total market sales × 100],
  [Sales ₦5m in a market of ₦25m], [20 per cent],
  [Sales ₦8m in a market of ₦40m], [20 per cent],
  [Terms of trade], [export price index ÷ import price index × 100],
  [Balance of trade], [visible exports less visible imports],
  [Gross profit], [turnover less cost of goods sold],
  [Stock turnover], [cost of goods sold ÷ average stock],
  [Break-even output], [fixed cost ÷ contribution per unit],
  [AIDA], [attention, interest, desire, action],
  [The four Ps], [product, price, place, promotion],
  [The five functions of management], [planning, organising, staffing, directing, controlling],
  [Working capital], [current assets less current liabilities],
  [Trade discount], [a reduction off the list price, not entered in the ledger],
)
]

#v(6pt)

== A.3 Twenty-Five Facts About the Wider World

#[
  #set text(size: 8.4pt)
#table(
  columns: (2.05fr, 2.15fr),
  inset: (x: 6pt, y: 5.2pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Prompt],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
  [Issuer of currency in Nigeria], [the Central Bank of Nigeria],
  [Banker to the federal government], [the Central Bank of Nigeria],
  [Lender of last resort], [the Central Bank of Nigeria],
  [Bank that lends long-term for development], [a development bank, not a commercial bank],
  [Deposit insurance], [the Nigeria Deposit Insurance Corporation],
  [Advertising regulator], [the Advertising Practitioners Council of Nigeria],
  [Standards body], [the Standards Organisation of Nigeria],
  [Food and drug regulator], [NAFDAC],
  [Consumer protection regulator], [the FCCPC],
  [Body that administers world trade rules], [the World Trade Organization],
  [Body that lends for balance-of-payments support], [the International Monetary Fund],
  [Body that lends for development projects], [the World Bank],
  [Body for trade and development research], [UNCTAD],
  [Body for labour standards], [the International Labour Organization],
  [West African regional group], [ECOWAS, fifteen members, founded 1975],
  [Continental group], [the African Union, which replaced the OAU in 2002],
  [African free-trade area], [AfCFTA],
  [Oil producers' cartel], [OPEC, founded 1960; Nigeria joined in 1971],
  [Insurance contract's first step], [the proposal form],
  [Document that is a document of title], [the bill of lading, and only the bill of lading],
  [Charged when imports enter for home use], [customs duty],
  [Instrument that limits quantity imported], [a quota],
  [Sale abroad below cost or home price], [dumping],
  [The office function that makes a record findable], [arranging, by filing and indexing],
  [The test of e-commerce], [the transaction is completed electronically, not merely advertised on-line],
)
]

#v(6pt)

#shortcut-box("How to drill this appendix in twenty minutes")[
  + *Seven minutes on A.1.* Definitions are the cheapest marks on the paper, and the ones most often lost to a half-remembered phrase.
  + *Seven minutes on A.2.* Write each formula out rather than reading it; the hand remembers what the eye forgets.
  + *Six minutes on A.3.* These are the fact questions — the bodies, the documents and the regulators — and they are answered by recognition, so cover the column and go fast.
]

#v(4pt)

#text(size: 9.2pt)[The three lists are deliberately uneven in difficulty. A.1 rewards precision, A.2 rewards practice and A.3 rewards breadth. If you have one evening left, do A.2 first: a candidate who can compute a multiplier, a claim under average and a market share has already secured the calculation marks, and the definitions will still be there in the morning.]
