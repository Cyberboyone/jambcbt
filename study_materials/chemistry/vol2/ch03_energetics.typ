#import "template.typ": *

#current-chapter.update("Chapter 3: Chemical Energetics")
#pagebreak()

#chapter-opener(
  3,
  "Chemical Energetics",
  subtitle: "Exothermic and Endothermic Reactions, Enthalpy Change, Bond Breaking and Bond Making, Enthalpies of Combustion, Formation and Neutralisation, Hess's Law and Calorimetry",
  syllabus-ref: "Sec. B • Topic 3",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Distinguish an exothermic from an endothermic reaction by the sign of ΔH and by the thermometer.",
    "Draw and label an energy profile, marking the reactants, products, activation energy and ΔH.",
    "Calculate ΔH from bond energies.",
    "Use standard enthalpies of combustion and of formation.",
    "Apply Hess's law to a cycle.",
    "Calculate the heat change in a calorimeter, and convert it to a molar enthalpy.",
    "State the standard conditions and the meaning of a standard enthalpy of formation.",
    "Explain why the enthalpy of neutralisation of a strong acid is constant.",
  ),
  hotspots: (
    "\\\"Which reaction is exothermic?\\\" — combustion, neutralisation, condensation, freezing, dissolving sodium hydroxide.",
    "\\\"Using the bond energies, ΔH for the reaction is …\\\" — bonds broken minus bonds formed; the sign follows.",
    "\\\"The enthalpy of neutralisation of HCl and NaOH is −57 kJ mol⁻¹. With ethanoic acid it is …\\\" — less negative, because some energy is used in ionising the weak acid.",
    "\\\"Hess's law gives ΔH as …\\\" — follow the arrows, and reverse a step when you reverse an equation.",
    "\\\"10 g of a fuel raises 500 g of water by 20 °C. The heat released is …\\\" — 41.8 kJ, from $q = m c Delta T$.",
  ),
  trap-summary: "Three slips. (1) Reversing the sign of ΔH: an exothermic reaction has a *negative* ΔH because the products are lower in energy, and candidates write “+890” for the combustion of methane every year. (2) Forgetting that bond *breaking* costs energy and bond *making* releases it, so $Delta H =$ (bonds broken) − (bonds formed). (3) Using the mass of the *solute* instead of the mass of the *water* in $q = m c Delta T$; the heat is measured in the solution, so the solution's mass is what enters the calculation.",
)

// ============================================================================
== 3.1 Heat, Temperature and Enthalpy

*Heat* is a form of energy transferred because of a temperature difference. *Temperature* measures the average kinetic energy of the particles. *Enthalpy* ($H$) is the heat content of a system at constant pressure, and the change in it, $Delta H$, is what a reaction gives out or takes in.

#formula-box("The three definitions")[
  *Exothermic* — heat is released to the surroundings; the temperature rises; $Delta H$ is negative; the products are lower in energy than the reactants. \\
  *Endothermic* — heat is absorbed from the surroundings; the temperature falls; $Delta H$ is positive; the products are higher in energy.

  $Delta H = H("products") - H("reactants")$
]

#table(
  columns: (1.5fr, 2.0fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Exothermic — ΔH negative],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Endothermic — ΔH positive],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Remember by],
  ),

  [combustion of any fuel], [thermal decomposition of limestone], [burning gives out heat],
  [neutralisation of an acid by an alkali], [photosynthesis], [a fire warms you],
  [condensation and freezing], [melting and boiling], [freezing warms the surroundings],
  [dissolving sodium hydroxide], [dissolving ammonium chloride], [“cold pack” for a sprain],
  [respiration], [electrolysis of water], [both are the same reaction, run in opposite directions],
)

#diagram-fig("diagrams/ch03_enthalpy.svg",
  "Two energy profiles on the same scale. On the left the products sit below the reactants, so heat is released and ΔH is negative; on the right they sit above, so heat is absorbed and ΔH is positive. The hump is the activation energy in both cases.")

#concept-box("Why a reaction gives out heat at all")[
  Every reaction first *breaks* bonds (costing energy) and then *makes* new ones (releasing energy).

  If the bonds made are *stronger* than the bonds broken, the surplus is released as heat — exothermic. If the bonds made are *weaker*, the reaction must take energy from its surroundings — endothermic.

  That is the whole of energetics in one paragraph, and it is the sentence to write when a question asks *why* a reaction is exothermic.
]

// ============================================================================
== 3.2 Bond Energies and ΔH

