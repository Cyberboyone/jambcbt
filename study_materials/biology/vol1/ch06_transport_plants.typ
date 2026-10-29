#import "template.typ": *

#current-chapter.update("Chapter 6: Transport in Plants")
#pagebreak()

#chapter-opener(
  6,
  "Transport in Plants",
  subtitle: "Root Hairs and Water Uptake, the Xylem and the Transpiration Stream, Translocation in the Phloem, and the Factors That Change the Rate",
  syllabus-ref: "Sec. B • Topic 5",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain how a root hair cell absorbs water and mineral salts.",
    "Describe the path of water from the soil to the leaf.",
    "Explain transpiration and the transpiration pull.",
    "State the factors that affect the rate of transpiration and how each acts.",
    "Distinguish xylem from phloem in structure and in function.",
  ),
  hotspots: (
    "\"Water and mineral salts are transported by the …\" — xylem.",
    "\"The loss of water vapour from the leaves is called …\" — transpiration.",
    "\"Transpiration is fastest when …\" — hot, dry, windy and bright.",
    "\"The transport of manufactured food is called …\" — translocation, in the phloem.",
    "\"Which cells are dead at maturity?\" — xylem vessels and tracheids.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Saying xylem carries *food* — xylem carries water and mineral salts; the phloem carries sugars. (2) Writing that transpiration is *harmful* — it is the very mechanism that pulls water up the plant, and it cools the leaves. (3) Confusing *absorption* (roots taking in water) with *transpiration* (leaves losing it).",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 Water Uptake by the Roots

Water enters a root hair cell by *osmosis*: the cell sap is more concentrated than the soil solution, so water moves from the soil, across the partially permeable membrane, into the cell.

#diagram-fig("diagrams/ch06_root.svg",
  "A root hair and the path of water: soil → root hair → cortex → endodermis → xylem → up the stem → leaf.")

#table(
  columns: (1.2fr, 2.1fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature of the root hair cell],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why it helps],
  ),

  [Long, thin extension], [Greatly increases the surface area for absorption],
  [Thin cell wall], [Short diffusion distance for water],
  [Many mitochondria], [Supply the energy for *active transport* of mineral salts],
  [Concentrated cell sap], [Keeps the water potential gradient favourable for osmosis],
)

#concept-box("Water is passive; minerals are not")[
  Water enters by *osmosis*, which needs no energy. Mineral salts are usually in *lower* concentration in the soil than in the root hair, so they must be taken up by *active transport*, against the gradient, using energy from respiration. That is why a waterlogged or poisoned root — one whose respiration has stopped — cannot absorb minerals even though water is everywhere.
]

#worked-example(
  1,
  "Why fertiliser can kill a plant",
  tier: "UTME STANDARD",
  [A gardener applies too much fertiliser and the plants wilt within a day. Explain what has happened.],
  [
    Fertiliser dissolves in the soil water and makes the soil solution *more concentrated* than the cell sap of the root hair cells.

    Water then moves *out* of the root hair cells into the soil by osmosis — the opposite of the normal direction. The plant loses water faster than it can replace it, the cells lose turgor, and the plant wilts.

    *Answer:* the soil solution became more concentrated than the cell sap, so water left the roots by osmosis.
  ],
)

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 The Xylem and the Transpiration Stream

The *xylem* is a tissue of dead, hollow cells — *vessels* and *tracheids* — strengthened with *lignin*. Water and dissolved mineral salts move up the xylem from the roots to the leaves in a continuous column.

#table(
  columns: (1fr, 1.45fr, 1.45fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Xylem],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Phloem],
  ),

  [Carries], [Water and mineral salts], [Manufactured food (sucrose, amino acids)],
  [Direction], [Upwards only], [Upwards and downwards],
  [Cells], [Dead, hollow, no cytoplasm], [Living, with sieve plates],
  [Walls], [Thickened with lignin], [Cellulose],
  [Also contains], [Tracheids and vessels], [Companion cells and phloem fibres],
)

#v(4pt)

