#import "template.typ": *

#current-chapter.update("Chapter 2: Colonial Rule and Indirect Rule")

#pagebreak()

#chapter-opener(
  2,
  "Colonial Rule and Indirect Rule",
  subtitle: "Company Rule, the Protectorate, the Amalgamation of 1914, and the System Lugard Built on the Chiefs He Found",
  syllabus-ref: "Part II • Political Development in Nigeria",
  utme-weight: "4 Qs a year",
  running: "Colonial Rule",
)

#focus-radar(
  objectives: (
    "Trace the three phases of colonial administration from 1851 to 1914.",
    "Define indirect rule and name its three pillars.",
    "Explain why the system held in the north and broke down in the east.",
    "Distinguish indirect rule from direct rule and from assimilation.",
    "State the political legacy of colonial administration for independent Nigeria.",
  ),
  hotspots: (
    "“Indirect rule means …” — rule through traditional rulers and their institutions, under the supervision of British officials. Any option that says the British ruled *directly* through their own officers describes direct rule.\n",
    "“The three pillars of indirect rule were …” — the native authority, the native treasury and the native courts. The trap offers *the legislative council*, which was the instrument of the central colonial government, not of indirect rule.\n",
    "“The 1914 amalgamation was carried out by …” — Lord Frederick Lugard, joining the Northern and Southern Protectorates under one administration for administrative convenience, not for the creation of a nation.\n",
    "“The Aba women's war of 1929 was a protest against …” — the extension of direct taxation to women, and the Warrant Chiefs who counted them. The trap says it was a protest against *indirect rule itself*; it was a protest against its abuses.\n",
  ),
  trap-summary: "Three slips. (1) Confusing indirect rule with the absence of British control: the resident supervised, and could dismiss the chief. (2) Saying the 1914 amalgamation united a nation — it united an administration, and left the regions as unequal as it found them. (3) Describing the Warrant Chiefs as traditional rulers: they were appointed, and that is why they failed.",
)

// ============================================================================
== 2.1 Three Phases, One Direction

Colonial administration in Nigeria arrived in stages, and each stage changed who
governed. In the first, the British government delegated its authority to a *chartered
company*: the Royal Niger Company administered the Niger territories from 1886 until
1900, collecting duties, making treaties and keeping order at its own expense. In the
second, the Crown took over the company's territory and proclaimed *protectorates*,
governed by a governor and his officials under the Colonial Office. In the third, the
Northern and Southern Protectorates were *amalgamated* in 1914 under one governor-general,
not because the peoples had become one, but because two administrations were costing more
than one.

#table(
  columns: (0.95fr, 1.3fr, 1.35fr, 1.55fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Phase],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Period],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who governed],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The instrument],
  ),
  [Company rule], [1886–1900], [the Royal Niger Company, under charter], [treaties, duties and a private police force],
  [Crown colony], [1861 onwards at Lagos], [a governor answerable to the Colonial Office], [the legislative council and English law],
  [Protectorate], [1900–1914], [a high commissioner and his residents], [proclamations and native authorities],
  [Amalgamation], [1914], [a governor-general at Lagos], [one administration over two protectorates],
)

#trap-box("A protectorate is not a colony")[
  A *colony* is territory annexed and governed as part of the imperial state; its people are subjects of the Crown and English law runs there. A *protectorate* is territory in which the imperial power controls foreign relations and defence while leaving internal government to the local rulers. That distinction is why indirect rule could be presented as a protectorate policy — and why the paper's option “Nigeria was a colony from 1914” is only half true: Lagos was a colony; the rest was protectorate.
]

== 2.2 The Instruments of Colonial Control

Above the native authorities sat a small British establishment with large powers. The
*Governor* (after 1914 the Governor-General) held the executive power and legislated by
proclamation. The *Legislative Council*, created in 1862 at Lagos and enlarged by the
Clifford Constitution of 1922, was an advisory body with nominated unofficial members: it
could discuss, but it could not control the governor or the purse. The *Executive
Council* advised the governor and was entirely official. Beneath them, in the provinces,
the *Resident* and the *District Officer* supervised the native authorities — which is the
crucial point: indirect rule was supervision, not abdication.

#rule-box("The residents' powers, in three verbs")[
  The Resident could *advise* the native authority, *approve* its budget and *dismiss* a chief who disobeyed. That is why “indirect rule left the chiefs independent” is false: the chief ruled his people, and the Resident ruled the chief.
]

== 2.3 Indirect Rule: What It Was, and What It Rested On

Indirect rule is the system by which the colonial power governed through the existing
traditional rulers and their institutions, under the supervision of British officials.
Its architect in Nigeria was Lord Frederick Lugard, who had used it in Northern Nigeria
before 1914 and extended its principles southwards after the amalgamation. The system
rested on three pillars, and the paper asks for all three.

