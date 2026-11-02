#import "template.typ": *

#current-chapter.update("Chapter 7: Foreign Policy")

#pagebreak()

#chapter-opener(
  7,
  "Foreign Policy",
  subtitle: "Concentric Circles, a Permanent National Interest and the Search for a Voice",
  syllabus-ref: "Part IV • Nigeria in the International Community",
  utme-weight: "4 Qs a year",
  running: "Foreign Policy",
)

#focus-radar(
  objectives: (
    "Define foreign policy and name its determinants.",
    "State Nigeria's foreign-policy objectives and explain Afrocentrism.",
    "Draw the concentric circles and place a foreign-policy action in the right circle.",
    "Name the institutions through which Nigeria acts — ECOWAS, the AU, the UN, the Commonwealth and OPEC — and give the year of each.",
    "Give the instruments of foreign policy and one Nigerian example of each.",
    "Assess Nigeria's achievements and the constraints on its influence.",
  ),
  hotspots: (
    "“Nigeria's foreign policy is described as Afrocentric because …” — Africa is the centre-piece of the policy. The trap says Nigeria joined only African organisations, which is false: Nigeria is in the UN, the Commonwealth and OPEC.\n",
    "“ECOWAS was founded in …” — 1975, at Lagos, with Nigeria as a leading mover; the treaty was revised in 1993. The trap offers 1960 (independence) or 1963 (the OAU).\n",
    "“The OAU was transformed into the African Union in …” — 2002. The OAU itself was founded in 1963 in Addis Ababa.\n",
    "“Nigeria's membership of OPEC illustrates …” — the economic instrument of foreign policy, and the use of a national resource for international leverage.\n",
  ),
  trap-summary: "Three slips. (1) Saying foreign policy is made by the civil service alone — the President and the Ministry of Foreign Affairs lead, and the legislature appropriates. (2) Treating the Commonwealth as an African body: it is a voluntary association of mostly former British territories. (3) Confusing the OAU (1963, Addis Ababa, replaced) with the AU (2002, Durban) and ECOWAS (1975, Lagos, still in being).",
)

// ============================================================================
== 7.1 What Foreign Policy Is, and What Shapes It

*Foreign policy* is the sum of the decisions a state takes towards other states and
international organisations in pursuit of its national interest. The national interest is
the permanent element; the policy is the changing means. Nigeria's national interest has
four components, and the paper rewards a candidate who can name them: the *security* of the
state and its citizens, the *territorial integrity* of the country, *economic development*
and the *prestige* of the country abroad.

#table(
  columns: (1.35fr, 2.35fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Determinant],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[How it shows in Nigerian policy],
  ),
  [National interest], [security, territory, development and prestige set the ends; everything else is a means],
  [Geography], [a coastal state in West Africa, bordered by fourteen countries, cannot ignore its neighbours],
  [History], [the colonial tie to Britain; membership of the Commonwealth; the loans and the language],
  [Economy], [oil is the main earner, which is why OPEC membership matters and why the Niger Delta is a foreign-policy issue],
  [Domestic politics], [ethnic and religious balance shapes appointments; public opinion constrains a government that is seen to bow to the West],
  [Military capability], [ECOMOG in Liberia and Sierra Leone was possible because Nigeria had the troops and the transport],
  [The international system], [the Cold War, then a unipolar world, then a multipolar one: each changed the room Nigeria had],
)

#concept-box("Afrocentrism, defined exactly")[
  *Afrocentrism* is the placing of Africa at the centre of Nigeria's foreign policy: African issues come first, African liberation and unity are treated as Nigeria's own interest, and Nigeria prefers to act through African organisations. It does *not* mean that Nigeria deals only with Africa, and it does not mean that Nigeria subordinates its own interest to Africa. The formula the textbooks use is “Africa as the centre-piece”, and the paper often asks only for the phrase.
]

== 7.2 The Concentric Circles

The standard model of Nigerian foreign policy is a set of concentric circles. The innermost
circle is the *national interest* — the security and prosperity of Nigeria itself. The
second is *West Africa*, where ECOWAS is the instrument. The third is *Africa*, where the
African Union and the old OAU were the instruments. The outermost is *the world*, where the
UN, the Commonwealth and OPEC are the instruments. The policy moves outward from the centre:
a Nigerian government will spend more on a crisis in Liberia than on a crisis in the
Balkans, and it will explain that choice by the circles.

#diagram-fig("diagrams/gov2_ch07_foreign.svg",
  "The concentric circles: national interest, West Africa, Africa, the world — and the four instruments.", width: 100%)

