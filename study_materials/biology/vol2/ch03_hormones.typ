#import "template.typ": *

#current-chapter.update("Chapter 3: Hormones and Chemical Control")
#pagebreak()

#chapter-opener(
  3,
  "Hormones and Chemical Control",
  subtitle: "Ductless Glands, the Pituitary as Master Gland, Insulin and Glucagon, ADH, Adrenaline, Thyroxine, and Plant Hormones",
  syllabus-ref: "Sec. B • Topic 3",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define a hormone and explain why endocrine glands are called ductless.",
    "Name the main endocrine glands, the hormone each secretes and the effect of that hormone.",
    "Explain how insulin and glucagon keep blood glucose steady by negative feedback.",
    "Explain the role of ADH in water balance, and of adrenaline in the fight-or-flight response.",
    "Describe the effects of thyroxine and growth hormone, and the disorders caused by too little or too much.",
    "Explain how auxin produces phototropism and geotropism in a plant.",
  ),
  hotspots: (
    "\"The hormone that lowers blood glucose is …\" — insulin, from the β cells of the islets of Langerhans.",
    "\"Diabetes mellitus is caused by …\" — a shortage of insulin (or failure of the cells to respond to it).",
    "\"ADH increases the reabsorption of water from the …\" — collecting duct of the kidney.",
    "\"The hormone secreted in response to fear is …\" — adrenaline, from the adrenal medulla.",
    "\"A plant shoot bends towards light because …\" — auxin accumulates on the shaded side and makes those cells elongate.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Mixing up *insulin* and *glucagon*: insulin *lowers* blood glucose, glucagon *raises* it. (2) Saying a hormone is carried by a duct or a nerve: hormones travel in the *blood*, and endocrine glands have *no ducts*. (3) Writing that auxin makes the lit side grow faster: auxin collects on the *shaded* side, so the shaded side elongates and the shoot bends *towards* the light.",
)

// ============================================================================
// SECTION 3.1
// ============================================================================
== 3.1 Hormones and the Endocrine System

The nervous system is fast but short-lived. The body also needs a system for slow, long-lasting control — growth over years, the menstrual cycle over a month, the level of sugar in the blood from hour to hour. That system is *chemical control*, and its messengers are *hormones*.

#concept-box("What a hormone is")[
  A *hormone* is a chemical substance produced by an endocrine gland, secreted directly into the blood, and carried to a *target organ* where it produces a specific effect. \
  *Endocrine glands are ductless* — they have no tube leading to a surface or a cavity, so their secretions pass straight into the blood capillaries inside the gland.
]

#diagram-fig("diagrams/ch03_endocrine.svg",
  "The main endocrine glands and their positions in the body. All are ductless; the pituitary hangs beneath the hypothalamus and controls several of the others.")

#table(
  columns: (1.05fr, 1.15fr, 2.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gland],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Hormone],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Main effect],
  ),

  [*Pituitary* (anterior)], [Growth hormone (GH)], [Stimulates growth of bones and muscles; too little causes dwarfism, too much gigantism or acromegaly],
  [*Pituitary* (posterior)], [Antidiuretic hormone (ADH)], [Increases reabsorption of water from the kidney tubules; too little causes diabetes insipidus],
  [*Thyroid*], [Thyroxine], [Controls the rate of metabolism; needs iodine; too little causes goitre and cretinism, too much causes Graves' disease],
  [*Pancreas* (islets)], [Insulin], [Lowers blood glucose by converting glucose to glycogen in the liver and muscles],
  [*Pancreas* (islets)], [Glucagon], [Raises blood glucose by converting glycogen back to glucose],
  [*Adrenal medulla*], [Adrenaline], [Prepares the body for emergencies: faster heart, faster breathing, more glucose released],
  [*Adrenal cortex*], [Cortisol and aldosterone], [Stress response; salt and water balance],
  [*Ovary*], [Oestrogen and progesterone], [Female secondary sexual characters; control of the menstrual cycle and pregnancy],
  [*Testis*], [Testosterone], [Male secondary sexual characters; sperm production],
  [*Thymus*], [Thymosin], [Development of the immune system in childhood],
)

