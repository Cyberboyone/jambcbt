#import "template.typ": *

#current-chapter.update("Appendix E: The Functional-Group Map")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Functional-Group Map]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Functional-Group Map]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Organic chemistry is not a list of reactions. It is a map with six or seven places on it, and every question in the paper is a move from one place to another. This appendix is the map, drawn once and explained twice.]
]

#v(6pt)

#diagram-fig("diagrams/fg_map.svg",
  "The functional-group map. Read the vertical column as the oxidation ladder and the branches as the reactions that leave the ladder — to an alkene, to a salt, to an ester.", width: 100%)

== E.1 How to Read the Map

Three questions turn any organic conversion into an answer.

+ *What is the starting material, and what functional group does it carry?* If the group is not obvious, the formula is telling you: a C=C means an alkene, an –OH on a saturated carbon an alcohol, a –COOH an acid, a –COO– an ester.
+ *What is the product, and what group does it carry?* The difference between the two groups is the reaction.
+ *Which reagent does that job, and under what condition?* The reagent and the condition are a pair; a reagent without its condition is half a fact.

#concept-box("The one distinction that decides most questions")[
  *Substitution* leaves the carbon skeleton alone and swaps one group for another — an alkane and chlorine, an alcohol and PCl₅. *Addition* opens a multiple bond and adds two groups across it — an alkene and bromine. *Elimination* does the opposite of addition: it removes two groups and leaves a multiple bond — an alcohol and hot concentrated acid. *Condensation* joins two molecules with the loss of a small one — an acid and an alcohol, two amino acids, two sugars. If you can name which of the four a reaction is, the equation follows.
]

== E.2 The Petroleum Chain

#table(
  columns: (1.55fr, 1.55fr, 1.55fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[From → to],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent and condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you see],
  ),
  [alkane → haloalkane], [Cl₂ or Br₂, ultraviolet light], [fumes of HCl; a mixture of products],
  [alkane → alkene], [cracking, about 500 °C over a catalyst], [a gas that decolourises bromine water],
  [alkene → alkane], [H₂ over Ni at 150 °C], [no visible change; the product is saturated],
  [alkene → haloalkane], [HBr or HCl gas, room temperature], [a colourless liquid],
  [alkene → alcohol], [steam over H₃PO₄ at 300 °C], [ethanol, the industrial hydration],
  [alkene → poly(alkene)], [heat, pressure, a catalyst], [a solid or a waxy polymer],
  [alcohol → alkene], [conc. H₂SO₄ at 170 °C, or Al₂O₃ at 300 °C], [a gas that decolourises bromine water],
  [alcohol → aldehyde], [acidified dichromate, warm and distil], [orange → green; a fruity smell],
  [alcohol → ketone], [acidified dichromate, warm], [orange → green; a ketone, not an aldehyde],
  [aldehyde → acid], [acidified dichromate, reflux], [orange → green; a sour liquid],
  [acid + alcohol → ester], [conc. H₂SO₄, warm], [a sweet, fruity smell],
  [ester → acid + alcohol], [dilute acid or alkali, boil], [the smell disappears],
  [haloalkane → alcohol], [NaOH (aq), warm], [hydrolysis; a silver halide test on the halide released],
  [fat + NaOH → soap], [boil, then salt out with NaCl], [a curd of soap on the brine],
)

== E.3 The Sugar Chain

#table(
  columns: (1.55fr, 1.55fr, 1.55fr),
  inset: 5.5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[From → to],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Reagent and condition],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What you see],
  ),
  [starch → glucose], [boil with dilute acid, or amylase], [the iodine test becomes negative; Benedict's becomes positive],
  [sucrose → glucose + fructose], [boil with dilute acid, or sucrase], [Benedict's becomes positive only after hydrolysis],
  [glucose → ethanol], [yeast, 25–35 °C, no air], [effervescence of CO₂; a smell of alcohol],
  [ethanol → ethanoic acid], [Acetobacter and air, or acidified dichromate], [a sour smell — vinegar],
  [glucose → carbon dioxide + water], [combustion, or respiration in the body], [energy released],
  [amino acids → protein], [condensation in the ribosome], [a peptide bond at every link],
  [protein → amino acids], [boil with acid or alkali, or a protease], [the Biuret test becomes negative],
  [fat → soap + glycerol], [boil with NaOH], [a curd of soap],
)

== E.4 The Same Map in Twelve Lines

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 11pt)[
  #set text(size: 9.6pt)
  + An alkane does only two things: it burns and it is chlorinated in ultraviolet light.
  + An alkene does one thing: it adds. Hydrogen, bromine, HCl, water, chlorine, permanganate.
  + An alkyne is an alkene that can add twice.
  + An alcohol is oxidised to an aldehyde or a ketone, dehydrated to an alkene, and esterified with an acid.
  + A primary alcohol goes all the way to the acid unless the aldehyde is distilled off.
  + A tertiary alcohol does not oxidise: it has no hydrogen on the carbinol carbon.
  + An aldehyde reduces Tollens' and Fehling's reagents; a ketone does not.
  + A carboxylic acid fizzes with a carbonate; nothing else in the syllabus does.
  + An ester is the only sweet-smelling member, and the only one that hydrolyses back to two compounds.
  + A fat is an ester of glycerol; soap is its alkaline hydrolysis product.
  + A polymer is either an opened double bond (addition) or a joined pair with water lost (condensation).
  + A sugar, a starch and a protein are all condensation polymers, which is why hydrolysis takes them all back to their monomers.
]
