#import "template.typ": *

#current-chapter.update("Chapter 8: Government, the Consumer and Business Ethics")

#pagebreak()

#chapter-opener(
  8,
  "Government, the Consumer and Ethics",
  subtitle: "Regulation, Taxation, Public Enterprise, Consumer Protection and the Responsibility of the Firm",
  syllabus-ref: "Sec. 6 • Government and Business",
  utme-weight: "6 Qs a year",
  running: "Government, the Consumer and Ethics",
)

#focus-radar(
  objectives: (
    "Name the four instruments by which government affects business.",
    "Explain why government provides certain goods itself, and what it costs.",
    "Classify taxes by incidence and by base, and give the effect of each on business.",
    "Name the consumer-protection agencies and what each regulates.",
    "State the six consumer rights and the three ways they are enforced.",
    "Distinguish social responsibility from charity, and give two examples.",
  ),
  hotspots: (
    "*The four instruments:* regulation (licences, standards, price control), taxation, provision (public corporations and utilities) and protection (tariffs, quotas, consumer agencies).",
    "*NAFDAC* regulates food and drugs, *SON* sets product standards, *CAC* registers companies, *FCCPC* protects competition and consumers, *CBN* regulates money and banks.",
    "*A progressive tax* takes a larger proportion from a larger income; *regressive* takes a larger proportion from a smaller one; *proportional* takes the same proportion from all.",
    "*Direct tax* is levied on income and cannot easily be shifted; *indirect tax* is levied on goods and is passed on in the price.",
    "*Social responsibility* means the firm bears costs its activity imposes on others — pollution, congestion, unemployment — not that it gives to charity.",
  ),
  trap-summary: "Four slips. (1) Calling VAT a direct tax. (2) Saying a public corporation is run to maximise profit. (3) Treating consumer protection as a favour rather than a right. (4) Describing corporate social responsibility as philanthropy.",
)

// ============================================================================
== 8.1 The Four Instruments

#diagram-fig("diagrams/ch08_regulation.svg",
  "Four instruments, six agencies, and the question the paper asks: which instrument is this action?", width: 100%)

#table(
  columns: (1.05fr, 1.75fr, 2.15fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Example],
  ),
  [*Regulation*], [licences, standards, price control, health rules], [NAFDAC approving a drug, SON certifying a cable],
  [*Taxation*], [company tax, VAT, customs duty, levies], [a 10% levy on imported vehicles],
  [*Provision*], [the state supplies the good itself], [a public water corporation, a state refinery],
  [*Protection*], [tariffs, quotas and consumer agencies], [a ban on substandard tyres, a tariff on rice],
)

#text(size: 9.4pt)[Two of these instruments are *fiscal* — taxation and protective duties — and two are *administrative* — regulation and provision. The paper rarely asks you to classify the instrument; it asks which instrument a named action belongs to, which is why the examples in the third column are the part worth memorising.]

// ============================================================================
== 8.2 Taxation

#table(
  columns: (1.0fr, 1.6fr, 2.3fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Example, and the effect on business],
  ),
  [*Direct*], [levied on income or profit; the burden stays where it falls], [company income tax, personal income tax, capital gains tax; reduces net profit],
  [*Indirect*], [levied on goods and services; the burden moves with the price], [VAT, customs duty, excise; raises the price and can reduce demand],
  [*Progressive*], [takes a larger proportion as the base rises], [personal income tax bands; redistributes, and can discourage extra effort],
  [*Regressive*], [takes a larger proportion of a small base], [a flat charge on a basic good; falls hardest on the poor],
  [*Proportional*], [the same proportion on every level], [a flat company tax rate],
)

#concept-box("Why government taxes business at all")[
  Four reasons, and the paper accepts them as a list: to *raise revenue* for public
  services; to *redistribute* income toward those who have least; to *regulate
  behaviour* — a levy on tobacco, a tax break for a firm that hires young people; and to
  *protect domestic production*, which is what a tariff does when it is not primarily
  about revenue.
]

#trap-box("Direct or indirect?")[
  Ask *who cannot pass it on*. A tax on a company's profit stays with the company, so it
  is direct. A tax on a good is added to the price and recovered from the buyer, so it is
  indirect. VAT is therefore indirect even though the shopkeeper remits it, because the
  shopkeeper is only the collector; the burden sits with the final consumer.
]

// ============================================================================
== 8.3 Public Enterprise

#text(size: 9.4pt)[Government provides some goods itself, through public corporations and utilities, for the four reasons met in Chapter 3: natural monopoly, capital intensity, strategic importance and social service. The advantages are that the service reaches people who could not pay a commercial price, that a natural monopoly is not exploited, and that strategic industries are held. The disadvantages are equally examinable: corporations are often overstaffed and under-capitalised, they face political rather than commercial decisions, they are slow to innovate, and losses fall on the taxpayer.]

#rule-box("The case against a public corporation, in four lines")[
  + *No profit test*, so there is no automatic signal of inefficiency.
  + *Political direction* of prices and appointments, which can override commercial logic.
  + *Soft budget constraint* — losses are covered, so inefficiency is not corrected.
  + *Bureaucracy* in procurement and in decision-making, which slows response to the market.
]

// ============================================================================
== 8.4 The Consumer

#text(size: 9.4pt)[A consumer is the final user of a good or service. Consumer protection exists because the market does not always give the buyer the information or the bargaining power to protect himself: goods may be unsafe, labels may lie, prices may be fixed, and the seller may be far away and larger.]

