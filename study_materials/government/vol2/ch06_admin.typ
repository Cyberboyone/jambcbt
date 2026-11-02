#import "template.typ": *

#current-chapter.update("Chapter 6: Public Administration")

#pagebreak()

#chapter-opener(
  6,
  "Public Administration",
  subtitle: "The Civil Service, the Corporations, the Councils and the Commissions That Outlast Governments",
  syllabus-ref: "Part III • Public Administration in Nigeria",
  utme-weight: "5 Qs a year",
  running: "Public Administration",
)

#focus-radar(
  objectives: (
    "Define public administration and distinguish it from private administration.",
    "Name the four tiers of the civil service and say what each does.",
    "State the canons of the civil service — permanence, anonymity, impartiality, merit — and explain each.",
    "Describe the public corporation, why it is created, and why it is privatised.",
    "Describe local government, its functions, its revenue and its problems.",
    "Name the accountability institutions: the Public Complaints Commission, the Code of Conduct Bureau and the Auditor-General.",
  ),
  hotspots: (
    "“The principle that a civil servant is not personally answerable to the public for government policy is …” — *anonymity*. The trap offers impartiality, which is neutrality between parties, not silence about policy.\n",
    "“Public corporations are established by …” — an *Act of the legislature* (or a decree during military rule), not by a ministerial directive. The trap offers “an executive order”.\n",
    "“The Udoji Commission of 1974 dealt with …” — the review of the public service, its structure and its remuneration. The trap offers local government, which was the Purvis reform of 1976... but that was a committee of inquiry too, so read the wording: whichever name is in the stem, the answer must match its subject.\n",
    "“The body that investigates complaints of maladministration against public officials is …” — the *Public Complaints Commission*, the Nigerian ombudsman. The EFCC and ICPC investigate corruption; the Code of Conduct Bureau checks asset declarations; none of them is the ombudsman.\n",
  ),
  trap-summary: "Three slips. (1) Treating the civil service as part of the executive that can be ordered about politically — the whole point of the canons is that the service is politically neutral and permanent while the government comes and goes. (2) Confusing *public corporation* with *public limited company*: the first is a statutory body providing a service, the second a company whose shares the public may buy. (3) Saying local government is created by the National Assembly — states create local governments, even though the Constitution lists their functions.",
)

// ============================================================================
== 6.1 What Public Administration Is

*Public administration* is the machinery and the process by which the state carries out its
decisions: the ministries, departments, agencies, corporations and councils that convert a
policy into a service. It is distinguished from *private administration* in four ways. Its
purpose is *public* — it serves citizens who have no choice about whether to use it — while
a business serves customers who can go elsewhere. Its funding comes from *taxation and
appropriation*, not from the sale of shares. Its accountability is *political and legal* —
to the legislature, the courts and the auditor — not only to a board. And its criterion of
success is *the public interest*, which cannot be reduced to profit.

The paper sometimes asks for the *functions* of public administration, and the answer is a
list of verbs: to implement policy, to provide services, to maintain order, to collect and
spend revenue, to advise the political executive and to regulate the economy.

#concept-box("Public and private, side by side")[
  *Public administration:* statutory mandate, tax funding, political accountability, service to all, no profit test. *Private administration:* market mandate, sales funding, accountability to shareholders, service to paying customers, profitability as the test. The overlap is large, which is why the paper prefers the word *distinguish* to the word *opposite*.
]

== 6.2 The Civil Service

The *civil service* is the body of permanent officials who advise ministers, prepare policy
and administer the departments of government. Its structure has four tiers. The
*administrative class* — the permanent secretary at the top and the administrative officers
below — coordinates, advises and manages. The *professional class* — engineers, doctors,
lawyers, accountants — supplies technical expertise. The *executive and clerical class*
processes files, keeps records and handles correspondence. The *support staff* — drivers,
cleaners, messengers — keeps the office running.

#diagram-fig("diagrams/gov2_ch06_admin.svg",
  "The four tiers of the civil service and the four controls that sit over it.", width: 100%)

