#import "template.typ": *

#current-chapter.update("Chapter 2: Solutions and Solubility")
#pagebreak()

#chapter-opener(
  2,
  "Solutions and Solubility",
  subtitle: "Solutes, Solvents and Solutions, Concentration in g dm⁻³ and mol dm⁻³, Dilution, Saturated Solutions and Solubility Curves, Crystallisation and Water of Crystallisation",
  syllabus-ref: "Sec. B • Topic 2",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish a solute, a solvent and a solution, and describe what happens when an ionic solid dissolves.",
    "Calculate concentration in g dm⁻³ and in mol dm⁻³, and convert from one to the other.",
    "Use $c_1 V_1 = c_2 V_2$ to calculate a dilution.",
    "Define a saturated solution, solubility and a solubility curve, and read a value from a curve.",
    "Calculate the mass of crystals obtained when a saturated solution is cooled.",
    "Describe crystallisation and the drying of crystals.",
    "Calculate the water of crystallisation in a hydrated salt.",
    "Explain the effect of temperature on the solubility of solids and of gases.",
  ),
  hotspots: (
    "\\\"The concentration of 4.0 g of NaOH in 250 cm³ is …\\\" — 0.40 mol dm⁻³, because the volume must be converted to dm³ first.",
    "\\\"A saturated solution at 80 °C is cooled to 20 °C; the mass crystallised is …\\\" — subtract the two solubilities, then scale to the mass of water.",
    "\\\"Diluting 25 cm³ of 2.0 M acid to 250 cm³ gives …\\\" — 0.20 M, because the moles are unchanged.",
    "\\\"The solubility of a gas as the temperature rises …\\\" — falls, which is why warm soda goes flat.",
    "\\\"The mass of water in 25 g of CuSO₄·5H₂O is …\\\" — 9.0 g, from the ratio 90/250.",
  ),
  trap-summary: "Three slips. (1) Leaving the volume in cm³: 250 cm³ is 0.250 dm³, and a concentration computed as 4.0 ÷ 250 is off by a factor of a thousand. (2) Treating solubility as “grams per dm³”: the syllabus definition is grams per 100 g of water, and the two are not interchangeable. (3) Forgetting that the mass of water, not the mass of solution, is the basis of a solubility calculation — a saturated solution of a very soluble salt is mostly solute.",
)

// ============================================================================
== 2.1 Solute, Solvent and Solution

A *solution* is a homogeneous mixture of two or more substances. The substance in the smaller amount is the *solute*, and the substance that dissolves it is the *solvent*. When the solvent is water the solution is *aqueous*.

#table(
  columns: (1.15fr, 2.0fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What is dissolved],
  ),

  [Solid in liquid], [salt in water, sugar in water], [ions or molecules, separated and surrounded by water molecules],
  [Liquid in liquid (miscible)], [ethanol in water], [molecules, mixing freely in every proportion],
  [Liquid in liquid (immiscible)], [oil and water], [nothing — the two form layers],
  [Gas in liquid], [carbon dioxide in soda, oxygen in water], [molecules, more soluble when cold and under pressure],
  [Gas in gas], [air], [molecules, mixing in every proportion],
  [Solid in solid], [an alloy: brass, steel], [atoms of one metal in the lattice of another],
)

#concept-box("What happens when an ionic solid dissolves")[
  Water molecules are polar: the oxygen end is slightly negative and the hydrogen ends slightly positive. When an ionic solid such as sodium chloride is placed in water:

  + the *negative* oxygen ends of the water molecules surround the sodium ions and pull them out of the lattice;
  + the *positive* hydrogen ends surround the chloride ions;
  + the ions are carried into solution, *hydrated* — each ion wearing a coat of water molecules.

  The solid does not “melt”. It is pulled apart, ion by ion, and that is why a solution of sodium chloride conducts electricity while the solid does not.
]

// ============================================================================
== 2.2 Concentration

*Concentration* is the amount of solute in a stated volume of solution. There are two forms, and the examination uses both.

#formula-box("The two concentrations")[
  $c ("in g dm"^(-3)) = m ("in g") div V ("in dm"^3)$
  #v(4pt)
  $c ("in mol dm"^(-3)) = n ("in mol") div V ("in dm"^3) quad "and" quad n = m div M_r$
  #v(4pt)
  $"1 dm"^3 = 1000 "cm"^3 quad "so" quad 250 "cm"^3 = 0.250 "dm"^3$
]

