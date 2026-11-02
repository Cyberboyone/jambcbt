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
    subject of categories: this good, this unit, this document, this tax, this channel.
    Almost every "which of the following" question is a classification question with a
    sentence wrapped around it.
  ]
]

#v(5pt)

== E.1 Industry and Commerce in One Table

#table(
  columns: (0.95fr, 1.1fr, 2.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Division],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Branch],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it does, and an example],
  ),
  [*Industry*], [Primary], [Extracts from nature: farming, fishing, mining, forestry, quarrying.],
  [], [Secondary], [Converts raw materials: manufacturing (bread, cloth), construction (roads, houses).],
  [], [Constructive], [Assembles or builds on site, moving goods from place to place: bricklaying, road building.],
  [*Commerce*], [Trade], [Buys and sells: home trade (wholesale, retail) and foreign trade (import, export, entrepot).],
  [], [Aids to trade], [Transport, banking, insurance, warehousing, advertising, communication.],
  [*Direct services*], [Personal], [Rendered to a person and consumed at once: teaching, medicine, law, domestic service.],
)

#v(6pt)

== E.2 The Three Units of Business on One Page

#table(
  columns: (0.85fr, 1.15fr, 1.25fr, 1.4fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Sole trader],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Partnership],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Cooperative],
  ),
  [Owners], [one], [two to twenty], [at least ten members],
  [Legal personality], [none], [none], [separate, once registered],
  [Liability], [unlimited], [unlimited unless a limited partner], [limited to share capital],
  [Control], [the owner], [the partners, by deed], [one member, one vote],
  [Capital], [the owner's savings and loans], [partners' contributions and loans], [members' shares and reserves],
  [Profit], [all to the owner], [shared as the deed provides; equally if there is no deed], [surplus shared as patronage dividend],
  [Continuity], [ends with the owner], [ends on a partner's death unless the deed says otherwise], [continues despite changes of members],
  [Registration], [business name only], [business name; the deed is private], [cooperative registrar, not the CAC],
)

#v(4pt)

#text(size: 8.8pt)[The row that decides most questions is *liability*. A sole trader and an ordinary partner are both unlimited; a cooperative member is limited to his shares; a shareholder is limited to the amount unpaid on his shares. Everything else — capital, control, continuity — follows from that first fact.]

#v(6pt)

== E.3 The Aids to Trade and the Obstacle Each Removes

#table(
  columns: (0.95fr, 1.25fr, 2.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Aid],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Obstacle removed],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The one-line job],
  ),
  [*Transport*], [distance], [Moves goods and people from where they are to where they are wanted — place utility.],
  [*Warehousing*], [time], [Stores goods from production to consumption, and steadies prices — time utility.],
  [*Insurance*], [risk], [Pools the losses of the few among the premiums of the many.],
  [*Banking*], [finance and payment], [Lends, receives deposits and moves money safely between buyers and sellers.],
  [*Advertising*], [ignorance of the market], [Tells buyers that the good exists, what it does and what it costs.],
  [*Communication*], [distance in information], [Carries orders, prices and instructions between the parties — postal, telephone, internet.],
)

#v(4pt)

#trap-box("Insurance is not a way of avoiding risk")[
  Insurance does not prevent fire, theft or a shipwreck. It *transfers the financial
  consequence* of those events to an insurer in exchange for a premium. An option that
  says insurance "removes the risk" or "prevents loss" is wrong; the correct phrasing is
  that it spreads or transfers the risk of loss.
]

#v(6pt)

== E.4 The Documents of Trade, in the Order They Appear

