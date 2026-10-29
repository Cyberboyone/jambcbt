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
  #set text(size: 8.9pt)
  #table(
    columns: (2.45fr, 1.75fr),
    inset: (x: 6pt, y: 3.2pt),
    align: (left + horizon, left + horizon),
    stroke: (x, y) => if y == 0 { 1pt + jamb-navy } else { (bottom: 0.35pt + jamb-border) },
    fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
    table.header(text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
      text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer]),
    [At constant temperature, a gas occupies 500 cm³ at 0.5 atm. At 1 atm its volume is], [250 cm³],
    [The ion ²⁷₁₃Al³⁺ contains], [13 protons, 14 neutrons and 10 electrons],
    [The ionisation energy of potassium is lower than that of sodium because], [its outer electron is in a higher shell, further out and more shielded],
    [The number of lone pairs on the oxygen atom in a water molecule is], [2],
    [Which of the following separation methods depends on a difference in magnetism?], [the use of a magnet to separate iron from sulphur],
    [The mass of 0.02 mol of sodium carbonate (M = 106) is], [2.12 g],
    [If 3 mol of gas occupies 72 dm³ at r.t.p., the molar volume is], [24 dm³],
    [Ionisation energy decreases down a group because], [the outer electron is further from the nucleus and shielded],
    [The correct order of reactivity of the halogens is], [F > Cl > Br > I],
    [Which of these is the strongest intermolecular force?], [hydrogen bonding],
    [Which method would you use to separate a mixture of ethanol and water?], [fractional distillation],
    [The theoretical yield of a reaction is 10 g but only 8 g is obtained. The percentage yield is], [80 %],
    [1 mol of any gas at r.t.p. occupies 24 dm³. The volume occupied by 0.75 mol is], [18 dm³],
    [The configuration 1s² 2s² 2p⁶ 3s² 3p⁶ 4s¹ belongs to], [potassium],
    [Which of these elements has the largest atomic radius?], [sodium],
    [A double bond consists of], [two shared pairs],
    [Which of these statements about a pure substance is always true?], [it melts at a sharp temperature],
    [The relative formula mass of Mg(NO₃)₂ is], [148],
    [Which condition would make a gas most nearly ideal?], [100 °C and 1 atm],
    [The configuration of the chloride ion, Cl⁻, is], [2, 8, 8],
    [Why do the noble gases exist as single atoms?], [their outer shells are full, so they do not bond to one another],
    [Which of these has the highest boiling point?], [water],
    [Which of the following is a suspension rather than a solution?], [chalk in water],
    [The number of moles in 3.2 g of sulphur dioxide (M = 64) is], [0.05 mol],
    [4 g of helium (M = 4) at s.t.p. occupies], [22.4 dm³],
    [An atom of ⁵⁶₂₆Fe contains], [26 protons, 30 neutrons and 26 electrons],
    [Which element has the lowest first ionisation energy?], [sodium],
    [Which substance conducts electricity in the solid state?], [copper],
    [During melting, the temperature of a pure solid remains constant because the heat supplied], [is used to break the forces between the particles, not to raise their kinetic energy],
    [0.448 dm³ of a gas at s.t.p. weighs 0.88 g. The gas is most likely], [carbon dioxide],
    [A gas has a density of 1.25 g dm⁻³ at s.t.p. Its molar mass is about], [28 g mol⁻¹],
    [The ion ¹⁶₈O²⁻ contains], [8 protons, 8 neutrons and 10 electrons],
    [Electronegativity is the tendency of an atom to], [attract the shared pair of electrons in a bond],
    [The electrical conductivity of graphite is due to], [delocalised electrons within its layers],
    [The physical property chiefly used in fractional distillation is the difference in], [boiling point],
    [The number of moles in 5.6 dm³ of a gas at s.t.p. is], [0.25 mol],
    [The volume of a gas at 0 °C is 273 cm³. At 273 °C and constant pressure its volume is], [546 cm³],
    [The mass number of an atom is unchanged when it], [loses an electron to form an ion],
    [The atomic radius of potassium is greater than that of sodium because], [potassium has an extra shell],
    [Ethanol boils higher than ethane because], [it can form hydrogen bonds through its –OH group],
  )
]

