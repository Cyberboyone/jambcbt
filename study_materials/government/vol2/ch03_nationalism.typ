#import "template.typ": *

#current-chapter.update("Chapter 3: Nationalism and Independence")

#pagebreak()

#chapter-opener(
  3,
  "Nationalism and Independence",
  subtitle: "From the NNDP of 1923 to the Coalition of 1959 — the Parties, the Constitutions and the Bargain That Made Nigeria",
  syllabus-ref: "Part II • Political Development in Nigeria",
  utme-weight: "5 Qs a year",
  running: "Nationalism and Independence",
)

#focus-radar(
  objectives: (
    "Define nationalism and name the factors that produced it in Nigeria.",
    "Place the NNDP, the NCNC, the AG, the NPC and the NEPU by date, leader and region.",
    "Trace the constitutional road from Richards to independence, saying what each constitution gave.",
    "Explain why the 1959 election produced a coalition, and what that coalition meant for 1960.",
    "State the weaknesses of the First Republic that led to its collapse.",
  ),
  hotspots: (
    "“The first political party in Nigeria was …” — the Nigeria National Democratic Party, formed in 1923 by Herbert Macaulay. The NCNC of 1944 is the trap: it was the first *national* party, not the first party.\n",
    "“The 1954 Lyttleton Constitution is significant because …” — it established a true federal system and gave the regions self-government in matters on the residual list. The trap says it gave independence; independence came in 1960.\n",
    "“The NCNC was led by …” — Dr Nnamdi Azikiwe. The AG by Chief Obafemi Awolowo; the NPC by Sir Ahmadu Bello; the NEPU by Malam Aminu Kano.\n",
    "“The 1959 federal election produced a coalition because …” — no single party won a majority: the NPC dominated the north, the NCNC the east, and the AG the west, so the NPC and NCNC had to combine.\n",
  ),
  trap-summary: "Three slips. (1) Naming the NCNC as the first party — 1944 is the first *national* party, 1923 the first party. (2) Saying the 1946 Richards Constitution introduced federalism: it introduced *regionalism*, which is not the same thing. (3) Treating the 1959 election as a victory for one party: it was a draw between three regions, settled in a coalition.",
)

// ============================================================================
== 3.1 What Produced Nationalism

Nationalism is the demand by a people that they should govern themselves. In Nigeria it
was produced by five forces, and the paper expects at least three of them by name. The
first was the *press and the educated elite*: newspapers such as the *West African Pilot*
and the *Lagos Daily News* gave a small class of clerks, teachers and lawyers a platform
that did not depend on the colonial government. The second was *discrimination*: the
educated African was excluded from the senior grades of the civil service and from the
Legislative Council, while Europeans filled both. The third was the *economic grievance*
of taxation, price control and the marketing boards, which hit farmers and traders
directly. The fourth was the *Second World War*, which took Nigerian soldiers abroad,
weakened Britain, and made the rhetoric of freedom embarrassing to the colonial power.
The fifth was *Pan-Africanism and the wider world*: the Atlantic Charter of 1941, the
independence of India in 1947 and Ghana in 1957 gave the movement both a language and a
timetable.

#concept-box("The three words the paper separates")[
  *Nationalism* is the demand for self-government. *Patriotism* is loyalty to an existing state. *Sectionalism* is loyalty to a part of the state — a region, an ethnic group or a religion — over the whole. The nationalist movement in Nigeria was national in its demands and sectional in its organisation, which is why the coalition of 1959 and the collapse of 1966 are the same story told twice.
]

== 3.2 The Parties

