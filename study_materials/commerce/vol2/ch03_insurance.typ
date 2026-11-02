#import "template.typ": *

#current-chapter.update("Chapter 3: Insurance and Risk")

#pagebreak()

#chapter-opener(
  3,
  "Insurance and Risk",
  subtitle: "The Pool, the Six Principles, the Classes of Policy and the Claim",
  syllabus-ref: "Sec. 3 • Insurance",
  utme-weight: "8 Qs a year",
  running: "Insurance and Risk",
)

#focus-radar(
  objectives: (
    "Explain how a pool of premiums covers an individual loss.",
    "State the six principles of insurance and apply each to a claim.",
    "Distinguish life insurance from indemnity insurance.",
    "Name the classes of insurance and the risk each covers.",
    "Follow a claim from proposal form to settlement, and compute an average-clause payment.",
    "Distinguish reinsurance from co-insurance.",
  ),
  hotspots: (
    "*The six principles are examined one at a time.* Insurable interest, utmost good faith, indemnity, subrogation, contribution and proximate cause — each has a stock example, and each has a stock wrong option.",
    "*Indemnity is the principle that stops a profit.* A house worth ₦20 million insured for ₦20 million and destroyed pays ₦20 million, never ₦25 million, however much the premium.",
    "*Life insurance is not a contract of indemnity.* Nobody can value a life, so the sum assured is agreed in advance and paid as agreed.",
    "*The average (under-insurance) clause* pays loss × (sum insured ÷ value at risk). That formula is the only arithmetic the topic sets.",
    "*Reinsurance is insurance for the insurer.* It is not a second policy for the insured, and the insured cannot claim twice.",
  ),
  trap-summary: "Four slips. (1) Saying the insured must be indemnified for *all* losses, including the profit he would have made. (2) Treating subrogation as a transfer of the policy. (3) Applying indemnity to a life policy. (4) Confusing contribution (two policies on the same risk) with subrogation (one insurer standing in the insured's shoes).",
)

// ============================================================================
== 3.1 Risk, and the Three Ways of Handling It

Every business carries risk. A trader can *avoid* it by refusing the venture, *reduce* it
by taking care, or *retain* it by accepting that a small loss is cheaper than a premium.
Insurance is the fourth way: *transfer* it, for a price, to someone with enough other
risks to make the average predictable.

#table(
  columns: (1.15fr, 2.3fr, 1.5fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it means],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Example],
  ),
  [Avoidance], [do not undertake the activity that carries the risk], [a firm refuses to export to a war zone],
  [Reduction], [keep the activity but lower the chance or the size of the loss], [sprinklers, guards, careful packing],
  [Retention], [accept the risk and budget for it], [a small firm carries its own minor breakages],
  [Transfer], [pay another party to carry the risk], [fire insurance, marine insurance, a warranty],
)

#v(2pt)

#text(size: 9.4pt)[Insurance works on the *law of large numbers*: an insurer cannot say which house will burn, but with ten thousand houses it can predict how many will burn in a year to within a small margin. That prediction is the premium, and the predictability is why insurance needs many similar risks rather than one large one.]

// ============================================================================
== 3.2 The Pool

#diagram-fig("diagrams/ch03_insurance.svg",
  "The pool: many small premiums, one large loss, and the six principles that govern the payment.", width: 100%)

#formula-box("How a premium is built")[
  #text(size: 10.2pt)[
    Premium = expected loss (the pure risk premium) + expenses of running the fund
    + a margin for profit and contingencies \
    The expected loss is the sum at risk × the probability of loss, taken over the
    whole pool rather than over one policy.
  ]
]

#text(size: 9.4pt)[Two consequences follow, and both are examinable. First, a risk that is certain to happen cannot be insured — there is nothing to pool. Second, a risk that is shared by everyone at once (a war, a currency collapse) is hard to insure, because the losses arrive together and the pool cannot absorb them. Insurance needs risks that are *independent*.]

// ============================================================================
== 3.3 The Six Principles

