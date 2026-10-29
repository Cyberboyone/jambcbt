#import "template.typ": *

#current-chapter.update("Appendix D: Formula Sheet and Data")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix D: Formula Sheet and Data]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX D]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Formula Sheet and Data]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every constant, unit conversion and formula used in Volume 1, on four pages. Learn to find a quantity before you learn to remember it: the paper rewards the candidate who knows which relationship applies, not the one who has memorised the numbers.]
]

#v(4pt)

== D.1 Constants and Conversions

#table(
  columns: (2.2fr, 1.2fr, 2.2fr, 1.2fr),
  inset: 5pt,
  align: (left + horizon, center + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Quantity],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Value],
  ),
  [Avogadro's constant], [$6.02 times 10^23$ mol⁻¹], [molar volume at s.t.p.], [22.4 dm³ mol⁻¹],
  [gas constant $R$], [8.31 J K⁻¹ mol⁻¹], [molar volume at r.t.p.], [24.0 dm³ mol⁻¹],
  [1 atm], [760 mmHg], [1 atm in pascals], [101 325 Pa],
  [0 °C], [273 K], [1 dm³], [1000 cm³],
  [mass of electron], [$1 div 1840$ u], [1 m³], [1000 dm³],
)

== D.2 The Formulae, by Chapter

#table(
  columns: (1.55fr, 1.7fr, 1.9fr),
  inset: 5pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[To find],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Remember],
  ),
  [moles from mass], [$n = m div M_r$], [use the *formula* mass, not the atomic mass],
  [moles from particles], [$n = N div 6.02 times 10^23$], [the count must be of the particles named],
  [moles from gas volume], [$n = V div 22.4$ (s.t.p.)], [or $div 24$ at r.t.p.; $V$ in dm³],
  [moles from solution], [$n = c times V$], [$V$ always in dm³],
  [concentration], [$c = n div V$], [answer in mol dm⁻³],
  [mass from moles], [$m = n times M_r$], [answer in grams],
  [percentage by mass], [$(A_r times "number of atoms") div M_r times 100$], [check that the total is 100 %],
  [empirical formula], [divide each % by $A_r$, then by the smallest], [multiply if you meet halves],
  [molecular formula], [$("empirical") times n$, $n = M_r div$ empirical mass], [$n$ is always a whole number],
  [Boyle's law], [$P_1 V_1 = P_2 V_2$], [temperature constant],
  [Charles' law], [$V_1 div T_1 = V_2 div T_2$], [$T$ in kelvin],
  [pressure law], [$P_1 div T_1 = P_2 div T_2$], [$T$ in kelvin],
  [combined gas law], [$P_1 V_1 div T_1 = P_2 V_2 div T_2$], [nothing held constant],
  [ideal gas], [$P V = n R T$], [$P$ in Pa, $V$ in m³, $T$ in K],
  [Graham's law], [$r_1 div r_2 = sqrt(M_2 div M_1)$], [the heavier gas is the slower one],
  [relative atomic mass], [$sum$ (abundance × mass number) $div 100$], [a weighted mean],
  [neutrons], [$A - Z$], [never read $A$ as the neutron count],
)

== D.3 Relative Atomic Masses You Will Actually Use

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 4pt,
  align: (center, center, center, center, center, center),
  stroke: 0.4pt + jamb-border,
  fill: (x, y) => if calc.odd(y) { jamb-light } else { white },
  [H 1], [He 4], [C 12], [N 14], [O 16], [F 19],
  [Na 23], [Mg 24], [Al 27], [Si 28], [P 31], [S 32],
  [Cl 35.5], [K 39], [Ca 40], [Fe 56], [Cu 64], [Zn 65],
  [Br 80], [Ag 108], [I 127], [Ba 137], [Pb 207], [Mn 55],
)

== D.4 Solubility Rules

#table(
  columns: (1.3fr, 2.6fr),
  inset: 5pt,
  align: (left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Compounds],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Solubility in water],
  ),
  [all nitrates], [soluble — no exceptions],
  [all sodium, potassium and ammonium salts], [soluble — no exceptions],
  [chlorides], [soluble, except silver and lead(II) chlorides],
  [sulphates], [soluble, except barium, calcium and lead(II) sulphates],
  [carbonates], [insoluble, except those of sodium, potassium and ammonium],
  [hydroxides], [insoluble, except those of sodium, potassium and calcium (slightly soluble)],
  [oxides], [insoluble, except those that react with water to form hydroxides],
)

#trap-box("The three units that decide marks")[
  *cm³ to dm³* — divide by 1000. *°C to K* — add 273. *mmHg to atm* — divide by 760. Nine out of ten “careless errors” in chemistry calculations are one of these three, and each is worth more than any formula on this page.
]
