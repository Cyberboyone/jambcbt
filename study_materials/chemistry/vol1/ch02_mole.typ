#import "template.typ": *

#current-chapter.update("Chapter 2: Chemical Combination, the Mole and Formulae")
#pagebreak()

#chapter-opener(
  2,
  "Chemical Combination, the Mole and Formulae",
  subtitle: "The Laws of Chemical Combination, Relative Atomic and Formula Masses, the Mole and Avogadro's Number, Empirical and Molecular Formulae, and Stoichiometry from an Equation",
  syllabus-ref: "Sec. A • Topic 2",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "State the laws of conservation of mass, constant composition and multiple proportions.",
    "Define the mole and Avogadro's number, and use $A_r$ and $M_r$.",
    "Convert between mass, moles, number of particles, gas volume and concentration.",
    "Calculate an empirical formula from percentage composition, and a molecular formula from the empirical formula and $M_r$.",
    "Use a balanced equation to calculate a reacting mass, a gas volume or a concentration.",
    "Identify the limiting reagent in a simple reaction.",
  ),
  hotspots: (
    "\"The number of moles in $m$ grams\" — $n = m div M_r$; use $M_r$, never $A_r$, for a compound.",
    "\"One mole of any gas at s.t.p. occupies\" — 22.4 dm³; at r.t.p. — 24 dm³.",
    "\"The empirical formula is\" — divide each percentage by the atomic mass, then by the smallest of the answers.",
    "\"What mass of product is formed?\" — balance, ratio, moles, then mass.",
    "\"The number of particles in $n$ moles\" — $n times 6.02 times 10^23$.",
  ),
  trap-summary: "Three slips decide this chapter. (1) Dividing by the wrong mass: use the *molar* mass of the whole formula, so 8 g of O₂ is 0.25 mol, not 0.5. (2) Using 22.4 dm³ at r.t.p. or 24 dm³ at s.t.p. — read which condition the question states. (3) Converting grams of one substance straight into grams of another without going through moles: the ratio in the equation applies to *moles*, never to masses.",
)

// ============================================================================
// SECTION 2.1
// ============================================================================
== 2.1 The Laws of Chemical Combination

Chemistry became a quantitative science through three laws, and each one is a question in the paper.

#concept-box("The three laws, one line each")[
  *Conservation of mass* — in a closed system the total mass before a reaction equals the total mass after it. (The mass \"lost\" when a tablet fizzes is the carbon dioxide that escaped.) \
  *Constant composition (definite proportions)* — a given compound always contains the same elements in the same proportion by mass. Pure water is 11.1 % hydrogen and 88.9 % oxygen, from any source. \
  *Multiple proportions* — when two elements form more than one compound, the masses of one element that combine with a fixed mass of the other are in a simple whole-number ratio. Carbon forms CO and CO₂: 12 g of carbon combines with 16 g of oxygen or with 32 g, a ratio of 1 : 2.
]

These laws are explained by the atomic theory: atoms are neither created nor destroyed in a reaction, they combine in fixed whole-number ratios, and a compound is a fixed combination of atoms.

// ============================================================================
// SECTION 2.2
// ============================================================================
== 2.2 Relative Masses and the Mole

*Relative atomic mass* ($A_r$) is the average mass of the atoms of an element compared with one twelfth of the mass of an atom of carbon-12. It has no unit. *Relative molecular mass* ($M_r$) is the sum of the relative atomic masses in a formula — for a compound that does not exist as molecules, the same sum is called the *relative formula mass*.

The *mole* is the amount of substance that contains as many elementary particles as there are atoms in 12 g of carbon-12. That number is *Avogadro's constant*, $6.02 times 10^23$ mol⁻¹.

#concept-box("The sentence that unlocks every calculation")[
  *One mole of a substance has a mass in grams equal to its $M_r$, and contains $6.02 times 10^23$ particles.* \
  So 1 mol of water has a mass of 18 g and contains $6.02 times 10^23$ molecules; 0.5 mol has a mass of 9 g and contains $3.01 times 10^23$ molecules.
]

// ============================================================================
// SECTION 2.3
// ============================================================================
== 2.3 The Three Roads to the Mole

Every mole calculation in the syllabus starts from one of four quantities — a mass, a gas volume, a concentration, or a number of particles — and every road passes through the mole.

#diagram-fig("diagrams/ch02_mole.svg",
  "The mole as the hub: mass is divided by $M_r$, gas volume by 24 dm³ at r.t.p., and concentration multiplied by the volume in dm³. Particles are found by multiplying the moles by $6.02 times 10^23$.")

