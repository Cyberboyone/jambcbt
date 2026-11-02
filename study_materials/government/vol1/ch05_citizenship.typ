#import "template.typ": *

#current-chapter.update("Chapter 5: Citizenship, Rights and Administration")

#pagebreak()

#chapter-opener(
  5,
  "Citizenship, Rights and Public Administration",
  subtitle: "How Citizenship Is Acquired, the Fundamental Human Rights in Chapter IV, the Civil Service and Its Control, Public Corporations and Local Government",
  syllabus-ref: "Part I • Citizenship and Administration",
  utme-weight: "3 Qs a year",
  running: "Citizenship, Rights and Administration",
)

#focus-radar(
  objectives: (
    "Define citizenship and name the routes by which it is acquired in Nigeria.",
    "Distinguish citizenship by registration from citizenship by naturalisation.",
    "State the duties of a citizen, and explain dual citizenship under Nigerian law.",
    "List the fundamental human rights in Chapter IV and say how they are enforced.",
    "Describe the civil service — its features, its structure and the bodies that control it.",
    "Explain why public corporations are created, and how local government is organised and funded.",
  ),
  hotspots: (
    "“A foreign woman married to a Nigerian citizen may acquire Nigerian citizenship by …” — registration. Naturalisation requires fifteen years' residence and is the option written for a man who has lived here.",
    "“Which of the following is a fundamental human right in Nigeria?” — the right to fair hearing, or the right to life. The option *right to employment* is a directive principle in Chapter II, not an enforceable right in Chapter IV.",
    "“The civil service is described as anonymous because …” — its officials do not take public credit or blame for policy, which belongs to the minister.",
    "“Public corporations are established mainly to …” — provide essential services at a price below cost, where private capital will not go.",
    "“Local government councils derive their powers from …” — the Constitution (section 7) and the state law that establishes them, not from the federal government.",
  ),
  trap-summary: "Three slips. (1) Writing that naturalisation needs five years — it is fifteen. (2) Treating every right in the Constitution as enforceable: Chapter II is a promise to the nation, Chapter IV is a right a court will enforce. (3) Saying the civil service is controlled only by the executive, when the legislature, the courts, the auditor-general and the ombudsman all have a hand.",
)

// ============================================================================
== 5.1 Citizenship: How a Person Belongs

Citizenship is the legal membership of a state, carrying rights within it and duties
towards it. It is not the same as nationality in every system, and it is not the same as
residence: a person may live in Nigeria for forty years without becoming a citizen, and a
citizen may live abroad for forty years without ceasing to be one.

#diagram-fig("diagrams/gov_ch05_citizenship.svg",
  "The routes into Nigerian citizenship. Three are automatic and two require an application to the President.", width: 100%)

#rule-box("The five routes, under sections 25 to 27")[
  + *By birth.* A person born in Nigeria before or after independence, either of whose parents or grandparents belonged to a community indigenous to Nigeria.
  + *By descent.* A person born outside Nigeria, either of whose parents is a Nigerian citizen.
  + *By registration.* A woman married to a Nigerian citizen, or a person of full age and capacity born outside Nigeria whose grandparent is a Nigerian citizen.
  + *By naturalisation.* A person of full age and capacity who has resided in Nigeria for fifteen years, is of good character, speaks a language of the community, and is acceptable to the local community.
  + *By honorary award.* A person whom the President confers citizenship on for exceptional service to the nation.
]

#concept-box("Registration and naturalisation, side by side")[
  *Registration* is the shorter route and it turns on a *connection*: marriage to a citizen, or
  descent from one. The applicant applies to the President through the state governor, takes the
  oath of allegiance and registers.

  *Naturalisation* is the longer route and it turns on *residence*: fifteen years in Nigeria,
  good character, a language of the community, and acceptance by the community. The President
  may refuse, and the certificate may be withdrawn if it was obtained by fraud.

  The paper tests the difference with one sentence: “married to a Nigerian” is registration;
  “lived in Nigeria for fifteen years” is naturalisation.
]

