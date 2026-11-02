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

== F.1 Mark-Up and Margin on One Cost Price

*A trader buys an article for ₦2,000 and sells it for ₦2,500. Calculate his mark-up and his margin.*

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
    Profit = 2,500 − 2,000 = ₦500. \
    Mark-up = 500 ÷ 2,500 = 20%. \
    Margin = 500 ÷ 2,000 = 25%.
  ],
  [
    *Step 1 — profit.* 2,500 − 2,000 = ₦500. \
    *Step 2 — the base of each ratio.* Mark-up is a percentage of *cost*; margin is a percentage of *selling price*. \
    *Step 3 — compute.* Mark-up = 500 ÷ 2,000 × 100 = *25%*. Margin = 500 ÷ 2,500 × 100 = *20%*. \
    *Conclusion:* the mark-up is 25% on cost and the margin is 20% on selling price; the margin is always the smaller of the two.
  ],
)

#text(size: 8.6pt)[The half-answer has the two percentages exactly reversed. That is the single most common error in the whole paper: the arithmetic is right and the base is wrong, so both answers are wrong. Write the base under each fraction before you divide.]

#v(6pt)

== F.2 A Chain of Trade Discounts

*Goods are listed at ₦50,000 and are subject to trade discounts of 20% and then 5%. Find the price the retailer pays and the total discount allowed.*

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
    Total discount = 20% + 5% = 25%. \
    Price paid = 75% of 50,000 = ₦37,500.
  ],
  [
    *Step 1 — first discount.* 20% of 50,000 = 10,000, so the first net price is ₦40,000. \
    *Step 2 — second discount, on the reduced price.* 5% of 40,000 = 2,000, so the final price is *₦38,000*. \
    *Step 3 — total discount.* 50,000 − 38,000 = *₦12,000*, which is 24% of the list price. \
    *Check by the single-rate method:* 0.80 × 0.95 = 0.76, so the price is 76% of list and the discount 24%.
  ],
)

#text(size: 8.6pt)[Successive discounts are multiplied, never added, because the second is taken on what remains after the first. A 20% and a 5% discount is 24%, not 25%, and the difference is exactly one mark in a calculation question.]

#v(6pt)

== F.3 Working Capital and the Current Ratio

*A firm has stock ₦1.8m, debtors ₦1.2m, cash at bank ₦0.2m, creditors ₦1.4m and a bank overdraft ₦0.6m. Compute its working capital and current ratio, and comment.*

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
    Current assets = 1.8 + 1.2 + 0.2 = ₦3.2m. \
    Working capital = 3.2 − 1.4 = ₦1.8m. \
    Ratio = 3.2 ÷ 1.4 = 2.3 : 1. The firm is liquid.
  ],
  [
    *Step 1 — list the current assets.* Stock 1.8 + debtors 1.2 + bank 0.2 = *₦3.2m*. \
    *Step 2 — list the current liabilities, including the overdraft.* Creditors 1.4 + overdraft 0.6 = *₦2.0m*. \
    *Step 3 — working capital.* 3.2 − 2.0 = *₦1.2m*. \
    *Step 4 — current ratio.* 3.2 ÷ 2.0 = *1.6 : 1*. \
    *Comment:* adequate but not generous. Stock is more than half of the current assets, so a slow selling season would strain the position; the overdraft is repayable on demand and must be treated as a current liability, not as capital.
  ],
)

#text(size: 8.6pt)[The half-answer omits the overdraft from current liabilities. An overdraft is repayable on demand, so it is a current liability by definition. The second omission is the comment: in a structured question the ratio earns one mark and the interpretation earns the next.]

#v(6pt)

== F.4 The Balance of Trade and the Current Account

*A country's visible exports are ₦800m and visible imports ₦950m. It earns ₦220m from shipping and insurance and pays ₦90m in interest on foreign loans. Find the balance of trade and the current account balance.*

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
    Balance of trade = 950 − 800 = ₦150m deficit. \
    Current account = 150 + 220 = ₦370m surplus.
  ],
  [
    *Step 1 — the visible balance.* Exports 800 − imports 950 = *−₦150m*, a trade deficit. \
    *Step 2 — net invisibles.* Earnings 220 − payments 90 = *+₦130m*. \
    *Step 3 — the current account.* −150 + 130 = *−₦20m*, a current account deficit of ₦20m. \
    *Step 4 — state the result in words.* The visible deficit is only partly covered by the surplus on services, so the country must finance ₦20m from reserves or capital inflow.
  ],
)

#text(size: 8.6pt)[Two errors sit in the half-answer: the invisible payments are ignored, and a deficit is then added to a surplus as though both were positive. Net the invisibles *first*, then add the net figure to the visible balance, keeping the signs.]

