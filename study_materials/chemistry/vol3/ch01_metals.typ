#import "template.typ": *

#current-chapter.update("Chapter 1: Metals and the Reactivity Series")
#pagebreak()

#chapter-opener(
  1,
  "Metals and the Reactivity Series",
  subtitle: "Occurrence of Metals, the Activity Series, Reactions with Oxygen, Water and Acids, Displacement, Extraction by Carbon and by Electrolysis, Alloys and Corrosion",
  syllabus-ref: "Sec. C • Topic 1",
  utme-weight: "3 Qs every year",
)

#focus-radar(
  objectives: (
    "Describe the occurrence of metals in nature, and explain why some are found free and others combined.",
    "State the reactivity series and use it to predict the reaction of a metal with oxygen, water, steam and dilute acid.",
    "Predict the products of a displacement reaction, and explain the thermite reaction.",
    "Choose between extraction by carbon reduction and extraction by electrolysis for a given metal.",
    "Explain why an alloy is harder than the pure metal, and name the common alloys and their uses.",
    "Describe the conditions needed for iron to rust and the methods used to prevent it.",
  ),
  hotspots: (
    "“Which of these metals occurs free in nature?” — gold, silver and platinum sit below hydrogen and are not oxidised by air or water.",
    "“Which metal will displace copper from copper(II) sulphate?” — any metal above copper: zinc, iron, magnesium, aluminium. Not silver.",
    "“The reaction of steam with red-hot iron gives …” — Fe₃O₄ and hydrogen, not Fe₂O₃ and hydrogen.",
    "“Aluminium is extracted by electrolysis because …” — it is above carbon in the series, so carbon cannot reduce it.",
    "“Brass is an alloy of …” — copper and zinc. Bronze is copper and tin. Solder is lead and tin.",
    "“Iron rusts in the presence of …” — both oxygen and water; neither alone is enough.",
  ),
  trap-summary: "Three slips. (1) Learning the series as a list of names rather than as an order of *behaviour*: the examiner tests the behaviour — does it react with cold water, with steam, with acid, with a salt solution. (2) Believing that a metal above carbon must be extracted by electrolysis *of its oxide*: sodium, magnesium and calcium are extracted from their molten *chlorides* precisely because the oxides melt too high. (3) Saying that rusting needs “air” when the examiner is asking for the two substances: oxygen and water, and the salt that speeds it up is a catalyst of the electrochemical cell, not a reactant.",
)

// ============================================================================
== 1.1 Where Metals Come From

The Earth's crust contains most metals combined with other elements, because the same reactivity that makes a metal useful also makes it eager to give away its electrons. A metal that has given its electrons away is an *ion*, and an ion sits in a compound. Only the metals at the bottom of the series — gold, platinum and, less often, silver — are found *native*, uncombined, because they have no tendency to lose electrons to the air.

A mineral from which a metal can be extracted profitably is called an *ore*. The unwanted material mixed with it is the *gangue*, and the process of removing it is *concentration* or *beneficiation*.

#table(
  columns: (1.15fr, 1.7fr, 1.15fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Metal],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Chief ore],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it is extracted],
  ),

  [Sodium], [rock salt], [NaCl], [electrolysis of the molten chloride],
  [Aluminium], [bauxite], [Al₂O₃·2H₂O], [electrolysis of the oxide dissolved in cryolite],
  [Magnesium], [dolomite, carnallite], [CaCO₃·MgCO₃, MgCl₂·KCl·6H₂O], [electrolysis of the molten chloride],
  [Zinc], [zinc blende, calamine], [ZnS, ZnCO₃], [roast the sulphide, then reduce the oxide with coke],
  [Iron], [haematite, magnetite], [Fe₂O₃, Fe₃O₄], [reduction with carbon monoxide in the blast furnace],
  [Lead], [galena], [PbS], [roast, then reduce the oxide with coke],
  [Copper], [chalcopyrite, malachite], [CuFeS₂, CuCO₃·Cu(OH)₂], [roast and reduce; the sulphide is partly self-reducing],
  [Tin], [cassiterite], [SnO₂], [reduce the oxide with carbon],
  [Gold, platinum], [native metal], [—], [found uncombined; separated by physical methods],
)

#concept-box("Why the ore matters as much as the metal")[
  The extraction method is not chosen by the metal alone. It is chosen by the metal's position in the series *and* by the stability and cost of the compound it is found in. Iron is abundant as an oxide that carbon reduces easily in a cheap furnace. Aluminium is abundant as an oxide that nothing cheap can reduce, so it is dissolved in molten cryolite and torn apart with electricity. Both are among the most common metals in the crust; only one of them is cheap.
]