Dual citizenship is permitted in Nigeria. A citizen who acquires the citizenship of another
country does not lose Nigerian citizenship, though a person who becomes a Nigerian citizen
by naturalisation may be required to renounce a former one. The duties that go with
citizenship are the mirror image of the rights: to obey the Constitution and the laws, to
pay taxes, to defend the country when required, to respect the rights of others, and to
take part in public life.

#worked-example(
  1,
  "Marriage, residence and the right route",
  [A Ghanaian woman who has been married to a Nigerian citizen for six years applies for Nigerian citizenship. She may be granted citizenship by

    A. birth \\
    B. descent \\
    C. registration \\
    D. naturalisation],
  [
    *Step 1 — find the connection.* She is married to a citizen. That is the fact the law attaches to.

    *Step 2 — match it to the section.* Section 26 provides for citizenship by registration for a woman married to a Nigerian citizen. Naturalisation, in section 27, is for a resident who is not married to a citizen and who has lived here fifteen years.

    *Step 3 — eliminate.* Birth and descent both depend on a Nigerian parent or grandparent, which she does not have.

    *Check.* Marriage is the keyword, and marriage gives registration. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

== 5.2 Fundamental Human Rights

A right is a claim that the law will protect even against the government. Chapter IV of the
1999 Constitution sets out the rights a court will enforce; Chapter II sets out the
objectives the state ought to pursue, which the courts will not enforce directly. The paper
tests both the list and the distinction.

#table(
  columns: (1.7fr, 2.6fr, 2.3fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Right],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it protects],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Section],
  ),
  [*Life*], [no deprivation except in execution of a sentence of a court], [33],
  [*Dignity*], [no torture, no inhuman treatment, no slavery or servitude], [34],
  [*Liberty*], [arrest only on reasonable suspicion; charged within a reasonable time; bail], [35],
  [*Fair hearing*], [an impartial court, within a reasonable time, in public], [36],
  [*Private and family life*], [privacy of home, correspondence and communications], [37],
  [*Thought, conscience and religion*], [including the freedom to change religion and to propagate it], [38],
  [*Expression and the press*], [to hold opinions, receive and impart information], [39],
  [*Assembly and association*], [peaceful assembly, and the right to form or join a trade union or party], [40 and 41],
  [*Movement*], [to move freely and reside anywhere in Nigeria, and to enter and leave it], [41 and 42],
  [*Freedom from discrimination*], [no differential treatment on grounds of ethnic group, sex, religion or political opinion], [42],
  [*Property*], [acquisition and ownership of property, with compulsory acquisition only on due compensation], [43],
)

#rule-box("How a right is enforced")[
  + *Section 46.* A person whose Chapter IV right is, or is likely to be, contravened may apply to a High Court for redress.
  + *The courts.* Judicial review of executive action, damages against the state, and the exclusion of evidence obtained in breach of a right.
  + *The National Human Rights Commission.* It investigates complaints, visits places of detention and reports — it may not make binding orders.
  + *The Public Complaints Commission.* The ombudsman: it investigates administrative injustice by public bodies and recommends a remedy.
]

#trap-box("The rights that are not in Chapter IV")[
  *Right to employment, right to education, right to shelter, right to health* — these are
  objectives in Chapter II, and the Constitution itself says they are not enforceable in a
  court (section 6(6)(c)). A question that asks which is a *fundamental right* wants one of
  the Chapter IV items, and a question that asks which is a *directive principle* wants one of
  the others. The two lists are never mixed in a correct answer.
]

