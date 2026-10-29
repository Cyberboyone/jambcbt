#import "template.typ": *

#current-chapter.update("Chapter 8: Respiration")
#pagebreak()

#chapter-opener(
  8,
  "Respiration and Gas Exchange",
  subtitle: "Aerobic and Anaerobic Respiration, the Alveolus, Breathing Movements, and the Difference Between Breathing and Respiration",
  syllabus-ref: "Sec. B • Topic 7",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Write the equation for aerobic respiration and give its site.",
    "Compare aerobic with anaerobic respiration in muscle and in yeast.",
    "Explain how the alveolus is adapted for gas exchange.",
    "Describe the mechanism of breathing — inspiration and expiration.",
    "Distinguish breathing from respiration, and respiration from photosynthesis.",
  ),
  hotspots: (
    "\"Anaerobic respiration in human muscle produces …\" — lactic acid, not alcohol.",
    "\"The products of anaerobic respiration in yeast are …\" — alcohol and carbon dioxide.",
    "\"Gas exchange in the lungs takes place in the …\" — alveoli.",
    "\"Which muscle contracts during inspiration?\" — the diaphragm and the intercostal muscles.",
    "\"Why is the alveolus wall one cell thick?\" — short diffusion distance.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Writing that anaerobic respiration in *muscle* makes alcohol — it makes *lactic acid*; alcohol is the yeast product. (2) Confusing *breathing* (moving air in and out) with *respiration* (releasing energy from glucose in cells). (3) Forgetting that respiration happens *all the time*, in daylight as well as at night, in plants as well as in animals.",
)

// ============================================================================
// SECTION 8.1
// ============================================================================
== 8.1 What Respiration Is

*Respiration* is the chemical breakdown of food — usually glucose — inside living cells, releasing energy. The energy is used for:

- *muscle contraction* and movement;
- *active transport* across membranes;
- *building large molecules* from small ones (protein synthesis, DNA replication);
- *maintaining body temperature* in warm-blooded animals;
- *transmitting nerve impulses*.

#trap-box("Breathing is not respiration")[
  *Breathing* (ventilation) is the mechanical movement of air into and out of the lungs. *Respiration* is the chemical reaction inside every cell. A dead body can be ventilated but cannot respire; a plant respires without breathing at all. Examiners use both words deliberately, and mixing them costs a mark every time.
]

// ============================================================================
// SECTION 8.2
// ============================================================================
== 8.2 Aerobic and Anaerobic Respiration

#diagram-fig("diagrams/ch08_respiration_compare.svg",
  "Aerobic against anaerobic respiration: the equations, the energy yield, the sites and the products.")

#formula-box("The two equations")[
  *Aerobic:* glucose + oxygen → carbon dioxide + water + a large amount of energy

  #align(center)[#text(font: "DejaVu Sans", size: 12pt, weight: "bold", fill: jamb-navy)[C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + energy]]

  *Anaerobic, in muscle:* glucose → lactic acid + a small amount of energy

  *Anaerobic, in yeast:* glucose → alcohol (ethanol) + carbon dioxide + a small amount of energy
]

#table(
  columns: (1.05fr, 1.45fr, 1.45fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Aerobic],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Anaerobic],
  ),

  [Oxygen], [Required], [Not required],
  [Site], [Cytoplasm, then mitochondria], [Cytoplasm only],
  [Products], [Carbon dioxide and water], [Lactic acid (muscle) or alcohol + carbon dioxide (yeast)],
  [Energy released], [Large — about 38 ATP per glucose], [Small — about 2 ATP per glucose],
  [When it happens], [All the time, in every living cell], [When oxygen is in short supply],
  [In humans], [Normal, everyday energy release], [During violent exercise, when the oxygen supply cannot keep up],
)

#concept-box("Why we pant after running")[
  During heavy exercise the muscles use oxygen faster than the blood can deliver it. They switch to anaerobic respiration and lactic acid accumulates. Lactic acid makes the muscle acidic and causes *cramp* and fatigue. After the exercise the body keeps breathing hard — *oxygen debt* — to supply the extra oxygen needed to break down the lactic acid and repay the debt.
]