// ============================================================================
== 1.2 The Reactivity Series

The *reactivity series* arranges metals in order of their tendency to form positive ions. A metal high in the series loses electrons readily, forms stable compounds, and is difficult to reduce back to the metal. A metal low in the series holds its electrons tightly, is found native or easily reduced, and is chemically inert.

#diagram-fig("diagrams/ch01_reactivity.svg",
  "The reactivity series with the extraction route for each metal. The dashed line is the carbon line: above it, carbon cannot take the oxygen from the metal, so electrolysis is needed; below it, coke reduces the ore. Gold and silver need no extraction at all.", width: 100%)

#table(
  columns: (1.35fr, 1.7fr, 1.7fr, 1.4fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Metal],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[With cold water],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[With dilute acid],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Found in nature],
  ),

  [K, Na], [violent; hydrogen ignites], [explosive], [always combined],
  [Ca], [steady; hydrogen bubbles], [vigorous], [always combined],
  [Mg], [very slow], [rapid], [always combined],
  [Al], [protected by oxide; no reaction], [slow at first, then rapid], [always combined],
  [Zn], [no reaction], [steady], [combined, as the sulphide or carbonate],
  [Fe], [no reaction; reacts with steam], [slow], [combined, as the oxide],
  [Pb], [no reaction], [very slow; insoluble PbCl₂ coats it], [combined, as the sulphide],
  [Cu], [no reaction], [no reaction with dilute acid], [combined; sometimes native],
  [Ag, Au, Pt], [no reaction], [no reaction], [native],
)

#trap-box("Above hydrogen, or not")[
  A metal reacts with a dilute acid to give hydrogen only if it is *above hydrogen* in the series. Copper, silver, gold and platinum do not. They are not “unreactive” in every sense: copper dissolves in hot concentrated sulphuric acid and in nitric acid, but those are oxidising acids, and the gas produced is SO₂ or NO₂ rather than hydrogen. If a question says “dilute hydrochloric acid”, the answer is hydrogen or nothing.
]

// ============================================================================
== 1.3 Reactions with Oxygen, Water and Steam

#table(
  columns: (1.1fr, 1.9fr, 1.9fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you see],
  ),

  [Sodium + oxygen], [$4 op("Na") + op("O")_2 -> 2 op("Na")_2 op("O")$], [bright yellow flame; white solid],
  [Sodium + cold water], [$2 op("Na") + 2 op("H")_2 op("O") -> 2 op("NaOH") + op("H")_2$], [melts to a ball, fizzes, may ignite],
  [Calcium + cold water], [$op("Ca") + 2 op("H")_2 op("O") -> op("Ca(OH)")_2 + op("H")_2$], [steadier fizzing; the solution turns milky with universal indicator],
  [Magnesium + steam], [$op("Mg") + op("H")_2 op("O") -> op("MgO") + op("H")_2$], [white solid, hydrogen collected],
  [Iron + steam], [$3 op("Fe") + 4 op("H")_2 op("O") -> op("Fe")_3 op("O")_4 + 4 op("H")_2$], [black magnetic oxide],
  [Zinc + steam], [$op("Zn") + op("H")_2 op("O") -> op("ZnO") + op("H")_2$], [yellow when hot, white when cold],
  [Magnesium + oxygen], [$2 op("Mg") + op("O")_2 -> 2 op("MgO")$], [brilliant white light; white ash],
  [Copper + oxygen], [$2 op("Cu") + op("O")_2 -> 2 op("CuO")$], [surface turns black on strong heating],
)

#concept-box("Why iron gives Fe₃O₄ with steam but Fe₂O₃ with air")[
  Iron forms three oxides: iron(II) oxide, FeO; iron(III) oxide, Fe₂O₃, the red oxide of haematite and of rust; and iron(II,III) oxide, Fe₃O₄, the black magnetic oxide. Steam at the surface of red-hot iron is a *milder* oxidising agent than a stream of air, and the product it gives is the mixed oxide Fe₃O₄. The examination expects Fe₃O₄ for steam and Fe₂O₃ for rusting, and it is worth writing both until the difference is automatic.
]

