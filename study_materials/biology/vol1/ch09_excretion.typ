#import "template.typ": *

#current-chapter.update("Chapter 9: Excretion and Homeostasis")
#pagebreak()

#chapter-opener(
  9,
  "Excretion and Homeostasis",
  subtitle: "Excretory Products and Organs, the Kidney and the Nephron, the Liver, the Skin, and How the Body Holds Its Own Conditions Steady",
  syllabus-ref: "Sec. B • Topic 8",
  utme-weight: "1–2 Qs every year",
)

#focus-radar(
  objectives: (
    "Define excretion and name the excretory organs and their products.",
    "Label the kidney and describe the structure of a nephron.",
    "Explain ultrafiltration and selective reabsorption.",
    "List the functions of the liver.",
    "Explain how the skin and the kidney keep temperature and water balance steady.",
  ),
  hotspots: (
    "\"The functional unit of the kidney is the …\" — nephron.",
    "\"The nitrogenous waste in urine is …\" — urea, formed in the liver from excess amino acids.",
    "\"The process by which useful substances return to the blood is …\" — selective reabsorption.",
    "\"The gland that controls water balance is the …\" — pituitary, through ADH.",
    "\"Sweating cools the body because …\" — evaporation of sweat takes latent heat from the skin.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Calling the lungs an excretory organ *and* a respiratory organ without saying why — they excrete *carbon dioxide*, which is a metabolic waste. (2) Saying urine contains glucose — it does not, because all the glucose is reabsorbed. (3) Confusing the *kidney* with the *bladder*: the kidney filters, the bladder stores.",
)

// ============================================================================
// SECTION 9.1
// ============================================================================
== 9.1 Excretion and the Excretory Organs

*Excretion* is the removal from the body of the waste products of metabolism. It is not the same as egestion, which removes undigested food from the gut.

#table(
  columns: (1.2fr, 1.3fr, 1.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Organ],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Excretory product],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Note],
  ),

  [*Kidneys*], [Urea, excess salts, water], [The main excretory organ; urine leaves through the ureters],
  [*Lungs*], [Carbon dioxide and water vapour], [Removed in exhaled air],
  [*Skin*], [Water, salts, small amounts of urea], [In sweat; also important in cooling],
  [*Liver*], [Bile pigments (from broken-down haemoglobin)], [Passed out in faeces — but made in the liver],
)

#v(4pt)

#concept-box("Where urea comes from")[
  Excess amino acids cannot be stored. In the liver they are broken down by *deamination*: the amino group is removed and converted to *urea*, and the rest of the molecule is used as fuel. The urea passes into the blood and is filtered out by the kidneys. This is why a high-protein diet produces more urea.
]

// ============================================================================
// SECTION 9.2
// ============================================================================
== 9.2 The Kidney and the Nephron

#diagram-fig("diagrams/ch09_kidney.svg",
  "A kidney in section: cortex outside, medulla within, pelvis collecting the urine. The nephrons run between cortex and medulla.")

#diagram-fig("diagrams/ch09_nephron.svg",
  "A nephron: Bowman's capsule and glomerulus, the coiled tubules, the loop of Henle and the collecting duct.")

#table(
  columns: (1.2fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part of the nephron],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[What happens there],
  ),

  [*Glomerulus*], [A knot of capillaries inside the capsule, at high pressure],
  [*Bowman's capsule*], [Ultrafiltration: water, glucose, salts and urea are forced out of the blood into the capsule],
  [*Proximal tubule*], [Selective reabsorption of all glucose, most salts and much water],
  [*Loop of Henle*], [Further reabsorption of water; the loop sets up the salt gradient of the medulla],
  [*Distal tubule*], [Reabsorption adjusted by hormones, especially ADH],
  [*Collecting duct*], [Final water reabsorption under ADH control; urine passes to the pelvis],
)

#v(4pt)

#concept-box("Two processes, one order")[
  *Ultrafiltration* is physical: blood pressure forces small molecules out of the glomerulus, while cells and large proteins stay behind. *Selective reabsorption* is active: the useful small molecules — all the glucose, most of the salts, most of the water — are taken back into the blood. What is left is urine: water, urea and excess salts.
]