#table(
  columns: (1.3fr, 1.55fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Given],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Watch for],
  ),

  [mass in grams], [$n = m div M_r$], [the $M_r$ of the *formula*, including every atom — O₂ is 32, not 16],
  [gas volume at s.t.p.], [$n = V div 22.4$ dm³], [\"s.t.p.\" means 22.4 dm³ per mole; the volume must be in dm³, so 448 cm³ is 0.448 dm³],
  [gas volume at r.t.p.], [$n = V div 24$ dm³], [\"r.t.p.\" means 24 dm³ per mole; room temperature and pressure],
  [concentration and volume], [$n = c times V$, with $V$ in dm³], [a volume in cm³ must be divided by 1000 first],
  [number of particles], [$n = N div 6.02 times 10^23$], [the count is always of the particles named — atoms, molecules or ions],
)

#worked-example(
  1,
  "Four routes, one mole",
  tier: "UTME STANDARD",
  [(a) How many moles are there in 8 g of oxygen gas, O₂? (b) What volume does 0.25 mol of any gas occupy at s.t.p.? (c) How many moles are in 250 cm³ of a 0.2 mol dm⁻³ solution? (d) How many molecules are there in 0.1 mol of carbon dioxide?],
  [
    *(a)* $M_r$ of O₂ = 2 × 16 = 32. $n = 8 div 32 = 0.25$ mol. \ (Using 16 would give 0.5 mol — the commonest error in the paper.)

    *(b)* $V = n times 22.4 = 0.25 times 22.4 = 5.6$ dm³ at s.t.p.

    *(c)* $V = 250 div 1000 = 0.25$ dm³. $n = c times V = 0.2 times 0.25 = 0.05$ mol.

    *(d)* $N = n times 6.02 times 10^23 = 0.1 times 6.02 times 10^23 = 6.02 times 10^22$ molecules.

    *Check the units each time:* mol, dm³, mol dm⁻³. A bare number without its unit is half an answer.
  ],
)

// ============================================================================
// SECTION 2.4
// ============================================================================
== 2.4 Empirical and Molecular Formulae

The *empirical formula* is the simplest whole-number ratio of the atoms in a compound. The *molecular formula* is the actual number of atoms in one molecule, and it is always a whole-number multiple of the empirical formula.

#concept-box("The four-step method")[
  1. Write the percentage (or mass) of each element. \
  2. Divide each by its relative atomic mass — this gives the ratio in moles. \
  3. Divide every answer by the smallest one. \
  4. If the answers are not whole numbers, multiply all of them by the same small integer (× 2 for halves, × 3 for thirds).
]

#worked-example(
  2,
  "An empirical formula and then a molecular one",
  tier: "UTME STANDARD",
  [A compound contains 40.0 % carbon, 6.7 % hydrogen and 53.3 % oxygen by mass, and its relative molecular mass is 180. Find its empirical formula and its molecular formula.],
  [
    #table(
      columns: (1fr, 1fr, 1.2fr, 1fr),
      inset: 4pt,
      align: (center, center, center, center),
      stroke: 0.4pt + jamb-border,
      table.header([C], [H], [O], []),
      [40.0], [6.7], [53.3], [% or mass],
      [$40 div 12 = 3.33$], [$6.7 div 1 = 6.7$], [$53.3 div 16 = 3.33$], [divide by $A_r$],
      [1], [2], [1], [divide by 3.33],
    )

    *Empirical formula:* $"CH"_2"O"$, with $M_r = 12 + 2 + 16 = 30$.

    *Molecular formula:* $n = 180 div 30 = 6$, so the molecular formula is $("CH"_2"O") times 6 = "C"_6"H"_12"O"_6$ — glucose.

    *The trap:* a molecular mass that is not a multiple of the empirical mass means an arithmetic slip, not a different compound.
  ],
)

// ============================================================================
// SECTION 2.5
// ============================================================================
== 2.5 Stoichiometry: From an Equation to an Answer

The coefficients in a balanced equation are *mole* ratios, and nothing else. Every reacting-mass calculation runs the same four steps.

#diagram-fig("diagrams/ch02_stoich.svg",
  "The four steps: balance the equation, read the mole ratio, convert the given quantity to moles, then convert the answer into the unit asked for.")

