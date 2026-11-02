#import "template.typ": *

#current-chapter.update("Appendix F: Eight Model Answers")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Eight Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Eight Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[
    Eight questions of the sort the paper asks in Section B, each written twice: once as
    a half-answer of the kind that loses half the marks, and once as the answer that
    would be awarded full marks. The difference between the two is almost never
    knowledge. It is the working, the labels and the last line.
  ]
]

#v(5pt)

#text(size: 9pt)[Read the half-answer first and mark it yourself. Most candidates recognise their own habits in it. Then read the full answer and note what was added: a formula, a unit, a sentence of conclusion — never a new fact.]

#v(6pt)

== F.1 The Credit Multiplier, Worked in Both Directions

*A bank receives a new deposit of ₦200,000. The cash reserve ratio is 20 per cent. Calculate the total deposits the banking system can create and the credit created.*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    20% of ₦200,000 = ₦40,000. So the bank lends ₦40,000 and total deposits are ₦240,000.
  ],
  [
    *Step 1 — the multiplier.* 1 ÷ 0.20 = *5*. \
    *Step 2 — total deposits.* 200,000 × 5 = *₦1,000,000*. \
    *Step 3 — credit created.* Total deposits less the original deposit: 1,000,000 − 200,000 = *₦800,000*. \
    *Step 4 — check.* At a 20 per cent ratio the bank must hold ₦200,000 of the ₦1,000,000 in reserve, which leaves exactly ₦800,000 lent out. \
    *Conclusion:* the deposit multiplies five times, and four-fifths of the total is newly created credit.
  ],
)

#text(size: 8.6pt)[The half-answer has taken the reserve for the loan: the ₦40,000 is the *cash the bank must keep*, not the cash it may lend. Read the ratio as a fraction and ask whether the answer should be bigger or smaller than the deposit — credit is always bigger, because the multiplier is always above one.]

#v(6pt)

#pagebreak(weak: true)

== F.2 A Claim Under the Average Clause

*A trader's stock is worth ₦10 million. He insures it for ₦6 million. Fire destroys stock worth ₦2 million. How much will the insurer pay?*

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    He insured for ₦6 million and lost ₦2 million, so the insurer pays ₦2 million.
  ],
  [
    *Step 1 — is there under-insurance?* Sum insured ₦6m against a value of ₦10m: yes, he is insured for only 60 per cent of the value. \
    *Step 2 — apply the average clause.* Payment = loss × (sum insured ÷ value) = 2,000,000 × (6 ÷ 10). \
    *Step 3 — compute.* = *₦1,200,000*. \
    *Step 4 — state what the insured bears.* ₦800,000 of the loss falls on him, which is the 40 per cent he failed to insure. \
    *Conclusion:* the average clause makes him his own insurer for the shortfall.
  ],
)

#text(size: 8.6pt)[The half-answer is the answer of a candidate who has learned that insurance indemnifies and has not learned the clause that limits the indemnity. Whenever the sum insured is *less* than the value stated in the question, the average clause applies; when it is equal or greater, the loss is paid in full up to the sum insured.]

#v(6pt)

== F.3 The Four Ps Applied to One Product

*A firm producing sachet water wishes to enter a new state. Explain how it should use the marketing mix.* (5 marks)

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    It should advertise on radio and sell at a low price so that people buy it instead of the competitors' water.
  ],
  [
    *Product.* The same 50 cl sachet, but packed in the state's own bag size and sealed with a legible date, because a new entrant is judged first on trust. \
    *Price.* Priced at or just below the market leader's, with a *trade discount* to the first retailers rather than a permanent price cut, so that the price can be restored once the brand is known. \
    *Place.* Sold through the existing network of wholesalers and kiosks, since the firm has no fleet in the state; vans supply the wholesalers, the wholesalers supply the kiosks. \
    *Promotion.* Radio in the local language, posters at motor parks, and a launch offer to retailers — a free bag with every ten — because the retailer decides what the buyer sees. \
    *The mix must agree.* A premium price with a roadside poster would fail; a cheap price with an unsealed bag would fail faster.
  ],
)

