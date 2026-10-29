#import "template.typ": *

#current-chapter.update("Chapter 7: Transport in Animals")
#pagebreak()

#chapter-opener(
  7,
  "Transport in Animals",
  subtitle: "Why Large Animals Need a Transport System, Blood and Its Components, the Heart, Double Circulation, and Blood Vessels",
  syllabus-ref: "Sec. B • Topic 6",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain why a large animal needs a circulatory system.",
    "Name the components of blood and give the function of each.",
    "Label the heart and trace the path of blood through it.",
    "Explain what double circulation is and why it is an advantage.",
    "Compare arteries, veins and capillaries.",
    "Name the main blood groups and explain why matching matters.",
  ),
  hotspots: (
    "\"Blood flows from the left ventricle into the …\" — the aorta.",
    "\"The vessel carrying oxygenated blood to the heart is the …\" — pulmonary vein.",
    "\"Double circulation means …\" — blood passes through the heart twice in one complete circuit.",
    "\"Which vessel has valves?\" — veins.",
    "\"Which blood cells carry oxygen?\" — red blood cells, using haemoglobin.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Assuming every artery carries oxygenated blood — the *pulmonary artery* carries deoxygenated blood to the lungs. (2) Saying capillaries have “thick walls” — they are *one cell thick* so that exchange can occur. (3) Confusing the two sides of the heart: the *right* side receives deoxygenated blood from the body and sends it to the lungs; the *left* side receives oxygenated blood from the lungs and sends it to the body.",
)

// ============================================================================
// SECTION 7.1
// ============================================================================
== 7.1 Why a Transport System?

A single-celled organism such as *Amoeba* can obtain oxygen and food, and get rid of waste, by diffusion, because every part of its body is very close to the outside world. A large, active, warm-blooded animal cannot: its surface area is far too small relative to its volume.

A transport system solves three problems at once:

+ it *carries oxygen and food to* every cell, however deep inside the body;
+ it *carries carbon dioxide and urea away* from every cell, to the lungs and kidneys;
+ it *distributes heat* and *carries hormones* from the glands that make them to the organs they act on.

#concept-box("The surface area problem")[
  As an animal gets bigger, its volume (which needs oxygen) grows far faster than its surface (which can absorb oxygen). A mammal cannot breathe through its skin, so it needs lungs to create a large internal surface, and a heart to move the oxygen from that surface to the tissues. The transport system exists because of a geometric fact.
]

// ============================================================================
// SECTION 7.2
// ============================================================================
== 7.2 Blood and Its Components

Blood is a tissue made of *plasma* and three kinds of cell.

#diagram-fig("diagrams/ch07_blood_cells.svg",
  "The components of blood: red cells, white cells, platelets and plasma.")

#table(
  columns: (1.15fr, 2.3fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Component],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Structure and function],
  ),

  [*Plasma*], [A straw-coloured liquid, about 55 % of blood. Carries the blood cells, glucose, amino acids, fats, salts, hormones, antibodies, urea and carbon dioxide.],
  [*Red blood cells (erythrocytes)*], [Biconcave discs with *no nucleus*, packed with the red pigment *haemoglobin*. Haemoglobin combines with oxygen in the lungs and releases it in the tissues. Made in the red bone marrow; live about 120 days.],
  [*White blood cells (leucocytes)*], [Have a nucleus and can change shape. Two main jobs: *phagocytosis* — engulfing and digesting bacteria — and *antibody production*.],
  [*Platelets (thrombocytes)*], [Cell fragments with no nucleus. They start the clotting reaction that converts fibrinogen into fibrin, sealing a wound.],
)

#table(
  columns: (1fr, 1.5fr, 1.5fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Blood group],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Antigens on the red cells],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Antibodies in the plasma],
  ),

  [A], [A], [anti-B],
  [B], [B], [anti-A],
  [AB], [A and B], [neither],
  [O], [neither], [both anti-A and anti-B],
)

#v(4pt)

#shortcut-box("Who can give to whom")[
  *O* is the universal donor (no antigens to react with), *AB* is the universal recipient (no antibodies to react with). Giving the wrong group causes the red cells to clump — *agglutination* — and can be fatal. A group-B patient given group-A blood is reacting to the A antigen with their anti-A antibody.
]

#worked-example(
  1,
  "A blood transfusion question",
  tier: "UTME STANDARD",
  [A patient of blood group A is given blood of group B. Explain what happens and why.]
  ,
  [
    Group A blood carries *A antigens* on the red cells and *anti-B antibodies* in the plasma. Group B blood carries *B antigens*.

    When group B red cells enter the patient's blood, the patient's *anti-B antibodies* recognise the B antigen as foreign and bind to it. The red cells clump together — *agglutination* — and are destroyed.

    The clumps can block small blood vessels, and the breakdown products can damage the kidneys. The reaction can be fatal.

    *Answer:* the recipient's anti-B antibodies agglutinate the donor's B-antigen red cells.
  ],
)