#table(
  columns: (1.15fr, 1.0fr, 2.4fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Circle],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Founded],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Nigeria's role],
  ),
  [ECOWAS], [1975], [a founder; the largest contributor; ECOMOG's backbone in Liberia and Sierra Leone],
  [OAU / AU], [1963 / 2002], [a founder of the OAU; mediator in Congo, Chad and Liberia; AU peacekeeping],
  [UN], [1945; Nigeria joined 1960], [peacekeeping since the Congo; non-permanent Security Council seat in 1994–95],
  [Commonwealth], [as the British Commonwealth, 1931; Nigeria joined 1960], [suspension of Nigeria 1995–99 over Abacha; Nigeria later chaired the body],
  [OPEC], [1960; Nigeria joined 1971], [oil-price advocacy and a seat at the producers' table],
  [Non-Aligned Movement], [1961], [a Cold War refusal to join either bloc, now largely symbolic],
)

== 7.3 The Instruments

A state has four families of instruments. *Diplomatic* instruments are the embassy, the
ambassador, the note verbale and the summit; they are the everyday machinery.
*Economic* instruments are aid, trade, investment, sanctions and the control of a resource
such as oil. *Military* instruments are peacekeeping, the deployment of troops and the threat
of force; Nigeria's ECOMOG deployment is the standard example. *Cultural* instruments are
language, education, sport and the technical aid corps, through which Nigeria sends doctors
and teachers to other African countries.

#shortcut-box("One Nigerian example for each instrument")[
  + *Diplomatic:* Nigeria's missions abroad and its mediation in the Sierra Leone conflict.
  + *Economic:* OPEC membership; oil-price diplomacy; the sanctions on South Africa's apartheid government.
  + *Military:* ECOMOG in Liberia from 1990 and in Sierra Leone from 1997.
  + *Cultural:* the Technical Aid Corps, founded in 1987, sending Nigerian professionals to African, Caribbean and Pacific states.
]

== 7.4 The Record and the Limits

The achievements are real. Nigeria was central to the decolonisation of Africa, to the
campaign against apartheid, to the founding of ECOWAS in 1975 and to the peacekeeping that
ended the Liberian and Sierra Leonean civil wars. It has served on the UN Security Council
and chaired the African Union. It has used oil revenue and oil diplomacy to make itself
heard far beyond its size.

The limits are equally real, and the paper likes a balanced answer. Nigeria's *economy is
monocultural*: when the oil price falls, the foreign-policy budget falls with it. Its
*military capacity* is large in the region but limited beyond it. Its *domestic instability*
and its human-rights record have cost it influence, as the Commonwealth suspension of
1995 and the international isolation of the Abacha years showed. And its *dependence on
the West* for markets, technology and debt relief limits how far it can oppose Western
positions.

#trap-box("Influence is not the same as power")[
  A question that asks whether Nigeria is a *regional power* wants the two-column answer: it has the
  size, the army and the diplomacy to lead West Africa, and it lacks the economic diversification and
  the domestic stability that would make the leadership durable. Do not answer “yes” or “no” alone.
]

== 7.5 Foreign Policy and the Citizen

Foreign policy is not remote from the paper's other chapters. The *ECOWAS protocol on free
movement* allows a Nigerian to travel to Ghana without a visa, which is a foreign-policy
decision that a trader feels at the border. The *African Continental Free Trade Area*,
signed by Nigeria in 2019, is a foreign-policy decision that a manufacturer feels in the
market. And the *diaspora* — Nigerians abroad — is now treated as part of the national
interest, with a diaspora commission and consular services that the Ministry of Foreign
Affairs runs. Examiners increasingly set one question that links the diplomacy to the
citizen's experience, and the three examples above answer it.

== 7.6 Chapter 7 in the Exam Hall — Worked Questions and a Two-Minute Set