The *canons* of the service are its professional ethics. *Permanence*: the service survives
changes of government, so that its knowledge is not lost every four years. *Anonymity*: the
official does not speak publicly for the policy and is not personally blamed for it; the
minister takes the credit and the blame. *Impartiality*: the official serves whichever party
is in power, with equal loyalty. *Merit*: appointment and promotion are by examination and
record, not by patronage. To these the textbooks add *integrity*, *discipline* and
*secrecy*.

#table(
  columns: (1.15fr, 2.15fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Canon],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it means in practice],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What breaks it],
  ),
  [Permanence], [the service continues through changes of government], [mass dismissal after a coup],
  [Anonymity], [the minister answers publicly, not the official], [a director defending policy on television],
  [Impartiality], [equal service to any party in power], [a permanent secretary campaigning for a party],
  [Merit], [entry and promotion by examination and record], [appointment by ethnic or political quota alone],
  [Integrity], [public money is not private money], [contract inflation and kickbacks],
)

== 6.3 Reform and Control

The Nigerian civil service has been reformed repeatedly, and four exercises are examinable.
The *Udoji Commission* of 1972–74 reviewed the structure and pay of the service and produced
the 1974 Udoji Awards, which raised salaries sharply and introduced a unified grading
structure. The *Dotun Phillips Study Team* of 1985 examined the service again and recommended
a leaner structure. The *Ayida Review Panel* of 1994–95 proposed a return to a professional
service with a smaller number of ministries. The *Steve Oronsaye Committee* of 2011–12
recommended the merging and scrapping of many agencies to cut the cost of governance — its
report is still the standard example of a rationalisation exercise.

Control of the service takes four forms. *Legislative control*: the National Assembly
approves the budget, questions ministers and can summon officials. *Executive control*: the
President appoints, directs and disciplines through the Federal Civil Service Commission and
the head of service. *Judicial control*: the courts can quash an unlawful administrative act
and award damages. And the *ombudsman* control: the Public Complaints Commission investigates
maladministration on the complaint of a citizen.

#table(
  columns: (1.2fr, 2.0fr, 1.8fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Reform],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it did],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is remembered for],
  ),
  [Udoji, 1972–74], [reviewed structure and pay; unified grading], [the 1974 salary awards],
  [Dotun Phillips, 1985], [reviewed the service and its size], [a leaner structure recommended],
  [Ayida, 1994–95], [professional service, fewer ministries], [the case for a smaller centre],
  [Oronsaye, 2011–12], [merged and scrapped agencies], [the cost-of-governance argument],
)

== 6.4 Public Corporations

A *public corporation* is a statutory body created by law to provide a service on commercial
lines, with its own board and its own accounts, but owned by the state. The Nigerian Ports
Authority, the Nigerian Railway Corporation, the Power Holding Company and the Nigerian
National Petroleum Corporation are the standard examples. Governments create them for
reasons the paper expects: to provide a service that private capital will not fund because
the investment is too large or the return too slow; to keep a natural monopoly, such as
water or electricity transmission, under public control; to protect strategic sectors such
as oil; and to provide cheap services as a matter of social policy.

Their problems are equally examinable. They are *overstaffed* and *inefficient*, because
they are not disciplined by competition. They are *politicised*, because boards and
managements are appointed on political grounds. They *lose money* and are subsidised from
the treasury, and they are *poorly accountable* to the legislature. The response since the
late 1980s has been *privatisation* — the transfer of ownership to private shareholders —
together with *commercialisation*, which keeps public ownership but requires the corporation
to cover its costs, and *deregulation*, which removes the legal barriers to private entry.

#shortcut-box("Corporation, commercialisation, privatisation")[
  + *Corporation:* state-owned, statutory, service on commercial lines.
  + *Commercialisation:* still state-owned, but must cover its costs.
  + *Privatisation:* ownership transferred to private shareholders.
]

== 6.5 Local Government