#worked-example(
  2,
  "Enforceable or aspirational?",
  [Which of the following is enforceable in a Nigerian court?

    A. The right to free education at all levels \\
    B. The right to fair hearing \\
    C. The right to employment \\
    D. The right to shelter],
  [
    *Step 1 — separate the chapters.* Chapter IV holds the enforceable rights; Chapter II holds the objectives.

    *Step 2 — place each option.* Free education, employment and shelter are all Chapter II objectives — section 18 for education, 17 for employment, 16 for shelter. Fair hearing is section 36, in Chapter IV.

    *Step 3 — choose.* Only the fair-hearing right comes with the section 46 remedy.

    *Check.* Ask whether the Constitution gives a court the power to order it. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

== 5.3 Public Administration and the Civil Service

Public administration is the machinery by which government policy is carried out: the
ministries, departments, agencies, corporations and local councils, and the officials who
staff them. The civil service is its core — the body of permanent officials who advise
ministers, prepare policy and administer departments.

#diagram-fig("diagrams/gov_ch05_admin.svg",
  "The civil service is controlled from six directions. The list is longer than most candidates expect, and the paper tests the ones that are easy to forget.", width: 100%)

#rule-box("The features of the civil service — the six the paper tests")[
  + *Permanence.* Officials stay when governments change; the minister comes and goes.
  + *Anonymity.* Officials do not publicly defend or attack policy; the minister answers in the House and to the press.
  + *Impartiality.* They serve whichever government is in power, and implement a policy they advised against.
  + *Hierarchy.* A graded structure from the permanent secretary down, with defined authority at each level.
  + *Merit and security.* Appointment and promotion by examination and record, and protection from arbitrary dismissal.
  + *Continuity.* The service carries the institutional memory that a new minister does not have.
]

#table(
  columns: (1.6fr, 1.8fr, 2.6fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Controller],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Instrument],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it can actually do],
  ),
  [*Legislature*], [questions, committees, appropriation], [cut a budget, summon an official, investigate a ministry],
  [*Executive*], [appointment, direction, discipline], [post, promote, transfer and dismiss within the rules],
  [*Judiciary*], [judicial review], [quash an unlawful administrative act and award damages],
  [*Auditor-General*], [annual audit], [report to the National Assembly on how money was spent],
  [*Public Complaints Commission*], [ombudsman investigation], [recommend a remedy for administrative injustice],
  [*Code of Conduct Bureau*], [asset declaration], [try a public officer for a conflict of interest],
)

#concept-box("Why the civil service is not a fourth organ")[
  The civil service implements; it does not decide. It has no independent constitutional power
  to make law, execute policy or adjudicate — it acts under the authority of the minister and
  within the Public Service Rules. That is why a permanent secretary cannot be sued for a
  policy decision, and why the minister, not the official, answers in Parliament.
]

== 5.4 Public Corporations

A public corporation is a statutory body created by an Act to provide a service, with its own
legal personality, its own funds and a board appointed by government. The Nigerian National
Petroleum Corporation, the Nigerian Ports Authority and the Federal Airports Authority are
the familiar examples.

#rule-box("Why governments create them")[
  + *To provide a service that private capital will not*, because the investment is too large or the return too slow — railways, water, electricity transmission.
  + *To natural monopoly.* Where one firm can serve the market at lower cost than several, public ownership prevents a private monopoly from overcharging.
  + *To pursue a social objective.* A rural post office or a loss-making rail line may be kept because the nation needs it, not because it pays.
  + *To protect strategic assets.* Oil, ports and aviation are treated as matters of national security as well as of commerce.
  + *To raise revenue for the state*, and to guide the economy through investment.
]

The problems are equally standard: political interference in management, overstaffing,
losses that the treasury must cover, weak accountability when the board answers only to
the ministry, and the difficulty of pricing a service that is also a social good. The
privatisation programme of the 2000s was the policy answer, and the paper asks both sides.

