#import "template.typ": *

#current-chapter.update("Chapter 1: Pre-Colonial Administration")

#pagebreak()

#chapter-opener(
  1,
  "Pre-Colonial Administration",
  subtitle: "The Emirate, the Yoruba Chieftaincy and the Igbo Village Republic — Who Ruled, and What Limited the Ruler",
  syllabus-ref: "Part II • Political Development in Nigeria",
  utme-weight: "4 Qs a year",
  running: "Pre-Colonial Administration",
)

#focus-radar(
  objectives: (
    "Describe the political organisation of the Hausa–Fulani emirate, the Yoruba kingdoms and the Igbo village.",
    "Name the institutions through which each system governed, and say what each institution did.",
    "Explain what limited the power of a ruler in each of the three systems.",
    "Compare the three systems on one axis: centralised against acephalous.",
    "Explain why the colonial administration could use the first two systems and not the third.",
  ),
  hotspots: (
    "“The emirate system was introduced into Hausaland by …” — the Fulani *jihad* of 1804, led by Usman dan Fodio. The option that says the British introduced it is the trap: the British met it and used it.\n",
    "“The Oyomesi was the …” — council of seven kingmakers in Oyo, whose head, the Bashorun, could compel a bad Alaafin to abdicate. Any option that calls it a *court* or a *tax committee* is wrong.\n",
    "“The Igbo system is best described as …” — acephalous and republican: no single paramount ruler, government by council of elders, age grades and title societies. The trap calls it *stateless*, which is a different and false claim.\n",
    "“Indirect rule succeeded in Northern Nigeria because …” — there was already a centralised authority with a treasury, courts and tax collection to rule through.\n",
  ),
  trap-summary: "Three slips. (1) Saying the British created the emirates — they inherited them in 1903. (2) Calling the Igbo stateless because they had no king: they had government without a ruler. (3) Treating the Yoruba Oba as an absolute monarch — the Oyomesi and the Ogboni limited him, and the constitution of Oyo was the check.",
)

// ============================================================================
== 1.1 Why the Pre-Colonial Systems Are Examinable

Nigeria was not one country before 1914, and the paper knows it. Three political
systems occupied the territory that became Nigeria, and each answered the two questions
of government in a different way: *who has the right to command*, and *what stops the
command from becoming tyranny*. The answers were an emir advised by a council, an Oba
advised by kingmakers, and a village that had no king at all.

The examiner tests three things: the *institutions* of each system, the *checks* on the
ruler in each system, and the *consequence* of the differences for colonial rule. A
candidate who can name the Emirate Council, the Oyomesi and the Ozo title society has
the first; one who can say what each did has the second; and one who can explain why
Lord Lugard found the north easier to administer than the east has the third, which is
where the hard questions live.

#diagram-fig("diagrams/gov2_ch01_precolonial.svg",
  "Three systems, one question each: who governs, and what limits the governor. The colonial power inherited all three, and used the first two.", width: 100%)

== 1.2 The Emirate System of the Hausa–Fulani

The emirate was a centralised, hierarchical and theocratic system. At its head stood the
*Emir*, who combined political, military and religious authority: he was the ruler of the
emirate and the defender of the faith, and his word was law subject to the Sharia. Below
him sat the *Emirate Council*, made up of the senior officials — the Waziri (vizier), the
Galadima (in charge of the capital), the Madaki and the others — who advised him and
administered the emirate's departments. Below the council were *district heads* and
*village heads*, each responsible for tax collection, order and the reporting of
disputes upward.

Justice was administered in the *Alkali courts* under Islamic law, with appeal to the
Emir. Taxation was systematic — *zakat* on wealth, *jizya* on non-Muslims, and the
*kharaj* on land — collected by officials and used for the emirate's administration and
its army. The emirate raised a standing force when it needed one, and the Sokoto
Caliphate above it claimed a general authority over the emirates of the north.

#table(
  columns: (1.15fr, 1.75fr, 1.9fr),
  inset: (x: 5pt, y: 4.3pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Institution],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it did],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[The check it supplied],
  ),
  [The Emir], [ruled, commanded the army, appointed officials, judged appeals], [none — except the Sharia and the caliphate],
  [The Emirate Council], [advised the Emir and headed the departments of state], [advice that could not be ignored with impunity],
  [District and village heads], [collected tax, kept order, reported disputes], [the need for local consent to collect tax],
  [The Alkali courts], [applied Islamic law in civil and criminal matters], [a written law above the ruler],
  [The scholars, the ulama], [interpreted the law and educated the emirate], [the power to declare a ruler unjust],
)