#table(
  columns: (1.1fr, 1.9fr, 1.75fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Pillar],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it was],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it did],
  ),
  [The native authority], [the chief and his council, recognised by warrant], [made rules, kept order and carried out policy],
  [The native treasury], [a local fund fed by local taxes and court fees], [paid the chief, the staff and the works],
  [The native courts], [courts applying native law and custom], [settled disputes the people brought],
)

The system's advantages to the British were cheapness and legitimacy. It cost few
officers, it used taxes raised locally, and it asked the people to obey men they already
obeyed. Its disadvantages were equally plain: it froze traditional institutions in the
form the British found them, it gave the chiefs powers they had never held — taxation
without the old checks, and courts without appeal to the old councils — and it created a
class of chiefs who owed their position to the colonial state rather than to their people.

#concept-box("Why the north fitted and the east did not")[
  Indirect rule needs three things: a chief, a treasury and a court. The emirate had all three, centralised and legitimate. The Yoruba kingdoms had an Oba and chiefs who could be fitted into the pattern. The Igbo village had courts and treasuries in a sense, but no single chief, so the British appointed *Warrant Chiefs* — men with a warrant and no lineage — and the system lost the legitimacy that was its whole point. The Aba women's war of 1929, in which thousands of women protested the counting and taxation that the Warrant Chiefs enforced, is the examinable proof.
]

== 2.4 Direct Rule, Assimilation and the Alternative

Indirect rule was not the only colonial method, and the comparison is examinable. *Direct
rule* governed through the colonial power's own officials, with the traditional rulers
reduced to ceremonial figures; it was used in Lagos, in the townships and, later, in the
southern provinces where no suitable chief could be found. The French practised
*assimilation*: a small elite of Africans in the four communes of Senegal were made
French citizens, while the mass of the population was governed by decree. *Association*,
which replaced assimilation in French policy after 1914, kept the local institutions but
under French direction.

#table(
  columns: (1.05fr, 1.55fr, 1.5fr, 1.6fr),
  inset: (x: 5pt, y: 4.2pt),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[Who rules],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The local ruler],
    text(font: "DejaVu Sans", size: 7.7pt, weight: "bold", fill: white)[The examinable word],
  ),
  [Indirect rule], [British officers supervise native authorities], [keeps his throne and his courts], [supervision],
  [Direct rule], [British officers govern directly], [becomes a ceremonial figure], [efficiency],
  [Assimilation], [French law and citizenship for a few], [is replaced by French institutions], [citizenship],
  [Association], [French direction through local institutions], [is retained but directed], [adaptation],
)

#shortcut-box("The one-line test for every colonial question")[
  + Ask *who actually governed the village*: if the answer is the chief under supervision, it is indirect rule.
  + Ask *what happened to the traditional ruler*: kept, it is indirect; removed to ceremony, it is direct; made French, it is assimilation.
  + Ask *who paid*: a native treasury, it is indirect rule; the colonial budget, it is direct rule.
]

== 2.5 The Legacy

Four legacies of colonial administration shape the rest of this book. First, *regionalism*:
the north and the south were administered separately until 1914 and unevenly after it, and
the regions that the Richards Constitution created in 1946 inherited that separation.
Second, *uneven development*: roads, schools and hospitals followed the export trade and
the colonial capital, so the coast developed faster than the interior. Third, *the chiefly
class*: indirect rule gave the chiefs powers and a revenue they had not held before, and
made them the local agents of a foreign government — which is why the nationalist
movement had to fight both the British and, in places, the chiefs. Fourth, *the educated
elite*: the mission schools produced a small class of clerks, teachers and lawyers who
could not be fitted into the native authority, and who became the leadership of the
nationalist parties in Chapter 3.

#trap-box("Two dates that carry a mark each")[
  *1914* is the amalgamation, and its purpose was administrative economy — one government over two protectorates. *1922* is the Clifford Constitution, which introduced the elective principle into the Legislative Council for Lagos and Calabar. Questions that ask when Nigerians first voted are asking for 1922, not 1914.
]

== 2.6 Four Worked Questions