#v(6pt)

== F.5 Terms of Trade, in Index Numbers

*The export price index is 120 and the import price index is 150. Compute the terms of trade and say what has happened.*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *Formula:* terms of trade = (export price index ÷ import price index) × 100.
  + *Substitute:* (120 ÷ 150) × 100 = *80*.
  + *Interpret:* the ratio has fallen to 80 from a base of 100, so a given volume of exports now buys only 80% of the imports it bought in the base year. The terms of trade have *deteriorated*.
  + *Consequence:* to buy the same imports the country must export more, or borrow, or devalue in the hope that export volume rises enough to compensate.
]

#text(size: 8.6pt)[A figure below 100 is deterioration, not a loss of 80%. The index is a ratio to the base year, and 80 means four-fifths of the old purchasing power over imports.]

#v(6pt)

== F.6 A Claim Under Average

*A trader insures stock worth ₦10m for ₦6m. Fire destroys stock worth ₦5m. How much will the insurer pay?*

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
    The loss is ₦5m and the policy is for ₦6m, so the insurer pays ₦5m in full.
  ],
  [
    *Step 1 — the shortfall.* Insured 6 against value 10, so the trader carries one-fifth of any loss himself. \
    *Step 2 — apply average.* Claim = loss × (sum insured ÷ value at risk) = 5 × (6 ÷ 10) = *₦3m*. \
    *Step 3 — state who bears the rest.* The trader bears ₦2m of the ₦5m loss, exactly the proportion by which he under-insured. \
    *Step 4 — the principle.* Indemnity restores him to his pre-loss position only to the extent that he paid for cover; under-insurance shares the loss.
  ],
)

#text(size: 8.6pt)[The half-answer applies the principle of indemnity alone and forgets average. Whenever the sum insured is less than the value at risk, the claim is scaled — that is what "under-insurance" means in an examination question.]

#v(6pt)

== F.7 Partnership Profit Without a Deed

*Ajayi and Bello form a partnership with capitals of ₦600,000 and ₦400,000. There is no deed. The profit for the year is ₦400,000. How is it shared?*

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  + *The default rule.* Where no deed exists, the Partnership Act implies that profits and losses are shared *equally*, whatever the capital.
  + *Apply it:* ₦400,000 ÷ 2 = *₦200,000 each*.
  + *Say what the deed would have done.* A deed could have fixed a ratio, allowed interest on capital before division, or paid a salary to the active partner — and any of those would displace the equal split.
  + *Do not* share in the ratio 600 : 400. That is the commonest wrong answer, and it is wrong for a precise reason: the Act's default is equality, not capital ratio.
]

#text(size: 8.6pt)[If the question adds that the partners agreed a ratio, the agreement governs. The default applies only where the deed is silent, and the examiner's phrase for silence is "no deed" or "no agreement".]

#v(6pt)

== F.8 Choosing a Channel — The Written Answer

*"A small manufacturer of packaged spices sells in one state. Advise him on the channel of distribution to use, giving reasons." (5 marks)*

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
    He should sell directly to consumers because it is cheaper and he will make more profit. He can also use retailers.
  ],
  [
    *Recommendation.* Sell through *wholesalers and then retailers* (channel 3), with direct supply to large supermarkets where they will buy in bulk. \
    *Reason 1 — coverage.* A single small producer cannot call on hundreds of grocery shops; the wholesaler already does. \
    *Reason 2 — cost.* One delivery to a wholesaler replaces many small deliveries, so transport and invoicing cost per unit fall. \
    *Reason 3 — credit and storage.* The wholesaler holds stock and extends credit that the manufacturer cannot afford to carry. \
    *Reason 4 — information.* The wholesaler's orders tell him which pack sizes and blends are moving. \
    *Limitation.* The margin is shared, and the manufacturer loses direct contact with the consumer — which is why he keeps a direct line to the largest supermarkets.
  ],
)

#text(size: 8.6pt)[The half-answer gives a conclusion and no reasons, which is worth one mark of five. Each reason must name a *function* — coverage, cost, credit, storage, information — and the limitation earns the final mark, because it shows the choice was weighed rather than guessed.]

#v(6pt)

#rule-box("The five habits that turn a half-answer into a full one")[
  + *Write the formula first,* before the numbers. It earns a method mark even if the arithmetic slips.
  + *Name the base.* Cost or selling price, visible or invisible, insured value or loss — the base is the question.
  + *Carry the units* — naira, percent, index points — into the answer line.
  + *Keep the signs.* A deficit is negative and stays negative when it is netted against a surplus.
  + *Finish with a sentence.* "The firm is liquid but stock-heavy" is a mark; "₦1.2m" alone is not.
]
