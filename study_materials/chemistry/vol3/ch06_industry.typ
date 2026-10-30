#import "template.typ": *

#current-chapter.update("Chapter 6: Chemical Industry and the Environment")
#pagebreak()

#chapter-opener(
  6,
  "Chemical Industry and the Environment",
  subtitle: "Cement, Soap, Glass and Fertiliser, the Treatment and Hardness of Water, Air and Water Pollution, the Greenhouse Effect, Ozone Depletion and Waste Management",
  syllabus-ref: "Sec. C • Topic 6",
  utme-weight: "4 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the extraction and processing of the raw materials of Nigeria's major chemical industries, and name the product and the use of each.",
    "Describe the manufacture of cement, soap and glass, with the raw materials and the essential reaction.",
    "Explain the difference between soap and detergent, and between hard and soft water.",
    "Describe the stages of water treatment and the tests carried out on the finished water.",
    "Identify the major air and water pollutants, their sources, their effects and their control.",
    "Explain the greenhouse effect, ozone depletion and eutrophication.",
    "Describe waste management by the hierarchy reduce, reuse, recycle, recover and dispose.",
  ),
  hotspots: (
    "“The raw materials for cement are …” — limestone and clay, heated in a rotary kiln with gypsum added at the end.",
    "“Soap is made by …” — boiling a fat or oil with sodium hydroxide: saponification.",
    "“Hard water contains …” — calcium and magnesium ions, which form a scum with soap.",
    "“The gas that causes acid rain is …” — sulphur(IV) oxide, with nitrogen oxides as the second contributor.",
    "“CFCs damage the environment by …” — releasing chlorine atoms that destroy ozone in the stratosphere.",
    "“The stage of water treatment that kills bacteria is …” — chlorination.",
  ),
  trap-summary: "Three slips. (1) Saying that hard water is “dirty”: hardness is dissolved calcium and magnesium, and hard water is perfectly safe to drink — it simply wastes soap and furs kettles. (2) Confusing the greenhouse effect with ozone depletion: they are different problems with different gases and different mechanisms, and the examination asks you to keep them apart. (3) Describing recycling as the *best* waste option: the hierarchy starts with reduce and reuse, and recycling comes third.",
)

// ============================================================================
== 6.1 What an Industry Is

Every chemical industry is the same four-part machine: a cheap local *raw material*, a *process* that changes it, a *product* that somebody buys, and an *energy source* beside it. Where the plant is built follows those four parts — next to the limestone quarry, next to the gas field, beside a hydro-electric station, or beside a port.

#diagram-fig("diagrams/ch06_nigeria.svg",
  "Six industries built on Nigerian raw materials. Each row is a raw material, the chemical change it undergoes, the product and a place where the industry operates. The chemistry is the chemistry of the last five chapters; only the scale is new.", width: 100%)

#table(
  columns: (1.35fr, 1.75fr, 1.4fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Industry],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Raw materials],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Essential reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Product],
  ),

  [cement], [limestone, clay, gypsum], [CaCO₃ → CaO + CO₂ at 1450 °C; the oxides fuse], [cement clinker],
  [soap], [palm oil or fat, sodium hydroxide], [fat + 3NaOH → soap + glycerol], [soap and glycerol],
  [glass], [sand, limestone, soda ash], [SiO₂ + CaCO₃ + Na₂CO₃ fused at 1500 °C], [soda-lime glass],
  [fertiliser], [natural gas, air, water], [steam reforming, then Haber, then Ostwald], [ammonia, urea, nitric acid],
  [petrochemicals], [crude oil], [fractional distillation, then cracking], [petrol, plastics, solvents],
  [aluminium], [bauxite, cryolite, electricity], [Bayer, then Hall–Héroult], [aluminium metal],
)

// ============================================================================
== 6.2 Cement