Five parties matter. The *Nigeria National Democratic Party* (NNDP) was formed at Lagos in
1923 by Herbert Macaulay, and it contested the three elective seats that the Clifford
Constitution created; it was a Lagos party, not a national one. The *Nigerian Youth
Movement* (NYM) of 1934 was a pressure group of the educated elite, not a party. The
*National Council of Nigeria and the Cameroons* (NCNC) was formed in 1944 by Dr Nnamdi
Azikiwe and Herbert Macaulay, and it was the first genuinely national party, drawing
support from the east, the towns and the trade unions. The *Action Group* (AG) was formed
in the west in 1951 by Chief Obafemi Awolowo, with a programme of free primary education
and a federal constitution. The *Northern People's Congress* (NPC) was formed in the north
in 1951, led by Sir Ahmadu Bello, and it spoke for the emirs and the traditional
authority; the *Northern Elements Progressive Union* (NEPU), formed in 1950 by Malam Aminu
Kano, was its radical opposition among the commoners, the *talakawa*.

#diagram-fig("diagrams/gov2_ch03_nationalism.svg",
  "Four organisations, four bases, and the 1959 bargain that put two of them into government together.", width: 100%)

#table(
  columns: (0.9fr, 0.7fr, 1.2fr, 1.4fr, 1.3fr),
  inset: (x: 4.6pt, y: 4.2pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Party],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Leader],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[Base],
    text(font: "DejaVu Sans", size: 7.6pt, weight: "bold", fill: white)[The demand],
  ),
  [NNDP], [1923], [Herbert Macaulay], [Lagos; the elective seats], [representation and municipal reform],
  [NCNC], [1944], [Azikiwe and Macaulay], [national; east and towns], [self-government now],
  [NEPU], [1950], [Aminu Kano], [northern commoners], [reform of the emirate],
  [AG], [1951], [Obafemi Awolowo], [the west; Yoruba], [federalism, free education],
  [NPC], [1951], [Ahmadu Bello], [the north; the emirs], [gradual transfer, northern autonomy],
)

#trap-box("“First party” and “first national party”")[
  The NNDP of 1923 is the first political party, and the question that asks for it usually offers the NCNC as the trap. The NCNC of 1944 is the first *national* party — the first to organise outside one city and one ethnic group. Read the stem for the word *national*; it changes the answer.
]

== 3.3 The Constitutional Road

The constitutions after 1946 were not gifts; they were settlements between an
increasingly organised nationalist movement and a colonial power that wanted an orderly
exit. The *Richards Constitution* (1946) created three regions — North, West and East —
with their own houses of assembly, but kept the centre firmly in the governor's hands and
the franchise narrow. The *Macpherson Constitution* (1951) went further: it gave the
regions a greater share of legislative power and created a central House of Representatives
with elected members, but the governor still controlled the police, the civil service and
the budget. The *Lyttleton Constitution* (1954) settled the federal shape: a division of
powers between the centre and the regions, regional self-government in residual matters,
a federal prime minister, and a direct election to the federal house. It is the
constitution that made Nigeria a federation in substance, and the one the paper means by
“the federal system was established in 1954”.

#table(
  columns: (1.05fr, 0.55fr, 1.75fr, 1.65fr),
  inset: (x: 5pt, y: 4.3pt),
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Constitution],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Year],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it gave],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[What it withheld],
  ),
  [Clifford], [1922], [the elective principle, for Lagos and Calabar], [any share of power at the centre],
  [Richards], [1946], [three regions with their own assemblies], [a real centre; the governor kept the purse],
  [Macpherson], [1951], [a central house with elected members], [control of police, service and finance],
  [Lyttleton], [1954], [a federal division of powers; regional self-government], [independence itself],
  [Independence], [1960], [full self-government within the Commonwealth], [a republic — that came in 1963],
)

#rule-box("Why 1954, and not 1960, is the federal answer")[
  Federalism is a division of powers between a centre and component units, each of which is sovereign in its own sphere. The Lyttleton Constitution created exactly that: exclusive, concurrent and residual lists, regional premiers, and a federal prime minister. The 1960 Constitution kept the frame and removed the colonial governor; it did not create federalism. When a stem asks when federalism began in Nigeria, the answer is 1954.
]

== 3.4 The Bargain of 1959

