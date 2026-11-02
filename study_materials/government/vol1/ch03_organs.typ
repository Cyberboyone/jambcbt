#import "template.typ": *

#current-chapter.update("Chapter 3: The Organs of Government")

#pagebreak()

#chapter-opener(
  3,
  "The Organs of Government",
  subtitle: "Separation of Powers and Checks and Balances, the Legislature, the Executive, the Judiciary, Judicial Review and Delegated Legislation",
  syllabus-ref: "Part I • Organs of Government",
  utme-weight: "4 Qs a year",
  running: "The Organs of Government",
)

#focus-radar(
  objectives: (
    "Explain separation of powers and checks and balances, and give a Nigerian example of each check.",
    "State the functions of the legislature, and the merits and demerits of a bicameral one.",
    "Distinguish a parliamentary from a presidential executive, and state the functions of the executive.",
    "State the functions of the judiciary and the guarantees of its independence.",
    "Trace an appeal through the Nigerian courts, and explain judicial review.",
    "Explain delegated legislation, why it is used and how it is controlled.",
  ),
  hotspots: (
    "“The power to declare an Act of the National Assembly unconstitutional is exercised by …” — the courts, through judicial review. The option *the President* is the trap: a President may refuse assent, but refusing assent is not review.",
    "“The Senate has 109 members because …” — three senators per state (36 × 3 = 108) plus one for the Federal Capital Territory. The option *one per local government* belongs to a different chamber.",
    "“In a parliamentary system the executive is drawn from …” — the legislature, and it stays in office only while it commands a majority there. In a presidential system the two are separately elected.",
    "“Which is a function of the judiciary?” — interpreting the law and adjudicating disputes. *Making law* is legislative; *executing policy* is executive; the courts only fill gaps by interpretation.",
    "“Delegated legislation is law made by …” — a body other than the legislature, under powers conferred by an Act. The option *by the courts in the course of judgment* describes judicial precedent, not delegated legislation.",
  ),
  trap-summary: "Three slips. (1) Confusing separation of powers with checks and balances — one divides the work, the other polices it. (2) Giving the legislature the power to *execute* its own laws, or the executive the power to *interpret* them. (3) Treating judicial review as an appeal: review tests validity against the Constitution, an appeal tests the decision against the law.",
)

// ============================================================================
== 3.1 Separation of Powers and Checks and Balances

The doctrine of separation of powers, associated with Montesquieu, holds that the three
functions of government — making law, executing law and adjudicating disputes about law —
should be exercised by three distinct organs, and that no organ should exercise the
function of another. The purpose is not tidiness. It is to make tyranny difficult: a
ruler who can make the law, apply it and judge it needs no one's consent.

#diagram-fig("diagrams/gov_ch03_separation.svg",
  "The three organs and the checks that travel between them — confirmation and veto between legislature and executive, appointment and judicial review between executive and judiciary, and review running back to the legislature.", width: 100%)

#rule-box("Separation of powers in the Nigerian Constitution")[
  + *Section 4* vests legislative power in the National Assembly.
  + *Section 5* vests executive power in the President, to be exercised directly or through ministers and public officers.
  + *Section 6* vests judicial power in the courts.
  + *Section 4(8)* then says that the National Assembly may not delegate its law-making power — a direct statement of the doctrine, with delegated legislation admitted as an exception the courts police.
]

#concept-box("The checks, organ by organ")[
  *The legislature checks the executive* by confirming ministers and ambassadors, approving the budget, questioning ministers, setting up committees of inquiry, and impeaching the President for gross misconduct.

  *The executive checks the legislature* by assenting to or vetoing bills, by summoning Parliament in a parliamentary system, and by dissolving it. In Nigeria the President's veto can be overridden by a two-thirds majority of each House.

  *The judiciary checks both* by reviewing legislation and executive action against the Constitution, and by interpreting the law in disputes between the organs.

  *The legislature checks the judiciary* through confirmation of judicial appointments and the power to impeach a judge; the executive checks it through appointment on the advice of the Judicial Service Commission — while tenure and salary protect it from both.
]