#worked-example(
  1,
  "Defining the system",
  [The system of colonial administration in which the British governed through traditional rulers and their institutions is called

    A. direct rule \\
    B. indirect rule \\
    C. assimilation \\
    D. association],
  [
    *Step 1 — read the defining phrase.* “Through traditional rulers and their institutions” is the whole definition.

    *Step 2 — match.* Direct rule governs through British officers; assimilation makes a few Africans French; association keeps local institutions under French direction.

    *Step 3 — confirm the name.* Rule through the chiefs, supervised by residents, is indirect rule.

    *Answer: B.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "The pillars, and the one that is not",
  [Which of the following was NOT a pillar of indirect rule in Nigeria?

    A. The native authority \\
    B. The native treasury \\
    C. The legislative council \\
    D. The native courts],
  [
    *Step 1 — recall the three.* Native authority, native treasury, native courts: the chief, the money and the law.

    *Step 2 — test the outsider.* The legislative council sat at Lagos, was nominated, and advised the governor. It was an instrument of the central colonial government, not of the local system.

    *Step 3 — confirm.* A native authority without a treasury could not pay its staff, and without a court could not settle disputes; the legislative council was never part of that triangle.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "Why the east was different",
  [The appointment of Warrant Chiefs in Eastern Nigeria was a response to

    A. a demand by the people for elected chiefs \\
    B. the absence of traditional paramount rulers \\
    C. the refusal of the Oba to collect tax \\
    D. a ruling of the colonial courts],
  [
    *Step 1 — identify the institution.* A Warrant Chief was a man appointed by the colonial administration and given a warrant to rule.

    *Step 2 — ask why a warrant was needed.* Because indirect rule requires a chief to rule through, and the Igbo village had no paramount chief to appoint.

    *Step 3 — test the rest.* There was no popular demand, there were no Obas in Igboland, and no court ordered it. The warrant was a workaround for the absence of a throne.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "The purpose of the amalgamation",
  [The amalgamation of the Northern and Southern Protectorates in 1914 was carried out mainly to

    A. create a Nigerian nation with a common identity \\
    B. give the north and the south equal representation \\
    C. make the colony economically self-supporting through one administration \\
    D. prepare the territory for immediate independence],
  [
    *Step 1 — note who amalgamated and why.* Lugard joined two administrations that were separately financed; the Colonial Office wanted one railway, one customs service and one budget.

    *Step 2 — test the idealistic options.* No colonial power amalgamated for nationhood, equality or independence: the north was deliberately kept separate in law and administration after 1914.

    *Step 3 — choose the administrative reason.* The motive was economy and control, which is why the north was administered as a separate region until 1946.

    *Answer: C.*
  ],
  tier: "JAMB CHALLENGE",
)

== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The Royal Niger Company administered the Niger territories under], [a royal charter], [an Act of the Nigerian legislature], [a treaty with the emirs], [a mandate of the League of Nations])

#mcq(2, [Indirect rule in Nigeria is most associated with], [Lord Frederick Lugard], [Sir Hugh Clifford], [Sir Arthur Richards], [Sir John Macpherson])

#mcq(3, [Which of the following was a consequence of indirect rule?], [the abolition of native courts], [the strengthening of chiefly authority], [the immediate creation of elected councils], [the end of taxation])

#mcq(4, [The 1929 Aba women's war was directed mainly against], [the amalgamation of 1914], [the warrant chiefs and direct taxation], [the Clifford Constitution], [the Native Authority Ordinance])

#answer-key-grid(("A", "A", "B", "B"))

#answer-notes((
  ("A", [The company governed under a royal charter from 1886 to 1900; everything else is a later instrument. A charter is the examinable word.]),
  ("A", [Lugard built the system in the north and extended it after 1914. Clifford and Richards gave Nigeria constitutions; they did not design indirect rule.]),
  ("B", [Indirect rule gave the chiefs powers of taxation and justice they had not held before, which is exactly why the nationalists later attacked the chiefs as colonial agents.]),
  ("B", [The women protested the counting of women for tax and the Warrant Chiefs who enforced it — an abuse of indirect rule, not the system's abolition.]),
))

#diagram-fig("diagrams/recap_gov2_ch02.svg",
  "Chapter 2 recap card: three phases, three pillars, and the region where the system broke.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Colonial rule arrived in three phases — the chartered company to 1900, the protectorates to 1914, and then one administration under a governor-general — and each phase kept the same direction: authority in London, exercised through a governor and, below him, through the chiefs. Indirect rule was Lugard's answer to the shortage of men and money: rule through the native authority, paid from a native treasury, judging in native courts, supervised by a resident who could dismiss the chief. It fitted the emirate because the emirate already had a treasury, courts and a hierarchy; it fitted the Yoruba kingdoms because the Oba ruled through chiefs; it failed in Igboland because there was no paramount chief, and the Warrant Chiefs invented to fill the gap had no legitimacy, which the women's war of 1929 exposed. The legacy was regionalism, uneven development, a strengthened chiefly class and an educated elite that would lead the demand for independence.
  ]
]

#chapter-checklist("Before you leave Chapter 2", (
  [Name the three phases of colonial administration and the instrument of each.],
  [Define indirect rule and name its three pillars without looking.],
  [Explain in two sentences why the system held in the north and failed in the east.],
  [Distinguish indirect rule, direct rule and assimilation in one line each.],
  [State four legacies of colonial administration for independent Nigeria.],
))

#concept-box("Carry this into Chapter 3")[
  Colonial rule produced the two things nationalism needed: a class of educated Nigerians
  who could not rise in the native authority, and a set of regional institutions that could
  be captured and then used against the colonial power. Chapter 3 follows that class into
  the parties — the NCNC, the AG and the NPC — and shows how the constitution of 1946,
  which was meant to keep the regions apart, gave each party a region to win.
]

#include "drill_ch02.typ"