Cement is made by heating a finely ground mixture of limestone and clay in a rotary kiln to about 1450 °C. The limestone decomposes to calcium oxide, the clay supplies silica and alumina, and the oxides fuse into hard nodules called *clinker*. The clinker is cooled, ground to a powder, and mixed with a little gypsum to control how fast the cement sets.

$op("CaCO")_3 -> op("CaO") + op("CO")_2 quad "(the kiln reaction, at 1450 °C)"$

#table(
  columns: (1.35fr, 1.9fr, 1.55fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Material],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Composition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Role],
  ),

  [cement], [clinker + gypsum], [the binder: sets hard when mixed with water],
  [mortar], [cement + sand + water], [joining bricks and blocks],
  [concrete], [cement + sand + gravel + water], [the structural material of buildings and roads],
  [reinforced concrete], [concrete + steel bars], [concrete takes compression, steel takes tension],
)

#concept-box("Why cement sets, and why that is chemistry")[
  When water is added to cement, the calcium silicates in the clinker react with it to form hydrated calcium silicate, an interlocking mass of crystals that binds the sand and gravel together. The reaction is not drying: concrete hardens under water, and a floor that dries out too fast cracks because the crystals never finish forming. The carbon dioxide released by the kiln, meanwhile, is one of the largest single sources of industrial emissions — which is why cement plants are now measured for it.
]

// ============================================================================
== 6.3 Soap and Detergent

Soap is made by boiling a fat or an oil with sodium hydroxide. The fat is a *triglyceride* — three fatty acid chains attached to glycerol — and the alkali breaks it into three soap molecules and one glycerol molecule. The reaction is called *saponification*.

$"fat" + 3 op("NaOH") -> 3 "soap" + "glycerol"$

#table(
  columns: (1.25fr, 1.6fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Exam use],
  ),

  [saponification], [the alkaline hydrolysis of a fat or oil], [name the reaction that makes soap],
  [hydrophilic head], [the ionic end, which dissolves in water], [explains why soap lifts grease into water],
  [hydrophobic tail], [the hydrocarbon chain, which dissolves in grease], [the tail buries itself in the oil droplet],
  [micelle], [a ball of soap molecules around a grease droplet], [the grease is carried away in the wash water],
  [hard water], [water containing Ca²⁺ and Mg²⁺], [forms an insoluble scum with soap, wasting it],
  [detergent], [a synthetic surfactant, often a sodium alkylbenzenesulphonate], [works in hard water because its calcium salt is soluble],
)

#trap-box("Soap and hard water")[
  Calcium and magnesium ions react with soap to form an insoluble *scum* — calcium stearate — which is why hard water needs more soap and leaves a ring around the bath. Detergents were developed to solve exactly this problem: their calcium salts are soluble, so they lather in hard water. The environmental cost is that some detergents are only slowly biodegradable, which is why modern formulations use linear chains that bacteria can break down.
]

// ============================================================================
== 6.4 Glass

Glass is made by fusing sand, limestone and soda ash at about 1500 °C and cooling the melt so quickly that it does not crystallise. The soda ash lowers the melting point; the limestone makes the glass insoluble in water. The result is *soda-lime glass*, the ordinary glass of bottles, windows and jars.

#table(
  columns: (1.35fr, 1.55fr, 1.85fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Added to sand],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property and use],
  ),

  [soda-lime glass], [soda ash and limestone], [cheap, easy to melt; bottles, windows, jars],
  [borosilicate glass], [borax instead of soda ash], [resists heat and chemical attack; Pyrex, laboratory glassware],
  [lead crystal], [lead(II) oxide], [high refractive index; cut glass, lenses, decorative ware],
  [fibre glass], [the same melt, drawn into fibres], [insulation, reinforcement in composite materials],
)

#concept-box("Why glass is recyclable but not biodegradable")[
  Glass is an amorphous solid: its atoms are frozen in a disordered arrangement, so it has no crystals and no grain boundaries. That is why it is transparent and why it can be melted and re-formed indefinitely without losing its properties — recycling glass saves about 30 % of the energy needed to make it from raw materials. It is not biodegradable because there is nothing in the soil that can use silica as food, so a bottle buried in a landfill is still a bottle in a thousand years.
]

