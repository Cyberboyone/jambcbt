#import "template.typ": *

#current-chapter.update("Chapter 7: Transport in Animals")
#pagebreak()

#chapter-opener(
  7,
  "Transport in Animals",
  subtitle: "Blood and Its Cells, Arteries Veins and Capillaries, the Mammalian Heart, Double Circulation and the Lymphatic System",
  syllabus-ref: "Sec. B • Topic 6",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Name the components of blood and give the function of each.",
    "Compare artery, vein and capillary in structure and relate each to its function.",
    "Label the four chambers, the valves and the great vessels of the mammalian heart.",
    "Trace the double circulation, naming each vessel in order.",
    "State the function of the lymphatic system and of lymph nodes.",
  ),
  hotspots: (
    "\"Oxygenated blood leaves the left ventricle through the …\" — the aorta.",
    "\"The vessel that carries oxygenated blood to the heart is the …\" — pulmonary vein (the exception to the rule).",
    "\"Which vessel has the thickest muscular wall?\" — the artery.",
    "\"Red blood cells are adapted for oxygen transport because …\" — biconcave, no nucleus, haemoglobin.",
    "\"The valve between the left atrium and the left ventricle is the …\" — bicuspid (mitral) valve.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Calling the *pulmonary artery* oxygenated — it is the one artery carrying deoxygenated blood to the lungs. (2) Forgetting that the *right* side of the heart handles deoxygenated blood. (3) Writing that veins carry blood *towards* the heart while arteries carry it *away*, then applying this to the pulmonary vessels and getting confused — learn the two exceptions once, properly.",
)

// ============================================================================
// SECTION 7.1
// ============================================================================
== 7.1 Blood

Blood is a tissue made of a liquid plasma in which three kinds of cell are suspended.

#table(
  columns: (1.1fr, 1.5fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Component],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
  ),

  [*Plasma*], [Pale yellow liquid, about 55 % of blood], [Carries dissolved food, hormones, carbon dioxide, urea and heat],
  [*Red blood cells*], [Biconcave discs; no nucleus; contain haemoglobin], [Transport oxygen from the lungs to the tissues],
  [*White blood cells*], [Colourless; have a nucleus; some engulf microbes], [Defence against disease],
  [*Platelets*], [Cell fragments], [Blood clotting at a wound],
)

#v(4pt)

#concept-box("Why the red cell has no nucleus")[
  A mature red blood cell has *no nucleus* and a *biconcave* shape. The missing nucleus leaves more room for haemoglobin; the biconcave shape gives a large surface area for oxygen uptake and lets the cell squeeze through capillaries. Each red cell carries about 270 million haemoglobin molecules, and each haemoglobin molecule can bind four oxygen molecules.
]

// ============================================================================
// SECTION 7.2
// ============================================================================
== 7.2 Blood Vessels

#table(
  columns: (1fr, 1.3fr, 1.3fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Artery],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Vein],
    text(font: "DejaVu Sans", size: 7.8pt, weight: "bold", fill: white)[Capillary],
  ),

  [Wall], [Thick, muscular, elastic], [Thin, less muscular], [One cell thick],
  [Lumen], [Narrow], [Wide], [Very narrow],
  [Valves], [Absent], [Present], [Absent],
  [Direction], [Away from the heart], [Towards the heart], [Between cells],
  [Blood], [Oxygenated (except pulmonary artery)], [Deoxygenated (except pulmonary vein)], [Changing],
  [Pressure], [High], [Low], [Very low],
  [Function], [Carry blood away at high pressure], [Return blood to the heart], [Exchange of materials with cells],
)

#v(4pt)

#worked-example(
  1,
  "Matching structure to function",
  tier: "FOUNDATION",
  [Explain why the wall of an artery is thick and elastic while a capillary wall is only one cell thick.],
  [
    An artery receives blood directly from the heart at high pressure, so it needs a *thick muscular and elastic wall* to withstand the pressure and to stretch and recoil with each heartbeat, smoothing the flow.

    A capillary exists for *exchange*: substances must diffuse between blood and tissue, so the wall must be as thin as possible — one cell thick — to give a short diffusion distance.

    *Answer:* arteries resist high pressure; capillaries minimise the distance for diffusion.
  ],
)

// ============================================================================
// SECTION 7.3
// ============================================================================
== 7.3 The Mammalian Heart

