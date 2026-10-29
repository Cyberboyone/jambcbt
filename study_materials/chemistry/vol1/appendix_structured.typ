#import "template.typ": *

#current-chapter.update("Appendix I: Structured Questions with Model Answers")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix I: Structured Questions with Model Answers]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Structured Questions with Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twelve questions, two per chapter, written in the style of a theory paper: short parts, marks in brackets, and a model answer that shows the wording the examiner wants. Cover the answers and write your own first.]
]

#v(4pt)

== I.1 Matter and Separation

*Question 1.* (a) A student is given a mixture of sand, common salt and iron filings. Describe, in order, the steps by which the three substances could be separated and recovered. (5 marks) \
(b) Explain why the mixture is not a compound. (2 marks) \
(c) State one physical property that is used in the first step of your method. (1 mark)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Pass a magnet over the mixture to remove the iron filings (1). Add water and stir, so that the salt dissolves (1). Filter: the sand remains on the filter paper as the residue (1). Evaporate the filtrate to the point of crystallisation and cool, so that the salt crystallises (1). Dry the sand and the iron separately (1). \
  *(b)* The components are not chemically combined, are present in variable proportions, and each keeps its own properties (2). \
  *(c)* Magnetism — iron is attracted by a magnet and sand is not (1).
]

*Question 2.* (a) Explain why a pure solid has a sharp melting point while an impure solid melts over a range. (3 marks) \
(b) A sample of a white solid melts between 71 °C and 78 °C, while the pure substance melts at 80 °C. What can you conclude? (2 marks) \
(c) Name a technique that would purify a small quantity of that solid. (1 mark)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* In a pure solid all the particles are held by the same forces, so they break free at one temperature (1); the heat supplied then goes into breaking the lattice rather than raising the temperature (1), which is why the value is constant and sharp (1). An impurity disturbs the lattice, so different parts melt at different temperatures and the melting point is lowered and spread over a range. \
  *(b)* It is impure (1), and the impurity has lowered the melting point by about 2 °C (1). \
  *(c)* Crystallisation from a suitable solvent.
]

== I.2 The Mole and Stoichiometry

*Question 3.* (a) Calculate the number of moles in 5.3 g of anhydrous sodium carbonate, $"Na"_2"CO"_3$ ($A_r$: Na 23, C 12, O 16). (2 marks) \
(b) What mass of sodium carbonate would be needed to make 250 cm³ of a 0.1 mol dm⁻³ solution? (2 marks) \
(c) 25.0 cm³ of this solution is exactly neutralised by 0.1 mol dm⁻³ hydrochloric acid. Calculate the volume of acid used, given $"Na"_2"CO"_3 + 2"HCl" -> 2"NaCl" + "H"_2"O" + "CO"_2$. (4 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $M_r = 2(23) + 12 + 3(16) = 106$ (1); $n = 5.3 div 106 = 0.05$ mol (1). \
  *(b)* $n = 0.1 times 0.25 = 0.025$ mol (1); $m = 0.025 times 106 = 2.65$ g (1). \
  *(c)* Moles of carbonate in 25.0 cm³ $= 0.1 times 0.025 = 0.0025$ mol (1). Ratio 1 : 2, so acid $= 0.005$ mol (1). $V = n div c = 0.005 div 0.1 = 0.05$ dm³ (1) $= 50$ cm³ (1).
]

*Question 4.* (a) Define the mole. (2 marks) \
(b) Calculate the relative molecular mass of a gas if 0.32 g of it occupies 224 cm³ at s.t.p. (3 marks) \
(c) State the volume occupied by one mole of any gas at r.t.p. and explain why it is different from the value at s.t.p. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* The amount of substance containing as many elementary particles as there are atoms in 12 g of carbon-12 (1), that is $6.02 times 10^23$ particles (1). \
  *(b)* $n = 0.224 div 22.4 = 0.01$ mol (1); $M_r = m div n = 0.32 div 0.01$ (1) $= 32$ (1). \
  *(c)* 24 dm³ at r.t.p. (1). Room temperature is about 298 K rather than 273 K, so the same number of molecules occupies a larger volume (1).
]

== I.3 Gases and Kinetic Theory

*Question 5.* (a) State Boyle's law. (2 marks) \
(b) A gas occupies 300 cm³ at 27 °C and 750 mmHg. Calculate its volume at s.t.p. (3 marks) \
(c) State two assumptions of the kinetic theory of gases. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* At constant temperature, the volume of a fixed mass of gas is inversely proportional to its pressure (2). \
  *(b)* $T_1 = 300$ K, $T_2 = 273$ K; $V_2 = 300 times (750 div 760) times (273 div 300)$ (2) $= 269$ cm³ (1). \
  *(c)* Any two of: particles in constant random motion; collisions perfectly elastic; negligible volume of the particles; no forces between particles except during collision; mean kinetic energy proportional to absolute temperature (2).
]

