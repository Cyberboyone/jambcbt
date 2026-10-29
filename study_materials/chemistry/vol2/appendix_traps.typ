#import "template.typ": *

#current-chapter.update("Appendix J: The Twelve Traps, Worked")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix J: The Twelve Traps, Worked]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #set text(hyphenate: false)
  #set par(justify: false)
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX J]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Twelve Traps, Worked]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Twelve mistakes account for most of the lost marks in Physical Chemistry. Each one below is shown with the wrong answer a real candidate gives, the reason it is wrong, and the one-line fix.]
]

#v(4pt)

=== Trap 1 — Solubility quoted against the solution instead of the water

*Question.* A solubility is 40 g per 100 g of water. What mass of a saturated solution contains 40 g of salt? \
*Wrong answer.* 100 g (the candidate read “40 in 100”). \
*Right answer.* 140 g: 40 g of salt plus 100 g of water. \
*Fix.* The number under the solubility is always *water*. Write “40 g salt / 100 g water” above your working before you start.

=== Trap 2 — The volume left in cm³

*Question.* 0.20 mol of solute is dissolved to make 500 cm³ of solution. Find the concentration. \
*Wrong answer.* 0.20 ÷ 500 = 0.0004 M. \
*Right answer.* 0.20 ÷ 0.500 = 0.40 M. \
*Fix.* Write the conversion on the same line: $500$ cm³ $= 0.500$ dm³. If $V$ is in cm³ when you divide, the answer is a thousand times too small.

=== Trap 3 — Water added instead of final volume

*Question.* What volume of water must be added to 50 cm³ of 4.0 M acid to make it 0.50 M? \
*Wrong answer.* 400 cm³. \
*Right answer.* 400 cm³ is the *final* volume, so the water added is $400 - 50 = 350$ cm³. \
*Fix.* Calculate $V_2$ first, then subtract $V_1$. The question asks for the water, not the total.

=== Trap 4 — Dividing by the wrong number of moles

*Question.* 5.00 g of a hydrate leaves 3.20 g of anhydrous salt of $M_r = 160$. Find $x$. \
*Wrong answer.* $1.80 div 18 = 0.100$, so $x = 0.100 div 5.00 = 0.02$. \
*Right answer.* Moles of salt $= 3.20 div 160 = 0.0200$; moles of water $= 1.80 div 18 = 0.100$; $x = 0.100 div 0.0200 = 5$. \
*Fix.* Divide the moles of water by the moles of *anhydrous salt*, and take the water's mass as the *loss* in mass.

=== Trap 5 — The sign of $Delta H$

*Question.* A reaction gives out 45 kJ per mole. State $Delta H$. \
*Wrong answer.* $Delta H = +45$ kJ mol⁻¹. \
*Right answer.* $Delta H = -45$ kJ mol⁻¹ — heat leaving the system is negative. \
*Fix.* If the surroundings warm, the sign is negative. Write the sign before the number, every time.

=== Trap 6 — Bond energies added the wrong way round

*Question.* Bonds broken total 700 kJ, bonds formed total 850 kJ. Find $Delta H$. \
*Wrong answer.* $+150$ kJ mol⁻¹. \
*Right answer.* $700 - 850 = -150$ kJ mol⁻¹. \
*Fix.* *Broken minus formed.* Breaking costs energy, forming releases it, so if forming is the larger sum the reaction is exothermic.

=== Trap 7 — Reversing a step but not its sign

*Question.* Given $"C" + "O"_2 -> "CO"_2$, $Delta H = -394$, and $"CO" + ½"O"_2 -> "CO"_2$, $Delta H = -283$, find $Delta H$ for $"C" + ½"O"_2 -> "CO"$. \
*Wrong answer.* $-394 - 283 = -677$ kJ mol⁻¹. \
*Right answer.* $-394 - (-283) = -111$ kJ mol⁻¹. \
*Fix.* If you turn a step round, flip its sign. Then add.

=== Trap 8 — Forgetting to divide by the moles in calorimetry

*Question.* 0.050 mol of acid is neutralised and 2.85 kJ is released. Find the molar enthalpy. \
*Wrong answer.* $Delta H = -2.85$ kJ. \
*Right answer.* $-2.85 div 0.050 = -57$ kJ mol⁻¹. \
*Fix.* $q$ is the heat for *your* amount. $Delta H$ is per mole. Divide — always.

=== Trap 9 — More product confused with a faster reaction

*Question.* Zinc granules and zinc powder are each added to excess acid. Which produces more hydrogen? \
*Wrong answer.* The powder, because it reacts faster. \
*Right answer.* The same amount, because the mass of zinc is the same; the powder only produces it sooner. \
*Fix.* Rate questions ask *how fast*; yield questions ask *how much*. Check which one is being asked before you choose.

=== Trap 10 — Expecting a catalyst to move an equilibrium

*Question.* A catalyst is added to an equilibrium mixture. What happens to the yield? \
*Wrong answer.* The yield increases, because the forward reaction is faster. \
*Right answer.* The yield is unchanged: both rates rise by the same factor. \
*Fix.* A catalyst changes the *time* to reach equilibrium, never the *position*.

=== Trap 11 — Units and powers in $K_c$

*Question.* Write $K_c$ for $2"SO"_2 + "O"_2 ⇌ 2"SO"_3$ and give its units. \
*Wrong answer.* $K_c = ["SO"_3] div (["SO"_2]["O"_2])$, no units. \
*Right answer.* $K_c = ["SO"_3]^2 div (["SO"_2]^2["O"_2])$, units mol⁻¹ dm³. \
*Fix.* The powers come from the coefficients. Cancel the units only after you have written them — and never write a unit when they cancel.

=== Trap 12 — The two signs of the electrode

*Question.* Find the EMF of a cell of zinc ($-0.76$ V) and copper ($+0.34$ V). \
*Wrong answer.* $0.34 - 0.76 = -0.42$ V, or $0.34 + 0.76$ handled as $0.42$ V. \
*Right answer.* $0.34 - (-0.76) = 1.10$ V. \
*Fix.* Subtract the anode value *with its sign*. And remember: in a *cell* the anode is negative; in *electrolysis* the anode is positive and attached to the positive terminal.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #set text(size: 9.4pt)
  *The five-second check before you shade an option.* (1) Is every volume in dm³? (2) Has the heat been divided by the moles? (3) Does the sign match the direction of heat flow? (4) Do the powers in $K_c$ match the equation? (5) Did I subtract the anode value with its sign?
]
