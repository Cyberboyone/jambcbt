#import "template.typ": *

#current-chapter.update("Chapter 3: Aluminium, Iron and Steel")
#pagebreak()

#chapter-opener(
  3,
  "Aluminium, Iron and Steel",
  subtitle: "The Bayer Process, the Hall–Héroult Cell, the Blast Furnace, the Manufacture and Properties of Steel, Alloys of Aluminium and the Protection of Iron",
  syllabus-ref: "Sec. C • Topic 3",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the extraction of aluminium from bauxite, including the purification of the ore and the electrolysis of alumina in cryolite.",
    "Explain the role of cryolite, the choice of carbon electrodes and the reason aluminium cannot be reduced by carbon.",
    "Describe the blast furnace, naming the raw material, the reaction and the temperature band for each zone.",
    "Explain the manufacture of steel and relate its carbon content to its properties and uses.",
    "Name the principal alloys of aluminium and iron and give one use of each.",
    "Describe the corrosion of iron and the methods used to protect it.",
  ),
  hotspots: (
    "“Cryolite is added to the cell in order to …” — dissolve the alumina and allow electrolysis at about 950 °C instead of over 2000 °C.",
    "“The reaction at the cathode in the Hall–Héroult cell is …” — Al³⁺ + 3e⁻ → Al.",
    "“The purpose of limestone in the blast furnace is to …” — supply CaO, which combines with SiO₂ to form slag.",
    "“The reducing agent in the blast furnace is …” — carbon monoxide, not carbon.",
    "“Which steel is used for cutting tools?” — high-carbon steel, hard and brittle.",
    "“Galvanising protects iron because zinc …” — is more reactive and corrodes in place of the iron.",
  ),
  trap-summary: "Three slips. (1) Writing carbon as the reducing agent in the blast furnace: carbon burns to CO, and it is CO that reduces the iron ore. (2) Believing that the cryolite is a catalyst: it is a *solvent*, and it lowers the operating temperature by more than 1000 °C. (3) Confusing the two electrodes: in the Hall–Héroult cell the *carbon anodes* burn away and are replaced, while the steel case lined with carbon is the cathode. The examination asks which is consumed, and the answer is the anodes.",
)

// ============================================================================
== 3.1 Aluminium: The Metal That Will Not Corrode

Aluminium is the most abundant metal in the Earth's crust, yet it was more expensive than gold until the 1880s, because no cheap way existed to separate it from oxygen. It is a light, silvery metal — a third of the density of steel — with a high electrical conductivity and an oxide layer that forms instantly in air and seals the metal beneath it.

That oxide layer is the reason aluminium resists corrosion despite being high in the reactivity series. It is also *amphoteric*: it dissolves in both acids and alkalis, which is why aluminium cookware must not be used with caustic soda.

#table(
  columns: (1.35fr, 2.05fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Property],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value or behaviour],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Consequence],
  ),

  [density], [2.7 g cm⁻³], [aircraft, bicycles, roofing, cooking foil],
  [melting point], [660 °C], [easily cast and rolled],
  [conductivity], [about 60 % that of copper, per unit mass higher], [overhead power cables],
  [oxide layer], [Al₂O₃, impervious, amphoteric], [corrosion resistance; anodising],
  [reactivity], [above carbon, below magnesium], [must be extracted by electrolysis],
)

// ============================================================================
== 3.2 From Bauxite to Alumina: the Bayer Process

Bauxite is hydrated aluminium oxide, Al₂O₃·2H₂O, mixed with iron(III) oxide and silica. The Bayer process removes those impurities and leaves pure alumina for the cell.

#diagram-fig("diagrams/ch03_bayer.svg",
  "Bauxite to aluminium in two processes. The Bayer process purifies the ore; the Hall–Héroult cell reduces the purified oxide. The first is chemistry, the second is chemistry plus a great deal of electricity.", width: 100%)

