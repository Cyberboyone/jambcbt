#import "template.typ": *

#current-chapter.update("Appendix D: Data, Series and Tests")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Data, Series and Tests]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Data, Series and Tests]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The four things an inorganic candidate is expected to carry in the head: the reactivity series, the solubility rules, the tests for gases and ions, and the colours. Everything else in this book can be reasoned out; these four have to be recalled.]
]

#v(4pt)

== D.1 Constants and Conversions

#table(
  columns: (2.1fr, 1.3fr, 2.1fr, 1.3fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  ),
  [molar volume at s.t.p.], [22.4 dm³ mol⁻¹], [Faraday constant $F$], [96 500 C mol⁻¹],
  [molar volume at r.t.p.], [24.0 dm³ mol⁻¹], [1 tonne], [1000 kg],
  [composition of air], [78 % N₂, 21 % O₂, 1 % Ar], [1 ppm], [1 mg kg⁻¹],
  [molar mass of air], [about 29 g mol⁻¹], [density of water], [1.00 g cm⁻³],
  [specific heat capacity of water], [4.2 J g⁻¹ K⁻¹], [1 dm³], [1000 cm³],
)

== D.2 The Reactivity Series, With What Each Metal Does

#table(
  columns: (1.35fr, 1.15fr, 1.25fr, 1.5fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Metal],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[E° / V],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[With cold water or steam],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Occurrence and extraction],
  ),
  [potassium], [−2.92], [violent with cold water; hydrogen ignites], [always combined; electrolysis of the molten chloride],
  [sodium], [−2.71], [vigorous with cold water; hydrogen ignites], [combined as NaCl; electrolysis of molten NaCl],
  [calcium], [−2.87], [steady with cold water; hydrogen bubbles], [combined as CaCO₃; electrolysis of molten CaCl₂],
  [magnesium], [−2.37], [very slow cold, fast with steam], [combined as the oxide and carbonate; electrolysis],
  [aluminium], [−1.66], [no reaction with water; oxide coat protects], [combined as bauxite; electrolysis in cryolite],
  [zinc], [−0.76], [with steam, giving ZnO and H₂], [combined as the sulphide or carbonate; carbon reduction],
  [iron], [−0.44], [with steam, giving Fe₃O₄ and H₂], [combined as the oxide; carbon reduction in the blast furnace],
  [lead], [−0.13], [no reaction with water], [combined as galena, PbS; carbon reduction],
  [hydrogen], [0.00], [—], [combined in water and in fuels],
  [copper], [+0.34], [no reaction with water], [combined as the sulphide or oxide; reduction by carbon or by hydrogen],
  [silver], [+0.80], [no reaction with water], [often native, also as Ag₂S],
  [gold], [+1.50], [no reaction with water], [native, because it is not oxidised at all],
)

== D.3 The Solubility Rules

#table(
  columns: (1.6fr, 1.95fr, 1.75fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Salt type],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Rule],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The exceptions you meet],
  ),
  [nitrates], [all soluble], [none at this level],
  [sodium, potassium and ammonium salts], [all soluble], [none at this level],
  [chlorides], [soluble], [AgCl and PbCl₂ are insoluble; PbCl₂ dissolves in hot water],
  [sulphates], [soluble], [BaSO₄ and PbSO₄ insoluble; CaSO₄ slightly soluble],
  [carbonates], [insoluble], [Na₂CO₃, K₂CO₃ and (NH₄)₂CO₃ are soluble],
  [hydroxides], [insoluble], [NaOH, KOH and Ba(OH)₂ are soluble; Ca(OH)₂ is slightly soluble],
  [oxides], [insoluble], [the oxides of sodium, potassium and calcium react with water instead],
)

== D.4 Flame Colours

#table(
  columns: (1.4fr, 1.2fr, 1.4fr, 1.2fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Metal],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Flame],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Metal],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Flame],
  ),
  [lithium], [crimson red], [barium], [apple green],
  [sodium], [golden yellow], [copper], [blue-green],
  [potassium], [lilac], [lead], [grey-blue, faint],
  [calcium], [brick red], [strontium], [crimson red],
)

== D.5 The Gas Tests

#table(
  columns: (1.25fr, 2.35fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gas],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Watch for],
  ),
  [hydrogen], [lighted splint at the mouth of the jar], [a sharp pop],
  [oxygen], [glowing splint into the jar], [the splint relights],
  [carbon dioxide], [bubble through limewater], [the limewater turns milky, then clears in excess],
  [ammonia], [damp red litmus; glass rod dipped in HCl], [litmus turns blue; white smoke of NH₄Cl],
  [chlorine], [damp blue litmus; starch-iodide paper], [the litmus is bleached; the paper turns blue-black],
  [sulphur dioxide], [filter paper soaked in acidified K₂Cr₂O₇], [orange turns green; it also bleaches damp litmus],
  [hydrogen chloride], [damp blue litmus; glass rod dipped in ammonia], [red, then bleached only if chlorine; white smoke],
  [nitrogen dioxide], [look at it], [brown gas; turns damp litmus red],
  [water vapour], [anhydrous copper(II) sulphate; cobalt chloride paper], [white turns blue; blue paper turns pink],
)