#table(
  columns: (0.95fr, 1.0fr, 2.0fr, 1.05fr),
  inset: (x: 4.6pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Direction],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Home or foreign],
  ),
  [*Enquiry*], [buyer → seller], [asks what is available and at what price], [both],
  [*Quotation*], [seller → buyer], [states the price and terms offered], [both],
  [*Order / indent*], [buyer → seller], [a firm request to supply, with terms], [both],
  [*Pro forma invoice*], [seller → buyer], [a quotation in invoice form, before supply], [mainly foreign],
  [*Letter of credit*], [buyer's bank → seller], [the bank's promise to pay against documents], [foreign],
  [*Commercial invoice*], [seller → buyer], [the goods supplied and the sum now due], [both],
  [*Bill of lading*], [carrier → shipper], [receipt, contract and document of title], [foreign],
  [*Certificate of origin*], [chamber of commerce → importer], [where the goods were produced], [foreign],
  [*Consular invoice*], [consul → importer], [the value and origin, verified by the consul], [foreign],
  [*Bill of exchange*], [exporter → importer], [an order to pay at sight or on a date], [foreign],
  [*Delivery note*], [seller → buyer, with the goods], [what was delivered; signed on receipt], [both],
  [*Credit note*], [seller → buyer], [a reduction the seller allows], [both],
  [*Debit note*], [buyer → seller], [a reduction the buyer claims], [both],
  [*Statement of account*], [seller → buyer], [a summary of the period and the balance], [both],
  [*Receipt*], [seller → buyer], [proof that the money has been paid], [both],
)

#pagebreak()

== E.5 The Taxes and the Bodies That Collect Them

#table(
  columns: (1.0fr, 1.35fr, 2.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Tax],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Who pays it, and on what],
  ),
  [*Personal income tax*], [direct, progressive], [the individual, on income above the exempt band],
  [*Company income tax*], [direct, proportional], [the company, on assessable profit],
  [*Capital gains tax*], [direct], [the seller, on the gain from disposing of an asset],
  [*VAT*], [indirect, regressive in effect], [the final consumer, on the price of goods and services],
  [*Customs duty*], [indirect], [the importer, on goods entering the country],
  [*Excise duty*], [indirect], [the consumer, on locally manufactured goods such as beer and tobacco],
  [*Stamp duty*], [indirect], [the party to a document that must be stamped, on instruments and receipts],
)

#table(
  columns: (1.0fr, 1.35fr, 2.35fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Body],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Full name],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Job in one line],
  ),
  [*CAC*], [Corporate Affairs Commission], [registers companies and business names],
  [*SON*], [Standards Organisation of Nigeria], [sets and enforces industrial standards],
  [*NAFDAC*], [National Agency for Food and Drug Administration and Control], [registers food, drugs, cosmetics and water],
  [*FCCPC*], [Federal Competition and Consumer Protection Commission], [protects competition and consumers],
  [*CBN*], [Central Bank of Nigeria], [regulates banks, issues the naira, manages reserves],
  [*NIPC*], [Nigerian Investment Promotion Commission], [promotes and registers investment],
  [*SEC*], [Securities and Exchange Commission], [regulates the capital market],
  [*NDLEA / Police*], [law enforcement], [prosecutes counterfeiting and smuggling],
)

#v(6pt)

== E.6 The Channels of Distribution

#table(
  columns: (0.4fr, 2.0fr, 2.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[No.],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Channel],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Used when],
  ),
  [*1*], [producer → consumer], [the good is perishable, custom-made, expensive, or sold in a local market],
  [*2*], [producer → retailer → consumer], [one large retailer can absorb the whole output, as with a chain store],
  [*3*], [producer → wholesaler → retailer → consumer], [the standard channel for mass-produced consumer goods],
  [*4*], [producer → agent → wholesaler → retailer → consumer], [the producer is remote, or the market is foreign and needs representation],
)

#v(4pt)

#concept-box("The one question behind every classification table")[
  + *Ask what function the thing performs,* not what it is called. A warehouse stores, a bank finances, a bill of lading transfers title. The name is a label; the function is the mark.
  + *Ask who acts and to whom.* Half the document questions are answered by the direction of the arrow — seller to buyer, or buyer to seller.
  + *Ask whether the frontier is crossed.* Home or foreign, visible or invisible, tariff or excise: the frontier decides the classification more often than the nature of the good.
]