// ============================================================================
// SECTION 7.3
// ============================================================================
== 7.3 The Heart

The mammalian heart is a muscular pump with *four chambers*: two thin-walled *atria* (singular: atrium) at the top, which receive blood, and two thick-walled *ventricles* below, which pump it out.

#diagram-fig("diagrams/ch07_heart.svg",
  "The mammalian heart. The right side handles deoxygenated blood, the left side oxygenated; the septum keeps the two apart.")

#table(
  columns: (1.25fr, 2.2fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
  ),

  [Right atrium], [Receives deoxygenated blood from the body through the *vena cava*],
  [Right ventricle], [Pumps deoxygenated blood to the lungs through the *pulmonary artery*; its wall is thinner because the lungs are close],
  [Left atrium], [Receives oxygenated blood from the lungs through the *pulmonary vein*],
  [Left ventricle], [Pumps oxygenated blood to the whole body through the *aorta*; its wall is the *thickest*, because it must generate the highest pressure],
  [Tricuspid valve], [Between right atrium and right ventricle; stops backflow],
  [Bicuspid (mitral) valve], [Between left atrium and left ventricle; stops backflow],
  [Semilunar valves], [At the base of the aorta and pulmonary artery; stop blood falling back into the ventricles],
  [Septum], [The muscular wall dividing left from right; prevents oxygenated and deoxygenated blood mixing],
  [Coronary arteries], [Supply the heart muscle itself with blood],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The cardiac cycle in one paragraph]
  #v(3pt)
  #text(size: 10pt)[
    Blood enters the relaxed atria from the veins. The atria contract, pushing blood through the open valves into the ventricles. The ventricles then contract; the rising pressure snaps the valves shut (the "lub" sound) and forces blood out through the semilunar valves into the aorta and pulmonary artery (the "dub"). The valves closing is what makes the heartbeat audible — the sound is not the muscle itself.
  ]
]

#worked-example(
  2,
  "Why the left wall is thicker",
  tier: "UTME STANDARD",
  [Explain why the wall of the left ventricle is thicker than that of the right ventricle.]
  ,
  [
    The right ventricle pumps blood only to the *lungs*, which lie close to the heart, so a relatively low pressure is enough.

    The left ventricle pumps blood to the *whole body* — to the brain, the limbs and the abdomen — and must overcome much greater resistance in a far longer circuit.

    A thicker muscular wall generates a higher pressure. That is why the left ventricle has the thickest wall in the heart and why the pulse is felt most strongly in arteries carrying blood from the left side.

    *Answer:* the left ventricle pumps to the whole body at high pressure; the right only to the nearby lungs at low pressure.
  ],
)

// ============================================================================
// SECTION 7.4
// ============================================================================
== 7.4 Double Circulation

Mammals have a *double* circulation: blood passes through the heart *twice* in one complete circuit.

#diagram-fig("diagrams/ch07_circulation.svg",
  "Double circulation: the pulmonary loop (heart → lungs → heart) and the systemic loop (heart → body → heart).")

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The complete route of a red blood cell]
  #v(4pt)
  Right atrium → right ventricle → pulmonary artery → *lungs* → pulmonary vein → left atrium → left ventricle → aorta → *body tissues* → vena cava → right atrium.
  #v(3pt)
  #text(size: 9.6pt)[Learn that sequence as one sentence. Most of the marks in this chapter are hidden inside it.]
]

#table(
  columns: (1.3fr, 2.15fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Advantage of double circulation],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Explanation],
  ),

  [Blood reaches the body at full pressure], [The blood is re-pressurised by the left ventricle after its journey through the lungs, so the tissues receive it briskly],
  [Oxygenated and deoxygenated blood never mix], [The septum keeps the two circuits apart, so the tissues always receive fully oxygenated blood],
  [Efficient oxygen delivery], [Warm-blooded animals need a high and constant supply of oxygen for respiration and heat production],
  [Slower flow through the lungs], [Blood passes the lung capillaries at a lower pressure, protecting them from damage],
)

