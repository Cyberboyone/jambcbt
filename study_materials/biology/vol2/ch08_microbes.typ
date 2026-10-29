#import "template.typ": *

#current-chapter.update("Chapter 8: Micro-organisms and Decay")
#pagebreak()

#chapter-opener(
  8,
  "Micro-organisms and Decay",
  subtitle: "Bacteria, Viruses and Fungi, the Conditions for Growth, Decay, and Food Preservation",
  syllabus-ref: "Sec. B • Topic 8",
  utme-weight: "1 Q every year",
)

#focus-radar(
  objectives: (
    "Describe the structure of a bacterium, a virus and a fungus.",
    "State the conditions needed for micro-organisms to grow.",
    "Define decay and explain why it is a form of respiration.",
    "Explain the role of decomposers in the carbon cycle and in soil fertility.",
    "Give five ways in which micro-organisms are useful to humans.",
    "Name four methods of food preservation and say which condition each removes.",
  ),
  hotspots: (
    "\"Decay is best described as …\" — the breakdown of dead organic matter by micro-organisms, releasing CO₂ and minerals.",
    "\"Which condition is removed by canning?\" — oxygen (and the heat kills the organisms).",
    "\"Bacteria differ from viruses because …\" — bacteria are cells with cytoplasm; viruses are not cells.",
    "\"The gas that makes bread rise is …\" — carbon dioxide from yeast.",
    "\"Biogas is mainly …\" — methane, produced by anaerobic bacteria.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Calling a virus a cell: it has no cytoplasm, no enzymes and no nucleus — only nucleic acid in a protein coat. (2) Saying decay is *harmful*: without it, carbon and minerals would never return to the soil. (3) Confusing *sterilisation* with *preservation*: sterilisation kills what is already there, preservation creates conditions in which organisms cannot grow.",
)

// ============================================================================
// SECTION 8.1
// ============================================================================
== 8.1 The Three Kinds of Micro-organism

A *micro-organism* is a living thing too small to be seen without a microscope. The three groups that matter in this chapter are the bacteria, the viruses and the fungi.

#diagram-fig("diagrams/ch08_microbes.svg",
  "A bacterium is a cell with a loop of DNA and no nucleus; a virus is nucleic acid in a protein coat; a fungus is made of thread-like hyphae that release spores.")

#table(
  columns: (1.15fr, 1.6fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Bacterium],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Virus],
  ),

  [Is it a cell?], [Yes — cytoplasm, wall, membrane], [No — nucleic acid in a protein coat],
  [Nucleus], [None; DNA is a single loop], [None],
  [Size], [About 1–5 µm], [About 20–300 nm — far smaller],
  [Reproduction], [Binary fission, without a host], [Only inside a living host cell],
  [Killed by antibiotics?], [Yes], [No],
  [Killed by heat?], [Yes, above about 60 °C], [Yes, but some survive longer than bacteria],
)

// ============================================================================
// SECTION 8.2
// ============================================================================
== 8.2 The Conditions for Growth

Micro-organisms grow only when all their needs are met. Remove one and growth slows or stops — which is exactly how food is preserved.

#table(
  columns: (1.15fr, 2.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why it matters],
  ),

  [*Warmth*], [Most grow fastest between 25 °C and 40 °C; a fridge at 4 °C slows them, a freezer at −18 °C stops them],
  [*Moisture*], [They absorb food dissolved in water; drying or salting removes the water],
  [*Food*], [Sugar, protein and fat are their substrate; sugar also draws water out by osmosis],
  [*Oxygen*], [Many are aerobic; some, like the bacteria of biogas and botulism, are anaerobic and grow without air],
  [*pH*], [Most prefer neutral conditions; vinegar and lemon juice make food too acid for them],
)

#diagram-fig("diagrams/ch08_conditions.svg",
  "The four needs of a decomposer, and the everyday method that removes each one.")

#shortcut-box("Why salt and sugar preserve")[
  Both create a very concentrated solution outside the microbial cell. Water leaves the cell by *osmosis*, the cytoplasm shrinks, and the organism can neither grow nor divide. That is why jam, salted fish and sweetened condensed milk keep — and why the answer to "how does salting preserve food?" is always *osmosis*.
]