The *bond energy* (or bond enthalpy) is the energy needed to break one mole of a particular bond in the gaseous state. Breaking costs; forming pays. The net change is the difference.

#formula-box("The bond-energy formula")[
  $Delta H = sum "bonds broken" - sum "bonds formed"$

  Bonds broken always carry a *positive* sign, because energy must be put in. Bonds formed always carry a *negative* sign. Textbooks often write the same formula as

  $Delta H = sum "reactant bond energies" - sum "product bond energies"$

  — which is the same statement, and gives the same sign if you are careful.
]

#worked-example(
  1,
  "ΔH from bond energies",
  tier: "UTME STANDARD",
  [Use the bond energies below to calculate ΔH for $op("H")_2 (g) + op("Cl")_2 (g) -> 2 op("HCl")(g)$.

  H–H = 436 kJ mol⁻¹; Cl–Cl = 243 kJ mol⁻¹; H–Cl = 431 kJ mol⁻¹.],
  [
    *Bonds broken (in the reactants).*
    One H–H and one Cl–Cl: $436 + 243 = 679 "kJ mol"^(-1)$

    *Bonds formed (in the products).*
    Two H–Cl: $2 times 431 = 862 "kJ mol"^(-1)$

    *ΔH.*
    $Delta H = 679 - 862 = -183 "kJ mol"^(-1)$

    The answer is negative, so the reaction is exothermic: the two H–Cl bonds made are stronger than the H–H and Cl–Cl bonds broken. *Write the units every time* — kJ mol⁻¹, not kJ — and keep the minus sign, because the examiner is marking both.
  ],
)

#worked-example(
  2,
  "The same idea for a reaction that needs heat",
  tier: "JAMB CHALLENGE",
  [Given H–H = 436, O=O = 498 and O–H = 463 kJ mol⁻¹, calculate ΔH for the formation of two moles of steam from its elements: $2op("H")_2 + op("O")_2 -> 2op("H")_2 op("O")$.],
  [
    *Bonds broken.* Two H–H and one O=O:
    $2 times 436 + 498 = 1370 "kJ mol"^(-1)$

    *Bonds formed.* Each water molecule has two O–H bonds, so two molecules give four:
    $4 times 463 = 1852 "kJ mol"^(-1)$

    *ΔH.*
    $Delta H = 1370 - 1852 = -482 "kJ mol"^(-1)$

    Per mole of water that is −241 kJ mol⁻¹, which is the standard enthalpy of formation of steam. Recognizing that half of the third digit is the per-mole value is worth a mark in a structured question.
  ],
)

#trap-box("Average bond energies are averages")[
  A bond energy is an *average* over many compounds, not an exact value for the molecule in front of you. That is why a value calculated from bond energies rarely matches the data-book value exactly, and why the syllabus asks for “an estimate” when bond energies are used. Never write that the two must agree.
]

// ============================================================================
== 3.3 Standard Enthalpies

An enthalpy change depends on the conditions, so chemists fix a standard set: $298$ K ($25$ °C), $1$ atm (or $100$ kPa), and every substance in its standard state.

#table(
  columns: (1.5fr, 2.05fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Standard enthalpy of …],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Definition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Sign and example],
  ),

  [*Formation*, $Delta H_f$], [when *one mole* of a compound is formed from its elements in their standard states], [negative for a stable compound: $Delta H_f (op("H")_2 op("O"), l) = -286$ kJ mol⁻¹],
  [*Combustion*, $Delta H_c$], [when *one mole* of a substance is completely burned in excess oxygen], [always negative: $Delta H_c$ (methane) = $−890$ kJ mol⁻¹],
  [*Neutralisation*, $Delta H_n$], [when *one mole* of water is formed from H⁺ and OH⁻ in dilute solution], [about $−57$ kJ mol⁻¹ for a strong acid and a strong base],
  [*Solution*, $Delta H_"sol"$], [when *one mole* of a substance dissolves in a large excess of water], [either sign: dissolving NaOH is exothermic ($−44$ kJ mol⁻¹) and dissolving NH₄Cl is endothermic ($+15$ kJ mol⁻¹)],
  [*Atomisation*], [when one mole of gaseous atoms is formed from an element], [always positive, because bonds must be broken],
)

#concept-box("Enthalpy of formation of an element")[
  The standard enthalpy of formation of an element *in its standard state* is zero by definition — there is no change in forming O₂(g) from O₂(g). That single convention answers a whole family of questions, and it is the reason a Hess's-law cycle can start from the elements.
]