== D.6 Ion Tests in Solution

#table(
  columns: (1.2fr, 2.0fr, 2.1fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ion],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Observation],
  ),
  [Cl⁻], [AgNO₃, acidified with HNO₃], [white precipitate, soluble in ammonia],
  [Br⁻], [AgNO₃, acidified with HNO₃], [cream precipitate, sparingly soluble in ammonia],
  [I⁻], [AgNO₃, acidified with HNO₃], [yellow precipitate, insoluble in ammonia],
  [SO₄²⁻], [BaCl₂, acidified with HCl], [white precipitate, insoluble in the acid],
  [SO₃²⁻], [dilute HCl, warm], [SO₂ evolved; it decolourises the dichromate paper],
  [CO₃²⁻], [dilute HCl], [effervescence; the gas turns limewater milky],
  [NO₃⁻], [FeSO₄, then concentrated H₂SO₄ down the side], [a brown ring at the junction],
  [NH₄⁺], [NaOH, warm], [ammonia evolved; damp red litmus turns blue],
  [Cu²⁺], [NaOH solution], [pale blue precipitate, insoluble in excess],
  [Fe²⁺], [NaOH solution], [dirty green precipitate],
  [Fe³⁺], [NaOH solution], [red-brown precipitate],
  [Al³⁺], [NaOH solution, then excess], [white precipitate, which dissolves in excess],
  [Zn²⁺], [NaOH solution, then excess], [white precipitate, which dissolves in excess],
  [Pb²⁺], [KI solution], [yellow precipitate],
  [Ca²⁺], [NaOH solution], [white precipitate; brick-red flame confirms],
)

== D.7 The Ores, and What Is Done to Them

#table(
  columns: (1.3fr, 1.45fr, 1.0fr, 1.95fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ore],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Composition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Metal],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[How it is treated],
  ),
  [bauxite], [Al₂O₃·2H₂O, with iron(III) oxide], [aluminium], [Bayer process, then Hall–Héroult electrolysis],
  [haematite], [Fe₂O₃], [iron], [blast furnace with coke and limestone],
  [magnetite], [Fe₃O₄], [iron], [blast furnace; the richest iron ore],
  [siderite], [FeCO₃], [iron], [roasted first, then the blast furnace],
  [pyrites], [FeS₂], [iron, and sulphur], [roasted in air to give sulphur(IV) oxide],
  [galena], [PbS], [lead], [roasted to the oxide, then reduced with carbon],
  [zinc blende], [ZnS], [zinc], [roasted to ZnO, then reduced with coke],
  [cassiterite], [SnO₂], [tin], [reduced with carbon],
  [rutile], [TiO₂], [titanium], [converted to the chloride, then reduced with magnesium],
  [rock salt], [NaCl], [sodium], [electrolysis of the molten salt, or of brine],
  [limestone], [CaCO₃], [calcium], [heated to quicklime; the metal by electrolysis of CaCl₂],
  [cryolite], [Na₃AlF₆], [—], [the flux that dissolves alumina in the smelter],
)

== D.8 Industrial Conditions at a Glance

#table(
  columns: (1.55fr, 1.35fr, 1.35fr, 1.4fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Process],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Catalyst],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Conditions],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Key equation],
  ),
  [Contact], [V₂O₅], [450 °C, 2 atm], [2SO₂ + O₂ ⇌ 2SO₃],
  [Haber], [iron], [450 °C, 200 atm], [N₂ + 3H₂ ⇌ 2NH₃],
  [Ostwald (step 1)], [Pt–Rh gauze], [900 °C, 1 atm], [4NH₃ + 5O₂ → 4NO + 6H₂O],
  [Hall–Héroult], [none], [about 950 °C in cryolite], [2Al₂O₃ → 4Al + 3O₂],
  [blast furnace], [none], [up to 1500 °C at the tuyères], [Fe₂O₃ + 3CO → 2Fe + 3CO₂],
  [cement kiln], [none], [1450 °C], [CaCO₃ → CaO + CO₂],
  [steam reforming], [nickel], [800 °C], [CH₄ + H₂O → CO + 3H₂],
  [catalytic converter], [Pt–Rh], [exhaust temperature], [2CO + 2NO → 2CO₂ + N₂],
)

#concept-box("How to use this appendix in the last month")[
  Do not read these tables from top to bottom. Cover the right-hand column with a sheet of paper and recite it, row by row, then check. Six months of study will not survive an exam hall if the reactivity series cannot be produced in ten seconds, so the tables here are built to be *tested*, not admired. Work down one table a night: eight tables, eight nights, and every one of them is a source of marks that no amount of reading a chapter will give you.
]