Local government is the third tier, and its justification is *proximity*: the council is
the level of government closest to the people, and it can respond to a need — a market
stall, a refuse heap, a feeder road — that a state capital would never notice. Its
functions, listed in the Fourth Schedule of the 1999 Constitution, include markets,
motor parks, sanitation, refuse disposal, local roads, primary school support, and the
registration of births and deaths.

Its money comes from four sources: a statutory allocation from the Federation Account, a
share of state revenue, internally generated revenue such as rates, fees and licences, and
grants and loans. Its problems are the mirror of its functions: *inadequate finance*,
because the statutory allocation is delayed and the council lacks the power to tax
effectively; *undue state control*, through the state's power to dissolve a council and
appoint a caretaker committee; *corruption and poor record-keeping*; and *a shortage of
trained staff*, since the best officers prefer the state and federal services.

#table(
  columns: (1.3fr, 2.0fr, 1.7fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Source],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What it is],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Why it fails],
  ),
  [Statutory allocation], [the council's share of the Federation Account], [late and unpredictable],
  [State allocation], [a share of state revenue], [the state pays what it chooses],
  [Internal revenue], [rates, fees, licences, market tolls], [weak collection and evasion],
  [Grants and loans], [state and federal grants, bank loans], [loans are hard to service],
)

== 6.6 Accountability Institutions

Three institutions answer the question “who watches the administration?”. The *Public
Complaints Commission* is the Nigerian ombudsman, established in 1975 and empowered to
investigate a complaint of injustice caused by maladministration and to recommend a remedy.
The *Code of Conduct Bureau* receives the asset declarations of public officers and refers
a breach to the Code of Conduct Tribunal. The *Auditor-General* audits the accounts of the
federation and reports to the National Assembly. The *EFCC* and the *ICPC* investigate
economic and financial crimes and corruption respectively; they are law-enforcement bodies,
not ombudsmen, and the paper tests that distinction.

#trap-box("The ombudsman does not punish")[
  The Public Complaints Commission investigates, reports and recommends. It cannot prosecute, cannot
  reverse a court decision and cannot order a ministry to pay. That is why the examinable weakness of
  the Nigerian ombudsman is the *non-binding* character of its findings: its report has moral and
  political weight, not legal force. A question that asks what the Commission can do to a guilty
  official is testing exactly this point.
]

== 6.7 Chapter 6 in the Exam Hall — Worked Questions and a Two-Minute Set

