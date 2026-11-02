#import "template.typ": *

#current-chapter.update("Chapter 4: Federalism in Practice")

#pagebreak()

#chapter-opener(
  4,
  "Federalism in Practice",
  subtitle: "The Three Lists, the Revenue Formula, the Thirty-Six States and the Federal Character",
  syllabus-ref: "Part I • Federalism and the Nigerian Structure",
  utme-weight: "5 Qs a year",
  running: "Federalism in Practice",
)

#focus-radar(
  objectives: (
    "Define federalism and distinguish it from a unitary system and a confederation.",
    "Name the three legislative lists and place a given subject on the right one.",
    "State the rule that resolves a conflict between federal and state law.",
    "Trace the creation of states from 1967 to 1996 and say why states were created.",
    "Explain revenue allocation, the 13 per cent derivation and the federal character principle.",
  ),
  hotspots: (
    "“Police is on which list?” — the exclusive list, because the Nigeria Police Force is a federal institution. The trap puts it on the concurrent list because states also fund police stations.\n",
    "“Where a state law conflicts with a federal law on a concurrent matter …” — the federal law prevails to the extent of the inconsistency. That is section 4(5) of the 1999 Constitution, and it is the single most examined sentence in the chapter.\n",
    "“The number of local government areas in Nigeria is …” — 774. The trap offers 776 or 768; the accepted figure is 774.\n",
    "“The 13 per cent derivation is paid to …” — the states from which the revenue is derived, on the principle that the area that produces the mineral should receive a share.\n",
  ),
  trap-summary: "Three slips. (1) Calling Nigeria a *confederation* — the centre holds the residual power to keep the federation together, and states cannot secede. (2) Saying the residual list belongs to the federal government: residual matters are for the states. (3) Confusing *state creation* with *local government creation*: states are created by the National Assembly with a two-thirds majority of the states, local governments by the state house of assembly.",
)

// ============================================================================
== 4.1 Why Nigeria Is Federal

A *federal* system divides governmental power between a central government and
component units, each of which is supreme in its own sphere, and each of which derives its
authority from the constitution rather than from the other. A *unitary* system concentrates
power at the centre and delegates it to local authorities, which the centre can abolish. A
*confederation* reverses the federal logic: the centre is the creature of the states, and
the states may leave. Nigeria is federal, and the paper tests the difference with one
question: *can the centre abolish the state?* In a federation, no; in a unitary state,
yes; in a confederation, the state can abolish the centre.

Nigeria adopted federalism for four reasons, and the examinable argument is that the
reasons were as much political as administrative. The country is *large and diverse*: over
two hundred and fifty ethnic groups, two major religions and hundreds of languages, and a
single central government would have had to ignore or override that diversity. The
colonial administration had already *governed the north and the south separately*, and the
regions inherited those separate administrations in 1954. The *nationalist bargain* of
1959 was struck between regional parties, each of which wanted a centre strong enough to
hold the country together and weak enough not to dominate the regions. And federalism
offered *administrative efficiency*: services that need a country-wide scale, such as
currency, defence and foreign affairs, could be federal, while services that need local
knowledge, such as markets and primary schools, could be state and local.

#rule-box("The four features the examiner expects")[
  + A *written constitution* that divides power and cannot be altered by the centre alone.
  + At least *two levels of government*, each with its own legislature and executive.
  + A *division of legislative power* into the exclusive, concurrent and residual lists.
  + A *supreme court* with the authority to settle disputes between the levels.
]

== 4.2 The Three Lists

The Constitution divides legislative power by listing subjects. The *exclusive list*
contains the subjects on which only the National Assembly may legislate; the *concurrent
list* contains the subjects on which both the National Assembly and a state house of
assembly may legislate; the *residual list* contains everything not named in the other
two, and it belongs to the states.

#diagram-fig("diagrams/gov2_ch04_federalism.svg",
  "The three legislative lists. The conflict rule on a concurrent matter is the sentence the paper tests most often.", width: 100%)

#table(
  columns: (1.0fr, 1.55fr, 1.6fr, 1.4fr),
  inset: (x: 4.8pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[List],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who legislates],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Examples to quote],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The trap],
  ),
  [Exclusive], [the National Assembly only], [defence, currency, foreign affairs, citizenship, police, weights and measures], [“the states share it”],
  [Concurrent], [both, but federal prevails], [education, health, agriculture, electricity, industrial development], [“the state prevails”],
  [Residual], [the states only], [chieftaincy, local government, land, markets, state roads], [“it belongs to the centre”],
)

#trap-box("The residual list is the state's, and that is the point of federalism")[
  Candidates lose this mark because they reason from importance rather than from the list: *education matters, so it must be federal*. Education is on the concurrent list; the states run primary and secondary schools and the federation runs universities through its own legislation. The residual list is where the states are *sole* legislators — chieftaincy, local government, land in the state and markets — and a question that asks which list gives the states exclusive power is asking for residual.
]