#worked-example(
  1,
  "Naming the check",
  [The power of the National Assembly to reject a bill vetoed by the President is an example of

    A. separation of powers \\
    B. checks and balances \\
    C. judicial review \\
    D. delegated legislation],
  [
    *Step 1 — identify what is happening.* One organ is using a power to stop another organ. That is a check.

    *Step 2 — separate the two doctrines.* Separation of powers is the initial division of functions; checks and balances are the mutual brakes that keep each organ inside its own sphere.

    *Step 3 — eliminate the rest.* Judicial review is a court testing validity; delegated legislation is law made by a subordinate body. Neither is happening here.

    *Check.* “Reject” is a brake, and a brake is a check. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

== 3.2 The Legislature

The legislature is the organ that makes law. In Nigeria it is the National Assembly: a
Senate of 109 members and a House of Representatives of 360, each elected for four years.

#rule-box("The functions of the legislature")[
  + *Law-making.* Bills are introduced, debated, sent to committee, read three times and passed; the President assents or vetoes.
  + *Representation.* Each member represents a constituency, and the chamber as a whole is meant to mirror the country.
  + *Appropriation.* No money may be spent from the Consolidated Revenue Fund without an appropriation by the National Assembly.
  + *Oversight.* Committees question ministers, examine accounts and conduct investigations; the Public Accounts Committee examines the Auditor-General's report.
  + *Confirmation.* Ministers, ambassadors, and the heads of key agencies are confirmed by the Senate.
  + *Impeachment.* The National Assembly may remove the President or Vice-President for gross misconduct, and the Senate may remove a judge on the address of the President.
  + *Amendment.* Section 9 gives it the power to amend the Constitution itself, by special majority.
]

#table(
  columns: (1.5fr, 2.2fr, 2.2fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Bicameral — Nigeria],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Unicameral — a single chamber],
  ),
  [*Merits*], [second thoughts; states represented equally in the Senate and by population in the House; more scrutiny], [cheaper; faster; clearer responsibility],
  [*Demerits*], [expensive; duplication; slower; deadlock between the chambers], [less scrutiny; no representation of the states as units; legislation can be rushed],
  [*The Nigerian case*], [Senate: 3 per state + 1 for the FCT = 109. House: 360, by population], [used at state level in Nigeria: a single House of Assembly],
)

#worked-example(
  2,
  "Reading the composition",
  [The Senate of the Federal Republic of Nigeria consists of

    A. three senators from each state and one from the Federal Capital Territory \\
    B. two senators from each state and one from the Federal Capital Territory \\
    C. three senators from each state and three from the Federal Capital Territory \\
    D. one senator from each local government area],
  [
    *Step 1 — recall the rule.* Section 48: three senators per state, plus one for the FCT.

    *Step 2 — compute as a check.* 36 states × 3 = 108, plus 1 = 109, which is the number quoted everywhere.

    *Step 3 — eliminate.* Two per state is the United States Senate's logic, not Nigeria's. Three for the FCT is invented. One per local government would give 774 senators.

    *Check.* 36 × 3 + 1 = 109. The answer is *A*.
  ],
  tier: "UTME STANDARD",
)

== 3.3 The Executive

The executive executes the law: it carries out the decisions of the legislature, runs the
public services, conducts foreign policy and commands the armed forces. Two institutional
forms matter for the paper.

#diagram-fig("diagrams/gov_ch03_exec.svg",
  "Parliamentary and presidential executives. The difference is where the head of government sits — inside the legislature or outside it.", width: 100%)

#rule-box("Functions of the executive")[
  + *To execute the law.* From the budget to the traffic code, the executive is the organ that makes a statute happen.
  + *To initiate policy.* Most bills in a modern assembly are government bills; the executive proposes and the legislature disposes.
  + *To conduct foreign relations.* Treaties, ambassadors and recognition are executive acts, subject in Nigeria to the National Assembly's ratification.
  + *To command the armed forces.* The President is the Commander-in-Chief.
  + *To appoint and remove.* Ministers, ambassadors, judges (on the advice of the Judicial Service Commission) and the heads of agencies.
  + *To prepare the budget.* The executive drafts and presents it; the legislature may amend it.
  + *To grant prerogative of mercy.* The President may pardon or reprieve, on the advice of the Council of State.
]

In a *parliamentary* system the executive is drawn from the legislature and survives only
while it holds a majority there: ministers are members of parliament, and a vote of no
confidence ends the government. In a *presidential* system the two are separately elected,
the President's ministers are not members of the legislature, and the President cannot be
removed except by impeachment for misconduct.

#trap-box("The executive questions that carry a hidden second step")[
  *“Who is the head of state in a parliamentary system?”* — the monarch or a ceremonial
  president, not the Prime Minister, who is head of *government*. *“Who can remove a
  Nigerian minister?”* — the President, who appoints and dismisses; the Senate confirms but
  does not dismiss. *“Can the President legislate?”* — no, but the President may make
  regulations under a statute, which is delegated legislation and not an Act.
]

== 3.4 The Judiciary

The judiciary interprets the law, adjudicates disputes and reviews the acts of the other
organs against the Constitution. It is the organ that makes a written constitution mean
something, because a rule that no court can enforce is an aspiration.

#diagram-fig("diagrams/gov_ch03_courts.svg",
  "The hierarchy of courts. A case begins in the court that has jurisdiction over it and climbs only as far as the law allows.", width: 100%)