#worked-example(
  3,
  "Why a corporation and not a ministry?",
  [Public corporations are established mainly to

    A. provide services that need commercial freedom while remaining publicly owned \\
    B. increase the number of public servants \\
    C. remove the need for accountability to the public \\
    D. raise revenue for the political parties],
  [
    *Step 1 — identify what a ministry cannot do.* A ministry spends what the budget gives it and takes decisions through the civil service chain. A railway, a port or an airline has to price, borrow, trade and replace its fleet quickly.

    *Step 2 — identify what the state still wants.* Ownership, a public purpose and a board answerable to the government — not a private monopoly.

    *Step 3 — read the two together.* A corporation is the form that keeps public ownership while granting commercial management: a board, a trading account and, usually, a statute of its own.

    *Check.* If every decision needs a minister's signature, the body is a department; if it needs a board and a balance sheet, it is a corporation. The answer is *A*.
  ],
  tier: "UTME STANDARD",
)

== 5.5 Local Government

Local government is the third tier of government in Nigeria: 774 councils, each with an
elected chairman and council, and each guaranteed by section 7 of the Constitution.

#diagram-fig("diagrams/gov_ch05_lg.svg",
  "How a council is put together: a chairman, a council of elected councillors, and the officers who run the administration.", width: 100%)

#table(
  columns: (1.3fr, 2.2fr, 2.5fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it covers],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The problem the paper names],
  ),
  [*Markets and motor parks*], [building, maintaining and regulating them], [revenue is collected but rarely accounted for],
  [*Roads and drains*], [local roads, streets, drainage and street lighting], [funding depends on the state],
  [*Primary education*], [support for primary schools, with the state paying teachers], [confusion of responsibility between the tiers],
  [*Health*], [dispensaries, health posts and sanitation], [staffing and drugs],
  [*Burial, birth and death registration*], [local records and permits], [the commonest example in questions],
  [*Bye-laws*], [market rules, sanitation and noise], [the bye-law is delegated legislation],
)

Their revenue comes from three sources: statutory allocation from the Federation Account,
a share of state internally generated revenue, and their own charges, rates and levies.
The complaint that the third tier is financially dependent is an old one, and the 1976
reform — which created a uniform system of local government — is the date the paper
attaches to it.

#worked-example(
  4,
  "Naming the third tier",
  [Which of the following is a function of a local government council in Nigeria?

    A. Defence of the country \\
    B. Issuing currency \\
    C. Collection of market tolls and rates \\
    D. Conducting federal elections],
  [
    *Step 1 — apply the list test.* Defence and currency are exclusive federal matters. Federal elections are conducted by INEC, a federal body.

    *Step 2 — place the option left.* Market tolls and rates are local revenue: the council builds and maintains the market and charges for it.

    *Step 3 — check the principle.* A local government exists to provide local services and to raise local revenue for them, which section 7 protects.

    *Check.* Which option could only be done by a body that owns the market? The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

== 5.6 The Public Service and the Citizen

The relationship between the two is the subject's real theme, and the paper states it in a
single question: what may a citizen demand of the state, and what may the state demand of a
citizen? The answer is symmetrical — rights and duties — and the institutions of
administration are the place where the symmetry is either honoured or broken.

#concept-box("Duties that go with rights")[
  + To obey the Constitution and the laws, including tax law.
  + To respect the rights of others — the limit on every right is another person's right.
  + To defend the country when the law requires it.
  + To take part in public life: to register, to vote, to serve on a jury or a tribunal if called.
  + To protect public property, which is the citizen's own property held in common.
]

#worked-example(
  5,
  "The control that is not a control",
  [Which of the following is *not* a control over the civil service?

    A. Questions in the legislature \\
    B. The Public Complaints Commission \\
    C. The Auditor-General \\
    D. The national secretariat of the ruling party],
  [
    *Step 1 — list the recognised controls.* Legislative: questions, committees and the power over estimates. Judicial: the courts can review administrative acts. Administrative: the Public Service Commission and internal discipline. Financial: the Auditor-General. Grievance: the ombudsman, Nigeria's Public Complaints Commission.

    *Step 2 — test each option.* A, B and C are on the list. A party secretariat is not a public institution, holds no statutory power and cannot summon a permanent secretary or audit an account.

    *Step 3 — state the principle.* A control must be able to demand an account and impose a consequence. The party can do neither; it can only influence, which is a different verb.

    *Check.* The tempting option is always the one that sounds powerful in politics. Ask what it can lawfully require, not what it can loudly demand. The answer is *D*.
  ],
  tier: "JAMB CHALLENGE",
)

