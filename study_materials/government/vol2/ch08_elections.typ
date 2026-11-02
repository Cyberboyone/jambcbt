#import "template.typ": *

#current-chapter.update("Chapter 8: Elections and Administration")

#pagebreak()

#chapter-opener(
  8,
  "Elections and Administration",
  subtitle: "The Register, the Ballot, the BIVAS and the Petition — How a Government Is Made and Unmade",
  syllabus-ref: "Part V • Elections and Electoral Administration",
  utme-weight: "5 Qs a year",
  running: "Elections and Administration",
)

#focus-radar(
  objectives: (
    "State the functions of elections in a democracy.",
    "Distinguish the first-past-the-post system from proportional representation and say which Nigeria uses.",
    "Describe INEC — its establishment, its functions and the meaning of its independence.",
    "Trace the electoral cycle from registration to petition.",
    "State the conditions for a free and fair election and the classic ways an election is rigged.",
    "Name the changes introduced by the Electoral Act 2022 and explain the election petition procedure.",
  ),
  hotspots: (
    "“Nigeria operates which electoral system?” — *first past the post*, in single-member constituencies, with a modified presidential requirement of 25 per cent in two-thirds of the states. The trap offers proportional representation because Nigeria uses party lists for some purposes.\n",
    "“INEC was established in …” — 1998, and it is recognised by the 1999 Constitution. The trap offers 1999, the year the Constitution took effect.\n",
    "“The body that accredits voters using fingerprints and facial recognition is …” — INEC, through *BIVAS*, the Bimodal Voter Accreditation System, introduced under the Electoral Act 2022.\n",
    "“An election petition is filed at …” — the election petitions tribunal, and for a presidential election at the Court of Appeal sitting as the Presidential Election Petition Court. The Supreme Court hears the appeal.\n",
  ),
  trap-summary: "Three slips. (1) Saying INEC conducts local government elections — state independent electoral commissions do, and that is why council polls are so often postponed. (2) Treating card readers and BIVAS as the same thing: the card reader of 2015 verified the card, BIVAS of 2022 verifies the *person* by fingerprint and face. (3) Saying a petition can be filed at any time: the Act sets a short filing window, and the tribunal sets a deadline for judgment.",
)

// ============================================================================
== 8.1 Why Elections Matter

An *election* is the process by which citizens choose the people who will govern them. In a
democracy it performs five functions, and the paper expects at least three. It *legitimises*
a government, because a government that has won an election can claim the consent of the
governed. It *recruits* leaders and gives a career open to talent rather than to birth. It
*mandates* a programme, since a party that campaigns on a promise may be held to it. It
*holds government accountable*, because a government that must face the voters at a fixed
date behaves differently from one that does not. And it *manages conflict* by giving
rival groups a peaceful procedure for deciding who rules.

#block(width: 100%, fill: jamb-light, stroke: 0.8pt + jamb-border, radius: 6pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 8.6pt, weight: "bold", fill: jamb-navy)[The one-line definition]
  #v(2pt)
  #text(size: 10pt)[An election is a formal procedure of choice in which eligible citizens select, by vote, the persons who will hold public office for a fixed term.]
]

== 8.2 The Electoral Systems

An *electoral system* is the set of rules that converts votes into seats. Three families
matter. Under *first past the post* (plurality), the country is divided into single-member
constituencies, and the candidate with the most votes wins even without a majority; the
party with the most seats forms the government. Under *proportional representation*, seats
are allocated in proportion to the votes a party receives, usually from a party list in a
large multi-member constituency. Under a *mixed* system, some seats are filled by
constituency and some by list, as in Germany and New Zealand.

Nigeria uses first past the post for the National Assembly and the state houses of assembly,
and a modified version for the presidency: a candidate must have the highest number of votes
*and* at least 25 per cent of the votes cast in at least two-thirds of the states and the
Federal Capital Territory. If no candidate satisfies both tests, a run-off is held between
the two leading candidates.

#table(
  columns: (1.15fr, 1.8fr, 1.55fr, 1.15fr),
  inset: (x: 4.6pt, y: 4.1pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[System],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[How seats are won],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Strength],
    text(font: "DejaVu Sans", size: 7.5pt, weight: "bold", fill: white)[Weakness],
  ),
  [First past the post], [most votes in a single-member constituency], [simple, and gives a clear winner], [wastes votes and exaggerates majorities],
  [Proportional], [seats in proportion to votes, from a list], [fair to small parties], [can produce unstable coalitions],
  [Mixed], [constituency seats plus list seats], [balances the two], [complex for the voter],
  [Two-round], [a run-off if no first-round majority], [a winner with majority support], [costly and slow],
)

== 8.3 INEC

The *Independent National Electoral Commission* (INEC) is the body that runs federal and
state elections. It was established in 1998, replacing the military-era commission, and its
existence and independence are guaranteed by the 1999 Constitution. Its functions are to
organise and supervise elections to the federal and state legislatures and the offices of
President and governor, to register voters and parties, to delimit constituencies, to
conduct the voter education campaign, to accredit observers and to announce the results.