#concept-box("The transpiration pull")[
  Water evaporates from the surfaces of the mesophyll cells into the air spaces and diffuses out through the stomata. This loss — *transpiration* — lowers the water potential at the top of the plant, and water is pulled up the xylem behind it as a continuous column. The column holds together because water molecules attract one another (*cohesion*), and it clings to the xylem walls (*adhesion*). Root pressure pushes from below.
]

#worked-example(
  2,
  "Explaining the pull",
  tier: "UTME STANDARD",
  [Explain how water reaches the top of a 30 m tree when the roots are only a few metres deep.],
  [
    The main force is the *transpiration pull*. As water evaporates from the leaves, more water is drawn into them from the xylem, and this tension is transmitted down the continuous water column.

    The column does not break because of *cohesion* between water molecules and *adhesion* to the xylem walls. *Root pressure* pushes water up from below and assists, but it is far too small to raise water 30 m on its own.

    *Answer:* transpiration pull, maintained by cohesion and adhesion, with root pressure assisting.
  ],
)

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 Factors Affecting Transpiration

#diagram-fig("diagrams/ch06_transpiration.svg",
  "The four factors that change the rate of transpiration, and the direction in which each moves it.")

#table(
  columns: (1.1fr, 1.3fr, 1.6fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Factor],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Effect],
    text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Why],
  ),

  [Bright light], [Increases], [Stomata open wider for carbon dioxide],
  [High temperature], [Increases], [More heat energy for evaporation],
  [Wind], [Increases], [Removes the humid layer of air near the leaf],
  [High humidity], [Decreases], [Smaller water potential gradient],
  [Water shortage], [Decreases], [Stomata close to conserve water],
  [Still, cool, humid night], [Very low], [Stomata closed; air saturated],
)

#v(4pt)

#worked-example(
  3,
  "Designing the experiment",
  tier: "JAMB CHALLENGE",
  [Describe an experiment to show that wind increases the rate of transpiration, stating what you would measure and one variable you would control.],
  [
    Set up two identical leafy shoots, each with its stem in water and a layer of oil on the surface to stop evaporation. Place one in still air and the other in front of a fan.

    Measure the *volume of water lost* from each tube (or the mass lost by each shoot) over the same period, using a capillary tube or a balance. Keep light intensity, temperature and humidity the same for both.

    The shoot in moving air will lose more water. Control: the still-air shoot; constant variables: light, temperature, humidity, shoot size.
  ],
)

// ============================================================================
// SECTION 6.4 — CHECKLIST
// ============================================================================
== 6.4 Chapter 6 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can …
  #v(3pt)
  + explain how a root hair cell absorbs water and mineral salts;
  + describe the path of water from soil to leaf;
  + distinguish xylem from phloem in structure and in function;
  + explain the transpiration pull using cohesion and adhesion;
  + list four factors affecting transpiration and say how each acts;
  + describe an experiment to measure the rate of transpiration.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Roots take in water by osmosis and minerals by active transport; the xylem carries both upwards; the leaves lose water as vapour by transpiration, and that loss is the engine that pulls the whole column up. The phloem is the other traffic: sugar, both ways.
  ]
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: absorption, the two transport tissues and the transpiration factors.", width: 62%)

// ============================================================================
// SECTION 6.5 — TWO-MINUTE SET
// ============================================================================
== 6.5 Chapter 6 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [Water and mineral salts are transported from the roots to the leaves in the], [phloem], [xylem], [cambium], [cortex])
#mcq(2, [Transpiration is the loss of], [water as liquid through the leaf surface], [water vapour mainly through the stomata], [oxygen through the stomata], [carbon dioxide through the stomata])
#mcq(3, [The rate of transpiration would be highest on a], [cool, humid, still day], [hot, dry, windy day], [cold, wet night], [humid night])
#mcq(4, [Mineral salts are absorbed by root hairs mainly by], [osmosis], [diffusion], [active transport], [transpiration])

#answer-key-grid(("B", "B", "B", "C"))