#worked-example(
  1,
  "Why there is no glucose in urine",
  tier: "UTME STANDARD",
  [A healthy person's urine contains no glucose, even though glucose is filtered into Bowman's capsule. Explain.],
  [
    Glucose is small enough to be filtered out of the glomerulus, so it does enter the capsule.

    As the filtrate passes along the *proximal tubule*, the glucose is reabsorbed into the blood capillaries by *active transport*, and every molecule is normally recovered.

    *Answer:* glucose is completely reabsorbed from the proximal tubule, so none reaches the urine. (If glucose does appear, it suggests the blood glucose is so high that the carriers are saturated — a sign of diabetes.)
  ],
)

// ============================================================================
// SECTION 9.3
// ============================================================================
== 9.3 The Liver

The liver is the body's chemical factory. It has more functions than any other organ, and examiners like to ask for five of them.

#table(
  columns: (1.25fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Detail],
  ),

  [*Deamination*], [Breaks down excess amino acids into urea and a fuel residue],
  [*Bile production*], [Makes bile, which emulsifies fats; stored in the gall bladder],
  [*Storage*], [Stores glycogen, iron, and vitamins A, D and B12],
  [*Detoxification*], [Breaks down alcohol and drugs],
  [*Heat production*], [Its many reactions release heat, helping to keep the body warm],
  [*Breakdown of old red cells*], [Haemoglobin is broken down and the iron is stored],
)

// ============================================================================
// SECTION 9.4
// ============================================================================
== 9.4 The Skin and Temperature Control

#diagram-fig("diagrams/ch09_skin.svg",
  "A section through the skin: epidermis, dermis, hair, sweat gland, blood vessels and fat layer.")

#table(
  columns: (1fr, 1.45fr, 1.45fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[When the body is too hot],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[When the body is too cold],
  ),

  [Sweat glands], [Produce more sweat; evaporation cools the skin], [Produce little or no sweat],
  [Blood vessels], [Vasodilation: capillaries widen, more heat is lost], [Vasoconstriction: capillaries narrow, heat is conserved],
  [Hair erector muscles], [Relax; hairs lie flat], [Contract; hairs stand up, trapping air],
  [Shivering], [None], [Rapid muscle contraction releases heat],
  [Metabolic rate], [Normal], [Raised by adrenaline and thyroxine],
)

#v(4pt)

#worked-example(
  2,
  "Negative feedback in one loop",
  tier: "JAMB CHALLENGE",
  [After drinking a large volume of water, a person produces a large volume of dilute urine. Explain the control of this response.],
  [
    Drinking water raises the water content of the blood, so its concentration falls. This is detected by *osmoreceptors* in the hypothalamus.

    The pituitary gland secretes *less ADH* (antidiuretic hormone). Less ADH makes the collecting ducts of the kidney *less permeable to water*, so less water is reabsorbed and more dilute urine is produced.

    As water is lost, blood concentration rises again and ADH secretion increases — a *negative feedback* loop returning the system to its set point.
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
  + name four excretory organs and the product of each;
  + label the kidney and the nephron;
  + explain ultrafiltration and selective reabsorption in order;
  + list five functions of the liver;
  + explain how the skin responds to heat and to cold;
  + describe one negative-feedback loop involving ADH.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 9 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    The kidney filters everything small out of the blood, then takes back what the body needs; what remains is urine. The liver makes the urea that the kidney removes. The skin and the hormones adjust the water and the heat — and all of it runs on negative feedback.
  ]
]

#diagram-fig("diagrams/recap_ch09.svg",
  "Chapter 9 recap card: the organs, the nephron, the liver and the feedback loop.", width: 62%)

// ============================================================================
// SECTION 9.6 — TWO-MINUTE SET
// ============================================================================
== 9.6 Chapter 9 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The functional unit of the kidney is the], [neurone], [nephron], [alveolus], [villus])
#mcq(2, [Urea is formed in the], [kidney], [liver], [skin], [bladder])
#mcq(3, [The process by which useful substances return from the kidney tubule to the blood is], [ultrafiltration], [selective reabsorption], [osmoregulation], [deamination])
#mcq(4, [When the body is too hot, the blood vessels in the skin], [constrict], [dilate], [remain unchanged], [close completely])

#answer-key-grid(("B", "B", "B", "B"))
