#import "template.typ": *

#current-chapter.update("Chapter 2: Constitutions and Constitutional Development")

#pagebreak()

#chapter-opener(
  2,
  "Constitutions and Constitutional Development",
  subtitle: "What a Constitution Is and Does, Written and Unwritten, Rigid and Flexible, the Nigerian Chain from Clifford to 1999, Federalism and the Three Legislative Lists",
  syllabus-ref: "Part II • Constitutional Development",
  utme-weight: "3 Qs a year",
  running: "Constitution and Development",
)

#focus-radar(
  objectives: (
    "Define a constitution and state its functions.",
    "Classify any constitution as written or unwritten, rigid or flexible — and explain why the two tests are separate.",
    "Name the constitution that introduced each change in Nigeria: elective principle, regionalism, ministerial government, federalism, republicanism and the executive presidency.",
    "State the main features of the 1999 Constitution.",
    "Place any subject on the exclusive, concurrent or residual list, and explain what happens when federal and state laws conflict.",
    "Explain revenue allocation, the derivation principle and federal character.",
  ),
  hotspots: (
    "“A constitution that can be amended by an ordinary Act of Parliament is …” — flexible. The option *unwritten* is the trap: Britain's is both, but a written constitution can also be flexible.",
    "“The constitution that first introduced the elective principle into Nigeria was …” — the Clifford Constitution of 1922. Richards 1946 created the regions; Macpherson 1951 brought ministers; Lyttleton 1954 made it federal.",
    "“Which constitution created the office of an executive President?” — 1979. The 1963 Republican Constitution replaced the Queen with a ceremonial President, and that is the option written to catch you.",
    "“Residual matters are those on which …” — only the states may legislate. Anything the paper calls *left over* is residual; anything *shared* is concurrent.",
    "“Where a state law conflicts with a federal law on the concurrent list …” — the federal law prevails, by the doctrine of covering the field.",
  ),
  trap-summary: "Three slips. (1) Treating written and rigid as one idea. (2) Confusing the 1963 Republican Constitution with the 1979 presidential one — the first replaced the Queen, the second created an executive President. (3) Calling the 1999 Constitution *unitary* because the federal government is strong: it is federal, and the exclusive list proves it.",
)

// ============================================================================
== 2.1 What a Constitution Is, and What It Does

A constitution is the body of fundamental rules, written or unwritten, by which a state
is governed: it creates the organs of government, distributes power between them, states
the rights of citizens and sets out how it may itself be changed. It is the rule about
rules — the reason a law passed by the National Assembly can still be void, and the
reason a President's order can be set aside by a court.

#rule-box("The five functions every answer should mention")[
  + *It creates the organs.* Sections 4, 5 and 6 of the 1999 Constitution create the legislature, the executive and the judiciary, and nothing exists as an organ of state without such a provision.
  + *It distributes power.* Between the three arms, and between the federation and the states. The three legislative lists in section 4 are the second distribution.
  + *It limits power.* Fundamental rights in Chapter IV, the rule of law, and the requirement that public officers act within the law.
  + *It states the rights of citizens.* Who belongs, what they may claim, and how those claims are enforced.
  + *It provides for its own amendment.* A constitution that cannot change breaks; one that changes too easily protects nothing.
]

#concept-box("Constitution and constitutionalism are not the same thing")[
  A *constitution* is the document or body of rules. *Constitutionalism* is the practice of
  governing within those rules.

  Nigeria under military rule had a constitution — the 1979 Constitution was suspended
  rather than repealed, and decrees were issued under a different legal order — but not
  constitutionalism, because the government was not bound by its own rules. The paper uses
  the pair to test whether you know that a document alone limits nothing.
]

== 2.2 Written and Unwritten, Rigid and Flexible

Two tests are applied to every constitution, and they are independent of each other.

#diagram-fig("diagrams/gov_ch02_types.svg",
  "Two tests, four kinds. A constitution can be written and flexible, or unwritten and rigid — the tests do not imply one another.", width: 100%)

#table(
  columns: (1.15fr, 1.8fr, 1.5fr, 1.55fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Kind],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Merits],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Demerits],
  ),
  [*Written*], [one codified document, dated], [clear, certain, easy to teach and to cite], [rigid in practice; gaps and silences],
  [*Unwritten*], [statutes, conventions and cases], [flexible and adaptable], [uncertain; hard to know what the rule is],
  [*Rigid*], [special majority or referendum to amend], [protects rights from a temporary majority], [can freeze a mistake; slow in a crisis],
  [*Flexible*], [ordinary legislation amends it], [keeps pace with change], [rights are only as safe as the government of the day],
)