The federal election of December 1959 was contested by the three regional parties on
three regional programmes, and it produced no majority. The NPC won the north
overwhelmingly, the NCNC the east, and the AG the west, with the NCNC's allies taking the
middle belt and the minorities. The NPC and the NCNC formed a coalition; Sir Abubakar
Tafawa Balewa, the NPC's deputy leader, became Prime Minister; Dr Azikiwe became Governor-
General and, in 1963, the first President of the Republic; Chief Awolowo went into
opposition.

The bargain had three consequences that the paper tests. It made independence a
*compromise between regions* rather than a victory of one movement. It left the
opposition concentrated in one region, and therefore easy to treat as a sectional enemy —
which is what happened to the AG in the crisis of 1962. And it entrenched a *two-party
coalition at the centre and one-party government in each region*, the arrangement the
military overthrew in 1966.

#shortcut-box("Dates that carry a mark each")[
  + *1922* Clifford — the elective principle.
  + *1946* Richards — three regions.
  + *1954* Lyttleton — federalism.
  + *1960* independence, 1 October.
  + *1963* republic; Azikiwe the first President.
]

== 3.5 The First Republic and Its Collapse

The First Republic lasted five years and eight months, and it fell to a combination of
four strains. The *census crisis* of 1962–63 turned population into a weapon, because
seats and revenue depended on it. The *AG crisis* of 1962 split the party, imprisoned
Awolowo and left the west without an effective opposition. The *electoral fraud* of the
1964 federal election and the 1965 western regional election destroyed the government's
claim to legitimacy. And the *regionalisation of the parties* meant that every national
dispute was also an ethnic one. On 15 January 1966 the army intervened, and Chapter 5
takes up the story. The examinable lesson is that independence was negotiated between
regions, and that a state built on a bargain between regions can be broken by a quarrel
between them.

#trap-box("The First Republic did not fall because it was democratic")[
  The usual wrong option says the First Republic collapsed because the parties were democratic and the regions were not ready. The better answer is that the parties were *regional* and the constitution gave the centre too little legitimacy: the government at the centre was a coalition of regional machines, and when one region's machine broke, the centre had nothing of its own to stand on.
]

== 3.6 Four Worked Questions

