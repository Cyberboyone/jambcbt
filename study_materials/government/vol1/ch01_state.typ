#import "template.typ": *

#current-chapter.update("Chapter 1: The Study of Government")

#pagebreak()

#chapter-opener(
  1,
  "The Study of Government",
  subtitle: "The State and Its Four Elements, the Forms of Government, the Ideologies, the Constitution and Constitutionalism, Sovereignty and Legitimacy",
  syllabus-ref: "Part I • Meaning and Scope",
  utme-weight: "4 Qs a year",
  running: "The Study of Government",
)

#focus-radar(
  objectives: (
    "Define government and distinguish it from the state, the nation and society.",
    "Name the four elements of the state and say what each one excludes.",
    "Classify any regime by who rules and by what limits the ruler.",
    "Define the political ideologies the syllabus names, and place each on the left–right spectrum.",
    "State the rule of law, separation of powers and checks and balances, and say how they differ.",
    "Distinguish legal, political and popular sovereignty, and explain legitimacy and mandate.",
  ),
  hotspots: (
    "“The four elements of the state are …” — population, territory, sovereignty and government. The option that names *the constitution* or *the army* is the trap; both are parts of government, not elements of the state.",
    "“A state differs from a nation because …” — a state is a legal and territorial unit; a nation is a people who share a culture and a history. Nigeria is a state of many nations.",
    "“Which is NOT a feature of a written constitution?” — being *rigid*. Written and rigid are separate tests; Nigeria's is written and rigid, Britain's is unwritten and flexible, and either can be the other way round.",
    "“Sovereignty in a federation is divided between …” — never. Sovereignty is indivisible; what is divided is the *exercise* of governmental powers, and the constitution says who exercises what.",
    "“A government that loses an election and hands over power has demonstrated …” — legitimacy. The word the paper wants is legitimacy, not popularity and not sovereignty.",
  ),
  trap-summary: "Three slips. (1) Using *state*, *nation*, *society* and *government* as if they were synonyms — the paper builds one option for each confusion. (2) Calling a constitution rigid merely because it is written. (3) Saying sovereignty is shared in a federation: the powers are shared, the sovereignty is not.",
)

// ============================================================================
== 1.1 What Government Is, and Why It Is Studied

Government is the institution, or the set of institutions, through which a state is
ruled. It makes the laws, carries them out, settles the disputes they create and
collects the money that pays for all three. In that sentence are the three organs the
whole subject turns on — the legislature, the executive and the judiciary — and the
reason Government is studied as a separate discipline rather than as a chapter of
history or of law.

The word is used in three senses, and the paper trades on all three. *Government* can
mean the *institution* (the machinery of rule, which outlives any set of office-holders);
it can mean the *group of people* who hold office at a particular time (the government
of the day); and it can mean the *activity* of governing. When a question asks whether
“the government” has changed after an election, it is using the second sense; when it
asks what “the government” does to a bill, it is using the first.

#rule-box("Why the subject is studied — the four answers the examiner accepts")[
  + *To understand power.* Who may command, on what authority, and where the command stops.
  + *To understand order.* How a society settles disputes without private violence, and why the courts matter to everybody who never enters one.
  + *To understand the citizen.* What the state may claim from a person, and what the person may claim from the state.
  + *To understand change.* How power is transferred, why some transfers are peaceful, and what makes a coup or a stolen election possible.
]

#diagram-fig("diagrams/gov_ch01_state.svg",
  "The four elements of the state. Government is one of them, not the whole: a people, a territory and a sovereign authority are the other three.", width: 100%)

== 1.2 The State, the Nation, the Society and the Government

The four words are used interchangeably in ordinary speech and never in this paper.

