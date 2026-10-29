#import "template.typ": *

#current-chapter.update("Chapter 6: Chemical Bonding")
#pagebreak()

#chapter-opener(
  6,
  "Chemical Bonding",
  subtitle: "Ionic, Covalent and Metallic Bonds, Dot-and-Cross Diagrams, the Four Kinds of Structure, Intermolecular Forces and Hydrogen Bonding, and the Shapes of Simple Molecules",
  syllabus-ref: "Sec. A • Topic 6",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Explain why atoms form bonds, in terms of the noble-gas configuration.",
    "Describe ionic bonding and draw a dot-and-cross diagram for a simple ionic compound.",
    "Describe covalent bonding, including single, double and triple bonds and the co-ordinate bond.",
    "Describe metallic bonding and explain the properties it produces.",
    "Relate the four kinds of structure to melting point, solubility and electrical conduction.",
    "Describe van der Waals forces, dipole–dipole forces and hydrogen bonding.",
    "Predict the shape of a simple molecule from the number of bond pairs and lone pairs.",
  ),
  hotspots: (
    "“Sodium chloride conducts electricity when …” — molten or in solution, because the ions are then free to move.",
    "“Diamond does not conduct electricity because …” — all four outer electrons are localised in covalent bonds.",
    "“Ice floats on water because …” — hydrogen bonds hold the molecules in an open lattice, so ice is less dense.",
    "“The shape of a methane molecule is …” — tetrahedral, 109.5°.",
    "“A co-ordinate (dative) bond is one in which …” — both electrons come from the same atom.",
  ),
  trap-summary: "Three slips decide this chapter. (1) *Assuming all covalent substances are gases.* Covalent bonding comes in two very different packages — simple molecules with weak forces between them (low melting point) and giant covalent networks (diamond, silica) with very high melting points. (2) *Saying “molecules of sodium chloride”.* Ionic compounds form a lattice of ions, not molecules. (3) *Confusing the bond with the force between molecules.* Breaking covalent bonds takes hundreds of kJ mol⁻¹; overcoming the forces between molecules takes a few — which is why ice melts at 0 °C but water does not decompose until it is red hot.",
)

// ============================================================================
// SECTION 6.1
// ============================================================================
== 6.1 Why Atoms Bond

An atom bonds to reach a more stable arrangement — in practice, the electron configuration of the nearest noble gas. The *octet rule* states that atoms tend to gain, lose or share electrons until they are surrounded by eight in their outer shell. Hydrogen and helium are the exceptions; they are complete with two.

There are three ways to reach that arrangement, and each gives a different kind of bond.

#table(
  columns: (1.1fr, 1.5fr, 1.4fr, 1.3fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Bond],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens to the electrons],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Between],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),
  [ionic], [transferred from one atom to the other], [a metal and a non-metal], [$"NaCl"$],
  [covalent], [shared between the two atoms], [two non-metals], [$"H"_2"O"$, $"CH"_4$],
  [metallic], [delocalised over a lattice of positive ions], [metal atoms], [$"Fe"$, $"Cu"$, $"Na"$],
)

// ============================================================================
// SECTION 6.2
// ============================================================================
== 6.2 Ionic Bonding

An ionic bond is the electrostatic attraction between oppositely charged ions. It forms when an element with a low ionisation energy (a metal) transfers electrons to an element with a high electron affinity (a non-metal).

#diagram-fig("diagrams/ch06_ionic_covalent.svg",
  "Dot-and-cross diagrams. In sodium chloride the electron is transferred and the ions are held by attraction; in water and carbon dioxide the electrons are shared, shown as overlapping pairs.")

#worked-example(
  1,
  "Explaining the properties of an ionic solid",
  tier: "UTME STANDARD",
  [Sodium chloride has a melting point of 801 °C. It does not conduct electricity when solid, but conducts well when molten or dissolved in water. Explain both observations.],
  [
    *Melting point.* The lattice is held together by strong electrostatic attractions between $"Na"^+$ and $"Cl"^-$ ions, and those attractions act in every direction, so a large amount of energy is needed to break the lattice apart.

    *Conduction.* In the solid the ions are held in fixed positions in the lattice and cannot move, so there is no flow of charge. When the solid melts, or dissolves, the ions become free to move and carry the current — the mobile charge carriers are the *ions themselves*, not electrons.

    *The sentence that earns the mark:* conduction in an ionic compound requires *mobile ions*; a solid lattice has none.
  ],
)

#concept-box("Formulae of ionic compounds")[
  Ionic compounds are electrically neutral, so the total positive charge must equal the total negative charge. \
  $"Na"^+$ with $"Cl"^-$ gives $"NaCl"$; $"Mg"^(2+)$ with $"Cl"^-$ needs two chlorides, so $"MgCl"_2$; $"Al"^(3+)$ with $"O"^(2-)$ needs two aluminiums and three oxygens, so $"Al"_2"O"_3$. \
  The formula is a ratio of ions in the lattice, not a molecule.
]