#worked-example(
  1,
  "The first party, and the first national party",
  [The first political party in Nigeria, formed in 1923, was the

    A. National Council of Nigeria and the Cameroons \\
    B. Nigerian National Democratic Party \\
    C. Action Group \\
    D. Northern People's Congress],
  [
    *Step 1 — read the year.* 1923 is before every other party on the list.

    *Step 2 — match the year to the party.* The NNDP was founded at Lagos in 1923 by Herbert Macaulay, and contested the elective seats created by the Clifford Constitution of 1922.

    *Step 3 — eliminate.* The NCNC is 1944, the AG and the NPC are 1951. The NNDP is the answer, and the NCNC is the trap for candidates who remember “first national party”.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Which constitution created the federation?",
  [The Nigerian constitution that established a true federal system with a division of powers between the centre and the regions was the

    A. Clifford Constitution of 1922 \\
    B. Richards Constitution of 1946 \\
    C. Lyttleton Constitution of 1954 \\
    D. Independence Constitution of 1960],
  [
    *Step 1 — define the test.* Federalism requires a division of legislative power between a centre and units, with each supreme in its own sphere.

    *Step 2 — apply it.* Clifford created three elective seats and no regions. Richards created regions but kept the centre under the governor. Lyttleton created the exclusive, concurrent and residual lists, regional premiers and a federal prime minister.

    *Step 3 — check 1960.* The Independence Constitution continued the 1954 frame and removed the colonial governor; it did not create the division of powers.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Reading a coalition",
  [The coalition that formed the first government of independent Nigeria was between the

    A. NCNC and the AG \\
    B. NPC and the AG \\
    C. NCNC and the NPC \\
    D. NPC and the NEPU],
  [
    *Step 1 — recall the result.* The NPC held the north, the NCNC the east, the AG the west; none had a majority of the 312 seats.

    *Step 2 — pair the two largest.* The NPC and the NCNC together commanded a majority, and their leaders — Balewa and Azikiwe — took the Prime Ministership and the Governor-Generalship.

    *Step 3 — place the third.* The AG went into opposition, which is why the west was the base of the opposition and the target of the crisis of 1962.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Why the bargain mattered",
  [The most important consequence of the 1959 election result for the First Republic was that

    A. it gave Nigeria a two-party system with a strong opposition \\
    B. it made independence a compromise between regional parties rather than a national victory \\
    C. it produced a government of national unity without an opposition \\
    D. it gave the AG control of the federal government],
  [
    *Step 1 — read what the election produced.* Three regional blocs and no majority: a coalition at the centre, one-party government in each region, and the AG in opposition.

    *Step 2 — test each consequence.* It did not produce a two-party system (there were three blocs and a coalition), it did produce an opposition, and the AG never controlled the centre.

    *Step 3 — choose the structural effect.* Independence was negotiated between regions, so the centre's authority rested on a bargain, which is exactly what broke in 1962–66.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 3.7 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [The NCNC was founded in 1944 by], [Herbert Macaulay alone], [Chief Obafemi Awolowo], [Dr Nnamdi Azikiwe and Herbert Macaulay], [Sir Ahmadu Bello])

#mcq(2, [The Richards Constitution of 1946 is best remembered for], [introducing the elective principle], [creating three regions], [granting independence], [abolishing the Legislative Council])

#mcq(3, [The Northern Elements Progressive Union was led by], [Sir Ahmadu Bello], [Malam Aminu Kano], [Sir Abubakar Tafawa Balewa], [Herbert Macaulay])

#mcq(4, [Nigeria became a republic in], [1954], [1957], [1960], [1963])

#answer-key-grid(("C", "B", "B", "D"))

#answer-notes((
  ("C", [Azikiwe and Macaulay founded the NCNC in 1944. Macaulay had founded the NNDP in 1923; the NCNC was the first national party, not the first party.]),
  ("B", [Richards created the North, West and East regions with their own houses of assembly. The elective principle was Clifford's, in 1922.]),
  ("B", [NEPU was the radical northern party of the talakawa, led by Aminu Kano. Bello led the NPC, Balewa was its deputy and the first Prime Minister.]),
  ("D", [The republic came in 1963, when the Governor-General was replaced by a President and Azikiwe took the office. Independence in 1960 kept the Queen as head of state.]),
))

#diagram-fig("diagrams/recap_gov2_ch03.svg",
  "Chapter 3 recap card: the parties, the constitutions and the bargain of 1959.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Nationalism grew from the press and the educated elite, from discrimination in the service and the council, from taxation and the marketing boards, from the Second World War and from Pan-Africanism. The NNDP of 1923 was the first party, the NCNC of 1944 the first national one, and the AG and the NPC of 1951 gave the west and the north their machines, with NEPU as the radicals of the north. The constitutions were a bargaining table: Richards gave regions in 1946, Macpherson gave a central house in 1951, Lyttleton gave federalism in 1954, and independence in 1960 kept the frame and removed the governor. The 1959 election produced no majority, so the NPC and the NCNC governed together, the AG went into opposition, and the centre became a bargain between regions — a bargain that the census of 1962, the AG crisis, the fraud of 1964 and the western election of 1965 tore apart before the army ended it in January 1966.
  ]
]

#chapter-checklist("Before you leave Chapter 3", (
  [Define nationalism and name four factors that produced it in Nigeria.],
  [Match five parties to their year, leader and regional base.],
  [Say what each of the four constitutions — Clifford, Richards, Macpherson, Lyttleton — gave and withheld.],
  [Explain why the 1959 election produced a coalition rather than a majority.],
  [State three weaknesses of the First Republic that led to the 1966 coup.],
))

#concept-box("Carry this into Chapter 4")[
  The bargain of 1959 was a bargain about *power between levels of government*, which is the
  subject called federalism. Chapter 4 takes the frame that Lyttleton built and asks the
  questions the paper actually sets: what is on each of the three lists, how the revenue is
  shared, why the number of states kept changing, and what “federal character” was invented
  to solve.
]

#include "drill_ch03.typ"