#worked-example(
  1,
  "How much iron is in an ore?",
  tier: "FOUNDATION",
  [Haematite is iron(III) oxide, Fe₂O₃. Calculate the mass of iron that can be obtained from 160 g of pure haematite.],
  [
    *Molar mass of the ore.*
    $M_r(op("Fe")_2 op("O")_3) = 2(56) + 3(16) = 112 + 48 = 160$

    *Moles of ore.*
    $n = 160 div 160 = 1.00 "mol"$

    *Moles of iron.* Each formula unit contains two iron atoms, so 1.00 mol of Fe₂O₃ contains 2.00 mol of Fe.

    *Mass of iron.*
    $m = 2.00 times 56 = 112 "g"$

    *Shortcut.* The fraction of iron by mass is $112 div 160 = 0.70$, so the answer is $0.70 times 160 = 112$ g. The percentage of a metal in its ore is a favourite one-mark question, and it is always this fraction.
  ],
)

#worked-example(
  2,
  "The thermite reaction",
  tier: "JAMB CHALLENGE",
  [Aluminium reduces iron(III) oxide with so much heat that the iron runs out as a liquid. The equation is $2 op("Al") + op("Fe")_2 op("O")_3 -> op("Al")_2 op("O")_3 + 2 op("Fe")$. Calculate the mass of aluminium needed to reduce 80.0 g of Fe₂O₃, and state the mass of iron formed.],
  [
    *Moles of Fe₂O₃.*
    $n = 80.0 div 160 = 0.500 "mol"$

    *Mole ratio.* Two moles of aluminium reduce one mole of the oxide.

    *Mass of aluminium.*
    $n(op("Al")) = 2 times 0.500 = 1.00 "mol"$
    $m = 1.00 times 27 = 27.0 "g"$

    *Mass of iron.*
    $n(op("Fe")) = 2 times 0.500 = 1.00 "mol"$
    $m = 1.00 times 56 = 56.0 "g"$

    *Check.* $27.0 + 80.0 = 107$ g of reactants, and $56.0 + 51.0 = 107$ g of products, because the aluminium oxide has a mass of $0.500 times 102 = 51.0$ g. Mass is conserved, as it must be.
  ],
)

// ============================================================================
== 1.4 Displacement Reactions

A more reactive metal will displace a less reactive one from a solution of its salt. The reaction is a competition for electrons: the more reactive metal gives them up more easily, so it becomes the ion, and the less reactive metal ion takes them and becomes the metal.

#table(
  columns: (2.0fr, 1.55fr, 1.35fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Mixture],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation],
  ),

  [zinc + copper(II) sulphate], [$op("Zn") + op("CuSO")_4 -> op("ZnSO")_4 + op("Cu")$], [blue fades; red-brown copper deposits],
  [iron + copper(II) sulphate], [$op("Fe") + op("CuSO")_4 -> op("FeSO")_4 + op("Cu")$], [blue fades; pink-brown deposit],
  [magnesium + zinc sulphate], [$op("Mg") + op("ZnSO")_4 -> op("MgSO")_4 + op("Zn")$], [grey deposit; the solution warms],
  [copper + silver nitrate], [$op("Cu") + 2 op("AgNO")_3 -> op("Cu(NO")_3)_2 + 2 op("Ag")$], [solution turns blue; silver crystals],
  [copper + zinc sulphate], [no reaction], [nothing: copper is below zinc],
  [silver + copper(II) sulphate], [no reaction], [nothing: silver is below copper],
)

#trap-box("Reading the direction of a displacement")[
  The metal that *disappears* is the more reactive one; the metal that *appears* is the less reactive one. In “zinc + copper(II) sulphate”, the zinc goes into solution and the copper comes out. Candidates who write the equation the other way round have reversed the series, and the same reversal produces the wrong answer to “which metal will not react with lead(II) nitrate?” — it is the metal *below* lead, not above it.
]

// ============================================================================
== 1.5 Extraction: Carbon or Electricity?

The choice of extraction method follows from the series with one further fact: carbon sits between aluminium and zinc. A metal above carbon cannot be reduced by carbon, because carbon is a weaker reducing agent than the metal itself. A metal below carbon can be.

#diagram-fig("diagrams/ch01_extraction.svg",
  "From ore to metal in four stages. Stages 1 and 2 are shared by every extraction; stage 3 is where the series decides, because only a metal below carbon can be reduced by coke. Metals above the carbon line are torn apart by electricity instead.", width: 100%)

