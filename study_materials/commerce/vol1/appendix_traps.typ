#import "template.typ": *

#current-chapter.update("Appendix H: Twenty-Five Traps")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Twenty-Five Traps]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Twenty-Five Traps]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Twenty-five wrong answers that look right, in the order the chapters are taught.
    Each one is written in the words an option would use, so that recognition does
    the work in the hall: you are learning to smell the distractor, not to avoid a fact.
  ]
]

#v(5pt)

#text(size: 9pt)[Every trap below has appeared in a real paper in some form. Read the trap, cover the correction, and say the correction out loud. The last page is a ten-question self-test in the same form.]

#v(5pt)

== H.1 Chapter 1 — The Scope of Commerce

#table(
  columns: (1.9fr, 1.9fr, 0.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap, in an option's words],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The correction],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[See],
  ),
  [\"Commerce produces goods and services\"], [Commerce *distributes*; industry produces.], [1.1],
  [\"Mining is a secondary industry\"], [Mining *extracts*, so it is primary; manufacturing is secondary.], [1.2],
  [\"Transport creates form utility\"], [Transport creates *place* utility; form utility comes from manufacturing.], [1.2],
  [\"A doctor's service can be stored for later\"], [A direct service is consumed as it is rendered, so it cannot be stored.], [1.3],
)

#v(4pt)

== H.2 Chapter 2 — The Units of Business

#table(
  columns: (1.9fr, 1.9fr, 0.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap, in an option's words],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The correction],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[See],
  ),
  [\"With no deed, profit follows capital\"], [With no deed, profit is shared *equally*, whatever the capital.], [2.2],
  [\"A limited partner may manage the firm\"], [A limited partner who manages loses his limited liability.], [2.2],
  [\"A sleeping partner has limited liability\"], [Sleeping describes *management*, not liability; a sleeping partner in an ordinary firm is still unlimited.], [2.2],
  [\"A cooperative maximises profit for its members\"], [A cooperative's aim is *service*; surplus is returned as a patronage dividend.], [2.3],
  [\"Control in a cooperative follows shareholding\"], [Control is *one member, one vote*, regardless of shares.], [2.3],
)

#v(4pt)

== H.3 Chapter 3 — Companies and Public Enterprise

#table(
  columns: (1.9fr, 1.9fr, 0.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap, in an option's words],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The correction],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[See],
  ),
  [\"A company is owned by its directors\"], [It is owned by its *shareholders*; the directors manage it.], [3.1],
  [\"The articles state the company's objects\"], [The *memorandum* holds the objects; the articles hold the internal rules.], [3.2],
  [\"A private company may have 50 shareholders\"], [Fifty *members* — the limit is on members, not on shares or shareholders in the loose sense.], [3.2],
  [\"Debenture holders vote at the AGM\"], [A debenture is a loan, so the holder has no vote and no ownership.], [3.3],
  [\"A public corporation has shareholders\"], [It has none: it is created by statute and financed by government.], [3.4],
)

#v(5pt)

== H.4 Chapters 4 and 5 — Home and Foreign Trade

#table(
  columns: (1.9fr, 1.9fr, 0.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap, in an option's words],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The correction],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[See],
  ),
  [\"A wholesaler sells to the final consumer\"], [He sells to *retailers*; the retailer faces the consumer.], [4.1],
  [\"Trade discount is entered in the ledger\"], [It is deducted before the invoice, so it never reaches the books.], [4.4],
  [\"A trade discount of 20% and 5% is 25%\"], [Successive discounts *multiply*: 24%, not 25%.], [4.4],
  [\"The balance of trade includes services\"], [It counts *visible goods only*; services belong to the current account.], [5.2],
  [\"A quota raises revenue for the state\"], [A *tariff* raises revenue; a quota limits quantity and yields none directly.], [5.3],
  [\"A bill of lading is only a receipt\"], [It is a receipt, a contract *and* a document of title.], [5.4],
)

#v(4pt)

== H.5 Chapters 6 to 8 — Aids, Finance and Government

#table(
  columns: (1.9fr, 1.9fr, 0.9fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap, in an option's words],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The correction],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[See],
  ),
  [\"Insurance prevents the loss\"], [It transfers the *financial consequence* of the loss; the fire still happens.], [6.3],
  [\"Indemnity lets the insured make a profit\"], [Indemnity restores, never enriches; a profit would be a wager.], [6.3],
  [\"A crossed cheque can be cashed at the counter\"], [The crossing sends it through an account; only an *open* cheque is cashable.], [6.2],
  [\"Working capital is current assets\"], [It is current assets *less current liabilities*.], [7.1],
  [\"An overdraft is long-term finance\"], [It is repayable on demand, so it is short-term.], [7.2],
  [\"The seller issues a debit note for goods returned\"], [The *seller* issues a credit note; the *buyer* issues a debit note.], [7.3],
  [\"VAT is a direct tax\"], [It is *indirect*, collected through the price paid by the consumer.], [8.2],
  [\"Privatisation means making a firm cover its costs\"], [That is *commercialisation*; privatisation transfers ownership.], [8.3],
)

#v(6pt)

== H.6 The Trap Self-Test — Ten Questions

Cover the answer column, answer in ten seconds each, and read the line beneath any answer you miss.

#[
  #set text(size: 8.5pt)
#table(
  columns: (2.4fr, 1.15fr, 1.65fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Answer],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The trap it tests],
  ),
  [Which creates place utility?], [Transport], [Chapter 1 — the five utilities],
  [No deed: how is profit shared?], [Equally], [Chapter 2 — the statutory default],
  [Who holds a company's objects clause?], [The memorandum], [Chapter 3 — memorandum vs articles],
  [A debenture holder is a —], [Creditor], [Chapter 3 — loan capital],
  [₦4,000 cost, ₦5,000 price: mark-up?], [25%], [Chapter 4 — the base of the ratio],
  [₦4,000 cost, ₦5,000 price: margin?], [20%], [Chapter 4 — the base of the ratio],
  [Which balance counts services?], [The current account], [Chapter 5 — the two balances],
  [Which document is a document of title?], [The bill of lading], [Chapter 5 — documents],
  [Which aid removes the obstacle of risk?], [Insurance], [Chapter 6 — aids and obstacles],
  [Working capital equals —], [Current assets − current liabilities], [Chapter 7 — liquidity],
)

  #v(4pt)

  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[Ten out of ten is the standard, not the target. Any miss names the chapter to reread tonight, and the catalogue above says why the miss happened.]
]

#v(5pt)

#concept-box("The three habits that beat a trap")[
  + *Read the operative word.* "Always", "never", "only", "all" and "except" change the answer more often than the subject does.
  + *Locate the base before computing.* Cost or price, visible or invisible, insured value or loss.
  + *Ask who acts.* Most document and unit questions are decided by the direction of the arrow, not by the definition.
]