// ============================================================================
== 6.5 Water: Treatment and Hardness

#diagram-fig("diagrams/ch06_water.svg",
  "From river to tap in six stages. Screening and settling remove solids, alum makes the fine particles settle, filtration polishes the water, and chlorination is the only stage that kills.", width: 100%)

#table(
  columns: (1.3fr, 2.0fr, 1.5fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it removes],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chemical principle],
  ),

  [screening], [sticks, leaves, large objects], [physical: a mesh],
  [coagulation with alum], [fine suspended clay and colloids], [aluminium sulphate hydrolyses to a gelatinous hydroxide that traps particles],
  [sedimentation], [the coagulated flocs], [gravity: the flocs settle as sludge],
  [filtration], [remaining fine particles and some bacteria], [passage through beds of sand and gravel],
  [chlorination], [bacteria, viruses and some algae], [oxidation: chlorine destroys cell material],
  [fluoridation], [nothing — it is an addition], [fluoride strengthens tooth enamel],
)

#table(
  columns: (1.45fr, 1.7fr, 1.65fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type of hardness],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Caused by],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Removed by],
  ),

  [temporary], [calcium and magnesium hydrogencarbonates], [boiling: they decompose to insoluble carbonates],
  [permanent], [calcium and magnesium sulphates and chlorides], [ion exchange, or adding washing soda],
  [both], [any Ca²⁺ or Mg²⁺ in the water], [distillation, or a water softener],
)

#formula-box("Temporary hardness, removed by boiling")[
  $"Ca(HCO"_3)_2 -> "CaCO"_3 + "H"_2 "O" + "CO"_2 quad "(the scale inside a kettle)"$
  #v(3pt)
  $"Ca(HCO"_3)_2 + "Na"_2 "CO"_3 -> "CaCO"_3 + 2 "NaHCO"_3 quad "(softening with washing soda)"$
]

#worked-example(
  1,
  "Hardness, in parts per million",
  tier: "UTME STANDARD",
  [A 1.00 dm³ sample of water contains 0.200 g of calcium hydrogencarbonate, Ca(HCO₃)₂. (a) Calculate the mass of calcium carbonate deposited when the water is boiled, given $M_r$: Ca(HCO₃)₂ = 162, CaCO₃ = 100. (b) Express the hardness as ppm of CaCO₃.],
  [
    *(a) Moles of hydrogencarbonate.*
    $n = 0.200 div 162 = 1.23 times 10^(-3) "mol"$

    *Mole ratio.* One mole of Ca(HCO₃)₂ gives one mole of CaCO₃.

    *Mass of the deposit.*
    $m = 1.23 times 10^(-3) times 100 = 0.123 "g"$

    *(b) Parts per million.* 1.00 dm³ of water has a mass of about 1000 g, so
    $op("ppm") = (0.123 div 1000) times 10^6 = 123 "ppm"$

    *Comment.* Water is usually called hard above about 120 ppm of calcium carbonate, so this sample is at the boundary — hard enough to fur a kettle and waste soap, but perfectly safe to drink.
  ],
)

// ============================================================================
== 6.6 Air Pollution

#diagram-fig("diagrams/ch06_pollution.svg",
  "Six pollutants, their sources, their effects and their control. Every control works on the same chemistry that produced the pollutant.", width: 100%)

#table(
  columns: (1.2fr, 1.85fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pollutant],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chemistry],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Environmental effect],
  ),

  [carbon monoxide], [incomplete combustion; binds haemoglobin 200 times more strongly than oxygen], [headache, dizziness, death in a closed room],
  [sulphur(IV) oxide], [burning coal and oil; dissolves to sulphurous acid], [acid rain, bronchitis, corrosion of limestone],
  [nitrogen oxides], [formed from air at high temperature in engines], [photochemical smog, acid rain],
  [CFCs], [chlorofluorocarbons from old refrigerants and aerosols], [catalytic destruction of stratospheric ozone],
  [particulates], [soot and smoke from diesel and bush burning], [respiratory disease, reduced visibility],
  [lead compounds], [old leaded petrol, battery recycling], [neurological damage in children],
)