#concept-box("How a culture grows")[
  In a closed culture the population follows four phases: a *lag* phase (the cells adjust), a *log* phase (rapid division, the numbers double at a constant rate), a *stationary* phase (food runs short and waste builds up, so births equal deaths) and a *death* phase (the food is exhausted). The log phase is the one to quote in a question about rapid growth.
]

// ============================================================================
// SECTION 8.3
// ============================================================================
== 8.3 Decay

*Decay* is the breakdown of dead organic matter by micro-organisms — mainly bacteria and fungi — into simpler substances.

#concept-box("Decay is respiration, not rot")[
  Decomposers feed on dead matter and break it down by *respiration*. Carbon leaves as *carbon dioxide*, hydrogen and oxygen leave as *water*, and the minerals — nitrates, phosphates and potassium — are left in the soil. \
  The same reaction that powers a muscle powers a compost heap: food + oxygen → carbon dioxide + water + energy.
]

#diagram-fig("diagrams/ch08_carbon.svg",
  "The carbon cycle. Decay is the arrow that returns carbon to the atmosphere and minerals to the soil.")

#table(
  columns: (1.2fr, 2.3fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Product of decay],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where it goes and why it matters],
  ),

  [Carbon dioxide], [Back to the atmosphere, ready to be fixed again by photosynthesis],
  [Water], [Lost to the soil and the air],
  [Mineral salts], [Nitrates, phosphates and potassium left in the soil — this is what makes *humus* fertile],
  [Heat], [A compost heap warms up, which is the visible evidence that respiration is going on],
)

// ============================================================================
// SECTION 8.4
// ============================================================================
== 8.4 Micro-organisms at Work for Us

#table(
  columns: (1.3fr, 1.5fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Industry],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Organism],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
  ),

  [Bread making], [Yeast (*Saccharomyces*)], [Ferments sugar to carbon dioxide, which makes the dough rise, and to alcohol],
  [Beer and wine], [Yeast], [Ferments sugar to alcohol under anaerobic conditions],
  [Yoghurt and cheese], [Lactic-acid bacteria], [Turn lactose into lactic acid, which curdles the milk and sours it],
  [Antibiotics], [Moulds such as *Penicillium*], [Produce substances that kill bacteria — penicillin was discovered this way],
  [Biogas], [Anaerobic bacteria], [Digest animal and plant waste to *methane*, used for cooking],
  [Compost and silage], [Bacteria and fungi], [Break down plant waste; silage is preserved by the acid the bacteria make],
  [Sewage treatment], [Aerobic and anaerobic bacteria], [Digest the sludge and clean the water],
  [Soil fertility], [Nitrogen-fixing bacteria in root nodules], [Convert nitrogen gas to nitrates the plant can use],
  [Retting of jute and flax], [Bacteria], [Soften the stems so the fibres can be separated],
)

// ============================================================================
// SECTION 8.5
// ============================================================================
== 8.5 Micro-organisms Against Us

#table(
  columns: (1.3fr, 2.2fr),
  inset: 6pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Harm],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [Food spoilage], [Milk sours, bread grows mould, meat putrefies — the food is digested by the micro-organisms before we eat it],
  [Food poisoning], [*Salmonella* in undercooked chicken; *Clostridium botulinum* in badly canned food],
  [Disease in humans], [Cholera, tuberculosis, typhoid, malaria and HIV/AIDS — see Chapter 7],
  [Disease in crops and livestock], [Rusts and blights in plants; anthrax and foot-and-mouth in animals],
  [Damage to materials], [Dry rot in timber, mould on leather and paper, corrosion of metal pipes by sulphur bacteria],
)

// ============================================================================
// SECTION 8.6
// ============================================================================
== 8.6 Food Preservation

Preservation works by removing one of the conditions the organisms need.

