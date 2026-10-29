#import "template.typ": *

#current-chapter.update("Appendix F: Glossary of Key Terms")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary of Key Terms]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX F]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary of Key Terms]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The wording the examiner expects, chapter by chapter. A definition mark is not a memory test — it is a test of whether you can say the thing precisely in one sentence.]
]

#v(4pt)

== F.1 Acids, Bases and Salts

#[
  #set text(size: 8.9pt)
  #table(
    columns: (1.15fr, 2.75fr),
    inset: (x: 5pt, y: 3.0pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Definition],
    ),
    [acid], [a proton donor — a substance that gives hydrogen ions to another species],
    [base], [a proton acceptor — a substance that takes hydrogen ions],
    [strong acid], [one that ionises almost completely in water],
    [weak acid], [one that ionises only slightly in water, so an equilibrium is set up],
    [alkali], [a soluble base that produces hydroxide ions in water],
    [amphoteric], [able to behave as either an acid or a base, as water and aluminium oxide do],
    [neutralisation], [the reaction of hydrogen ions with hydroxide ions to give water],
    [salt], [the compound formed when the hydrogen of an acid is replaced by a metal or ammonium ion],
    [basicity], [the number of replaceable hydrogen atoms in a molecule of an acid],
    [pH], [the negative logarithm to base 10 of the hydrogen-ion concentration],
    [standard solution], [a solution of accurately known concentration],
    [titration], [a volumetric method in which a solution of known concentration is added until the reaction is just complete],
    [equivalence point], [the point at which the acid and base have reacted in the exact mole ratio of the equation],
    [end point], [the point at which the indicator changes colour — ideally the same as the equivalence point],
    [indicator], [a weak acid or base whose colour differs from that of its conjugate],
    [buffer], [a solution that resists a change in pH when a small amount of acid or base is added],
    [deliquescent], [a substance that absorbs water from the air until it dissolves in it],
    [efflorescent], [a hydrated salt that loses its water of crystallisation to the air],
    [hygroscopic], [a substance that absorbs water from the air without dissolving in it],
  )
]

== F.2 Solutions and Solubility

#[
  #set text(size: 8.9pt)
  #table(
    columns: (1.15fr, 2.75fr),
    inset: (x: 5pt, y: 3.0pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Definition],
    ),
    [solution], [a homogeneous mixture of a solute dissolved in a solvent],
    [solute], [the substance that dissolves, present in the smaller amount],
    [solvent], [the substance that dissolves the solute, present in the larger amount],
    [concentration], [the amount of solute in a stated volume of solution, in mol dm⁻³ or g dm⁻³],
    [molarity], [concentration expressed as moles of solute per cubic decimetre of solution],
    [standard solution], [a solution whose concentration is accurately known],
    [dilution], [adding solvent so that the concentration falls while the number of moles stays the same],
    [saturated solution], [a solution holding the maximum mass of solute it can dissolve at that temperature],
    [unsaturated], [a solution able to dissolve more solute at that temperature],
    [supersaturated], [an unstable solution holding more solute than it should at that temperature],
    [solubility], [the mass of solute that saturates 100 g of water at a stated temperature],
    [solubility curve], [a graph of solubility against temperature],
    [crystallisation], [the formation of solid crystals from a saturated or supersaturated solution],
    [water of crystallisation], [water built into the crystal lattice in a fixed ratio to the salt],
    [anhydrous], [containing no water of crystallisation],
    [hydrated], [containing water of crystallisation],
    [colligative property], [a property depending on the number of dissolved particles rather than their nature],
    [osmosis], [the movement of solvent through a membrane from a dilute to a concentrated solution],
  )
]

== F.3 Chemical Energetics

#[
  #set text(size: 8.9pt)
  #table(
    columns: (1.15fr, 2.75fr),
    inset: (x: 5pt, y: 3.0pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Definition],
    ),
    [enthalpy change], [the heat energy transferred in a reaction at constant pressure],
    [exothermic], [giving out heat to the surroundings, so $Delta H$ is negative],
    [endothermic], [taking in heat from the surroundings, so $Delta H$ is positive],
    [standard conditions], [298 K and 1 atm pressure, with all substances in their standard states],
    [bond enthalpy], [the energy needed to break one mole of a given bond in the gaseous state],
    [activation energy], [the minimum energy colliding particles need in order to react],
    [enthalpy of formation], [the enthalpy change when one mole of a compound forms from its elements in their standard states],
    [enthalpy of combustion], [the enthalpy change when one mole of a substance burns completely in oxygen],
    [enthalpy of solution], [the enthalpy change when one mole of a substance dissolves in water to give a very dilute solution],
    [enthalpy of neutralisation], [the enthalpy change when one mole of water forms from an acid and a base],
    [Hess's law], [the total enthalpy change of a reaction is the same whatever route is taken],
    [calorimetry], [the measurement of heat changes during a reaction],
    [specific heat capacity], [the energy needed to raise 1 g of a substance by 1 K],
    [state function], [a quantity that depends only on the present state, not on how it was reached],
  )
]

