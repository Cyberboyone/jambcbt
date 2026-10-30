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
  [Force between two charges], [$F = k q_1 q_2 \/ r^2$], [$r = sqrt(k q_1 q_2 \/ F)$],
  [Field of a point charge], [$E = k Q \/ r^2$], [$Q = E r^2 \/ k$],
  [Force on a charge in a field], [$F = q E$], [$q = F \/ E$],
  [Uniform field between plates], [$E = V \/ d$], [$d = V \/ E$],
  [Work moving a charge], [$W = q V$], [$q = W \/ V$],
  [Definition of capacitance], [$C = Q \/ V$], [$Q = C V$, $V = Q \/ C$],
  [Parallel-plate capacitor], [$C = epsilon_0 epsilon_r A \/ d$], [$d = epsilon_0 epsilon_r A \/ C$],
  [Capacitors in parallel], [$C = C_1 + C_2 + dots$], [never use the reciprocal rule here],
  [Capacitors in series], [$1\/C = 1\/C_1 + 1\/C_2 + dots$], [$C = (C_1 C_2)\/(C_1 + C_2)$ for two],
  [Energy stored in a capacitor], [$W = 1\/2 C V^2 = 1\/2 Q V = Q^2\/(2C)$], [halve it, do not forget the $1\/2$],
  [Current], [$I = Q \/ t$], [$Q = I t$, $t = Q \/ I$],
  [Ohm's law], [$V = I R$], [$R = V \/ I$, $I = V \/ R$],
  [Resistance of a wire], [$R = rho l \/ A$], [$rho = R A \/ l$, $A = rho l \/ R$],
  [Series resistors], [$R = R_1 + R_2 + dots$], [the total is bigger than the biggest],
  [Parallel resistors], [$1\/R = 1\/R_1 + 1\/R_2 + dots$], [$R = (R_1 R_2)\/(R_1 + R_2)$ for two],
  [Circuit with a real cell], [$E = V + I r$], [$r = (E - V) \/ I$],
  [Potential divider], [$V_1 = V times R_1 \/ (R_1 + R_2)$], [the bigger resistor takes the bigger share],
  [Electrical power], [$P = I V = I^2 R = V^2 \/ R$], [pick the form whose two quantities you know],
  [Electrical energy], [$E = P t$], [$1$ kWh $= 3.6 times 10^6$ J],
  [Force on a current in a field], [$F = B I l sin theta$], [$B = F \/ (I l sin theta)$],
  [Field of a straight wire], [$B = mu_0 I \/(2 pi d)$], [$d = mu_0 I \/(2 pi B)$],
  [Faraday's law], [$E = N (Delta Phi)\/(Delta t)$], [$N = E Delta t \/ Delta Phi$],
  [Transformer voltages], [$V_s \/ V_p = N_s \/ N_p$], [$N_s = N_p V_s \/ V_p$],
  [Transformer currents], [$V_p I_p = V_s I_s$], [$I_p = V_s I_s \/ V_p$],
  [Efficiency of a transformer], [$eta = P_s \/ P_p$], [$P_s = eta P_p$],
  [Energy of an accelerated electron], [$e V = 1\/2 m v^2$], [$v = sqrt(2 e V \/ m)$],
  [Transistor currents], [$I_c = beta I_b$, $I_e = I_b + I_c$], [$beta = I_c \/ I_b$],
  [Diode current in a circuit], [$I = (V - 0.7)\/R$], [subtract the barrier first],
  [Photon energy], [$E = h f = h c \/ lambda$], [$lambda = h c \/ E$, $f = E \/ h$],
  [Energy level difference], [$h f = E_2 - E_1$], [$f = (E_2 - E_1)\/h$],
  [Hydrogen levels], [$E_n = -13.6\/n^2$ eV], [subtract the two levels],
  [Einstein's photoelectric equation], [$h f = W + 1\/2 m v^2$], [$W = h f - 1\/2 m v^2$],
  [Threshold frequency], [$f_0 = W \/ h$], [$lambda_0 = h c \/ W$],
  [Stopping potential], [$e V_s = 1\/2 m v^2$], [$V_s = h f \/ e - W \/ e$],
  [Shortest X-ray wavelength], [$e V = h c \/ lambda_min$], [$lambda_min = h c \/(e V)$],
  [de Broglie wavelength], [$lambda = h \/ p = h \/(m v)$], [$v = h \/(m lambda)$],
  [Alpha decay], [$A -> A - 4$, $Z -> Z - 2$], [check both lines],
  [Beta decay], [$A$ unchanged, $Z -> Z + 1$], [a neutron has become a proton],
  [Fraction remaining], [$N = N_0 \/ 2^n$], [$n = t \/ t_(1\/2)$],
  [Half-life from two counts], [$2^n = N_0 \/ N$], [count the halvings, then divide the time],
  [Mass defect energy], [$E = Delta m c^2$], [$Delta m = E \/ c^2$],
)

#v(4pt)

== E.2 The Four Formulas That Do Most of the Work

#concept-box("If you learn only four")[
  + $F = k q_1 q_2 \/ r^2$ — every electrostatic force question starts here, and the only traps are the squares of the distance and the microcoulomb conversion.
  + $E = V + I r$ — every circuit with a real cell. The e.m.f. is fixed; the terminal p.d. falls as the current rises.
  + $h f = W + 1\/2 m v^2$ — every photoelectric question, including the threshold ($1\/2 m v^2 = 0$) and the stopping potential ($e V_s = 1\/2 m v^2$).
  + $N = N_0 \/ 2^n$ — every half-life question, whether it asks for a mass, a count rate or a fraction.
]

#shortcut-box("Rearranging in one move")[
  + To find a *squared* quantity, isolate the square and take the root last: $r = sqrt(k q_1 q_2 \/ F)$.
  + To find a *reciprocal*, invert the whole equation rather than one side of it: $1\/R = 1\/R_1 + 1\/R_2$ becomes $R = R_1 R_2 \/ (R_1 + R_2)$.
  + To find a *rate*, divide both sides by the time before substituting: $E = N Delta Phi \/ Delta t$ is already a rate.
  + To find an *exponent*, use the ratio: $2^n = N_0 \/ N$ turns a decay question into a division.
]
