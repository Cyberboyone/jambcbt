#import "template.typ": *

#current-chapter.update("Chapter 1: Matter, Separation Techniques and Purity")
#pagebreak()

#chapter-opener(
  1,
  "Matter, Separation Techniques and Purity",
  subtitle: "States of Matter and Changes of State, Elements, Compounds and Mixtures, Filtration, Crystallisation, Distillation, Chromatography and Sublimation, and How a Pure Substance Is Recognised",
  syllabus-ref: "Sec. A • Topic 1",
  utme-weight: "2 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the three states of matter in terms of the arrangement and movement of particles.",
    "Distinguish a physical change from a chemical change, and a mixture from a compound.",
    "Choose a separation technique from the difference between the substances in the mixture.",
    "Describe filtration, crystallisation, simple and fractional distillation, the separating funnel, chromatography and sublimation.",
    "Explain how melting point and boiling point are used to test purity.",
    "State the effect of an impurity on the melting point and on the boiling point of a substance.",
  ),
  hotspots: (
    "\"Ethanol and water are separated by …\" — fractional distillation, because both are liquids and their boiling points differ by about 22 °C.",
    "\"A pure solid melts at …\" — a sharp, constant temperature; an impurity lowers it and spreads it over a range.",
    "\"Iodine is separated from sand by …\" — sublimation, because only iodine changes straight from solid to vapour.",
    "\"The technique used to separate the dyes in an ink is …\" — paper chromatography.",
    "\"Which is a chemical change?\" — burning, rusting, fermentation. Melting, dissolving and boiling are physical.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Calling dissolving a chemical change: sugar dissolving in water is *physical*, because no new substance is formed and the sugar can be recovered by evaporation. (2) Choosing distillation when the liquids do not mix — oil and water are separated in a *separating funnel*, not a distillation apparatus. (3) Forgetting that an impurity *lowers* the melting point and *raises* the boiling point: candidates remember \"it changes the melting point\" and then write that impurities raise it.",
)

// ============================================================================
// SECTION 1.1
// ============================================================================
== 1.1 Matter and Its Three States

*Matter* is anything that has mass and occupies space. It exists in three states that differ only in how closely the particles are packed and how freely they move.

#table(
  columns: (0.9fr, 2.15fr, 2.15fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[State],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Particles],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Properties that follow],
  ),

  [*Solid*], [closely packed in a regular lattice; they vibrate about fixed positions], [fixed shape and volume; almost incompressible; does not flow],
  [*Liquid*], [close together but free to slide over one another], [fixed volume, no fixed shape; takes the shape of its container; flows; almost incompressible],
  [*Gas*], [far apart and moving rapidly at random], [no fixed shape or volume; fills any container; highly compressible; diffuses quickly],
)

Every change of state is a *physical change*: the particles gain or lose energy, but the substance itself is unchanged, and the change can be reversed.

#concept-box("The names of the six changes")[
  *Melting* — solid to liquid, energy absorbed. \
  *Freezing* — liquid to solid, energy released. \
  *Boiling (evaporation)* — liquid to gas, energy absorbed. \
  *Condensation* — gas to liquid, energy released. \
  *Sublimation* — solid straight to gas, with no liquid stage (iodine, ammonium chloride, dry ice). \
  *Deposition* — gas straight to solid (frost on a cold surface).
]

#trap-box("Physical or chemical? One question")[
  Ask: *has a new substance been formed?* If no — melting, dissolving, filtering, distilling, evaporating — the change is physical. If yes — burning, rusting, fermenting, reacting with acid — it is chemical. Sugar dissolving in water is the classic trap: the sugar is still sugar, and evaporating the water recovers it unchanged.
]

// ============================================================================
// SECTION 1.2
// ============================================================================
== 1.2 Elements, Compounds and Mixtures

#table(
  columns: (1.15fr, 2.0fr, 2.05fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Kind of substance],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Made of],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Can it be split by a physical method?],
  ),

  [*Element*], [one kind of atom only — sodium, oxygen, iron, chlorine], [no: it is a pure substance and cannot be broken down into simpler substances],
  [*Compound*], [two or more elements chemically combined in a fixed ratio — water, sodium chloride, carbon dioxide], [no: it can only be split by a chemical reaction, but not by filtering or distilling],
  [*Mixture*], [two or more substances not chemically combined — salt water, air, petroleum, soil], [yes: the components keep their own properties and can be separated physically],
)

The difference that the examiner tests is *fixed composition*. Water is always two hydrogen atoms to one oxygen atom, whatever its source; a mixture of salt and water can be made in any proportion at all.

// ============================================================================
// SECTION 1.3
// ============================================================================
== 1.3 The Separation Techniques

Every separation technique uses a *difference in physical property* between the components. The examiner gives you the mixture and asks for the method; the method must match the difference.

#diagram-fig("diagrams/ch01_separation.svg",
  "Four techniques and the mixture each one suits: filtration depends on particle size, distillation on boiling point, the separating funnel on immiscibility, and chromatography on how strongly each solute is adsorbed on the paper.")

#concept-box("The methods, one line each")[
  *Filtration* — an insoluble solid from a liquid. The solid stays on the filter paper, the filtrate passes through. \
  *Evaporation and crystallisation* — a soluble solid from its solution. Evaporate to the point of crystallisation, then cool, filter and dry. \
  *Simple distillation* — a solvent from a solution of a non-volatile solid (water from salt water). \
  *Fractional distillation* — two or more miscible liquids with different boiling points (ethanol and water; the fractions of petroleum; liquid air). \
  *Separating funnel* — two immiscible liquids (oil and water). \
  *Chromatography* — solutes that travel at different speeds on a stationary phase (the dyes in an ink, the pigments in a leaf). \
  *Sublimation* — a solid that sublimes, from one that does not (iodine from sand, ammonium chloride from sodium chloride). \
  *Magnetic separation* — a magnetic solid from a non-magnetic one (iron from sulphur).
]