The Nigerian Constitution is written and rigid. Section 9 requires a two-thirds majority
of each House of the National Assembly and the approval of two-thirds of the state Houses
of Assembly to amend the Constitution — and for the most sensitive provisions, the
approval of every state. That is the definition of rigidity, and it is why
constitutional amendment is a national project rather than a bill.

#trap-box("The two false shortcuts")[
  *“Written means rigid.”* False in principle, and the paper knows it. A written constitution
  can be amended by ordinary law if it says so. *“Federal means the states are sovereign.”*
  False in Nigeria: the Constitution is supreme, and the federal government has the larger
  exclusive list. Federalism, unitarism and confederation are about how power is *shared*,
  not about who is the ultimate master.
]

#worked-example(
  1,
  "Classifying a constitution on both tests",
  [A country has a single constitutional document that may be amended by a simple majority in its parliament. Its constitution is

    A. written and rigid \\
    B. written and flexible \\
    C. unwritten and flexible \\
    D. unwritten and rigid],
  [
    *Step 1 — apply the first test.* Is there one codified document? Yes. So the constitution is written.

    *Step 2 — apply the second test.* What does amendment require? A simple majority, which is ordinary legislation. So it is flexible.

    *Step 3 — combine.* Written and flexible — a real combination, and one the paper uses to catch candidates who treat the two tests as one.

    *Check.* The two tests are answered separately, so the answer must name one word from each column: *B*.
  ],
  tier: "FOUNDATION",
)

== 2.3 From Indirect Rule to Independence

Before 1900 the area that became Nigeria held a variety of polities: the Sokoto Caliphate
and its emirates in the north, the Oyo Empire and the Yoruba city-states in the south-west,
the Benin Kingdom, the Igbo acephalous (headless) communities of the south-east, and the
Niger Delta trading states. They were governed differently — by an emir and a written
system of Islamic law in the north, by an Oba and a council of chiefs in the west, and by
age grades, title societies and councils of elders where there was no central ruler.

#concept-box("Indirect rule, and why it left the country as it found it")[
  *Indirect rule*, associated with Lord Lugard, governed through existing traditional rulers:
  the British officer advised, and the emir or chief administered, collected tax and kept
  order. It was cheap and it preserved local legitimacy — and it also preserved the
  differences between north and south, because each was governed through a different
  structure at a different pace.

  In the north it worked with the emirate system and protected it. In the east, where there
  were no chiefs of the required kind, the British *created* warrant chiefs, and the
  resentment that followed produced the Aba Women's Riots of 1929.
]

Nationalism grew out of the small educated elite the colonial economy produced: Herbert
Macaulay's Nigerian National Democratic Party (1923), the Nigerian Youth Movement (1934),
Nnamdi Azikiwe's National Council of Nigeria and the Cameroons (1944), Obafemi Awolowo's
Action Group (1951) and Ahmadu Bello's Northern People's Congress (1951). Each constitution
below is a step in the transfer of power to those parties.

#diagram-fig("diagrams/gov_ch02_timeline.svg",
  "Six constitutions in thirty-two years. Each widened the franchise, or moved power from the Governor to elected Nigerians, or moved it between the centre and the regions.", width: 100%)

#table(
  columns: (0.75fr, 1.45fr, 2.5fr),
  inset: 4.2pt,
  align: (center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Constitution],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The one change it made],
  ),
  [*1922*], [Clifford], [introduced the elective principle: four elected members, one for Lagos and three for Calabar, in a Legislative Council of 46],
  [*1946*], [Richards], [created the regions — north, west and east, with Cameroons attached to the east — and gave each a House of Assembly; the first regionalism],
  [*1951*], [Macpherson], [brought Nigerians into the executive as ministers with portfolio, and enlarged the regional legislatures],
  [*1954*], [Lyttleton], [made Nigeria a federation of three regions plus the Federal Territory of Lagos, with a federal Prime Minister and regional premiers],
  [*1960*], [Independence], [the Westminster model: a Prime Minister, a Cabinet drawn from Parliament, and the Queen represented by a Governor-General],
  [*1963*], [Republican], [replaced the Queen with a Nigerian President — ceremonial, chosen by the legislature — and renamed the country a republic],
  [*1979*], [Presidential], [created an executive President elected by the people, a bicameral National Assembly, and the Federal Capital Territory at Abuja],
  [*1999*], [Present], [restored the 1979 model with amendments: 36 states, 774 local government areas, a stronger federal character requirement],
)