// ============================================================================
// SECTION 6.3
// ============================================================================
== 6.3 Covalent Bonding

A covalent bond is a shared pair of electrons between two atoms. Each atom contributes one electron to the pair, and the shared pair is attracted by both nuclei, which holds the atoms together.

#table(
  columns: (1.15fr, 1.2fr, 1.4fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Bond order],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Shared pairs],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),
  [single], [one], [$"H"_2$, $"Cl"_2$, $"H"_2"O"$], [the commonest bond; longest and weakest],
  [double], [two], [$"O"_2$, $"CO"_2$, $"C"_2"H"_4$], [shorter and stronger than a single bond],
  [triple], [three], [$"N"_2$, $"C"_2"H"_2$], [shortest and strongest; explains why nitrogen is so unreactive],
  [co-ordinate], [one, both from the same atom], [$"NH"_4^+$, $"H"_3"O"^+$], [once formed it is identical to any other covalent bond],
)

#concept-box("Why nitrogen is inert and why ammonium exists")[
  In $"N"_2$ the two nitrogen atoms share three pairs, so the bond is a triple bond with a very high bond energy — which is why nitrogen makes up 78 % of the air without reacting. \
  In the ammonium ion, $"NH"_3$ uses its lone pair to bond to an $"H"^+$ ion: the proton brings no electrons, so both electrons in the new bond come from nitrogen. That is a co-ordinate (dative covalent) bond.
]

#trap-box("The co-ordinate bond has no memory")[
  After a co-ordinate bond forms, it cannot be distinguished from the other three $"N–H"$ bonds in $"NH"_4^+$: all four are identical in length and strength. The label describes where the electrons came from, not a different kind of bond.
]

// ============================================================================
// SECTION 6.4
// ============================================================================
== 6.4 Metallic Bonding

A metal is a lattice of positive ions surrounded by a “sea” of delocalised electrons, and the attraction between the two is the metallic bond.

#diagram-fig("diagrams/ch06_structures.svg",
  "The four kinds of structure. Only ionic lattices (when molten) and metals conduct, and only metals conduct while solid — because only they have electrons that are free to move.")

#table(
  columns: (1.1fr, 1.5fr, 1.9fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Consequence],
  ),
  [conducts electricity], [delocalised electrons are free to move], [works *solid* as well as molten — unlike ionic compounds],
  [malleable and ductile], [layers of ions slide without breaking the bond, because the electron sea simply follows], [can be hammered into sheets and drawn into wires],
  [high melting point], [strong attraction between the ions and the electron sea], [stronger for ions with a higher charge and a smaller radius],
)

// ============================================================================
// SECTION 6.5
// ============================================================================
== 6.5 Intermolecular Forces and the Four Structures

Between separate molecules there are weak forces. They are much weaker than covalent bonds, but they decide boiling points, solubility and — in one celebrated case — whether ice floats.

#concept-box("Three intermolecular forces, weakest first")[
  *Van der Waals (dispersion) forces* — temporary dipoles in all molecules, stronger for larger molecules with more electrons. They explain why iodine is a solid and chlorine a gas. \
  *Dipole–dipole forces* — permanent dipoles in polar molecules, such as $"HCl"$, attract one another. \
  *Hydrogen bonding* — the strongest of the three: a hydrogen atom bonded to $"N"$, $"O"$ or $"F"$ is attracted to a lone pair on a neighbouring molecule.
]

#worked-example(
  2,
  "Why water boils at 100 °C and ice floats",
  tier: "UTME STANDARD",
  [Water ($M_r$ 18) boils at 100 °C while hydrogen sulphide ($M_r$ 34) boils at −60 °C, and ice is less dense than liquid water. Explain both facts.],
  [
    *Boiling point.* Water molecules form hydrogen bonds — the oxygen of one molecule attracts the hydrogen of another — and these are much stronger than the van der Waals forces in hydrogen sulphide. Breaking them needs far more energy, which outweighs the fact that water has the smaller mass.

    *Density.* In ice every water molecule is held by four hydrogen bonds in an open, hexagonal lattice, which leaves more empty space than the liquid arrangement. When ice melts the lattice collapses and the molecules pack closer, so the liquid is denser.

    *The general lesson:* a hydrogen bond is about ten times stronger than a van der Waals force, but about twenty times weaker than a covalent bond.
  ],
)

#table(
  columns: (1.1fr, 1.35fr, 1.1fr, 1.35fr, 1.35fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Structure],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Bond],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Melting point],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Conducts?],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),
  [ionic lattice], [electrostatic], [high], [molten or dissolved only], [$"NaCl"$],
  [simple molecular], [covalent inside, weak forces between], [low], [no], [$"I"_2$, $"CO"_2$],
  [giant covalent], [covalent throughout], [very high], [no (except graphite)], [diamond, silica],
  [metallic], [metallic], [high], [yes, solid and molten], [$"Cu"$, $"Fe"$],
)