#rule-box("The emirate in one sentence, and the option that tests it")[
  The emirate was a *centralised* system in which one ruler governed through a hierarchy of appointed officials, under a written law, and owed a general obedience to the caliphate. The examiner's distractor says the emirate was *democratic* because the Emir consulted his council — consultation is not election, and an appointed council is not a representative assembly.
]

== 1.3 The Yoruba Chieftaincy System

The Yoruba kingdoms — Oyo, Ife, Ijebu, Egba and the rest — were centralised too, but the
ruler was checked in a way the emir was not: by *kingmakers* who had made him and could
unmake him. In Oyo the king was the *Alaafin*, and beside him sat the *Oyomesi*, a council
of seven senior chiefs whose head was the *Bashorun*. The Oyomesi advised the Alaafin and,
where his rule became intolerable, presented him with an empty calabash or a parrot's
egg — the signal that he should die. That is not a ceremony; it is a constitutional check,
and it is the answer to every question about the limits of the Oba's power.

Two other bodies shared the government. The *Ogboni* society, whose members were drawn
from the chiefs and the elders, exercised judicial and religious authority and could
mediate between the Alaafin and the Oyomesi. The *Balogun* commanded the army and, with
the *Are Ona Kakanfo* as the field commander, gave the kingdom its military arm. The
*Iyalode* represented the women and their economic interests, and the ward chiefs and the
*Baale* governed the towns and quarters below the capital.

#table(
  columns: (1.1fr, 1.85fr, 1.85fr),
  inset: (x: 5pt, y: 4.3pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Office],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[What it tells you],
  ),
  [Alaafin], [the king in Oyo; ritual and political head], [centralised monarchy],
  [Oyomesi], [seven kingmakers; advised and could compel abdication], [the monarch was not absolute],
  [Bashorun], [head of the Oyomesi and the kingdom's prime minister], [a chief could outrank a prince],
  [Ogboni], [judicial and religious council of elders], [law and religion shared the check],
  [Balogun / Kakanfo], [command of the army], [force was separated from the throne],
  [Iyalode], [head of the women's wing and their trades], [women held formal political office],
)

#trap-box("The Oba was not an absolute king")[
  A question that asks why the Alaafin could not rule as a despot wants *the Oyomesi*, and a question that asks who could remove him wants the same body. Do not answer *the Ogboni alone*: the Ogboni judged and mediated, but it was the Oyomesi that made and unmade the king. The pair — Oyomesi for the throne, Ogboni for the law — is the distinction the paper tests.
]

== 1.4 The Igbo Village Republic

The Igbo are the examinable case of government *without* a paramount ruler, and the paper
sets at least one question on them every year. The unit of government was the *village*
or the *village group*; the ruling body was the *council of elders*, the *Ofo* title
holders and the heads of the families, who met in the *Obi* or the village square and
decided by consensus. There was no king to consult and none to depose, because the
authority to decide was distributed rather than concentrated.

Four institutions did the work that a king and a civil service did elsewhere. The *age
grades* organised labour, defence and public works, and gave every adult a defined
standing in the village. The *title societies* — *Ozo*, *Nze*, *Eze* — conferred rank
that was earned rather than inherited, so that influence followed achievement and wealth
rather than birth. The *oracle*, and the priests of the local deity, settled matters that
the elders could not, and gave the community a final authority beyond any living man. And
the *market association* and the *women's council* governed trade and could, as in the
Aba women's war of 1929, act politically against a policy the village rejected.

#table(
  columns: (1.15fr, 1.8fr, 1.85fr),
  inset: (x: 5pt, y: 4.3pt),
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Institution],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 7.9pt, weight: "bold", fill: white)[Why it is not a chiefdom],
  ),
  [Council of elders], [legislated and judged for the village], [authority is collective, not personal],
  [Age grades], [labour, defence, public works, social control], [standing is by age set, open to all],
  [Ozo / Nze title societies], [conferred rank and a voice in the assembly], [rank is earned, not inherited],
  [The oracle and its priests], [final judgement in disputed and sacred matters], [authority is religious, not dynastic],
  [The women's council], [regulated markets and could protest policy], [women governed without the men's leave],
)