#shortcut-box("One word per constitution")[
  + *1922 Clifford* — *elective* (the first vote).
  + *1946 Richards* — *regional* (the first regions).
  + *1951 Macpherson* — *ministerial* (Nigerians in government).
  + *1954 Lyttleton* — *federal* (the first true federation).
  + *1960 Independence* — *Westminster* (a Prime Minister).
  + *1963 Republican* — *ceremonial President* (no Queen).
  + *1979 Presidential* — *executive President* (elected by the people).
  + *1999* — *restoration* (the 1979 model, amended).
]

#worked-example(
  2,
  "Which constitution first brought ministers in?",
  [Nigerians first became ministers of government with responsibility for departments under the

    A. Clifford Constitution of 1922 \\
    B. Richards Constitution of 1946 \\
    C. Macpherson Constitution of 1951 \\
    D. Lyttleton Constitution of 1954],
  [
    *Step 1 — separate the three innovations.* 1922 gave the vote; 1946 gave the regions; 1951 gave Nigerians portfolios.

    *Step 2 — check what each word means.* A minister is a member of the executive with charge of a department. Under Clifford and Richards, Nigerians sat in legislative councils but the executive was the Governor and his officials.

    *Step 3 — choose.* The Macpherson Constitution created a Council of Ministers with Nigerian members holding portfolios, answerable to a legislature that was itself partly elected.

    *Check.* “Minister” is the keyword; the constitution that names ministers is 1951. The answer is *C*.
  ],
  tier: "UTME STANDARD",
)

== 2.4 The 1999 Constitution, and What It Contains

The Constitution now in force was adopted in 1999 and has been amended several times. Its
architecture is the 1979 model: a presidential executive, a bicameral legislature, an
independent judiciary and a federal division of powers.

#rule-box("The features the paper asks for")[
  + *Federal.* 36 states and the Federal Capital Territory, with powers divided by the three legislative lists.
  + *Presidential.* An executive President elected for four years, renewable once, who is both head of state and head of government; a Vice-President on the same ticket.
  + *Bicameral legislature.* A Senate of 109 members (three per state plus one for the FCT) and a House of Representatives of 360.
  + *Independent judiciary.* Section 6 vests judicial power in the courts, with security of tenure and salaries charged to the Consolidated Revenue Fund.
  + *Fundamental rights.* Chapter IV: life, dignity, liberty, fair hearing, privacy, expression, assembly, movement, property and religion.
  + *Local government.* Section 7 guarantees a system of democratically elected local government councils; there are 774.
  + *Federal character.* Section 14(3) requires appointments to reflect the diversity of the federation.
  + *Supremacy.* Section 1: the Constitution is supreme, and any law inconsistent with it is void to the extent of the inconsistency.
]

#concept-box("The chapters the paper quotes")[
  *Chapter I* — the federation and its powers. *Chapter II* — fundamental objectives and
  directive principles (a promise, not a right the courts enforce). *Chapter IV* — fundamental
  rights (enforceable). *Chapter V* — the legislature. *Chapter VI* — the executive. *Chapter
  VII* — the judicature. *Chapter VIII* — the federal capital territory and general provisions.

  A question that says “a person may apply to the High Court for redress” is quoting section
  46, and the right it protects is in Chapter IV.
]

#worked-example(
  3,
  "Which section answers which question",
  [Which section of the 1999 Constitution vests executive power in the President?

    A. Section 4 \\
    B. Section 5 \\
    C. Section 6 \\
    D. Section 7],
  [
    *Step 1 — recall the run of sections.* Sections 4, 5 and 6 vest the three powers in order: legislative, executive, judicial.

    *Step 2 — count to the second.* Section 4 is the National Assembly, section 5 is the President, section 6 is the courts.

    *Step 3 — dismiss the last option.* Section 7 is the local government guarantee, which is why it is quoted in every question about the third tier, not about the executive.

    *Check.* A useful habit: 4, 5, 6 is legislature, executive, judiciary — three sections in the order the organs are usually taught. The answer is *B*.
  ],
  tier: "FOUNDATION",
)

== 2.5 Federalism and the Three Legislative Lists

Federalism is a system in which governmental power is divided between a central government
and the governments of the constituent units, each level deriving its authority from the
constitution rather than from the other. Nigeria has been federal since 1954, and the
federal principle survives everything that has been done to it since.