#table(
  columns: (1.4fr, 1.7fr, 1.7fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Used for],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Why],
  ),

  [Electrolysis of the molten chloride], [Na, Mg, Ca], [the oxides melt too high; the chlorides are lower-melting and cheap],
  [Electrolysis of the oxide in cryolite], [Al], [the oxide is covalent and does not conduct until dissolved],
  [Reduction with carbon], [Zn, Fe, Pb, Sn], [the metal is below carbon, so carbon can take the oxygen],
  [Reduction with carbon monoxide], [Fe, in the blast furnace], [CO is the species that actually reduces the ore above 800 °C],
  [Roasting, then reduction], [Cu, Pb, Zn from sulphides], [the sulphide is converted to the oxide first],
  [Physical separation only], [Au, Pt, Ag], [found native, so no chemical reduction is needed],
)

#concept-box("Why aluminium is expensive and iron is cheap")[
  Iron is reduced by coke in a furnace that runs continuously on cheap coal. Aluminium is reduced by electricity in a cell that consumes about 15 000 kWh for every tonne of metal, and the carbon anodes burn away and must be replaced. That is the whole economic difference: the metal's position in the series fixes the *method*, and the method fixes the *price*.
]

// ============================================================================
== 1.6 Alloys

An *alloy* is a mixture of a metal with one or more other elements, usually other metals, made by melting them together. The alloy is harder and stronger than the pure metal, and often more resistant to corrosion, because the atoms of the added element are a different size and disrupt the regular layers in which the pure metal's atoms slide over one another.

#diagram-fig("diagrams/ch01_alloy.svg",
  "Why an alloy is harder: in a pure metal the layers of atoms slide easily; in an alloy the different-sized atoms pin the layers in place, so the material resists deformation.", width: 100%)

#table(
  columns: (1.25fr, 1.55fr, 2.0fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Alloy],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Composition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Use, and why],
  ),

  [steel], [iron + 0.05–1.5 % carbon], [structural metal: harder than pure iron and cheap],
  [stainless steel], [iron + chromium + nickel], [cutlery and chemical plant: the Cr₂O₃ skin stops rust],
  [brass], [copper + zinc], [taps, valves, instruments: hard, corrosion-resistant, golden],
  [bronze], [copper + tin], [statues, bells, bearings: hard and slow to corrode],
  [duralumin], [aluminium + copper + magnesium + manganese], [aircraft: as strong as steel at a third of the weight],
  [solder], [tin + lead, now tin + silver or copper], [joining metals: melts below the metals it joins],
  [amalgam], [a metal dissolved in mercury], [dental fillings: soft when packed, hard when set],
)

#trap-box("Alloy, not compound")[
  An alloy is a *mixture*: its components keep their own identities, and its composition can vary within a range. Steel with 0.2 % carbon and steel with 1.2 % carbon are both steel, with different properties. A compound has a fixed formula, and the examiner tests the distinction by asking whether the components can be separated by physical means. They cannot be separated easily, but they were not combined chemically either.
]

// ============================================================================
== 1.7 Corrosion and Rusting

*Corrosion* is the destruction of a metal by chemical reaction with its environment. For iron the product is *rust*, hydrated iron(III) oxide, and the reaction needs *both* oxygen and water:

$4 op("Fe") + 3 op("O")_2 + x op("H")_2 op("O") -> 2 op("Fe")_2 op("O")_3 dot x op("H")_2 op("O")$

Two further facts carry most of the marks. Salt *accelerates* rusting, which is why cars rust fastest at the coast and why the underside of a car rots first. And an *acidic* environment accelerates it further, which is why rust is worse near industry.

#table(
  columns: (1.45fr, 2.0fr, 1.6fr),
  inset: 6pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Method],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it does],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Example],
  ),

  [barrier], [keeps oxygen and water away from the iron], [paint, grease, plastic coating, tin plate],
  [galvanising], [coats with zinc, which corrodes *in place of* the iron], [roofing sheets, dustbins, nails],
  [sacrificial protection], [a more reactive metal is attached and corrodes first], [zinc blocks on ships' hulls and pipelines],
  [alloying], [changes the metal itself], [stainless steel with chromium and nickel],
  [electroplating], [deposits a thin layer of a less reactive metal], [chromium on taps, nickel on bicycle parts],
)

#shortcut-box("The two-mark answer for ‘why does galvanising work?’")[
  Zinc is *above* iron in the reactivity series, so zinc loses electrons more readily. When the coating is scratched, the zinc corrodes first and the iron is left intact: the zinc is *sacrificial*. A tin coating works only while it is unbroken, because tin is *below* iron and the iron corrodes first at the scratch.
]