#worked-example(
  1,
  "Two yeast experiments",
  tier: "UTME STANDARD",
  [Yeast is sealed in a flask with glucose solution and left for two days. State the products formed and explain how the apparatus could show them.]
  ,
  [
    In the absence of oxygen, yeast respires anaerobically: glucose is converted to *alcohol* and *carbon dioxide*, releasing a little energy.

    The carbon dioxide can be shown by bubbling the gas through limewater — it turns the limewater *milky*. The alcohol is detected by its smell, or by testing the liquid with acidified potassium dichromate, which turns from orange to green.

    *Answer:* alcohol and carbon dioxide; limewater for the carbon dioxide, the dichromate test or the smell for the alcohol.
  ],
)

#worked-example(
  2,
  "Cramp explained",
  tier: "JAMB CHALLENGE",
  [A runner who has sprinted 400 metres suddenly develops a painful cramp. Explain the cause and say why continued gentle exercise relieves it.]
  ,
  [
    During the sprint, the muscles respire anaerobically because oxygen cannot be delivered fast enough. Glucose is converted to *lactic acid*, which accumulates in the muscle cells.

    The lactic acid lowers the pH of the muscle, impairing enzyme action and causing the painful contraction of cramp.

    Continued gentle exercise keeps the blood flowing through the muscle, carrying the lactic acid away to the liver, where it is converted back to glucose using the extra oxygen taken in after the race — the *oxygen debt*. As the lactic acid is removed, the cramp eases.

    *Answer:* lactic acid accumulation from anaerobic respiration; gentle exercise speeds its removal and repays the oxygen debt.
  ],
)

// ============================================================================
// SECTION 8.3
// ============================================================================
== 8.3 The Respiratory Surface

An efficient respiratory surface has five properties, and the mammalian lung satisfies all five.

#table(
  columns: (1.2fr, 1.6fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it matters],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[How the alveolus achieves it],
  ),

  [Large surface area], [More gas can diffuse per unit time], [Hundreds of millions of alveoli, giving about 70 m²],
  [Thin], [Short diffusion distance], [Wall one cell thick, in contact with a capillary wall one cell thick],
  [Moist], [Gases must dissolve before they can diffuse], [A film of moisture lines every alveolus],
  [Good blood supply], [Keeps a steep concentration gradient], [A dense network of capillaries surrounding each alveolus],
  [Permeable], [Gas must cross easily], [Thin epithelium and capillary endothelium],
)

#diagram-fig("diagrams/ch08_alveolus.svg",
  "An alveolus and its capillary. Oxygen diffuses into the blood; carbon dioxide diffuses out.")

// ============================================================================
// SECTION 8.4
// ============================================================================
== 8.4 Breathing Movements

#table(
  columns: (1.1fr, 1.6fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Inspiration (breathing in)],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Expiration (breathing out)],
  ),

  [Intercostal muscles], [Contract], [Relax],
  [Rib cage], [Moves up and out], [Moves down and in],
  [Diaphragm], [Contracts and flattens], [Relaxes and becomes domed],
  [Thoracic volume], [Increases], [Decreases],
  [Pressure in the thorax], [Falls below atmospheric], [Rises above atmospheric],
  [Air], [Rushes in], [Is forced out],
)

#concept-box("Inflation without a pump")[
  The lungs contain no muscle. They are inflated because the *rib cage* and *diaphragm* enlarge the thoracic cavity, lowering the pressure inside it below atmospheric pressure. Air is then pushed in by the higher pressure outside — the lungs are sucked open, not blown up. That is why a puncture wound to the chest makes breathing impossible: the pressure difference is lost.
]

#worked-example(
  3,
  "Which gas moves which way?",
  tier: "FOUNDATION",
  [State, with a reason, the direction in which oxygen and carbon dioxide move at the alveolus.]
  ,
  [
    *Oxygen* moves from the *alveolus into the blood*, because the air in the alveolus has a higher oxygen concentration than the blood arriving at the lung.

    *Carbon dioxide* moves from the *blood into the alveolus*, because the blood arriving from the tissues has a higher carbon dioxide concentration than the air in the lung.

    Both move by *diffusion*, down their concentration gradients. The blood supply continuously removes oxygen and brings fresh carbon dioxide, which is what keeps the gradients steep.

    *Answer:* oxygen in, carbon dioxide out, both by diffusion down a concentration gradient.
  ],
)