// ============================================================================
// SECTION 6.6
// ============================================================================
== 6.6 The Shapes of Simple Molecules

Electron pairs repel one another and arrange themselves as far apart as possible; lone pairs repel more strongly than bonding pairs.

#table(
  columns: (1.15fr, 1.1fr, 1.1fr, 1.1fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, center + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Molecule],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Bond pairs],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Lone pairs],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Shape],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Angle],
  ),
  [$"CO"_2$], [2], [0], [linear], [180°],
  [$"BF"_3$], [3], [0], [trigonal planar], [120°],
  [$"CH"_4$], [4], [0], [tetrahedral], [109.5°],
  [$"NH"_3$], [3], [1], [trigonal pyramidal], [107°],
  [$"H"_2"O"$], [2], [2], [bent (V-shaped)], [104.5°],
)

#worked-example(
  3,
  "From bond pairs and lone pairs to a shape",
  tier: "UTME STANDARD",
  [Predict and explain the shape and bond angle of (a) methane, (b) ammonia and (c) water.],
  [
    *(a) Methane,* $"CH"_4$: carbon has four bond pairs and no lone pairs. Four pairs repel equally and sit as far apart as possible, giving a *tetrahedral* shape with an angle of 109.5°.

    *(b) Ammonia,* $"NH"_3$: nitrogen has three bond pairs and one lone pair. The four pairs are still roughly tetrahedral, but the lone pair repels more strongly than a bond pair, squeezing the $"H–N–H"$ angle from 109.5° to about 107°, so the shape is a *trigonal pyramid*.

    *(c) Water,* $"H"_2"O"$: oxygen has two bond pairs and two lone pairs. The two lone pairs squeeze hardest, reducing the angle to about 104.5° and giving a *bent* molecule.

    *The rule:* count the pairs, place them tetrahedrally, then subtract about 2.5° for every lone pair.
  ],
)

// ============================================================================
// SECTION 6.7 — CHECKLIST
// ============================================================================
== 6.7 Chapter 6 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + state the octet rule and explain why atoms bond;
  + describe an ionic bond and draw a dot-and-cross diagram for $"NaCl"$ and $"MgCl"_2$;
  + write the formula of an ionic compound from the charges;
  + explain why ionic solids conduct only when molten or dissolved;
  + describe single, double and triple covalent bonds;
  + explain what a co-ordinate bond is, with an example;
  + describe metallic bonding and explain conduction, malleability and melting point;
  + distinguish the four kinds of structure and their properties;
  + describe van der Waals, dipole–dipole and hydrogen bonding;
  + explain why ice is less dense than water and why water has an unusually high boiling point;
  + predict the shape and angle of a simple molecule from its bond and lone pairs.
]

#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the three bonds, the four structures and the forces between molecules.", width: 100%)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Atoms bond to reach a noble-gas arrangement, and they do it by transferring electrons (ionic), sharing them (covalent) or pooling them (metallic). Ionic compounds are lattices of ions: high melting points, and conduction only when the ions are free to move. Covalent compounds are either simple molecules, held to their neighbours by weak forces and therefore low-melting, or giant networks such as diamond and silica, which are extremely hard and high-melting. Metals conduct because their delocalised electrons move, and they are malleable because those electrons keep the lattice together as the layers slide. Between molecules sit van der Waals forces, dipole–dipole attractions and hydrogen bonds, and the last of these explains both the high boiling point of water and the open lattice of ice. Finally, electron pairs repel to the furthest arrangement, so four pairs give 109.5°, one lone pair squeezes that to 107°, and two squeeze it to 104.5°.
  ]
]


// ============================================================================
// SECTION 6.8 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 6.8 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [The bond in sodium chloride is best described as], [covalent], [ionic], [metallic], [hydrogen])
#mcq(2, [Diamond does not conduct electricity because], [it has no free electrons], [it is an ionic solid], [it contains mobile ions], [it is a metal])
#mcq(3, [The shape of the ammonia molecule is], [tetrahedral], [trigonal planar], [trigonal pyramidal], [bent])
#mcq(4, [Ice floats on water because], [ice has a higher melting point], [hydrogen bonds hold the molecules in an open lattice], [ice contains no hydrogen bonds], [water is a non-polar molecule])

#answer-key-grid(("B", "A", "C", "B"))

#answer-notes((
  ("B", [a metal transfers an electron to a non-metal, and the resulting ions attract one another.]),
  ("A", [every outer electron of carbon is locked into a covalent bond, so there is nothing free to carry a current.]),
  ("C", [three bond pairs and one lone pair give a trigonal pyramid with an angle of about 107°.]),
  ("B", [the hydrogen-bonded lattice of ice leaves more empty space than liquid water, so ice is less dense.]),
))

#include "drill_ch06.typ"