#concept-box("Why neutralisation is always about −57")[
  For a strong acid and a strong base, the reaction in dilute solution is always the same:

  $op("H")^+ "(aq)" + op("OH")^- "(aq)" -> op("H")_2 op("O") "(l)" quad Delta H = -57 "kJ mol"^(-1)$

  The spectator ions do nothing, so every strong acid with every strong base gives the same value. With a *weak* acid the value is smaller in magnitude (about −52 for ethanoic acid) because some of the energy released is used in ionising the acid, and with a *weak* base the same is true for the base.
]

// ============================================================================
== 3.4 Hess's Law

*Hess's law* states that the enthalpy change of a reaction is independent of the route taken, provided the initial and final states are the same. It follows from the fact that enthalpy is a *state function*.

#diagram-fig("diagrams/ch03_hess.svg",
  "Hess's law drawn as a triangle. Burning carbon directly to carbon dioxide releases 393 kJ mol⁻¹; going by way of carbon monoxide releases 110 + 283 = 393 kJ mol⁻¹. The route does not change the total.")

#worked-example(
  3,
  "A Hess's law cycle with combustion data",
  tier: "UTME STANDARD",
  [Calculate ΔH for $op("C")(s) + 1/2 op("O")_2 (g) -> op("CO")(g)$, given that

  $op("C")(s) + op("O")_2 (g) -> op("CO")_2 (g)$ has $Delta H = -393$ kJ mol⁻¹, and

  $op("CO")(g) + 1/2 op("O")_2 (g) -> op("CO")_2 (g)$ has $Delta H = -283$ kJ mol⁻¹.],
  [
    *Route 1* — burn carbon completely to carbon dioxide: $−393$ kJ mol⁻¹.

    *Route 2* — form carbon monoxide, then burn it: $Delta H + (-283)$ kJ mol⁻¹.

    *Hess's law sets the routes equal.*
    $Delta H - 283 = -393$
    $Delta H = -393 + 283 = -110 "kJ mol"^(-1)$

    *The check that catches sign errors:* burning CO releases heat, and burning CO to CO₂ is the second step of the direct route, so forming CO must release *less* heat than forming CO₂ — a smaller negative number. $−110$ is smaller than $−393$, so the sign is right.
  ],
)

#worked-example(
  4,
  "A cycle built from enthalpies of formation",
  tier: "JAMB CHALLENGE",
  [Calculate ΔH for the reduction of iron(III) oxide by carbon monoxide:

  $op("Fe")_2 op("O")_3 (s) + 3op("CO")(g) -> 2op("Fe")(s) + 3op("CO")_2 (g)$

  given $Delta H_f$: Fe₂O₃ = $−824$, CO = $−111$, CO₂ = $−393$ kJ mol⁻¹.],
  [
    *The formula for a formation cycle.*
    $Delta H = sum Delta H_f ("products") - sum Delta H_f ("reactants")$

    *Products.* Iron metal is an element, so its $Delta H_f$ is zero.
    $3 times (-393) = -1179$

    *Reactants.*
    $(-824) + 3 times (-111) = -824 - 333 = -1157$

    *Subtract.*
    $Delta H = -1179 - (-1157) = -22 "kJ mol"^(-1)$

    A small negative value: the process is just about self-sustaining in energy terms, which is exactly why the blast furnace needs coke both as a fuel and as a reducing agent.
  ],
)

#shortcut-box("Three ways to run a Hess's-law question")[
  *Formation data* → products − reactants. \\
  *Combustion data* → reactants − products (the reverse, because combustion products are the same for both sides). \\
  *A cycle drawn for you* → add the steps you follow, and reverse the sign of any arrow you travel against.
]

// ============================================================================
== 3.5 Calorimetry

A calorimeter measures the heat exchanged with a known mass of water. The temperature change of the water is the measurement; everything else is arithmetic.

#diagram-fig("diagrams/ch03_calorimetry.svg",
  "The coffee-cup calorimeter. The heat released by the reaction warms a known mass of water, and the temperature rise is read on the thermometer.")

#formula-box("The calorimetry equations")[
  $q = m c Delta T$

  where $q$ is the heat in joules, $m$ the mass of water in grams, $c = 4.18$ J g⁻¹ K⁻¹ the specific heat capacity of water, and $Delta T$ the temperature change in kelvin (which equals the change in °C).

  $Delta H = -q div n quad "(J mol"^(-1)")"$
]

