#import "template.typ": *

#current-chapter.update("Chapter 9: Excretion and Homeostasis")
#pagebreak()

#chapter-opener(
  9,
  "Excretion and Homeostasis",
  subtitle: "The Excretory Organs, the Kidney and the Nephron, the Skin, and How the Body Keeps Its Internal Conditions Constant",
  syllabus-ref: "Sec. B • Topic 8",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the excretory organs and the waste each removes.",
    "Label the kidney and the nephron, and explain ultrafiltration and selective reabsorption.",
    "Explain the role of the skin in excretion and temperature control.",
    "Define homeostasis and give three examples of negative feedback.",
    "Explain how the body regulates water balance, blood sugar and temperature.",
  ),
  hotspots: (
    "\"The functional unit of the kidney is the …\" — nephron.",
    "\"Urea is formed in the …\" — liver, from the deamination of excess amino acids.",
    "\"The process by which useful substances are returned to the blood is …\" — selective reabsorption.",
    "\"Which organ excretes carbon dioxide?\" — the lungs.",
    "\"Homeostasis is …\" — the maintenance of a constant internal environment.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Calling the lungs “the respiratory organ” when the question asks for an *excretory* organ — the lungs excrete carbon dioxide and water vapour, so they are both. (2) Saying the kidney *makes* urea — the *liver* makes it; the kidney removes it. (3) Confusing *ultrafiltration* (in the glomerulus, driven by pressure) with *reabsorption* (in the tubules, by diffusion and active transport).",
)

// ============================================================================
// SECTION 9.1
// ============================================================================
== 9.1 Excretion

*Excretion* is the removal of the waste products of metabolism from the body. It is not the same as egestion, which is the removal of undigested food from the gut.

#table(
  columns: (1.1fr, 1.5fr, 1.7fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Organ],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Waste removed],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Notes],
  ),

  [Lungs], [Carbon dioxide and water vapour], [Products of aerobic respiration; removed in exhaled air],
  [Kidneys], [Urea, excess salts, excess water, some drugs], [The main excretory organs; the urine they produce passes to the bladder],
  [Skin (sweat glands)], [Water, salts and a little urea], [Sweat also cools the body],
  [Liver], [Bile pigments from the breakdown of haemoglobin], [Passed out in the faeces — the pigment is the waste, the faeces are not],
)

#trap-box("The liver makes urea; the kidney removes it")[
  Excess amino acids cannot be stored. The *liver* removes the nitrogen-containing part (*deamination*) and converts it to *urea*, a much less harmful substance. The *kidney* then filters the urea out of the blood and excretes it in urine. A question that asks "where is urea formed?" wants the *liver*; one that asks "where is urea removed from the blood?" wants the *kidney*.

  There is no such thing as "the liver excretes urea" — the liver *produces* it, and producing is not excreting.
]

#worked-example(
  1,
  "Why excretion is necessary",
  tier: "FOUNDATION",
  [Explain why the removal of carbon dioxide and urea is essential to life.]
  ,
  [
    Carbon dioxide dissolves in the blood to form a weak acid. If it accumulated, the blood would become dangerously acidic and enzymes throughout the body would stop working properly.

    Urea is toxic. If it were allowed to build up, it would poison the cells; the liver converts ammonia — which is far more toxic — into urea so that it can be carried safely to the kidneys in a dilute solution.

    *Answer:* both would poison the body or disrupt its pH if they were allowed to accumulate; excretion keeps the internal environment constant.
  ],
)

// ============================================================================
// SECTION 9.2
// ============================================================================
== 9.2 The Kidney and the Nephron

Each kidney contains about a million *nephrons*, the microscopic tubes in which urine is made. Each nephron begins with a *Bowman's capsule* surrounding a knot of capillaries called the *glomerulus*, and continues as a long tubule that finally joins a *collecting duct*.

#diagram-fig("diagrams/ch09_nephron.svg",
  "The nephron, with the five numbered stages. Ultrafiltration happens in the capsule; reabsorption happens all along the tubule.")

