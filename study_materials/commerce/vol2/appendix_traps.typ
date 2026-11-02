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

#text(size: 9pt)[Every trap below has appeared in a real paper in some form. Read the trap, cover the correction, and say the correction out loud. The last table is a ten-question self-test in the same form.]

#v(5pt)

== H.1 Chapters 1 and 2 — Money and the Banks

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
  [\"Money is anything issued by the government\"], [Money is anything *generally acceptable*; a government issue that is refused is not money in use.], [1.1],
  [\"Legal tender and money are the same thing\"], [All legal tender is money; a bank deposit is money but not legal tender.], [1.5],
  [\"A cheque is legal tender\"], [A creditor may refuse a cheque; it is an instruction, not a payment in law.], [1.5],
  [\"A fixed deposit is money\"], [It is *near money*: it must be converted before it can be spent.], [1.4],
  [\"Money must have intrinsic value\"], [Fiat money has none, and it works; acceptability, not metal, is the test.], [1.3],
  [\"A 20 per cent cash ratio means a multiplier of 20\"], [The multiplier is 1 ÷ 0.20 = *5*.], [2.3],
  [\"A ₦200,000 deposit creates ₦200,000 of credit\"], [Total deposits are ₦1,000,000 and credit created is ₦800,000.], [2.3],
  [\"The central bank lends to the public\"], [It is the *bankers'* bank and the lender of last resort; it does not take deposits from the public.], [2.4],
)

#v(4pt)

#pagebreak(weak: true)

== H.2 Chapters 3 and 4 — Insurance and the Physical Aids

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
  [\"Insurance prevents the loss from happening\"], [Insurance *transfers* the cost; the fire still burns.], [3.1],
  [\"Any risk can be insured\"], [The loss must be uncertain, measurable and not catastrophic to the pool; a certain loss cannot be insured.], [3.1],
  [\"The insured may profit from a claim\"], [Indemnity restores him to his pre-loss position, no better.], [3.2],
  [\"With two policies he collects twice\"], [Contribution makes the insurers share one loss, once.], [3.5],
  [\"Under-insurance pays the full loss up to the sum insured\"], [The average clause pays the same proportion as the cover bears to the value.], [3.4],
  [\"A warehouse only stores goods\"], [It also grades, blends, packs, finances and stabilises price — and creates time utility.], [4.1],
  [\"A bonded warehouse is duty-free\"], [Duty is *suspended*, not waived; it falls due on removal for home use.], [4.2],
  [\"An airway bill is a document of title\"], [Only the *bill of lading* is; the airway bill is a receipt and a contract.], [4.4],
  [\"Air freight is used because it is cheap\"], [It is used for speed and for high-value, light or perishable cargo.], [4.3],
)

#v(4pt)

== H.3 Chapters 5 and 6 — Advertising and the Marketing Mix

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
  [\"Publicity and advertising are the same\"], [Publicity is unpaid and uncontrolled; advertising is paid and sponsored.], [5.1],
  [\"A free sample is advertising\"], [It is *sales promotion*: a short-term inducement to try the product.], [5.4],
  [\"Advertising always raises the price\"], [It may lower unit cost by enlarging the market; the direction is an empirical question.], [5.6],
  [\"Branding is only a name\"], [A brand carries a promise of consistent quality, and its legal form is the trademark.], [5.5],
  [\"Selling and marketing are the same\"], [Selling moves what exists; marketing decides what should be made.], [6.1],
  [\"Segmentation divides the product\"], [It divides the *market*, into groups with different wants.], [6.3],
  [\"Secondary data is second-rate data\"], [It is data collected by someone else, for another purpose; it may be excellent.], [6.4],
  [\"A questionnaire is research enough\"], [It records what people say, not what they do; a test market records behaviour.], [6.4],
)

#v(4pt)

== H.4 Chapters 7 and 8 — The Bodies, Management and the Market

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
  [\"The IMF finances roads and dams\"], [The *World Bank* finances projects; the Fund lends for balance-of-payments support.], [7.2],
  [\"The World Bank settles trade disputes\"], [The *WTO* does; the Bank has no dispute procedure.], [7.2],
  [\"ECOWAS covers the whole continent\"], [ECOWAS is *West African*; the African Union is continental.], [7.3],
  [\"OPEC sets the price of oil by decree\"], [It allocates *production quotas*, and the price follows the market.], [7.4],
  [\"AfCFTA is a single currency\"], [It is a free-trade area, phased in; monetary union is a separate question.], [7.3],
  [\"Directing and controlling are the same\"], [Directing issues instructions; controlling compares results with the plan.], [8.1],
  [\"Delegation transfers accountability\"], [Authority is delegated; *accountability stays* with the manager.], [8.1],
  [\"An entrepreneur is anyone in business\"], [The defining marks are risk-bearing and the organisation of the factors.], [8.4],
)

#v(4pt)

== H.5 The Cross-Cutting Traps

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
  [\"A tariff and a quota both raise revenue\"], [A quota earns the state nothing unless it is auctioned; it restricts quantity.], [7.5],
  [\"A balance-of-trade surplus means the payments balance is in surplus\"], [The trade balance counts visible goods only; the payments balance counts everything.], [7.1],
  [\"Inflation helps everybody who holds money\"], [It transfers wealth *from* holders of money *to* holders of goods and to debtors.], [1.6],
  [\"Market share is profit as a percentage of sales\"], [It is the firm's sales as a percentage of *total market* sales.], [6.6],
  [\"A monopoly always charges the highest possible price\"], [It may price low to protect its position; and a contestable market checks it.], [6.2],
)

#v(5pt)

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
  [Cash ratio 25 per cent: the multiplier is —], [4], [Chapter 2 — the reciprocal],
  [A deposit of ₦80,000 at a 20 per cent ratio creates credit of —], [₦320,000], [Chapter 2 — total minus original],
  [Stock worth ₦8m insured for ₦6m: a ₦4m loss pays —], [₦3.0m], [Chapter 3 — the average clause],
  [Which document is a document of title?], [The bill of lading], [Chapter 4 — documents of carriage],
  [A free sample is a form of —], [Sales promotion], [Chapter 5 — promotion against advertising],
  [Segmentation by income and occupation is —], [Demographic], [Chapter 6 — the four bases],
  [Which body lends for a balance-of-payments deficit?], [The IMF], [Chapter 7 — Fund against Bank],
  [Which management function compares results with the plan?], [Controlling], [Chapter 8 — the five functions],
  [A firm's sales are ₦6m in a market of ₦30m: its share is —], [20 per cent], [Chapter 6 — market share],
  [An employee who innovates inside his firm is an —], [Intrapreneur], [Chapter 8 — enterprise],
)

  #v(4pt)

  #text(font: "DejaVu Sans", size: 8.4pt, fill: jamb-muted)[Ten out of ten is the standard, not the target. Any miss names the chapter to reread tonight, and the catalogue above says why the miss happened.]
]

#v(5pt)

#concept-box("The three habits that beat a trap")[
  + *Read the operative word.* "Always", "never", "only", "all" and "except" change the answer more often than the subject does.
  + *Locate the base before computing.* Total deposits or the original deposit; insured value or the loss; market sales or the firm's sales.
  + *Ask which body or which function acts.* Most body questions are decided by the word — Fund, Bank, rules, quota, region — and not by the initials.
]