*Question 6.* (a) Explain, in terms of the kinetic theory, why the pressure of a fixed mass of gas rises when it is heated at constant volume. (3 marks) \
(b) Sketch on the same axes the shape of the $P$–$V$ graph for a gas at two different temperatures, labelling the higher temperature. (2 marks) \
(c) Name the law illustrated by the $P$–$V$ graph. (1 mark)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Heating raises the average kinetic energy of the particles (1), so they move faster and collide with the walls more frequently (1) and with greater force per collision (1); the total force per unit area therefore rises. \
  *(b)* Two hyperbolas, the one further from the origin labelled as the higher temperature (2). \
  *(c)* Boyle's law.
]

== I.4 Atomic Structure

*Question 7.* (a) Define isotope. (2 marks) \
(b) Chlorine consists of 75 % of atoms of mass number 35 and 25 % of mass number 37. Calculate its relative atomic mass. (2 marks) \
(c) Explain why the two isotopes of chlorine have identical chemical properties. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Atoms of the same element with the same number of protons but different numbers of neutrons (2). \
  *(b)* $(75 times 35 + 25 times 37) div 100 = 35.5$ (2). \
  *(c)* Both have the same electron configuration — 2, 8, 7 — and chemical properties depend on the electrons (2).
]

*Question 8.* (a) Write the electronic configuration of iron ($Z = 26$) in subshell notation. (2 marks) \
(b) State the group and period of iron. (2 marks) \
(c) Explain why the first ionisation energy of magnesium is greater than that of sodium. (3 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $1s^2 2s^2 2p^6 3s^2 3p^6 4s^2 3d^6$ (2). \
  *(b)* Period 4 (highest shell is the fourth) (1); Group 8, since there are eight electrons beyond the argon core (1). \
  *(c)* Both are in Period 3, so the outer electron is in the same shell; magnesium has one more proton, so the nuclear charge is greater (1) while the shielding is unchanged (1), so the outer electron is held more tightly and more energy is needed to remove it (1).
]

== I.5 The Periodic Table

*Question 9.* (a) Define first ionisation energy. (3 marks) \
(b) Explain why ionisation energy decreases down Group I. (2 marks) \
(c) Explain why the atomic radius of chlorine is smaller than that of sodium. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* The energy needed to remove one mole of electrons (1) from one mole of gaseous atoms (1) to form one mole of gaseous singly positive ions (1). \
  *(b)* Down the group a new shell is added, so the outer electron is further from the nucleus (1) and more shielded by the inner shells (1). \
  *(c)* Across the period the nuclear charge increases while the outer shell remains the same (1), so the electrons are pulled closer to the nucleus (1).
]

*Question 10.* (a) Classify the following oxides as basic, acidic or amphoteric: $"Na"_2"O"$, $"Al"_2"O"_3$, $"SO"_2$. (3 marks) \
(b) Write an equation for the reaction of sodium oxide with water, and state the type of solution formed. (2 marks) \
(c) Explain why Group 0 elements are unreactive. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $"Na"_2"O"$ basic; $"Al"_2"O"_3$ amphoteric; $"SO"_2$ acidic (3). \
  *(b)* $"Na"_2"O" + "H"_2"O" -> 2"NaOH"$ (1); a strongly alkaline solution (1). \
  *(c)* Their outer shells are full (1), so they have no tendency to gain, lose or share electrons (1).
]

== I.6 Chemical Bonding

*Question 11.* (a) Draw a dot-and-cross diagram for sodium chloride, showing clearly the charge on each ion. (3 marks) \
(b) Explain why solid sodium chloride does not conduct electricity but molten sodium chloride does. (3 marks) \
(c) State the type of bonding in diamond and explain why diamond has a very high melting point. (3 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Na⁺ with no outer electrons (1); Cl surrounded by eight electrons, one of them a cross, in square brackets with a − charge (1); the two ions shown attracting one another (1). \
  *(b)* In the solid the ions are held in fixed positions in the lattice and cannot move (1); when molten the ions are free to move (1) and carry the current (1). \
  *(c)* Giant covalent (1); each carbon is joined to four others by strong covalent bonds (1), and melting requires many of these bonds to be broken, so a large amount of energy is needed (1).
]

*Question 12.* (a) Explain why the boiling point of water is much higher than that of hydrogen sulphide, although both are small molecules. (3 marks) \
(b) State the shape and bond angle of the water molecule, and explain the shape in terms of electron pairs. (3 marks) \
(c) Explain why ice is less dense than liquid water. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Water molecules form hydrogen bonds — the oxygen of one molecule attracts the hydrogen of another (1); these are much stronger than the van der Waals forces between hydrogen sulphide molecules (1), so more energy is needed to separate water molecules at the boiling point (1). \
  *(b)* Bent (1); about 104.5° (1); oxygen has two bond pairs and two lone pairs, and the lone pairs repel more strongly than the bond pairs, reducing the tetrahedral angle (1). \
  *(c)* In ice the molecules are held by hydrogen bonds in an open lattice with more empty space (1), which collapses when the ice melts, so the liquid is denser (1).
]
