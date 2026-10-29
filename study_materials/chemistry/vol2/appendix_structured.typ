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
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX I]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Structured Questions with Model Answers]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[UTME is multiple choice, but the paper you write next is not — and the candidates who can explain a method in three sentences are the ones who do not lose marks to misread multiple choice. Answer each part in the space, then compare with the model underneath.]
]

#v(4pt)

#concept-box("How to use this appendix")[
  Cover the grey box with a sheet of paper, write your answer, and only then slide the paper down. The model answers carry the mark allocation in brackets, so you can see exactly where each mark is earned — and nearly every one of them is won by naming the step, not by the arithmetic.
]

== I.1 Acids, Bases and Salts

*Question 1.* (a) 25.0 cm³ of 0.100 M sodium hydroxide is titrated with dilute hydrochloric acid of concentration 0.0500 M. Calculate the volume of acid needed. (3 marks) \
(b) Name a suitable indicator and state the colour change at the end point. (2 marks) \
(c) Explain why the titration must be repeated at least twice. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $n("NaOH") = 0.100 times 0.0250 = 2.50 times 10^(-3)$ mol (1). The equation is $"HCl" + "NaOH" -> "NaCl" + "H"_2"O"$, so the acid and the base react in 1 : 1 ratio, giving $2.50 times 10^(-3)$ mol of acid (1). $V = n div c = 2.50 times 10^(-3) div 0.0500 = 0.0500$ dm³ $= 50.0$ cm³ (1). \
  *(b)* Phenolphthalein (1); pink to colourless at the end point (1). Methyl orange would also be accepted, but the colour change is red to yellow and is harder to see. \
  *(c)* The first titration is a rough run used to find the approximate end point (1); the repeats give concordant values, and the mean of the readings within 0.10 cm³ is used, which reduces random error (1).
]

*Question 2.* (a) Define a weak acid and a strong acid. (2 marks) \
(b) A solution of a weak acid has a pH of 3.0. Calculate its hydrogen-ion concentration. (2 marks) \
(c) Explain why a 0.10 M solution of a weak acid has a higher pH than a 0.10 M solution of a strong acid. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* A strong acid ionises almost completely in water (1); a weak acid ionises only slightly, setting up an equilibrium between the undissociated molecules and the ions (1). \
  *(b)* $["H"^+] = 10^(-"pH") = 10^(-3.0) = 1.0 times 10^(-3)$ mol dm⁻³ (2 — one for the expression, one for the value). \
  *(c)* The weak acid is only partly ionised, so the concentration of hydrogen ions is far lower than 0.10 M (1); a lower hydrogen-ion concentration means a higher pH, since $"pH" = -log["H"^+]$ (1).
]

== I.2 Solutions and Solubility

*Question 3.* The solubility of potassium nitrate is 110 g per 100 g of water at 60 °C and 32 g per 100 g of water at 20 °C. \
(a) What is the mass of a saturated solution made from 100 g of water at 60 °C? (1 mark) \
(b) 105 g of that solution is cooled to 20 °C. Calculate the mass of crystals formed. (4 marks) \
(c) Describe how the crystals would be obtained pure. (3 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* 110 + 100 $= 210$ g (1). \
  *(b)* In 210 g of solution there are 110 g of salt and 100 g of water, so 105 g of solution contains 55 g of salt and 50 g of water (1). At 20 °C, 50 g of water dissolves $32 times 50 div 100 = 16$ g (1). So $55 - 16 = 39$ g crystallise (1) — the mark is for working from the mass of *water*, not from the mass of solution (1). \
  *(c)* Filter the cold mixture through a Buchner funnel (1); wash the crystals with a *small* volume of *cold* distilled water (1); dry them between filter papers, not over a flame, so that no water of crystallisation is driven off (1).
]

*Question 4.* (a) Explain, in terms of particles, why sodium chloride dissolves in water. (3 marks) \
(b) State two ways of making a solid dissolve faster, and explain each in terms of collisions. (4 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Water molecules are polar, with a partial positive end on each hydrogen and a partial negative end on the oxygen (1). They attract the ions at the surface of the lattice — the hydrogen ends towards the chloride ions, the oxygen ends towards the sodium ions (1) — and the hydrated ions are pulled away into solution, so the lattice breaks up (1). \
  *(b)* *Grind the solid:* a powder exposes a much larger surface area, so more particles are in contact with the solvent per second and collisions are more frequent (2). *Warm the solvent:* the solvent particles move faster, so they collide with the solid surface more often and with more energy (2). Stirring, which keeps fresh solvent against the surface, would earn the same marks.
]