#table(
  columns: (1.05fr, 1.7fr, 2.2fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Right],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Enforced by],
  ),
  [*Safety*], [goods must not harm the user], [NAFDAC, SON, the standards regulations],
  [*Information*], [labels, weights, ingredients and warnings must be true], [NAFDAC, weights and measures],
  [*Choice*], [no coercion, no cartel that removes alternatives], [FCCPC, the competition rules],
  [*Redress*], [a remedy when the good fails], [the courts, the FCCPC, the seller's guarantee],
  [*Representation*], [a voice in the making of rules], [consumer associations, public hearings],
  [*Healthy environment*], [the right to a liveable surroundings], [environmental agencies and the courts],
)

#shortcut-box("Three ways a consumer is protected")[
  + *By law* — statutes, standards and the courts, which give a right of action.
  + *By agency* — NAFDAC, SON, FCCPC, weights and measures, which inspect and prosecute.
  + *By organisation* — consumer associations and the media, which publicise and press for redress.
]

// ============================================================================
== 8.5 Business Ethics and Social Responsibility

#concept-box("Responsibility is not charity")[
  *Corporate social responsibility* means the firm accepts the costs its activity imposes
  on others — a factory that treats its effluent, a brewery that funds its own transport
  rather than blocking the road. *Philanthropy* is a gift, given after the fact and
  unrelated to the harm. The paper tests the difference with an option such as "giving
  scholarships to students", which is philanthropy, beside "installing a water-treatment
  plant", which is responsibility.
]

#text(size: 9.4pt)[The four responsibilities are usually listed in a fixed order: *economic* (to be profitable enough to survive), *legal* (to obey the law), *ethical* (to do what is right where the law is silent) and *discretionary* (to contribute to the community). A firm that fails the first cannot perform the rest, which is why the list begins with profit.]

// ============================================================================
== 8.6 Four Worked Questions

#worked-example(
  1,
  "Classification",
  [The instrument by which government fixes the maximum price of a good is

    A. taxation \\
    B. price control \\
    C. a tariff \\
    D. a subsidy],
  [
    *Step 1 — read the action.* A maximum price is being set, not a tax or a payment.

    *Step 2 — match.* That is price control, an instrument of regulation.

    *Step 3 — eliminate.* A tariff taxes imports; a subsidy pays the producer; taxation raises revenue.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Tax classification",
  [Value added tax is best classified as

    A. a direct tax \\
    B. an indirect tax \\
    C. a progressive tax \\
    D. a capital tax],
  [
    *Step 1 — ask who bears it.* VAT is added to the price and paid by the final consumer.

    *Step 2 — classify.* A tax that moves with the price is indirect.

    *Step 3 — eliminate.* It is not levied on income, not progressive in structure, and not a tax on capital.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Agencies",
  [The agency responsible for the registration of companies in Nigeria is the

    A. CBN \\
    B. CAC \\
    C. SON \\
    D. NAFDAC],
  [
    *Step 1 — match the function.* Companies are registered by the Corporate Affairs Commission.

    *Step 2 — eliminate.* The CBN regulates banks and money; SON sets standards; NAFDAC regulates food and drugs.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Ethics",
  [A brewery that builds a treatment plant for its waste water is demonstrating

    A. philanthropy \\
    B. corporate social responsibility \\
    C. a trade discount \\
    D. price control],
  [
    *Step 1 — compare the two ideas.* Philanthropy is a gift unrelated to harm; responsibility is the firm bearing the cost of the harm its activity causes.

    *Step 2 — match.* Treating its own effluent is directly remedial, so it is responsibility.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 8.7 Two-Minute Set

#mcq(1, [Company income tax is], [an indirect tax], [a direct tax], [a tariff], [a subsidy])

#mcq(2, [NAFDAC regulates], [company registration], [food and drugs], [banking], [standards for cables])

#mcq(3, [A tax that takes a larger proportion from a higher income is], [regressive], [progressive], [proportional], [indirect])

#mcq(4, [Corporate social responsibility is best described as], [charitable giving], [accepting the costs the firm imposes on others], [a tax], [advertising])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [The burden stays with the company, which cannot add it to a price and recover it from a buyer.]),
  ("B", [NAFDAC regulates food, drugs, cosmetics and packaged water; SON sets product standards and CAC registers companies.]),
  ("B", [Progressive taxation takes a rising proportion as the base rises, which is how it redistributes income.]),
  ("B", [Responsibility is remedial and tied to the firm's own activity; charity is a gift, and the paper keeps the two apart.]),
))

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: the four instruments, the tax classes, the agencies and the rights.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Government touches business through four instruments: regulation, taxation, provision and protection. Taxation divides into direct, which stays where it falls, and indirect, which moves with the price; and into progressive, regressive and proportional by the way the rate changes. Public corporations exist for natural monopoly, capital intensity, strategic need and social service, and their costs are overstaffing, political direction and a soft budget. Consumer protection rests on six rights — safety, information, choice, redress, representation and a healthy environment — enforced by law, by agencies such as NAFDAC, SON and the FCCPC, and by consumer organisations. Business ethics adds the duties the law does not enforce, and corporate social responsibility means the firm bears the costs its own activity imposes on others.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [Name the four instruments of government policy toward business.],
  [Distinguish direct from indirect tax, with two examples each.],
  [Give three advantages and three disadvantages of public corporations.],
  [Name four consumer-protection agencies and the function of each.],
  [State the six consumer rights.],
  [Explain the difference between social responsibility and charity.])
)

#concept-box("Carry this into the papers")[
  Everything from Chapter 1 to Chapter 8 is now on the table. The two mock papers that
  follow test it in the proportions the real paper uses: definitions first, then
  classification, then function, then documents, then a little arithmetic. Sit them
  timed, mark them the same day, and read every solution — including the ones you got
  right.
]

#include "drill_ch08.typ"