#diagram-fig("diagrams/ch07_heart.svg",
  "The mammalian heart in section. Follow the arrows: vena cava → right atrium → right ventricle → pulmonary artery → lungs → pulmonary vein → left atrium → left ventricle → aorta.")

#table(
  columns: (1.1fr, 2.1fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Job],
  ),

  [*Right atrium*], [Receives deoxygenated blood from the body through the vena cava],
  [*Right ventricle*], [Pumps it to the lungs through the pulmonary artery],
  [*Left atrium*], [Receives oxygenated blood from the lungs through the pulmonary veins],
  [*Left ventricle*], [Pumps it round the whole body through the aorta — thickest wall],
  [*Tricuspid valve*], [Stops backflow from right ventricle to right atrium],
  [*Bicuspid (mitral) valve*], [Stops backflow from left ventricle to left atrium],
  [*Semilunar valves*], [At the base of the aorta and pulmonary artery; stop backflow into the ventricles],
  [*Septum*], [Separates the two sides so oxygenated and deoxygenated blood do not mix],
)

#v(4pt)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Double circulation in one line]
  #v(3pt)
  #text(size: 10pt)[
    Blood passes through the heart *twice* for each circuit: once to the lungs (*pulmonary circuit*) and once round the body (*systemic circuit*). This keeps the pressure high in the body circuit while protecting the lungs from it.
  ]
]

#worked-example(
  2,
  "Tracing one drop of blood",
  tier: "UTME STANDARD",
  [Starting from the vena cava, list in order the structures a red blood cell passes through before it returns to the vena cava.],
  [
    Vena cava → right atrium → tricuspid valve → right ventricle → semilunar valve → pulmonary artery → lungs (capillaries around the alveoli) → pulmonary veins → left atrium → bicuspid valve → left ventricle → semilunar valve → aorta → body capillaries → vena cava.

    Two checks: every *valve* is passed in the direction of flow, and the blood leaves the lungs *oxygenated* and returns *deoxygenated*. If either check fails, the route is wrong.
  ],
)

// ============================================================================
// SECTION 7.4
// ============================================================================
== 7.4 The Lymphatic System

Some fluid leaks from the blood capillaries into the tissues. It is returned by the *lymphatic system*: a network of vessels containing *lymph*, a clear fluid similar to plasma but without red cells.

#table(
  columns: (1.2fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
  ),

  [*Lymph capillaries*], [Collect excess tissue fluid and return it to the blood],
  [*Lacteals*], [Lymph vessels in the villi that absorb digested fats],
  [*Lymph nodes*], [Filter lymph and contain white cells that destroy microbes],
  [*Thoracic duct*], [Returns lymph to the blood through a vein near the heart],
)

#v(4pt)

#trap-box("Lymph has no pump")[
  Lymph is moved by the squeezing of *skeletal muscles* and by *valves* in the lymph vessels, not by a heart. This is why a person confined to bed can swell with tissue fluid: with no muscular movement, the lymph barely moves.
]

// ============================================================================
// SECTION 7.5 — CHECKLIST
// ============================================================================
== 7.5 Chapter 7 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + name the four components of blood and the function of each;
  + compare artery, vein and capillary on six features;
  + label the chambers, valves and great vessels of the heart;
  + trace the double circulation in order, without missing a valve;
  + explain why the left ventricle has the thickest wall;
  + state the function of lymph, lymph nodes and lacteals.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 7 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Blood is plasma plus red cells, white cells and platelets. Arteries carry blood away under pressure, veins return it with valves, capillaries exchange. The heart is two pumps in series, and the lymph system is the overflow return.
  ]
]

#diagram-fig("diagrams/recap_ch07.svg",
  "Chapter 7 recap card: blood, vessels, the heart and the circulation route.", width: 62%)

// ============================================================================
// SECTION 7.6 — TWO-MINUTE SET
// ============================================================================
== 7.6 Chapter 7 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Oxygenated blood leaves the heart through the], [pulmonary artery], [vena cava], [aorta], [pulmonary vein])
#mcq(2, [The blood vessel with the thickest muscular wall is the], [vein], [artery], [capillary], [venule])
#mcq(3, [The valve between the left atrium and the left ventricle is the], [tricuspid valve], [semilunar valve], [bicuspid valve], [pulmonary valve])
#mcq(4, [The component of blood that transports oxygen is the], [white blood cell], [platelet], [red blood cell], [plasma])

#answer-key-grid(("C", "B", "C", "C"))