#table(
  columns: (1.15fr, 2.2fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Stage],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What happens],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),

  [digest], [bauxite + hot NaOH at 150 °C under pressure], [alumina is amphoteric and dissolves as sodium aluminate; Fe₂O₃ does not],
  [filter], [the solution is filtered and cooled], [the red mud of iron oxide is removed],
  [seed and precipitate], [Al(OH)₃ is added as seed; the hydroxide precipitates], [cooling and seeding give large, pure crystals],
  [calcine], [$2 op("Al(OH)")_3 -> op("Al")_2 op("O")_3 + 3 op("H")_2 op("O")$ at 1200 °C], [water is driven off, leaving pure alumina],
)

#formula-box("The two Bayer equations")[
  $"Al"_2 "O"_3 + 2 "NaOH" -> 2 "NaAlO"_2 + "H"_2 "O" quad "(alumina dissolves in the alkali)"$
  #v(3pt)
  $"NaAlO"_2 + 2 "H"_2 "O" -> "Al(OH)"_3 + "NaOH" quad "(the hydroxide is precipitated and the alkali recycled)"$
]

// ============================================================================
== 3.3 The Hall–Héroult Cell

Alumina melts at 2045 °C — too hot to run a cell economically — and it does not conduct electricity when solid. The solution to both problems is to dissolve it in molten *cryolite*, sodium hexafluoroaluminate, Na₃AlF₆, which melts at about 1010 °C and lets the cell run at about 950 °C.

#diagram-fig("diagrams/ch03_hall.svg",
  "The Hall–Héroult cell in section. Carbon anodes dip into molten cryolite containing dissolved alumina; the steel case lined with carbon is the cathode; molten aluminium collects at the bottom and is tapped off.", width: 100%)

#table(
  columns: (1.2fr, 2.0fr, 1.75fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Feature],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation or value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Note],
  ),

  [cathode reaction], [$op("Al")^(3+) + 3e^- -> op("Al")$], [liquid metal, tapped from below],
  [anode reaction], [$2 op("O")^(2-) -> op("O")_2 + 4e^-$], [oxygen released at the carbon],
  [anode consumption], [$op("C") + op("O")_2 -> op("CO")_2$], [the anodes burn away and are replaced regularly],
  [overall reaction], [$2 op("Al")_2 op("O")_3 -> 4 op("Al") + 3 op("O")_2$], [decomposition by electricity],
  [electrolyte], [alumina in molten cryolite at about 950 °C], [cryolite is a solvent, not a catalyst],
  [energy], [about 15 000 kWh per tonne of aluminium], [the reason smelting sits beside a hydro-electric station],
)

#concept-box("Why not just heat the ore with coke?")[
  Aluminium is *above* carbon in the reactivity series, so carbon cannot take the oxygen from alumina: at any temperature the aluminium would rather keep the oxygen than the carbon would. Electrolysis works because electricity can supply the energy that a chemical reducing agent cannot, tearing the ions apart whatever their thermodynamic preference. Magnesium and sodium are above carbon too, and are also extracted by electrolysis — of their molten chlorides, because those melt far below the oxides.
]

#trap-box("Cathode, anode, and which one disappears")[
  The cathode is the *negative* electrode, where aluminium ions gain electrons: Al³⁺ + 3e⁻ → Al. The anodes are the *positive* carbon blocks, where oxide ions lose electrons and oxygen is released; that oxygen then burns the carbon. So the anodes are consumed, and replacing them is the main running cost after electricity. Candidates who say “the cathode burns away” have confused the two, and the examination tests exactly this sentence.
]