#worked-example(
  3,
  "Correcting a wrong statement",
  tier: "JAMB CHALLENGE",
  [A student writes: "In a mammal, oxygenated blood from the lungs enters the right atrium and is pumped to the body by the right ventricle." State two errors and correct them.]
  ,
  [
    First error: oxygenated blood from the lungs enters the *left* atrium, not the right. Blood from the lungs returns through the pulmonary vein to the left side of the heart.

    Second error: the blood is pumped to the body by the *left* ventricle, not the right. The right ventricle pumps deoxygenated blood to the lungs.

    Corrected statement: "In a mammal, oxygenated blood from the lungs enters the left atrium, passes into the left ventricle, and is pumped to the body through the aorta."
  ],
)

// ============================================================================
// SECTION 7.5
// ============================================================================
== 7.5 Blood Vessels

#table(
  columns: (1fr, 1.45fr, 1.45fr, 1.15fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Artery],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Vein],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Capillary],
  ),

  [Direction], [Away from the heart], [Towards the heart], [Between the smallest arteries and veins],
  [Wall], [Thick, muscular, elastic], [Thin, less muscular], [One cell thick],
  [Lumen], [Narrow], [Wide], [Very narrow — the width of one red cell],
  [Valves], [None], [Present, to stop backflow], [None],
  [Pressure], [High, pulsating], [Low, steady], [Low],
  [Blood], [Oxygenated (except the pulmonary artery)], [Deoxygenated (except the pulmonary vein)], [Changing from arterial to venous],
  [Function], [Carry blood rapidly away from the heart], [Return blood slowly to the heart], [Exchange of gases, food and waste with the tissues],
)

#table(
  columns: (1.4fr, 2.05fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Vessel],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Carries],
  ),

  [Aorta], [Oxygenated blood from the left ventricle to the body],
  [Vena cava], [Deoxygenated blood from the body to the right atrium],
  [Pulmonary artery], [Deoxygenated blood from the right ventricle to the lungs],
  [Pulmonary vein], [Oxygenated blood from the lungs to the left atrium],
  [Hepatic portal vein], [Blood rich in digested food from the intestines to the liver],
  [Renal artery and vein], [To and from the kidneys],
)

#trap-box("Artery is not a synonym for oxygenated")[
  “Artery” means *away from the heart*, and “vein” means *towards the heart* — nothing more. The two exceptions are the *pulmonary artery*, which carries deoxygenated blood to the lungs, and the *pulmonary vein*, which carries oxygenated blood back. Both exceptions appear in exams almost every year, and both are worth a mark.
]

// ============================================================================
// SECTION 7.6
// ============================================================================
== 7.6 The Lymphatic System

Not all the fluid that leaves the capillaries returns to them. The remainder is collected as *lymph* by a network of blind-ended *lymph vessels*, passed through *lymph nodes*, and returned to the blood through the thoracic duct near the heart.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[What lymph does]
  #v(4pt)
  • returns tissue fluid to the blood, keeping the blood volume steady;
  • carries *fat* absorbed in the lacteals away from the small intestine;
  • *lymph nodes* filter the lymph and contain white blood cells, so the system is part of the body's defence;
  • lymph has no red cells and no pump — it is moved by the squeezing of muscles and by valves.
]

// ============================================================================
// SECTION 7.7 — CHECKLIST
// ============================================================================
== 7.7 Chapter 7 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + explain why a large animal needs a transport system;
  + name the four components of blood and the function of each;
  + state the antigens and antibodies of the four ABO blood groups;
  + label the four chambers, four valves, septum and great vessels of the heart;
  + trace a red blood cell all the way round the double circulation;
  + explain why the left ventricle wall is thicker;
  + compare arteries, veins and capillaries in a table of six rows;
  + name the four vessels that are exceptions to the “artery = oxygenated” rule, and say why.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Right side to the lungs, left side to the body; arteries away, veins back, capillaries one cell thick where the exchange happens; plasma, red cells, white cells and platelets make the blood; and the whole thing goes round twice for every complete circuit.
  ]
]

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: double circulation, the heart, the vessels and the blood.", width: 100%)

// ============================================================================
// SECTION 7.8 — TWO-MINUTE SET
// ============================================================================
== 7.8 Chapter 7 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [Blood leaves the left ventricle through the], [pulmonary artery], [vena cava], [aorta], [pulmonary vein])
#mcq(2, [Which vessel carries deoxygenated blood?], [Aorta], [Pulmonary vein], [Pulmonary artery], [Renal artery])
#mcq(3, [The wall of a capillary is one cell thick because], [it has no muscle], [it must allow exchange of materials], [it carries blood slowly], [it is narrow])
#mcq(4, [A person of blood group O has], [both A and B antigens], [anti-A and anti-B antibodies], [only anti-A antibodies], [no antibodies])

#answer-key-grid(("C", "C", "B", "B"))
]


#include "drill_ch07.typ"
