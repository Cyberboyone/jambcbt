#import "template.typ": *

#current-chapter.update("Appendix H: Equations and Conditions")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Equations and Conditions]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Equations and Conditions]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every equation in this volume, balanced and in one place, with the condition printed beside it. Inorganic marks are lost more often to a missing condition than to a wrong formula: the equation without “concentrated” or “steam” is only half an answer.]
]

#v(4pt)

== H.1 Metals, Oxygen, Water and Acid

#table(
  columns: (1.85fr, 2.35fr, 1.35fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition or note],
  ),
  [metal + oxygen (Na, K)], [$"4Na" + "O"_2 -> "2Na"_2 "O"$], [burned in air; white solid],
  [metal + oxygen (Mg)], [$"2Mg" + "O"_2 -> "2MgO"$], [blinding white flame],
  [metal + oxygen (Cu)], [$"2Cu" + "O"_2 -> "2CuO"$], [black coating on heating],
  [metal + cold water (Na)], [$"2Na" + "2H"_2 "O" -> "2NaOH" + "H"_2$], [very vigorous; hydrogen ignites],
  [metal + cold water (Ca)], [$"Ca" + "2H"_2 "O" -> "Ca(OH)"_2 + "H"_2$], [steady effervescence],
  [metal + steam (Mg)], [$"Mg" + "H"_2 "O" -> "MgO" + "H"_2$], [steam, strong heat],
  [metal + steam (Fe)], [$"3Fe" + "4H"_2 "O" -> "Fe"_3 "O"_4 + "4H"_2$], [red-hot iron and steam],
  [metal + steam (Zn)], [$"Zn" + "H"_2 "O" -> "ZnO" + "H"_2$], [steam, strong heat],
  [metal + dilute acid], [$"Zn" + "2HCl" -> "ZnCl"_2 + "H"_2$], [dilute acid; effervescence],
  [copper + concentrated acid], [$"Cu" + "4HNO"_3 -> "Cu(NO"_3")"_2 + "2NO"_2 + "2H"_2 "O"$], [concentrated HNO₃; brown gas],
  [copper + hot concentrated H₂SO₄], [$"Cu" + "2H"_2 "SO"_4 -> "CuSO"_4 + "SO"_2 + "2H"_2 "O"$], [concentrated acid; the acid is reduced],
  [thermite], [$"2Al" + "Fe"_2 "O"_3 -> "Al"_2 "O"_3 + "2Fe"$], [ignited with magnesium ribbon],
)

== H.2 Extraction and Industry

#table(
  columns: (1.85fr, 2.35fr, 1.35fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition or note],
  ),
  [Bayer process], [$"Al"_2 "O"_3 + "2NaOH" -> "2NaAlO"_2 + "H"_2 "O"$], [hot concentrated alkali, dissolves the alumina],
  [Hall–Héroult cathode], [$"Al"^(3+) + "3e"^- -> "Al"$], [molten cryolite, about 950 °C],
  [Hall–Héroult anode], [$"2O"^(2-) -> "O"_2 + "4e"^-$], [the carbon anode burns away],
  [blast furnace, first reduction], [$"C" + "O"_2 -> "CO"_2$], [coke burns at the tuyères],
  [blast furnace, carbon monoxide], [$"CO"_2 + "C" -> "2CO"$], [higher up the furnace],
  [blast furnace, iron], [$"Fe"_2 "O"_3 + "3CO" -> "2Fe" + "3CO"_2$], [about 700–900 °C, reduction],
  [blast furnace, slag], [$"CaCO"_3 -> "CaO" + "CO"_2$], [then CaO + SiO₂ → CaSiO₃],
  [steel making], [$"C" + "O"_2 -> "CO"_2$], [basic oxygen process, blowing oxygen],
  [cement, the kiln], [$"CaCO"_3 -> "CaO" + "CO"_2$], [1450 °C in the rotary kiln],
  [Contact process], [$"2SO"_2 + "O"_2 <=> "2SO"_3$], [V₂O₅, 450 °C, 2 atm],
  [Contact, acid formation], [$"SO"_3 + "H"_2 "O" -> "H"_2 "SO"_4$], [absorbed in concentrated acid, giving oleum],
  [Haber process], [$"N"_2 + "3H"_2 <=> "2NH"_3$], [iron, 450 °C, 200 atm],
  [Ostwald, step 1], [$"4NH"_3 + "5O"_2 -> "4NO" + "6H"_2 "O"$], [Pt–Rh gauze, 900 °C],
  [Ostwald, step 2], [$"2NO" + "O"_2 -> "2NO"_2$], [cooling; the gas turns brown],
  [Ostwald, step 3], [$"4NO"_2 + "O"_2 + "2H"_2 "O" -> "4HNO"_3$], [absorption in water],
  [steam reforming], [$"CH"_4 + "H"_2 "O" -> "CO" + "3H"_2$], [nickel, 800 °C],
  [water gas], [$"C" + "H"_2 "O" -> "CO" + "H"_2$], [steam over red-hot coke],
)

== H.3 The Non-Metals