#worked-example(
  1,
  "Aluminium from alumina",
  tier: "UTME STANDARD",
  [Calculate the mass of aluminium that can be obtained from 5.10 kg of pure alumina, Al₂O₃. $M_r$: Al = 27, O = 16.],
  [
    *Molar mass of alumina.*
    $M_r(op("Al")_2 op("O")_3) = 2(27) + 3(16) = 54 + 48 = 102$

    *Moles of alumina.*
    $n = 5100 div 102 = 50.0 "mol"$

    *Mole ratio.* $2 op("Al")_2 op("O")_3 -> 4 op("Al") + 3 op("O")_2$, so two moles of alumina give four moles of aluminium.

    *Moles of aluminium.*
    $n = 2 times 50.0 = 100 "mol"$

    *Mass.*
    $m = 100 times 27 = 2700 "g" = 2.70 "kg"$

    *Shortcut.* Aluminium is $54 div 102 = 52.9$ % of alumina by mass, and $0.529 times 5.10 = 2.70$ kg.
  ],
)

// ============================================================================
== 3.4 Aluminium Alloys and Anodising

Pure aluminium is soft, and its most useful forms are alloys. *Duralumin* — aluminium with copper, magnesium and manganese — is as strong as mild steel at a third of the weight, which is why it was the aircraft alloy of the twentieth century. *Silumin* (aluminium and silicon) casts well; *magnesium-aluminium* alloys are used where weight matters most.

*Anodising* thickens the natural oxide layer by making the aluminium the anode in a dilute acid. The layer that grows is harder than the metal and can be dyed, which is how coloured aluminium drink cans and window frames are made.

#table(
  columns: (1.4fr, 1.6fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Alloy or treatment],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Composition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use],
  ),

  [duralumin], [Al + Cu + Mg + Mn], [aircraft frames, bicycle rims, racing car bodies],
  [silumin], [Al + Si], [engine castings, cylinder heads],
  [aluminium foil], [99 % Al], [food wrapping, insulation],
  [anodised aluminium], [thickened Al₂O₃ layer], [window frames, drink cans, phone cases],
)

// ============================================================================
== 3.5 Iron and the Blast Furnace

Iron is extracted in a *blast furnace*: a tall steel stack lined with firebrick, charged at the top with iron ore, coke and limestone, and blasted at the bottom with hot air at about 1200 °C. The furnace runs continuously, and the chemistry inside it is arranged by temperature: each band of the furnace does one job.

#diagram-fig("diagrams/ch03_blast.svg",
  "The blast furnace, band by band. Solids fall and gases rise, so the furnace is a counter-current reactor: the hottest zone is at the bottom, and each reaction happens where the temperature suits it.", width: 100%)

#table(
  columns: (1.15fr, 1.55fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Raw material],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Function],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
  ),

  [iron ore], [supplies the iron, as Fe₂O₃ or Fe₃O₄], [$op("Fe")_2 op("O")_3 + 3 op("CO") -> 2 op("Fe") + 3 op("CO")_2$],
  [coke], [fuel, and the source of carbon monoxide], [$op("C") + op("O")_2 -> op("CO")_2$; $op("CO")_2 + op("C") -> 2 op("CO")$],
  [limestone], [removes the silica, which would otherwise contaminate the iron], [$op("CaCO")_3 -> op("CaO") + op("CO")_2$; $op("CaO") + op("SiO")_2 -> op("CaSiO")_3$],
  [hot air], [burns the coke and drives the furnace], [supplied at the bottom through the tuyères],
)

#concept-box("The two words that earn the mark: counter-current and slag")[
  The furnace is *counter-current*: the solid charge descends while the hot gases rise, so the ore meets progressively hotter gas and the heat is used efficiently. The calcium silicate is *slag*: it is molten at the furnace temperature, it is less dense than iron, and it floats on the metal, protecting it from the air and carrying away the silica. Slag is not waste — it is ground and sold for cement.

  The molten iron that runs out of the bottom contains about 4 % carbon, which makes it hard and brittle: it is *pig iron*, and it must be refined into steel.
]