#rule-box("Functions of the judiciary")[
  + *Adjudication.* It decides disputes between persons, between persons and the state, and between the organs of government.
  + *Interpretation.* It says what a statute means when the words are disputed — and that saying becomes part of the law.
  + *Judicial review.* It tests legislation and executive action against the Constitution, and strikes down what is inconsistent with it.
  + *Protection of rights.* Section 46 allows a person whose Chapter IV right is breached to apply to a High Court for redress.
  + *Guardianship of the Constitution.* It decides whether an amendment followed the procedure in section 9.
  + *Election petitions.* The courts, through designated tribunals, decide whether an election was valid.
]

#concept-box("What judicial independence actually means")[
  *Security of tenure.* A judge of the Supreme Court or Court of Appeal may be removed only
  for inability or misconduct, on an address supported by two-thirds of the Senate — not by
  the President's displeasure.

  *Financial independence.* Salaries and allowances are charged to the Consolidated Revenue
  Fund, so they are paid without an annual vote that a government could withhold.

  *Appointment insulated from politics.* The Judicial Service Commission and the National
  Judicial Council advise; the President and the Senate confirm.

  *Immunity from suit for judicial acts.* A judge cannot be sued for what was said or done in
  court, so that a judgment may be given without fear of the losing party.
]

#trap-box("Judicial review is not an appeal")[
  An *appeal* asks a higher court whether a decision was right on the facts or the law. A
  *review* asks a court whether an Act or an executive action is *valid* — whether the organ
  had the power to do it at all. A court reviews a statute; it appeals a judgment. The paper
  offers the two as options and expects you to keep them apart.
]

#worked-example(
  3,
  "Where the appeal goes",
  [An appeal from a decision of the Court of Appeal in a civil case lies to the

    A. Federal High Court \\
    B. Supreme Court \\
    C. State High Court \\
    D. National Judicial Council],
  [
    *Step 1 — place the courts in order.* Supreme Court, Court of Appeal, the High Courts, then the lower courts.

    *Step 2 — move upward.* From the Court of Appeal there is only one court above it: the Supreme Court. (A few matters stop at the Court of Appeal by statute, but the general rule is the one tested here.)

    *Step 3 — eliminate the rest.* The Federal High Court and the State High Court are below the Court of Appeal; the National Judicial Council is an administrative body, not a court at all.

    *Check.* Appeal means “upward”, and only one court is above the Court of Appeal. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

== 3.5 Delegated Legislation

Delegated legislation is law made by a body other than the legislature — a minister, a local
government council, a statutory corporation or a professional body — under powers conferred
by an Act. It is the largest source of law in any modern state, and the paper asks both why
it exists and how it is controlled.

#rule-box("Why legislatures delegate")[
  + *Time.* Parliament cannot draft the thousands of regulations a modern economy needs.
  + *Expertise.* A minister and a technical agency know the detail of aviation safety or drug standards.
  + *Flexibility.* Regulations can be amended quickly when circumstances change.
  + *Emergency.* Powers are taken in advance so that a crisis can be met without waiting for a sitting.
  + *Local knowledge.* Councils make bye-laws for markets, sanitation and traffic that a national assembly could not draft.
]

#concept-box("How delegated legislation is controlled")[
  *By the courts* — a regulation that is *ultra vires* (beyond the powers granted) is void, and
  the courts will also strike down a regulation that is unreasonable or procedurally improper.

  *By the legislature* — the enabling Act sets the limits, may require the regulation to be laid
  before Parliament, and may provide for annulment; committees scrutinise statutory instruments.

  *By the executive* — ministers supervise the bodies beneath them and may revoke a regulation.

  *By publication* — regulations must be published in the gazette before they bind anyone.
]

#worked-example(
  4,
  "Naming the source of a bye-law",
  [A bye-law made by a local government council on market sanitation is an example of

    A. an Act of the National Assembly \\
    B. delegated legislation \\
    C. a judicial precedent \\
    D. a constitutional amendment],
  [
    *Step 1 — ask who made it.* A local government council, not the National Assembly.

    *Step 2 — ask under what authority.* A council may make bye-laws only because a law — the Constitution and the state's local government law — gives it that power. Law made under a conferred power is delegated legislation.

    *Step 3 — eliminate.* An Act is made by the National Assembly; a precedent is made by a court; an amendment changes the Constitution.

    *Check.* The maker is not the legislature, so the law is delegated. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

== 3.6 The Civil Service and the Executive at Work

The executive does not govern alone. Beneath the ministers sits the civil service: a
permanent, salaried, anonymous body of officials who carry policy into effect, advise the
minister impartially and stay when the government changes. Chapter 5 takes its structure and
its control apart; here it is enough to place it on the map as the executive's instrument
rather than a fourth organ.

#table(
  columns: (1.2fr, 1.7fr, 2.6fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Organ],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The verb],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The Nigerian article that builds it],
  ),
  [*Legislature*], [makes], [sections 4 and 47–60: the National Assembly, its composition, its procedure and its powers],
  [*Executive*], [executes], [sections 5 and 130–152: the President, the Vice-President, ministers, and the civil service],
  [*Judiciary*], [interprets], [sections 6 and 230–254: the courts, their jurisdiction and the Judicial Service Commission],
  [*Civil service*], [administers], [section 171 and the Public Service Rules; the Federal Civil Service Commission],
)