#table(
  columns: (1.2fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens],
  ),

  [*Ultrafiltration* in the glomerulus], [Blood arrives under high pressure. Water, glucose, amino acids, urea and salts are forced out of the capillary into the Bowman's capsule. Blood cells and large proteins are too big to pass, so they stay in the blood],
  [*Selective reabsorption* in the proximal tubule], [All the glucose and amino acids, and most of the water and salts, are taken back into the blood by diffusion and active transport. This is selective because only useful substances are returned],
  [*Loop of Henle*], [Further water is reabsorbed, so the urine becomes more concentrated],
  [*Distal tubule*], [The amount of water and salt reabsorbed is adjusted by hormones according to the body's needs],
  [*Collecting duct*], [The remaining fluid — urine — passes to the pelvis of the kidney, then down the ureter to the bladder],
)

#concept-box("Why the urine of a dehydrated person is dark")[
  When the body is short of water, the pituitary gland releases more *ADH* (antidiuretic hormone). ADH makes the collecting ducts *more permeable to water*, so more water is reabsorbed and less urine — darker and more concentrated — is produced. When a person drinks a lot, less ADH is released, more water stays in the urine, and it is pale and plentiful. This is *negative feedback* in action.
]

#worked-example(
  2,
  "Glucose in the urine",
  tier: "UTME STANDARD",
  [Glucose is filtered out of the blood in the glomerulus, yet urine normally contains no glucose. Explain.]
  ,
  [
    Glucose is small enough to be forced out of the blood during ultrafiltration, so it *does* enter the Bowman's capsule.

    However, the cells of the proximal tubule reabsorb it *completely* by active transport and return it to the blood, so none leaves in the urine.

    In *diabetes mellitus* the blood glucose is so high that the tubules cannot reabsorb it all, and glucose appears in the urine — which is why testing urine for glucose is a diagnostic test for diabetes.

    *Answer:* the glucose is completely reabsorbed in the proximal tubule; it appears in the urine only when the blood level exceeds the tubule's capacity.
  ],
)

// ============================================================================
// SECTION 9.3
// ============================================================================
== 9.3 The Skin

The skin is the largest organ of the body. It excretes, protects, senses and — most importantly for the exam — *controls body temperature*.

#diagram-fig("diagrams/ch09_skin.svg",
  "A section through the skin. Sweat glands excrete and cool; blood vessels dilate or constrict to lose or conserve heat.")

#table(
  columns: (1.15fr, 2.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
  ),

  [Epidermis], [Outer, dead, keratinised layer; waterproof barrier against bacteria and water loss; continually replaced],
  [Dermis], [Contains sweat glands, blood vessels, nerve endings, hair follicles and sebaceous (oil) glands],
  [Sweat gland], [Produces sweat — water, salts and urea — which cools the body as it evaporates],
  [Blood capillaries], [Dilate near the surface to lose heat, constrict to conserve it],
  [Fat (adipose) layer], [Insulates the body and stores energy],
  [Hair and sebaceous glands], [Hair traps air for insulation; sebum waterproofs the skin],
  [Melanin], [Pigment that protects against ultraviolet light],
)

#table(
  columns: (1.2fr, 1.5fr, 1.55fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[When the body is too hot],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[When the body is too cold],
  ),

  [Sweating], [Increased], [Reduced],
  [Blood vessels in the skin], [Dilate — more blood near the surface, so more heat is lost], [Constrict — less blood near the surface, so heat is conserved],
  [Hair], [Lies flat], [Stands up, trapping a layer of insulating air],
  [Muscles], [Relaxed; shivering does not occur], [Shiver — rapid contraction releases heat],
  [Metabolic rate], [Normal], [Increases, releasing more heat],
)

#worked-example(
  3,
  "Why do we shiver?",
  tier: "UTME STANDARD",
  [Explain why a person shivers when cold, and why sweating stops at the same time.]
  ,
  [
    Shivering is the rapid, involuntary contraction of skeletal muscles. Contraction requires respiration, and respiration releases heat as a by-product, so shivering warms the body.

    At the same time sweating stops, because sweat cools the body by evaporation — the opposite of what is needed. The blood vessels in the skin also constrict, so less warm blood flows near the surface and less heat is lost to the air.

    *Answer:* shivering generates heat and the other cooling mechanisms are switched off; together they raise and conserve body temperature.
  ],
)

