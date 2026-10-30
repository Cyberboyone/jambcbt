#import "template.typ": *

#current-chapter.update("Appendix F: Glossary of Organic Terms")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix F: Glossary of Organic Terms]]

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
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Glossary of Organic Terms]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[The definitions this volume uses, in the words an examiner will accept. Where a term has a precise meaning that students blur — saturated against unsaturated, hydrolysis against hydration — the entry says what the difference is worth.]
]

#v(4pt)

== F.1 Hydrocarbons and the Skeleton

#table(
  columns: (1.15fr, 2.4fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Definition],
  ),
  [organic chemistry], [the chemistry of the compounds of carbon],
  [hydrocarbon], [a compound containing only carbon and hydrogen],
  [saturated], [having only single bonds between carbon atoms, so no more hydrogen can be added],
  [unsaturated], [containing a double or triple bond, so more atoms can be added],
  [homologous series], [a family with the same general formula and functional group, whose members differ by CH₂ and show a regular gradation in properties],
  [functional group], [the atom or group of atoms that decides the chemical properties of a compound],
  [general formula], [the formula that represents every member of a homologous series],
  [structural formula], [a formula that shows how the atoms are joined, not only how many there are],
  [molecular formula], [a formula that shows the number of each kind of atom in a molecule],
  [empirical formula], [the simplest whole-number ratio of the atoms in a compound],
  [isomer], [one of two or more compounds with the same molecular formula but a different structural formula],
  [structural isomer], [an isomer with a different arrangement of the skeleton or the functional group],
  [positional isomer], [an isomer in which the functional group is in a different place on the same skeleton],
  [geometric isomer], [a cis or trans form about a C=C bond, possible when each carbon carries two different groups],
  [alkyl group], [a hydrocarbon group derived from an alkane, CₙH₂ₙ₊₁–],
  [homolytic fission], [the breaking of a bond so that one electron of the pair goes to each fragment, giving radicals],
  [free radical], [a species with an unpaired electron, formed by homolytic fission],
)

== F.2 The Alkanes and Crude Oil

#table(
  columns: (1.15fr, 2.4fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Definition],
  ),
  [alkane], [a saturated hydrocarbon of the general formula CₙH₂ₙ₊₂],
  [crude oil], [a mixture of hydrocarbons formed from the remains of living things and separated by fractional distillation],
  [fractional distillation], [separation of a mixture of liquids by boiling point],
  [fraction], [the part of a distillation that boils over within a stated temperature range],
  [cracking], [the breaking of a long-chain alkane into a shorter alkane and an alkene at high temperature],
  [reforming], [the rearrangement of a straight chain into a branched one or a ring, to raise the octane number],
  [octane number], [a measure of a fuel's resistance to knocking; heptane is 0 and 2,2,4-trimethylpentane is 100],
  [substitution], [a reaction in which one atom or group is replaced by another],
  [combustion], [reaction with oxygen, releasing heat; complete combustion gives carbon dioxide and water],
  [incomplete combustion], [oxidation with too little oxygen, giving carbon monoxide or carbon],
  [paraffin], [an old name for the alkanes, meaning “little affinity”],
)

== F.3 Alkenes, Alkynes and Polymers

#table(
  columns: (1.15fr, 2.4fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Definition],
  ),
  [alkene], [an unsaturated hydrocarbon with one C=C double bond, general formula CₙH₂ₙ],
  [alkyne], [an unsaturated hydrocarbon with a C≡C triple bond, general formula CₙH₂ₙ₋₂],
  [addition], [a reaction in which two atoms or groups add across a multiple bond, giving one product],
  [π bond], [the weaker of the two bonds in a double bond, formed by sideways overlap of p orbitals],
  [σ bond], [the stronger bond, formed by head-on overlap along the line joining the nuclei],
  [hydration], [the addition of water — to an alkene, giving an alcohol],
  [hydrogenation], [the addition of hydrogen across a double bond],
  [dehydration], [the removal of the elements of water from a compound],
  [polymer], [a large molecule built from many small repeating units],
  [monomer], [the small molecule from which a polymer is built],
  [repeat unit], [the part of the polymer chain that repeats],
  [degree of polymerisation], [the number of repeat units in the chain],
  [addition polymerisation], [polymerisation of an unsaturated monomer with nothing eliminated],
  [condensation polymerisation], [polymerisation of two monomers with a small molecule eliminated at every link],
  [copolymer], [a polymer made from two different monomers],
  [thermoplastic], [a polymer that softens on heating and can be remoulded],
  [thermosetting], [a polymer that cannot be remelted because its chains are cross-linked],
  [vulcanisation], [the cross-linking of rubber chains with sulphur],
)

== F.4 Alcohols, Acids, Esters and Soaps