*Independence* has three parts, and the paper tests each. *Financial independence* means the
Commission's funds come as a direct charge on the Consolidated Revenue Fund rather than at
the discretion of the executive. *Security of tenure* means the commissioners cannot be
removed at will; a removal must follow the constitutional procedure. *Appointment by
consensus* means the members are appointed by the President on the advice of the Council of
State and confirmed by the Senate, so that no single party owns the commission. When a
question asks why INEC is called “independent”, the answer is these three, not the word on
its letterhead.

#table(
  columns: (1.5fr, 2.25fr),
  inset: (x: 5pt, y: 4.3pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it involves in practice],
  ),
  [Organise elections], [polling units, ballot papers, ad hoc staff, results],
  [Register voters and parties], [the continuous voter registration, the register, the party register],
  [Delimit constituencies], [the periodic review of constituency boundaries],
  [Educate the voter], [the “no PVC, no voting” campaign and the candidate debates],
  [Accredit observers], [domestic and international observer groups],
  [Announce results], [collation at ward, local government, state and national levels],
)

== 8.4 The Electoral Cycle

An election is a cycle, not a day. There are seven stages, and each has a characteristic
failure. *Registration*: the voter registers and is issued a Permanent Voter Card; the
failure is a register that is incomplete or inflated. *Nomination*: parties hold primaries
and submit candidates; the failure is a candidate imposed by a godfather. *Campaign*: the
parties canvass; the failure is vote-buying and the abuse of incumbency. *Accreditation*:
the voter is verified at the polling unit; the failure is impersonation, or a card reader
that cannot read. *Voting*: the ballot is cast; the failure is ballot-box snatching and
multiple voting. *Collation*: the results are added up; the failure is the alteration of
figures at a collation centre. *Petition*: the loser goes to the tribunal; the failure is a
case that outlives the term it contests.

#diagram-fig("diagrams/gov2_ch08_elections.svg",
  "The seven-stage electoral cycle, with INEC at the centre and the four classic attacks on it.", width: 100%)

#table(
  columns: (1.2fr, 2.1fr, 1.85fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[What should happen],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[How it is attacked],
  ),
  [Registration], [a complete and accurate register], [ghost names, omitted voters],
  [Nomination], [a transparent party primary], [imposition, disqualification of rivals],
  [Campaign], [free competition and equal access], [vote-buying, media capture],
  [Accreditation], [each voter verified once], [impersonation, equipment failure],
  [Voting], [a secret ballot, counted in public], [snatching, multiple voting],
  [Collation], [figures transmitted and reconciled], [altered result sheets],
  [Petition], [a speedy and impartial hearing], [delay beyond the term],
)

== 8.5 Free and Fair

An election is *free* when the voter can choose without fear or payment: no intimidation, no
vote-buying, no candidate barred for political reasons. It is *fair* when the rules apply
equally: an independent commission, an accurate register, equal access to the media, a
transparent count and a tribunal that can correct a wrong. The two words are not synonyms,
and the paper sometimes asks for the difference in one sentence: *freedom* is about the
voter's choice, *fairness* is about the rules of the contest.

== 8.6 The Law and the Petition

The *Electoral Act 2022* changed the machinery in four ways that the paper now expects.
It introduced the *Bimodal Voter Accreditation System* (BIVAS), which verifies a voter by
fingerprint and facial recognition and so makes impersonation much harder. It permitted the
*electronic transmission of results* from the polling unit, subject to the network coverage
certified by the regulator. It required parties to choose candidates by *direct primary* or
indirect primary conducted according to their own constitution, and it limited campaign
spending. It also gave INEC the power to *review results* where the declared figure exceeds
the number of accredited voters — the over-voting rule.

A losing candidate does not go to the ordinary court. A *petition* is filed at an election
petitions tribunal: the National Assembly and state house of assembly elections have their
own tribunals, governorship petitions have a governorship tribunal, and a presidential
petition goes to the Court of Appeal sitting as the Presidential Election Petition Court.
The petition must be filed within 21 days of the declaration of the result, and the tribunal
must deliver judgment within 180 days. An appeal goes to the Supreme Court.

#trap-box("The tribunal is not the ordinary court")[
  A question that asks where an election petition is filed is testing the word *tribunal*, not the
  word *court*. The High Court has no jurisdiction over a National Assembly election; the petition goes
  to the tribunal constituted for that election, and only the presidential petition starts at the Court
  of Appeal. Answer “the election petitions tribunal” and then add the exception for the presidency.
]

== 8.7 Chapter 8 in the Exam Hall — Worked Questions and a Two-Minute Set

