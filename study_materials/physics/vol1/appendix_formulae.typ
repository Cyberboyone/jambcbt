#import "template.typ": *

#current-chapter.update("Appendix E: The Formula Map")
#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix E: The Formula Map]]

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
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Formula Map]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every relation the paper can ask for, in the order the chapters teach them. Learn the row, not the symbol string: the second column tells you what question the formula answers.]
]

#v(4pt)

#set text(size: 8.8pt)

#table(
  columns: (2.15fr, 2.2fr, 0.35fr),
  inset: (x: 5pt, y: 3.6pt),
  align: (left + horizon, left + horizon, center + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Relation],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The question it answers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Ch],
  ),
  [$R = sqrt(A^2 + B^2 + 2 A B cos theta)$], [the resultant of two forces at an angle], [1],
  [$R_x = R cos theta$, $R_y = R sin theta$], [the components of a vector], [1],
  [error % $= (Delta x \/ x) times 100$], [the uncertainty in a reading], [1],
  [$v = u + a t$], [the speed after a known time], [2],
  [$s = u t + (1\/2) a t^2$], [the distance covered in a known time], [2],
  [$v^2 = u^2 + 2 a s$], [the speed after a known distance — no time needed], [2],
  [$s = ((u + v)\/2) t$], [the distance when the acceleration is uniform], [2],
  [$h = (1\/2) g t^2$, $v = g t$], [free fall from rest], [2],
  [$T = 2 u sin theta \/ g$], [the time of flight of a projectile], [2],
  [$H = u^2 sin^2 theta \/ (2g)$], [the greatest height of a projectile], [2],
  [$R = u^2 sin 2 theta \/ g$], [the range of a projectile on level ground], [2],
  [$F = m a$], [the force needed for an acceleration], [3],
  [$W = m g$], [the weight of a mass], [3],
  [$p = m v$], [the momentum of a moving body], [3],
  [$F = (m v - m u)\/t$], [the force from a change of momentum], [3],
  [$f = mu N$], [the limiting friction on a surface], [3],
  [$M = F d$], [the moment of a force about a pivot], [3],
  [$F_1 d_1 = F_2 d_2$], [the balance of a lever], [3],
  [$W = F s cos theta$], [the work done by a force at an angle], [4],
  [$E_k = (1\/2) m v^2$], [the kinetic energy of a body], [4],
  [$E_p = m g h$], [the potential energy gained with height], [4],
  [$P = W \/ t = F v$], [the power developed], [4],
  [$eta = ("useful output" \/ "total input") times 100$], [the efficiency of a machine], [4],
  [$"MA" = "load" \/ "effort"$], [the mechanical advantage], [4],
  [$"VR" = "effort distance" \/ "load distance"$], [the velocity ratio], [4],
  [$omega = 2 pi \/ T = 2 pi f$], [the angular speed from a period], [5],
  [$v = omega r$, $a = v^2 \/ r = omega^2 r$], [linear speed and centripetal acceleration], [5],
  [$F = m v^2 \/ r = m omega^2 r$], [the centripetal force], [5],
  [$v = sqrt(mu r g)$], [the greatest safe speed on a level bend], [5],
  [$F = G m_1 m_2 \/ r^2$], [the gravitational force between two masses], [5],
  [$g = G M \/ R^2$], [the surface gravity of a planet], [5],
  [$v = sqrt(G M \/ r)$, $T = 2 pi sqrt(r^3 \/ (G M))$], [orbital speed and period], [5],
  [$v_e = sqrt(2 g R)$], [the escape velocity], [5],
  [$T = 2 pi sqrt(l \/ g)$], [the period of a simple pendulum], [5],
  [$T = 2 pi sqrt(m \/ k)$], [the period of a loaded spring], [5],
  [$a = -omega^2 x$, $v = omega sqrt(A^2 - x^2)$], [SHM: acceleration and speed at a displacement], [5],
  [$v_max = omega A$, $a_max = omega^2 A$], [the extreme values in SHM], [5],
  [$F = k e$, $E = (1\/2) F e = (1\/2) k e^2$], [Hooke's law and the energy in a spring], [6],
  [$"stress" = F \/ A$, $"strain" = e \/ L$], [the two quantities of elasticity], [6],
  [$E = "stress" \/ "strain"$], [the Young modulus], [6],
  [$rho = m \/ V$], [the density of a body], [6],
  [$p = F \/ A$, $p = rho g h$], [pressure on a surface and at a depth], [6],
  [$U = rho V g$], [the upthrust on an immersed body], [6],
  [$"RD" = ("weight in air") \/ ("loss in weight")$], [the relative density of a solid], [6],
)

#set text(size: 9.6pt)

#v(6pt)

#block(width: 100%, fill: jamb-mint, stroke: 1pt + jamb-green, radius: 8pt, inset: 12pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[CHOOSING THE RIGHT ROW]
  #v(3pt)
  #set text(size: 9.4pt)
  + *Name what is asked.* A distance wants a distance formula, not an energy formula — most wrong starts are a misread of the question, not a misremembered equation.
  + *List what you are given.* Three known quantities usually leave exactly one row of the table.
  + *Work in base units.* Convert km h⁻¹ to m s⁻¹ and g cm⁻³ to kg m⁻³ before substituting.
  + *Keep the direction.* A vector answer needs a direction, or a sign that fixes it.
  + *Check the size.* A car that accelerates at 400 m s⁻², or a man who weighs 6 N, is a decimal-point slip.
]

#v(8pt)

== E.2 Symbols Used in This Volume

#set text(size: 9.2pt)

#table(
  columns: (0.8fr, 2.2fr, 0.8fr, 2.2fr),
  inset: (x: 5pt, y: 3.8pt),
  align: (center + horizon, left + horizon, center + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Symbol],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Meaning],
  ),
  [$u$], [initial velocity], [$v$], [final velocity],
  [$a$], [acceleration], [$s$], [distance along the motion],
  [$g$], [acceleration of free fall], [$h$], [height or depth],
  [$m$], [mass], [$W$], [weight or work],
  [$F$], [force], [$p$], [momentum or pressure],
  [$mu$], [coefficient of friction], [$N$], [normal reaction],
  [$theta$], [angle], [$omega$], [angular speed],
  [$T$], [period or tension], [$A$], [amplitude or area],
  [$k$], [spring constant], [$e$], [extension],
  [$rho$], [density], [$eta$], [efficiency],
  [$lambda$], [wavelength — Volume 2], [$Delta$], [a small change in],
)