== F.4 Rates of Reaction

#[
  #set text(size: 8.9pt)
  #table(
    columns: (1.15fr, 2.75fr),
    inset: (x: 5pt, y: 3.0pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Definition],
    ),
    [rate of reaction], [the change in concentration of a reactant or product per unit time],
    [collision theory], [particles must collide with enough energy and the right orientation to react],
    [effective collision], [a collision that leads to reaction],
    [activation energy], [the minimum collision energy for a reaction to occur],
    [catalyst], [a substance that speeds up a reaction by lowering the activation energy and is unchanged at the end],
    [homogeneous catalyst], [a catalyst in the same phase as the reactants],
    [heterogeneous catalyst], [a catalyst in a different phase from the reactants],
    [enzyme], [a protein that acts as a biological catalyst],
    [catalyst poison], [a substance that blocks the active sites and so destroys catalytic activity],
    [Maxwell–Boltzmann distribution], [the spread of molecular energies at a given temperature],
    [rate constant], [the proportionality constant in the rate equation, dependent on temperature],
    [order of reaction], [the power to which the concentration of a reactant is raised in the rate equation],
    [photochemical reaction], [a reaction started by light, which supplies the activation energy],
    [surface area], [the area of solid exposed to the other reactant — larger area, faster reaction],
  )
]

== F.5 Chemical Equilibrium

#[
  #set text(size: 8.9pt)
  #table(
    columns: (1.15fr, 2.75fr),
    inset: (x: 5pt, y: 3.0pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Definition],
    ),
    [reversible reaction], [one in which the products can react to re-form the reactants],
    [dynamic equilibrium], [a state in which the forward and reverse reactions occur at equal rates, so concentrations stay constant],
    [closed system], [a system that exchanges energy but not matter with its surroundings],
    [position of equilibrium], [the balance of reactants and products in an equilibrium mixture],
    [equilibrium constant], [the ratio of product concentrations to reactant concentrations, each raised to its stoichiometric power],
    [Le Chatelier's principle], [a system at equilibrium opposes any change imposed on it],
    [compromise conditions], [industrial conditions chosen to balance yield against rate],
    [Haber process], [the manufacture of ammonia from nitrogen and hydrogen over an iron catalyst],
    [contact process], [the manufacture of sulphuric acid, with sulphur trioxide formed over vanadium(V) oxide],
    [yield], [the amount of product actually obtained compared with the maximum possible],
    [partial pressure], [the pressure a gas would exert if it alone occupied the volume],
    [inert gas], [a gas that does not take part in the reaction and does not shift the equilibrium at constant volume],
  )
]

== F.6 Redox and Electrochemistry

#[
  #set text(size: 8.9pt)
  #table(
    columns: (1.15fr, 2.75fr),
    inset: (x: 5pt, y: 3.0pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.3pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Term],
      text(font: "DejaVu Sans", size: 8.0pt, weight: "bold", fill: white)[Definition],
    ),
    [oxidation], [loss of electrons, or an increase in oxidation number],
    [reduction], [gain of electrons, or a decrease in oxidation number],
    [redox reaction], [a reaction in which oxidation and reduction occur together],
    [oxidation number], [the charge an atom would carry if the compound were ionic],
    [oxidising agent], [a substance that takes electrons and is itself reduced],
    [reducing agent], [a substance that gives electrons and is itself oxidised],
    [disproportionation], [an element being oxidised and reduced in the same reaction],
    [electrolysis], [the decomposition of a compound by the passage of a direct current],
    [electrode], [a conductor through which current enters or leaves an electrolyte],
    [anode], [the positive electrode, where oxidation occurs],
    [cathode], [the negative electrode, where reduction occurs],
    [electrolyte], [a substance that conducts electricity when molten or dissolved, because it contains mobile ions],
    [electrolytic cell], [a cell in which electrical energy drives a non-spontaneous reaction],
    [galvanic cell], [a cell in which a spontaneous redox reaction produces electrical energy],
    [salt bridge], [a tube of electrolyte that completes the circuit and keeps the two half-cells neutral],
    [standard electrode potential], [the EMF of a half-cell connected to a standard hydrogen electrode under standard conditions],
    [EMF of a cell], [the difference between the standard reduction potentials of the cathode and the anode],
    [rusting], [the oxidation of iron to hydrated iron(III) oxide in moist air],
    [sacrificial protection], [protecting a metal by attaching a more reactive metal that corrodes in its place],
    [galvanising], [coating iron with zinc to prevent rusting],
    [electroplating], [depositing a layer of metal on an object by electrolysis],
    [Faraday's law], [the mass deposited at an electrode is proportional to the charge passed],
  )
]

#trap-box("The two definitions candidates lose most often")[
  *Solubility* is quoted per 100 g of *water* — never per 100 cm³ of solution, and never per dm³. *Dynamic equilibrium* is “equal rates, concentrations constant” — never “the reaction has stopped”. Write both sentences out once a week until they are automatic.
]