// ============================================================================
// SECTION 8.5
// ============================================================================
== 8.5 Respiration in Plants

Plants respire too — day and night, in every living cell. In daylight this is easy to miss, because photosynthesis is faster and its product, oxygen, masks the oxygen that respiration is using.

#table(
  columns: (1.2fr, 1.6fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[ ],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Photosynthesis],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Respiration],
  ),

  [Raw materials], [Carbon dioxide and water], [Glucose and oxygen],
  [Products], [Glucose and oxygen], [Carbon dioxide and water],
  [Energy], [Light energy is *stored*], [Chemical energy is *released*],
  [Light needed], [Yes], [No],
  [Chlorophyll needed], [Yes], [No],
  [When], [Only in daylight (or artificial light)], [All the time],
  [Where], [Chloroplasts], [Cytoplasm and mitochondria],
  [In plants], [Green parts only], [Every living cell, including roots],
)

#trap-box("“Plants photosynthesise by day and respire by night” — false")[
  Plants respire *all the time*, exactly like animals. In daylight they carry out *both* processes at once; photosynthesis is simply faster, so the plant is a net *taker* of carbon dioxide and a net *giver* of oxygen. At night photosynthesis stops and only respiration continues, so the plant is then a net giver of carbon dioxide. This is the reason a plant in a sealed dark jar will kill a mouse — and the reason a sealed jar in sunlight will not.
]

#worked-example(
  4,
  "A sealed jar in the dark",
  tier: "JAMB CHALLENGE",
  [A green plant and a small animal are sealed together in a transparent jar and placed in bright sunlight. The animal survives. The jar is then covered with a thick cloth and the animal dies within a day. Explain both observations.]
  ,
  [
    In *sunlight*, the plant photosynthesises faster than it respires. It releases more oxygen than it uses, and takes in more carbon dioxide than it produces. The animal therefore has a supply of oxygen and its carbon dioxide is removed. The two organisms are in balance, and the animal survives.

    In *darkness*, photosynthesis stops but respiration continues in both organisms. Both now take in oxygen and release carbon dioxide, so the oxygen in the jar falls and the carbon dioxide rises until the animal suffocates.

    *Answer:* in light the plant is a net oxygen producer; in darkness both organisms compete for the same limited oxygen.
  ],
)

// ============================================================================
// SECTION 8.6 — CHECKLIST
// ============================================================================
== 8.6 Chapter 8 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + define respiration and state four uses of the energy released;
  + write the equation for aerobic respiration and for both kinds of anaerobic respiration;
  + compare aerobic and anaerobic respiration in a table of six rows;
  + explain oxygen debt and cramp;
  + state the five properties of a good respiratory surface and how the alveolus achieves each;
  + describe inspiration and expiration, naming the muscles and the pressure changes;
  + explain why plants respire all the time and how that differs from photosynthesis.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Respiration releases energy from glucose; with oxygen it makes carbon dioxide and water and a lot of energy, without oxygen it makes lactic acid in muscle or alcohol in yeast and very little. The alveolus is thin, moist, wet, well supplied and enormous in total area; breathing merely moves the air across it.
  ]
]

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: aerobic and anaerobic respiration, the alveolus, and breathing versus respiration.", width: 100%)

// ============================================================================
// SECTION 8.7 — TWO-MINUTE SET
// ============================================================================
== 8.7 Chapter 8 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#block(breakable: false)[
#mcq(1, [Anaerobic respiration in human muscle produces], [alcohol and carbon dioxide], [lactic acid], [carbon dioxide and water], [glucose and oxygen])
#mcq(2, [Gas exchange in the lungs takes place in the], [bronchi], [trachea], [alveoli], [pleura])
#mcq(3, [During inspiration the diaphragm], [relaxes and becomes domed], [contracts and flattens], [contracts and becomes domed], [does not move])
#mcq(4, [Which statement about plants is correct?], [They respire only at night], [They photosynthesise and respire in daylight], [They do not respire], [They respire only in the dark])

#answer-key-grid(("B", "C", "B", "B"))
]


#include "drill_ch08.typ"