#worked-example(
  5,
  "Which organ can do this?",
  [Which of the following is a function of the legislature?

    A. Conducting elections \\
    B. Approving the annual budget \\
    C. Interpreting the Constitution \\
    D. Commanding the armed forces],
  [
    *Step 1 — name each option's organ.* Elections are conducted by INEC, an independent commission. The budget is approved by the legislature. The Constitution is interpreted by the courts. The armed forces are commanded by the President.

    *Step 2 — check the verb.* The legislature's power over money is *appropriation*: no money leaves the Consolidated Revenue Fund without its approval.

    *Step 3 — eliminate.* A, C and D are executive or judicial in character, and each belongs to a body the Constitution names.

    *Check.* The budget is a law, and the organ that passes laws passes the budget. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

== 3.7 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [The doctrine of separation of powers is chiefly intended to], [make government faster], [prevent the concentration of power], [increase the number of officials], [give the executive more authority])

#mcq(2, [The Nigerian Senate consists of], [109 members], [360 members], [774 members], [36 members])

#mcq(3, [The power of the courts to declare an Act of the National Assembly unconstitutional is called], [judicial precedent], [judicial review], [delegated legislation], [the doctrine of covering the field])

#mcq(4, [Law made by a minister under powers given by an Act of Parliament is called], [a decree], [a bye-law], [delegated legislation], [a constitutional amendment])

#answer-key-grid(("B", "A", "B", "C"))

#answer-notes((
  ("B", [The doctrine exists to prevent tyranny by keeping the three functions in different hands. Speed, the number of officials and a stronger executive are not its purpose — a constitution may sacrifice speed to safety.]),
  ("A", [Three senators from each of the 36 states, plus one for the Federal Capital Territory, gives 109. 360 is the House of Representatives, 774 is the number of local government areas, and 36 is the number of states.]),
  ("B", [Judicial review is the courts' power to test legislation and executive action against the Constitution. A precedent is a past decision, delegated legislation is law made by a subordinate body, and the covering-the-field doctrine decides conflicts between federal and state laws.]),
  ("C", [A minister is not the legislature, so a regulation made under an Act is delegated legislation. A decree is military law, a bye-law is made by a local council, and a constitutional amendment changes the Constitution itself.]),
))

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the three organs and the checks between them.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Separation of powers divides the work — the legislature makes law, the executive executes it, the judiciary interprets it — and checks and balances give each organ a brake on the others, so that the President may veto a bill but the National Assembly may override the veto by two-thirds, and the courts may strike down what either does. Nigeria's National Assembly is bicameral: 109 senators, three for each state and one for the Federal Capital Territory, and 360 representatives elected by population. It makes law, represents, appropriates, oversees, confirms and can impeach. The executive executes, initiates policy, conducts foreign affairs, commands the armed forces and appoints — and in a presidential system it is elected separately from the legislature, which is what makes it different from the parliamentary model in which the Prime Minister sits in the House and falls with a vote of no confidence. The judiciary adjudicates, interprets and reviews, protected by security of tenure and salaries charged to the Consolidated Revenue Fund, and organised in a hierarchy that runs from the magistrates' courts to the Supreme Court. Beneath and around all three sits delegated legislation: law made by ministers, councils and agencies under powers granted by an Act, valid only within those powers and always subject to the courts.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [State separation of powers and checks and balances, and give one Nigerian check for each organ.],
  [Name the sections of the 1999 Constitution that vest each of the three powers.],
  [Give six functions of the legislature and the composition of both chambers.],
  [Distinguish the parliamentary and presidential executives in three sentences.],
  [Explain judicial review, and say how it differs from an appeal.],
  [Explain delegated legislation, two reasons for it and two controls on it.],
))

#concept-box("Carry this into Chapter 4")[
  The organs are filled by people, and the people are chosen by parties, pressure groups and
  elections. The next chapter takes the machinery of choice apart: what a party does that a
  pressure group does not, which party system produces which kind of government, and how the
  electoral system turns votes into seats.
]

#include "drill_ch03.typ"
