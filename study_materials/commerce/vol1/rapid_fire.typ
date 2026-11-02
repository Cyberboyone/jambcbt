#import "template.typ": *

#current-chapter.update("Appendix A: 60 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 60 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[60 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Sixty one-line prompts with the answer beside each: twenty definitions, twenty
    figures and formulas, and twenty facts about the way trade is organised. Cover the
    right-hand column with a sheet of paper and work down the list — ten seconds a
    line. Anything you cannot answer in ten seconds is a chapter to reread tonight.
  ]
]

#v(5pt)

== A.1 Twenty Definitions

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
  [Commerce], [trade plus the aids to trade],
  [Industry], [the extraction, processing and construction of goods],
  [Direct service], [a personal service rendered and consumed at once],
  [Production], [the creation of utility],
  [Form utility], [created by changing the shape or composition of a good],
  [Place utility], [created by moving a good to where it is wanted],
  [Time utility], [created by storing a good until it is wanted],
  [Possession utility], [created by transferring ownership],
  [Chain of distribution], [producer → wholesaler → retailer → consumer],
  [Sole proprietorship], [one owner, unlimited liability],
  [Partnership], [two to twenty persons carrying on business together],
  [Partnership deed], [the document that settles capital, profit, salaries and admission],
  [Joint and several liability], [each partner liable for the whole partnership debt],
  [Cooperative society], [a voluntary association, one member one vote, service not profit],
  [Patronage dividend], [surplus returned to members in proportion to their trade],
  [Incorporation], [the creation of a company as a separate legal person],
  [Perpetual succession], [the company continues despite changes of membership],
  [Memorandum of association], [the company's charter: name, objects, liability and capital],
  [Articles of association], [the internal rules of the company],
  [Debenture], [a long-term loan to a company, carrying fixed interest],
  [Working capital], [current assets less current liabilities],
  [Trade discount], [a reduction off the list price, not entered in the ledger],
  [Cash discount], [a reduction for payment within a stated period],
  [Mark-up], [profit as a percentage of cost],
  [Margin], [profit as a percentage of selling price],
  [Balance of trade], [visible exports less visible imports],
  [Balance of payments], [the record of all a country's transactions with the rest of the world],
  [Terms of trade], [export price index ÷ import price index × 100],
  [Bill of lading], [receipt, contract of carriage and document of title],
  [Letter of credit], [the importer's bank's promise to pay the exporter against documents],
  [Indemnity], [restoring the insured to his position before the loss, no more],
  [Subrogation], [the insurer's right to pursue the party who caused the loss],
  [Bonded warehouse], [a store where duty on imports is deferred until removal],
  [Consumer sovereignty], [the consumer's spending decides what is produced],
  [Progressive tax], [a tax whose rate rises with income],
  [Privatisation], [transfer of ownership from the state to private investors],
  [Commercialisation], [a state firm required to cover its costs while staying state-owned],
  [Corporate social responsibility], [voluntary conduct that serves stakeholders beyond shareholders],
)
]

#v(6pt)

== A.2 Twenty Figures and Formulas

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
  [Maximum partners, ordinary firm], [twenty],
  [Maximum members, private company], [fifty],
  [Minimum members, public company], [two],
  [Minimum members, cooperative], [ten],
  [Working capital], [current assets − current liabilities],
  [Current ratio], [current assets ÷ current liabilities],
  [Capital employed], [fixed assets + working capital],
  [Mark-up on cost], [profit ÷ cost × 100],
  [Margin on selling price], [profit ÷ selling price × 100],
  [Margin from mark-up], [mark-up ÷ (100 + mark-up) × 100],
  [Two successive discounts of 20% and 5%], [equivalent to 24% off the list price],
  [Balance of trade], [visible exports − visible imports],
  [Current account balance], [visible balance + net invisibles],
  [Terms of trade], [export price index ÷ import price index × 100],
  [A terms-of-trade figure above 100], [each unit of export buys more imports than in the base year],
  [Claim under average], [loss × (sum insured ÷ value at risk)],
  [Share premium], [issue price − nominal value],
  [Dividend], [declared out of distributable profit, never out of capital],
  [Debenture interest], [a fixed charge, payable whether or not profit is made],
  [Stale cheque], [more than six months old],
)
]

#v(6pt)

== A.3 Twenty Facts About the Organisation of Trade

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
  [Registrar of companies], [the Corporate Affairs Commission],
  [Standards body], [the Standards Organisation of Nigeria],
  [Food and drug regulator], [NAFDAC],
  [Competition and consumer regulator], [the FCCPC],
  [Company comes into existence on], [issue of the certificate of incorporation],
  [A company's external charter], [the memorandum of association],
  [A company's internal rulebook], [the articles of association],
  [Document inviting the public to subscribe], [the prospectus],
  [Public corporation is created by], [an Act of the legislature],
  [Public corporation is financed by], [government grants and loans],
  [Natural monopoly example], [water or electricity distribution],
  [Document proving origin of imports], [the certificate of origin],
  [Document that is a document of title], [the bill of lading],
  [Document that acknowledges payment], [the receipt],
  [Document that summarises the account], [the statement of account],
  [Issuer of a credit note], [the seller],
  [Issuer of a debit note], [the buyer],
  [Discount never entered in the ledger], [trade discount],
  [Insurance that covers a dishonest employee], [fidelity guarantee],
  [Insurance that is compulsory for motorists], [third-party motor insurance],
  [Tax collected through the price of goods], [indirect tax],
  [Tax whose rate rises with income], [progressive tax],
  [Form of government help to local industry], [tariff, quota, embargo, licence or subsidy],
  [The consumer's remedy for a defective good], [redress],
)
]

#v(6pt)

#shortcut-box("How to drill this appendix in twenty minutes")[
  + *Seven minutes on A.1.* Definitions are the cheapest marks on the paper, and the ones most often lost to a half-remembered phrase.
  + *Seven minutes on A.2.* Write each formula out rather than reading it; the hand remembers what the eye forgets.
  + *Six minutes on A.3.* These are the fact questions — the names, the documents and the bodies — and they are answered by recognition, so cover the column and go fast.
]

#v(4pt)

#text(size: 9.2pt)[The three lists are deliberately uneven in difficulty. A.1 rewards precision, A.2 rewards practice and A.3 rewards breadth. If you have one evening left, do A.2 first: a candidate who can compute a discount, a balance of trade and a claim under average has already secured the calculation marks, and the definitions will still be there in the morning.]
