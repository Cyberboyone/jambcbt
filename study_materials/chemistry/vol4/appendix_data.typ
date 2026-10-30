#import "template.typ": *

#current-chapter.update("Appendix D: Data, Formulae and Constants")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Data, Formulae and Constants]]

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
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Data, Formulae and Constants]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The general formulae, the molar masses, the reagents and the colours. Everything in this volume can be reasoned from the functional-group map; these pages are the facts the map is drawn with.]
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
  [molar volume at s.t.p.], [22.4 dm³ mol⁻¹], [1 mole], [6.02 × 10²³ particles],
  [molar volume at r.t.p.], [24.0 dm³ mol⁻¹], [1 dm³], [1000 cm³],
  [1 tonne], [1000 kg], [1 ppm], [1 mg kg⁻¹],
  [density of water], [1.00 g cm⁻³], [specific heat capacity of water], [4.2 J g⁻¹ K⁻¹],
  [percentage yield], [actual ÷ theoretical × 100], [percentage error], [uncertainty ÷ reading × 100],
)

== D.2 The Homologous Series

#table(
  columns: (1.35fr, 1.2fr, 1.15fr, 1.35fr, 1.3fr),
  inset: (x: 5pt, y: 4.4pt),
  align: (left + horizon, center + horizon, center + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Family],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[General formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Group],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[First member],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
  ),
  [alkane], [CₙH₂ₙ₊₂], [none], [methane, CH₄], [burns; no reaction with bromine water],
  [alkene], [CₙH₂ₙ], [C=C], [ethene, C₂H₄], [decolourises bromine water],
  [alkyne], [CₙH₂ₙ₋₂], [C≡C], [ethyne, C₂H₂], [decolourises 2Br₂ per molecule],
  [alkanol], [CₙH₂ₙ₊₁OH], [–OH], [methanol, CH₃OH], [sodium gives hydrogen; dichromate gives a colour change],
  [alkanal], [CₙH₂ₙ₊₁CHO], [–CHO], [methanal, HCHO], [Tollens' reagent gives a silver mirror],
  [alkanone], [CₙH₂ₙ₊₁COCₘH₂ₘ₊₁], [–CO–], [propanone, CH₃COCH₃], [no reaction with dichromate once formed],
  [alkanoic acid], [CₙH₂ₙ₊₁COOH], [–COOH], [methanoic acid, HCOOH], [carbonate gives carbon dioxide],
  [ester], [CₙH₂ₙ₊₁COOCₘH₂ₘ₊₁], [–COO–], [methyl methanoate, HCOOCH₃], [sweet smell; hydrolysed by alkali],
  [amine], [R–NH₂], [–NH₂], [methylamine, CH₃NH₂], [turns damp red litmus blue],
  [amino acid], [H₂N–CHR–COOH], [–NH₂ and –COOH], [glycine, NH₂CH₂COOH], [Biuret test on the protein it builds],
)

== D.3 Molar Masses You Should Know

#table(
  columns: (1.15fr, auto, 1.15fr, auto, 1.15fr, auto),
  inset: (x: 5pt, y: 3.4pt),
  align: (left + horizon, center + horizon, left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[M / g mol⁻¹],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[M / g mol⁻¹],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[M / g mol⁻¹],
  ),
  [CH₄], [16], [C₂H₄], [28], [C₂H₂], [26],
  [C₂H₆], [30], [C₃H₆], [42], [C₆H₆], [78],
  [C₃H₈], [44], [C₄H₈], [56], [CH₃OH], [32],
  [C₄H₁₀], [58], [C₂H₅OH], [46], [C₃H₇OH], [60],
  [C₅H₁₂], [72], [CH₃CHO], [44], [CH₃COCH₃], [58],
  [C₆H₁₄], [86], [HCHO], [30], [CH₃COOH], [60],
  [C₈H₁₈], [114], [HCOOH], [46], [C₂H₅COOH], [74],
  [C₆H₁₂O₆], [180], [C₁₂H₂₂O₁₁], [342], [(C₆H₁₀O₅)ₙ], [162n],
  [CH₃COOC₂H₅], [88], [C₃H₅(OH)₃], [92], [C₁₇H₃₅COONa], [306],
  [CO₂], [44], [H₂O], [18], [CaCO₃], [100],
)

== D.4 Reagents and What They Do