#concept-box("Four words, four meanings")[
  *The state* is a community of people occupying a defined territory, under a government, and independent of external control. It is a legal and political unit, recognised by other states.

  *The nation* is a people who share a history, a culture, a language or a sense of belonging. A nation need not have a territory of its own, and a state may contain many nations — Nigeria is a state of more than two hundred and fifty ethnic groups.

  *Society* is the whole web of relationships among people: families, markets, churches, mosques, clubs, unions. Society is older than the state and wider than the government.

  *Government* is the machinery that exercises the state's authority. It can change without the state changing: Nigeria has had a parliamentary and a presidential government, and civilian and military governments, while remaining one state.
]

The *nation-state* is the case where the two coincide — a state whose borders roughly
contain one nation. Japan and Iceland are the usual examples. Nigeria is the opposite
case, and the paper uses it deliberately: a state of many nations, held together by a
constitution that shares power between the centre and the units.

#rule-box("The four elements of the state")[
  + *Population.* A state needs people, though no minimum is fixed. A territory with no inhabitants is a claim, not a state.
  + *Territory.* A defined land area with recognised borders, including territorial waters and airspace. A state without a territory is a government in exile.
  + *Sovereignty.* Supreme authority internally and independence externally: no other state may command it.
  + *Government.* The machinery that exercises authority. A state without a government is in anarchy — but the government can change without the state dissolving.
]

#trap-box("What is *not* an element of the state")[
  The paper offers *the constitution*, *the army*, *the flag* and *recognition by the United
  Nations* as distractors. None is an element: the constitution is part of the government's
  machinery, the army is an instrument of it, the flag is a symbol, and recognition is
  evidence that other states accept the four elements — not a fifth element.
]

#worked-example(
  1,
  "Which of these is not an element of the state?",
  [Which of the following is *not* an element of the state?

    A. Population \\
    B. Territory \\
    C. Constitution \\
    D. Sovereignty],
  [
    *Step 1 — recall the four.* Population, territory, sovereignty and government.

    *Step 2 — test each option.* Population is the first element; territory is the second; sovereignty is the third. A constitution is not among them.

    *Step 3 — say why the constitution fails the test.* A state can exist without a written constitution — Britain has none in the codified sense — so a constitution cannot be a condition of statehood. It is part of the machinery of government, which is the fourth element, not a fifth one.

    *Check.* If the constitution were an element, Britain would not be a state. The answer is *C*.
  ],
  tier: "FOUNDATION",
)

== 1.3 The Forms of Government

A form of government is a description of *who rules* and *how far the ruler may go*. The
two questions are separate, which is why a monarchy can be democratic (Britain) and a
republic can be a dictatorship (many states that call themselves republics).

#diagram-fig("diagrams/gov_ch01_forms.svg",
  "Forms of government on one axis: the further right, the more concentrated the power and the fewer the limits on it.", width: 100%)

#table(
  columns: (1.15fr, 1.5fr, 2.15fr),
  inset: 4.4pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Form],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Who rules],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The feature the paper tests],
  ),
  [*Democracy*], [the people, directly or through representatives], [free and fair elections, majority rule, minority rights, the rule of law],
  [*Monarchy*], [one hereditary ruler], [absolute or constitutional: in the constitutional form the monarch reigns but does not rule],
  [*Oligarchy*], [a small group — the wealthy, the military, a clan], [rule by the few; aristocracy is its “best few” version],
  [*Dictatorship*], [one person or one party, unrestrained], [power taken, not granted; no free election; no independent court],
  [*Republic*], [an elected or nominated head, not a monarch], [a way of choosing the head, not a degree of freedom — a republic can be free or unfree],
  [*Theocracy*], [religious authority], [law derived from a sacred text; the priest and the judge are the same office],
)

#shortcut-box("One question sorts almost every form question")[
  + *Who rules?* One, few or many — that gives monarchy or dictatorship, oligarchy, and democracy.
  + *How did they get there?* Heredity (monarchy), election (democracy, republic), force (dictatorship), wealth or birth (oligarchy).
  + *What limits them?* A constitution, an independent court, a free press and a real opposition. Where all four are absent, the label does not save the regime.
  + *Is the head a monarch?* If not, it is a republic — whatever else it is.
]