#worked-example(
  1,
  "The system",
  [The electoral system in which the candidate with the highest number of votes in a constituency wins is called

    A. proportional representation \\
    B. the single transferable vote \\
    C. first past the post \\
    D. the party list system],
  [
    *Step 1 — take the phrase “highest number of votes”.* That is plurality, not majority.

    *Step 2 — match to the family.* Plurality in a single-member constituency is first past the post.

    *Step 3 — exclude.* Proportional representation and the party list allocate seats by share of the vote; the single transferable vote transfers preferences.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "INEC's independence",
  [Which of the following best explains why INEC is described as independent?

    A. It is funded by foreign donors \\
    B. Its funds are a charge on the Consolidated Revenue Fund and its commissioners have security of tenure \\
    C. It is controlled by the ruling party \\
    D. It conducts local government elections],
  [
    *Step 1 — identify the three supports of independence.* Finance, tenure and appointment.

    *Step 2 — match.* Option B names the first two precisely.

    *Step 3 — exclude the false statements.* INEC is not foreign-funded, is not controlled by the ruling party (whatever the criticism), and does not conduct council elections.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "BIVAS",
  [The technology introduced by the Electoral Act 2022 to verify a voter by fingerprint and facial recognition is

    A. the Permanent Voter Card \\
    B. the smart card reader \\
    C. the Bimodal Voter Accreditation System \\
    D. the electronic result portal alone],
  [
    *Step 1 — read the stem's two biometrics.* Fingerprint and face — “bimodal” means two modes.

    *Step 2 — separate the older technology.* The smart card reader of 2015 read the card; it did not verify the person's face.

    *Step 3 — name the system.* BIVAS, introduced for the 2023 general election.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The petition",
  [A petition against the result of a presidential election in Nigeria is first filed at the

    A. High Court of the Federal Capital Territory \\
    B. Court of Appeal, sitting as the Presidential Election Petition Court \\
    C. Supreme Court \\
    D. Federal High Court],
  [
    *Step 1 — recall the exception.* Ordinary election petitions go to tribunals; the presidential petition is the exception.

    *Step 2 — place the exception.* The Court of Appeal sits as the Presidential Election Petition Court, and the Supreme Court hears the appeal.

    *Step 3 — exclude.* The High Court and the Federal High Court have no original jurisdiction over a presidential election.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

#mcq(1, [Nigeria operates which electoral system for the National Assembly?], [proportional representation], [the single transferable vote], [first past the post], [the party list system])

#mcq(2, [INEC was established in], [1998], [1999], [2002], [2010])

#mcq(3, [The Electoral Act 2022 introduced], [the smart card reader], [the Bimodal Voter Accreditation System], [the open ballot], [the indirect primary only])

#mcq(4, [A petition against a gubernatorial election is filed at the], [Supreme Court], [Court of Appeal], [Governorship Election Petitions Tribunal], [State High Court])

#answer-key-grid(("C", "A", "B", "C"))

#answer-notes((
  ("C", [Single-member constituencies, plurality of votes: first past the post. The presidential election adds the 25 per cent in two-thirds of the states requirement.]),
  ("A", [INEC was established in 1998 and is recognised by the 1999 Constitution. 1999 is the Constitution, not the Commission.]),
  ("B", [BIVAS verifies fingerprint and face. The smart card reader came earlier, in 2015, and read the card only.]),
  ("C", [Governorship petitions go to the Governorship Election Petitions Tribunal; only the presidential petition starts at the Court of Appeal.]),
))

#diagram-fig("diagrams/recap_gov2_ch08.svg",
  "Chapter 8 recap card: the systems, the cycle, INEC and the 2022 reforms.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Elections legitimise a government, recruit leaders, mandate a programme, hold power accountable and manage conflict peacefully. Nigeria uses first past the post in single-member constituencies, with a modified presidential rule of 25 per cent in two-thirds of the states and a run-off if no one satisfies it. INEC, established in 1998 and guaranteed by the 1999 Constitution, registers voters and parties, delimits constituencies, educates the voter, accredits observers and announces results; its independence rests on a direct charge on the Consolidated Revenue Fund, security of tenure and appointment through the Council of State and the Senate. The cycle has seven stages — registration, nomination, campaign, accreditation, voting, collation and petition — and each has a classic attack, from ghost names to altered result sheets. An election is free when the voter chooses without fear or payment and fair when the rules apply equally. The Electoral Act 2022 brought BIVAS, electronic transmission, direct primaries and the over-voting review, and the petition goes to the tribunal within 21 days, with judgment within 180 days, and the presidential petition alone starts at the Court of Appeal.
  ]
]

#chapter-checklist("Before you leave Chapter 8", (
  [Give five functions of elections.],
  [Distinguish first past the post from proportional representation, and state Nigeria's presidential requirement.],
  [Give the year INEC was established and its six functions.],
  [Explain the three supports of INEC's independence.],
  [Recite the seven stages of the electoral cycle and one failure at each.],
  [Distinguish a free election from a fair one.],
  [Name four changes made by the Electoral Act 2022 and state where a petition is filed.],
))

#concept-box("The volume, in one paragraph")[
  You began with the village republic, the emirate and the Yoruba chieftaincy, and you end with the
  BIVAS and the election petition. Everything between is the story of how a set of very different
  societies was assembled into one state, how that state was ruled by soldiers and civilians, and how
  it now tries to make government accountable through a ballot. The eight chapters are one argument:
  that Nigeria's constitution is a bargain between units that did not want to be dominated, and that
  every institution in the book — the lists, the states, the army, the civil service, the foreign
  service, the commission — exists to hold that bargain together.
]

#include "drill_ch08.typ"