#worked-example(
  5,
  "From a temperature rise to a molar enthalpy",
  tier: "UTME STANDARD",
  [When 4.0 g of sodium hydroxide is dissolved in 100 cm³ of water, the temperature rises from 25.0 °C to 35.5 °C. Calculate the enthalpy of solution of sodium hydroxide.],
  [
    *Heat absorbed by the water.*
    $q = m c Delta T = 100 times 4.18 times 10.5 = 4389 "J" = 4.39 "kJ"$

    *Moles of sodium hydroxide.*
    $n = 4.0 div 40 = 0.100 "mol"$

    *Enthalpy per mole.*
    $Delta H = -4.39 div 0.100 = -43.9 "kJ mol"^(-1)$

    *Why the minus sign.* The water grew warmer, so the reaction released heat; a release is negative by convention. The rounding to $−44$ kJ mol⁻¹ matches the data book.

    *The commonest error* is using 4.0 g — the mass of the sodium hydroxide — as $m$. $m$ is the mass of the *water* being warmed, which is 100 g here.
  ],
)

#trap-box("The three calorimetry assumptions")[
  Every school calorimeter question assumes:

  + all the heat goes into the water — no heat is lost to the cup or the air;
  + the density of the solution is 1 g cm⁻³, so 100 cm³ weighs 100 g;
  + the specific heat capacity of the *solution* is that of water, 4.18 J g⁻¹ K⁻¹.

  State them when a structured question asks why the experimental value is lower in magnitude than the data-book value. The reason is that assumption 1 is never quite true.
]

// ============================================================================
== 3.6 Chapter 3 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + define exothermic and endothermic, with the sign of ΔH;
  + give three examples of each from everyday chemistry;
  + draw and label an energy profile with $E_a$ and ΔH marked;
  + explain why a reaction is exothermic in terms of bond strengths;
  + calculate ΔH from bond energies;
  + state the standard conditions;
  + define $Delta H_f$, $Delta H_c$, $Delta H_n$ and $Delta H_"sol"$;
  + apply Hess's law with formation data and with combustion data;
  + calculate $q = m c Delta T$ and convert it to a molar enthalpy;
  + explain why the enthalpy of neutralisation of a weak acid is smaller in magnitude.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    A reaction is exothermic when it releases heat, so the products sit lower in energy and ΔH is negative; it is endothermic when it absorbs heat, so the products sit higher and ΔH is positive. Every reaction breaks bonds and makes new ones: breaking costs energy and forming releases it, and the net is $Delta H =$ bonds broken − bonds formed. Standard enthalpies of formation, combustion, neutralisation and solution are all defined per mole and at 298 K and 1 atm, and because enthalpy is a state function the route does not matter — which is Hess's law, and which lets a value be built from any cycle that starts and ends in the same place. In the laboratory the heat is measured by warming a known mass of water, $q = m c Delta T$, and the molar enthalpy is that heat divided by the moles, with a minus sign whenever the thermometer went up.
  ]
]

#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: signs, bond energies, Hess's law and calorimetry.", width: 100%)

#pagebreak()
== 3.7 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [Which of the following is an endothermic process?], [burning methane], [condensing steam], [melting ice], [neutralising an acid])
#mcq(2, [For the combustion of methane, $Delta H = -890$ kJ mol⁻¹. This means that], [the reaction absorbs 890 kJ per mole], [the products have 890 kJ mol⁻¹ less energy than the reactants], [the activation energy is 890 kJ mol⁻¹], [the reaction is reversible])
#mcq(3, [In an energy profile diagram, the activation energy is], [the energy of the products], [the difference between the reactants and the peak], [the difference between the reactants and the products], [always negative])
#mcq(4, [Given H–H = 436, Cl–Cl = 243 and H–Cl = 431 kJ mol⁻¹, ΔH for H₂ + Cl₂ → 2HCl is], [−183 kJ mol⁻¹], [+183 kJ mol⁻¹], [−862 kJ mol⁻¹], [−679 kJ mol⁻¹])

#answer-key-grid(("C", "B", "B", "A"))

#answer-notes((
  ("C", [melting absorbs heat; the other three all release heat, so they are exothermic.]),
  ("B", [a negative ΔH means the products are lower in energy than the reactants by 890 kJ per mole.]),
  ("B", [the activation energy is measured from the reactants up to the top of the curve, not from the reactants to the products.]),
  ("A", [$Delta H = (436 + 243) - (2 times 431) = 679 - 862 = -183$ kJ mol⁻¹.]),
))

#include "drill_ch03.typ"