== 4.3 The Federation Changes Shape

The federation of 1954 had three regions, and the regions were unequal: the north was
larger than the west and the east combined. That inequality, and the fear of domination it
produced among the minorities, is the engine of every boundary change since. In 1963 the
Mid-Western Region was carved out of the west, making four regions. In 1967 the military
government abolished the regions and created twelve states, partly to break up the large
regions and partly to weaken the secessionist east. In 1976 seven more states were created,
making nineteen. In 1987 two more were added, and in 1991 nine more, and in 1996 six
more — the last creation — to give the thirty-six states and the Federal Capital Territory
that the 1999 Constitution recognises.

#table(
  columns: (0.7fr, 0.95fr, 2.9fr),
  inset: (x: 5pt, y: 4.3pt),
  align: (center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Number],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What happened, and why],
  ),
  [1954], [3 regions], [the Lyttleton frame: North, West and East, unequal in size],
  [1963], [4 regions], [the Mid-West created out of the west, after minority demands],
  [1967], [12 states], [the regions abolished; the large units broken up],
  [1976], [19 states], [seven more, to bring government closer to the people],
  [1987], [21 states], [two created; the Federal Capital Territory had been carved out in 1976],
  [1991], [30 states], [nine created in one exercise, the largest single creation],
  [1996], [36 states], [six more; the figure the 1999 Constitution carries],
)

#shortcut-box("State creation, in one line each")[
  + Who creates a state? The *National Assembly*, by a two-thirds majority of the states and of each house.
  + Who creates a local government? The *state house of assembly*, with the consent of the local government council.
  + Why create a state? To bring government nearer, to satisfy a minority, and to share the federal revenue among more units.
]

== 4.4 Revenue Allocation

Federation is also a quarrel about money, and Nigeria has fought it since 1946. The
revenue from oil and taxes is pooled in the *Federation Account* and shared by the
*Federation Account Allocation Committee* (FAAC), first vertically between the three tiers
of government, and then horizontally among the states. The principles used to justify a
share have changed over time, and the paper expects three of them: *derivation*, by which
a producing area receives a share of the revenue from its own resource; *population*,
which favours the largest states; and *equality of states*, which favours the smallest. A
fourth, *need* or *internal revenue effort*, rewards a state that raises more of its own
money.

Since 1999 the formula has set 13 per cent of oil revenue on the *derivation* principle,
paid to the oil-producing states, with the balance shared among all the states according
to the statutory formula. The argument for derivation is that the producing area bears the
environmental cost; the argument against it is that mineral wealth belongs to the
federation as a whole.

#table(
  columns: (1.2fr, 2.0fr, 1.75fr),
  inset: (x: 5pt, y: 4.3pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Principle],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The argument for it],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[The objection],
  ),
  [Derivation], [the producing area bears the cost and should share the benefit], [it rewards geography, not effort],
  [Population], [the largest population has the largest need], [it rewards an inflated census],
  [Equality of states], [every state has the same minimum cost of government], [it subsidises the unviable],
  [Need], [the poorest units need the most help], [it rewards a state that does not tax],
)

== 4.5 Federal Character and Local Government

Two devices complete the federal structure. The *federal character* principle, written into
section 14 of the 1999 Constitution, requires that appointments to federal bodies reflect
the diversity of the country, so that no section is excluded from the government. Its
supporters call it a guarantee of inclusion; its critics call it a quota that sacrifices
merit. The paper asks for the definition and for one advantage and one disadvantage, and
both should be given in the same answer.

*Local government* is the third tier. Nigeria has 774 local government areas, created and
supervised by the states but recognised by the Constitution, with functions that include
markets, primary schools' support, local roads, sanitation and refuse. Their money comes
from a statutory share of the Federation Account, from state grants and from their own
rates and fees. The examinable weakness is dependence: a local government that cannot
raise its own revenue and is supervised by the state has little of the autonomy a third
tier is supposed to have.

#concept-box("Federal character, in the form the paper asks for")[
  *Definition:* the constitutional requirement that the composition of federal institutions reflect the ethnic and geographical diversity of Nigeria. *One advantage:* it prevents the exclusion of a section from national institutions and reduces the sense of domination. *One disadvantage:* it can override merit and turn a qualification into a quota. Answer with both, and the mark is complete.
]

== 4.6 Four Worked Questions