#trap-box("Water in, water out")[
  In the condenser of a distillation apparatus the cooling water enters at the *bottom* and leaves at the *top*, because a condenser filled from the bottom stays completely full and cools the whole length of the tube. A condenser filled from the top runs half empty and condenses nothing at the far end.
]

#shortcut-box("Reading a separation question")[
  \"Insoluble\" in the stem → filtration. \
  \"Soluble solid and water\" → evaporation or crystallisation. \
  \"Two liquids that mix\" → fractional distillation; \"two liquids that do not mix\" → separating funnel. \
  \"Coloured substances\" or \"ink\" → chromatography. \
  \"Sublimes\" → sublimation. \
  \"Iron\" → a magnet.
]

// ============================================================================
// SECTION 1.4
// ============================================================================
== 1.4 Purity and How It Is Tested

A *pure substance* contains only one substance. It is not the same as a *clean* substance: clean water from a tap is a mixture, and a pure substance may be a dangerous one.

Purity is tested by measuring a *fixed physical constant* — usually the melting point or the boiling point.

#diagram-fig("diagrams/ch01_purity.svg",
  "A heating curve for a pure solid and for an impure one. The pure solid holds a constant temperature while it melts; the impure solid softens and melts over a range, starting lower down.")

#concept-box("The two rules, and what an impurity does")[
  An impurity *lowers* the melting point and makes it *less sharp* — the solid melts over a range. \
  An impurity *raises* the boiling point and makes it *less sharp* — the liquid boils over a range. \
  Pure water melts at exactly 0 °C and boils at exactly 100 °C at standard pressure. A sample that melts from 118 °C to 124 °C is impure; one that melts sharply at 122 °C is pure.
]

#worked-example(
  1,
  "Three samples, one melting point",
  tier: "UTME STANDARD",
  [A student is given three white solids. Sample A melts sharply at 80 °C, sample B melts over the range 74–79 °C, and sample C melts sharply at 114 °C. The melting point of pure naphthalene is 80 °C. Which sample is pure naphthalene, and what can be said about the others?],
  [
    *Sample A is pure naphthalene.* It melts sharply, and at exactly the melting point of the pure substance.

    *Sample B is impure,* and is probably naphthalene containing an impurity: the melting point has been *lowered* (74 °C rather than 80 °C) and *spread over a range* (74–79 °C), which is exactly what an impurity does.

    *Sample C is pure, but it is not naphthalene* — it melts sharply, so it is a pure substance, but at 114 °C, which is 34 °C too high.

    *The wording that earns the marks:* \"sharp\" or \"constant\" for pure, and \"lowered and over a range\" for impure. Never write merely that the melting point \"changed\".
  ],
)

#trap-box("Chromatography is not only for inks")[
  Paper chromatography separates any mixture of solutes that are soluble in the moving solvent and are adsorbed to different extents on the paper. It is used for inks, food colourings, leaf pigments, amino acids and even for identifying a drug in a urine sample. The stationary phase is the *water held in the paper*, and the mobile phase is the *solvent* that creeps up it.
]

// ============================================================================
// SECTION 1.5 — CHECKLIST
// ============================================================================
== 1.5 Chapter 1 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + describe the three states in terms of particle arrangement and movement;
  + name all six changes of state and say whether energy is absorbed or released;
  + decide whether a change is physical or chemical, and give the reason;
  + distinguish an element, a compound and a mixture by composition and by separability;
  + choose the correct separation method for a named mixture, and justify the choice;
  + describe how filtration, crystallisation and distillation are carried out;
  + explain why cooling water enters a condenser at the bottom;
  + explain how a melting point or boiling point is used to test purity;
  + state the effect of an impurity on both melting point and boiling point.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Matter is solid, liquid or gas according to how its particles are packed and how they move, and every change of state is physical because no new substance is formed. An element is one kind of atom, a compound is elements chemically combined in a fixed ratio, and a mixture is anything that can be separated by a physical method. Each separation technique uses one difference — particle size for filtration, boiling point for distillation, immiscibility for the separating funnel, adsorption for chromatography, the ability to sublime, and magnetism. A pure substance melts sharply at a fixed temperature; an impurity lowers the melting point and spreads it over a range, and raises the boiling point.
  ]
]

#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: states, mixtures, separation and purity.", width: 100%)

// ============================================================================
// SECTION 1.6 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 1.6 Chapter 1 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [A mixture of ethanol and water is best separated by], [filtration], [fractional distillation], [a separating funnel], [sublimation])
#mcq(2, [A pure crystalline solid is identified by], [its colour], [its mass], [a sharp, constant melting point], [its density])
#mcq(3, [Iodine can be separated from a mixture of iodine and sand by], [sublimation], [filtration], [chromatography], [distillation])
#mcq(4, [In the fractional distillation of liquid air, the fraction that distils first is], [oxygen], [argon], [water], [nitrogen])

#answer-key-grid(("B", "C", "A", "D"))

#answer-notes((
  ("B", [ethanol and water are miscible and their boiling points differ, so fractional distillation separates them; filtration, a separating funnel and sublimation all need a different kind of difference.]),
  ("C", [a pure solid melts sharply at a fixed temperature; impurities both lower the value and spread it over a range.]),
  ("A", [only iodine sublimes — it passes straight from solid to vapour and is collected on a cold surface, leaving the sand behind.]),
  ("D", [nitrogen boils at about −196 °C and oxygen at −183 °C, so nitrogen leaves the column first.]),
))

#include "drill_ch01.typ"
