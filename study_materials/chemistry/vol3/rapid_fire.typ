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
    [Bauxite is a compound of aluminium with], [oxygen and water],
    [Which of the following is NOT a property of ammonia?], [it supports combustion],
    [The gas that decolourises acidified potassium permanganate solution is], [sulphur(IV) oxide],
    [Photochemical smog is formed when nitrogen oxides react with], [hydrocarbons and sunlight],
    [Which statement about the extraction of metals is correct?], [the less reactive the metal, the easier it is to extract],
    [Sodium carbonate does not decompose on heating. This is because], [sodium is a Group 1 metal, and its carbonate is thermally stable],
    [The mass of iron in 232 g of Fe₃O₄ is], [168 g],
    [Which mixture is used to prepare oxygen in the laboratory?], [hydrogen peroxide and manganese(IV) oxide],
    [Sulphur dioxide is used as a preservative because it], [is a reducing agent that prevents oxidation],
    [Nitrogen oxides in the air are produced mainly by], [the high temperature of engines and furnaces],
    [The extraction of iron in the blast furnace uses coke as], [a reducing agent and a fuel],
    [Which statement about Group 1 and Group 2 metals is true?], [both groups are found combined only],
    [Why is aluminium used rather than copper for overhead power cables?], [aluminium is lighter for the same conductance],
    [Which gas is evolved when ammonium chloride is heated with sodium hydroxide?], [ammonia],
    [In the reaction Cl₂ + 2NaOH → NaCl + NaClO + H₂O, chlorine undergoes], [disproportionation],
    [Water from a limestone area is usually hard because it contains], [calcium hydrogencarbonate],
    [Which metal would react with steam but not with cold water?], [zinc],
    [Which of these elements has two electrons in its outer shell?], [magnesium],
    [The volume of carbon dioxide at s.t.p. released by heating 1.00 mol of calcium carbonate is], [22.4 dm³],
    [The process by which bacteria convert ammonium ions in the soil to nitrates is], [nitrification],
    [Hydrogen chloride is not collected over water because it], [is extremely soluble in water],
    [Which of these industries depends most directly on limestone as a raw material?], [cement and glass],
    [Which of the following metals is extracted from its ore by electrolysis?], [aluminium],
    [Which of these salts gives a brick-red flame?], [calcium chloride],
    [The function of the hot blast of air in the blast furnace is to], [burn the coke and provide the heat],
    [The gas used to provide an inert atmosphere in food packaging is], [nitrogen],
    [Which of these halogens is the most reactive?], [fluorine],
    [The calcium oxide formed in the kiln is described as], [a basic oxide],
    [Which of these metals reacts with cold water but not with steam?], [sodium],
    [The pH of a solution of calcium hydroxide is likely to be], [12],
    [The oxide layer on aluminium is described as], [amphoteric],
    [Ammonia reacts with hydrogen chloride to give], [ammonium chloride, a white smoke],
    [Copper does not react with dilute sulphuric acid because], [copper is below hydrogen in the reactivity series],
    [Depletion of the ozone layer would lead to], [more ultraviolet light reaching the earth's surface],
    [The gas produced when magnesium reacts with steam is], [hydrogen],
    [Which of the following hydroxides is the least soluble?], [Mg(OH)₂],
    [Iron is not extracted by electrolysis because], [iron is below carbon, so reduction with carbon monoxide is cheaper],
    [Which of the following will reduce the copper(II) oxide in a test tube?], [passing hydrogen over the hot oxide],
    [When dilute sulphuric acid is added to sodium carbonate, the gas evolved is], [carbon dioxide],
    [The main environmental cost of the cement industry is], [the carbon dioxide released by decomposing limestone and burning fuel],
  )
]