#worked-example(
  1,
  "The definition",
  [A system of government in which power is divided between a central government and component units, each supreme in its own sphere, is called

    A. a unitary system \\
    B. a confederation \\
    C. a federal system \\
    D. a parliamentary system],
  [
    *Step 1 — take the test in the definition.* Two levels of government, each supreme in its own sphere, both deriving authority from the constitution.

    *Step 2 — separate the three systems.* A unitary system delegates power from the centre; a confederation is a league of states whose creature the centre is; a federal system divides power and neither level can abolish the other.

    *Step 3 — exclude the fourth.* Parliamentary describes how the executive is chosen, not how power is divided between levels.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Placing a subject on a list",
  [The Nigeria Police Force is a subject on the

    A. residual list \\
    B. concurrent list \\
    C. exclusive list \\
    D. local government list],
  [
    *Step 1 — ask who may legislate.* The police are established by federal law, commanded by an Inspector-General appointed under federal law, and regulated by the Police Act.

    *Step 2 — check the exceptions.* A state may establish its own security outfit under a state law, but the Nigeria Police Force remains a federal institution, which is why police is on the exclusive list.

    *Step 3 — eliminate.* There is no local government list in the Constitution; residual matters are the states'; concurrent matters are shared.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The derivation principle",
  [Thirteen per cent of the revenue from oil is paid to the oil-producing states under the principle of

    A. population \\
    B. equality of states \\
    C. derivation \\
    D. need],
  [
    *Step 1 — translate the word.* Derivation means “the place from which it is derived”: the money follows the source.

    *Step 2 — distinguish the other principles.* Population shares on the census, equality shares equally, need shares according to poverty.

    *Step 3 — attach the figure.* The 13 per cent is the statutory derivative share for the producing states, and the examinable word is derivation, not compensation.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "State creation and the constitution",
  [Which body has the power to create a new state in Nigeria?

    A. The State House of Assembly \\
    B. The National Assembly, with a two-thirds majority of the states \\
    C. The President, by executive order \\
    D. The Supreme Court],
  [
    *Step 1 — locate the power.* Section 8 of the 1999 Constitution sets out the procedure for creating a state.

    *Step 2 — read the procedure.* A request supported by at least two-thirds of the people of the area, then a two-thirds majority in each house of the National Assembly and in the houses of assembly of two-thirds of the states.

    *Step 3 — exclude the decoys.* A state house of assembly creates local governments, not states; the President cannot legislate; the courts interpret, they do not create.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 4.7 Chapter 4 in the Exam Hall — a Two-Minute Set

#mcq(1, [Which of the following is on the exclusive legislative list?], [Education], [Agriculture], [Currency], [Markets])

#mcq(2, [The number of local government areas in Nigeria is], [768], [774], [776], [780])

#mcq(3, [Where a state law is inconsistent with a federal law on a concurrent matter, the state law is], [void in its entirety], [void to the extent of the inconsistency], [supreme], [referred to the state chief judge])

#mcq(4, [The federal character principle is intended to], [ensure that all states are equal in size], [guarantee each state a share of oil revenue], [reflect the diversity of Nigeria in federal appointments], [abolish the quota system])

#answer-key-grid(("C", "B", "B", "C"))

#answer-notes((
  ("C", [Currency and coinage are federal, along with defence, foreign affairs, police and citizenship. Education and agriculture are concurrent; markets are residual.]),
  ("B", [774 is the figure the Constitution and the National Bureau of Statistics use. The near misses — 768 and 776 — are the examiner's inventions.]),
  ("B", [Section 4(5): the federal law prevails and the state law is void only to the extent of the inconsistency. “Void in its entirety” is the trap.]),
  ("C", [Federal character is about the composition of federal institutions, not about the size or revenue of states. It is a diversity rule, not an equality rule.]),
))

#diagram-fig("diagrams/recap_gov2_ch04.svg",
  "Chapter 4 recap card: the three lists, the revenue principles and the federal character.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 4 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Federalism divides power between a centre and states, each supreme in its own sphere, and the test is whether the centre can abolish the state: in a federation it cannot. Nigeria is federal because it is large and diverse, because the north and the south were governed apart, because the nationalists bargained region by region, and because some services need a national scale. The Constitution divides power by three lists: exclusive for the National Assembly, concurrent for both with the federal law prevailing to the extent of any inconsistency, and residual for the states. The federation has been reshaped from three regions in 1954 through twelve states in 1967 to thirty-six states and the FCT in 1996, and every change was driven by the same fear of a region too large to be checked. Revenue is pooled and shared by FAAC on derivation, population, equality and need, with 13 per cent of oil revenue going to the producing states. Federal character is the diversity rule for appointments, and local government is the third tier: 774 councils, created by the states and too dependent on them to be truly autonomous.
  ]
]

#chapter-checklist("Before you leave Chapter 4", (
  [Define federalism and distinguish it from a unitary system and a confederation.],
  [Name the three lists and place ten subjects correctly.],
  [State the conflict rule for concurrent legislation.],
  [Give the number of states, the number of local governments and the year of the last state creation.],
  [Explain derivation, population, equality and need as revenue principles.],
  [Define federal character and give one advantage and one disadvantage.],
))

#concept-box("Carry this into Chapter 5")[
  The federation changed shape seven times, and six of those changes were made by soldiers.
  Chapter 5 turns to the thirty-three years in which the army governed Nigeria, because the
  federalism this chapter has described — the strong centre, the many states, the revenue
  formula — is largely the work of military decrees rather than of a civilian legislature.
]

#include "drill_ch04.typ"