#concept-box("Why “stateless” is the wrong word")[
  The Igbo had no *state* in the sense of a single sovereign with a capital, but they had *government*: law, courts, taxation by levy, defence and public works, all provided by institutions. The examinable words are *acephelous* (headless) and *republican* (authority in the assembly, not in a person). An option that says the Igbo had no government is wrong; an option that says they had no centralised authority is right.
]

== 1.5 What the Three Systems Share, and What the Colonial Power Did With Them

All three systems were legitimate in the only sense that matters for colonial
administration: the people obeyed them. All three collected tax, settled disputes and
raised men for defence. What differed was the *shape* of authority — one centre in the
emirate, one centre checked by kingmakers in the Yoruba kingdoms, and many centres in
Igboland — and that shape decided how easily a foreign power could govern through it.

Lugard's indirect rule needed a chief who could collect tax, keep order and be held
responsible. The emirate offered exactly that, and the Yoruba kingdoms offered an Oba
surrounded by chiefs who could be slotted into the system. The Igbo village offered
nobody of the kind, so the British appointed *Warrant Chiefs* — men with a warrant but
no traditional authority — and the system collapsed under them. That is the bridge into
Chapter 2, and the reason the next chapter begins where this one ends.

#shortcut-box("Three systems, three words")[
  + *Emirate* — hierarchy. Ask for the Emir, the council, the Alkali court.
  + *Yoruba* — kingmakers. Ask for the Oyomesi, the Bashorun and the empty calabash.
  + *Igbo* — assembly. Ask for the elders, the age grades and the Ozo title.
]

== 1.6 Four Worked Questions

#worked-example(
  1,
  "Naming the system from its institutions",
  [A political system in which the ruler is advised by a council of seven chiefs, whose head may compel him to abdicate, is best described as

    A. the Hausa–Fulani emirate \\
    B. the Igbo village republic \\
    C. the Yoruba chieftaincy system \\
    D. the warrant chief system],
  [
    *Step 1 — take the identifying detail.* Seven chiefs who can compel abdication is not a general feature of monarchy; it is the Oyomesi.

    *Step 2 — attach the detail.* The Oyomesi belong to Oyo and the Yoruba kingdoms, not to the emirate, where the council advised but could not remove the Emir, and not to Igboland, where there was no throne at all.

    *Step 3 — eliminate the rest.* The emirate has an Emirate Council but no kingmakers; the village republic has neither; the warrant chiefs were a colonial invention of the 1900s.

    *Answer: C.*
  ],
  tier: "FOUNDATION",
)

#worked-example(
  2,
  "Which system had no central ruler?",
  [Which of the following is a feature of the pre-colonial Igbo political system?

    A. A hereditary paramount ruler crowned by the Oyomesi \\
    B. Government by a council of elders and age grades \\
    C. An emirate council headed by a Waziri \\
    D. A centralised bureaucracy paid from zakat],
  [
    *Step 1 — read the stem for the system.* The question is about the Igbo, so the answer must name an Igbo institution.

    *Step 2 — test each option.* The Oyomesi is Yoruba; the Waziri and the zakat are emirate institutions; only the council of elders and the age grades are Igbo.

    *Step 3 — check the principle.* The Igbo system is acephalous: authority sits in the assembly and the age set, not in a person.

    *Answer: B.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  3,
  "The function of a named institution",
  [The main function of the Alkali courts in the pre-colonial emirate was to

    A. advise the Emir on the appointment of district heads \\
    B. collect zakat and jizya on behalf of the Emir \\
    C. administer Islamic law in civil and criminal cases \\
    D. elect a new Emir when the throne fell vacant],
  [
    *Step 1 — translate the name.* *Alkali* is the judge; the court is a court.

    *Step 2 — match function to institution.* Advice belonged to the Emirate Council, taxation to the district and village heads, and succession to the kingmakers of the emirate — the council and the caliphate.

    *Step 3 — confirm.* The Alkali courts applied the Sharia, with appeal to the Emir, which is why the emirate is called a theocratic as well as a centralised system.

    *Answer: C.*
  ],
  tier: "UTME STANDARD",
)

