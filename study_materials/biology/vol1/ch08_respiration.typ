#import "template.typ": *

#current-chapter.update("Chapter 8: Respiration and Gas Exchange")
#pagebreak()

#chapter-opener(
  8,
  "Respiration and Gas Exchange",
  subtitle: "Aerobic and Anaerobic Respiration, the Human Breathing System, the Mechanism of Breathing, and the Alveolus",
  syllabus-ref: "Sec. B • Topic 7",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish respiration from breathing.",
    "Write the equations for aerobic and anaerobic respiration, in animals and in yeast.",
    "State the features of an efficient respiratory surface.",
    "Label the human breathing system and explain the mechanism of inhalation and exhalation.",
    "Explain oxygen debt and the after-effects of vigorous exercise.",
  ),
  hotspots: (
    "\"The products of anaerobic respiration in muscle are …\" — lactic acid (and energy), no carbon dioxide.",
    "\"In yeast, anaerobic respiration produces …\" — ethanol and carbon dioxide.",
    "\"Gas exchange in the lungs occurs in the …\" — alveoli.",
    "\"During inhalation the diaphragm …\" — contracts and flattens.",
    "\"Respiration is a chemical process; breathing is a physical one.\"",
  ),
  trap-summary: "Three slips decide this chapter. (1) Writing that muscles produce alcohol — only *yeast* does; muscles produce *lactic acid*. (2) Saying breathing and respiration are the same — breathing moves air, respiration releases energy in cells. (3) Forgetting that anaerobic respiration releases *much less* energy than aerobic: about 2 ATP against roughly 36.",
)

// ============================================================================
// SECTION 8.1
// ============================================================================
== 8.1 Two Processes With Similar Names

*Breathing* is the physical movement of air into and out of the lungs. *Respiration* is the chemical breakdown of food inside cells to release energy. One happens in the chest; the other happens in every living cell of the body.

#formula-box("The two equations")[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Aerobic (with oxygen):]
  #align(center)[
    #text(size: 10.5pt)[glucose + oxygen → carbon dioxide + water + *energy*]
  ]
  #align(center)[
    #text(size: 9.4pt, fill: jamb-slate)[$"C"_6 "H"_12 "O"_6 + 6 "O"_2 -> 6 "CO"_2 + 6 "H"_2 "O" + 36 "ATP"$ (approximately)]
  ]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: trap-red)[Anaerobic in muscle:]
  #v(1pt)
  #text(size: 10.5pt)[glucose → lactic acid + *a little energy*]
  #v(3pt)
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: tip-amber)[Anaerobic in yeast (fermentation):]
  #v(1pt)
  #text(size: 10.5pt)[glucose → ethanol + carbon dioxide + *a little energy*]
]

#v(2pt)

#table(
  columns: (1fr, 1.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Aerobic],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Anaerobic],
  ),

  [Oxygen needed], [Yes], [No],
  [Products in muscle], [$"CO"_2$ + water], [Lactic acid],
  [Products in yeast], [$"CO"_2$ + water], [Ethanol + $"CO"_2$],
  [Energy released], [Large (about 36 ATP)], [Small (about 2 ATP)],
  [Where], [Mitochondria], [Cytoplasm],
  [Duration], [Can continue indefinitely while food and oxygen last], [Short bursts only; lactic acid accumulates],
)

#v(4pt)

#concept-box("Oxygen debt")[
  During hard exercise the muscles cannot get oxygen fast enough, so they respire anaerobically and *lactic acid* builds up. The acid is what makes muscles ache and cramp. After exercise stops, the body keeps breathing fast to take in the oxygen needed to break the lactic acid down to carbon dioxide and water — the extra oxygen owed is the *oxygen debt*.
]

#worked-example(
  1,
  "Why a sprinter gasps at the finish",
  tier: "UTME STANDARD",
  [After a 400 m race a runner breathes deeply for several minutes. Explain why, using the idea of oxygen debt.],
  [
    During the race the leg muscles worked faster than the blood could supply oxygen, so they respired *anaerobically*, producing *lactic acid* and only a little energy.

    Once the race is over, the lactic acid must be removed. The body oxidises it to carbon dioxide and water, and that requires oxygen — the *oxygen debt*. Deep, rapid breathing after the race repays the debt.

    *Answer:* the extra breathing supplies the oxygen needed to oxidise the accumulated lactic acid.
  ],
)

// ============================================================================
// SECTION 8.2
// ============================================================================
== 8.2 Respiratory Surfaces