#worked-example(
  2,
  "Britain is a monarchy and a democracy",
  [Britain is best described as

    A. an absolute monarchy \\
    B. a constitutional monarchy and a parliamentary democracy \\
    C. a republic with a ceremonial president \\
    D. an oligarchy of the House of Lords],
  [
    *Step 1 — separate the two questions.* Who is the head of state, and who holds the power to govern?

    *Step 2 — answer each.* The head of state is a hereditary monarch, so the form is monarchical. The power to govern is held by a government drawn from an elected parliament and answerable to it, so the system is a parliamentary democracy.

    *Step 3 — eliminate.* An absolute monarchy would mean the monarch governs; she does not. A republic has no monarch. An oligarchy would mean the Lords governed; the Lords have delaying power at most.

    *Check.* Britain's monarch opens parliament and signs bills; the Prime Minister governs. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

== 1.4 The Political Ideologies

An ideology is a set of beliefs about how society should be organised, and in particular
about who should own the means of production and how much the state should do. The
syllabus names five, and the paper asks for the definition and the placement.

#diagram-fig("diagrams/gov_ch01_ideologies.svg",
  "The ideologies on one axis. The test is always ownership and the role of the state, never the label a party gives itself.", width: 100%)

#concept-box("The five ideologies, in one line each")[
  + *Capitalism* — private ownership of the means of production, profit as the motive, the market as the allocator, and a state that protects property and enforces contracts.
  + *Socialism* — public or collective ownership of the key means of production, planning rather than the market for the commanding heights, and equality as the goal.
  + *Communism* — the Marxist end-point: the abolition of private property and of class, with the state eventually withering away. In practice, one-party rule and a command economy.
  + *Feudalism* — land is the source of power and status, held by a lord in return for service, and worked by a tied peasantry. It is a pre-industrial system, not a modern programme.
  + *Fascism* — the nation and the state above the individual, one leader, one party, and private property subordinated to the national purpose. It is on the right in its economics and totalitarian in its politics.
]

Welfarism is sometimes added as a sixth: a market economy with a state that guarantees
health, education and a minimum income. It is not a separate ownership system — it is
capitalism with a safety net — and the paper tests exactly that distinction.

#trap-box("Where the paper hides the answer")[
  *“A system in which the state owns the major means of production but allows small private
  business”* is socialism, not communism. *“A system in which the means of production are
  privately owned and the state provides welfare”* is welfarism, not socialism. The
  dividing line is ownership of the *major* means of production.
]

#worked-example(
  3,
  "Nigeria's economy under the 1999 Constitution",
  [Nigeria's economic system is best described as

    A. purely socialist, because the state owns the oil \\
    B. a mixed economy, with private ownership and state regulation \\
    C. communist, because land is vested in the state \\
    D. feudal, because of the traditional rulers],
  [
    *Step 1 — check ownership.* Private firms own most production; the state owns oil, refineries and infrastructure and regulates the rest.

    *Step 2 — check the constitution.* Chapter II sets out state objectives (shelter, food, employment), and Chapter IV protects private property — section 43 guarantees the right to own property. Both exist at once.

    *Step 3 — name the system.* Ownership by both sectors, with the state regulating, is a mixed economy.

    *Check.* If Nigeria were socialist, private property would not be a constitutional right. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

== 1.5 Constitutionalism, the Rule of Law and the Limits on Power

A constitution is the body of rules by which a state is governed; constitutionalism is the
*doctrine* that the government itself must obey those rules. A state can have a
constitution without constitutionalism — the paper makes this point in a dozen ways, and
it is the difference between a document and a limit.

#rule-box("The rule of law, in Dicey's three parts")[
  + *Supremacy of the law.* No one is punished except for a breach of the law established in the ordinary courts; there is no punishment by executive decree.
  + *Equality before the law.* Every person, including every official, is subject to the same ordinary law and the same ordinary courts.
  + *The constitution is the result of the ordinary law.* Rights are not a gift from the state; they are secured by the decisions of courts in ordinary cases.
]

