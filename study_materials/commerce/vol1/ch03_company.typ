#import "template.typ": *

#current-chapter.update("Chapter 3: Companies and Public Enterprise")

#pagebreak()

#chapter-opener(
  3,
  "Companies and Public Enterprise",
  subtitle: "Incorporation, Private and Public Companies, Shares and Debentures, Corporations and Public Utilities",
  syllabus-ref: "Sec. 2 • Business Units II",
  utme-weight: "8 Qs a year",
  running: "Companies and Public Enterprise",
)

#focus-radar(
  objectives: (
    "Explain incorporation, and the two consequences the paper tests.",
    "Compare the private and the public limited company on the five standard axes.",
    "Name the documents of formation and say what each contains.",
    "Distinguish share capital from loan capital, and ordinary from preference shares.",
    "Describe the public corporation and the public utility, and the reasons for each.",
    "Answer the formation, document and comparison questions the paper sets.",
  ),
  hotspots: (
    "*Incorporation* makes the company a separate legal person: it owns its assets, owes its debts, and can sue and be sued in its own name. Members' liability stops at the shares they hold.",
    "*The memorandum* governs the company's relationship with the outside world; *the articles* govern its internal management. Swapping them is the commonest error in the chapter.",
    "*Private Ltd:* two to fifty members, no prospectus, transfer restricted. *Public Plc:* minimum two, no maximum, prospectus, shares freely transferable.",
    "*A debenture is a loan*, carrying a fixed rate and usually a charge on assets; *a share is ownership*, carrying a dividend that may be nothing.",
    "*A public corporation* is created by statute for a service the market would not supply at a fair price; it is not the same thing as a public company.",
  ),
  trap-summary: "Four slips. (1) Confusing a public company with a public corporation. (2) Saying shareholders own the company's assets — the company owns them. (3) Treating preference shares as voting shares. (4) Thinking a debenture holder owns part of the company.",
)

// ============================================================================
== 3.1 Incorporation: What Actually Changes

A company is formed by *incorporation* under the Companies and Allied Matters Act,
registered with the Corporate Affairs Commission. Two things change at the moment the
certificate is issued, and every other difference in this chapter follows from them.

#rule-box("The two consequences of incorporation")[
  + *Separate legal personality.* The company is a person in law, distinct from its members. It contracts, owns, owes, sues and is sued in its own name.
  + *Limited liability.* A member's loss is capped at the amount unpaid on the shares held. Personal property is not available to the company's creditors.
]

#concept-box("What limited liability does not mean")[
  It does not mean the company's debts vanish, and it does not protect a director who has
  given a personal guarantee or who has traded fraudulently. Limited liability is a rule
  about *shareholders*, not about the company: the company remains fully liable for every
  naira it owes, up to and beyond its assets, which is why a company can be wound up.
]

// ============================================================================
== 3.2 The Two Companies

#diagram-fig("diagrams/ch03_company.svg",
  "From promotion to certificate, and the two companies that come out of the process.", width: 100%)

#table(
  columns: (1.05fr, 1.75fr, 1.75fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Private limited (Ltd)],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Public limited (Plc)],
  ),
  [*Members*], [two minimum, fifty maximum], [two minimum, no maximum],
  [*Shares*], [not offered to the public], [offered to the public by prospectus],
  [*Transfer*], [restricted by the articles], [free, and quoted on an exchange if listed],
  [*Accounts*], [filed, but not published in a prospectus], [published, and open to inspection],
  [*Name*], [ends in "Limited" or "Ltd"], [ends in "Public Limited Company" or "Plc"],
  [*Capital*], [usually smaller; raised from a known circle], [larger; raised from the market],
)