== I.3 Chemical Energetics

*Question 5.* When 4.0 g of sodium hydroxide is dissolved in 100 g of water the temperature rises from 21.0 °C to 31.2 °C. \
(a) Calculate the heat given out, taking the specific heat capacity of the solution as 4.2 J g⁻¹ K⁻¹ and its mass as 104 g. (3 marks) \
(b) Calculate the enthalpy of solution of sodium hydroxide, in kJ mol⁻¹. (3 marks) \
(c) State two reasons why your value differs from the accepted value of −44.5 kJ mol⁻¹. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $q = m c Delta T = 104 times 4.2 times 10.2 = 4455$ J $= 4.46$ kJ (3). \
  *(b)* $n("NaOH") = 4.0 div 40 = 0.100$ mol (1); $Delta H = -q div n = -4.46 div 0.100 = -44.6$ kJ mol⁻¹ (2). \
  *(c)* Any two of: heat lost to the cup and the air, so the temperature rise is too small; the solution's specific heat capacity was assumed to be that of pure water; the solid may not have dissolved completely; the thermometer and the balance have limited precision (2).
]

*Question 6.* Use the standard enthalpies of formation below to find $Delta H$ for $"Fe"_2"O"_3 + 3"CO" -> 2"Fe" + 3"CO"_2$. \
$Delta H_f$: $"Fe"_2"O"_3$ $= -824$, $"CO"$ $= -111$, $"CO"_2$ $= -394$ kJ mol⁻¹. (4 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  The iron is an element in its standard state, so its formation enthalpy is zero (1). Products: $3 times (-394) = -1182$ kJ (1). Reactants: $-824 + 3 times (-111) = -1157$ kJ (1). $Delta H = -1182 - (-1157) = -25$ kJ mol⁻¹ (1), so the reduction of iron(III) oxide by carbon monoxide is only mildly exothermic — which is why the blast furnace must be kept hot.
]

== I.4 Rates of Reaction

*Question 7.* Sodium thiosulphate solution reacts with dilute hydrochloric acid to give a yellow precipitate of sulphur. \
(a) Write the equation for the reaction. (2 marks) \
(b) Describe how the rate could be followed using a printed cross. (3 marks) \
(c) In one experiment the cross disappeared after 32 s; in a second, with more dilute thiosulphate, after 80 s. Compare the rates. (2 marks) \
(d) Explain the effect of the dilution in terms of collisions. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $"Na"_2"S"_2"O"_3 + 2"HCl" -> 2"NaCl" + "S" + "SO"_2 + "H"_2"O"$ (2 — one for the correct formulae, one for balancing). \
  *(b)* Place the flask on a paper marked with a cross (1); start the clock as the acid is added and swirl (1); stop the clock when the cross can no longer be seen from above, and repeat at several concentrations (1). \
  *(c)* Rate is proportional to $1 div t$, so the first rate is $1 div 32 = 0.031$ s⁻¹ and the second is $1 div 80 = 0.013$ s⁻¹; the first reaction is about 2.5 times faster (2). \
  *(d)* The diluted solution has fewer thiosulphate ions per unit volume, so collisions between the ions and the acid are less frequent (1) and the precipitate forms more slowly (1).
]

*Question 8.* (a) Sketch, on the same axes, the Maxwell–Boltzmann distribution at 300 K and at 400 K. (3 marks) \
(b) Use your sketch to explain why a 10 K rise in temperature can double the rate of a reaction. (3 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Both curves start at the origin and rise to a peak (1); the 400 K curve has its peak lower and further to the right, and the two curves cross once (1); the area under each curve is the same, because it represents the same total number of molecules (1). \
  *(b)* Draw the activation-energy line to the right of both peaks and shade the area beyond it (1). The shaded area at 400 K is much larger than at 300 K, so a far greater fraction of molecules has energy above $E_a$ (1). Those molecules are the only ones whose collisions can succeed, so the rate rises far more than the small increase in collision frequency would suggest (1).
]

== I.5 Chemical Equilibrium