#worked-example(
  3,
  "Which metal, and how much?",
  tier: "UTME STANDARD",
  [A student has four metals — magnesium, zinc, iron and copper — and four salt solutions: MgSO₄, ZnSO₄, FeSO₄ and CuSO₄. (a) Which metal displaces all the others? (b) Which metal is displaced by all the others? (c) 6.5 g of zinc is added to excess copper(II) sulphate. Calculate the mass of copper deposited.],
  [
    *(a)* Magnesium is highest in the series, so it displaces Zn²⁺, Fe²⁺ and Cu²⁺.

    *(b)* Copper is lowest, so it is displaced by all three.

    *(c) Moles of zinc.*
    $n = 6.5 div 65 = 0.100 "mol"$

    *Ratio.* Zn + CuSO₄ → ZnSO₄ + Cu, so 1 mol of zinc gives 1 mol of copper.

    *Mass of copper.*
    $m = 0.100 times 64 = 6.4 "g"$

    *Note.* The mass falls slightly, from 6.5 g to 6.4 g, because copper is a little lighter than zinc per mole. An answer larger than 6.5 g is a sign that the ratio was inverted.
  ],
)

// ============================================================================
#diagram-fig("diagrams/recap_ch01.svg",
  "Chapter 1 recap card: occurrence, the series, displacement, extraction, alloys and corrosion.", width: 100%)

#pagebreak()
== 1.8 Chapter 1 Checklist

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  I can … \
  #v(3pt)
  + say which metals are found native and why;
  + name the chief ore of each common metal;
  + write the reactivity series from potassium to gold;
  + predict the reaction of a metal with oxygen, cold water, steam and dilute acid;
  + write the equation for sodium, calcium, magnesium, zinc and iron with water or steam;
  + predict the direction of a displacement and name the observation;
  + explain why aluminium needs electrolysis and iron does not;
  + choose the electrolyte for the electrolytic extraction of sodium, magnesium and aluminium;
  + explain why an alloy is harder than its pure metal;
  + name brass, bronze, solder, duralumin and stainless steel with their compositions;
  + state the two substances needed for iron to rust, and explain galvanising.
]

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[Chapter 1 in one breath]
  #v(3pt)
  #text(size: 10.1pt)[
    Metals are found combined except for the few at the bottom of the series, because reactivity is exactly the tendency to lose electrons and become an ion. The reactivity series orders that tendency, and it is tested in four ways: with oxygen, with cold water, with steam, and with dilute acid. A metal above hydrogen gives hydrogen with acid; a metal above another displaces it from solution. The series also decides extraction: metals above carbon need electrolysis of a molten compound, metals below carbon are reduced with coke, and the metals at the bottom are found native. Alloys are harder than pure metals because different-sized atoms pin the layers in place. Iron rusts only when both oxygen and water reach it, and every method of protection works by denying it one of the two — or by giving the corrosion job to a more reactive metal.
  ]
]

== 1.9 Chapter 1 in the Exam Hall — a Two-Minute Set

#mcq(1, [Which metal is found in the free state in nature?], [calcium], [iron], [silver], [aluminium])
#mcq(2, [The product formed when steam is passed over red-hot iron is], [iron(II) oxide], [iron(III) oxide], [iron(II,III) oxide], [iron(III) hydroxide])
#mcq(3, [Which of the following will displace copper from copper(II) sulphate solution?], [silver], [zinc], [gold], [mercury])
#mcq(4, [An alloy of copper and tin is], [brass], [bronze], [solder], [duralumin])

#answer-key-grid(("C", "C", "B", "B"))

#answer-notes((
  ("C", [silver, gold and platinum are below hydrogen and are not oxidised by air or water, so they are found uncombined. Calcium, iron and aluminium are all found as compounds.]),
  ("C", [steam oxidises iron to the mixed oxide Fe₃O₄, the black magnetic oxide: 3Fe + 4H₂O → Fe₃O₄ + 4H₂.]),
  ("B", [zinc is above copper in the series, so it displaces copper: Zn + CuSO₄ → ZnSO₄ + Cu. Silver, gold and mercury are all below copper.]),
  ("B", [bronze is copper and tin; brass is copper and zinc; solder is tin and lead; duralumin is aluminium with copper, magnesium and manganese.]),
))

#concept-box("Carry this into Chapter 2")[
  The series is a *vertical* pattern: one metal above another. Chapter 2 turns the same idea sideways, into the horizontal pattern of a group, where lithium, sodium and potassium are almost interchangeable chemically and differ mainly in how violently they react. The two patterns together are the whole of inorganic chemistry: position in a column decides the *kind* of chemistry, position in a row decides the *vigour*.
]

#include "drill_ch01.typ"
