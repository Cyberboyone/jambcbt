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
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX E]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[The Formula Map]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Every formula in the volume, the question each one answers, and the rearrangement candidates forget. If you can read this page and say what each line is for, you know the paper's arithmetic.]
]

#v(4pt)

== E.1 The Map

#table(
  columns: (1.9fr, 1.7fr, 1.7fr),
  inset: 4pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Question it answers],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Formula],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[The rearrangement you need],
  ),
  [Convert a Celsius reading], [$T = theta + 273$], [$theta = T - 273$],
  [Calibrate an unmarked thermometer], [$theta = (X - X_0)\/(X_(100) - X_0) times 100$], [solve for $X$ when $theta$ is given],
  [Length change on heating], [$Delta L = alpha L_0 Delta theta$], [$L = L_0 (1 + alpha Delta theta)$],
  [Area and volume change], [$Delta A = 2 alpha A_0 Delta theta$, $Delta V = 3 alpha V_0 Delta theta$], [$gamma = 3 alpha$],
  [Real expansion of a liquid], [$gamma_"real" = gamma_"apparent" + gamma_"vessel"$], [never subtract the vessel's term],
  [Heat to change temperature], [$Q = m c Delta theta$], [$Delta theta = Q \/ (m c)$],
  [Heat to change state], [$Q = m L$], [$L = Q \/ m$],
  [Mixture reaching a final temperature], [$m_1 c_1 (theta_1 - theta) = m_2 c_2 (theta - theta_2)$], [add $C (theta - theta_2)$ for the calorimeter],
  [Rate of heat flow by conduction], [$P = k A Delta theta \/ L$], [$k = P L \/ (A Delta theta)$],
  [Power radiated by a black body], [$P = sigma A T^4$], [$T = (P \/ (sigma A))^(1\/4)$],
  [Gas at constant temperature], [$p_1 V_1 = p_2 V_2$], [Boyle],
  [Gas at constant pressure], [$V_1 \/ T_1 = V_2 \/ T_2$], [Charles],
  [Gas at constant volume], [$p_1 \/ T_1 = p_2 \/ T_2$], [pressure law],
  [All three changing], [$(p_1 V_1) \/ T_1 = (p_2 V_2) \/ T_2$], [$p_2 = p_1 V_1 T_2 \/ (V_2 T_1)$],
  [Amount of gas], [$p V = n R T$], [$n = p V \/ (R T)$],
  [Mean kinetic energy], [$1\/2 m c^2 = 3\/2 k T$], [$T = m c^2 \/ (3 k)$],
  [Root-mean-square speed], [$c_"rms" = sqrt(3 R T \/ M)$], [$T = M c^2 \/ (3 R)$],
  [First law], [$Delta U = Q - W$], [$W = Q - Delta U$],
  [Work at constant pressure], [$W = p Delta V$], [$Delta V = W \/ p$],
  [Efficiency of an engine], [$eta = W \/ Q_1 = 1 - Q_2 \/ Q_1$], [$Q_2 = Q_1 (1 - eta)$],
  [Carnot efficiency], [$eta = 1 - T_2 \/ T_1$], [$T_1 = T_2 \/ (1 - eta)$],
  [Refrigerator performance], [$"CoP" = Q_2 \/ W$], [$Q_1 = Q_2 + W$],
)

== E.2 The Five Faces of the Heat Equation

Most of the arithmetic in this volume is one equation wearing five different hats. Recognise the hat and the rest is substitution.

+ *The warming hat.* $Q = m c Delta theta$. Something changes temperature and nothing changes state.
+ *The melting hat.* $Q = m L_f$. Ice becomes water at 0 °C and the thermometer does not move.
+ *The boiling hat.* $Q = m L_v$. Water becomes steam at 100 °C and the thermometer still does not move.
+ *The mixing hat.* Heat lost equals heat gained, with the calorimeter counted on the gained side.
+ *The electrical hat.* $Q = P t$ or $Q = V I t$. A heater supplies the energy the other four hats consume.

#trap-box("The one equation that is not on the paper")[
  $Q = m c Delta theta$ is usually *not* given in the question paper, and neither is $Q = m L$. They are assumed knowledge, like $v = u + a t$ in mechanics. Write them out from memory at the top of your rough sheet in the first minute of the paper, before the clock starts to matter.
]

== E.3 The Three Relations That Do Most of the Work

+ *Kelvin first.* $T = theta + 273$. Every gas law, every efficiency and every radiation term is written in kelvin. Convert before substituting, and write the kelvin value on the line above the equation so the marker can see that you did.
+ *Heat lost equals heat gained.* In an insulated vessel, the hot body's $m c Delta theta$ equals the cold body's — plus the calorimeter's $C Delta theta$. This single sentence answers every mixture question in the syllabus.
+ *Energy book-keeping.* $Delta U = Q - W$, with $W$ done *by* the gas. Expand at constant pressure and $W = p Delta V$; hold the volume and $W = 0$; insulate the cylinder and $Q = 0$. Three special cases, one equation.

#block(width: 100%, fill: jamb-mint, stroke: 0.9pt + jamb-green, radius: 7pt, inset: 10pt)[
  #text(font: "DejaVu Sans", size: 9.2pt, weight: "bold", fill: jamb-green)[The rearrangement habit]
  #v(3pt)
  #text(size: 10.1pt)[
    When a formula is quoted in one form, the paper usually needs it in another: $P = k A Delta theta \/ L$ is nearly always asked with $Delta theta$ or $L$ as the unknown, and $eta = 1 - T_2 \/ T_1$ is nearly always asked for $T_1$. Rearrange *before* you put the numbers in. Rearranging a symbol string is a half-line of algebra; rearranging a page of digits is where the marks go.
  ]
]

== E.4 Four Formulae Students Write Wrong

#table(
  columns: (1.7fr, 1.9fr, 1.7fr),
  inset: 4pt,
  align: (left + horizon, left + horizon, left + horizon),
  stroke: 0.5pt + jamb-border,
  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },
  table.header(
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Right],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Commonly written instead],
    text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[What it costs],
  ),
  [$Delta V = 3 alpha V_0 Delta theta$], [$Delta V = alpha V_0 Delta theta$], [the answer is three times too small],
  [$P = k A Delta theta \/ L$], [$P = k A L \/ Delta theta$], [inverts the rod's two variables],
  [$eta = 1 - T_2 \/ T_1$], [$eta = 1 - theta_2 \/ theta_1$], [nonsense on the Celsius scale],
  [$Delta U = Q - W$], [$Delta U = Q + W$], [right only if $W$ is work done *on* the gas],
)
