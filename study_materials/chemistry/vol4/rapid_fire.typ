#import "template.typ": *

#current-chapter.update("Appendix A: 40 Rapid-Fire Recall Pairs")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix A: 40 Rapid-Fire Recall Pairs]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX A]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[40 Rapid-Fire Recall Pairs]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Forty one-line questions with the answer beside each. Cover the right-hand column with a sheet of paper and work down the list — twenty seconds a line. Anything you cannot answer in twenty seconds is a chapter to reread tonight.]
]

#v(5pt)

== A.1 Questions and Answers

#[
  #set text(size: 7.8pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 5pt, y: 1.9pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [Which compound is a tertiary alcohol?], [(CH₃)₃COH],
    [The three fatty acids in a triglyceride may be], [all the same or different],
    [The reaction of a fat with sodium hydroxide to give soap is], [saponification],
    [Ammonia is collected by], [upward delivery, because it is lighter than air],
    [Which is the most likely formula for an alkane containing 16 hydrogen atoms?], [C₇H₁₆],
    [Decolourisation of bromine water by a hydrocarbon shows the presence of], [a multiple bond],
    [Glycerol is], [a trihydric alcohol],
    [Which reagent will remove the smell of an ester by hydrolysing it?], [dilute sodium hydroxide, warmed],
    [The peptide bond is], [–CO–NH–],
    [Which of these gases is collected by downward delivery (upward displacement of air)?], [carbon dioxide],
    [The main reason alkanes are used as fuels is that], [they burn exothermically, releasing a large amount of heat],
    [Which statement about the halogenation of an alkene is true?], [It needs no light and happens at room temperature],
    [The volume of carbon dioxide at s.t.p. produced when 45.0 g of glucose is fermented is], [11.2 dm³],
    [In the equation n HO–CH₂CH₂–OH + n HOOC–C₆H₄–COOH → polymer + 2n H₂O, the polymer is], [a polyester],
    [The structure of a protein that is destroyed by denaturation is mainly the], [secondary and tertiary structure],
    [A student adds sodium hydroxide to a solution and a red-brown precipitate forms. The cation is], [Fe³⁺],
    [A fuel is said to knock when it], [ignites before the spark, at the wrong moment],
    [Ethene will NOT react with], [sodium chloride solution],
    [The mass of ethanol that can be obtained from 180 g of glucose by fermentation is], [92 g],
    [The linkage formed when a diamine reacts with a dicarboxylic acid is], [an amide linkage],
    [Which of these is a protein?], [haemoglobin],
    [The crystals obtained by recrystallisation are washed with], [a little cold solvent],
    [Which is correct about a homologous series?], [The members differ by CH₂],
    [The reason ethene is more reactive than ethane is that], [ethene has a weaker π bond that is available to reagents],
    [A 0.10 mol dm⁻³ solution of a weak acid has a pH of 3 rather than 1 because], [most of its molecules are not ionised],
    [Which statement about margarine is correct?], [It is made by hydrogenating a vegetable oil],
    [Which of these is NOT a food test?], [flame test],
    [The purpose of a white tile under a conical flask in a titration is], [to make the colour change easier to see],
    [Which process converts a straight-chain alkane into a branched one?], [reforming],
    [Which test would show that a gas jar contains ethene rather than ethyne?], [the volume of bromine water decolourised per mole],
    [Which of these will NOT oxidise ethanol?], [sodium chloride],
    [The reaction that produces soap is], [alkaline hydrolysis],
    [Sucrose is hydrolysed by the enzyme], [sucrase (invertase)],
    [Which of these should be done if a chemical splashes into the eye?], [wash with plenty of clean water and seek help],
    [Natural gas is preferred to kerosene for cooking in many homes because], [it burns with a cleaner flame and no soot],
    [The reaction of ethene with acidified potassium manganate(VII) produces], [ethane-1,2-diol],
    [The reaction of ethanoic acid with chlorine in sunlight gives], [chloroethanoic acid, a stronger acid],
    [The process by which a polymer is formed from monomers with the loss of water is], [condensation polymerisation],
    [A student tests a food sample and obtains a violet colour with Biuret and a brick-red precipitate with Benedict's. The food contains], [protein and a reducing sugar],
    [An insoluble salt such as barium sulphate is prepared by], [mixing two solutions that precipitate it],
  )
]