#table(
  columns: (1.5fr, 1.7fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Word],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),

  [*Molarity*], [M or mol dm⁻³], [moles of solute per dm³ of *solution* — the usual JAMB unit],
  [*Mass concentration*], [g dm⁻³], [grams of solute per dm³ of solution],
  [*Mass percentage*], [% w/w], [grams of solute per 100 g of solution],
  [*Mole fraction*], [$chi$], [moles of one component ÷ total moles in the mixture],
  [*Parts per million*], [ppm], [milligrams of solute per dm³ — used for trace impurities],
)

#trap-box("Solution, not solvent")[
  A concentration is moles per dm³ of *solution*. If you dissolve 1 mol of salt in 1 dm³ of water, the volume of the solution is slightly *more* than 1 dm³, so the concentration is slightly less than 1 M. In the examination, unless the question says otherwise, the volume given is the volume of the solution, and no correction is needed. What is never allowed is dividing by the mass of the solvent and calling it a concentration.
]

#worked-example(
  1,
  "From grams to mol dm⁻³",
  tier: "FOUNDATION",
  [4.0 g of sodium hydroxide is dissolved in water and the solution is made up to 250 cm³. Calculate (a) the concentration in g dm⁻³, (b) the concentration in mol dm⁻³.],
  [
    *Convert the volume first.*
    $V = 250 "cm"^3 = 0.250 "dm"^3$

    *(a) Mass concentration.*
    $c = m div V = 4.0 div 0.250 = 16 "g dm"^(-3)$

    *(b) Molar concentration.* $M_r$ of NaOH is 40.
    $n = m div M_r = 4.0 div 40 = 0.100 "mol"$
    $c = n div V = 0.100 div 0.250 = 0.400 "mol dm"^(-3)$

    *Check.* $16 "g dm"^(-3) div 40 "g mol"^(-1) = 0.40 "mol dm"^(-3)$. The two answers must agree, and checking one against the other is the fastest way to catch a power-of-ten slip.
  ],
)

#worked-example(
  2,
  "The mass needed for a standard solution",
  tier: "UTME STANDARD",
  [What mass of anhydrous sodium carbonate is needed to prepare 250 cm³ of a 0.100 M solution? ($M_r = 106$)],
  [
    *Moles required.*
    $n = c V = 0.100 times 0.250 = 0.0250 "mol"$

    *Mass.*
    $m = n M_r = 0.0250 times 106 = 2.65 "g"$

    *The practical sentence.* Weigh 2.65 g accurately, dissolve it in a little distilled water in a beaker, transfer it to a 250 cm³ volumetric flask with washings, make up to the mark with distilled water, and invert the flask several times to mix. The mark is read with the bottom of the meniscus level with it, at eye level.
  ],
)

#diagram-fig("diagrams/ch02_dilution.svg",
  "Dilution leaves the number of moles unchanged and spreads them through a larger volume: the same three particles, ten times the volume, one tenth the concentration.")

== 2.3 Dilution

Dilution is the addition of solvent. The *moles of solute do not change*; only the volume does.

#formula-box("The dilution equation")[
  $c_1 V_1 = c_2 V_2$

  where 1 refers to the concentrated solution taken and 2 to the diluted solution made. Any volume unit can be used provided it is the same on both sides.
]

#worked-example(
  3,
  "Diluting a bench reagent",
  tier: "FOUNDATION",
  [25.0 cm³ of 2.00 M hydrochloric acid is diluted to 250 cm³. Calculate the concentration of the diluted acid.],
  [
    $c_2 = c_1 V_1 div V_2 = (2.00 times 25.0) div 250 = 0.200 "mol dm"^(-3)$

    The moles are $2.00 times 0.0250 = 0.0500$ mol before and after; the volume has grown tenfold, so the concentration has fallen tenfold. Say both halves of that sentence in a structured answer.
  ],
)

#shortcut-box("Dilution questions, three types")[
  *“What concentration results?”* → $c_2 = c_1 V_1 div V_2$. \\
  *“What volume must I take?”* → $V_1 = c_2 V_2 div c_1$. \\
  *“How much water was added?”* → find the final volume, then subtract the original volume. The answer is $V_2 - V_1$, never $V_2$.
]

// ============================================================================
== 2.4 Saturated Solutions and Solubility

A *saturated solution* is one that contains as much dissolved solute as it can hold at that temperature. Any further solute stays undissolved. A *supersaturated* solution contains more than the saturated amount, and it crystallises violently when a crystal is added or the solution is disturbed.

#concept-box("The three words examiners test")[
  *Solubility* — the mass of solute that saturates 100 g of water at a stated temperature. Units: g per 100 g of water. \\
  *Saturated* — no more will dissolve at that temperature. \\
  *Solubility curve* — a graph of solubility against temperature, from which any value can be read.
]