#diagram-fig("diagrams/gov_ch02_lists.svg",
  "The three lists. The exclusive list belongs to the federation alone, the concurrent list to both, and the residual list to the states alone.", width: 100%)

#rule-box("The three lists, and the rule that decides a conflict")[
  + *Exclusive list.* Matters on which only the National Assembly may legislate: defence, foreign affairs, currency, citizenship, customs, police, mines and minerals, and the rest of the items in Part I of the Second Schedule.
  + *Concurrent list.* Matters on which both the National Assembly and a state House of Assembly may legislate: education, health, agriculture, electricity, water, statistics and industrial development.
  + *Residual list.* Matters not mentioned on either list, on which only the states may legislate: chieftaincy, local government, markets, state lands and customary matters.
  + *The conflict rule.* Where a state law is inconsistent with a federal law on the concurrent list, the federal law prevails and the state law is void to the extent of the inconsistency — the doctrine of covering the field.
]

The reasons for federalism in Nigeria are the ones the paper asks for: the size of the
country, the ethnic and cultural diversity, the fear of one group dominating the others,
the desire to keep government close to the people, and — historically — the fact that
federalism was the only settlement the three regions would accept in 1954.

#table(
  columns: (1.6fr, 2.4fr, 1.6fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[The Nigerian answer],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Why it is tested],
  ),
  [*Revenue allocation*], [the Federation Account is shared by the Revenue Mobilisation, Allocation and Fiscal Commission; the 13% derivation principle applies to mineral revenue], [the formula is quoted with the question],
  [*State creation*], [36 states, created in stages from 1967 to 1996; the FCT carved out in 1976], [the dates are in Appendix D],
  [*Local government*], [774 areas, guaranteed by section 7, funded partly from the Federation Account through the states], [the number itself is a question],
  [*Federal character*], [section 14(3): appointments must reflect the diversity of the country], [usually asked as “the purpose of the Federal Character Commission is …”],
)

#worked-example(
  4,
  "A subject on the concurrent list",
  [Which of the following is a matter on the concurrent list?

    A. Defence \\
    B. Currency and coinage \\
    C. Education \\
    D. Chieftaincy],
  [
    *Step 1 — recall the character of each list.* Exclusive items are national by nature; residual items are local by nature; concurrent items are shared because both levels have a legitimate interest.

    *Step 2 — classify.* Defence and currency are exclusive: a country cannot have two armies or two currencies. Chieftaincy is residual: it is a matter for the state, and the Constitution says so.

    *Step 3 — choose the shared one.* Education is on the concurrent list: the federal government sets policy, funds universities and runs federal colleges, while states run their own schools and pay their teachers.

    *Check.* Ask whether both a federal ministry and a state ministry exist for the subject. The answer is *C*.
  ],
  tier: "JAMB CHALLENGE",
)

== 2.6 Military Rule, and What It Did to the Constitution

Between January 1966 and May 1999 Nigeria was under military government for all but four
years. Military rule is not a form of constitution but a suspension of one: the
Constitution is displaced by decrees, the courts lose the power to review them, and the
federal principle is administered rather than negotiated.

#table(
  columns: (1.15fr, 1.55fr, 2.7fr),
  inset: 4.2pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Regime],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Years],
    text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[What it changed, or is remembered for],
  ),
  [*Aguiyi-Ironsi*], [Jan–Jul 1966], [unitary decree (Decree No. 34); abolished the regions; killed in the July counter-coup],
  [*Gowon*], [1966–1975], [created 12 states (1967) and a federal system of states; “no victor, no vanquished”; the civil war; the 1970s oil boom],
  [*Murtala / Obasanjo*], [1975–1979], [created 19 states (1976) and the FCT at Abuja; local government reform creating 301 councils; the 1979 Constitution; handover],
  [*Shagari*], [1979–1983], [the Second Republic under the presidential Constitution; a civilian interlude],
  [*Buhari*], [1983–1985], [the December 1983 coup; the war against indiscipline],
  [*Babangida*], [1985–1993], [created 21 states (1987) and 30 (1991); the June 12 1993 election annulled; the 1989 Constitution never implemented],
  [*Abacha*], [1993–1998], [the 1995 draft constitution; state creation to 36 (1996); the transition programme cut short by his death],
  [*Abubakar*], [1998–1999], [the 1999 Constitution; handover to civilian rule on 29 May 1999],
)