#concept-box("Acid rain, in three equations")[
  Sulphur(IV) oxide and nitrogen dioxide dissolve in rainwater and are oxidised to sulphuric and nitric acids:
  $op("SO")_2 + op("H")_2 op("O") -> op("H")_2 op("SO")_3 quad "and" quad 2 op("SO")_2 + op("O")_2 -> 2 op("SO")_3$
  $op("SO")_3 + op("H")_2 op("O") -> op("H")_2 op("SO")_4$
  $4 op("NO")_2 + op("O")_2 + 2 op("H")_2 op("O") -> 4 op("HNO")_3$
  The acidified rain attacks limestone buildings (CaCO₃ + H₂SO₄ → CaSO₄ + H₂O + CO₂), acidifies lakes until fish die, and leaches aluminium from soil into streams.
]

// ============================================================================
== 6.7 The Greenhouse Effect and the Ozone Layer

#diagram-fig("diagrams/ch06_greenhouse.svg",
  "The greenhouse effect. Short-wave sunlight passes through the atmosphere; the earth re-radiates long-wave heat, which the greenhouse gases absorb and send back down. More gas means more heat returned.", width: 100%)

#table(
  columns: (1.3fr, 1.6fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gas],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Main source],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),

  [carbon dioxide], [burning fossil fuel, cement, deforestation], [the largest single contributor; absorbed by oceans and forests],
  [methane], [cattle, rice paddies, landfills, gas leaks], [about 25 times the warming effect of CO₂ per molecule],
  [nitrous oxide], [fertiliser breakdown, some industrial processes], [also destroys ozone],
  [CFCs], [refrigerants and aerosols], [both a greenhouse gas and an ozone destroyer],
  [water vapour], [evaporation], [the strongest greenhouse gas, but not one we control directly],
)

#trap-box("Two problems, not one")[
  The *greenhouse effect* is warming caused by gases that absorb infrared radiation in the troposphere. *Ozone depletion* is the thinning of the ozone layer in the stratosphere by chlorine and bromine radicals from CFCs. They share some gases but not their mechanisms or their effects: the greenhouse effect warms the surface, while ozone depletion lets more ultraviolet light reach it. An answer that mixes the two loses both marks.
]

#formula-box("The ozone cycle, in two steps")[
  $op("Cl")dot + op("O")_3 -> op("ClO")dot + op("O")_2$
  #v(2pt)
  $op("ClO")dot + op("O") -> op("Cl")dot + op("O")_2$
  #v(2pt)
  #text(size: 9.2pt, fill: jamb-slate)[One chlorine atom destroys thousands of ozone molecules before it is removed — which is why a small concentration of CFC does so much damage.]
]

// ============================================================================
== 6.8 Water Pollution, Soil Pollution and Waste

#table(
  columns: (1.35fr, 1.75fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Pollutant],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Source],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Effect and control],
  ),

  [nitrate and phosphate], [fertiliser runoff, sewage], [eutrophication: algae bloom, then oxygen starvation; control by buffer strips and timing],
  [oil], [tanker spills, leaking storage], [coats birds and fish; control by containment and bioremediation],
  [heavy metals], [battery waste, mine drainage, old paint], [toxic and cumulative; control by recovery and safe landfill],
  [plastic], [packaging, fishing gear], [persists for centuries and breaks into microplastics; control by reuse and recycling],
  [sewage], [untreated municipal waste], [pathogens and oxygen demand; control by screening, settling, digesting and disinfection],
)

#diagram-fig("diagrams/ch06_waste.svg",
  "The waste hierarchy. The best option is the one that produces no waste at all; landfill is the last resort, not the first.", width: 100%)