#diagram-fig("diagrams/ch02_solubility.svg",
  "Solubility curves for four salts between 0 °C and 60 °C. Potassium nitrate climbs steeply, sodium chloride is almost flat, and cerium(III) sulphate falls — the exception that proves the rule that most solids become more soluble as the temperature rises.")

#table(
  columns: (1.6fr, 2.0fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Substance],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Effect of raising the temperature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [Most solids], [solubility *rises* — dissolving is endothermic for these salts], [KNO₃, KCl, sugar],
  [A few solids], [solubility *barely changes*], [NaCl],
  [A very few solids], [solubility *falls*], [Ce₂(SO₄)₃, Ca(OH)₂],
  [All gases], [solubility *falls* — the gas escapes], [CO₂ in soda, O₂ in a warm river],
)

#concept-box("Henry's law, in one line")[
  The solubility of a gas in a liquid is *directly proportional* to the pressure of that gas above the liquid, and it *falls* as the temperature rises. Both halves explain the same everyday observation: a bottle of soda is fizzy under pressure and cold, and goes flat when it is opened and warmed.
]

// ============================================================================
== 2.5 Crystallisation and the Mass Recovered

Cooling a saturated solution makes it *supersaturated*, and the excess solute crystallises out. The mass recovered is the difference between the amount that was dissolved at the higher temperature and the amount that can stay dissolved at the lower one — scaled to the mass of water actually present.

#worked-example(
  4,
  "Cooling a saturated solution",
  tier: "UTME STANDARD",
  [The solubility of potassium nitrate is 64 g per 100 g of water at 40 °C and 32 g per 100 g of water at 20 °C. What mass of potassium nitrate crystallises when 200 g of a saturated solution at 40 °C is cooled to 20 °C?],
  [
    *Find the mass of water in the original solution.* At 40 °C, 100 g of water holds 64 g of salt, so the saturated solution is $100 + 64 = 164$ g. In 200 g of that solution the water is

    $m("water") = 200 times 100 div 164 = 122.0 "g"$

    *Scale the two solubilities to that mass of water.*
    $m("dissolved at 40 °C") = 64 times 1.220 = 78.0 "g"$
    $m("dissolved at 20 °C") = 32 times 1.220 = 39.0 "g"$

    *Subtract.*
    $m("crystallised") = 78.0 - 39.0 = 39.0 "g"$

    *The structure that earns full marks:* (1) find the water, (2) scale both solubilities to it, (3) subtract. Candidates who subtract the raw solubilities and then multiply by 2 get the right number here by luck and the wrong one in the next question, because the basis is 100 g of *water*, not 100 g of solution.
  ],
)

#concept-box("The six steps of crystallisation")[
  + Warm the solvent and add the solid until no more dissolves.
  + Filter while hot to remove any undissolved solid and any insoluble impurity.
  + Evaporate the filtrate until a drop placed on a cold watch glass begins to crystallise (the *point of crystallisation*).
  + Cool slowly — large, pure crystals form.
  + Filter the crystals off, and wash them with a little *cold* distilled water.
  + Dry them between filter papers, or in a warm oven, but not over a naked flame.
]

#trap-box("Why cold water, and why not evaporate to dryness")[
  Crystals are washed with a *small* volume of *cold* water: cold, so that the product does not redissolve; a small volume, so that the loss is negligible; distilled, so that no new impurity is introduced.

  Evaporating to dryness is wrong for a hydrate — the water of crystallisation is driven off and the product is a powder, not crystals — and it leaves every soluble impurity in the product. Evaporate to the point of crystallisation, then cool.
]

== 2.6 Water of Crystallisation

A hydrated salt has a fixed number of water molecules built into its crystal. Heating drives them off and leaves the *anhydrous* salt.

#formula-box("The ratio method")[
  $"moles of water" = (m("lost on heating")) div 18$
  #v(3pt)
  $"moles of anhydrous salt" = (m("remaining")) div M_r$
  #v(3pt)
  $"x = moles of water" div "moles of anhydrous salt"$
]

#worked-example(
  5,
  "Finding x in a hydrate",
  tier: "JAMB CHALLENGE",
  [25.0 g of hydrated copper(II) sulphate, CuSO₄·xH₂O, is heated to constant mass and leaves 16.0 g of the anhydrous salt. Find x and the percentage of water in the hydrate.],
  [
    *Masses.*
    $m("water") = 25.0 - 16.0 = 9.0 "g"$

    *Moles.*
    $n(op("CuSO")_4) = 16.0 div 160 = 0.100 "mol"$
    $n(op("H")_2 op("O")) = 9.0 div 18 = 0.500 "mol"$

    *Ratio.*
    $x = 0.500 div 0.100 = 5$

    *Percentage of water.*
    $9.0 div 25.0 times 100 = 36 %$

    *Check.* $5 times 18 = 90$; $160 + 90 = 250$; $90 div 250 = 36 %$. The check uses the formula rather than the experiment, so agreement proves the arithmetic rather than the weighing — but in an examination it is all the reassurance you have time for.
  ],
)