Separation of powers divides the work: the legislature makes law, the executive carries it
out, the judiciary settles disputes about it. Checks and balances police the division: each
organ has a power that can stop another. Chapter 3 takes both apart with the Nigerian
institutions attached; here the point is the distinction, because the paper asks for it
directly.

#table(
  columns: (1.5fr, 2.2fr, 2.2fr),
  inset: 4.4pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Doctrine],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Nigerian example],
  ),
  [*Rule of law*], [binds the government to the law], [a minister can be sued in the ordinary courts; section 36 guarantees fair hearing],
  [*Separation of powers*], [divides the functions between three organs], [sections 4, 5 and 6 vest legislative, executive and judicial power respectively],
  [*Checks and balances*], [lets each organ restrain another], [the President vetoes a bill; the National Assembly can override with two-thirds; the courts can strike down an unconstitutional act],
  [*Independence of the judiciary*], [keeps the referee outside the players], [security of tenure and salaries charged to the Consolidated Revenue Fund],
)

#worked-example(
  4,
  "The doctrine that the ruler is also subject to the law",
  [The principle that both the government and the governed are subject to the same law is called

    A. sovereignty \\
    B. the rule of law \\
    C. separation of powers \\
    D. federalism],
  [
    *Step 1 — translate the stem.* The key phrase is “the same law”, applied to ruler and ruled alike.

    *Step 2 — test each option.* Sovereignty is supreme authority, not a limit on it. Separation of powers divides functions between organs. Federalism divides territory and powers between levels of government.

    *Step 3 — name it.* Equality before the law, and the subordination of officials to ordinary law and ordinary courts, is the rule of law.

    *Check.* Ask which option would be violated if a governor ignored a court order: the rule of law. The answer is *B*.
  ],
  tier: "JAMB CHALLENGE",
)

== 1.6 Sovereignty, Legitimacy and the Mandate

#concept-box("Three kinds of sovereignty, and the one that is indivisible")[
  *Legal sovereignty* is the authority to make the final law within a territory — in Nigeria, the Constitution itself, and behind it the people who adopted it.

  *Political sovereignty* is the real capacity to command obedience: the party in power, the army, the oil revenue, the street. A government can hold legal sovereignty and lose political sovereignty, which is what a coup is.

  *Popular sovereignty* is the doctrine that all authority comes from the people. It is the premise of every election, and of section 14 of the Constitution, which says sovereignty belongs to the people.

  *External sovereignty* is independence from other states: no foreign power may command Nigeria. In a federation, the *exercise* of power is divided between the federation and the states, but sovereignty itself is not divided — it stays with the people of the federation as a whole.
]

*Legitimacy* is the acceptance by the governed that a government has the right to rule.
It is not the same as legality: a government can be legal and illegitimate (a rigged
election produces a lawful government that nobody accepts), or illegal and legitimate
(a resistance movement). *Mandate* is the authority a government claims from its election
victory — the programme it says the voters endorsed.

#trap-box("Sovereignty questions, and the answer they want")[
  *“Sovereignty is shared in a federation”* — false. Powers are shared; sovereignty is
  indivisible. *“The people are sovereign”* — true under the Constitution, and the paper
  expects section 14. *“A state that obeys another state has lost sovereignty”* — true,
  and it is why a protectorate is not fully a state. *“Legitimacy means legality”* — false,
  and it is the commonest wrong option in the section.
]