#table(
  columns: (1.45fr, 1.6fr, 1.7fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Acts on],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Gives],
  ),
  [bromine water], [C=C or C≡C], [decolourisation — the test for unsaturation],
  [acidified KMnO₄], [C=C, or an alcohol], [purple to colourless; a diol from an alkene],
  [acidified K₂Cr₂O₇], [a primary or secondary alcohol], [orange to green; aldehyde, acid or ketone],
  [H₂ / Ni, 150 °C], [C=C or C≡C], [the saturated alkane],
  [H₂O / H₃PO₄, 300 °C], [C=C], [the alcohol — industrial hydration],
  [Cl₂ / UV], [an alkane], [a chloroalkane and HCl — substitution],
  [conc. H₂SO₄, 170 °C], [an alcohol], [the alkene — dehydration],
  [conc. H₂SO₄, warm], [acid + alcohol], [the ester — esterification],
  [NaOH (aq), warm], [a haloalkane], [the alcohol — hydrolysis],
  [NaOH (aq), boil], [a fat or oil], [soap and glycerol — saponification],
  [Na metal], [an alcohol or an acid], [hydrogen gas; the O–H hydrogen is the one released],
  [Na₂CO₃ (aq)], [a carboxylic acid], [carbon dioxide — the acid test],
  [PCl₅], [an alcohol or an acid], [white fumes of HCl],
  [Benedict's solution], [a reducing sugar], [brick-red precipitate],
  [iodine solution], [starch], [blue-black colour],
  [Biuret reagent], [a protein], [violet colour],
  [DCPIP], [vitamin C], [blue to colourless],
)

== D.5 Colours and Observations

#table(
  columns: (1.5fr, 1.45fr, 1.75fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Substance or test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Colour],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Context],
  ),
  [bromine water], [orange], [decolourised by an alkene or an alkyne],
  [bromine in CCl₄], [red-brown], [the addition product is colourless],
  [iodine in KI], [brown], [blue-black with starch],
  [KMnO₄ (acidified)], [purple], [colourless when reduced],
  [K₂Cr₂O₇ (acidified)], [orange], [green when reduced — an alcohol was oxidised],
  [CuSO₄ (anhydrous)], [white], [blue when hydrated],
  [Benedict's solution], [blue], [brick-red precipitate with a reducing sugar],
  [Biuret reagent], [blue], [violet with a protein],
  [Fehling's solution], [blue], [brick-red with a reducing sugar],
  [silver halides], [white, cream, yellow], [AgCl, AgBr, AgI],
  [copper(II) hydroxide], [pale blue], [dissolves in excess ammonia to deep blue],
  [iron(II) hydroxide], [green], [turns brown in air],
  [iron(III) hydroxide], [red-brown], [insoluble in excess],
  [sulphur], [yellow], [burns with a blue flame to SO₂],
  [nitrogen dioxide], [red-brown], [a toxic gas, not to be confused with bromine],
)

== D.6 Tests at a Glance

#table(
  columns: (1.3fr, 1.55fr, 1.85fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Looking for],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Test],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Positive observation],
  ),
  [an alkene], [bromine water, shaken], [the orange colour disappears],
  [an alcohol], [acidified dichromate, warmed], [orange to green],
  [a carboxylic acid], [sodium carbonate solution], [effervescence; the gas turns limewater milky],
  [an ester], [smell, then alkaline hydrolysis], [a sweet smell; the smell disappears on boiling with NaOH],
  [a reducing sugar], [Benedict's solution, boiled], [blue to brick-red precipitate],
  [starch], [iodine solution], [brown to blue-black],
  [a protein], [Biuret reagent], [blue to violet],
  [a fat], [emulsion test, or a paper stain], [a milky emulsion; a translucent stain],
  [water], [anhydrous copper(II) sulphate], [white to blue],
  [CO₂], [bubble through limewater], [milky; clears in excess],
  [O₂], [a glowing splint], [relights],
  [H₂], [a lighted splint], [a squeaky pop],
  [NH₃], [damp red litmus], [turns blue],
  [Cl₂], [damp litmus], [bleached],
  [SO₂], [acidified dichromate paper], [orange to green],
)

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[How to use this appendix in the last month]
  #v(3pt)
  #text(size: 9.8pt)[
    Do not read these tables from top to bottom. Cover the right-hand column with a sheet of paper and recite it, row by row, then check. The formulae in D.2 and the colours in D.5 are the two lists that a question can ask in a single line, and they are also the two lists that a candidate leaves until the night before. Ten minutes a day for a fortnight is enough for both, and neither will be forgotten if it is tested rather than read.
  ]
]