*Question 9.* In a 2.0 dm³ vessel at 700 K, an equilibrium mixture contains 0.40 mol of SO₂, 0.20 mol of O₂ and 3.2 mol of SO₃. \
(a) Write the expression for $K_c$. (2 marks) \
(b) Calculate the value of $K_c$, with its units. (4 marks) \
(c) State and explain the effect of raising the temperature on the value of $K_c$, given that the forward reaction is exothermic. (2 marks)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $K_c = ["SO"_3]^2 div (["SO"_2]^2["O"_2])$ (2 — products over reactants with the correct powers). \
  *(b)* Concentrations: $["SO"_3] = 1.6$, $["SO"_2] = 0.20$, $["O"_2] = 0.10$ mol dm⁻³ (1). $K_c = 1.6^2 div (0.20^2 times 0.10) = 2.56 div 0.0040 = 640$ (2). Units: mol⁻¹ dm³ (1). \
  *(c)* Raising the temperature shifts the equilibrium to the left, because the system absorbs the extra heat by favouring the endothermic reverse reaction (1). The concentration of SO₃ falls, so $K_c$ decreases (1).
]

*Question 10.* The Haber process is carried out at about 450 °C and 200 atm over an iron catalyst. \
(a) Write the equation and state the sign of $Delta H$. (2 marks) \
(b) Explain why a high pressure is used. (2 marks) \
(c) Explain why the temperature is not lowered to 200 °C, which would give a higher yield. (2 marks) \
(d) State the effect of the catalyst on the yield. (1 mark)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* $"N"_2 + 3"H"_2 ⇌ 2"NH"_3$ (1); $Delta H$ is negative — the forward reaction is exothermic (1). \
  *(b)* There are four moles of gas on the left and two on the right, so raising the pressure drives the equilibrium to the right and increases the yield of ammonia (2). \
  *(c)* At 200 °C the rate would be far too slow for an economic process, because only a tiny fraction of collisions would have enough energy (2); 450 °C is a compromise between a workable rate and an acceptable yield. \
  *(d)* None — a catalyst speeds up the attainment of equilibrium but does not change its position (1).
]

== I.6 Redox and Electrochemistry

*Question 11.* A current of 0.50 A is passed through copper(II) sulphate solution with copper electrodes for 30 minutes. \
(a) Write the half-equations for the reactions at the two electrodes. (3 marks) \
(b) Calculate the mass of copper deposited. ($A_r$ Cu = 64, $F = 96,500$ C mol⁻¹) (4 marks) \
(c) State what happens to the mass of the anode. (1 mark)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Cathode: $"Cu"^(2+) + 2e^- -> "Cu"$ (1). Anode: $"Cu" -> "Cu"^(2+) + 2e^-$ (2 — one for the correct equation, one for showing it is an oxidation). \
  *(b)* $Q = I t = 0.50 times 1800 = 900$ C (1). $n(e^-) = 900 div 96","500 = 9.33 times 10^(-3)$ mol (1). Two moles of electrons deposit one mole of copper, so $n("Cu") = 4.66 times 10^(-3)$ mol (1). $m = 4.66 times 10^(-3) times 64 = 0.30$ g (1). \
  *(c)* The anode loses the same mass that the cathode gains, because copper atoms pass into solution as copper(II) ions (1).
]

*Question 12.* A galvanic cell is set up as $"Zn" | "Zn"^(2+) || "Ag"^+ | "Ag"$. \
(a) State which electrode is the anode and which is the cathode. (2 marks) \
(b) Write the overall cell reaction. (2 marks) \
(c) Calculate $E^degree_"cell"$ ($E^degree$: $"Zn"^(2+) slash "Zn" = -0.76$ V, $"Ag"^+ slash "Ag" = +0.80$ V). (2 marks) \
(d) State the direction of electron flow in the external circuit. (1 mark)

#block(width: 100%, fill: white, stroke: 0.8pt + jamb-border, radius: 7pt, inset: 10pt)[
  *(a)* Zinc is the anode, because it has the more negative reduction potential and is oxidised (1); silver is the cathode (1). \
  *(b)* $"Zn" -> "Zn"^(2+) + 2e^-$ and $2"Ag"^+ + 2e^- -> 2"Ag"$ combine to $"Zn" + 2"Ag"^+ -> "Zn"^(2+) + 2"Ag"$ (2). \
  *(c)* $E^degree_"cell" = E^degree_"cathode" - E^degree_"anode" = 0.80 - (-0.76) = 1.56$ V (2). \
  *(d)* From the zinc electrode to the silver electrode through the external wire (1).
]

#trap-box("The phrase that earns the mark")[
  In every structured answer the marks sit on the *reason*, not the number. “The yield falls because the reverse reaction is endothermic, and heating favours it” scores; “the yield falls, so it shifts left” usually does not. Write the cause before the effect.
]