#table(
  columns: (1.25fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it matters],
  ),

  [Large surface area], [More gas can diffuse in the same time],
  [Thin (one cell thick)], [Short diffusion distance],
  [Moist], [Gases must dissolve before they diffuse],
  [Rich blood supply], [Maintains a steep concentration gradient],
  [Permeable], [Gases can cross the surface],
)

#v(4pt)

#diagram-fig("diagrams/ch08_alveolus.svg",
  "An alveolus and its capillary. Oxygen diffuses one way, carbon dioxide the other — both down their concentration gradients.")

// ============================================================================
// SECTION 8.3
// ============================================================================
== 8.3 The Human Breathing System

#diagram-fig("diagrams/ch08_lungs.svg",
  "The human breathing system: nose, trachea, bronchi, bronchioles and alveoli, with the rib cage and diaphragm below.")

#table(
  columns: (1.15fr, 2.0fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Part],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Function],
  ),

  [*Nose*], [Warms, moistens and filters the incoming air; hairs trap dust],
  [*Trachea*], [Carries air to the lungs; kept open by C-shaped rings of cartilage],
  [*Bronchi*], [Two tubes, one to each lung],
  [*Bronchioles*], [Fine branches that end in the alveoli],
  [*Alveoli*], [The gas-exchange surface: about 300 million of them, giving a huge area],
  [*Ribs and intercostal muscles*], [Move the rib cage up and out during inhalation],
  [*Diaphragm*], [A sheet of muscle that flattens on inhalation, increasing the volume of the thorax],
  [*Pleural membranes*], [Reduce friction between the lungs and the chest wall],
)

#v(4pt)

#table(
  columns: (1fr, 1.4fr, 1.4fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Inhalation],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Exhalation],
  ),

  [Intercostal muscles], [Contract], [Relax],
  [Rib cage], [Moves up and out], [Moves down and in],
  [Diaphragm], [Contracts and flattens], [Relaxes and becomes domed],
  [Volume of thorax], [Increases], [Decreases],
  [Pressure in lungs], [Falls below atmospheric], [Rises above atmospheric],
  [Air], [Flows in], [Flows out],
)

#v(4pt)

#worked-example(
  2,
  "Breathing is not diffusion",
  tier: "JAMB CHALLENGE",
  [Explain why breathing movements are necessary even though gas exchange across the alveoli happens by diffusion.],
  [
    Diffusion only works while a *concentration gradient* exists: oxygen must be richer in the alveolar air than in the blood, and carbon dioxide richer in the blood than in the air.

    If the air in the lungs were not replaced, oxygen would fall and carbon dioxide would rise until the gradients disappeared and exchange stopped. *Breathing* replaces the alveolar air, restoring the gradients.

    *Answer:* breathing refreshes the air so that the concentration gradients needed for diffusion are maintained.
  ],
)

// ============================================================================
// SECTION 8.4 — CHECKLIST
// ============================================================================
== 8.4 Chapter 8 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + distinguish breathing from respiration in one sentence each;
  + write the equations for aerobic and for both kinds of anaerobic respiration;
  + name the products in muscle and in yeast, and say where each occurs;
  + list the five features of an efficient respiratory surface;
  + label the breathing system and describe inhalation and exhalation;
  + explain oxygen debt and why the breathing rate stays high after exercise.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Breathing brings air; respiration releases energy. With oxygen you get carbon dioxide, water and about thirty-six units of energy; without it, muscle makes lactic acid and yeast makes alcohol. Breathing exists only to keep the gradients at the alveoli steep.
  ]
]

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: the equations, the surface features and the breathing mechanism.", width: 62%)

// ============================================================================
// SECTION 8.5 — TWO-MINUTE SET
// ============================================================================
== 8.5 Chapter 8 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Anaerobic respiration in human muscle produces], [ethanol and carbon dioxide], [lactic acid], [carbon dioxide and water], [glucose and oxygen])
#mcq(2, [Gas exchange in the lungs takes place in the], [trachea], [bronchi], [bronchioles], [alveoli])
#mcq(3, [During inhalation, the diaphragm], [relaxes and becomes domed], [contracts and flattens], [contracts and becomes domed], [moves upwards])
#mcq(4, [Anaerobic respiration in yeast produces], [lactic acid], [ethanol and carbon dioxide], [carbon dioxide and water], [only energy])

#answer-key-grid(("B", "D", "B", "B"))