#worked-example(
  2,
  "The blast furnace stoichiometry",
  tier: "JAMB CHALLENGE",
  [The reducing reaction in the blast furnace is $op("Fe")_2 op("O")_3 + 3 op("CO") -> 2 op("Fe") + 3 op("CO")_2$. Calculate the mass of carbon monoxide needed to produce 1.12 tonnes of iron, and the mass of the ore consumed.],
  [
    *Moles of iron.* $1.12 "t" = 1.12 times 10^6$ g, and $A_r(op("Fe")) = 56$.
    $n = 1.12 times 10^6 div 56 = 20000 "mol"$

    *Moles of CO.* Two moles of iron need three moles of CO.
    $n(op("CO")) = 20000 times 3 div 2 = 30000 "mol"$

    *Mass of CO.* $M_r(op("CO")) = 28$.
    $m = 30000 times 28 = 840000 "g" = 0.84 "t"$

    *Mass of ore.* One mole of Fe₂O₃ gives two moles of iron, so the ore needed is 10 000 mol, and $M_r(op("Fe")_2 op("O")_3) = 160$.
    $m = 10000 times 160 = 1.6 times 10^6 "g" = 1.6 "t"$

    *Check.* $1.6$ t of ore contains $1.12$ t of iron and $0.48$ t of oxygen; the carbon monoxide removes the oxygen as CO₂, which is why the gas leaving the top of the furnace is mostly nitrogen and carbon dioxide.
  ],
)

// ============================================================================
== 3.6 Steel

Steel is iron with a controlled amount of carbon. The carbon is what makes the difference: too little and the metal is soft; too much and it is brittle. Between those extremes lies the whole of structural engineering.

#diagram-fig("diagrams/ch03_steel.svg",
  "Three steels and what carbon does to them. The carbon content is the whole difference: mild steel bends, medium carbon steel springs, high carbon steel cuts — and above about 2 % carbon the material is cast iron, not steel.", width: 100%)

#table(
  columns: (1.3fr, 1.3fr, 1.9fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Carbon],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Properties],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Uses],
  ),

  [mild steel], [0.05–0.25 %], [soft, ductile, easy to weld], [car bodies, nails, pipes, ships, reinforcing bars],
  [medium carbon], [0.25–0.6 %], [stronger and harder, less ductile], [rails, gears, crankshafts, hammers],
  [high carbon], [0.6–1.5 %], [very hard, brittle], [cutting tools, blades, springs, drills],
  [cast iron], [2–4 %], [hard, brittle, cannot be forged], [engine blocks, manhole covers, cooking pots],
  [stainless steel], [iron + Cr + Ni], [hard, corrosion-resistant], [cutlery, sinks, chemical plant, surgical instruments],
)

#trap-box("Alloy steel is steel with something else added")[
  Carbon steels are the first family, but the steels that resist corrosion and heat are *alloy steels*: chromium and nickel give stainless steel; manganese gives toughness to railway track; tungsten gives the hardness of high-speed cutting tools; vanadium gives spring steel its spring. The question usually names the added element and asks for the property, so learn the pair — chromium for corrosion, manganese for toughness, tungsten for hardness at heat.
]

// ============================================================================
== 3.7 Protecting Iron

Iron rusts when oxygen and water reach it together, and the rust flakes away, exposing fresh metal, so the attack continues. Every protection method works by breaking that contact or by giving the corrosion to a more reactive metal.

#table(
  columns: (1.4fr, 2.1fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it works],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [painting or greasing], [a barrier against water and oxygen], [bridges, gates, machinery],
  [galvanising], [zinc coating; zinc corrodes first], [roofing sheets, buckets, nails],
  [electroplating], [a layer of chromium, nickel or tin], [taps, bicycle parts, food cans],
  [alloying], [chromium and nickel change the metal itself], [stainless steel],
  [sacrificial anode], [a block of zinc or magnesium corrodes in place of the iron], [ship hulls, pipelines, water heaters],
)

#shortcut-box("Tin cans and galvanised buckets — the same idea, opposite outcomes")[
  Tin is *below* iron, so a tin coating protects iron only while it is complete. Scratch a tin can and the iron rusts faster than it would unprotected, because the tin acts as a cathode and concentrates the attack. Zinc is *above* iron, so a scratch in a galvanised bucket protects the exposed iron: the zinc corrodes instead. That single comparison answers half the corrosion questions in the paper.
]

