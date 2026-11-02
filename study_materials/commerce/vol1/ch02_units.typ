#import "template.typ": *

#current-chapter.update("Chapter 2: Sole Trader, Partnership and Cooperative")

#pagebreak()

#chapter-opener(
  2,
  "Sole Trader, Partnership and Cooperative",
  subtitle: "Three Unincorporated Units Compared on Owner, Liability, Capital, Control and Profit",
  syllabus-ref: "Sec. 2 • Business Units I",
  utme-weight: "7 Qs a year",
  running: "Sole Trader, Partnership and Cooperative",
)

#focus-radar(
  objectives: (
    "Describe the sole proprietorship and give its four advantages and four drawbacks.",
    "Distinguish ordinary, limited and sleeping partners, and say what each may do.",
    "Explain the partnership deed and the four things it should settle.",
    "Describe the cooperative society, its types and its four principles.",
    "Compare the three forms on owner, liability, capital, control and profit.",
    "Answer the formation and comparison questions the paper sets.",
  ),
  hotspots: (
    "*Unlimited liability* is the defining feature of the sole trader and the ordinary partner, and the paper tests it more than any other phrase in the chapter.",
    "*A limited partner* contributes capital and takes no part in management; a *sleeping partner* may take part but does not, and remains fully liable.",
    "*The partnership deed* settles capital, profit ratio, salaries, interest and what happens on death or retirement. Without a deed, the Partnership Act defaults apply.",
    "*A cooperative* is owned by members, run on one member one vote, and shares surplus as a dividend on patronage rather than on capital.",
    "*Incorporation* is the line that separates this chapter from the next: none of these three is a separate legal person.",
  ),
  trap-summary: "Four slips. (1) Saying a partnership has limited liability — only a limited partnership, and only for the limited partner, does. (2) Confusing a sleeping partner with a limited partner. (3) Saying a cooperative aims at maximum profit. (4) Forgetting that a sole trader's business and the trader are the same person in law.",
)

// ============================================================================
== 2.1 The Sole Proprietorship

The sole trader is the oldest and commonest business unit in Nigeria: one person, own
or borrowed capital, own decisions, own risk. Everything sold in a kiosk, a buka, a
tailor's shop or a phone-repair stand is sold by a sole trader.

#table(
  columns: (1.35fr, 1.35fr, 1.6fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Consequence],
  ),
  [*Ownership*], [one person], [all decisions, no consultation, no dispute],
  [*Liability*], [unlimited], [business debts can be recovered from personal property],
  [*Capital*], [owner's savings, family loans, trade credit], [growth is limited by one purse],
  [*Profit*], [all to the owner], [the strongest incentive of any form],
  [*Continuity*], [ends with the owner], [no separate life, so no perpetual succession],
  [*Legal status*], [not a separate person], [the trader sues and is sued in his own name],
)

#concept-box("What unlimited liability really means")[
  If a sole trader owes a supplier two million naira and the shop is worth one, the
  supplier may take the shop and then pursue the trader's personal property — the car,
  the land, the savings — up to the whole debt. There is no line between the business
  and the person, because there is no separate legal person. That absence is the
  chapter's central fact, and every other difference follows from it.
]

#shortcut-box("Four advantages and four drawbacks, in the paper's language")[
  + *Advantages:* simple and cheap to form; the owner keeps every naira of profit; decisions are immediate; personal attention to customers and to credit.
  + *Drawbacks:* unlimited liability; capital limited to one person's means; the business dies with the owner; the owner carries every skill the business needs.
]

// ============================================================================
== 2.2 The Partnership

A partnership is the relationship between two and twenty persons carrying on a
business in common with a view to profit. It is a *relationship*, not a person: the
partners are the business.

#diagram-fig("diagrams/ch02_units.svg",
  "Three unincorporated units on the five axes the paper examines: owner, liability, capital, control and profit.", width: 100%)

#table(
  columns: (1.1fr, 1.75fr, 2.05fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Type of partner],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What they contribute],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Liability and rights],
  ),
  [*Ordinary (general)*], [capital and work; takes part in management], [unlimited, joint and several; shares in profit],
  [*Limited*], [capital only; takes no part in management], [limited to the capital contributed; may not bind the firm],
  [*Sleeping (dormant)*], [capital; takes no active part], [still unlimited — the silence is not a shield],
  [*Nominal*], [a name and reputation, no capital], [unlimited; lends the firm his standing],
  [*Quasi*], [behaves as a partner without being one], [held out to the world as a partner, and liable as one],
)