#shortcut-box("Three facts that carry the military-rule questions")[
  + *States were created by the military.* 12 in 1967, 19 in 1976, 21 in 1987, 30 in 1991, 36 in 1996. The FCT was carved out in 1976.
  + *Local government was reformed by the military.* The 1976 reform created a uniform system of local government councils — the 301 that have since grown to 774.
  + *The Constitution was suspended, not repealed.* Decrees were superior to the Constitution, and ouster clauses removed the courts' power to review them — the practical meaning of a dictatorship.
]

#worked-example(
  5,
  "The 1963 Constitution in one word",
  [The main constitutional change introduced in 1963 was the

    A. creation of the office of an executive President \\
    B. abolition of the monarchy and the appointment of a Nigerian President \\
    C. introduction of the elective principle \\
    D. creation of the Federal Capital Territory],
  [
    *Step 1 — date the options.* The elective principle is 1922. The Federal Capital Territory is 1976. An executive President is 1979.

    *Step 2 — recall 1963.* Nigeria became a republic: the Queen ceased to be head of state, and the Governor-General was replaced by a Nigerian President chosen by the legislature.

    *Step 3 — distinguish the two presidencies.* The 1963 President was ceremonial and elected by the National Assembly; the 1979 President was executive and elected by the people. Option A describes 1979.

    *Check.* 1963 is the year Nigeria stopped being a monarchy. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [A constitution that can be amended only by a special majority is said to be], [unwritten], [flexible], [rigid], [federal])

#mcq(2, [The constitution that introduced the elective principle into Nigeria was the], [Clifford Constitution of 1922], [Richards Constitution of 1946], [Macpherson Constitution of 1951], [Lyttleton Constitution of 1954])

#mcq(3, [Matters on which only the state governments may legislate are contained in the], [exclusive list], [concurrent list], [residual list], [federal list])

#mcq(4, [Where a state law conflicts with a federal law on a matter in the concurrent list], [the state law prevails], [the federal law prevails], [both laws are void], [the Supreme Court must amend the constitution])

#answer-key-grid(("C", "A", "C", "B"))

#answer-notes((
  ("C", [Rigidity is about the amending procedure, not about whether the rules are written down. A flexible constitution is amended by ordinary legislation, and federality is about the division of powers.]),
  ("A", [The Clifford Constitution of 1922 allowed four elected members into the Legislative Council. Richards created the regions, Macpherson brought in ministers, and Lyttleton made the country federal.]),
  ("C", [Residual matters are those left over — not on the exclusive or concurrent list — and only the states legislate on them. The exclusive list belongs to the federation and the concurrent list to both.]),
  ("B", [The federal law prevails, by the doctrine of covering the field. The state law is void only to the extent of the inconsistency, and the courts do not amend constitutions.]),
))

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the constitution, the Nigerian chain and the lists.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A constitution creates the organs, distributes power between them and between the levels of government, limits what they may do, states the rights of citizens and provides for its own amendment. Two independent tests classify it: written or unwritten, rigid or flexible — and a written constitution may be perfectly flexible. Nigeria's chain runs from the Clifford Constitution of 1922, which introduced the elective principle, through Richards in 1946, which created the regions, Macpherson in 1951, which brought Nigerians in as ministers, and Lyttleton in 1954, which made the country federal, to independence in 1960 and the republic in 1963, in which a Nigerian President replaced the Queen. The 1979 Constitution created the executive presidency and the 1999 Constitution restored that model with thirty-six states, the Federal Capital Territory and 774 local government areas. Federalism divides power by three lists: exclusive to the federation, concurrent to both — with the federal law prevailing — and residual to the states alone. Around all of it sit the federal character principle and the revenue-sharing formula, which are the Nigerian answers to the question of how a divided country holds together.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Define a constitution and name its five functions.],
  [Classify a constitution on both tests, and give one example of each of the four combinations.],
  [Name the one change made by each of the six constitutions from 1922 to 1979.],
  [State five features of the 1999 Constitution.],
  [Place defence, education and chieftaincy on the correct lists, and say what happens when the laws conflict.],
  [Explain the 13 per cent derivation principle and why it is contested.],
))

#concept-box("Carry this into Chapter 3")[
  The Constitution creates three organs and then spends five chapters describing them. The
  next chapter takes each in turn: what the legislature does, how a presidential executive
  differs from a parliamentary one, and why the judiciary's independence is written into
  the salaries as well as the oaths.
]

#include "drill_ch02.typ"