#worked-example(
  1,
  "The definition",
  [The sum of the decisions a state takes towards other states and international bodies in pursuit of its national interest is called

    A. domestic policy \\
    B. foreign policy \\
    C. public policy \\
    D. fiscal policy],
  [
    *Step 1 — identify the actors.* The stem names other states and international bodies, so the subject is external.

    *Step 2 — identify the purpose.* The national interest is the constant.

    *Step 3 — name it.* Foreign policy.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The centre-piece",
  [Nigeria's foreign policy is described as Afrocentric because

    A. Nigeria deals only with African countries \\
    B. Nigeria is a member of the African Union \\
    C. Africa is the centre-piece of Nigeria's foreign policy \\
    D. Nigeria has never joined a non-African organisation],
  [
    *Step 1 — recall the formula.* “Africa as the centre-piece of Nigeria's foreign policy” is the textbook phrase.

    *Step 2 — test the other options against the facts.* Nigeria deals with Britain, the United States and China, and belongs to the UN and OPEC, so A and D are false; AU membership alone would not make a policy Afrocentric.

    *Step 3 — choose the definition.* Option C states the doctrine itself.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "ECOMOG",
  [The military force sent by ECOWAS to Liberia in 1990 was known as

    A. ECOMOG \\
    B. UNIFIL \\
    C. MONUC \\
    D. AFRICOM],
  [
    *Step 1 — expand the acronym.* ECOMOG is the ECOWAS Cease-fire Monitoring Group, the West African force that intervened in Liberia in August 1990.

    *Step 2 — exclude the UN missions.* UNIFIL is in Lebanon; MONUC is the UN mission in the Congo; AFRICOM is the United States Africa Command.

    *Step 3 — attach the Nigerian role.* Nigeria supplied the largest contingent and the commander, which is why ECOMOG is the standard example of the military instrument.

    *Answer: A.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The limits of influence",
  [Which of the following most limits Nigeria's influence in world affairs?

    A. Its membership of the Commonwealth \\
    B. Its large population \\
    C. Its permanent seat at the UN Security Council \\
    D. Its dependence on a single export commodity],
  [
    *Step 1 — separate fact from fiction.* Nigeria does not hold a permanent Security Council seat; it was a non-permanent member in 1994–95. That removes C.

    *Step 2 — weigh the remaining options.* Population and Commonwealth membership are assets, not limits.

    *Step 3 — identify the structural weakness.* Oil dependence ties the foreign-policy budget to a volatile price, which is the standard limitation in the textbooks.

    *Answer: D.*
  ],
  tier: "JAMB CHALLENGE",
)

#mcq(1, [Nigeria's foreign policy is described as Afrocentric because], [Nigeria deals only with African states], [Africa is the centre-piece of the policy], [Nigeria has left the Commonwealth], [Nigeria is not a member of the UN])

#mcq(2, [ECOWAS was founded in], [1960], [1963], [1975], [2002])

#mcq(3, [The OAU was transformed into the African Union in], [1963], [1993], [2000], [2002])

#mcq(4, [Nigeria's membership of OPEC is best described as an example of], [a cultural instrument], [a diplomatic instrument], [a military instrument], [an economic instrument])

#answer-key-grid(("B", "C", "D", "D"))

#answer-notes((
  ("B", [Afrocentrism places Africa at the centre. It does not exclude the rest of the world, and Nigeria belongs to the UN, the Commonwealth and OPEC.]),
  ("C", [ECOWAS was established by the Treaty of Lagos in May 1975; the treaty was revised in 1993.]),
  ("D", [The African Union replaced the OAU at Durban in 2002. 1963 is the OAU's own foundation.]),
  ("D", [OPEC is a producers' cartel: oil is used as economic leverage, so the instrument is economic.]),
))

#diagram-fig("diagrams/recap_gov2_ch07.svg",
  "Chapter 7 recap card: the circles, the institutions and the instruments.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Foreign policy is the sum of a state's decisions towards other states and international bodies in pursuit of the national interest, and Nigeria's interest has four parts: security, territorial integrity, development and prestige. The determinants are national interest, geography, history, the economy, domestic politics, military capability and the international system. The doctrine is Afrocentrism — Africa as the centre-piece — and the model is a set of concentric circles: national interest, then West Africa through ECOWAS (1975), then Africa through the OAU (1963) and the AU (2002), then the world through the UN, the Commonwealth and OPEC (Nigeria joined in 1971). The instruments are diplomatic, economic, military and cultural, and ECOMOG in Liberia and Sierra Leone is the military example the paper wants. The record includes decolonisation, the anti-apartheid campaign, peacekeeping and a UN Security Council seat in 1994–95; the limits are a monocultural economy, limited power projection, domestic instability and dependence on the West. Influence is not the same as power, and a good answer gives both columns.
  ]
]

#chapter-checklist("Before you leave Chapter 7", (
  [Define foreign policy and name its four components of national interest.],
  [Give five determinants and one Nigerian example of each.],
  [Define Afrocentrism precisely.],
  [Draw the concentric circles and place ECOWAS, the AU, the UN and OPEC.],
  [Give the year of ECOWAS, the OAU, the AU and Nigeria's OPEC accession.],
  [Name the four instruments and one Nigerian example of each.],
  [Give two achievements and two limits of Nigeria's foreign policy.],
))

#concept-box("Carry this into Chapter 8")[
  A foreign policy is made by a government, and a government is made by an election. Chapter 8 turns to
  the machinery that produces the government: the electoral commission, the register, the polling unit,
  the result sheet and the election petition — the last chapter of the volume, and the one that ties the
  constitution back to the citizen.
]

#include "drill_ch07.typ"