#rule-box("The partnership deed should settle five things")[
  + The capital each partner contributes.
  + The ratio in which profits and losses are shared.
  + Salaries and interest on capital, before profit is divided.
  + What happens on death, retirement or admission of a new partner.
  + How disputes are settled, and who may sign for the firm.
]

#text(size: 9.4pt)[Without a deed, the default rules of the Partnership Act apply: profits and losses are shared equally, no partner is entitled to a salary, and no interest is paid on capital before profit. That default is examinable, because it produces the commonest calculation question in the chapter — three partners, unequal capital, no deed, and the answer is always equal shares.]

#trap-box("Joint and several liability")[
  "Joint and several" means a creditor may sue all the partners together *or any one of
  them alone* for the whole debt, and the partner who pays then recovers the shares from
  the others. An option that says each partner is liable only for his own share is wrong,
  and it is offered every year.
]

// ============================================================================
== 2.3 The Cooperative Society

A cooperative is a voluntary association of persons who pool resources to meet a
common economic need, owned and controlled by its members on democratic lines.

#table(
  columns: (1.05fr, 1.75fr, 2.1fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Example],
  ),
  [*Consumer*], [buys goods in bulk and sells to members at cost plus a small margin], [a staff canteen cooperative],
  [*Producer (marketing)*], [collects, grades and sells members' produce], [a cocoa farmers' cooperative],
  [*Credit and thrift*], [pools members' savings and lends to members], [a teachers' thrift society],
  [*Multi-purpose*], [combines buying, selling and credit], [most modern Nigerian cooperatives],
)

#concept-box("The four principles that make a cooperative a cooperative")[
  + *Open and voluntary membership* — anyone who can use the service may join.
  + *Democratic control* — one member, one vote, whatever the size of the shareholding.
  + *Distribution by patronage* — surplus is shared in proportion to how much a member traded, not how much capital they put in.
  + *Service before profit* — the society exists to meet a need, and profit is a means, not the purpose.
]

#text(size: 9.4pt)[The fourth principle is the one the paper tests with a distractor. "A cooperative is formed to maximise profit for its members" is wrong, because a cooperative is formed to *serve* its members; the surplus it declares is a refund of overcharge, not a profit in the commercial sense. That difference is why a cooperative can sell to members at cost and still be solvent.]

// ============================================================================
== 2.4 Comparing the Three

#table(
  columns: (0.95fr, 1.6fr, 1.6fr, 1.5fr),
  inset: (x: 4.3pt, y: 3.8pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Sole trader],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Partnership],
    text(font: "DejaVu Sans", size: 7.4pt, weight: "bold", fill: white)[Cooperative],
  ),
  [*Owners*], [one], [two to twenty], [ten or more members],
  [*Liability*], [unlimited], [unlimited, joint and several], [limited to share capital],
  [*Capital*], [one purse], [partners' contributions], [members' subscriptions and reserves],
  [*Control*], [the owner], [by deed; majority or unanimous], [one member, one vote],
  [*Profit*], [all to the owner], [in the agreed ratio], [dividend on patronage],
  [*Motive*], [profit], [profit], [service],
  [*Continuity*], [ends with the owner], [ends on a partner's death unless the deed says otherwise], [perpetual, as members come and go],
)

#shortcut-box("The one-line answer for any comparison stem")[
  Say the axis, then the three positions: "On liability, the sole trader and the ordinary
  partner are unlimited, whereas the cooperative member risks only his share capital."
  One sentence, three units, and the comparison is complete.
]

