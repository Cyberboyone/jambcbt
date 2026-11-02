#import "template.typ": *

#current-chapter.update("Appendix D: The Glossary, A to Z")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: The Glossary, A to Z]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Glossary, A to Z]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Every term the paper has used, defined in one line. The definitions are written to
    be quoted, not paraphrased: an examiner marking a definition question is looking for
    the words in the right order, and half a definition scores nothing.
  ]
]

#v(5pt)

#text(size: 9pt)[A term that appears in bold anywhere in Chapters 1 to 8 appears here. Where two terms are routinely confused with each other, the confused pair is collected at D.2 and the distinction is stated in the form the paper tests it.]

#v(5pt)

#[
  #set text(size: 8.2pt)
#table(
  columns: (1.05fr, 3.15fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Meaning]),
  [*Aids to trade*], [The commercial services — transport, banking, insurance, warehousing, advertising and communication — that remove the obstacles between producer and consumer.],
  [*Articles of association*], [The document that governs a company's internal management: meetings, votes, directors, share transfers.],
  [*Balance of payments*], [A systematic record of all economic transactions between residents of one country and the rest of the world in a period.],
  [*Balance of trade*], [The difference between the value of visible exports and visible imports.],
  [*Bank overdraft*], [A short-term facility allowing a current account to go into debit, repayable on demand.],
  [*Barter*], [The direct exchange of goods for goods without the use of money.],
  [*Bill of exchange*], [An unconditional written order by one person to another to pay a stated sum to a named person at sight or on a stated date.],
  [*Bill of lading*], [A document issued by a carrier acknowledging goods shipped, evidencing the contract of carriage and acting as a document of title.],
  [*Bonded warehouse*], [A warehouse licensed to hold imported goods on which duty has not yet been paid.],
  [*Bull and bear*], [A bull expects prices to rise; a bear expects them to fall.],
  [*Capital employed*], [Fixed assets plus working capital — the long-term money at work in a business.],
  [*Cash discount*], [A reduction allowed for payment within a stated period; recorded in the ledger.],
  [*Certificate of incorporation*], [The document issued by the registrar that brings a company into existence.],
  [*Certificate of origin*], [A document certifying the country in which goods were produced, used to fix duty and quota entitlement.],
  [*Chain of distribution*], [The route by which goods pass from producer to consumer, directly or through wholesalers, agents and retailers.],
  [*Cheque*], [An unconditional written order addressed by a customer to a bank to pay a stated sum on demand.],
  [*Commercialisation*], [The requirement that a state enterprise cover its costs while remaining publicly owned.],
  [*Company*], [An association of persons registered under company law, having a separate legal personality from its members.],
  [*Consumer sovereignty*], [The principle that consumers' spending decisions determine what is produced and in what quantity.],
  [*Cooperative society*], [A voluntary association of persons, registered under cooperative law, formed to promote the economic interests of members on the basis of one member, one vote.],
  [*Corporate social responsibility*], [Voluntary business conduct that serves stakeholders beyond the shareholders — employees, community and environment.],
  [*Credit note*], [A document issued by a seller to reduce the amount owed by a buyer, for goods returned, an overcharge or an allowance.],
  [*Current account*], [A bank account operated by cheque for day-to-day transactions, usually without interest.],
  [*Current assets*], [Assets that will be realised in cash within the trading cycle: stock, debtors, cash and bank.],
  [*Current liabilities*], [Debts due within one year: creditors, overdrafts, accruals.],
  [*Debenture*], [A loan to a company; the holder is a creditor entitled to fixed interest whether or not profit is made.],
  [*Debit note*], [A document issued by a buyer claiming a reduction from a seller's account.],
  [*Deed of partnership*], [The agreement among partners settling capital, profit-sharing, salaries, duties and admission of new partners.],
  [*Devaluation*], [A deliberate reduction in the value of a currency in terms of other currencies.],
  [*Delivery note*], [A document that accompanies goods, listing what was delivered and signed by the recipient as evidence of receipt.],
  [*Direct service*], [A personal service rendered and consumed at the same moment, such as teaching or a medical consultation.]
)
]


#[
  #set text(size: 8.2pt)
#table(
  columns: (1.05fr, 3.15fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  [*Dividend*], [The part of distributable profit paid to shareholders; paid out of profit, never out of capital.],
  [*E. & O. E.*], [Errors and omissions excepted — a reservation on an invoice allowing the seller to correct a mistake.],
  [*Embargo*], [A total prohibition on trade in a particular good or with a particular country.],
  [*Entrepot trade*], [The import of goods for re-export, often after processing or repacking.],
  [*Exchange control*], [Government restriction on the purchase and sale of foreign currency.],
  [*Fixed assets*], [Assets held for use in the business rather than for resale: premises, plant, vehicles.],
  [*Fixed deposit*], [A deposit made for a stated term at a stated rate of interest.],
  [*Fidelity guarantee insurance*], [Insurance covering an employer against loss caused by the dishonesty of a named employee.],
  [*Import licence*], [Government permission to import, granted up to a stated quantity or value.],
  [*Indemnity*], [The insurance principle that the insured is restored to his financial position before the loss, and no better.],
  [*Indent*], [An order from an importer to an exporter setting out the goods, quality, quantity and terms required.],
  [*Indirect tax*], [A tax levied on goods and services and collected through the price paid by the consumer.],
  [*Insurable interest*], [A financial interest in the subject matter such that its loss would cause the insured a pecuniary loss.],
  [*Invoice*], [A document from seller to buyer showing the goods supplied and the amount due, often with discounts and terms.],
  [*Joint and several liability*], [The liability of each partner for the whole of a partnership debt, leaving the partners to settle among themselves.],
  [*Letter of credit*], [A bank's undertaking, given on an importer's instructions, to pay an exporter against stipulated documents.],
  [*Limited liability*], [The principle that a member's risk is confined to the amount unpaid on his shares or his guarantee.],
  [*Mail order*], [Retailing in which the buyer orders from a catalogue or website and the goods are delivered to the home.],
  [*Margin*], [Profit expressed as a percentage of selling price.],
  [*Mark-up*], [Profit expressed as a percentage of cost.],
  [*Memorandum of association*], [The company's charter, stating name, objects, liability, capital and registered office.],
  [*Multiple shop*], [A retail chain of many branches under one ownership, buying centrally and trading under one name.],
  [*Natural monopoly*], [An industry in which one supplier can serve the market at lower cost than two, usually because of a network.],
  [*Negative externality*], [A cost imposed on a third party by a transaction, such as pollution.],
  [*Partnership*], [The relation between two to twenty persons carrying on business in common with a view to profit.],
  [*Perpetual succession*], [The continuation of a company's legal existence despite changes in its membership.],
  [*Preference share*], [A share carrying a fixed dividend, paid before ordinary dividends.],
  [*Pro forma invoice*], [A quotation in the form of an invoice, sent before supply, often to obtain a licence or foreign exchange.],
  [*Progressive tax*], [A tax whose rate rises as the income or base rises.],
  [*Prospectus*], [A document inviting the public to subscribe for a company's shares or debentures.],
  [*Quota*], [A limit on the quantity of a good that may be imported in a period.],
  [*Regressive tax*], [A tax that takes a larger proportion of a lower income than of a higher one.],
  [*Retained profit*], [Profit kept in the business rather than distributed; the cheapest internal source of finance.],
  [*Shares*], [Units of a company's ownership capital, carrying a right to dividend and usually a vote.]
)
]


#[
  #set text(size: 8.2pt)
#table(
  columns: (1.05fr, 3.15fr),
  inset: (x: 4.5pt, y: 3.6pt),
  align: (left + horizon, left + horizon),
  stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  [*Sole proprietorship*], [A business owned by one person, with unlimited liability and no legal separation from its owner.],
  [*Statement of account*], [A summary sent by a seller to a buyer showing the period's transactions and the balance due.],
  [*Stale cheque*], [A cheque presented more than six months after the date on it; a bank may refuse to pay it.],
  [*Stock exchange*], [A market in which existing shares and bonds are bought and sold, and on which new issues are floated.],
  [*Subrogation*], [The insurer's right, having paid a claim, to pursue the third party who caused the loss.],
  [*Tariff*], [A tax on imports, usually ad valorem (a percentage of value) or specific (a sum per unit).],
  [*Terms of trade*], [The ratio of export prices to import prices, expressed as an index; a figure above 100 means exports buy more than in the base year.],
  [*Trade discount*], [A reduction off the list price given to a buyer in the trade; deducted before the invoice is drawn and never entered in the ledger.],
  [*Unlimited liability*], [The exposure of an owner's personal property to the debts of the business.],
  [*Utmost good faith*], [The insurance duty on both parties to disclose every material fact; breach allows the insurer to avoid the contract.],
  [*Visible trade*], [The import and export of goods, recorded in the balance of trade.],
  [*Invisible trade*], [The import and export of services and transfers, recorded in the current account but not in the balance of trade.],
  [*Warehousing*], [The storage of goods from production to consumption, creating time utility.],
  [*Working capital*], [Current assets less current liabilities; the money that keeps the trading cycle turning.],
)
]

#v(6pt)

== D.2 Twelve Pairs That Are Always Confused

#text(size: 9pt)[Each pair below is tested in the same way: four options, two of which are the pair. The distinction in the middle column is the sentence to remember, not the paragraph.]

#v(3pt)

#table(
  columns: (1.35fr, 1.5fr, 1.35fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pair],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The distinction],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[How it is tested],
  ),
  [Trade discount / cash discount], [trade discount changes the invoice price; cash discount changes the amount paid later], [a discount that must never appear in the ledger],
  [Mark-up / margin], [mark-up divides by cost; margin divides by selling price], [same figures, two percentages, 25% against 20%],
  [Balance of trade / balance of payments], [the first counts visible goods only; the second counts everything], [which one includes shipping and insurance],
  [Visible / invisible trade], [goods are visible; services and transfers are invisible], [classification of freight, tourism or remittances],
  [Memorandum / articles], [memorandum governs relations with outsiders; articles govern the inside], [which document holds the objects clause],
  [Company / corporation], [a company has shareholders; a corporation has none and is created by statute], [who owns a public corporation],
  [Credit note / debit note], [the seller issues the credit note; the buyer issues the debit note], [who corrects the account],
  [Progressive / regressive], [progressive takes a rising proportion from the rich; regressive takes a rising proportion from the poor], [which one a flat tax on bread becomes],
  [Privatisation / commercialisation], [privatisation changes ownership; commercialisation changes only the rules of operation], [whether the state still owns the firm],
  [Sole trader / one-man company], [the sole trader is not a separate person in law; the company is], [who bears the debts],
  [Cooperative / company], [control is one member one vote in a cooperative, one share one vote in a company], [how surplus is shared],
  [Bill of lading / consignment note], [the bill of lading is a document of title; the consignment note is not], [which one a bank will lend against],
)

#v(4pt)

#concept-box("Why the pairs matter more than the definitions")[
  + *The paper rarely asks for a definition on its own.* It asks which of two near-identical terms applies, and the mark turns on one word.
  + *The wrong option is designed from the other half of the pair.* If you have only learned one of the two, the other is exactly what the examiner will offer you.
  + *Twelve pairs, twelve marks.* In a forty-question paper, the confused pairs account for roughly a fifth of the items — the cheapest fifth to secure.
]
