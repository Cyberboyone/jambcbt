#import "template.typ": *

#current-chapter.update("Appendix E: The Calculation Toolkit")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Calculation Toolkit]]

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
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Calculation Toolkit]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every calculation in Volume 2 is one of eight shapes. Learn the shapes, not the questions: the numbers change from year to year, but the eight moves do not.]
]

#v(4pt)

== E.1 The Five Steps That Never Change

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 8pt, inset: 12pt)[
  #set text(size: 9.4pt)
  *1. Write the unit before the number.* “250 cm³” is a warning, not a volume; convert it at once.
  #v(3pt)
  *2. Convert everything to moles.* Masses, volumes and concentrations all pass through $n$.
  #v(3pt)
  *3. Use the equation's ratio.* The coefficients in the balanced equation are a ratio of moles, never of grams.
  #v(3pt)
  *4. Calculate, then check the size of the answer.* A solution of 0.1 M cannot contain 5 mol per dm³.
  #v(3pt)
  *5. Give the unit and the sign.* Temperature in K, energy in kJ, $Delta H$ negative when heat leaves.
]

== E.2 The Eight Shapes, Worked Once Each

=== Shape 1 — Concentration from a mass

*20.0 g of sodium hydroxide is dissolved in water and made up to 500 cm³. Find the concentration.*

$n = m div M_r = 20.0 div 40 = 0.500$ mol; $V = 500 div 1000 = 0.500$ dm³; $c = n div V = 1.00$ mol dm⁻³.

=== Shape 2 — Mass needed for a standard solution

*What mass of potassium permanganate ($M_r = 158$) makes 250 cm³ of 0.0200 M solution?*

$n = c V = 0.0200 times 0.250 = 5.00 times 10^(-3)$ mol; $m = n M_r = 5.00 times 10^(-3) times 158 = 0.790$ g.

=== Shape 3 — Dilution

*25.0 cm³ of 2.00 M acid is diluted to 200 cm³. Find the new concentration.*

$c_1 V_1 = c_2 V_2$, so $c_2 = (2.00 times 25.0) div 200 = 0.250$ M.

=== Shape 4 — Mass crystallised on cooling

*A saturated solution of a salt in 100 g of water at 80 °C contains 60 g of salt. At 20 °C the solubility is 20 g per 100 g of water. Find the mass crystallised.*

At 80 °C: 60 g of salt in 100 g of water (160 g of solution). At 20 °C only 20 g stays dissolved, so $60 - 20 = 40$ g crystallise.

=== Shape 5 — Water of crystallisation

*4.00 g of a hydrated salt ($M_r$ of the anhydrous form = 160) gives 2.56 g of anhydrous salt on heating. Find $x$.*

$n("salt") = 2.56 div 160 = 0.0160$ mol; $n("water") = (4.00 - 2.56) div 18 = 0.0800$ mol; $x = 0.0800 div 0.0160 = 5$.

=== Shape 6 — Enthalpy from a temperature rise

*When 0.050 mol of acid is neutralised in 100 g of solution the temperature rises by 6.7 K. Find $Delta H$.*

$q = m c Delta T = 100 times 4.2 times 6.7 = 2814$ J $= 2.81$ kJ; $Delta H = -q div n = -2.81 div 0.050 = -56$ kJ mol⁻¹.

=== Shape 7 — Equilibrium constant

*At equilibrium a mixture contains [H₂] = 0.20, [I₂] = 0.20 and [HI] = 1.60 mol dm⁻³. Find $K_c$.*

$K_c = ["HI"]^2 div (["H"_2]["I"_2]) = 1.60^2 div (0.20 times 0.20) = 64$ — no units, because they cancel.

=== Shape 8 — Cell EMF

*Find the EMF of a cell made from $"Zn"^(2+) slash "Zn"$ ($-0.76$ V) and $"Cu"^(2+) slash "Cu"$ ($+0.34$ V).*

$E^degree_"cell" = E^degree_"cathode" - E^degree_"anode" = 0.34 - (-0.76) = 1.10$ V.

== E.3 Ten Calculations in Ten Lines

Work each one on paper before you read the answer underneath. If you can do all ten in ten minutes, the calculation marks in this volume are yours.

#table(
  columns: (2.55fr, 1.35fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Answer],
  ),
  [1. Moles in 4.9 g of H₂SO₄ ($M_r = 98$)], [0.050 mol],
  [2. Concentration of 0.15 mol in 250 cm³], [0.60 mol dm⁻³],
  [3. Mass of NaOH for 250 cm³ of 0.20 M], [2.0 g],
  [4. New concentration after 10 cm³ of 1.0 M is made up to 250 cm³], [0.040 M],
  [5. Mass of water in 25.0 g of CuSO₄·5H₂O ($M_r = 250$)], [9.0 g],
  [6. Heat to raise 200 g of water by 15 K], [12.6 kJ],
  [7. $Delta H$ if 0.020 mol releases 1.14 kJ], [−57 kJ mol⁻¹],
  [8. $K_c$ for A ⇌ B if [A] = 0.50 and [B] = 2.0], [4.0],
  [9. EMF of Ag ($+0.80$ V) against Zn ($-0.76$ V)], [1.56 V],
  [10. Mass of copper deposited by 0.50 mol of electrons], [16 g],
)

#trap-box("The percentage error that is really a unit error")[
  A candidate answers 0.20 M where the correct value is 200 M, or 0.02 mol where it should be 0.002 mol. Nine times out of ten the slip was a volume in cm³ left unconverted. *Write the conversion on the same line as the volume* and the error cannot survive.
]

#shortcut-box("Check by the size of the answer, not by re-doing the sum")[
  A concentration of 0.1 M means about 0.1 mol in a litre — a few grams, not a few hundred. An enthalpy of combustion is tens to thousands of kJ per mole, never 0.05. A cell EMF is between 0.2 and 3 V. If your answer is outside the range the reaction could have, you have dropped a factor of a thousand somewhere, and redoing the arithmetic will not find it.
]