// ============================================================================
// SECTION 9.4
// ============================================================================
== 9.4 Homeostasis

*Homeostasis* is the maintenance of a constant internal environment — temperature, water content, blood glucose, pH and salt concentration — despite changes outside the body.

It works by *negative feedback*: a change is detected, a response is triggered, and the response reverses the change.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The three feedback loops the syllabus names]
  #v(5pt)
  #grid(
    columns: (1fr, 1.35fr, 1.35fr),
    column-gutter: 10pt,
    block(width: 100%, fill: white, stroke: 0.6pt + jamb-mint-border, radius: 5pt, inset: 8pt)[
      #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: jamb-navy)[Temperature]
      #v(2pt)
      #text(size: 8.8pt)[Too hot → sweating and vasodilation. Too cold → shivering, vasoconstriction and less sweating.]
    ],
    block(width: 100%, fill: white, stroke: 0.6pt + jamb-mint-border, radius: 5pt, inset: 8pt)[
      #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: jamb-navy)[Water balance]
      #v(2pt)
      #text(size: 8.8pt)[Too little water → more ADH → more water reabsorbed → concentrated urine. Too much → less ADH → dilute urine.]
    ],
    block(width: 100%, fill: white, stroke: 0.6pt + jamb-mint-border, radius: 5pt, inset: 8pt)[
      #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: jamb-navy)[Blood glucose]
      #v(2pt)
      #text(size: 8.8pt)[Too high → insulin → glucose stored as glycogen. Too low → glucagon → glycogen converted back to glucose.]
    ],
  )
]

#worked-example(
  4,
  "A negative feedback question",
  tier: "JAMB CHALLENGE",
  [A student drinks two litres of water in ten minutes. Describe the changes in the volume and concentration of the urine produced over the next two hours, and explain them.]
  ,
  [
    Immediately after drinking, the blood becomes more dilute. The *osmoreceptors* in the hypothalamus detect this and reduce the amount of *ADH* released by the pituitary gland.

    With less ADH, the collecting ducts of the kidney become *less permeable to water*, so less water is reabsorbed and more passes into the urine. The volume of urine rises and its concentration falls — it is pale and plentiful.

    As the excess water is removed, the blood concentration returns to normal, ADH release increases again, and urine volume falls back to normal.

    *Answer:* a large volume of dilute urine, produced by reduced ADH and therefore reduced water reabsorption, returning to normal as the body rehydrates.
  ],
)

// ============================================================================
// SECTION 9.5 — CHECKLIST
// ============================================================================
== 9.5 Chapter 9 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define excretion and distinguish it from egestion;
  + name the four excretory organs and the waste each removes;
  + say where urea is formed and where it is removed;
  + label a nephron and describe ultrafiltration, selective reabsorption and the collecting duct;
  + explain why urine is sometimes dark and sometimes pale;
  + describe the skin's role in excretion and in temperature control;
  + define homeostasis and explain negative feedback with three examples;
  + explain the ADH mechanism in full.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 9 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The liver makes urea, the kidneys filter it out, and the skin sweats some of it away. Every one of those organs is also a thermostat or a water meter, and each keeps the body constant by detecting a change and reversing it — homeostasis by negative feedback.
  ]
]

#diagram-fig("diagrams/recap_ch09.svg",
  "Chapter 9 recap card: the excretory organs, the nephron, homeostasis and the skin.", width: 100%)

// ============================================================================
// SECTION 9.6 — TWO-MINUTE SET
// ============================================================================
== 9.6 Chapter 9 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [The functional unit of the kidney is the], [nephron], [neurone], [alveolus], [villus])
#mcq(2, [Urea is formed in the], [kidney], [liver], [skin], [bladder])
#mcq(3, [The process by which glucose is returned to the blood from the kidney tubule is], [ultrafiltration], [selective reabsorption], [deamination], [osmoregulation])
#mcq(4, [Homeostasis is best defined as], [the removal of waste products], [the maintenance of a constant internal environment], [the control of body movement], [the digestion of food])

#answer-key-grid(("A", "B", "B", "B"))
]


#include "drill_ch09.typ"