#table(
  columns: (1.3fr, 2.55fr),
  inset: (x: 4.6pt, y: 4.0pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Document],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[What it contains, and who it binds],
  ),
  [*Memorandum of association*], [the company's name, registered office, objects, liability and capital; it governs the company's dealings with the outside world],
  [*Articles of association*], [the internal rules: directors, meetings, voting, transfer of shares, dividends; it binds the company and its members],
  [*Certificate of incorporation*], [issued by the CAC; it is the company's birth certificate and conclusive evidence that the company exists],
  [*Prospectus*], [issued by a public company inviting the public to subscribe for shares; it must disclose the risks and the use of the money],
  [*Statement of affairs*], [filed on registration, giving the initial capital and the directors' interests],
)

#trap-box("Memorandum or articles?")[
  Ask *who the document speaks to*. If it speaks to the outside world — the name, the
  objects, the capital — it is the *memorandum*. If it speaks to the members and
  directors about how the company is run — meetings, votes, transfers — it is the
  *articles*. A question that says "the document governing the internal management of a
  company" is asking for the articles, every time.
]

// ============================================================================
== 3.3 Share Capital and Loan Capital

#table(
  columns: (1.05fr, 1.6fr, 2.2fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Security],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[What the holder owns],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Return and risk],
  ),
  [*Ordinary share*], [ownership, with a vote at general meetings], [a dividend only if profit allows, and last in the queue; first to gain if the company prospers],
  [*Preference share*], [ownership, usually without a vote], [a fixed dividend paid before the ordinary dividend; first to be paid, capped in good years],
  [*Debenture*], [a loan to the company, not ownership], [a fixed rate of interest paid whether or not there is profit, usually secured on assets],
  [*Retained profit*], [the company's own reserves], [no cost of issue, but no new money either],
)

#concept-box("Why a company issues both")[
  Shares are permanent capital: the money need never be repaid, but the holders share
  the profit and the votes. Debentures are cheaper in good years and dangerous in bad
  ones, because interest is a fixed cost that must be paid before any dividend and can
  push a company into liquidation. The mix of the two is called *gearing*, and Chapter
  8 of the Accounting volume computes it.
]

// ============================================================================
== 3.4 Public Corporations and Public Utilities

#text(size: 9.4pt)[A public corporation is a business established by an Act of the legislature to provide a service to the public, financed by government, managed by a board, and accountable to a minister. It is not a company: it has no shareholders, no shares and no prospectus. It exists because the service is too large, too risky or too unprofitable for private capital to supply at a price the public could pay.]

#table(
  columns: (1.15fr, 1.75fr, 1.95fr),
  inset: (x: 4.4pt, y: 3.9pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Reason for a corporation],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[The argument],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Example],
  ),
  [*Natural monopoly*], [one network is cheaper than two, so competition would duplicate the pipes or the wires], [water, electricity transmission],
  [*Capital intensity*], [the investment is too large for private capital at a fair price], [rail, dams, refineries],
  [*Strategic importance*], [the state will not leave it to the market], [defence industries, ports],
  [*Social service*], [it must be supplied whether or not it pays], [public water, rural post, public broadcasting],
)

#text(size: 9.4pt)[A *public utility* is the narrower term: a corporation or regulated firm supplying an essential service — electricity, water, gas, telephone — usually on a network, usually under a regulator. Every public utility is a public service, but not every public corporation is a utility: a marketing board is a corporation and not a utility.]

#trap-box("Company or corporation?")[
  A *public company* is owned by shareholders and registered with the CAC. A *public
  corporation* is owned by the state and created by a statute. The word "public" does
  different work in the two phrases, and the paper relies on candidates reading it the
  same way.
]

// ============================================================================
== 3.5 Four Worked Questions