#worked-example(
  1,
  "The definition",
  [The branch of government administration concerned with the implementation of public policy is called

    A. public administration \\
    B. public finance \\
    C. public relations \\
    D. public enterprise],
  [
    *Step 1 — take the verb.* The stem says *implementation of public policy*, which is the classic definition of public administration.

    *Step 2 — separate the decoys.* Public finance is the study of revenue and expenditure; public relations is communication; public enterprise is state-owned business.

    *Step 3 — confirm.* Public administration covers the machinery and the process, which is why the civil service, the corporations and the councils all fall inside it.

    *Answer: A.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The canon of anonymity",
  [The principle that a civil servant is not personally answerable to the public for government policy is

    A. permanence \\
    B. anonymity \\
    C. impartiality \\
    D. neutrality],
  [
    *Step 1 — read the stem's key phrase.* “Not personally answerable to the public” is about visibility, not about party politics.

    *Step 2 — distinguish anonymity from impartiality.* Impartiality is equal service to any party; anonymity is the rule that the minister, not the official, defends the policy in public.

    *Step 3 — choose.* Anonymity.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Why corporations exist",
  [Which of the following is a reason for establishing a public corporation?

    A. To make a profit for private shareholders \\
    B. To avoid accountability to the legislature \\
    C. To provide a service that private capital cannot profitably provide \\
    D. To reduce the size of the civil service],
  [
    *Step 1 — recall the four reasons.* Large capital, natural monopoly, strategic sector and social service.

    *Step 2 — match.* Option C is the large-capital and social-service reason in one sentence.

    *Step 3 — exclude.* A corporation has no private shareholders; avoiding accountability is a criticism, not a purpose; reducing the civil service is a side effect at best.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The ombudsman",
  [The body empowered to investigate complaints of maladministration against Nigerian public officials is the

    A. Economic and Financial Crimes Commission \\
    B. Independent Corrupt Practices Commission \\
    C. Code of Conduct Bureau \\
    D. Public Complaints Commission],
  [
    *Step 1 — translate maladministration.* It means bad administration, not necessarily corruption or a criminal offence.

    *Step 2 — identify the ombudsman.* The Public Complaints Commission was set up in 1975 on the ombudsman model.

    *Step 3 — separate the law-enforcement bodies.* The EFCC and ICPC prosecute financial crime; the Code of Conduct Bureau checks asset declarations.

    *Answer: D.*
  ],
  tier: "JAMB CHALLENGE",
)

#mcq(1, [The principle that a civil servant should not be publicly identified with government policy is], [permanence], [anonymity], [impartiality], [neutrality])

#mcq(2, [Public corporations in Nigeria are established by], [a decree of the head of state], [a resolution of the Federal Executive Council], [an Act of the legislature], [a directive of the civil service commission])

#mcq(3, [The Udoji Commission of 1972–74 was concerned mainly with], [the structure and remuneration of the public service], [local government reform], [the creation of states], [the electoral system])

#mcq(4, [The body charged with investigating complaints of maladministration against public officials is the], [Economic and Financial Crimes Commission], [Independent Corrupt Practices Commission], [Code of Conduct Bureau], [Public Complaints Commission])

#answer-key-grid(("B", "C", "A", "D"))

#answer-notes((
  ("B", [Anonymity means the minister answers publicly for policy; the official stays out of the public argument, though the official remains accountable inside the service.]),
  ("C", [A corporation needs a legal instrument. During military rule that instrument was a decree; under a civilian constitution it is an Act of the legislature.]),
  ("A", [Udoji reviewed structure and pay, and its 1974 awards raised salaries and unified the grading structure.]),
  ("D", [The Public Complaints Commission is the ombudsman. The EFCC and ICPC prosecute; the Code of Conduct Bureau checks declarations; none investigates maladministration as such.]),
))

#diagram-fig("diagrams/recap_gov2_ch06.svg",
  "Chapter 6 recap card: the four tiers, the canons and the four controls.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Public administration is the machinery and process by which the state implements policy, and it differs from private administration in its purpose, its funding, its accountability and its test of success. The civil service has four tiers — administrative, professional, executive-clerical and support — and four canons: permanence, anonymity, impartiality and merit. It has been reformed by Udoji in 1974, Dotun Phillips in 1985, Ayida in 1995 and Oronsaye in 2012, and it is controlled by the legislature, the executive, the courts and the ombudsman. Public corporations are statutory bodies created to supply services that private capital will not fund, but they are overstaffed, politicised and loss-making, which is why privatisation, commercialisation and deregulation replaced them. Local government is the third tier: 774 councils, funded by statutory allocation, state allocation, internal revenue and grants, and weakened by inadequate finance, state control, corruption and poor staffing. The Public Complaints Commission investigates maladministration, the Code of Conduct Bureau checks assets, and the Auditor-General audits the accounts: three different jobs, and the paper tests the difference.
  ]
]

#chapter-checklist("Before you leave Chapter 6", (
  [Define public administration and distinguish it from private administration in four ways.],
  [Name the four tiers of the civil service.],
  [Explain permanence, anonymity, impartiality and merit.],
  [Name the four reform exercises and one thing each is remembered for.],
  [Give the reasons for creating a public corporation and the reasons for privatising it.],
  [State the four sources of local government revenue and the four problems.],
  [Distinguish the Public Complaints Commission, the Code of Conduct Bureau and the Auditor-General.],
))

#concept-box("Carry this into Chapter 7")[
  The civil service implements a foreign policy as readily as a domestic one. Chapter 7 turns to the
  substance of that policy: the concentric circles, the institutions — ECOWAS, the AU, the UN, the
  Commonwealth and OPEC — and the instruments through which a country with Nigeria's resources tries
  to be heard.
]

#include "drill_ch06.typ"