#concept-box("Biodegradable and non-biodegradable")[
  A material is *biodegradable* if micro-organisms can break it down into simpler substances. Paper, cotton, food waste and wood are biodegradable; plastics, glass, metals and ceramics are not, or are degraded only over centuries. The practical consequence is that biodegradable waste can be composted or digested to biogas, while non-biodegradable waste must be reused, recycled or landfilled — and a plastic bag that reaches the sea will still be a plastic bag when the next generation is sitting the same examination.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch06.svg",
  "Chapter 6 recap card: the industries, water treatment, the pollutants and the waste hierarchy.", width: 100%)

#pagebreak()
== 6.9 Chapter 6 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + name the raw materials, the essential reaction and the product of cement, soap, glass and fertiliser;
  + describe the four stages of cement manufacture and the difference between cement, mortar and concrete;
  + name the reaction that makes soap and explain how a soap molecule cleans;
  + define hard water, distinguish temporary from permanent hardness and say how each is removed;
  + describe the six stages of water treatment and the tests on the finished water;
  + match each of the six air pollutants to its source, effect and control;
  + write the equations that make acid rain;
  + explain the greenhouse effect and name the four greenhouse gases;
  + explain ozone depletion and write the two-step chlorine cycle;
  + describe eutrophication in four sentences;
  + apply the waste hierarchy and give an example of each level.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 6 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Every industry in this chapter is a raw material plus an energy source plus a chemical change: limestone and clay become cement; palm oil and caustic soda become soap; sand, limestone and soda ash become glass; natural gas becomes ammonia and then fertiliser. Water is the other thread: it is treated by screening, coagulation, settling, filtration, chlorination and fluoridation, and its hardness is caused by dissolved calcium and magnesium, temporary hardness being removed by boiling and permanent hardness only by ion exchange or washing soda. The environment pays for all of it — sulphur and nitrogen oxides make acid rain, carbon dioxide and methane warm the surface, CFCs destroy ozone, nitrates and phosphates eutrophicate rivers, and plastics persist — and the only hierarchy that works is the one that starts at reduce.
  ]
]

== 6.10 Chapter 6 in the Exam Hall — a Two-Minute Set

#mcq(1, [The main raw materials used in the manufacture of cement are], [limestone and clay], [sand and soda ash], [bauxite and cryolite], [crude oil and natural gas])
#mcq(2, [Soap is made by boiling a fat or oil with], [sulphuric acid], [sodium hydroxide], [sodium chloride], [calcium oxide])
#mcq(3, [Temporary hardness of water is removed by], [boiling], [filtration], [chlorination], [adding more soap])
#mcq(4, [The gas chiefly responsible for acid rain is], [carbon dioxide], [sulphur(IV) oxide], [methane], [nitrogen])

#answer-key-grid(("A", "B", "A", "B"))

#answer-notes((
  ("A", [cement is made by heating limestone and clay in a rotary kiln; the limestone decomposes to calcium oxide, which fuses with the silica and alumina of the clay.]),
  ("B", [the alkali hydrolyses the fat in the reaction called saponification, giving soap and glycerol.]),
  ("A", [temporary hardness is caused by calcium and magnesium hydrogencarbonates, which decompose to insoluble carbonates when the water is boiled.]),
  ("B", [sulphur(IV) oxide from burning fossil fuel dissolves in rain and is oxidised to sulphuric acid; nitrogen oxides are the second contributor.]),
))

#concept-box("Where this leaves you")[
  You have now worked through the whole of the inorganic syllabus: the metals and their series, the two most reactive groups, the extraction of aluminium and iron, the gases and their industrial processes, sulphur and the halogens, and the industries and environmental consequences that follow. Volume 4 takes the same four moves — place it, name the reagent, write the equation, state the observation — into organic chemistry and the practical paper.
]

#include "drill_ch06.typ"