#table(
  columns: (1.3fr, 2.3fr, 1.35fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Principle],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it requires],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The stock example],
  ),
  [Insurable interest], [the insured must lose money if the event happens, at the time of the loss], [you may insure your stock, not your neighbour's shop],
  [Utmost good faith], [both parties disclose every material fact, and answer the proposal form honestly], [a concealed heart condition; an undisclosed factory next door],
  [Indemnity], [the payment restores the position before the loss, and never improves it], [a ₦2m loss on a ₦2m stock pays ₦2m, not ₦2.5m],
  [Subrogation], [after paying, the insurer takes over the insured's right to recover from the party at fault], [the insurer sues the negligent driver],
  [Contribution], [where two policies cover the same risk, they share the loss in proportion], [two fire policies on one warehouse],
  [Proximate cause], [the loss must be caused by a peril the policy covers, and the nearest cause decides], [a fire, not the smoke alarm's failure, is the cause of the burn damage],
)

#v(2pt)

#trap-box("The three that the paper turns into questions")[
  *Indemnity and profit.* A trader insures stock for ₦5m and loses stock worth ₦5m that would have sold for ₦6m. The payment is ₦5m: the profit was never insured, because it never existed until the sale.

  *Utmost good faith and the proposal form.* An omission is enough; the insurer need not prove a lie. A material fact is one that would change the premium or the decision to insure.

  *Proximate cause and the chain.* If a storm drives a ship onto rocks and the cargo is damaged by seawater, the proximate cause is the storm, even though the water did the damage. Follow the chain back to the peril insured against.
]

// ============================================================================
== 3.4 The Classes of Insurance

#table(
  columns: (1.25fr, 2.4fr, 1.3fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Class],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it covers],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Indemnity or benefit],
  ),
  [Life assurance], [death, and the savings plans built around it], [benefit: the sum assured is agreed, not measured],
  [Fire and property], [damage to buildings, stock and equipment by fire and allied perils], [indemnity],
  [Marine], [hull and cargo lost or damaged at sea], [indemnity],
  [Motor], [third-party liability, and the vehicle itself if comprehensively covered], [indemnity],
  [Accident and personal], [injury, medical costs, loss of earnings], [indemnity, with agreed sums for some benefits],
  [Fidelity guarantee], [loss caused by a dishonest employee], [indemnity],
  [Employers' liability], [claims by employees injured at work], [indemnity],
)

#v(2pt)

#concept-box("Life policies, named exactly")[
  + *Term assurance* — pays only if death occurs within the term; no savings element, lowest premium.
  + *Whole-life assurance* — pays whenever death occurs, and builds a surrender value.
  + *Endowment* — pays at death or at the end of the term, whichever comes first; a savings plan with cover.
  + *Annuity* — the reverse: a lump sum is paid to the insurer and it pays an income for life.
  The paper often asks which policy combines protection with savings — that is the endowment, and the whole-life policy is the near-miss.
]

// ============================================================================
== 3.5 The Proposal, the Policy and the Claim

#table(
  columns: (0.55fr, 1.45fr, 2.3fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Step],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What happens],
  ),
  [1], [Proposal form], [the risk is described, and every material fact disclosed],
  [2], [Cover note], [temporary protection while the proposal is considered],
  [3], [Policy], [the contract: the perils covered, the sum insured, the excess and the exclusions],
  [4], [Premium notice and receipt], [the consideration; cover lapses if the premium is unpaid],
  [5], [Claim form and proof], [the loss is notified and evidenced: police report, photos, invoices],
  [6], [Survey and settlement], [a loss adjuster assesses, the average clause is applied if under-insured, and payment is made],
)

#v(2pt)

#formula-box("The average (under-insurance) clause")[
  #text(size: 10.2pt)[
    Payment = Loss × (Sum insured ÷ Value at risk at the time of the loss) \
    A stock worth ₦8m insured for ₦6m, with a ₦2m loss, pays 2m × (6 ÷ 8) = ₦1.5m.
  ]
]

#text(size: 9.4pt)[The clause exists because a premium is a price for a share of a risk, and a man who insures half his stock for half the premium must carry half of every loss. It applies to property and stock policies, never to a life policy, where the sum assured is a benefit rather than a measure of loss.]

// ============================================================================
== 3.6 Reinsurance and Co-insurance

#table(
  columns: (1.2fr, 2.35fr, 1.35fr),
  inset: (x: 4.8pt, y: 4.0pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Arrangement],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who is party to it],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The insured's position],
  ),
  [Reinsurance], [the insurer and another insurer, behind the original policy], [unchanged: he claims once, from his own insurer],
  [Co-insurance], [two or more insurers share one large risk under one policy], [each insurer pays its stated share of a loss],
  [Double insurance], [the same insured buys two policies on the same risk], [he may not profit; the insurers contribute in proportion],
)

#v(2pt)

#text(size: 9.4pt)[The three arrangements are confused because all of them involve more than one insurer. Sort them by *who signed the policy*: reinsurance leaves the insured with one contract; co-insurance gives him several signatures on one contract; double insurance gives him two contracts, and the law stops him collecting twice.]