#table(
  columns: (1.3fr, 1.5fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition removed],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Examples],
  ),

  [Drying], [Moisture], [Dried fish, garri, powdered milk, sun-dried pepper],
  [Salting], [Moisture — by osmosis], [Salted fish and meat],
  [Sugaring], [Moisture — by osmosis], [Jam, marmalade, sweetened condensed milk],
  [Smoking], [Moisture, and the smoke has antibacterial chemicals], [Smoked fish and meat],
  [Refrigeration], [Warmth — growth is slowed, not stopped], [Fresh milk, meat, vegetables],
  [Freezing], [Warmth — growth is stopped], [Frozen chicken and fish],
  [Canning], [Oxygen, and heat kills what is inside], [Tinned tomatoes, corned beef],
  [Adding acid], [pH], [Pickles in vinegar, lime juice on cut fruit],
  [Irradiation], [Reproduction of the cells], [Some spices and packaged foods],
)

#worked-example(
  1,
  "Why milk sours faster in Kano than in Jos",
  tier: "UTME STANDARD",
  [A student notices that fresh milk turns sour more quickly on a hot day than on a cold one. Explain the observation and state two ways of slowing the change.],
  [
    *The change:* souring is the work of *lactic-acid bacteria*, which ferment the lactose in the milk and produce lactic acid.

    *The explanation:* bacteria are *enzymes wrapped in a membrane*, and enzyme action is faster at higher temperature — up to about 40 °C. On a hot day the bacteria reproduce faster (a shorter generation time) and their enzymes work faster, so the acid builds up sooner and the milk curdles.

    *Two ways to slow it:* (i) refrigerate — the low temperature slows both reproduction and enzyme action; (ii) boil or pasteurise the milk, which kills most of the bacteria before storage.

    *Model answer:* warmth speeds up bacterial reproduction and enzyme activity; cool it, or kill the bacteria by pasteurisation.
  ],
)

// ============================================================================
// SECTION 8.7 — CHECKLIST
// ============================================================================
== 8.7 Chapter 8 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + describe a bacterium, a virus and a fungus, and say which of them is not a cell;
  + state four conditions micro-organisms need to grow;
  + define decay and explain why it is a form of respiration;
  + name the products of decay and the role of each;
  + trace the path of carbon in the carbon cycle;
  + give five uses of micro-organisms in industry and agriculture;
  + give three harms caused by micro-organisms;
  + name five methods of food preservation and the condition each removes;
  + explain how salt and sugar preserve food, in terms of osmosis.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 8 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Bacteria are cells, viruses are not, and fungi are threads that release spores. Give them warmth, water, food and air and they will grow; take any one away and you have either spoilage prevention or food preservation. Decay is the respiration that puts carbon back in the air and minerals back in the soil.
  ]
]

#diagram-fig("diagrams/recap_ch08.svg",
  "Chapter 8 recap card: decay, its conditions and its uses.", width: 100%)

// ============================================================================
// SECTION 8.8 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 8.8 Chapter 8 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Decay is best described as], [the burning of dead matter], [the breakdown of dead organic matter by micro-organisms], [the freezing of dead matter], [the drying of dead matter])
#mcq(2, [Food is preserved by salting because salt], [kills all bacteria by heat], [draws water out of the microbial cells by osmosis], [adds vitamins to the food], [makes the food more acid])
#mcq(3, [The gas that makes bread dough rise is], [oxygen], [nitrogen], [carbon dioxide], [methane])
#mcq(4, [Viruses differ from bacteria in that viruses], [have a nucleus], [are larger than bacteria], [are not cells and cannot reproduce outside a host], [can be killed by antibiotics])

#answer-key-grid(("B", "B", "C", "C"))

#answer-notes((
  ("B", [decay is the *breakdown* of dead organic matter by bacteria and fungi — a form of respiration, not burning.]),
  ("B", [the strong salt solution pulls water out of the microbial cells by *osmosis*, so they cannot grow.]),
  ("C", [yeast ferments sugar to alcohol and *carbon dioxide*; the trapped gas expands the dough.]),
  ("C", [a virus has no cytoplasm or enzymes and must enter a living host cell before it can multiply — which is why antibiotics do nothing.]),
))