#table(
  columns: (1.85fr, 2.35fr, 1.35fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition or note],
  ),
  [hydrogen peroxide], [$"2H"_2 "O"_2 -> "2H"_2 "O" + "O"_2$], [MnO₂ catalyst],
  [combustion of hydrogen], [$"2H"_2 + "O"_2 -> "2H"_2 "O"$], [pale blue flame, pop with a splint],
  [water electrolysis], [$"2H"_2 "O" -> "2H"_2 + "O"_2$], [acidified water; 2 : 1 by volume],
  [combustion of sulphur], [$"S" + "O"_2 -> "SO"_2$], [pale blue flame],
  [sulphur trioxide], [$"2SO"_2 + "O"_2 <=> "2SO"_3$], [V₂O₅, the Contact equilibrium],
  [sulphur dioxide with water], [$"SO"_2 + "H"_2 "O" -> "H"_2 "SO"_3$], [a weak, easily oxidised acid],
  [sulphur with iron], [$"Fe" + "S" -> "FeS"$], [glows when heated; black product],
  [chlorine with water], [$"Cl"_2 + "H"_2 "O" <=> "HCl" + "HOCl"$], [the source of the bleaching action],
  [chlorine with cold alkali], [$"Cl"_2 + "2NaOH" -> "NaCl" + "NaClO" + "H"_2 "O"$], [a disproportionation],
  [chlorine with hot alkali], [$"3Cl"_2 + "6NaOH" -> "5NaCl" + "NaClO"_3 + "3H"_2 "O"$], [hot, concentrated alkali],
  [bleaching powder], [$"Ca(OH)"_2 + "Cl"_2 -> "CaOCl"_2 + "H"_2 "O"$], [slaked lime absorbs the chlorine],
  [halogen displacement], [$"Cl"_2 + "2KBr" -> "2KCl" + "Br"_2$], [the more reactive halogen wins],
  [hydrogen chloride formation], [$"H"_2 + "Cl"_2 -> "2HCl"$], [light or a hot filament],
  [ammonia from an ammonium salt], [$"NH"_4 "Cl" + "NaOH" -> "NaCl" + "NH"_3 + "H"_2 "O"$], [warmed; any ammonium salt with any base],
  [ammonia burning in oxygen], [$"4NH"_3 + "3O"_2 -> "2N"_2 + "6H"_2 "O"$], [ordinary burning; the Ostwald reaction needs a catalyst],
  [nitric acid with copper], [$"Cu" + "4HNO"_3 -> "Cu(NO"_3")"_2 + "2NO"_2 + "2H"_2 "O"$], [concentrated acid],
  [dilute nitric acid with copper], [$"3Cu" + "8HNO"_3 -> "3Cu(NO"_3")"_2 + "2NO" + "4H"_2 "O"$], [dilute acid; colourless NO],
)

== H.4 Solutions, Tests and Environment

#table(
  columns: (1.85fr, 2.35fr, 1.35fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reaction],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Equation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Condition or note],
  ),
  [limewater test], [$"CO"_2 + "Ca(OH)"_2 -> "CaCO"_3 + "H"_2 "O"$], [milky; excess gas clears it],
  [excess carbon dioxide], [$"CaCO"_3 + "H"_2 "O" + "CO"_2 -> "Ca(HCO"_3")"_2$], [soluble; this is temporary hardness],
  [boiling temporary hardness], [$"Ca(HCO"_3")"_2 -> "CaCO"_3 + "H"_2 "O" + "CO"_2$], [the scale in a kettle],
  [softening with washing soda], [$"Ca"^(2+) + "CO"_3^(2-) -> "CaCO"_3$], [precipitate; removes both kinds of hardness],
  [silver chloride test], [$"Ag"^+ + "Cl"^- -> "AgCl"$], [white; soluble in ammonia],
  [barium sulphate test], [$"Ba"^(2+) + "SO"_4^(2-) -> "BaSO"_4$], [white; insoluble in acid],
  [ammonium test], [$"NH"_4^+ + "OH"^- -> "NH"_3 + "H"_2 "O"$], [ammonia on warming; red litmus blue],
  [acid rain from SO₂], [$"SO"_2 + "H"_2 "O" + 1/2 "O"_2 -> "H"_2 "SO"_4$], [the acid that eats limestone],
  [limestone attacked by acid rain], [$"CaCO"_3 + "H"_2 "SO"_4 -> "CaSO"_4 + "H"_2 "O" + "CO"_2$], [the stone is dissolved],
  [carbon monoxide in a converter], [$"2CO" + "2NO" -> "2CO"_2 + "N"_2$], [platinum–rhodium catalyst],
  [photosynthesis], [$"6CO"_2 + "6H"_2 "O" -> "C"_6 "H"_12 "O"_6 + "6O"_2$], [light and chlorophyll],
  [saponification], [$"fat" + "3NaOH" -> "3 soap" + "glycerol"$], [boiling; soap plus glycerol],
  [respiration and combustion], [$"CH"_4 + "2O"_2 -> "CO"_2 + "2H"_2 "O"$], [the greenhouse gas source],
)

#trap-box("The three conditions students forget")[
  *Concentrated.* Copper does not react with dilute sulphuric acid at all; it reacts only with the hot concentrated acid, and then the acid is reduced to sulphur dioxide rather than to hydrogen. *Steam.* Magnesium and zinc react with steam, not with cold water. *Catalyst.* Ammonia is burnt in oxygen over platinum–rhodium at 900 °C; without the gauze the ammonia simply burns to nitrogen and water. A balanced equation with the wrong condition earns half a mark at best, and usually none.
]

#concept-box("How to use this appendix")[
  Copy one section by hand each evening, covering the equation column and writing from the reaction name alone. The act of writing an equation — not reading it — is what fixes the condition beside it. By the sixth evening you will have written the whole of inorganic chemistry once, which is more than most candidates ever do.
]