// ============================================================================
== 2.5 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [A business owned by one person who has unlimited liability is a

    A. partnership \\
    B. sole proprietorship \\
    C. private limited company \\
    D. cooperative society],
  [
    *Step 1 — take the two facts.* One owner; unlimited liability.

    *Step 2 — eliminate.* A partnership has two or more owners; a limited company limits liability; a cooperative limits liability to share capital.

    *Step 3 — check.* One owner plus unlimited liability is the sole proprietorship by definition.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Partnership types",
  [A partner who contributes capital but takes no part in management, and whose liability is limited to that capital, is a

    A. sleeping partner \\
    B. limited partner \\
    C. nominal partner \\
    D. quasi partner],
  [
    *Step 1 — note both facts.* No management, and liability limited to capital.

    *Step 2 — test each.* A sleeping partner takes no part but remains fully liable; a nominal partner contributes reputation, not capital; a quasi partner is not a partner at all.

    *Step 3 — check.* Only the limited partner is both silent and shielded.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Cooperative principle",
  [A cooperative society differs from a company mainly because it

    A. cannot make a surplus \\
    B. is controlled on the basis of one member, one vote \\
    C. has no written rules \\
    D. cannot own property],
  [
    *Step 1 — recall the four principles.* Open membership, democratic control, distribution by patronage, service before profit.

    *Step 2 — match.* Democratic control is the structural difference from a company, where votes follow shares.

    *Step 3 — eliminate.* A cooperative can and does make a surplus; it has bye-laws; it owns property.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Deed and default",
  [Three partners contribute capital in the ratio 2 : 1 : 1 but sign no deed. They make a profit of ₦400,000. How is it shared?

    A. ₦200,000, ₦100,000, ₦100,000 \\
    B. ₦133,333 each \\
    C. ₦400,000 to the first partner \\
    D. Equally: ₦133,333, ₦133,333, ₦133,334],
  [
    *Step 1 — ask what governs.* Without a deed, the Partnership Act applies.

    *Step 2 — recall the default.* Profits and losses are shared equally, whatever the capital ratio.

    *Step 3 — compute.* ₦400,000 ÷ 3 = ₦133,333.33; the odd naira is absorbed by one partner, so D is the arithmetic.

    *Step 4 — distinguish.* A is the answer *if* a deed had set the capital ratio. The absence of a deed is the whole question.

    *Answer: D.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 2.6 Two-Minute Set

#mcq(1, [The maximum number of partners in an ordinary partnership is], [ten], [twenty], [fifty], [unlimited])

#mcq(2, [A sleeping partner is], [free from liability], [fully liable but inactive], [a lender only], [a salaried manager])

#mcq(3, [A cooperative shares its surplus according to], [capital contributed], [patronage], [seniority], [the number of shares])

#mcq(4, [The document that governs a partnership is the], [memorandum], [articles], [partnership deed], [certificate of incorporation])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [Two to twenty partners; a larger firm must incorporate or form a limited partnership under the relevant law.]),
  ("B", [A sleeping partner takes no active part but remains liable to the full extent of personal property — silence is not a shield.]),
  ("B", [Surplus is a refund in proportion to how much a member traded, which is why it is called a patronage dividend.]),
  ("C", [The deed sets capital, profit ratio, salaries and interest; without one, the Partnership Act defaults apply.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the three units, liability, the deed and the cooperative principles.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The sole proprietorship is one person, unlimited liability, all the profit and all the risk, cheap to form and hard to grow. The partnership is two to twenty persons in business together; its deed sets capital, profit ratio, salaries, interest and succession, and without a deed the Act shares profits equally. Partners are ordinary, limited, sleeping or nominal, and only the limited partner is shielded — the sleeping partner is not. A cooperative is a voluntary association of members, open to all, controlled on one member one vote, distributing surplus by patronage and putting service before profit; its types are consumer, producer, credit and multi-purpose. None of the three is a separate legal person, which is the line that separates this chapter from the company.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Define the sole proprietorship and state two advantages and two drawbacks.],
  [Distinguish a limited partner from a sleeping partner in one sentence.],
  [List five matters a partnership deed should settle.],
  [State the four cooperative principles.],
  [Name the four types of cooperative with one example each.],
  [Say what "joint and several" liability means.])
)

#concept-box("Carry this into Chapter 3")[
  Everything in Chapter 2 shares one weakness: the owners and the business are the same
  person in law. Chapter 3 is about the invention that fixes it — incorporation — and
  about the two forms it produces: the limited liability company and the public
  corporation.
]

#include "drill_ch02.typ"