#worked-example(
  1,
  "Consequence of incorporation",
  [The main effect of incorporation on the owners of a business is that

    A. they share the profits equally \\
    B. their liability for the company's debts becomes limited \\
    C. the business becomes tax-free \\
    D. the business can no longer be sued],
  [
    *Step 1 — recall the two consequences.* Separate personality and limited liability.

    *Step 2 — match the wording.* B names limited liability, which is the consequence that matters to the owners.

    *Step 3 — eliminate.* Profits depend on the shares; companies pay tax; a company is precisely the entity that *can* be sued in its own name.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Documents",
  [The document that governs the internal management of a company is the

    A. memorandum of association \\
    B. articles of association \\
    C. certificate of incorporation \\
    D. prospectus],
  [
    *Step 1 — read the key phrase.* "Internal management."

    *Step 2 — match.* The articles are the internal rulebook; the memorandum is the company's face to the outside world.

    *Step 3 — eliminate.* The certificate proves existence; the prospectus invites subscriptions.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Securities",
  [A holder of a debenture in a company is

    A. an owner of the company \\
    B. a creditor of the company \\
    C. a director of the company \\
    D. a customer of the company],
  [
    *Step 1 — take the nature of the security.* A debenture is a loan, and a lender is a creditor.

    *Step 2 — contrast.* A shareholder is an owner; a debenture holder is not, and does not vote.

    *Step 3 — check the return.* Interest is paid whether or not there is profit, which is a creditor's right, not an owner's.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Public enterprise",
  [A public corporation is established mainly because

    A. the service is too unprofitable for private capital to supply at a fair price \\
    B. the government wants to make a profit \\
    C. private firms are forbidden by law \\
    D. the service requires no capital],
  [
    *Step 1 — recall the reasons.* Natural monopoly, capital intensity, strategic importance and social service.

    *Step 2 — match.* A states the social-service and capital-intensity argument in one line.

    *Step 3 — eliminate.* Corporations are not profit-seeking in the ordinary sense; there is no general prohibition; and the services are the most capital-hungry of all.

    *Answer: A.*
  ],
  tier: "JAMB CHALLENGE",
)

// ============================================================================
== 3.6 Two-Minute Set

#mcq(1, [The maximum number of members in a private limited company is], [twenty], [fifty], [unlimited], [one hundred])

#mcq(2, [A prospectus is issued by], [a private company], [a public company], [a partnership], [a cooperative])

#mcq(3, [Preference shares normally carry], [a variable dividend and a vote], [a fixed dividend paid before ordinary dividend], [an interest payment], [no dividend at all])

#mcq(4, [A public corporation is created by], [the Corporate Affairs Commission], [an Act of the legislature], [a prospectus], [a partnership deed])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [Two to fifty members; beyond that the company must be public.]),
  ("B", [A prospectus invites the public to subscribe, and only a public company may issue one.]),
  ("B", [The dividend is fixed and paid before the ordinary dividend, which is the price of giving up the vote and the upside.]),
  ("B", [It is a statutory body, not a registered company, which is why it has no shares and no CAC certificate.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: incorporation, the two companies, the documents and the corporation.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Incorporation makes a company a separate legal person and limits the members' liability to the shares they hold. The private company has two to fifty members, restricts transfer and cannot offer shares to the public; the public company has a minimum of two and no maximum, issues a prospectus and its shares are freely transferable. The memorandum governs the company's external relations, the articles its internal management, the certificate proves it exists and the prospectus invites subscriptions. Ordinary shares carry the vote and the last claim on profit; preference shares carry a fixed dividend paid first and usually no vote; debentures are loans, not ownership, and their interest is paid whether or not there is profit. A public corporation is a statutory body created for a natural monopoly, a capital-hungry project, a strategic industry or a social service — and it is not a public company.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [State the two consequences of incorporation.],
  [Give four differences between a Ltd and a Plc.],
  [Say what the memorandum contains and what the articles contain.],
  [Distinguish a share from a debenture in one sentence.],
  [Give three reasons for establishing a public corporation.],
  [Explain why a public corporation has no shareholders.])
)

#concept-box("Carry this into Chapter 4")[
  Chapters 2 and 3 answered *who owns the business*. Chapter 4 asks *how the goods get
  sold*: the retailer on the corner, the wholesaler behind him, and the four channels
  that connect a factory to a kitchen.
]

#include "drill_ch03.typ"