#shortcut-box("The one-line answer for each gland")[
  Pituitary → growth (and it bosses the other glands). Thyroid → speed of metabolism. Pancreas → blood sugar. Adrenal → emergency. Gonads → reproduction. If a question names a gland and asks for one effect, use the phrase on the right of the arrow and you have the mark.
]

// ============================================================================
// SECTION 3.2
// ============================================================================
== 3.2 The Pituitary — the Master Gland

The pituitary is a pea-sized gland hanging on a stalk beneath the *hypothalamus*. It is called the *master gland* because several of its hormones do not act on the body directly: they act on *other endocrine glands* and tell them to secrete.

#table(
  columns: (1.5fr, 2.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pituitary hormone],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
  ),

  [Growth hormone (GH)], [Stimulates the growth of bones and muscles; secretion is greatest in childhood and adolescence],
  [Thyroid-stimulating hormone (TSH)], [Stimulates the thyroid to release thyroxine],
  [Adrenocorticotrophic hormone (ACTH)], [Stimulates the adrenal cortex to release cortisol],
  [Follicle-stimulating hormone (FSH)], [In the female, stimulates the ovary to develop a follicle; in the male, stimulates sperm production],
  [Luteinising hormone (LH)], [Triggers ovulation and the formation of the corpus luteum; stimulates testosterone production in the male],
  [Prolactin], [Stimulates milk production in the mammary glands],
  [Antidiuretic hormone (ADH)], [Increases water reabsorption in the kidney — the body's water-saving hormone],
)

#trap-box("The pituitary obeys the hypothalamus")[
  The pituitary is called the master gland, but it is not the boss. The *hypothalamus* monitors the blood and tells the pituitary what to release. A question that asks \"which part of the brain links the nervous and endocrine systems?\" wants *hypothalamus*, not pituitary. The hypothalamus is nervous tissue; the pituitary is a gland.
]

// ============================================================================
// SECTION 3.3
// ============================================================================
== 3.3 Blood Glucose — Insulin and Glucagon

Blood glucose must stay within a narrow range, because the brain runs on glucose and too much of it damages blood vessels and kidneys. Two hormones from the *islets of Langerhans* in the pancreas hold the level steady, and the mechanism is the standard example of negative feedback.

#diagram-fig("diagrams/ch03_glucose.svg",
  "Negative feedback control of blood glucose. A rise stimulates insulin, which lowers it; a fall stimulates glucagon, which raises it. Either way the original change is reversed.")

#table(
  columns: (1.1fr, 1.35fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Hormone],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Secreted when],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Action],
  ),

  [*Insulin*], [Blood glucose is too high, e.g. after a meal], [Liver and muscles convert glucose to glycogen; cells take up more glucose; the level falls],
  [*Glucagon*], [Blood glucose is too low, e.g. after fasting or exercise], [Liver converts glycogen back to glucose and releases it into the blood; the level rises],
)

#concept-box("Diabetes mellitus — the exam favourite")[
  *Cause:* the islets of Langerhans secrete too little insulin, or the body cells no longer respond to it. \
  *Symptoms:* glucose appears in the urine, the person passes large volumes of urine and is always thirsty, loses weight and is tired. \
  *Why the urine is sweet:* the glucose concentration in the blood exceeds the amount the kidney can reabsorb, so the excess passes out in the urine. \
  *Treatment:* insulin injections (not tablets, because insulin is a protein and would be digested in the stomach), a controlled diet and exercise.
]

#worked-example(
  1,
  "Tracing the feedback loop",
  tier: "UTME STANDARD",
  [Explain how the body responds to a rise in blood glucose after a heavy meal, and why the response stops when the level returns to normal.],
  [
    After the meal, glucose is absorbed from the ileum into the blood, so the concentration rises above the normal range.

    - *Detected by:* the β cells of the islets of Langerhans in the pancreas.
    - *Hormone released:* insulin, into the blood.
    - *Target:* liver and muscle cells.
    - *Action:* glucose is taken up by cells and converted to glycogen for storage; the liver stops releasing glucose.
    - *Result:* blood glucose falls back towards the normal range.

    The response stops because the *stimulus has been removed*: as glucose falls, the β cells are no longer stimulated, insulin secretion stops, and any insulin already in the blood is broken down by the liver. That self-cancelling pattern is what makes it *negative* feedback.
  ],
)