// ============================================================================
#diagram-fig("diagrams/recap_ch03.svg",
  "Chapter 3 recap card: the Bayer process, the Hall–Héroult cell, the blast furnace and steel.", width: 100%)

#pagebreak()
== 3.8 Chapter 3 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + name the ore of aluminium and the two impurities removed in the Bayer process;
  + write the two Bayer equations;
  + explain why cryolite is used and what temperature it allows;
  + write the cathode and anode reactions in the Hall–Héroult cell;
  + explain why the anodes are consumed and why aluminium needs electricity at all;
  + list the raw materials of the blast furnace and the function of each;
  + write the five reactions of the blast furnace and place each in its temperature band;
  + explain the terms counter-current and slag;
  + relate the carbon content of steel to its hardness and its use;
  + name the element added to steel for corrosion resistance, toughness and hardness;
  + explain galvanising and sacrificial protection, and why tin behaves differently.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 3 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Aluminium and iron are the two metals that built the modern world, and they are extracted in opposite ways for the same reason: their position relative to carbon. Aluminium sits above carbon, so no chemical reducing agent will take its oxygen; the ore is purified by dissolving it in hot alkali (the Bayer process) and the pure alumina is then decomposed in molten cryolite at 950 °C (the Hall–Héroult cell), where the aluminium ions are reduced at the cathode and the carbon anodes burn away in the oxygen released. Iron sits below carbon, so coke is enough: in the blast furnace the coke burns to carbon monoxide, the carbon monoxide reduces the ore, and limestone removes the silica as slag. The molten iron carries about 4 % carbon, and steel-making is the business of removing most of it and adding back exactly the amount that gives the property wanted — softness for car bodies, hardness for tools, chromium and nickel for stainless.
  ]
]

== 3.9 Chapter 3 in the Exam Hall — a Two-Minute Set

#mcq(1, [The function of cryolite in the extraction of aluminium is to], [act as a catalyst], [reduce the alumina], [dissolve the alumina and lower the melting point], [prevent the aluminium from oxidising])
#mcq(2, [The reaction at the cathode in the Hall–Héroult cell is], [$2 op("O")^(2-) -> op("O")_2 + 4e^-$], [$op("Al")^(3+) + 3e^- -> op("Al")$], [$op("C") + op("O")_2 -> op("CO")_2$], [$op("Al") -> op("Al")^(3+) + 3e^-$])
#mcq(3, [In the blast furnace, the substance that reduces the iron ore is], [carbon monoxide], [carbon], [calcium oxide], [silicon(IV) oxide])
#mcq(4, [A steel used for cutting tools should have], [a very low carbon content], [no carbon at all], [a high proportion of copper], [a high carbon content])

#answer-key-grid(("C", "B", "A", "D"))

#answer-notes((
  ("C", [cryolite is a solvent: it dissolves the alumina so that the melt conducts, and it lets the cell run at about 950 °C instead of over 2000 °C.]),
  ("B", [the cathode is negative and supplies electrons to the aluminium ion, which is reduced to the metal.]),
  ("A", [the coke burns to carbon monoxide, and it is the CO that reduces Fe₂O₃ to Fe; carbon itself is not the reducing agent at the ore.]),
  ("D", [carbon makes steel hard, so cutting tools need a high-carbon steel — hard and wear-resistant, at the cost of brittleness.]),
))

#concept-box("Carry this into Chapter 4")[
  The blast furnace consumes oxygen and produces carbon dioxide; the Haber process consumes nitrogen and hydrogen and produces ammonia; the Contact process consumes sulphur dioxide and produces sulphur trioxide. Three industrial processes, three gases — and the next chapter is about the gases themselves: how each is prepared in the laboratory, how each is tested, and what each is used for.
]

#include "drill_ch03.typ"
