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
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The definitions this volume uses, in the words an examiner will accept. Where a term has a precise meaning that students blur — roasting against calcination, temporary against permanent hardness — the entry says what the difference is worth.]
]

#v(4pt)

== F.1 Metals and the Reactivity Series

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
    [ore], [a mineral from which a metal can be extracted profitably],
    [gangue], [the unwanted rocky material mixed with an ore],
    [beneficiation], [the concentration of an ore — the removal of gangue before extraction],
    [native metal], [a metal found uncombined in nature, because it is too unreactive to be oxidised],
    [reactivity series], [the order in which metals are arranged by their tendency to lose electrons and form positive ions],
    [displacement], [a reaction in which a more reactive element takes the place of a less reactive one in a compound],
    [reducing agent], [a species that gives electrons to another species and is itself oxidised],
    [oxidising agent], [a species that takes electrons from another species and is itself reduced],
    [roasting], [heating a sulphide ore strongly in air, so that the sulphide is converted to the oxide],
    [calcination], [heating a carbonate or hydroxide ore strongly, so that carbon dioxide or water is driven off],
    [thermite reaction], [the reduction of iron(III) oxide by aluminium, hot enough to melt the iron it produces],
    [alloy], [a mixture of a metal with other elements, made to improve hardness, strength or resistance to corrosion],
    [amalgam], [an alloy in which one of the metals is mercury],
    [galvanising], [coating steel with zinc, so that the zinc corrodes in preference to the iron],
    [sacrificial protection], [the use of a more reactive metal to corrode in place of the metal being protected],
    [rusting], [the corrosion of iron by oxygen and water, giving hydrated iron(III) oxide],
    [anodising], [thickening the natural oxide coat on aluminium by making the metal the anode of an electrolytic cell],
    [duralumin], [an alloy of aluminium with copper, magnesium and manganese, used where strength with low mass matters],
  )
]

== F.2 Groups 1 and 2

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
    [alkali metal], [an element of Group 1, which reacts with water to give an alkaline hydroxide and hydrogen],
    [alkaline earth metal], [an element of Group 2, whose oxide is basic and whose hydroxide is only slightly soluble],
    [s-block], [the block of the periodic table whose outer electrons are in an s orbital — Groups 1 and 2],
    [down the group], [in the direction of increasing atomic number within a group],
    [ionisation energy], [the energy needed to remove one mole of electrons from one mole of gaseous atoms],
    [electronegativity], [the power of an atom to attract the shared pair of electrons in a covalent bond],
    [flame test], [the identification of a metal ion by the colour it gives to a non-luminous flame],
    [hydrated], [combined with water of crystallisation],
    [efflorescent], [losing water of crystallisation to the air, as washing soda does],
    [deliquescent], [absorbing water from the air until the solid dissolves in it, as sodium hydroxide does],
    [hygroscopic], [absorbing water from the air without dissolving in it, as calcium chloride does],
    [lime], [calcium oxide, made by heating limestone],
    [slaked lime], [calcium hydroxide, made by adding water to quicklime],
    [limewater], [a saturated solution of calcium hydroxide, used to test for carbon dioxide],
    [milk of lime], [a suspension of calcium hydroxide in water],
    [hardness], [the property of water that prevents soap from lathering, caused by calcium and magnesium ions],
    [temporary hardness], [hardness caused by hydrogencarbonates and removable by boiling],
    [permanent hardness], [hardness caused by sulphates and chlorides and removable only by chemical means],
  )
]

== F.3 Aluminium, Iron and Steel

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
    [bauxite], [the ore of aluminium, hydrated aluminium oxide contaminated with iron(III) oxide],
    [Bayer process], [the purification of bauxite by dissolving the alumina in hot sodium hydroxide and reprecipitating it],
    [cryolite], [sodium hexafluoroaluminate, the flux that dissolves alumina in the Hall–Héroult cell],
    [Hall–Héroult cell], [the electrolytic cell in which alumina dissolved in molten cryolite is reduced to aluminium],
    [anode], [the positive electrode; in the aluminium cell it is the carbon block that burns away],
    [blast furnace], [the tall furnace in which iron(III) oxide is reduced to iron by carbon monoxide],
    [charge], [the mixture of ore, coke and limestone fed into the top of a blast furnace],
    [tuyères], [the pipes through which hot air is blown into the bottom of a blast furnace],
    [slag], [calcium silicate, formed when the limestone flux combines with the silica impurity],
    [pig iron], [the impure iron that runs from the bottom of a blast furnace, about 4 % carbon],
    [cast iron], [pig iron poured into moulds; hard and brittle],
    [steel], [an alloy of iron with a controlled amount of carbon, normally under 2 %],
    [mild steel], [steel with a low carbon content, tough and easily worked],
    [high-carbon steel], [steel with more carbon, harder but more brittle; used for cutting tools],
    [stainless steel], [steel alloyed with chromium and nickel, which resists corrosion by forming a protective oxide film],
    [basic oxygen process], [the removal of carbon from pig iron by blowing oxygen onto the molten metal],
    [tempering], [reheating hardened steel to relieve some of its brittleness],
    [quenching], [cooling hot steel rapidly, as in oil or water, to harden it],
  )
]