// ============================================================================
// SECTION 3.4
// ============================================================================
== 3.4 Water Balance — ADH

Water balance is controlled by *antidiuretic hormone (ADH)*, made in the hypothalamus and released from the posterior pituitary. Its target is the *collecting duct* of the kidney nephron.

#table(
  columns: (1.5fr, 1.5fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[ADH secretion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Urine],
  ),

  [Blood too concentrated (dehydration, salty food, heavy sweating)], [Increases], [Small volume, concentrated — water is reabsorbed],
  [Blood too dilute (after drinking a lot of water)], [Decreases], [Large volume, dilute — water is not reabsorbed],
)

#block(width: 100%, fill: jamb-light, stroke: 0.7pt + jamb-border, radius: 7pt, inset: 9pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-navy)[The loop in five steps]
]

+ Water is lost by sweating, breathing and urine, so the blood becomes more concentrated.
+ *Osmoreceptors* in the hypothalamus detect the change.
+ The posterior pituitary releases more *ADH*.
+ ADH makes the collecting ducts of the kidney more permeable, so more water is reabsorbed into the blood.
+ The blood becomes more dilute and less urine is produced — the original change is reversed.

#trap-box("ADH is not aldosterone")[
  *ADH* controls *water*; it makes the urine more concentrated. *Aldosterone* from the adrenal cortex controls *salt* (sodium) reabsorption, and water follows the salt. If the question says *water balance* or *volume of urine*, answer ADH. If it says *salt balance* or *sodium*, answer aldosterone.
]

// ============================================================================
// SECTION 3.5
// ============================================================================
== 3.5 Adrenaline, Thyroxine and Growth Hormone

#concept-box("Adrenaline — the emergency hormone")[
  Secreted by the *adrenal medulla* when the body is frightened, excited or under stress. Its effects all serve one purpose: to make more energy available and to deliver it faster. \
  *Effects:* heart rate and blood pressure rise; breathing rate and depth increase; the liver converts glycogen to glucose; blood is diverted from the skin and gut to the muscles and brain; the pupils dilate; hairs stand on end. \
  This is the *fight-or-flight response*, and it is another example of negative feedback — once the danger has passed, adrenaline secretion falls and the body calms down.
]

#table(
  columns: (1.15fr, 1.35fr, 1.95fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Hormone involved],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What is seen],
  ),

  [*Goitre*], [Too little thyroxine (often from lack of iodine)], [The thyroid swells as it tries to trap more iodine; weight gain, slow pulse, tiredness],
  [*Cretinism*], [Too little thyroxine in a child], [Stunted growth and severe mental retardation unless treated early],
  [*Graves' disease* (hyperthyroidism)], [Too much thyroxine], [Weight loss, fast pulse, nervousness, bulging eyes],
  [*Dwarfism*], [Too little growth hormone in childhood], [Short but normally proportioned body],
  [*Gigantism*], [Too much growth hormone before the growth plates close], [Exceptionally tall],
  [*Acromegaly*], [Too much growth hormone in an adult], [Enlarged hands, feet and jaw — the long bones can no longer grow],
  [*Diabetes mellitus*], [Too little insulin], [Glucose in the urine, thirst, weight loss],
  [*Diabetes insipidus*], [Too little ADH], [Large volumes of dilute urine, constant thirst],
)

#shortcut-box("Too little or too much — the pattern")[
  Nearly every hormone question can be answered from one of two tables: *what the hormone does* and *what happens when it is missing*. Learn the pair for thyroxine (goitre, cretinism), growth hormone (dwarfism, gigantism) and insulin (diabetes mellitus) and you have covered most of the past questions on this chapter.
]

// ============================================================================
// SECTION 3.6
// ============================================================================
== 3.6 Plant Hormones and Tropisms

Plants have no nerves, but they coordinate too — with *plant growth substances* (plant hormones). The best known is *auxin* (indole acetic acid), made in the shoot tip and in the root tip.

A *tropism* is a growth movement of a plant towards or away from a stimulus. Because it is a growth movement it is permanent and slow — quite unlike the rapid reflex of an animal.

