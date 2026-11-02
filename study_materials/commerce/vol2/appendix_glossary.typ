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

#text(size: 9pt)[A term that appears in bold anywhere in Chapters 1 to 8 appears here. Where two terms are routinely confused with each other — near money and money, reinsurance and co-insurance, a quota and a tariff — the pair is collected at D.2 and the distinction is stated in the form the paper tests it.]

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
  [*Acceptability*], [The general willingness of people to take a thing in payment; the first quality of money.],
  [*Advertising*], [Paid, non-personal communication about a product or an organisation, made by an identified sponsor.],
  [*Advice note*], [A document from a supplier telling the buyer that the goods ordered have been dispatched.],
  [*AIDA*], [Attention, interest, desire, action — the four stages an advertisement works through.],
  [*Average clause*], [The insurance rule that pays the same proportion of a loss as the sum insured bears to the value of the property at risk.],
  [*Bank rate*], [The rate of interest at which the central bank lends to the commercial banks; raising it discourages borrowing.],
  [*Barter*], [The direct exchange of goods and services for other goods and services, without the use of money.],
  [*Bill of exchange*], [An unconditional written order from one person to another to pay a stated sum to a named party.],
  [*Bill of lading*], [A sea-carriage document that is at once a receipt, a contract and a document of title.],
  [*Bonded warehouse*], [A warehouse in which dutiable imports are stored with the duty suspended until they are removed for home use.],
  [*Brand*], [A name, term, symbol or design, or a combination of them, that identifies a seller's goods and distinguishes them from a rival's.],
  [*Broad money*], [Narrow money plus savings and time deposits: currency and demand deposits together with the deposits that must first be withdrawn.],
  [*Cash ratio*], [The proportion of a bank's deposits that must be held as cash; its reciprocal is the credit multiplier.],
  [*Central bank*], [The bank that issues the currency, acts as banker to government and to the commercial banks, and manages monetary policy.],
  [*Channel of distribution*], [The route, with the intermediaries on it, by which goods pass from producer to consumer.],
  [*Cheque*], [A written order to a bank to pay a stated sum from the drawer's account to a named payee or bearer.],
  [*Co-insurance*], [The sharing of a single risk between two or more insurers under separate policies, each bearing an agreed proportion.],
  [*Commodity money*], [Money whose value as a commodity is at least equal to its value as money, such as gold or salt.],
  [*Contribution*], [The right of an insurer who has paid a claim to recover a proportionate part from other insurers covering the same risk.],
  [*Coupon*], [A voucher entitling the holder to a stated reduction on the next purchase; a form of sales promotion.],
  [*Cover note*], [A document giving temporary insurance cover while the proposal is being assessed.],
  [*Credit multiplier*], [The number of times a new deposit is multiplied into total bank deposits; one divided by the cash ratio.],
  [*Customer-to-customer (C2C)*], [Electronic commerce between one consumer and another, usually through a marketplace platform.],
  [*Demand deposit*], [A deposit repayable on demand, usually held in a current account and withdrawable by cheque.],
  [*Direct debit*], [A standing authority by which the payee collects varying amounts from the payer's account.],
  [*Document of title*], [A document that represents the goods and whose transfer transfers the right to them; the bill of lading is the example in commerce.],
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
  [*Dumping*], [The sale of goods in a foreign market at a price below the cost of production or below the price charged at home.],
  [*E-commerce*], [The buying and selling of goods and services by electronic means, the transaction itself being completed on-line.],
  [*Endowment policy*], [A life policy that pays the sum assured on death or on survival to the end of the term, whichever comes first.],
  [*Entrepreneur*], [The person who spots an opportunity, organises the other factors of production and bears the risk of the venture.],
  [*Excess*], [The first part of any loss that the insured agrees to bear himself.],
  [*Fiat money*], [Money whose value rests on law and public confidence rather than on the value of the material it is made from.],
  [*Fidelity guarantee*], [An insurance policy covering the loss a firm suffers through the dishonesty of an employee.],
  [*File*], [A collection of related records kept together under one name and arranged so that any one of them can be found again.],
  [*Indemnity*], [The principle that a claim restores the insured to the position he was in before the loss, and no better.],
  [*Insurable interest*], [A financial interest in the subject matter of insurance such that its loss would cause the insured a pecuniary loss.],
  [*Insurance*], [A contract by which one party, for a consideration, undertakes to make good the loss of another on the happening of an uncertain event.],
  [*Intrapreneur*], [An employee who innovates inside an existing firm, using the firm's capital and bearing no personal risk.],
  [*Legal tender*], [Money that the law requires a creditor to accept when it is offered in settlement of a debt.],
  [*Letter of credit*], [A written undertaking by a bank to pay an exporter a stated sum against documents, on the instructions of the importer.],
  [*Liquidity*], [The ease with which an asset can be turned into cash without loss of value.],
  [*Management*], [The process of planning, organising, staffing, directing and controlling resources to achieve stated objectives.],
  [*Market research*], [The systematic collection, analysis and interpretation of information about a market, its buyers and its competitors.],
  [*Market segmentation*], [The division of a market into groups of buyers whose wants, habits or circumstances make them respond differently to an offer.],
  [*Market share*], [A firm's sales expressed as a percentage of total sales in the market it serves.],
  [*Marketing*], [The whole process of identifying what customers want and supplying it at a profit.],
  [*Marketing mix*], [The four controllable elements — product, price, place and promotion — combined to serve a chosen market.],
  [*Media*], [The channels through which an advertisement is carried to its audience: press, broadcast, outdoor, direct and on-line.],
  [*Monetary policy*], [The central bank's use of its instruments — the bank rate, open market operations, reserve ratios and persuasion — to control credit.],
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
  [*Narrow money*], [Currency in circulation plus the demand deposits held with the banks; the money that can be spent at once.],
  [*Near money*], [An asset that is not money but can be converted into money quickly and with little loss, such as a treasury bill or a fixed deposit.],
  [*Open market operations*], [The buying and selling of government securities by the central bank in order to expand or contract the money supply.],
  [*Overdraft*], [An arrangement by which a bank allows a current-account customer to draw beyond the credit balance, up to an agreed limit.],
  [*Personal selling*], [Face-to-face communication between a seller and a prospective buyer with the object of making a sale.],
  [*Preference share*], [A share that carries a fixed rate of dividend, paid before any dividend on the ordinary shares.],
  [*Premium*], [The consideration paid for an insurance policy; in sales promotion, an extra item given free with a purchase.],
  [*Primary data*], [Data collected first-hand for the particular problem in hand, as against data already published for another purpose.],
  [*Proximate cause*], [The effective cause of a loss; the peril nearest to the loss in an unbroken chain of events.],
  [*Publicity*], [Unpaid mention of a firm or its products in the press or on the air, not controlled by the firm.],
  [*Quota*], [A physical limit on the quantity of a good that may be imported or exported in a period.],
  [*Reinsurance*], [The insurance taken out by an insurer to cover part of the risk it has already accepted from its own policyholders.],
  [*Reserve ratio*], [The proportion of deposits a bank must hold in cash or with the central bank, whether as a cash or a liquidity ratio.],
  [*Sales promotion*], [A short-term inducement — a sample, a coupon, a premium, a price reduction — offered to persuade a buyer to act now.],
  [*Sample*], [A part of a population selected to represent the whole in a survey.],
  [*Standing order*], [A fixed sum paid at regular intervals on the payer's written instruction to his bank.],
  [*Subrogation*], [The insurer's right, after settling a claim, to stand in the insured's shoes and pursue the party who caused the loss.],
  [*Tariff*], [A tax on imported or exported goods, charged as a percentage of value or as a fixed sum per unit.],
  [*Test market*], [A limited launch of a product in one area to measure demand before a national launch.],
  [*Trade mark*], [A brand name or symbol registered under the law, giving its owner the exclusive right to use it.],
  [*Trade promotion*], [A sales promotion directed at distributors rather than at final consumers: a dealer bonus, a display allowance, a free case.],
  [*Transport*], [The movement of goods and persons from one place to another; it creates place utility.],
  [*Underwriter*], [The insurer's officer who decides whether a risk is acceptable and on what terms and premium.],
  [*Utmost good faith*], [The duty of both parties to an insurance contract to disclose every material fact, honestly and completely.],
  [*Warehouse receipt*], [A document issued by a warehouseman acknowledging goods received; it can be used as security for a loan.],
  [*Warehousing*], [The storage of goods until they are wanted; it creates time utility.],
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
  [Money / near money], [money is generally acceptable in payment; near money must be converted first], [whether a creditor can be compelled to take it],
  [Legal tender / money], [all legal tender is money; a bank deposit is money but not legal tender], [whether a cheque or a transfer must be accepted],
  [Selling / marketing], [selling moves what has been made; marketing decides what should be made], [where the firm begins],
  [Advertising / publicity], [advertising is paid for and controlled; publicity is neither], [who paid for the mention],
  [Advertising / sales promotion], [advertising gives a reason to prefer; promotion gives a reason to buy now], [which one is short-term],
  [Reinsurance / co-insurance], [reinsurance insures the insurer; co-insurance shares one risk between insurers of the same insured], [who is protected],
  [Average clause / excess], [average reduces the claim because the sum insured was too low; excess is the first slice the insured always bears], [why the payment is below the loss],
  [Tariff / quota], [a tariff raises the price of imports; a quota limits their quantity], [which one raises revenue],
  [IMF / World Bank], [the Fund lends short-term against conditions; the Bank lends long-term for projects], [the length and the purpose of the loan],
  [ECOWAS / African Union], [ECOWAS is West African and economic; the AU is continental and wider], [how many members and which continent],
  [Primary / secondary data], [primary is collected first-hand for this problem; secondary already exists for another], [who collected it and why],
  [B2C / C2C], [B2C is a business selling to consumers; C2C is consumers selling to one another], [who is the seller],
)

#v(4pt)

#concept-box("Why the pairs matter more than the definitions")[
  + *The paper rarely asks for a definition on its own.* It asks which of two near-identical terms applies, and the mark turns on one word.
  + *The wrong option is designed from the other half of the pair.* If you have only learned one of the two, the other is exactly what the examiner will offer you.
  + *Twelve pairs, twelve marks.* In a forty-question paper, the confused pairs account for roughly a fifth of the items — the cheapest fifth to secure.
]
