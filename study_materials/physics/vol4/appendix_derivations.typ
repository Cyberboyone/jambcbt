#import "template.typ": *

#current-chapter.update("Appendix H: Derivations Worth Knowing")

#pagebreak()

#hide[#heading(level: 1, outlined: true)[Appendix H: Derivations Worth Knowing]]

#block(
  width: 100%,
  fill: jamb-navy,
  stroke: 1.5pt + jamb-bright,
  radius: 10pt,
  inset: 18pt,
)[
  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX H]
  #v(6pt)
  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Derivations Worth Knowing]
  #v(4pt)
  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[Six results that the paper uses constantly. Each one is four lines long, and each one, once seen, makes the formula impossible to mis-remember — because you can rebuild it.]
]

#v(4pt)

== H.1 Capacitors in Series Share the Same Charge

For two capacitors in series across a supply $V$:

$V = V_1 + V_2 = Q\/C_1 + Q\/C_2 = Q (1\/C_1 + 1\/C_2)$.

But the combination behaves as a single capacitor $C$ with $V = Q\/C$, so

$1\/C = 1\/C_1 + 1\/C_2$.

The same charge passes onto both plates because there is only one path — which is why the smaller capacitor takes the *larger* share of the p.d.

#v(2pt)

== H.2 Resistors in Parallel Take the Same P.d.

With both resistors across the same $V$:

$I = I_1 + I_2 = V\/R_1 + V\/R_2 = V (1\/R_1 + 1\/R_2)$.

Since $I = V\/R$ for the combination,

$1\/R = 1\/R_1 + 1\/R_2$.

The parallel resistance is always smaller than the smallest branch, because each branch is an extra path for charge.

#v(2pt)

== H.3 The Field Between Parallel Plates

The work done moving a charge $q$ from one plate to the other is $W = q V$, and the same work is the force multiplied by the distance, $W = F d$. So

$q V = F d$, and with $E = F\/q$ this gives $E = V\/d$.

That is why the field between flat plates is uniform: the work per unit charge grows steadily with distance, so the force per unit charge must be the same everywhere between them.

#v(2pt)

== H.4 The Transformer Ratio

Faraday's law applied to each turn gives the same flux change in the same time, so each turn has the same e.m.f. induced in it. If the primary has $N_p$ turns and the secondary $N_s$, the two e.m.f.s are in the ratio of the turns:

$V_s \/ V_p = N_s \/ N_p$.

For an ideal transformer no power is lost, so $V_p I_p = V_s I_s$: the voltage and the current change in opposite directions.

#v(2pt)

== H.5 Einstein's Photoelectric Equation

An electron in a metal needs at least the work function $W$ to escape the surface. A photon of frequency $f$ delivers energy $h f$, and any energy left over appears as kinetic energy of the escaping electron:

$h f = W + 1\/2 m v^2$.

The maximum kinetic energy occurs when the electron loses nothing on the way out. Setting $1\/2 m v^2 = 0$ gives the threshold condition $h f_0 = W$, which is the whole of the threshold effect in one line.

#v(2pt)

== H.6 Why the Fraction Left Is $(1\/2)^n$

If a fixed fraction decays in each half-life, then after one half-life

$N = N_0 \/ 2$.

After a second half-life the *same fraction of what remains* decays:

$N = (N_0 \/ 2) \/ 2 = N_0 \/ 4$.

After $n$ half-lives, $N = N_0 \/ 2^n$. The number of nuclei falls geometrically, never reaching zero — which is why a sample is said to have decayed completely only when the activity is too small to measure.

#v(4pt)

#concept-box("Why deriving beats memorising")[
  + A formula you can rebuild in four lines cannot be mis-quoted under pressure: if you forget the factor of a half, the derivation puts it back.
  + The derivation also tells you *when* the formula applies. The capacitor series rule assumed a single path; the transformer ratio assumed no flux leakage. Questions that break those assumptions are the hard ones.
  + Examiners award method marks for a correct derivation even when the arithmetic at the end is wrong, and lose them for a formula quoted without justification.
]