#worked-example(
  5,
  "Legal, or legitimate?",
  [A government takes power by force and, four years later, most citizens accept that it has the right to govern. Which description now fits best?

    A. Legal and legitimate \\
    B. Illegal but legitimate \\
    C. Legal but illegitimate \\
    D. Neither legal nor legitimate],
  [
    *Step 1 — separate the two tests.* Legality asks how the government came to power; legitimacy asks whether the governed accept that it has the right to rule.

    *Step 2 — apply the first test.* It came by force, outside the rules the constitution prescribes, so it is illegal in origin. Force does not become law because it succeeds.

    *Step 3 — apply the second test.* Acceptance by most citizens, shown over time and in practice, is exactly what legitimacy means. The origin does not change, but the acceptance is real.

    *Check.* If the answer were *A*, acceptance would not matter, and no revolutionary government could ever become legitimate — yet many have. If it were *C*, legality would be doing the work that acceptance does. The answer is *B*.
  ],
  tier: "UTME STANDARD",
)

== 1.7 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [A state is distinguished from a nation by the fact that a state], [has a common language and culture], [has a defined territory and sovereignty], [shares a common history], [has a single ethnic group])

#mcq(2, [Which of the following is an element of the state?], [The constitution], [The flag], [Territory], [Recognition by the United Nations])

#mcq(3, [A system in which the means of production are owned by the state and distribution is planned is called], [capitalism], [socialism], [welfarism], [feudalism])

#mcq(4, [The principle that no person may be punished except for a breach of the law established in the ordinary courts is part of the], [doctrine of separation of powers], [rule of law], [theory of sovereignty], [practice of federalism])

#answer-key-grid(("B", "C", "B", "B"))

#answer-notes((
  ("B", [A defined territory and sovereignty are elements of the state; language, culture and history describe a nation, and a single ethnic group is not required of a state — Nigeria has hundreds.]),
  ("C", [Territory is one of the four elements. A constitution and a flag are part of the machinery or symbolism of government, and recognition by other states is evidence, not an element.]),
  ("B", [Socialism is public ownership of the key means of production with planning. Capitalism is private ownership, welfarism keeps private ownership and adds welfare, and feudalism is a land-based pre-industrial order.]),
  ("B", [That is the first limb of Dicey's rule of law. Separation of powers divides functions between organs, sovereignty is supreme authority, and federalism divides power between levels of government.]),
))

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: the state, its forms, its ideologies and its limits.", width: 78%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A state is a people on a territory under a sovereign government, and government is only one of those four elements — which is why a change of government does not dissolve the state, and why a constitution is not an element at all. A nation is a people with a shared history, so Nigeria is a state of many nations and a society wider than its government. Forms of government answer who rules and what limits the ruler: democracy, monarchy, oligarchy and dictatorship, with republic describing how the head is chosen rather than how free the regime is. Ideologies answer who owns: capitalism privately, socialism publicly, communism not at all, feudalism through land, fascism through the nation, welfarism through a market with a safety net. A constitution is the rule about rules, and constitutionalism is the habit of obeying it — enforced by the rule of law, divided by separation of powers and policed by checks and balances. Sovereignty is supreme and indivisible; legitimacy is the acceptance that makes obedience willing; and a mandate is what an election lets a government claim.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Define the state and name its four elements without looking.],
  [Distinguish state, nation, society and government in one sentence each.],
  [Place a monarchy, a republic and a dictatorship on the “who rules, what limits” axis.],
  [Define capitalism, socialism, communism, feudalism and fascism, and say what separates socialism from welfarism.],
  [State the rule of law in three parts, and say how it differs from separation of powers.],
  [Explain why sovereignty is not divided in a federation, even though powers are.],
))

#concept-box("Carry this into Chapter 2")[
  The state is defined by its constitution as much as by its territory, and the next
  chapter takes the constitution apart: what it is, what it does, and the six that Nigeria
  has had since 1922. Every question about federalism, about the organs and about rights
  is a question about something the constitution says, so learn its shape once and the
  rest of the book hangs on it.
]

#include "drill_ch01.typ"