#worked-example(
  3,
  "A reacting mass, a gas volume and a concentration",
  tier: "UTME STANDARD",
  [Calcium carbonate decomposes on heating: $"CaCO"_3 -> "CaO" + "CO"_2$. (a) What mass of calcium oxide is formed from 10 g of calcium carbonate? (b) What volume of carbon dioxide, measured at s.t.p., is produced? (c) If the 10 g were instead dissolved in 250 cm³ of hydrochloric acid, what concentration of acid would be exactly neutralised?],
  [
    *(a)* $M_r$ of $"CaCO"_3$ = 40 + 12 + 48 = 100; $M_r$ of $"CaO"$ = 40 + 16 = 56. \
    $n("CaCO"_3) = 10 div 100 = 0.1$ mol. The ratio is 1 : 1, so 0.1 mol of CaO forms. \
    $m = n times M_r = 0.1 times 56 = 5.6$ g.

    *(b)* The ratio of $"CaCO"_3$ to $"CO"_2$ is 1 : 1, so 0.1 mol of gas. \
    $V = 0.1 times 22.4 = 2.24$ dm³ at s.t.p. (or 2.4 dm³ at r.t.p. — read the condition).

    *(c)* $"CaCO"_3 + 2"HCl" -> "CaCl"_2 + "H"_2"O" + "CO"_2$, so 1 mol of carbonate needs 2 mol of acid. \
    $n("HCl") = 2 times 0.1 = 0.2$ mol in 0.25 dm³, so $c = n div V = 0.2 div 0.25 = 0.8$ mol dm⁻³.
  ],
)

#trap-box("The limiting reagent")[
  When the question gives the amounts of *both* reactants, the reaction stops when the first one runs out. Convert both to moles, divide each by its coefficient in the equation, and the smaller answer identifies the *limiting reagent* — the one that controls the yield. Every later calculation uses the limiting reagent, never the excess.
]

#shortcut-box("Checklist before you write the answer")[
  Is the equation balanced? Have you used $M_r$ and not $A_r$? Are the volumes in dm³? Is the condition s.t.p. or r.t.p.? Does the answer have a unit? A yes to all five is worth more marks than any amount of speed.
]

// ============================================================================
// SECTION 2.6 — CHECKLIST
// ============================================================================
== 2.6 Chapter 2 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + state and illustrate the three laws of chemical combination;
  + define $A_r$, $M_r$, the mole and Avogadro's constant;
  + convert mass, gas volume, concentration and particle number into moles and back;
  + state the molar volume at s.t.p. and at r.t.p. and use the right one;
  + calculate an empirical formula from percentage composition;
  + calculate a molecular formula from the empirical formula and $M_r$;
  + balance an equation and read the mole ratio from it;
  + calculate a reacting mass from a balanced equation;
  + calculate a gas volume and a concentration from the same equation;
  + identify the limiting reagent when two amounts are given.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Mass is conserved, a compound has a fixed composition, and when two elements form more than one compound the combining masses are in a simple ratio. A mole is $6.02 times 10^23$ particles and has a mass in grams equal to the $M_r$; mass divided by $M_r$ gives moles, a gas volume divided by 22.4 dm³ (s.t.p.) or 24 dm³ (r.t.p.) gives moles, and concentration multiplied by volume in dm³ gives moles. The empirical formula comes from dividing each percentage by its atomic mass and then by the smallest; the molecular formula is the empirical formula multiplied by $M_r$ divided by the empirical mass. Stoichiometry is balanced equation, mole ratio, moles, then the unit asked for — and the limiting reagent decides the yield.
  ]
]

#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: the mole, the three roads, formulae and stoichiometry.", width: 100%)

// ============================================================================
// SECTION 2.7 — TWO-MINUTE SET
// ============================================================================
#pagebreak()
== 2.7 Chapter 2 in the Exam Hall — a Two-Minute Set

Four questions of the kind the CBT engine starts a paper with. Ninety seconds each; the answers and full working follow the drill.

#mcq(1, [The number of moles in 11 g of carbon dioxide ($M_r = 44$) is], [0.25 mol], [0.5 mol], [4 mol], [11 mol])
#mcq(2, [The number of molecules in 0.5 mol of a gas is], [$6.02 times 10^23$], [$1.20 times 10^24$], [$6.02 times 10^22$], [$3.01 times 10^23$])
#mcq(3, [The mass of 0.5 mol of calcium carbonate ($M_r = 100$) is], [200 g], [50 g], [100 g], [25 g])
#mcq(4, [At s.t.p., one mole of any gas occupies], [24 dm³], [22.4 cm³], [22.4 dm³], [24 cm³])

#answer-key-grid(("A", "D", "B", "C"))

#answer-notes((
  ("A", [$n = m div M_r = 11 div 44 = 0.25$ mol.]),
  ("D", [$0.5 times 6.02 times 10^23 = 3.01 times 10^23$ molecules.]),
  ("B", [$m = n times M_r = 0.5 times 100 = 50$ g.]),
  ("C", [the molar volume at s.t.p. is 22.4 dm³; 24 dm³ applies at room temperature and pressure.]),
))

#include "drill_ch02.typ"