#table(
  columns: (1.15fr, 2.4fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Definition],
  ),
  [alkanol], [a compound with an –OH group on a saturated carbon, general formula CₙH₂ₙ₊₁OH],
  [primary alcohol], [an alcohol whose carbinol carbon carries one other carbon and two hydrogens],
  [secondary alcohol], [an alcohol whose carbinol carbon carries two other carbons and one hydrogen],
  [tertiary alcohol], [an alcohol whose carbinol carbon carries three other carbons and no hydrogen],
  [carbinol carbon], [the carbon atom that carries the –OH group],
  [fermentation], [the anaerobic conversion of sugar to ethanol and carbon dioxide by yeast],
  [denatured alcohol], [industrial ethanol made undrinkable by the addition of methanol and a bittering agent],
  [oxidation], [the loss of hydrogen or the gain of oxygen by a substance, or the loss of electrons],
  [aldehyde], [a compound containing –CHO, formed by oxidising a primary alcohol],
  [ketone], [a compound containing –CO– between two carbons, formed by oxidising a secondary alcohol],
  [carboxylic acid], [a compound containing –COOH, general formula CₙH₂ₙ₊₁COOH],
  [weak acid], [an acid that is only partly ionised in water],
  [ester], [a compound formed from an acid and an alcohol with the loss of water; contains –COO–],
  [esterification], [the reaction of an acid with an alcohol to form an ester and water],
  [hydrolysis], [the splitting of a compound by water, usually catalysed by acid, alkali or an enzyme],
  [saponification], [the alkaline hydrolysis of a fat to give soap and glycerol],
  [triglyceride], [a fat or an oil: glycerol esterified with three fatty acids],
  [fatty acid], [a long-chain carboxylic acid, saturated or unsaturated],
  [soap], [the sodium or potassium salt of a fatty acid],
  [micelle], [a cluster of soap ions with their tails inward and their heads in the water],
  [surfactant], [a substance that lowers the surface tension of water and helps it wet a greasy surface],
  [hard water], [water containing calcium and magnesium ions, which form a scum with soap],
  [detergent], [a synthetic surfactant, usually a sulphonate, whose calcium salt is soluble],
  [eutrophication], [the enrichment of water with nutrients, which causes an algal bloom and the loss of oxygen],
)

== F.5 Food Chemistry and the Laboratory

#table(
  columns: (1.15fr, 2.4fr),
  inset: (x: 5pt, y: 3.2pt),
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Term],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Definition],
  ),
  [carbohydrate], [a compound of carbon, hydrogen and oxygen, usually with hydrogen and oxygen in the ratio 2 : 1],
  [monosaccharide], [a single sugar unit, such as glucose or fructose],
  [disaccharide], [two sugar units joined by a glycosidic bond, such as sucrose],
  [polysaccharide], [a polymer of many sugar units, such as starch or cellulose],
  [reducing sugar], [a sugar with a free aldehyde or ketone group, which reduces Benedict's solution],
  [glycosidic bond], [the link between two sugar units, formed with the loss of water],
  [hydrolysis of starch], [the conversion of starch to glucose by acid or amylase],
  [amino acid], [a compound containing both –NH₂ and –COOH, the monomer of a protein],
  [peptide bond], [the –CO–NH– link between two amino acids],
  [polypeptide], [a chain of many amino acids],
  [protein], [one or more folded polypeptides with a biological function],
  [denaturation], [the loss of the folded shape of a protein without the breakage of peptide bonds],
  [enzyme], [a biological catalyst, almost always a protein],
  [substrate], [the molecule on which an enzyme acts],
  [active site], [the region of an enzyme that binds the substrate],
  [vitamin], [an organic compound needed in small amounts that the body cannot make],
  [filtration], [the separation of an insoluble solid from a liquid using a filter],
  [crystallisation], [the formation of pure crystals from a saturated solution on cooling],
  [recrystallisation], [dissolving an impure solid in hot solvent and crystallising it again to purify it],
  [distillation], [separation by boiling and condensing; fractional distillation uses a column],
  [chromatography], [separation of substances by their different rates of movement through a stationary phase],
  [Rf], [the distance moved by a spot divided by the distance moved by the solvent front],
  [titration], [the measured addition of one solution to another until the indicator changes],
  [concordant titres], [titres that agree within 0.10 cm³, and only these are averaged],
  [end point], [the point at which the indicator changes colour],
  [equivalence point], [the point at which the acid and alkali have reacted in the exact mole ratio],
  [standard solution], [a solution of accurately known concentration],
  [percentage yield], [the actual mass obtained as a percentage of the theoretical mass],
  [drying agent], [a substance that removes water vapour from a gas or a liquid],
  [sublimation], [the direct change of a solid to a vapour on heating, and back on cooling],
)