#worked-example(
  4,
  "Why indirect rule held in one region and not another",
  [Indirect rule was more successful in Northern Nigeria than in Eastern Nigeria mainly because

    A. the north was more densely populated \\
    B. the north already had centralised authority with courts and a treasury \\
    C. the east had no system of law before the British arrived \\
    D. the north had been a British protectorate for longer],
  [
    *Step 1 — state what indirect rule requires.* A chief who can tax, judge and be held responsible — that is, a centralised authority with institutions beneath it.

    *Step 2 — apply it to each region.* The emirate supplied all three. The Igbo village supplied law and government but no single chief, so the British created Warrant Chiefs who lacked legitimacy.

    *Step 3 — eliminate the decoys.* Population is irrelevant; the east had law — custom, the elders and the oracle; and the north was not a protectorate for longer than the south in any sense that matters.

    *Answer: B.*
  ],
  tier: "JAMB CHALLENGE",
)

== 1.7 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [The pre-colonial emirate system was introduced into Hausaland through], [the British conquest of 1903], [the Fulani jihad of 1804], [the Sokoto agreement of 1914], [the trans-Saharan trade of the fifteenth century])

#mcq(2, [In the Yoruba kingdom of Oyo, the body that could compel the Alaafin to abdicate was the], [Ogboni], [Emirate Council], [Oyomesi], [Council of Elders])

#mcq(3, [A political system in which authority is exercised by a council of elders, age grades and title societies, without a paramount ruler, is said to be], [monarchical], [theocratic], [acephalous], [federal])

#mcq(4, [The Warrant Chiefs were appointed by the British in Eastern Nigeria because], [the people asked for them], [there was no traditional paramount chief to rule through], [the existing chiefs refused to collect tax], [the colonial office required elected chiefs])

#answer-key-grid(("B", "C", "C", "B"))

#answer-notes((
  ("B", [The emirate was a product of the 1804 jihad led by Usman dan Fodio; the British met it in 1903 and used it, which is why the option naming 1903 is the trap.]),
  ("C", [The Oyomesi, seven kingmakers headed by the Bashorun, made and unmade the Alaafin. The Ogboni shared judicial authority but did not choose the king.]),
  ("C", [Acephalous means headless: government without a single paramount ruler. It is not the same as stateless, because law, tax and defence still existed.]),
  ("B", [Indirect rule needed a chief with traditional authority. Where none existed the British invented one, and the Warrant Chiefs of the east are the classic failure of the system.]),
))

#diagram-fig("diagrams/recap_gov2_ch01.svg",
  "Chapter 1 recap card: the emirate, the Yoruba chieftaincy and the Igbo village republic.", width: 76%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Three systems held the territory that became Nigeria. The emirate was centralised, hierarchical and theocratic: an Emir advised by an Emirate Council, district and village heads beneath him, Alkali courts applying the Sharia, and zakat and jizya paying for it all. The Yoruba kingdom was centralised too, but the Oba was checked by the Oyomesi, seven kingmakers headed by the Bashorun who could compel an unjust king to die, with the Ogboni guarding the law, the Balogun commanding the army and the Iyalode speaking for the women. The Igbo village was acephalous and republican: elders, age grades, Ozo title societies, the oracle and the women's council, with authority distributed and decisions taken by consensus. The colonial power needed a chief with a treasury and a court, found one in the north and the west, and invented one in the east — which is the whole of Chapter 2.
  ]
]

#chapter-checklist("Before you leave Chapter 1", (
  [Name the four institutions of the emirate and say what each did.],
  [Explain the difference between the Emirate Council and the Oyomesi in one sentence.],
  [Say why the Igbo system is called acephalous and republican, and why it is not stateless.],
  [Name the four Igbo institutions that did the work of a government.],
  [Explain, in two sentences, why indirect rule fitted the north better than the east.],
))

#concept-box("Carry this into Chapter 2")[
  The colonial state did not abolish these systems; it sat on top of them. Chapter 2 follows
  the machinery that was built above the emirate, the Oba and the village — company rule,
  the protectorate, the amalgamation of 1914 and indirect rule itself — because every later
  question about regionalism, about native authorities and about the Warrant Chiefs begins
  with the bargain struck between the British and the rulers they found.
]

#include "drill_ch01.typ"