== 5.7 Chapter 5 in the Exam Hall — a Two-Minute Set

#mcq(1, [A foreign woman married to a Nigerian citizen may acquire Nigerian citizenship by], [birth], [descent], [registration], [naturalisation])

#mcq(2, [Which of the following is a fundamental human right under the Nigerian Constitution?], [Right to employment], [Right to free education], [Right to fair hearing], [Right to shelter])

#mcq(3, [The civil service is said to be anonymous because its officials], [are not known to the public], [do not publicly take credit or blame for policy], [are appointed by the President], [cannot be dismissed])

#mcq(4, [Public corporations are established mainly to], [make maximum profit for the state], [provide essential services where private capital will not go], [employ party supporters], [replace local government councils])

#answer-key-grid(("C", "C", "B", "B"))

#answer-notes((
  ("C", [Marriage to a citizen is the registration route under section 26. Birth and descent depend on a Nigerian parent or grandparent, and naturalisation is for a resident of fifteen years.]),
  ("C", [Fair hearing is section 36, in Chapter IV, and enforceable under section 46. Employment, free education and shelter are Chapter II objectives, which the Constitution says the courts will not enforce.]),
  ("B", [Anonymity means the official does not defend policy in public; the minister answers. Officials are certainly known, they are appointed under the rules rather than personally by the President, and they can be dismissed for misconduct.]),
  ("B", [A public corporation exists because the market will not supply the service at a price the public can pay. Profit is not the purpose — a corporation that made its object profit would not need to be public.]),
))

#diagram-fig("diagrams/recap_ch05.svg",
  "Chapter 5 recap card: citizenship, rights, the service and the councils.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 5 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Citizenship is legal membership of a state, and Nigeria grants it by birth, by descent, by registration — which is marriage to a citizen or descent from one — by naturalisation after fifteen years of residence, and by honorary award. Dual citizenship is permitted, and every right carries a duty: to obey the law, pay tax, respect others and defend the country. Chapter IV of the Constitution holds the rights a court will enforce — life, dignity, liberty, fair hearing, privacy, expression, assembly, movement, property and freedom from discrimination — while Chapter II holds the objectives the state ought to pursue but which the courts will not enforce, and the paper tests that distinction every year. Public administration is the machinery that carries policy out, and the civil service is its permanent core: permanent, anonymous, impartial and hierarchical, controlled by the legislature, the executive, the courts, the auditor-general, the ombudsman and the Code of Conduct Bureau. Public corporations exist to supply what private capital will not, at the cost of political interference and losses. And local government, guaranteed by section 7, is the third tier: 774 councils with elected chairmen and councils, providing markets, local roads, primary education support and health posts, and funded from the Federation Account, a share of state revenue and their own rates.
  ]
]

#chapter-checklist("Before you leave Chapter 5", (
  [Name the five routes to Nigerian citizenship and say which two require an application.],
  [Distinguish registration from naturalisation in one sentence.],
  [List eight Chapter IV rights and three Chapter II objectives.],
  [Explain what section 46 allows a citizen to do.],
  [State the features of the civil service and name four of its controllers.],
  [Give three functions of a local government council and its three sources of revenue.],
))

#concept-box("Carry this into Chapter 6")[
  A state that is well governed at home can act abroad, and the last chapter takes the
  country into the world: how foreign policy is made, what Nigeria's objectives are, and the
  organisations — the United Nations, the African Union, ECOWAS, the Commonwealth and OPEC —
  through which a middle power tries to be heard.
]

#include "drill_ch05.typ"