#text(size: 8.6pt)[The half-answer treats the mix as two decisions — price and advertising — and gives no reason for either. A full answer gives all four elements, one sentence each, and links them: the price is defended by the pack, the channel is chosen for the firm's own limitation, and the promotion is aimed at whoever actually makes the choice.]

#v(6pt)

== F.4 Choosing a Mode of Transport

*A trader in Kano must move 40 tonnes of grain to Lagos by a deadline of four days, at the least cost. Advise him.* (4 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *The candidates.* Road, rail, air and water. Water is unavailable on that route, and air is too costly for a low-value bulk cargo; the real choice is road against rail.
  + *Cost.* Rail is cheaper per tonne-kilometre for bulk; road is dearer but reaches the door.
  + *Speed and the deadline.* Road is door-to-door and can complete the journey in two days; rail needs haulage to the station at each end and may not meet four days for a single wagon consignment.
  + *Risk and flexibility.* Grain is not perishable but it is moisture-sensitive; a tarpaulin-covered lorry protects it better than an open wagon, and road allows part-loads if the trader sells some grain on the way.
  + *Recommendation.* *Road*, in two covered lorries of 20 tonnes each, because the four-day deadline and the door-to-door delivery outweigh the freight saving; the rail option is named and rejected for a stated reason, which earns the mark.
]

#text(size: 8.6pt)[A transport question is always answered on four criteria — cost, speed, safety and flexibility — and the mark is earned by naming the rejected mode and the reason for rejecting it. "Rail is cheaper" alone is a description, not advice.]

#v(6pt)

== F.5 How Advertising Can Raise and Lower Price

*"Advertising raises the price of goods." Discuss.* (5 marks)

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Yes, advertising raises price because the firm must recover the cost of the advert, and it also makes people want the good more.
  ],
  [
    *The case for the statement.* The cost of the campaign is a cost of the product and is recovered in the price. Advertising also builds brand loyalty, which reduces the buyer's sensitivity to price and allows the firm to charge a premium. It can raise a barrier to entry, and a market with fewer effective competitors has higher prices. \
    *The case against.* Advertising enlarges the market, so output rises and the fixed cost is spread over more units — unit cost falls. It informs buyers of substitutes, which makes demand more elastic, not less. In a market where several firms advertise, the campaigns may cancel one another out and no firm gains the power to raise price. \
    *The judgement.* The effect turns on *what the advertising does*: informative advertising of a mass-market good tends to lower unit cost and price, while persuasive advertising that builds a brand in a concentrated market tends to raise it. The statement is therefore true of some markets and false of others, and the mark is for saying which and why.
  ],
)

#text(size: 8.6pt)[The half-answer takes one side and gives two reasons, which caps the mark at half. A "discuss" question wants both directions and a judgement in the last line — and the judgement must be conditional ("turns on whether the advertising is informative or persuasive"), not a fence.]

#v(6pt)

== F.6 The IMF and the World Bank, in One Answer

*Distinguish between the International Monetary Fund and the World Bank.* (4 marks)

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Both are international organisations that help developing countries with money. The IMF is older.
  ],
  [
    *Purpose.* The Fund exists to keep the international monetary system stable and to help a member correct a *short-term balance-of-payments deficit*. The Bank exists to finance *long-term development* — roads, power, schools, agriculture. \
    *Length and object of lending.* Fund lending is short-term and is not tied to a project; Bank lending is long-term and is tied to a project or a programme. \
    *Conditions.* Fund facilities carry *conditionality*: the borrower must adopt the macroeconomic policies agreed with the Fund. Bank loans carry procurement and project conditions rather than a demand that the whole economy be restructured. \
    *Source of funds.* The Fund is financed by members' quotas; the Bank raises much of its money on the capital market against its subscribed capital and its reserves. \
    *One line to close:* the Fund lends to a *country in payments difficulty*, the Bank lends to a *project that will pay for itself over decades*.
  ],
)