== F.4 Hydrogen, Oxygen and Nitrogen

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
    [steam reforming], [the reaction of methane with steam over a nickel catalyst to give carbon monoxide and hydrogen],
    [water gas], [a mixture of carbon monoxide and hydrogen made by passing steam over red-hot coke],
    [fractional distillation], [separation of a mixture of liquids by their different boiling points],
    [catalyst], [a substance that increases the rate of a reaction without being used up],
    [Haber process], [the industrial combination of nitrogen and hydrogen to give ammonia],
    [Ostwald process], [the industrial oxidation of ammonia to nitric acid],
    [equilibrium], [the state of a reversible reaction in which the forward and reverse rates are equal],
    [Le Chatelier's principle], [when a system at equilibrium is disturbed, it responds so as to oppose the disturbance],
    [nitrogen fixation], [the conversion of atmospheric nitrogen into compounds that plants can use],
    [nitrification], [the bacterial oxidation of ammonium compounds in the soil to nitrites and then nitrates],
    [denitrification], [the bacterial reduction of nitrates to nitrogen gas, returning it to the atmosphere],
    [eutrophication], [the enrichment of water with nitrate or phosphate, leading to an algal bloom and the loss of dissolved oxygen],
    [fountain experiment], [the demonstration of the solubility of a gas by the rush of water into a vessel of it],
    [brown ring test], [the test for a nitrate, in which a brown ring forms at the junction of two layers],
    [anhydrous], [containing no water of crystallisation],
    [hydrogenation], [the addition of hydrogen across a double bond, as in hardening vegetable oil],
  )
]

== F.5 Sulphur and the Halogens

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
    [allotrope], [one of two or more forms of the same element in the same physical state],
    [transition temperature], [the temperature at which one allotrope changes into another],
    [Frasch process], [the extraction of sulphur from underground deposits with superheated steam and compressed air],
    [Contact process], [the industrial oxidation of sulphur(IV) oxide to sulphur(VI) oxide over vanadium(V) oxide],
    [oleum], [sulphur(VI) oxide dissolved in concentrated sulphuric acid],
    [dehydrating agent], [a substance that removes the elements of water from another compound],
    [dibasic acid], [an acid with two replaceable hydrogen atoms per molecule],
    [desiccant], [a drying agent],
    [halogen], [an element of Group 17 — fluorine, chlorine, bromine, iodine or astatine],
    [disproportionation], [a reaction in which the same element is simultaneously oxidised and reduced],
    [bleaching], [the destruction or removal of colour from a material],
    [hypochlorous acid], [the weak acid HOCl formed when chlorine dissolves in water; the bleaching agent],
    [bleaching powder], [calcium oxychloride, made by the action of chlorine on slaked lime],
    [sublimation], [the direct change of a solid to a vapour without melting],
    [halide], [a compound of a halogen with another element or group],
    [dilute acid], [an acid with a low concentration of hydrogen ions; the usual laboratory reagent],
    [sulphate], [the ion SO₄²⁻, or a salt containing it],
    [sulphite], [the ion SO₃²⁻, or a salt containing it],
  )
]

== F.6 Industry and the Environment

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
    [raw material], [a substance taken from the environment and processed into a product],
    [clinker], [the hard nodules of calcium silicate that leave a cement kiln],
    [mortar], [a paste of cement, sand and water, used to join bricks],
    [concrete], [cement, sand, gravel and water, used as a structural material],
    [reinforced concrete], [concrete containing steel bars, so that the steel takes the tension and the concrete the compression],
    [saponification], [the alkaline hydrolysis of a fat or oil to give soap and glycerol],
    [hydrophilic], [attracted to water; the ionic head of a soap molecule is hydrophilic],
    [hydrophobic], [repelled by water; the hydrocarbon tail of a soap molecule is hydrophobic],
    [micelle], [a cluster of soap molecules around a droplet of grease, with the tails inward],
    [emulsion], [a suspension of droplets of one liquid in another],
    [detergent], [a synthetic surfactant that works in hard water because its calcium salt is soluble],
    [surfactant], [a substance that lowers the surface tension of water and helps it wet and lift grease],
    [biodegradable], [able to be broken down by micro-organisms],
    [flocculation], [the gathering of fine suspended particles into larger masses that can settle],
    [coagulation], [the neutralising of the charges on suspended particles so that they clump together],
    [ion exchange], [the replacement of one kind of ion in solution by another, as in a water softener],
    [scale], [the deposit of calcium carbonate left when hard water is boiled],
    [greenhouse gas], [a gas that absorbs infrared radiation and so warms the atmosphere],
    [catalytic converter], [a device in an exhaust system that converts carbon monoxide and nitrogen oxides into less harmful gases],
    [waste hierarchy], [the order of preference in waste management: reduce, reuse, recycle, recover, dispose],
  )
]