// ============================================================================
== 3.7 Four Worked Questions

#worked-example(
  1,
  "Definition",
  [The principle that requires an insured to disclose every material fact is

    A. indemnity \\
    B. subrogation \\
    C. utmost good faith \\
    D. contribution],
  [
    *Step 1 — define each.* Indemnity restores the loss; subrogation transfers recovery rights; contribution shares a loss; utmost good faith requires disclosure.

    *Step 2 — match.* Disclosure is the content of good faith.

    *Step 3 — eliminate.* None of the others touches what the insured must tell the insurer.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Arithmetic",
  [A trader's stock is worth ₦10m and he insures it for ₦6m. A fire destroys stock worth ₦2m. He recovers

    A. ₦2.0m \\
    B. ₦1.2m \\
    C. ₦0.6m \\
    D. ₦2.4m],
  [
    *Step 1 — recognise the average clause.* The sum insured is below the value at risk, so the payment is reduced in proportion.

    *Step 2 — compute.* 2m × (6 ÷ 10) = ₦1.2m.

    *Step 3 — eliminate.* A ignores the clause; C divides the sum insured by the value only; D scales the loss up, which no clause does.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Application",
  [A driver damages a pedestrian's stall. His insurer pays for the damage and then sues the driver on the pedestrian's behalf. This is

    A. contribution \\
    B. subrogation \\
    C. indemnity \\
    D. reinsurance],
  [
    *Step 1 — who is suing whom?* The insurer, standing in the shoes of the person it paid.

    *Step 2 — match.* That transfer of the right of action is subrogation.

    *Step 3 — eliminate.* Contribution is between two insurers; indemnity is the principle that limits the payment; reinsurance is between insurers.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#worked-example(
  4,
  "Classification",
  [A policy that pays a stated sum on death and also builds a savings fund that is paid if the insured survives the term is

    A. term assurance \\
    B. whole-life assurance \\
    C. an endowment policy \\
    D. an annuity],
  [
    *Step 1 — two features are named.* Payment at death, and payment at survival.

    *Step 2 — match.* Death or survival, whichever comes first, is an endowment.

    *Step 3 — eliminate.* Term assurance pays nothing on survival; whole-life pays only at death; an annuity converts capital into income rather than paying a sum assured.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.8 Two-Minute Set

#mcq(1, [Insurance works because], [losses are certain], [many similar risks allow the number of losses to be predicted], [premiums are always small], [the insurer avoids all risk])

#mcq(2, [A person may insure property only if he], [lives near it], [has an insurable interest in it], [has paid the premium in cash], [owns a similar property])

#mcq(3, [Two fire policies cover the same warehouse. The insured may], [collect twice], [collect once, with the insurers contributing], [collect nothing], [choose the higher policy and ignore the other])

#mcq(4, [The class of insurance in which the sum assured is agreed rather than measured is], [marine], [fire], [life assurance], [fidelity guarantee])

#answer-key-grid(("B", "B", "B", "C"))

#answer-notes((
  ("B", [A large pool of independent risks makes the total of losses predictable, even though no single loss is.]),
  ("B", [Without something to lose, a policy would be a wager, and the law will not enforce a wager.]),
  ("B", [Double insurance cannot produce a profit; the loss is shared between the insurers.]),
  ("C", [A life cannot be valued in money, so the sum assured is fixed by the contract.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the pool, the six principles, the classes and the trap.", width: 74%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Insurance turns many small certain payments into one large uncertain loss paid in
    full. It rests on six principles — insurable interest, utmost good faith, indemnity,
    subrogation, contribution and proximate cause — and a claim that fails one of them
    fails entirely. Life assurance is the exception to indemnity because a life has no
    market value; property policies pay the loss in proportion when the sum insured is
    below the value at risk. Keep the three multi-insurer arrangements apart by asking
    who signed the policy: reinsurance behind it, co-insurance on it, double insurance
    in two copies.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Name the four ways of handling a risk and give an example of each.],
  [State the six principles, and apply each to a claim you invent.],
  [Compute an average-clause payment from three figures.],
  [Name five classes of insurance and what each covers.],
  [Distinguish reinsurance, co-insurance and double insurance.],
  [Explain why a life policy is not a contract of indemnity.],
))

#concept-box("Carry this into Chapter 4")[
  Insurance covers the risk that goods are lost; it does not store them or move them.
  Chapter 4 takes the two physical aids to trade — the warehouse that holds the goods
  and the carrier that moves them — and the third, communication, which lets the two
  ends of a bargain agree without meeting.
]

#include "drill_ch03.typ"