== 2.7 Colligative Effects, Told Simply

The presence of a solute changes some properties of the solvent. These are called *colligative* properties because they depend on the *number* of dissolved particles, not on what the particles are.

#table(
  columns: (1.55fr, 1.75fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Effect of the solute],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Where you meet it],
  ),

  [Boiling point], [raised], [salt water boils above 100 °C; antifreeze in a radiator],
  [Melting point], [lowered], [salt on an icy road; the freezing point of sea water],
  [Vapour pressure], [lowered], [a solution evaporates more slowly than the pure solvent],
  [Osmotic pressure], [raised], [water moves into a cell across a membrane],
)

#concept-box("One mole counts by particles, not by formula")[
  A mole of sodium chloride gives *two* moles of ions in solution, and a mole of glucose gives one mole of molecules. For the same concentration, the salt therefore has roughly twice the effect on the boiling point. That single fact — the number of particles — is the whole of the colligative idea.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch02.svg",
  "Chapter 2 recap card: concentration, dilution, solubility and crystallisation.", width: 100%)

#pagebreak()
== 2.8 Chapter 2 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + name the solute and the solvent in a given solution;
  + explain how water pulls an ionic lattice apart;
  + convert cm³ to dm³ without losing a factor of a thousand;
  + calculate concentration in g dm⁻³ and in mol dm⁻³, and convert between them;
  + calculate the mass needed for a standard solution;
  + use $c_1 V_1 = c_2 V_2$ in all three directions;
  + define saturated and solubility, with the correct units;
  + read a value from a solubility curve;
  + calculate the mass crystallised on cooling, working from the mass of water;
  + describe crystallisation in six steps, and say why the wash water is cold;
  + find the water of crystallisation from masses;
  + state the effect of a solute on boiling point, melting point and vapour pressure.
]


#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 2 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A solution is a solute dissolved in a solvent, and an ionic solid dissolves because polar water molecules
    pull the lattice apart and hydrate the ions. Concentration is the amount of solute per dm³ of solution, in
    g dm⁻³ or mol dm⁻³, and the commonest error in the chapter is leaving the volume in cm³. Dilution conserves
    the moles, so $c_1 V_1 = c_2 V_2$. A saturated solution holds all the solute it can at that temperature, and
    solubility is quoted in grams per 100 g of water — not per dm³. Cooling it crystallises the excess, and the
    calculation always starts by finding the mass of water. Hydrated salts lose their water of crystallisation on
    heating, and any solute raises the boiling point and lowers the melting point in proportion to the number of
    particles it releases.
  ]
]

== 2.9 Chapter 2 in the Exam Hall — a Two-Minute Set

#mcq(1, [The concentration of a solution containing 4.0 g of sodium hydroxide in 250 cm³ is], [0.016 mol dm⁻³], [0.40 mol dm⁻³], [0.10 mol dm⁻³], [1.6 mol dm⁻³])
#mcq(2, [25.0 cm³ of 2.00 M hydrochloric acid is diluted to 250 cm³. The concentration of the diluted acid is], [0.020 M], [0.200 M], [0.500 M], [2.00 M])
#mcq(3, [A saturated solution is one that], [contains no more solute], [cannot dissolve any more solute at that temperature], [is concentrated], [has been filtered])
#mcq(4, [The solubility of a gas in water as the temperature rises], [increases], [decreases], [stays the same], [first rises then falls])

#answer-key-grid(("B", "B", "B", "B"))

#answer-notes((
  ("B", [$n = 4.0 div 40 = 0.10$ mol in 0.250 dm³, so $c = 0.40$ mol dm⁻³.]),
  ("B", [$c_2 = c_1 V_1 div V_2 = (2.00 times 25.0) div 250 = 0.200$ M; the moles are unchanged, and the volume has grown tenfold.]),
  ("B", [a saturated solution holds all the solute it can at that temperature; adding more leaves it undissolved.]),
  ("B", [dissolving a gas is exothermic, so warming the solution drives the gas out — which is why warm soda goes flat.]),
))

#concept-box("Carry this into Chapter 3")[
  Every calculation in this chapter ends in a solution whose mass and temperature can be measured. That is exactly what Chapter 3 does: it weighs the heat exchanged when a solid dissolves and when an acid is neutralised, and divides that heat by the moles you have just learned to calculate. The 0.40 M sodium hydroxide you made here is the standard solution the calorimetry worked example uses there — same moles, one new idea.
]

#include "drill_ch02.typ"