#diagram-fig("diagrams/ch03_auxin.svg",
  "Auxin and phototropism. With light from all sides, auxin is spread evenly and the shoot grows straight. With light from one side, auxin collects on the shaded side, those cells elongate, and the shoot bends towards the light.")

#table(
  columns: (1.3fr, 1.4fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Tropism],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stimulus],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Response and cause],
  ),

  [*Phototropism*], [Light], [Shoot grows *towards* light (positive) — auxin gathers on the shaded side, those cells elongate more],
  [*Geotropism* (gravitropism)], [Gravity], [Root grows *downwards* (positive); shoot grows *upwards* (negative) — auxin gathers on the lower side, where it *inhibits* root cells but *stimulates* shoot cells],
  [*Hydrotropism*], [Water], [Root grows *towards* moisture],
  [*Thigmotropism*], [Touch or contact], [Tendrils curl around a support],
  [*Chemotropism*], [Chemicals], [Pollen tube grows towards the ovule],
)

#trap-box("Auxin stimulates shoots and inhibits roots")[
  The same hormone does opposite things in different organs. In a *shoot*, a high concentration of auxin *stimulates* elongation; in a *root*, the same concentration *inhibits* it. This is why auxin collecting on the lower side makes a shoot bend *up* (the lower side grows more) but makes a root bend *down* (the lower side grows less). Learn the two effects together, or the geotropism question will catch you.
]

#worked-example(
  2,
  "Explaining phototropism in order",
  tier: "JAMB CHALLENGE",
  [A seedling in a dark box has light entering through a hole on one side. After a few days the shoot has bent towards the hole. Explain the response in the correct sequence.],
  [
    - Auxin is produced in the *shoot tip*.
    - Because light destroys or redistributes auxin, auxin moves *away from the light* and accumulates on the *shaded side* of the shoot.
    - A higher concentration of auxin makes the cells on the shaded side *elongate more* than the cells on the lit side.
    - Unequal elongation makes the shoot curve, so the tip points *towards* the light.

    *Answer in one line:* auxin accumulates on the shaded side, the shaded cells elongate more, and the shoot bends towards the light. This is *positive phototropism*.
  ],
)

// ============================================================================
// SECTION 3.7 — CHECKLIST
// ============================================================================
== 3.7 Chapter 3 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define a hormone and explain what "ductless" means;
  + name six endocrine glands, the hormone each secretes and one effect of that hormone;
  + explain why the pituitary is called the master gland, and what the hypothalamus does;
  + trace the negative feedback loop that keeps blood glucose steady, naming insulin and glucagon;
  + describe the cause, symptoms and treatment of diabetes mellitus;
  + explain how ADH controls the volume and concentration of urine;
  + list four effects of adrenaline and say why they are useful in an emergency;
  + state the effects of too little and too much thyroxine and growth hormone;
  + define tropism and explain phototropism and geotropism in terms of auxin;
  + explain why auxin stimulates shoot cells but inhibits root cells.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Ductless glands pour hormones into the blood, and each hormone acts only on cells with the right receptor. Insulin lowers glucose and glucagon raises it; ADH saves water; adrenaline prepares the body for action; thyroxine sets the speed of metabolism; and auxin bends a shoot towards the light.
  ]
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: hormones, blood glucose, the pituitary and auxin.", width: 100%)

// ============================================================================
// SECTION 3.8 — TWO-MINUTE SET
// ============================================================================
== 3.8 Chapter 3 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [The hormone that lowers the concentration of glucose in the blood is], [glucagon], [adrenaline], [insulin], [thyroxine])
#mcq(2, [Endocrine glands are described as ductless because they], [secrete hormones into the blood], [have no blood supply], [secrete through a tube onto the skin], [produce enzymes only])
#mcq(3, [The hormone that increases the reabsorption of water in the kidney is], [ADH], [insulin], [oestrogen], [glucagon])
#mcq(4, [A shoot bends towards light because auxin], [collects on the shaded side and makes those cells elongate], [collects on the lit side and makes those cells elongate], [is destroyed on the shaded side], [moves down the stem to the roots])

#answer-key-grid(("C", "A", "A", "A"))
]