#text(size: 8.6pt)["Both are international organisations that help with money" is true and earns nothing. A distinction question is marked for *differences on named criteria* — purpose, term, conditionality, source of funds — and four criteria with one sentence each is a full answer.]

#v(6pt)

== F.7 The Functions of Management in a Small Firm

*A bakery employs twelve people and is growing. Explain the functions of management it must now perform.* (5 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Planning.* Set the daily and weekly output against expected sales, and decide whether to add a second oven: a target, a date and the resources it needs.
  + *Organising.* Group the work — baking, packing, delivery, accounts — and give one person authority over each group, so that the owner stops doing all four.
  + *Staffing.* Recruit a baker's assistant, train the packers on hygiene, and fix who covers the night shift.
  + *Directing.* Supervise the shift, settle the order of work, and keep the twelve informed of the day's target; direction is the function that turns a plan into work.
  + *Controlling.* Compare the bread produced and sold against the plan, investigate the difference between baked and sold, and correct the baking quantity rather than the sales effort.
  + *Why it matters at twelve employees.* At three the owner can hold the whole business in his head; at twelve the plan, the structure and the record have to exist on paper, or the firm grows faster than it can control.
]

#text(size: 8.6pt)[The half-answer lists five words. The full answer gives each function *one sentence of application to the bakery* — and application is what the word "explain" is asking for. The last line, tying the answer to the size of the firm, is the mark most candidates leave behind.]

#v(6pt)

== F.8 E-Commerce and the Small Retailer — The Written Answer

*"E-commerce has removed the advantages of the small retailer." Do you agree?* (5 marks)

#table(
  columns: (1fr, 1fr),
  inset: (x: 7pt, y: 6pt),
  align: (left + top, left + top),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if (x, y) == (0, 0) { rgb("#FEE2E2") } else if (x, y) == (1, 0) { jamb-mint } else { white },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: rgb("#991B1B"))[The half-answer],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: jamb-green)[The full answer],
  ),
  [
    Yes. Big on-line shops sell cheaper and deliver to the door, so the small shop will lose its customers.
  ],
  [
    *What e-commerce has taken away.* Reach: an on-line seller serves the whole country from one warehouse, while the small shop serves a street. Price: the on-line seller buys in bulk and carries less rent, so it can undercut. Choice: a catalogue of thousands of items against a shelf of hundreds. Convenience: delivery to the door, at any hour. \
    *What the small retailer still has.* Immediacy — the buyer who needs the item now cannot wait two days. Inspection — the buyer can see, weigh and touch the goods. Trust and credit — a known trader will sell on account and take a return without a form. Service — advice, fitting, repair, and a person to complain to. \
    *What a small retailer can do about it.* Sell through a marketplace as well as from the shop, keep the lines the on-line seller cannot deliver quickly (fresh, bulky, urgent), and turn service into the product. \
    *Judgement.* E-commerce has removed the small retailer's advantage of *reach*, and left him the advantages of *proximity, inspection, credit and service* — so the statement is too strong, but only for a retailer who uses them.
  ],
)

#text(size: 8.6pt)[The half-answer agrees without argument. A five-mark discussion needs the case for, the case against, and a judgement that says *which* advantages were lost and which survive. Every point should be one of the four commercial advantages — reach, price, choice, convenience, proximity, credit, service — not a general remark about technology.]

#v(6pt)

#rule-box("The five habits that turn a half-answer into a full one")[
  + *Write the formula first,* before the numbers. It earns a method mark even if the arithmetic slips.
  + *Name the base.* Cost or selling price, insured value or loss, total deposits or the original deposit — the base is the question.
  + *Carry the units* — naira, per cent, tonnes, days — into the answer line.
  + *Apply every function to the case.* "Planning" is a word; "plan the weekly bake against expected sales" is a mark.
  + *Finish with a sentence.* "The firm is liquid but stock-heavy" is a mark; "₦1.2m" alone is not.
]
